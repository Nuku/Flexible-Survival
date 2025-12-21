Version 1 of Luke by Alexeo begins here
[Written by Alexeo in March 2025, coded by Testerboy]

Section 1 - Encounter

[ Resolution of Returned_Spots           ]
[  0: default start value                ]
[  1: postponed sex for later            ]
[ 10: player got boned                   ]
[ 99: player refused sex                 ]

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Returned_Spots"	Returned_Spots	"[EventConditions Returned_Spots]"	Zoo	2500	9	20

to say EventConditions Returned_Spots:
	if ScaleValue of player > 1 and ScaleValue of Player < 5: [Somewhat close to normal human size?]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Returned_Spots	"Returned_Spots"

Returned_Spots is a situation.
Prereq1 of Returned_Spots is Roaming Spots.
ResolveFunction of Returned_Spots is "[ResolveEvent Returned_Spots]".
Sarea of Returned_Spots is "Zoo".

when play begins:
	add Returned_Spots to BadSpots of MaleList;
	add Returned_Spots to BadSpots of FurryList;

Section 2 - NPC

[Not required, as "Resolution of X" is a pre-made variable attached to all situations that can be used for tracking purposes - intermediate states as well as which end state the event was left at]
[
Table of GameCharacterIDs (continued)
object	name
Luke	"Luke"

Luke is a man.
ScaleValue of Luke is 3.
Body Weight of Luke is 4.
Body Definition of Luke is 6.
Androginity of Luke is 3.
Mouth Length of Luke is 8.
Mouth Circumference of Luke is 3.
Tongue Length of Luke is 5.
Breast Size of Luke is 0.
Nipple Count of Luke is 2.
Asshole Depth of Luke is 14.
Asshole Tightness of Luke is 2.
Cock Count of Luke is 1.
Cock Girth of Luke is 4.
Cock Length of Luke is 9.
Ball Count of Luke is 2.
Ball Size of Luke is 4.
Cunt Count of Luke is 0.
Cunt Depth of Luke is 0.
Cunt Tightness of Luke is 0.
Clit Size of Luke is 0.
PlayerMet of Luke is false.
PlayerRomanced of Luke is false.
PlayerFriended of Luke is false.
PlayerControlled of Luke is false.
PlayerFucked of Luke is false.
OralVirgin of Luke is false.
Virgin of Luke is true.
AnalVirgin of Luke is true.
PenileVirgin of Luke is false.
SexuallyExperienced of Luke is true.
TwistedCapacity of Luke is false.
Sterile of Luke is false.
MainInfection of Luke is "Leopardman".
Description of Luke is "Sexy Leopardman".
Conversation of Luke is { "Not here" }.
HP of Luke is 0.
]

Section 3 - Interacting

to say ResolveEvent Returned_Spots:
	say " [Luke_intro]";
	if player is male: [Stops after the brief intro if not male, otherwise lets you choose what to do next]
		LineBreak;
		say "     [bold type]What do you do now?[roman type][line break]";
		let Returned_Spots_Choices be a list of text; [more current, easier to use multi choice point below]
		add "Smile and nod your head. You'd love to get railed by this sexy cat!" to Returned_Spots_Choices;
		add "Shake your head. You're not up for that right now." to Returned_Spots_Choices;
		add "Shake your head and push him away. You have no interest in this guy, now or ever!" to Returned_Spots_Choices;
		[
		if Player is female: [example for an optional choice that only appears if the condition is met]
			add "Bla bla" to Returned_Spots_Choices;
		]
		let Returned_Spots_Choice be what the player chooses from Returned_Spots_Choices;
		if Returned_Spots_Choice is:
			-- "Smile and nod your head. You'd love to get railed by this sexy cat!":
				say "[luke_opt1]"; [sex]
			-- "Shake your head. You're not up for that right now.":
				LineBreak;
				say "[luke_opt2]"; [postpone]
			-- "Shake your head and push him away. You have no interest in this guy, now or ever!":
				LineBreak;
				say "[luke_opt3]"; [refuse]

