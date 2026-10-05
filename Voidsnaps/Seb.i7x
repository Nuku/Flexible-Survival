Seb by Voidsnaps begins here.

[Documentation here.]
[Hunger is the male (penis) stat and default path for topping the dragon. Thirst is for females (vagina) and bottoming. This is just to track how you seduced him for future dialogue. Does not affect sex scene selection later.]
[]
[]
[]
[]

a postimport rule: [keeps location consistent with quest to prevent softlock]
	if "Hunting Seb" is listed in Traits of Soot or "Captured Seb" is listed in Traits of Soot:
		connect Seb's Burrow;

to connect Seb's Burrow:
	change the up exit of Bedazzled Burrow to Destroyed Jewelry Store;
	change the down exit of Destroyed Jewelry Store to Bedazzled Burrow;

Section 1 - Rooms

Table of GameRoomIDs (continued)
Object	Name
Bedazzled Burrow	"Bedazzled Burrow"

Bedazzled Burrow is a room.
Description of Bedazzled Burrow is "[BedBurrow_Desc]".
The scent of Bedazzled Burrow is "[BedBurrow_Scent]".
Bedazzled Burrow is down from Destroyed Jewelry Store.
Seb is in Bedazzled Burrow.

to say BedBurrow_Scent:
	say "     The bedazzled burrow smells like damp earth and lazy, musky dragon.";

to say BedBurrow_Desc:
	say "     After heading through a wide tunnel that looks as if it were bulldozed, rather than dug with claws, you happen upon a much bigger, domed room. It's pleasantly cool due to its depth, though the place could use a good airing out, smelling like something you can only describe as unwashed bedding in a home with many pets. Jewelry, no doubt stolen from the store above (and a few others, based on the amount...) sticks haphazardly from the walls, glittering in the limited light as if the resident decorated with them. ";
	if Seb is in Bedazzled Burrow:
		say "In the center of the room is a gently heaving mass of scales.The steady sound of breathing, intermixed with snores, leaves no doubt that the scaly mountain is alive, and as your eyes adjust to the dark you find yourself staring at an enormous backside, tail flopped to the side to expose a dark brown hole above balls so enormous they must be bigger than your head. You briefly wonder how their owner can even walk, before you shake your head and attempt to get your mind back on your mission, rather than the hypnotic up and down of those haunches. There'll be plenty of time to admire them later!";


Table of GameRoomIDs (continued)
Object	Name
Destroyed Jewelry Store	"Destroyed Jewelry Store"

Destroyed Jewelry Store is a room.
Description of Destroyed Jewelry Store is "[DestJewelryStore_Desc]".
The scent of Destroyed Jewelry Store is "[DestJewelryStore_Scent]".
Entrance To The High Rise District is west of Destroyed Jewelry Store.

to say DestJewelryStore_Desc:
	say "     What appears to be an upscale jewelry store has been utterly ransacked. Silk pillows with clear use as displays for something glittering and far too expensive have been ripped to pieces, and glass covers the floor like a glittering carpet, while not a single hint of the place's wares remain. The back half of the store has all but collapsed into a yawning, dark hole, from which you sense something quite large. If you don't have a reason to be here right now, you should probably leave before whatever's in there notices you!";
	if "Hunting Seb" is listed in Traits of Soot:
		say "     This must be the place the parchment's pointing you toward. You look into what you now realize is a burrow, and hope that it's at least less oppressively hot than the hole you found Helios in, steeling yourself for a trip in the dark.";

to say DestJewelryStore_Scent:
	say "     It smells like broken glass with a faint hint of dragon.";

Section 2 - Creature Declaration

[Only used for the event. Please do not use elsewhere.]

to say PrepCombat_Earth Dragon:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Earth Dragon";
	now Name entry is "Earth Dragon";
	now enemy title entry is "Earth Dragon";
	now enemy Name entry is "Seb"; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of][or][or][at random]";
	now defeated entry is "[Alpha Husky loss]";
	now victory entry is "[Alpha Husky attack]";
	now desc entry is "[Alpha Husky Desc]";
	now face entry is "npc only";
	now body entry is "npc only";
	now skin entry is "npc only";
	now tail entry is "npc only";
	now cock entry is "npc only";
	now face change entry is "npc only";
	now body change entry is "npc only";
	now skin change entry is "npc only";
	now ass change entry is "npc only";
	now cock change entry is "npc only";
	now str entry is 45;
	now dex entry is 10;
	now sta entry is 55;
	now per entry is 9;
	now int entry is 8;
	now cha entry is 5;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 500;
	now lev entry is 20; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 75; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 16; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 30; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "";
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "npc only"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "npc only";
	now magic entry is true;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is ""; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Section 3 - Character Declaration

Table of GameCharacterIDs (continued)
object	name
Seb	"Seb"

