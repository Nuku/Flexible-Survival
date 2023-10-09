Kerry by Voidsnaps begins here.

"Continues the events of Dangerous Load."

[Version 1 of Kerry and Shaw Events.]

Section 1 - NPC Declarations and Post Import Rule

a postimport rule: [bugfixing rules for players that import savegames]
	if Resolution of Dangerous Load is 1: [Watched Kerry fuck Shaw.]
		AddNavPoint Ruined Apartments;
	if Superior Breeding is resolved:
		Change the North Exit of Ruined Apartments to Minotaur Grotto;
		Change the South Exit of Minotaur Grotto to Ruined Apartments;

Table of GameCharacterIDs (continued)
object	name
Kerry	"Kerry"

Kerry is a man.
ScaleValue of Kerry is 4. [human sized]
Body Weight of Kerry is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Kerry is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Kerry is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Kerry is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Kerry is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Kerry is 9. [length in inches]
Breast Size of Kerry is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Kerry is 2. [count of nipples]
Asshole Depth of Kerry is 13. [inches deep for anal fucking]
Asshole Tightness of Kerry is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Kerry is 1. [number of cocks]
Cock Girth of Kerry is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Kerry is 14. [length in inches]
Ball Count of Kerry is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Kerry is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Kerry is 0. [number of cunts]
Cunt Depth of Kerry is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Kerry is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Kerry is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Kerry is false.
PlayerRomanced of Kerry is false.
PlayerFriended of Kerry is false.
PlayerControlled of Kerry is false.
PlayerFucked of Kerry is false.
OralVirgin of Kerry is false.
Virgin of Kerry is false.
AnalVirgin of Kerry is false.
PenileVirgin of Kerry is false.
SexuallyExperienced of Kerry is true.
TwistedCapacity of Kerry is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Kerry is false. [Steriles can not knock people up.]
MainInfection of Kerry is "Minotaur".
Description of Kerry is "[KerryDesc]".
Conversation of Kerry is { "<This is nothing but a placeholder!>" }.
The scent of Kerry is "[KerryScent]";

to say KerryScent:
	say "He smells like animalistic musk and sweat, with an undertone of testosterone.";

to say KerryDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Kerry] <- DEBUG[line break]";
	say "...";


Table of GameCharacterIDs (continued)
object	name
Shaw	"Shaw"

