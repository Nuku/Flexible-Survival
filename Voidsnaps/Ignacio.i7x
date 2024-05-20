Ignacio by Voidsnaps begins here.

[Ignacio Traits:]
[Trusted: Treated him well at the start. Diplomacy.]
[Hostile: Leads to being captured.]
[Matteo Quest: Given the quest to find Ignacio's brother, Matteo.]
[]


Section 1 - Character Declaration and Menus

Table of GameCharacterIDs (continued)
object	name
Ignacio	"Ignacio"

Ignacio is a man.
ScaleValue of Ignacio is 3. [human sized]
Body Weight of Ignacio is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ignacio is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ignacio is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ignacio is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ignacio is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ignacio is 6. [length in inches]
Breast Size of Ignacio is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ignacio is 2. [count of nipples]
Asshole Depth of Ignacio is 8. [inches deep for anal fucking]
Asshole Tightness of Ignacio is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ignacio is 1. [number of cocks]
Cock Girth of Ignacio is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ignacio is 7. [Length in Inches]
Ball Count of Ignacio is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ignacio is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ignacio is 0. [number of cunts]
Cunt Depth of Ignacio is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ignacio is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ignacio is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ignacio is false.
PlayerRomanced of Ignacio is false.
PlayerFriended of Ignacio is false.
PlayerControlled of Ignacio is false.
PlayerFucked of Ignacio is false.
OralVirgin of Ignacio is false.
Virgin of Ignacio is true.
AnalVirgin of Ignacio is false.
PenileVirgin of Ignacio is false.
SexuallyExperienced of Ignacio is true.
TwistedCapacity of Ignacio is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ignacio is true. [steriles can't knock people up]
MainInfection of Ignacio is "".
Description of Ignacio is "[Ignaciodesc]".
Conversation of Ignacio is { "<This is nothing but a placeholder!>" }.
Scent of Ignacio is "".

To say Ignaciodesc:
	say "     Now that you're not trying to escape from him, you manage to get a closer look at the poison dart frog. Ignacio isn't particularly imposing, with a height around the mid 5 foot range, but his coloration is striking. Swirls of dark purple mingle with blue and black, screaming 'Danger! Poison' while bright slitted frog pupils regard you with quiet caution. He's got the body of a swimmer, with nothing to cover him but a tight-fitting black speedo, and his fingers are thick and webbed- no doubt making him unparalleled in the water.";

instead of conversing Ignacio:
	if "Hostile" is listed in Traits of Ignacio: [After player is captured.]
		say "     Trying to put on your most earnest voice, you ask Ignacio what he's talking about. Isn't he the kidnapper? You were just at the swimming hole to investigate for Kosk. You haven't involved yourself in anything untoward, and you were most likely nowhere near the swamps when it happened! Isn't he a bit presumptuous? Searching your face for a lie, Ignacio visibly wavers. Fists clenched, he grabs the makeshift bars, tearing them away from the door and advancing on you. While not all that large, you get the feeling the angry frog wants to rip you apart. Shaking his head, he snarls through clenched teeth. 'I don't believe you. I didn't want to do this, but...'";
		say "     Grabbing your neck, the poison dart frog forces his finger into your mouth, coating your tongue in something strange and slimy. Before you can spit it out, your vision swims, covered in psychedelic colors, and you feel your body begin to go limp, falling backward against cardboard boxes and causing a rain of basketballs to thud around you. The frog standing over you wavers like a mirage, and your jaw goes limp, drool dripping down your chin. 'I'll ask you again. Where is my brother? Answer truthfully.' Grabbing your chin, the poison dart frog keeps your attention on him, snapping his fingers. 'Fucking answer me, bastard. Where the fuck did you take him?' Slurring your speech, you reiterate that you don't know what he's talking about, eyes following pretty glowing hallucinations and a soft giggle starting in your throat. You feel high as a kite, and your tongue tingles, along with the soft buzz going through your entire body, so you don't find the situation you're in all that dangerous. You feel cozy, as though you want a nap. Maybe you should close your eyes.";
		WaitLinebreak;
		follow the turnpass rule;
		say "     You awaken a few hours later, blinking away a hangover and looking around for the poison dart frog. It appears Ignacio left during your little nap. In his haste, it seems he left the door open, so you grab your pack from nearby and prepare to escape, wondering what obstacles you'll encounter on the way out.";
		follow the turnpass rule;
		TraitLoss "Hostile" for Ignacio;
		move Ignacio to Nowhere;
		TraitGain "Matteo Quest" for Ignacio;
	else if "Trusted" is listed in Traits of Ignacio:
		say "     Finally spotting Ignacio, you attempt to ask him what's going on. Where's the lizard prisoner they took? There's no sign of him anywhere, and you expressly came here to pick him up. Ignacio shakes his head. 'He's here, but uh... he's occupied. The girls have taken a liking to him, so they're passing him around like candy.' Coughing uncomfortably, he continues. 'Not against his will or anything! We tried to send him home, and he asked to stay!' You swear there's a blush on his brightly colored swirls, and he seems out of his element. 'Anyway, there's something else I want to ask you.' Shuffling his feet, Ignacio looks down at the floor. 'My brother's gone missing. Until recently, I thought it was your scaly-' Shaking his head, Ignacio attempts to curb his sharp tongue. 'I thought it was those guys on the water, but something else took him.[bold type]Will you help me find him?'[roman type][line break]";
		say "     [link](Y)[as]y[end link] - Offer to help.";
		say "     [link](N)[as]n[end link] - Let him deal with it himself.";
		if Player consents:
			say "     Nodding, you tell Ignacio that you'd love to help him find his brother. After all, you're here to search for who's kidnapped the lizards. Maybe you'll get lucky, and it'll be the same person. If nothing else, you'll be helping a person in need. 'Really? You mean it?' Grabbing your shoulders, Ignacio looks desperately overjoyed. He stops himself after a moment, curbing his enthusiasm, and steps back. 'I've been canvassing the area where Matty went missing, and I think I might have found the right place. It's [bold type]west of that floating village.[roman type]' Too excited to contain himself, Ignacio runs past you, heading toward the mall's exit. 'I'll meet you there!'";
			TraitGain "Matteo Quest" for Ignacio;
			move Ignacio to Creepy Swamp Cabin;
		else:
			say "     Shaking your head, you decline Ignacio's question. In truth, you don't see it as your problem. You're not willing to put yourself in danger for a stranger, let alone one that made such a terrible first impression. You're just here to bring back the errant lizard. 'Don't you want to know who's been taking people?!' Slamming his fist on the table in front of you, Ignacio seems desperate as he nearly yells, looking from you to the crested newt sitting at the desk. 'Tsk. Fuck this. I'm going back out to search. Thanks for nothing.' Shoulder checking you on the way past, Ignacio storms out, heading toward the mall's exit. The crested newt behind the desk sighs. 'Sorry about Iggy. He's protective of his little brother. It's just been the two of them for so many years...' Rubbing the space between his eyes, the newt leans back. 'I've had my hands full just keeping everyone fed, so I haven't been able to look into anything. I didn't mean to drag you into things. You can come and go as you please, but don't do anything I wouldn't do. We're trying to stay civilized...' Shooing you away, Keiran shuffles through what looks like a map of the area, taking out a marker.";
			move Ignacio to Nowhere;
			TraitGain "Lost Forever" for Ignacio;
		TraitLoss "Trusted" for Ignacio;
	[else if Ignacio is in Ignacio's Place: [Menu needed here. Placeholder for now.]
		say "     ";]

instead of fucking Ignacio:
	if "Hostile" is listed in Traits of Ignacio:
		say "     You attempt to flirt with the poison dart frog, running your hand over your hip and asking whether there's something you can do to get him to let you out of this place. Unfortunately it appears to backfire, resulting in a cold glare, and the frog answering with. 'Trying to distract me while your buddies come to rescue you? I'm not falling for it!'";
	else if "Trusted" is listed in Traits of Ignacio:
		say "     You attempt to flirt with the poison dart frog, offering to take him elsewhere and continue things where they left off. Clearing his throat and shuffling from side to side, he bashfully shakes his head. 'It's tempting but... I don't really have time. Why don't you ask me when there's less on my mind?'";
	else if "Matteo Quest" is listed in Traits of Ignacio: [post-capture/coming to mall]
		say "     You attempt to flirt with the poison dart frog, but then remember that he's still looking for his brother. You'd have to be one heartless person to distract him from that! Clearing your throat awkwardly, you stop yourself mid sentence and apologize, noting his grateful expression. It seems he didn't want to reject you, but you would have given him no choice!";
	[else if Ignacio is in Ignacio's Place: [After Quest. Placeholder.]
		say "     ";]

Ignacio ends here.