Seb is a man.
ScaleValue of Seb is 3. [human sized]
Body Weight of Seb is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Seb is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Seb is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Seb is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Seb is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Seb is 5. [length in inches]
Breast Size of Seb is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Seb is 2. [count of nipples]
Asshole Depth of Seb is 9. [inches deep for anal fucking]
Asshole Tightness of Seb is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Seb is 1. [number of cocks]
Cock Girth of Seb is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Seb is 16. [length in inches]
Ball Count of Seb is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Seb is 6. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Seb is 0. [number of cunts]
Cunt Depth of Seb is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Seb is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Seb is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Seb is false.
PlayerRomanced of Seb is false.
PlayerFriended of Seb is false.
PlayerControlled of Seb is false.
PlayerFucked of Seb is false.
OralVirgin of Seb is false.
Virgin of Seb is false.
AnalVirgin of Seb is false.
PenileVirgin of Seb is true.
SexuallyExperienced of Seb is true.
TwistedCapacity of Seb is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Seb is true. [steriles can't knock people up]
MainInfection of Seb is "Earth Dragon".
Description of Seb is "[SebDesc]".
Conversation of Seb is { "<This is nothing but a placeholder!>" }.
The scent of Seb is "[SebScent]".
ImpregFunction of Seb is "[ImpregSeb]".

to say SebScent:
	say "Seb smells like a mixture of fresh dirt, dragon musk, and a hint of petrichor. You can definitely tell that he spends most of his time asleep on dirt.";

to say SebDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Seb] <- DEBUG[line break]";
	if Seb is in Crystalline Crater:
		say "     Rather large even for a dragon, Seb stretches before you, his brown scales glimmering with a bronze overtone. Despite his intimidating stature, he's visibly lazy, always leaning against a wall, his eyes drooping even as they focus on you. You get the feeling he could fall asleep at a moment's notice. A private peek shows an almost obnoxiously large package dangling between his legs, with a relaxed ballsack that sags lazily and a thick, juicy sheath. ";
		if "Slightly Pregnant" is listed in Traits of Seb:
			say "The dragon's stomach shows the slightest bulge of pregnancy. He instinctively curls around it, his tail draped over it as he lays on his side, clearly exhausted from lugging around the increased weight.";
		else if "Heavily Pregnant" is listed in Traits of Seb:
			say "The dragon's stomach has swollen far further than the slight bulge you remember. He's positively plump, resting comically on his side and appearing like a turtle stuck in place, though you're sure his sedentary lifestyle means he's less bothered than he appears. You'd think he's carrying far more than a single egg!";

to say ImpregSeb:
	if ImpregTimer of Seb is 0: [not already pregnant]
		if debugactive is 1:
			say "     DEBUG: Impregnation successful! A new egg is growing in Seb now!";
		now ImpregTimer of Seb is 1; [Pregnant.]
	else:
		if debugactive is 1:
			say "     DEBUG: Can't impregnate Seb, already pregnant!";

Section 3 - Seb's Training And Post Training Sex Scenes

instead of conversing Seb:
	if Seb is in Bedazzled Burrow and Hunger of Seb is 0 and Thirst of Seb is 0:
		say "[SebIntroduction]";
		say "[SebBedazzledSexMenu]";
	else if Seb is in Bedazzled Burrow and Thirst of Seb is 4 or Hunger of Seb is 4:
		say "[SebCapturedScene]";
	else if hunger of Seb < 4 and hunger of Seb > 0 and thirst of Seb < 4 and thirst of Seb > 0:
		say "[SebAlmostCaptured]";
		say "[SebBedazzledSexMenu]";
	else if Seb is in Crystalline Crater and hunger of Seb is 4 or Thirst of Seb is 4:
		say "[SebSootSexMenu]";