Shaw is a man.
ScaleValue of Shaw is 3. [human sized]
Body Weight of Shaw is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Shaw is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Shaw is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Shaw is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Shaw is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Shaw is 5. [length in inches]
Breast Size of Shaw is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Shaw is 2. [count of nipples]
Asshole Depth of Shaw is 9. [inches deep for anal fucking]
Asshole Tightness of Shaw is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Shaw is 1. [number of cocks]
Cock Girth of Shaw is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Shaw is 6. [length in inches]
Ball Count of Shaw is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Shaw is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Shaw is 0. [number of cunts]
Cunt Depth of Shaw is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Shaw is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Shaw is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Shaw is false.
PlayerRomanced of Shaw is false.
PlayerFriended of Shaw is false.
PlayerControlled of Shaw is false.
PlayerFucked of Shaw is false.
OralVirgin of Shaw is false.
Virgin of Shaw is false.
AnalVirgin of Shaw is false.
PenileVirgin of Shaw is false.
SexuallyExperienced of Shaw is true.
TwistedCapacity of Shaw is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Shaw is false. [steriles can't knock people up]
MainInfection of Shaw is "Human".
Shaw is in Minotaur Grotto.
Description of Shaw is "[ShawDesc]".
Conversation of Shaw is { "<This is nothing but a placeholder!>" }.
The scent of Shaw is "[ShawScent]";

to say ShawScent:
	say "He smells like sweat and minotaur cum.";

to say ShawDesc:
	if debugactive is 1:
		say "DEBUG -> Humanity of Shaw: [Humanity of Shaw] <- DEBUG[line break]";
	say "...";

Section 2 - Rooms

Table of GameRoomIDs (continued)
Object	Name
Ruined Apartments	"Ruined Apartments"

Ruined Apartments is a room. It is fasttravel. It is private.
Description of Ruined Apartments is "[MinoEntdesc]".

instead of sniffing Ruined Apartments:
	say "      It smells like stale cum and minotaur sweat. No doubt that's emanating from Kerry and his plaything.";

to say MinoEntdesc:
	say "     The destroyed building that Kerry dragged Shaw off to stands imposingly in front of you. It's falling apart, but half is in good enough shape and seems habitable, leaving a wide-open entrance big enough for a hulking minotaur to navigate. To the east, you can see a pile of rubble that leads up into one of the apartments on the second floor, and to the north, you can see a clear path that Kerry took as he dragged his prize to their new home, dotted with dried cum and crudely bashed out of the way to make room for his hulking size.";
	if Humanity of Shaw is 90: [Just reached the grotto]
		say "     From the entrance, you can vaguely make out the echoing sounds of someone begging for mercy, mixed with heavy grunts and wet slaps. There's no other way to interpret that embarrassingly graphic soundtrack. Kerry hasn't given up on converting Shaw into a minotaur, though you might be able to save him.";
		If "Minotaur Prepared" is not listed in Traits of Kerry:
			say "     First, you should look around and try to find a way in. Walking through the front door without preparing seems like a great way to join Shaw as a minotaur fucktoy.";
	else if Humanity of Shaw > 40: [Shaw's been fucked silly for a while]
		say "     ";
	else if Humanity of Shaw is 0: [Shaw is fully transformed and helping Kerry convert others]
		say "     ";

Table of GameRoomIDs (continued)
Object	Name
Ceiling Crawlspace	"Ceiling Crawlspace"

Ceiling Crawlspace is a room.
Ceiling Crawlspace is above Destroyed Room.
Ceiling Crawlspace is sleepsafe.
Description of Ceiling Crawlspace is "[CeilingCrawlDesc]";

to say CeilingCrawlDesc:
	say "     A cramped space between floors. It's not like the vents you see in movies. There are significantly more spiders and dust, though thankfully, there's enough space for you to crawl on all fours. If you didn't have a good reason, you would avoid this place like the plague. Thankfully, it's a straight shot, so you can rely on your sense of touch and hearing to make your way forward.";

Table of GameRoomIDs (continued)
Object	Name
Destroyed Room	"Destroyed Room"

Destroyed Room is a room.
Destroyed Room is east of Ruined Apartments.
Destroyed Room is sleepsafe.
Description of Destroyed Room is "[DestroyedRoomDesc]";

to say DestroyedRoomDesc:
	say "     After a short climb, you reach the top of the pile of rubble and set foot into a rickety, destroyed apartment that looks like it could collapse at any moment. There's no furniture inside, but there is a large hole in the ceiling, through which you can [if Kerry is not in Minotaur Grotto]hear the faint sounds of Kerry working over Shaw's helpless body. You could easily slip into the hole in the ceiling and follow it. The vantage point should get a good view of what's happening between the former soldiers[else if Shaw is nowhere]hear nothing but eerie silence. There's no reason to crawl inside anymore[end if].";

Table of GameRoomIDs (continued)
Object	Name
Minotaur Grotto	"Minotaur Grotto"

Minotaur Grotto is a room.
Minotaur Grotto is sleepsafe.
Description of Minotaur Grotto is "[MinoGrottoDesc]";

to say MinoGrottoDesc:
	say "     Several apartments. Kerry's knocked down at least one wall in each, creating a makeshift home into which he's dragged several mattresses. Most of them have dried cum stains. ";
	if Shaw is in Minotaur Grotto:
		if Humanity of Shaw > 40:
			say "Shaw rests on one, glistening with a fresh coat and completely nude, his half-transformed body spread out and his ass destroyed, dripping with fresh cum. You can't wait to see what all of that cum does to his body.";
		else if Humanity of Shaw is 0:
			say "Shaw rests on one, glistening with a fresh coat and completely nude, his furry body coated in his mate's cum and a blissful smile on his bovine face. It seems he's taken to being a minotaur. Perhaps it's a good thing that you let Kerry convert him.";
		else:
			say "If you got here, you've got skills. No content though! Please report seeing this on the FS discord!";
	else:
		say "After a sound ass kicking, Kerry's abandoned his makeshift home. You can still smell the remnants of his attempts to convert his superior through animalistic mating, but there's no sign of him, and nothing's moved since the last time you were here. You doubt he's coming back.";

Section 3 - Dangerous Load

Table of GameEventIDs (continued)
Object	Name
Dangerous Load	"Dangerous Load"

Dangerous Load is a situation.
ResolveFunction of Dangerous Load is "[ResolveEvent Dangerous Load]".
Sarea of Dangerous Load is "Outside".
when play begins:
	add Dangerous Load to BadSpots of MaleList;
	add Dangerous Load to BadSpots of FurryList;

to say ResolveEvent Dangerous Load:
	say "     Wandering through the mostly empty streets, skirting around piles of rubble and wrecked cars, you can't help but think how quiet it is - too serene for comfort, as this makes you wonder what monster might be hiding behind the next corner. Then, as you come to the next street intersection and peek around the edge of a brick building, you are surprised that it isn't one of the infected, ready to pounce and fuck you into its mate. Instead, two humans stand just a few steps away - dressed in army fatigues and armed with rifles. The men spot you at the same time as you see them, and the vanguard - twenty-something, brown-haired and with a manly, square-jawed face, a Corporal from his rank markings - brings up his weapon in a flash and calls out to you, 'Step out where I can see you. NOW!' Somewhat intimidated by his threatening pose, you comply, giving the man a questioning look as you slowly raise your hands. 'Are there any more around the corner behind you?' he demands to know, relaxing a little bit again as you shake your head in what seems to be a sufficiently honest way.";
	say "     The rifle aimed at you lowers, and the soldier nods toward you, giving a somewhat apologetic smile. 'Sorry, citizen. I'll ask you to step over to the other side of the street now and let us pass. I'm Corporal Shaw, and this is Private Kerry. I know everyone here in the city is suffering, but our mission is important-' He is interrupted by his team-mate following behind, a strapping young man with reddish hair, 'Err- Corporal, I'm burning up.' The poor guy couldn't be older than 21. He must have left boot camp days ago. How unlucky he was, dropped right in the middle of this fine mess as his first deployment. 'Can it, Private! You're a soldier, so shut up and soldier,' Shaw growls over his shoulder, then turns back to you. But just as he is about to go on, the clatter of a rifle and army helmet bouncing on the pavement makes you both turn to his unfortunate companion. The red-headed man groans in discomfort, holding his stomach as he wavers on his feet, then suddenly starts to claw his uniform jacket off his body, his eyes bulging and his breath coming in heavy pants. 'Oh fuck!' Corporal Shaw swears and rushes to the other soldier.";
	WaitLineBreak;
	say "     'Get a hold of yourself. You gotta take your shot NOW!' the man shouts to his distressed companion, clawing at a bright red tube stuffed into his subordinate's waistband. An eye-blink later, he has the cylinder - that you recognize as an auto-injector - in his hand and yanks the plastic cap at its end to apply it, but he is too late. Ripping fabric as he bursts out of clothes too small for him, Private Kerry undergoes a painful growth spurt, transforming from a slender, almost pretty physique into a muscled, hulking creature. Arms rippling with muscles thrash about as his nerves burn from all the changes - sending Corporal Shaw flying, smacking against the nearby wall, and landing in a dazed sprawl on the sidewalk. While he groans and tries to get up again, the transforming soldier clutches his red-haired head in pain, then lets out a somewhat animalistic bellow as horns sprout from his head. He's starting to look like a bull - or maybe a minotaur? Finally stumbling to his feet, Corporal Shaw stares wide-eyed at the rapid transformation before his eyes.";
	say "     Getting over his shock in record time, Shaw grabs for another injector that he carries - only to find it cracked and broken by his hard landing. The soldier then looks around frantically for the original red tube - and he spots it moments later, rolling down the slightly inclined sidewalk towards you. 'Help me with that, quick!' he shouts to you, holding out his hand.";
	LineBreak;
	say "     [bold type]So, what do you want to do?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Snatch up the injector and throw it for the guy to catch.";
	say "     ([link]N[as]n[end link]) - Kick the cylinder away from him, down the road.";
	if Player consents: [stop the transformation]
		LineBreak;
		say "     Proving that you have a level head under pressure, you grab the little cylinder from the ground and give it a skillful throw. Your panicked eyes follow it as it sails through the air and lands in the man's outstretched hand. He rips the protective cap off its end and rams the injector into a still-growing pec on his fellow soldier - whose transformation slows down rapidly, then stops. Once his muscles aren't under high tension, Private Kerry collapses with a groan. For a moment, you hear nothing but the breathless panting of everyone involved as your bodies come down from all the excitement. Then you step a little closer and glance down upon Private Kerry. Where the young man formerly was pretty slim, he's built like a football player and has grown at least half a foot, with two about three-inch long horns poking out of his red buzz-cut hair on the left and right of his head. He shifts uncomfortably on the ground, pushing himself up - then pulls the tail he was lying on out from under himself and looks at it in surprise. It is thin and covered in short fur, with a large red tuft of fluff at the end.";
		say "     'Well, fuck!' Corporal Shaw says from where he is leaning against the wall by your side, rubbing his sore arm. 'Wouldn't that have been good to know before this fuck-up of an operation? The fucking boosters don't work on a strong enough infection.' Yet another ripping sound draws your attention back to the muscular soldier on the ground. His pants had burst when he stood up, turning them into fabric confetti with bulging muscles. As Kerry stands up, he wavers on his thicker legs, which causes something to slip out of the massive rip in his pants, dividing the camo pattern fabric into two flaps over his buttocks. The object falling to the ground bounces a little, once, twice, then rolls to a stop in the drain at the edge of the road - it's an electric blue butt plug, wet with a creamy white sheen.";
		WaitLineBreak;
		say "     The young soldier out of whose ass it slipped starts to lean down to pick it up, exposing his well-fucked and cum-dripping asshole to Corporal Shaw and yourself. This unseemly sight prompts the other man to clear his throat and say, 'Leave it, kid. I - I don't think the sample you had is valid now anyways.' Looking back at him and realizing his state of undress, Kerry blushes and replies, 'Yes, sir!' Then he scrambles to improvise a loincloth from his jacket, replacing the split pants. The two soldiers gather their stuff, faces red with embarrassment, then talk with one another in murmurs for a moment. Finally, Private Kerry approaches you a bit shyly. 'Um, I gotta thank you for what you did. Helping me stop- you know- transforming. So. Here, take this- I can't wear it anymore.' With that, he hands you his army helmet along with two MREs. The soldiers then march off, clearly not wanting to talk about what happened minutes before.";
		ItemGain food by 2;
		ItemGain combat helmet by 1;
		now Resolution of Dangerous Load is 3; [stopped the transformation]
	else: [let the transformation happen]
		LineBreak;
		say "     Kicking the injector away from the desperate man, you see his eyebrows draw together in outrage. Corporal Shaw even makes a few steps towards you - in the course of which he misses the ever-quicker transformation of his fellow soldier. Fabric tears and falls to the ground as he grows and grows, his face drawing out into a muzzle as the horns curve to the front, giving him an anthro bull's head. By now towering over the other man, the newly transformed minotaur steps forward on his furred legs ending in hooves, lowering his head to sniff at his superior. The warm wash of air from minotaur Kerry's breath is the first sign for Corporal Shaw that he's in big trouble, causing him to whirl around and gape at the hulking beast that was his squad mate just minutes before. Gaze drawn to the thick, meaty shaft dangling between the bull-man's legs, Shaw gulps, then calls out, 'Private! Stand down! Fuck, Kerry! Don't do this, kid! I'll use this if I must!' His hands snatch up the rifle hanging by a strap around his torso, threatening the minotaur with it.";
		WaitLineBreak;
		say "     It takes a few seconds before you both realize that the gun's magazine was bent and cracked during the impact with the wall earlier, causing all the bullets to tumble out - leaving the human soldier with no ammunition. 'Fuck!' he snarls, but before he can add anything more, the man-turned-mythical-beast speaks in a deep voice. 'You smell nice,' minotaur Kerry says, his cock twitching a little as he reaches for Shaw.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - This is hot! Watch as the minotaur fucks him!";
		say "     ([link]N[as]n[end link]) - Nah. Grab some loot and get out of there before you become Kerry's next fucktoy.";
		if Player consents: [yup]
			LineBreak;
			say "     Even though the man struggles, he is no match for the much larger and stronger bull-man, allowing Kerry to undress him while he kicks ineffectively at the minotaur's iron grip. Before long, Shaw is fully naked in his grasp, except- is that a black butt plug buried between the soldier's buttocks?! The minotaur reaches down between Shaw's legs and pulls the sex toy free with his thick fingers, causing a gush of cum to squirt out of the man's hole with it. His hole was already full of cum! Kerry sniffs the plug eagerly and licks the cum sticking to it off, then drops the item and starts to stroke his mighty shaft. 'Let go of me! NOW - I won't let you... aarrghhhHH!' the frantic shouts of the man end in a scream as the minotaur impales him on his thick rod, thankfully helped along by the cream filling the man already has. Kerry bellows as he sinks into his former superior, thick throbbing meat sliding deep into the man.";
			say "     Then he starts to fuck, pumping Corporal Shaw up and down on his erection while holding the man with his two colossal hands. Thankfully the groans and pained wincing of the soldier quickly fade, replaced by more and more aroused moans, as he can't help but get into being fucked by this powerful beast. Before much longer, the human is holding on to his captor's arms and actively slides his ass up and down on his long pole, all the while his cock bounces and drools its approval. The coupling of man and beast melts into a mutual affair, filling the street with satisfied groans, grunts, and moans. It doesn't take long before Corporal Shaw can't hold back and paints his partner with long spurts of cum, splattering his powerful minotaur partner's abs and pecs. The twitching and flexing of the man's rectum around his cock drives Kerry over the edge, and with a loud bellow, the minotaur's balls start pumping a massive load into the human's innermost depths.";
			WaitLineBreak;
			say "     As the hard washboard abs of the trained soldier start to vanish from sight when his belly swells with every further spurt of minotaur cum. Corporal Shaw's body doesn't stay unchanged either- the man starts sprouting small horns, and his skin has the slightest shadow of fur in patches across his skin. It seems like he's got a noticeable resistance to the transformation, but with enough fucking by his brutish partner, that will no doubt wear away. After finishing himself in the man and taking a short break, Kerry wanders off with the other soldier still impaled on his prick, leaving a trail of cum across the concrete. You doubt it would be hard to find them later if you followed the 'snail trail.' Left behind after the conclusion of their coupling, you check over the scene of broken gear and ripped clothing. Salvaging what you can, you follow them for a bit until they wander into a section of half-destroyed buildings, making a mental note of their location.";
			ItemGain food by 2;
			ItemGain combat helmet by 1;
			now Resolution of Dangerous Load is 1; [kicked the booster away, watched them fuck]
			AddNavPoint Ruined Apartments;
			decrease Humanity of Shaw by 10;
		else: [nope]
			LineBreak;
			say "     Not in the mood to watch the results of your choice earlier, you snatch a dropped MRE, then get going, quickly ducking out of sight around the corner. Behind you, lusty bellows and shocked gasps echo through the streets until you're a block or two distant.";
			ItemGain food by 1;
			now Resolution of Dangerous Load is 2; [kicked the booster away, didn't watch them fuck]
	now Dangerous Load is resolved;

Section 4 - Watching Shaw Change

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Superior Breeding"	Superior Breeding	"[EventConditions_Superior Breeding]"	Ceiling Crawlspace	2500	2	100

to say EventConditions_Superior Breeding:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Superior Breeding	"Superior Breeding"

Superior Breeding is a situation.
ResolveFunction of Superior Breeding is "[ResolveEvent Superior Breeding]".
Sarea of Superior Breeding is "Nowhere".
Prereq1 of Superior Breeding is Dangerous Load.
Prereq1Resolution of Superior Breeding is { 1 }.

to say ResolveEvent Superior Breeding:
	say "     The crawlspace is a tight fit, but you wriggle your way through all the same, following the sounds of animalistic breeding until a breeze draws your attention, bringing the unmistakable scent of a bull rutting. Scuffling along, you follow the growing cacophony until you reach a hole in the crawlspace large enough to look through, conveniently placed above the place where Kerry's stashed Shaw. Peering through the small space, you marvel at how close the minotaurs seem. If the hole wasn't so small, you could drop directly onto their backs!";
	LineBreak;
	say "     Do you want to watch Shaw being fucked?";
	say "     ([link]Y[as]y[end link]) - Watch.";
	say "     ([link]N[as]n[end link]) - Don't watch, but wait for the situation to change.";
	If player consents:
		say "     'Please. No more.' Shaw weakly claws at the mattress with half-mutated hoof-tipped fingers, his submission forgotten as he tests the sturdiness of a chain collar around his neck. Every inch of him is wet with mixed fluids, and his gaping ass bubbles with cum, releasing sloppy strings with every movement. His transformation is slightly further along, and patchy, half-grown fur covers his cum-slick skin while a tucked tail tries its best to conceal his abused rump. 'Get ahold of yourself. We need-' Shaw's words trail off into a groan as a meaty paw grabs his hips, dragging him backward. 'No. Kerry not done.' The grunting minotaur says with a petulant tone. 'Shaw will be Kerry's mate. Raise a big family together.' Lining himself up with Shaw's ass again, he slides in with little effort and pins the half-human beneath him, his plunging shaft creating a sloppy sound. His rump moves in an unmistakable rhythm, and you're treated to a view of its muscular cheeks flexing in time with every thrust.";
		say "     Shaw's protests melt into moans as his body accepts the cock that's impaled him for who-knows-how-long, and before long, you're treated to his glazed-over expression and bouncing cock as he's shoved along Kerry's shaft, his stature taken advantage of to create the perfect fleshlight for his bovine lover. Words fail him, and he doesn't even notice your eyes peering through the convenient peephole, lolling in Kerry's arms as the lewd bulge of minotaur cock stretches his bare stomach. If it weren't for the nanites, you're sure he'd have burst something by now! 'Kerry wants to make a big family. Shaw will help. Shaw is mate.' Kerry grunts as his wide bovine tongue rolls over Shaw's cheek, collecting the sweat dripping from his increasingly furry skin. His balls slap against the captive half-minotaur's ass with every thrust, and before long, he grunts in satisfaction, adding to the mess of cum swimming through Shaw's ass and swelling his belly into a pregnant dome.";
		say "    As the minotaur releases his prey, he runs a hand over Shaw's panting face in an almost tender expression. 'Kerry will bring food. Be good.' He grunts, standing with his still pulsing, dripping cock leading the way and moving from your view. His lumbering footsteps continue until everything is quiet except for Shaw's pitiful moaning and your heartbeat. You realize now would be the perfect time to infiltrate the minotaur grotto.";
		now Resolution of Superior Breeding is 1; [player watched]
	else:
		say "    You try not to intrude on Shaw's humiliation, closing your eyes and ignoring his increasingly breathy and unconvincing pleas for mercy. It's impossible to drown out the wet slaps and moans, but thankfully it's over quickly, and you notice that Kerry's footsteps are retreating into the distance. Now would be the perfect time to walk in while Kerry's gone!";
		now Resolution of Superior Breeding is 2; [player didn't watch]
	Decrease Humanity of Shaw by 15;
	Change the North Exit of Ruined Apartments to Minotaur Grotto;
	Change the South Exit of Minotaur Grotto to Ruined Apartments;
	now Superior Breeding is resolved;
	Add "Minotaur Prepared" to Traits of Kerry.

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Shaw's Predicament"	Shaw's Predicament	"[EventConditions_Shaw's Predicament]"	Minotaur Grotto	2500	2	100

to say EventConditions_Shaw's Predicament:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Shaw's Predicament	"Shaw's Predicament"

Shaw's Predicament is a situation.
ResolveFunction of Shaw's Predicament is "[ResolveEvent Shaw's Predicament]".
Sarea of Shaw's Predicament is "Nowhere".
Prereq1 of Shaw's Predicament is Superior Breeding.
Prereq1Resolution of Shaw's Predicament is { 1, 2 }.

to say ResolveEvent Shaw's Predicament:
	say "     Walking into the broken apartment building, you follow the path of cooling cum to Shaw. He's right where the former private left him, his legs spread and his puffy hole gaped by the recent fuck, drooling Kerry's seed down over half-transformed balls and groaning in exhaustion. His eyes are glazed, and his half-hard cock sticks out from beneath his heavy balls, drooling with its recent orgasm. He's almost sedated, barely able to muster more than a whimper, and he seems to be on the edge of becoming a full minotaur. Another session or two with Kerry, and he'll be another hulking beast, ready to fuck others into bovine bliss. You realize this is a golden opportunity. You could save Shaw[if player is male]or use the burly man to sate your growing desire. You doubt Kerry will return soon, and that glistening, glazed donut looks fun[end if].";
	let Shaw_Choices be a list of text;
	if player is male:
		add "Fuck him." to Shaw_Choices;
		add "Save him." to Shaw_Choices;
		add "Abandon him." to Shaw_Choices;
	else:
		add "Save him." to Shaw_Choices;
		add "Abandon him." to Shaw_Choices;
	let Shaw_Choice be what the player chooses from Shaw_Choices;
	if Shaw_Choice is:
		-- "Fuck him.": [sloppy seconds]
			LineBreak;
			say "     Licking your lips, you spread those quivering cheeks, delighting at the fresh flow of minotaur cum that drools from Shaw's ruined hole. He won't notice if you take advantage of him in this state, and his shapely bovine rump, dotted with patches of unblemished human skin, is attractive enough. Freeing your cock, you lower yourself, lining your tip up with the sopping wet hole and hissing through your teeth as you sink in with little effort. It's like fucking a silky furnace, and the wet, sloppy slurps that follow each plunge add to the filthy thrill, coating your balls in steaming minotaur cum. Before long, you're pounding away, listening to the sweet chorus of half-awake moans from the captive hybrid.";
			say "     You're not sure how long you abuse the poor bovine. Shaw's sloppy hole makes it easy for you to last a long time. You savor every moment, exploring Shaw's gently clenching walls at a feverish pace without worrying about the stretched creature's comfort. After all, you can't be harder to take than Kerry. Wait. Amid your fevered balls-deep humping, you recall Shaw's mate. You should try to finish before he gets back! Of course, it's too late. While you were enjoying Kerry's freshly seeded mate's loosened hole, the minotaur had returned. Feeling the hairs on the back of your neck raise, you turn your head into a steaming huff and an angry expression, attempting to pull out of Shaw despite your finish being nowhere near close. Meaty paws grab your hips, but surprisingly, they don't pull you backward, instead spreading your cheeks and lining up with your ass as he keeps your dick buried in Shaw's plundered depths. You realize what's about to happen too late, and you feel your cock surge forward as Kerry penetrates your un-defended hole, sandwiching you between his bulky form and Shaw's unresisting, limp body.";
			WaitLineBreak;
			say "     Like a ragdoll, Kerry shoves you against Shaw's ass and mashes you against his back, your cock stirring his innards even as Kerry ruins your ass, a river of pre slickening the way as his cock bucks within your inner walls. Helpless against the angry minotaur's actions, you can only hang on for dear life, your cock adding to the mess as your prostate screams for mercy. You lose track of how often you cum, and you eventually black out underneath Kerry's mindless rutting, your body nothing but a sex toy for the minotaur to fuck his mate through. Hours later, you awaken, tossed to the side and sore from the minotaur's angry rutting. Kerry is asleep on his mate's back, but you can see his hips still moving, rutting the messy half-minotaur even as he snores. Now seems like a good time to escape, and you gather up your cum-soaked clothing, limping your way out of the minotaur grotto with your body, if not your dignity, intact.";
			NPCSexAftermath Shaw receives "AssFuck" from Player;
			NPCSexAftermath Player receives "AssFuck" from Kerry;
			now Resolution of Shaw's Predicament is 1; [Player fucked Shaw]
		-- "Save him.": [remove shaw from the game]
			LineBreak;
			say "     Shaking off the horny thoughts, you look around for something to loosen the metal collar around Shaw's neck. A discarded screwdriver in a nearby corner catches your eye, and you grab it, prying the metal open and releasing the poor beast. It's slower than you'd hoped, but you support the half-minotaur as you walk through the destroyed apartment building, stopping once you reach the entrance. Shaw's woken up completely, and he stares, confused, at his half-transformed hand, then shoves you aside, showing a surprising amount of strength as he bellows his dismay, then runs off before you can regain your footing, disappearing into the distance. You try to follow him, but the trail of minotaur cum gives out, and without any further clues, you return to the entrance to his former prison, hoping that you didn't make things worse for Shaw. Who knows what could take advantage of him in his panicked, half-transformed state?";
			now Shaw is nowhere;
			now Resolution of Shaw's Predicament is 2; [Player released Shaw]
		-- "Abandon him.": [Let Kerry keep changing him.]
			LineBreak;
			say "     Shaking your head, you decide to leave the minotaur to his fate. With the changes he's already been through, it's unlikely he'll be in his right mind, and it seems merciful to leave him with Kerry. At least Kerry will take care of him. Leaving the unaware half-minotaur, you head back to the entrance to the minotaur lair, hoping you don't run into Shaw's mate on the way.";
			now Resolution of Shaw's Predicament is 3; [Player left Shaw to be transformed]
			Move Shaw to Minotaur Grotto;
			decrease humanity of Shaw by 25;
	Move Kerry to Minotaur Grotto;
	Move Player to Ruined Apartments;
	Now Shaw's Predicament is resolved;

instead of going to Minotaur Grotto while Kerry is in Minotaur Grotto:
	say "     After the events of your last visit, you think it might be best to leave Kerry the minotaur to his own devices for a while...";
	say "     <Note: Current end of content for this location. Open to continuation later!>";

[
Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Transformative Desire"	Transformative Desire	"[EventConditions_Transformative Desire]"	Ceiling Crawlspace	2500	2	100

to say EventConditions_Transformative Desire:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Transformative Desire	"Transformative Desire"

Transformative Desire is a situation.
ResolveFunction of Transformative Desire is "[ResolveEvent Transformative Desire]".
The level of Transformative Desire is 5.
Sarea of Transformative Desire is "Nowhere".
Prereq1 of Transformative Desire is Superior Breeding.
Prereq1Resolution of Transformative Desire is { 1, 2 }.
Prereq2 of Transformative Desire is Shaw's Predicament.
Prereq2Resolution of Transformative Desire is { 1, 3 }.

to say ResolveEvent Transformative Desire:
	say "     ";]

Section 5 - Capturing More Soldiers



[Prepared code for copying to update old events:]

[
Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"ExampleEvent"	ExampleEvent	"[EventConditions_ExampleEvent]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"ExampleEvent"	ExampleEvent	"[EventConditions_ExampleEvent]"	Grey Abbey Library	2500	2	100

to say EventConditions_ExampleEvent:
	if 1 > 0: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
ExampleEvent	"ExampleEvent"

ExampleEvent is a situation.
ResolveFunction of ExampleEvent is "[ResolveEvent ExampleEvent]".
Sarea of ExampleEvent is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent ExampleEvent:

]


Kerry ends here.