to say luke_intro:
	project Figure of Leopardman_soft_icon;
	say "     Returning to the location where you witnessed that sexy leopard-man hop over the zoo wall, you lean against the said wall and contemplate your next choice. It's at that exact moment that you experience something falling in front of you, and you look up to see that it's that same spotted feline you were thinking about before. It seems that he had just hopped back over that wall past you, back into the zoo, and he's completely naked, just as before. Tensing up from the sudden encounter, you see him jump, a bit startled, as well. Now, getting a better look at him, he has his paws up and claws out, and a snarl is on his muzzle as he looks ready to fight! Knowing of all the crazy creatures out there in the city, you also ready a combat pose. A few moments pass, neither of you striking the first blow before the cat-man lowers his paws, and his snarl turns to a smirk.";
	say "     'Well now, you still appear to have your wits about you after all. It looks like we just surprised each other, is all.'";
	WaitLineBreak;
	if player is male:
		if Resolution of Returned_Spots is 1: [previously postponed]
			say "     The feline lowers his guard and presses his face in close, inhaling your scent deeply. 'Oh! It's you again! Did you decide to take me up on my offer? I'll have to warn you though, I only know one way to give it, and that's rough! What do you think? Want to be my sexy little kitty for a bit?'";
		else: [first time meeting him as a male]
			say "     Lowering his guard, the leopard-man presses his face in close and inhales your scent deeply. Putting one paw on his hip and moving the other past your shoulder, he plants it on the wall behind you. Now leaning over you with a lecherous look on his face, he grins wide and gives you a wink, licking his upper jowls.";
			say "     'Just because we're not simple-minded beasts doesn't mean we can't have a bit of fun! And you smell like exactly what I'm looking for. An eager male slut, ready to be used. What do you say we have a little romp? I'll have to warn you though, I only know one way to give it, and that's rough! What do you think? Want to be my sexy little kitty for a bit? My name's Luke, by the way.'";
	else: [For non penis havers he ends the conversation after saying what he is looking for]
		say "     Reaching a paw down between your legs, the leopardman grasps at your nethers and gropes you lewdly. He then pulls away with a frown. 'Ah, it looks like you're not what I'm looking for. I only fuck pure, one-hundred percent men. That means dicks, balls, and nothing else! Please feel free to return here if you ever get that... changed to my preference.'";