to say SebBedazzledSexMenu:
	say "     [bold type]What should you do?[roman type][line break]";
	let Seb_Asleep_Choices be a list of text;
	add "Attempt to wake him politely." to Seb_Asleep_Choices;
	add "Take advantage of his vulnerable body." to Seb_Asleep_Choices;
	add "Nothing, for now." to Seb_Asleep_Choices;
	let Seb_Asleep_Choice be what the player chooses from Seb_Asleep_Choices;
	if Seb_Asleep_Choice is:
		-- "Attempt to wake him politely.":
			say "     You assume you owe the sleeping creature the courtesy of at least attempting to wake him up, so you trek around the bulk of the dragon's body, heading toward his face. Tapping his nose, you try your best to get his attention, but even a rather rude slap against one cheek, resulting in a stinging palm and nothing else, doesn't get his attention. It would seem that the creature won't react to this level of stimulation. Maybe you should try something more drastic?";
		-- "Take advantage of his vulnerable body.":
			say "     Setting aside your gear where it won't be in the way, you turn your sights on the dragon's haunches, licking your lips as you let your gaze wander. You can't deny that he's packing quite a buffet of assets, with a plump rear end as close to a thick pair of butt cheeks as you imagine a feral can reach, and huge balls that move with his breath, rolling around in a droopy, relaxed sack. Of course, you can only have fun with one of the dragon's weak points at a time, so you'd better choose before you lose your nerve!";
			say "     What do you want to do?";
			let Seb_AsleepSex_Choices be a list of text;
			if Player is female:
				add "See if he'll fit in your pussy." to Seb_AsleepSex_Choices;
			if Player is male:
				add "Use his ass." to Seb_AsleepSex_Choices;
			add "Stick his cock in your ass." to Seb_AsleepSex_Choices;
			add "Put your mouth to work on that ample set of balls and thick sheath." to Seb_AsleepSex_Choices;
			let Seb_AsleepSex_Choice be what the player chooses from Seb_AsleepSex_Choices;
			if Seb_AsleepSex_Choice is:
				-- "See if he'll fit in your pussy.":
					say "     Settling on the fat sheath peeking between the dragon's thighs, you reach out with trembling fingers, feeling its girth in your hands for a moment and reveling in its heat. It doesn't take long before a sticky, pulsing cock spills out from the depths of that sheath, slapping wetly against your forearm and leaving a sheen of pre. It's surprisingly thick compared to the two dragons you've already seduced, but it still looks mildly draconic, with ridges and a pointed tip. The size of both is incomparable to what you'd expect from the slumbering dragon's size, and you can't help but feel a thrill in your lower stomach, your inner thighs rubbing together as a wet trickle works its way down them. Wasting no time, you slot that tip against your needy lower lips, grunting with effort as you try to line yourself up. Seb's sleeping position may not be the best for what you're about to do, but you don't let that stop you, grinding that tantalizing shaft against your aching sex until you find just the right spot, one leg over the dragon's, and sink it into yourself. The stretch almost hurts, but you can't help but feel proud as you look down at your stomach, watching the dragon's cock stretch your insides around itself until your lower lips touch the soft cushion of that leathery sheath, that bulge dangerously close to touching your lungs from the inside.";
					say "      You quietly thank the influence of the nanites as you reach down to tease your slippery clit, moving yourself along that shaft and biting your lip as you watch the bulge match your movements, stretching your stomach obscenely. A huff comes from above, breaking through the dragon's incessant snoring, and you feel him shift in his sleep, lifting his haunches. You barely have time to react before he pins you beneath those massive balls, your legs haphazardly spread and pressed against his thighs. It would appear that you've activated the dragon's instincts, and his unconscious mind is ready to breed! That first thrust makes you see stars, sending that fat cock deep enough that you worry for the integrity of your womb. That fleshy lance bullies your cervix as it is, mashing into it with increasing force that only makes you wetter. Rough breeding wasn't quite what you were expecting, but you can't help but hang on for the ride, hands scrabbling for purchase on smooth scales, but giving up to scrape across the dirt on either side as relentless thrusts pound your pussy lips against his hot sheath.";
					say "     Helpless beneath that rutting beast, you reach your finish long before he does, squirting helplessly all over that pistoning cock and clenching your insides like the fuckhole you've become. There's no time to relax, and you whimper to yourself as he continues long after your pussy screams at him to stop, overstimulation sending you into spasms even as another climax builds, ignored by that bestial member's destructive pace. This time, you're not alone in the burst of pleasure that overwhelms you. Seb's claws dig into the ground on either side of your body as he shoves in one final time, and his tip shoves your cervix to the side, filling every inch of your innards it can without piercing your womb, and he blasts your insides with a hot wave of cum that nearly burns with its intensity. While your stomach swells to accept the first few blasts, it inevitably overflows, gushing down your ass cheeks and over the dragon's balls, and you find yourself lying in a puddle of mud by the time he finishes. Barely able to think, you notice the dragon's hindquarters lowering, and you barely manage to pop yourself off that retreating cock, rolling over to prevent being crushed under his bulk. He huffs in his sleep, flopping into his own mess without a care in the world, and you take a moment to catch your breath as you watch him in amazement. Is he really still asleep?";
					SebThirst;
				-- "Use his ass.":
					say "     Walking around to the side of the sleeping dragon, you heft that heavy tail the rest of the way up, flopping your cock in the cleft just beneath its base. The tip of your dick fits nicely against his snug entrance, and you can't help but let out a low moan as you feel it pulse with soft heat. Wasting no time, you spread the drop of pre that dribbles from your tip and apply gentle pressure, gritting your teeth at the intense tightness that threatens to trap your cock in place. 'Hrngh.' Grunting in his sleep, Seb surprises you by pushing backward into your unsuspecting hips, swallowing the rest of your cock into his depths with unceremonious ease even as his inner walls clamp down. Still lying on his side, he remains at the perfect height for your purposes, but another problem arises as you attempt to pull out for your first thrust. Intense waves of tightness and heat massage your cock, but the suction created by your coupling won't let you withdraw even an inch, setting your legs trembling as it milks you hard enough that it almost hurts.";
					say "     After a few moments of extended effort, you manage to use your cock's dripping tip to ease your way, slicking that greedy tunnel with increasingly copious precum until, with a wet pop, you slide free, leaving the dragon's hole puckered like a silky donut. You slip back in after rolling your tip along the rim to ensure its wetness, unwilling to pass up the opportunity to enjoy more of that velvet sensation, but soon find yourself helplessly humping again, the base of your dick kissing his hole with every slap of your balls against his scales. Still snoring away, the dragon expertly manipulates your thrusting cock, his hole clinging so tightly that it feels as if you'll drag his inner walls out if you're not careful. His claws dig into the dirt beneath him, and he rocks with increasing impatience the longer you pound into him, his instincts guiding his movements until you feel yourself hitting a spongy spot inside him that sends his cock spilling between his legs, slapping against his belly like a feral horse's. Fat strings of precum soon follow, hitting the dirt hard enough to make a sound, and his tongue hangs out of his mouth.";
					say "     You can't help but be proud of yourself, hugging that tail against your chest to use as an anchor as you brutalize what you now realize is the dragon's prostate. It's an intoxicating feeling to dominate something so much bigger than yourself, and you let yourself drift on a sea of pleasure so deep that you barely notice the growing tightness rising in your core. Crashing over you like a wave, it finally hits you as you slide in to the hilt, grunting triumphantly. You cum far more than what you'd consider natural, milked by greedy contractions with your cock jackhammering that needy prostate, and by the time you finish, your legs almost give out, the slightest movement triggering screaming overstimulation from your cock. Unceremoniously falling backward, you release yourself from the grip of that glazed hole, falling on your ass and whimpering as cooler air assaults your overworked dick. You're a mess, lying there with your cock still flagging and your mouth open, but a few moments of staring at that open hole have you already planning your next visit. That fat dragon cock seems to agree with you, throbbing indignantly between Seb's legs as if to demand you continue, but a clench of that greedy, destroyed hole brings with it thick, gooey strings of satisfaction. Coating shiny brown scales, it leaves almost no inch of exposed dragon uncovered, flailing like a sprinkler head, and then coming to a stop, visibly softened. Sated, the dragon settles into his mess, as if this were an ordinary occurrence, eyes still tightly shut and breath coming steadily. You have no idea how he slept through an orgasm that copious, but you feel the oddest desire to try again, to see if you can wake him. Perhaps next time?";
				-- "Stick his cock in your ass.":
					say "     Settling on the fat sheath peeking between the dragon's thighs, you reach out with trembling fingers, feeling its girth in your hands for a moment and reveling in its heat. It doesn't take long before a sticky, pulsing cock spills out from the depths of that sheath, slapping wetly against your forearm and leaving a sheen of pre. It's surprisingly thick compared to the two dragons you've already seduced, but it still looks mildly draconic, with ridges and a pointed tip. The size of both is incomparable to what you'd expect from the slumbering dragon's size, and you can't help but feel a thrill in your lower stomach, your inner thighs rubbing together as you feel your ass clench indignantly, demanding its due. Slicking your fingers by dipping them into the dragon's pre as it rolls down the shaft, you greedily plunge them into your own hole, spreading your legs wide. It doesn't take long until your hole softens under the onslaught of three fingers and copious musky goo, and you waste no time in slotting the dragon's dick against your hole, hanging one leg over his haunches, and carefully angling it to give you the best leverage. It takes a few seconds to get yourself into the right position, but it feels like an eternity before you feel the telltale squelch of that dick violating your hole. Slowly at first, but then faster until half its length buries itself in your stomach, its outline stretching your skin obscenely.";
					say "     The dragon's sleeping movements give you no time to get used to the sheer size of that length, cramming another inch into you with an eager buck that tears a moan from your lips. The whole length of that shaft can't quite enter you from this position, but you can barely tell the difference as you try your best to hold on, giving up your agency in favor of clenching on that fat cock and trying to be the best whore you can be. You thought you'd be offended by the utter lack of expression on his face, but the small trickle of drool out of the corner of his mouth, and his body's involuntary reaction to your insides, only brings a lusty haze to your mind. Soon enough, the massive cock inside you sets off your orgasm, sending lightning bolts of sensation rolling down your legs even as you clamp your innards around the invader, your messy, presoaked hole growing noisier with every thrust.";
					if player is male:
						say "     Your dick fountains an impressive distance covering your front ";
						if player is female:
							say "and your pussy dribbles down the dragon's shaft, covering his balls in your nectar. You fall forward, your hole slipping off that thick dragon cock just in time for you to witness that massive dick fountaining like a runaway garden hose, flopping against his stomach and coating every inch of scales in pearly white ropes. Impressively, even that show doesn't appear to awaken the slumbering dragon, his briefly spread legs relaxing back into place and his tail flicking contentedly.";
					else:
						say "     Your pussy dribbles down the dragon's shaft, covering his balls in your nectar. You fall forward, your hole slipping off that thick dragon cock just in time for you to witness that massive dick fountaining like a runaway garden hose, flopping against his stomach and coating every inch of scales in pearly white ropes. Impressively, even that show doesn't appear to awaken the slumbering dragon, his briefly spread legs relaxing back into place and his tail flicking contentedly.";
						say "     Sated, yet strangely jealous of the dirt that hungrily drinks the dragon's cum, you find yourself planning your next tryst with the sleeping creature. Perhaps next time will be even better? You shudder at the thought, barely resisting the urge to finger your ruined hole.";
						SebThirst;
				-- "Put your mouth to work on that ample set of balls and thick sheath.":
					say "     Barely able to contain yourself, you drop to your knees and slide in close, at eye level with the soft, musky entrance to the dragon's sheath. You waste no time in burying your face, relishing its thick, masculine scent, and letting your tongue loll out, tasting the slightly earthy flavor and shuddering at the hint of salt. Feral and unashamed, the dragon's scent assaults your nostrils, growing stronger as you indulge yourself until a fat slug of a cock dribbles its way out of its home, greeting your tongue and lightly slapping against your cheek as it widens and unfurls. Mesmerized, you let that thick shaft pass you up, lapping at chocolate brown balls and staring up at it as you coat every inch in your saliva. It's so big, it nearly leaves your view by the time that it throbs triumphantly at full mast, and you can't help but drool at the sight, both hands massaging those thick orbs to show your appreciation even as you playfully tease their sensitive skin with your teeth. Your restraint, if you can call it that, doesn't last long as you watch a juicy glob of precum roll its way down the underside of the shaft, and you trace its path upward after intercepting it, letting it gloss your lips with masculine essence.";
					say "     Your mouth barely grazes the tip before a moan dies on your lips, silenced by the sleeping dragon's thrust that stretches them to their limit, forcing you to open your throat to accept the tip. Unrelenting pulses give you little time to acclimate, and it's all you can do to keep from choking on it, at least eight inches of throat-stretching shaft bottoming out in your body before the sheer girth of it forces you to choose between breaking your jaw or withdrawing. Self-preservation wins out, and you withdraw, drool dripping from your lips as you lavish the first few inches in appreciative licks and milk out more thick juices to lubricate your aching throat. It's not long before your lips go numb with the dragon's insistent, impatiently growing pace, your throat reduced to nothing more than a pussy for him to rut, but you hold yourself in place, fingers working those churning balls as if begging for them to empty themselves into your mouth. You want nothing more than to be used right now, and clearly, the slumbering dragon's instincts won't let you escape a deep seeding.";
					say "     A loud huff is all the warning you get before your nose stings with the sheer pressure of draconian orgasm, twin jets of cum squirting out of your nostrils even as your throat struggles to deal with the bulk of Seb's orgasm. Thankfully, before you drown, his dick's sheer force ebbs, but not before your stomach swells to an obscene degree, looking positively pregnant and groaning with the sheer volume. With no choice but to withdraw before you're overwhelmed, you pop off that massive cock with a hacking cough, your face covered with a stray streamer of cum from that flailing tip. A few more watery dribbles coat the dragon's scales as his shaft softens, and he settles back into place, tongue hanging out of the side of his mouth as his back leg kicks gently. How he's still asleep, you'll never know, but you get a slight thrill out of the fact that he'll never know who drained his balls, at least for now.";
					PlayerDrink 25;
					PlayerEat 20;
					SebThirst;

