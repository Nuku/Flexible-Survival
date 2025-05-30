Keiran by Voidsnaps begins here.

Section 1 - Character Declaration

Table of GameCharacterIDs (continued)
object	name
Keiran	"Keiran"

Keiran is a man.
ScaleValue of Keiran is 3. [human sized]
Body Weight of Keiran is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Keiran is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Keiran is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Keiran is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Keiran is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Keiran is 6. [length in inches]
Breast Size of Keiran is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Keiran is 2. [count of nipples]
Asshole Depth of Keiran is 8. [inches deep for anal fucking]
Asshole Tightness of Keiran is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Keiran is 1. [number of cocks]
Cock Girth of Keiran is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Keiran is 7. [Length in Inches]
Ball Count of Keiran is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Keiran is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Keiran is 0. [number of cunts]
Cunt Depth of Keiran is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Keiran is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Keiran is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Keiran is false.
PlayerRomanced of Keiran is false.
PlayerFriended of Keiran is false.
PlayerControlled of Keiran is false.
PlayerFucked of Keiran is false.
OralVirgin of Keiran is false.
Virgin of Keiran is true.
AnalVirgin of Keiran is false.
PenileVirgin of Keiran is false.
SexuallyExperienced of Keiran is true.
TwistedCapacity of Keiran is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Keiran is true. [steriles can't knock people up]
MainInfection of Keiran is "".
Description of Keiran is "[Keirandesc]".
Conversation of Keiran is { "<This is nothing but a placeholder!>" }.
Scent of Keiran is "The crested newt smells like an old library, likely attributed to the pile of books next to his cot. It's a strangely soothing scent.".
Keiran is in Amphibian Chieftain's Room.

to say Keirandesc:
	say "     Sitting at a desk, a bare-chested newt with a striking red patch covering his front regards you over lensless glasses. A fleshy crest tilts to the side like a messy greased hairstyle, and he looks like he hasn't slept in weeks. You get the feeling that he used to be a businessman based on the way he holds himself, though his amphibious appearance takes away from that slightly.";

Instead of fucking Keiran:
	say "     You attempt to hit on the crested newt, but he simply sighs and shakes his head. 'Sorry, but I'm not really interested. I'm far too busy managing this place.' He laments as he rubs his neck, filling the small space with a loud crack as he tilts it to the side. 'Maybe ask around. I'm sure you'll find no shortage of takers.'";

instead of conversing Keiran:
	if "Trusted" is listed in Traits of Ignacio:
		say "     Clearing his throat as you attempt to speak, the crested newt tilts his head toward Ignacio as if asking you to talk to him first. It makes sense, since Ignacio was the one that sent you here in the first place...";
	else if "Matteo Quest" is listed in Traits of Ignacio:
		say "     'That [bold type]creepy cabin in the woods is a bit off. [roman type]I wonder if it's just a mirage.' Keiran wonders aloud before you can speak. 'Hmm?' He seems to notice your presence but he's absorbed with paperwork, scrawling on blueprints and using a small handheld calculator. You assume he's too busy for a chat.";
	else if "Lost Forever" is listed in Traits of Ignacio:
		say "     'If you're looking for Ignacio, I haven't seen him for a while now. I'm starting to think he's been taken by whoever took Matteo.' Sighing, Keiran shakes his head, interrupting your attempt at chatting. 'Maybe it's better that way. At least they're together.' You can't help but feel a bit guilty for declining Ignacio's plea for help.";
	else:
		say "     Beaming as you walk up to him, Keiran pats the space in front of him. 'To what do I owe this pleasure [if Player is not DefaultNamed], [Name of Player]? [else]? [end if]If you need anything, just let me know. You've more than proven yourself worthy of being this place's hero!'";

Keiran ends here.