to say luke_opt1: [gay sex]
	project Figure of Leopardman_hard_icon;
	say "     Returning the smirk and nodding your head ambitiously, you're only slightly surprised when that sultry feline suddenly grabs you by the shoulders and spins you around, shoving the side of your face against the wall. [if player is not barecrotch]Grabbing the hem of your pants, he quickly yanks them down, exposing your bare ass to the open air. [end if]He then steps forward and pulls your rear to his fuzzy sheath, shoving and grinding against it firmly[if tail of Player is not empty], while grabbing your tail and yanking it up aggressively[end if]. It only takes him a few moments for his feline prick to slide out of his sheath, the thing quickly hardening until it reaches its full, nine-inch length, and covered in prickly barbs all over.";
	say "     Moving his muzzle close to your ear, he growls dominantly and whispers in a low tone. 'Time to get that slutty ass abused, my little faggot cocksleeve.' With that, he quickly wraps his arms around your upper torso and pulls his hips back, letting you feel the spikes on his cock drag across your ass cheek before he hastily presses his tip against your hole. Then, all at once, he crams his entire, prickly dick deep into your rump. As he shoves that meaty length harshly into your back end, you can feel your hole stretching open to accept him, and you groan loudly into the crisp breeze that teases your face. The studly cat doesn't let you rest for a second though, and he begins brutally ravaging your insides with his stiff pink rod. Each time he pulls out, you grit your teeth as his sharp barbs scrape the insides of your hot tunnel, causing pain to ripple through your body. Yet, every time he crams his cock back inside, you relax momentarily and let out a whimper out of pure bliss. As he continues to fuck you, his hot breath pants across your right ear, while he degrades you with his dirty talk. 'Fuck yes! Such a good little bitch! I'm gonna make you my good little cock warmer, eager to take my loads over and over and over again until you beg me to make you my sex slave. You're gonna come crawling back to me for more, any time you need this slutty hole filled!'";
	WaitLineBreak;
	say "     Fucking you hard and fast, he rocks your body back and forth with your face still shoved against the cool bricks of the wall, while you keep your ass pressed back into his groin, your back arching in glee while you let the assertive leopard man dominate you in both body and mind. Continuing to growl, he keeps on pounding you at the same rapid-fire pace, his preseed now leaking liberally into your hot hole, the warm liquid cooling the scratching his spiked cock makes inside you, if only slightly. As he uses your ass for his pleasure, you eventually feel his pace become a bit erratic, and some small part of you can feel his large, full balls tense up more as they slap against your taint. 'Fuck yeah! I'm getting close, whore! Gonna fill this hot bitch-hole with my jizz! Gonna claim your slutty ass as my property, for me to breed any time I need to bust a nut! Get ready sexy good little cumdump! Here comes your reward!'";
	say "     Grabbing your hip in one paw and your chest in the other, he pulls your back against his chest and latches his teeth on the back of your neck in a mating bite, while giving deep, rough thrusts against your ass, only the base of his dick leaving your back door with each hump against you. Then, all at once, he peaks, and his tip begins gushing rope after rope of hot, creamy, leopard spunk deep into your guts. As he fills you, your own orgasm hits, and your cock spews its load onto the wall in front of you. Meanwhile, he keeps on shoving his hips against your rear, milking more and more of his steaming kitty cream into your intestines, still not giving you any chance to rest.";
	WaitLineBreak;
	say "     Finally, however, the fuck session ends and the feline releases your neck from his jowls, both of you panting deeply as the last of his seed seeps inside you, and the tail end of your own cum dribbles onto the ground between your feet. He just holds you there for a minute, the two of you basking in the afterglow of your post-orgasm bliss. Then, unceremoniously, he shoves you to the ground, his lust slaked. Turning around to look up at him from your position with your back in the dirt, your hole gapes and leaks his jizz down the back of your balls and thighs, the feline grinning down at you. 'Don't get me wrong, you're a good fuck, but that's about all you're useful to me for. Don't expect me to be all cuddly and romantic. Your role is to accept my kitty batter in your hot little sluthole. You're more than welcome to come back again as long as you know your place.' With that, the leopard steps over your prone form and leaps up the wall, vaulting himself over it and out of sight, while you go about standing up and collecting your things, preparing to head out, on your way. Part of you thinks what an asshole the feline is, but another small part of you is already aching to see him again.";
	LibidoReset;
	CreatureSexAftermath "Player" receives "AssFuck" from "Leopardman";
	now Resolution of Returned_Spots is 10; [player got fucked]
	now Returned_Spots is resolved;

to say luke_opt2: [postpone]
	say "     With a shake of the head, you politely tell him you're not up for any sexy fun right now. With a bit of a frown, he shrugs dramatically before pushing you aside and hopping up the wall. Straddling the top with one leg on either side, he looks down at you and smirks. 'Fair enough. You know where to find me when you change your mind. Sooner or later, all good little bitches crave to be put in their place.' With that, he hops over to the opposite side, disappearing from sight.";
	say "     [bold type]Writer's Note: You can hunt for the 'Returned_Spots' event to re-encounter Luke for a second chance at having some fun. [roman type][line break]";
	now Resolution of Returned_Spots is 1; [Player postponed]

to say luke_opt3: [refuse]
	say "     With a quick shake of your head, you push him gently away and explain that you're not interested in him, now or ever. With an exasperated sigh, he shrugs and gives your chest a prod with one finger. 'You don't know what you're missing. Whatever! There's plenty of good sluts eager for some kitty cock.' As he says this, he gropes his sheath and gives it a shake at you. 'Your loss.' At that, he quickly scrambles back over the wall, never to be seen by you again.";
	now Resolution of Returned_Spots is 99; [refused]
	now Returned_Spots is resolved;

Luke ends here.