to SebThirst:
	if Thirst of Seb < 4:
		increase Thirst of Seb by 1;

to SebHunger:
	if Hunger of Seb < 4:
		increase Hunger of Seb by 1;

to say SebIntroduction:
	if hunger of Seb is 0 and thirst of Seb is 0: 
		say "     You circle the dozing dragon with a healthy amount of caution, careful to step over the hazard of various chunky, expensive-looking jewelry, only to lower your guard after your foot crunches against a rock, provoking no response from the snoring beast. He must really be out! You suppose that'll make your job a lot easier, so you step closer, pressing the rune on your palm to the dragon's hide. After a few moments, nothing happens. You sigh to yourself. Did Alon's easy 'capture' spoil you, or is there something else you have to do before you can transport the snoring hulk? Perhaps you should do something to convince him?";

to say SebAlmostCaptured:
	say "     As you approach the sleeping dragon again, you notice a faint glow on your palm. It seems that using him in his sleep DID make some progress toward your goal. Maybe if you continue you'll be able to use the rune properly? You lick your lips, already thinking about what you want to do next.";
	if debugactive is 1:
		say "     Have sex with him the same way four times to progress. Bottoming/vaginal/oral is one way and fucking his ass is the other.";

to say SebCapturedScene:
	say "     You approach the sleeping dragon, and your hand starts to glow like a flashlight in the gloomy room. You touch it to the sleeping dragon's forehead, flinching as he stirs in his sleep, then watch, flabbergasted as he walks, eyes still closed, toward the door that appears in the far cave wall. Is he even awake? You wince as you hear a crash on the other side, then watch Soot hurriedly close the portal, as if he needs to deal with something.";
	TraitLoss "Hunting Seb" for Soot;
	TraitGain "Captured Seb" for Soot;

to say SebSootSexMenu:
	say "     Surprisingly, this time when you approach the earth dragon, he appears to be awake, though his eyes are half lidded and he yawns as you attempt to engage him in conversation. You feel a small amount of disappointment that you won't be able to continue your one-sided sexual shenanigans, but you know enough about Soot's enchantments by now that you doubt you'll be left high and dry. After all, there's only one reason you captured Seb in the first place!";
	if hunger of Seb is 4:
		say "     'So you're the reason why my posterior's so strangely accomodating these days.' Stretching with another big yawn that shows off long, sharp, gleamingly white teeth, the dragon rolls over onto his side, bringing his heavy balls into view. They sag with the sheer weight of those orbs, resting on his inner thigh, while his sheath practically steams in the cool air. His tail lazes to the side, airing out the space beneath it and reminding you of how intense it felt to be inside him. With a huff, he relaxes his cheek against a nearby rock. 'Perhaps you'd like to do something different this time? I won't stop you. Whether this itch is manufactured or a natural urge, I've never been one to pass up life's simplest pleasures.' Though he's playing coy, the dragon's peeking cockhead tells a different story. You're sure that he'd be disappointed if you only walked away. Perhaps you can continue to have your way with him?";
	else if thirst of Seb is 4:
		say "     'So you're the reason why I woke up sticky.' Stretching with another big yawn that shows off long, sharp, gleamingly white teeth, the dragon rolls over onto his side, bringing his heavy balls into view. They sag with the sheer weight of those orbs, resting on his inner thigh, while his sheath practically steams in the cool air. With a huff, he relaxes his cheek against a nearby rock. 'Perhaps you'd like to do something different this time? I won't stop you. Whether this itch is manufactured or a natural urge, I've never been one to pass up life's simplest pleasures.' Though he's playing coy, the dragon's peeking cockhead tells a different story. You're sure that he'd be disappointed if you only walked away. Perhaps you can continue to have your way with him?";
	TraitGain "Open For Business" for Seb;

Instead of fucking Seb:
	if Seb is in Bedazzled Burrow:
		say "     You almost lose yourself in the idea of molesting the sleeping dragon, but caution demands that you approach with more of a plan. You should try waking him at least, to make sure he's truly asleep. Those teeth look like they'd cause some damage if they didn't appreciate your amorous approach!";
	else if Seb is in Crystalline Crater and "Open For Business" is not listed in Traits of Seb:
		say "     You notice that the dragon is awake this time. It'd be better to approach him this time, before you attempt to have sex with him. At the very least, you might prevent yourself from receiving some very embarassing wounds.";
	else if Seb is in Crystalline Crater and "Open For Business" is  listed in Traits of Seb:
		say "[SebCrystallineSexMenu]";

to say SebCrystallineSexMenu:
	say "     Having already received the green light to enjoy the dragon's body again, you gleefully strip off your gear, tossing it into an out of the way corner to prevent any stray fluids from ruining it, and approach the dragon in the nude, already touching yourself at the sight of his ample assets. There's so many different things you want to do, but you should probably start with one.";
	say "     What do you want to do with the lazy dragon?";
	let Seb_Awake_Choices be a list of text;
	if Player is female:
		add "Cram his cock in your pussy." to Seb_Awake_Choices;
	if Player is male:
		add "Fuck his ass." to Seb_Awake_Choices;
	add "Ride his dick with your ass." to Seb_Awake_Choices;
	let Seb_Awake_Choice be what the player chooses from Seb_Awake_Choices;
	if Seb_Awake_Choice is:
		-- "Cram his cock in your pussy.":
			say "     Shedding your gear in a far corner, you let your horny cunt lead the way, zeroing in on the dragon's peeking cock and straddling him as quickly as you can, slotting his tip against your lower lips. It doesn't take long until your rolling hips coax his shaft out, coating the underside of it in a slippery coating of your excitement that makes it shine in the glittering lights of the underground chamber. Biting your lower lip, you fumble with his length for a moment, struggling to angle it just right, until with a juicy slurp, it pops past your entrance, sliding deep into your accommodating tunnel. Huffing excitedly, the dragon under you rolls further onto his back, allowing you a small degree of comfort as you adjust to his size. His length pulses with desire, though he's as still as he was in his sleep, letting, or rather, forcing you to take the lead. The only indication that he's even awake this time is the groggy expression on his face, half-lidded eyes staring at you with expectation. It's almost flattering that you're able to keep him awake.";
			say "     Feeling as though you need to up the ante before the slothful creature passes out on you, you settle your palms on the dragon's lower stomach, grunting with effort as you draw yourself up from the base of his cock until his last ridge threatens to pop from your depths. A quick plap sends you back down to the base, the impact shooting pleasure through your body as your clitoris gently hits smooth scales. He's so big that you're able to see the outline of his dick in your stomach, and you can barely believe that he fits, but you take him like a champ, growing bolder with each slap of those huge balls against your backside. Breath hitching, the dragon makes his pleasure known, interrupting your almost hypnotic rhythm to dig his claws into the dirt on either side, tongue hanging out of his mouth. The slightest clench sends him over the edge, and you find yourself several feet higher in the air, still impaled to the root, as his hips finally match your pace, forcing you to hold on for dear life lest you be thrown off. Contemplating the softness of the far wall as you feel your grip on smooth scales loosening, you finally see an end in sight as your stomach bloats with a fresh deposit of molten dragon cum.";
			say "     Holding your increasingly pregnant-looking stomach, you try your best to keep every drop deep inside of you, but your capacity soon overflows, and a rude noise heralds the gush of cum around your union, coating the dragon's balls in mixed cum and feminine juices. It seems like it'll never end, but by the seventh spurt, he slips from your depths, fully flaccid and sated, his strained expression switching to post-cum serenity. Within seconds, he snores away, ignoring your presence, and you're left to clean yourself up in the afterglow of your own finish, feeling slightly used, though there's a hint of pride in exhausting him. Were you just that good?";
			say "     Within seconds of attempting to wipe yourself clean of dragon cum, you find yourself experiencing a strange, though not unpleasant feeling in your lower stomach. You watch in amazement as your stomach bulges outward and your cunt drools far more than it should, the dragon's cum mixing with a new source of lubricant. Recognizing the signs, you spread your legs wide and bear down, giving birth to yet another rune covered, pleasantly textured egg that sets off your already overly sensitive cunt once again, wrenching an orgasm out of you. You fall backward, breathing heavily and twitching as you look over the magical artifact, resting for a while before you go about your business.";
			NPCSexAftermath Player receives "PussyFuck" from Seb;
		-- "Fuck his ass.":
			say "     Tossing aside your gear with reckless abandon, you practically dive into the situation headfirst, letting your cock lead the way. Wasting no time, you work your way around the dragon's body until you reach his hindquarters, taking a mental snapshot of the sight even as it brings a drop of drool to the corner of your mouth. Seb's rear arches slightly as you approach, his tail lifted and lazily draped off to the side, revealing the soft, heated space underneath its base. His rear entrance winks at you from the cleft between, pulsing in time with his heartbeat, and his balls sway slowly in time with the rest of him, drooping almost to the floor and bouncing with every particularly hard clench. Aligned perfectly with your height, the dragon has painstakingly placed himself for easy access, and there's no doubt about what he wants.";
			say "     You debate taking the time to slick yourself before you shove into that bestial butthole, but you can't wait any longer, flopping your cock against that soft hole with a small gasp and biting your lower lip as the heat coming off of it caresses your shaft. No, it's much better to give in to your desires and let your body do as it wills. Precum dribbles from the tip of your cock before you feel the frictiony hubris of rushing into such a tight channel, but you can't help but let a hiss out from clenched teeth as your tip sinks in, clutched by what feels like a silky fist. As the rest of your cock soon follows, Seb lets out a deep groan, his face lying limply against the ground and his maw wide open. 'Gods. It's like sleeping on the most expensive jewels. How can it feel so...' Trailing off, he seems to go into a bit of a pleasured trance, the only sign that he's still awake being the rhythmic clench that welcomes your cock to the base, kissing your last inches with a soft pout of that tight ring.";
			WaitLineBreak;
			say "     Emboldened by the dragon's slutty reaction, you quickly get to work on his offered rump, staring transfixed at the sight of your cock's now slippery length as it sinks in, then retreats from that silky hole. It takes everything you have to hold yourself back from finishing right there, but you don't want to disappoint your dragon slut, so you measure your pace, reveling in his perfectly fitted hold. The dragon grows even more cockdrunk the longer you piston into him, his tongue hanging out of his mouth and his eyes glazed over. Actively swaying his hips to push back into every shove, he's blatantly rubbing his dick against the dirt beneath him, adding a cacophony of wet, squelching, muddy sounds to the already echoing slap of your hips on his ass. A shudder rolls down his spine, and then you feel him go still, his hole clamping around your cock as if to milk you of anything and everything it can draw out of you. Soon enough, the reason for his stillness makes itself known, spreading slowly out in all directions around the dragon's body in an off-white puddle. You've made him cum.";
			say "     Grunting at the dragon's spasming grip on your cock, you pound away harder by the second, taking his orgasm as permission to let yourself go. He's almost too tight for you to finish, as though his innards are keeping your cock tightly closed, but eventually he relents, and you feel yourself lose control, spraying his inner walls with your own contribution to the mess. It feels like he's sucking out your soul with the sheer suction created by your union, but you eventually flop free, falling on your ass with your cock still standing proud, dribbling what little is left inside you. You're not sure if it's possible, but you're pretty convinced that the dragon's hole sucked out every last bit of cum you could muster. Almost gloating at its own prowess, it clamps around empty air, dribbling the smallest bit of your seed and giving you a glimpse into the absolute wreck you made of him. There's no doubt about it, the dragon is a born slut!";
			WaitLineBreak;
			say "     'Mmm. Gods, I could go for a nap.' Yawning loudly, the dragon flops to the side, stomach still covered in a sloppy mixture of cum and mud, interspersed with small glittery specs you can only imagine are gemstones. His cock flops wetly against the mess, half-hard and still drooling. Within seconds, his eyes are closed, and a light snore fills the air. Taking a moment to catch your breath, you shake your head at the sheer laziness of the dragon in front of you, though you can't be mad. His sleeping expression is far too cute for that.";
			NPCSexAftermath Seb receives "AssFuck" from Player;
			if impregtimer of Seb is 0: [Guaranteed Pregnancy.]
				now ImpregTimer of Seb is 1;
		-- "Ride his dick with your ass.":
			say "     Shedding your gear in a far corner, you let your horny mind lead the way, zeroing in on the dragon's peeking cock and straddling him as quickly as you can, slotting his tip against your greedy ass. It doesn't take long until your rolling hips coax his shaft out, sliding it between your cheeks in an increasingly pre-heavy hotdogging. Biting your lower lip, you fumble with his length for a moment, struggling to angle it just right, until with a juicy slurp, it pops past your entrance, sliding deep into your accommodating rear entrance. Huffing excitedly, the dragon under you rolls further onto his back, allowing you a small degree of comfort as you adjust to his size. His length pulses with desire, though he's as still as he was in his sleep, letting, or rather, forcing you to take the lead. The only indication that he's even awake this time is the groggy expression on his face, half-lidded eyes staring at you with expectation. It's almost flattering that you're able to keep him awake.";
			say "     Feeling as though you need to up the ante before the slothful creature passes out on you, you settle your palms on the dragon's lower stomach, grunting with effort as you draw yourself up from the base of his cock until his last ridge threatens to pop from your depths. A quick plap sends you back down to the base, the impact shooting pleasure through your body as rump slaps against massive, churning balls. He's so big that you're able to see the outline of his dick in your stomach, and you can barely believe that he fits, but you take him like a champ, growing bolder with each slap of those huge nuts against your backside. Breath hitching, the dragon makes his pleasure known, interrupting your almost hypnotic rhythm to dig his claws into the dirt on either side, tongue hanging out of his mouth. The slightest clench sends him over the edge, and you find yourself several feet higher in the air, still impaled to the root, as his hips finally match your pace, forcing you to hold on for dear life lest you be thrown off. Contemplating the softness of the far wall as you feel your grip on smooth scales loosening, you finally see an end in sight as your stomach bloats with a fresh deposit of molten dragon cum.";
			WaitLineBreak;
			say "     Holding your increasingly pregnant-looking stomach, you try your best to keep every drop deep inside of you, but your capacity soon overflows, and a rude noise heralds the gush of cum around your union, coating the dragon's balls in mixed cum and juices. It seems like it'll never end, but by the seventh spurt, he slips from your depths, fully flaccid and sated, his strained expression switching to post-cum serenity. Within seconds, he snores away, ignoring your presence, and you're left to clean yourself up in the afterglow of your own finish, feeling slightly used, though there's a hint of pride in exhausting him. Were you just that good?";
			say "     Within seconds of attempting to wipe yourself clean of dragon cum, you find yourself experiencing a strange, though not unpleasant feeling in your lower stomach. You watch in amazement as your stomach bulges outward and your ass drools far more than it should, the dragon's cum mixing with a new source of lubricant. Recognizing the signs, you spread your legs wide and bear down, giving birth to yet another rune covered, pleasantly textured egg that sets off your already overly sensitive body once again, wrenching an orgasm out of you. You fall backward, breathing heavily and twitching as you look over the magical artifact, resting for a while before you go about your business.";
			NPCSexAftermath Player receives "AssFuck" from Seb;

Section 4 - Impregnation

an everyturn rule:
	if ImpregTimer of Seb > 0: [Seb is pregnant]
		increase ImpregTimer of Seb by 1; [counting up towards 24]
		if debugactive is 1:
			say "     DEBUG: Seb's eggnancy advanced one turn. Current Turn: [ImpregTimer of Seb], Target Value: 24";
		if ImpregTimer of Seb is 8:
			TraitGain "Slightly Pregnant" for Seb;
		if ImpregTimer of Seb is 20 and skipturnblocker is 0: [announcement that birthing time is coming closer]
			if Seb is visible:
				say "     Seb rolls restlessly in his sleep, disturbing the cave and creating a small tremor. Judging by the size of his stomach, it's clear that he's going to be giving birth soon. You should stick around if you want to be there when it happens!";
			else:
				say "     You get the nagging feeling that you're forgetting something, and then suddenly remember the pregnant dragon you knocked up not so long ago. If you want to be there for Seb during birth, you should probably stick around him for a while!";
			TraitGain "Heavily Pregnant" for Seb;
			TraitLoss "Slightly Pregnant" for Seb;
		else if ImpregTimer of Seb >= 24 and skipturnblocker is 0: [birthing time]
			if Seb is not visible: [player isn't anywhere near him]
				say "     You get the feeling you've forgotten something. Shaking your head and sighing, you realize you likely missed the birth of a dragon egg. Seb's, in this case.[bold type]It looks like this time you won't get to watch Seb give birth! Next time try to be closer to him.[roman type][line break]";
				add "Absent_Birth" to Traits of Seb; [just increases offspring count. no payoff. trait just there for completeness. it does nothing]
			else: [player is next to Seb]
				say "     A loud groan draws your attention to the sleeping earth dragon. His front paws clutch at his stomach, though his eyes are closed, and he appears to be in a deep sleep. Judging by how wide his legs spread, and the thick trail of lubricant that drools from his exposed hole, he's ready to give birth to your egg! Straining, he attempts to pass the egg, but it gets stuck halfway through, and you notice his cock growing harder as he attempts to pass it, the widest part of the egg nearly slipping out before his pouting hole sucks it back in. This slippery tug of war continues for a few minutes, and then with a titanic effort, the sleeping dragon passes the egg with a sloppy noise, leaving his hole gaping and his dribbling cock standing proud in front of him. Clearly, the birth has worked him up.";
				if Player is male:
					LineBreak;
					say "     [bold type]Do you want to take advantage of the dragon's post-birth hole?[roman type][line break]";
					say "[link]Y[as]y[end link] Yes, that gaping, slutty entrance looks like it needs another load.";
					say "[link]N[as]n[end link] No, let him rest.";
					if Player consents:
						LineBreak;
						say "[SebBirthSex]";
						NPCSexAftermath Seb receives "AssFuck" from Player;
					else:
						LineBreak;
						say "      Shaking your head, you leave the dragon alone to rest in his post-birth haze. His hole clenching at open air, he snores away as you turn from his vulnerable body, leaving the egg for Soot to collect.";
			TraitLoss "Heavily Pregnant" for Seb;
			if OffSpringCount of Seb < 4:
				increase OffSpringCount of Seb by 1;
			now ImpregTimer of Seb is 0; [pregnancy reset]

to say SebBirthSex:
	say "     Unable to disguise your arousal, you toss aside your gear and approach the exhausted dragon, grabbing his tail and gently moving it aside as you line yourself up. You sink into his wet, gaping hole with a low moan, swallowed up in seconds until his clenching rim kisses the base of your dick. He's looser than usual, but you don't mind; if anything, the fact that he just pushed out the result of your last coupling has your stomach in knots and your desire to breed him full of another egg at its apex. The dragon groans in his sleep, but he doesn't attempt to escape, loosely clamping around your cock as if protesting the sudden entry. Still, his tail lifts as you first start to thrust, hiked high and giving you an eyeful of pouting dragon hole to stare at. His body definitely knows what it wants.";
	say "     Slowly, then faster as you succumb to the wet heat of dragon hole, you pound the snoozing dragon, your toes digging into the dirt beneath you as you try to find purchase to cram yourself further. Wet heat washes over you from that glorious hole, and you can already feel yourself ready to fill it up, though you grit your teeth, unwilling to shorten the moment. It takes all you have, but you manage to last a few more moments before you let yourself go, bottoming out and filling that accommodating rump with another load. As you slip free of the dragon's hole, you can't help but admire the slick tunnel's attempts to hold in your sloppy strings of cum. It puckers and clamps shut, pulling inward as it loses the battle and remains slack and well-used, sending creamy trails down over big draconic balls. You're mesmerized by the sight, but you barely manage to tear yourself away, slipping back into your gear and giving the sleeping dragon's ass a parting pat. You'll have to wait until next time to indulge yourself again!";
































Seb ends here.