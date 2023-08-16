Version 1 of Solariel by Prometheus begins here.

[Angel of Hope]


a postimport rule:
	if Angelic Visitor is resolved and (Resolution of Angelic Visitor is not 1 and Resolution of Angelic Visitor is not 2):
		now Angelic Visitor is not resolved;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Solariel	"Solariel"

Solariel is a woman.
ScaleValue of Solariel is 4. [7' 8"]
Body Weight of Solariel is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Solariel is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Solariel is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Solariel is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Solariel is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Solariel is 6. [length in inches]
Breast Size of Solariel is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Solariel is 2. [count of nipples]
Asshole Depth of Solariel is 24. [inches deep for anal fucking]
Asshole Tightness of Solariel is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Solariel is 0. [number of cocks]
Cock Girth of Solariel is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Solariel is 0. [In Inches]
Ball Count of Solariel is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Solariel is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Solariel is 1. [number of cunts]
Cunt Depth of Solariel is 24. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Solariel is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Solariel is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Solariel is false.
PlayerRomanced of Solariel is false.
PlayerFriended of Solariel is false.
PlayerControlled of Solariel is false.
PlayerFucked of Solariel is false.
OralVirgin of Solariel is false.
Virgin of Solariel is false.
AnalVirgin of Solariel is false.
PenileVirgin of Solariel is false.
SexuallyExperienced of Solariel is true.
TwistedCapacity of Solariel is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Solariel is false. [steriles can't knock people up]
MainInfection of Solariel is "".
Description of Solariel is "[SolarielDesc]".
Conversation of Solariel is { "Celestial Choir!" }.

the scent of the Solariel is "Solariel smells of some otherworldy perfume, a mix of floral bouquets and warmth, with a slight undertone of fresh sweat."

to say SolarielDesc:
	say "     Solariel has the bearing of a warrior princess, which isn't too far off the truth. Standing at a little under 8 feet tall, she towers over the majority of city's denizens, an advantage that she makes use of when intimidation can be used instead of violence. Armoured from neck to toe in white armor, though you do not know the material, with silver inlay, she is dressed for combat, though you do wonder why she doesn't have a helmet to match. Her honey-blonde hair reaches to her mid-chest, some manner of magic keeping it floating to the side and out of her soft gray eyes. Her fair skin is marked by several scars, some which look like they would have been from grievous wounds that have since healed to be little more than a ridge. Noticing your attention, she smirks and causes her [']wings['] to flare out of the back of her armor, vast feathery appendages that look to be made of light.";
	say "     For someone so tall and armored like a warrior, Solariel goes out of her way to be approachable, crouching down when necessary to diminish the height difference. This, in combination with her uplifting aura, seems to do the trick, allowing her to converse with mere mortals without too much difficulty. Mostly calm and elegant, when asked about her family she becomes much more animated, a fond smile curling at the corner of her mouth. Similarly, when witnessing cruelty, her brow furrows and she swoops in with grim wrath. Were it not for her promise of restraint, you are sure that she would try to fix the city even if she had to do it by herself. 'If you carry on staring at me, I'm going to have to assume that you're imagining me with fewer clothes,' she warns you good-naturedly, snapping you out of your reverie.";

Instead of conversing the Solariel:
	say "[SolarielTalkMenu]";


to say SolarielTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "About Her";
	now sortorder entry is 1;
	now description entry is "Ask Solariel to tell you a bit about herself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 2;
	now description entry is "Boop Solariel on the nose";
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
				if (nam is "About Her"):
					say "[SolarielTalk1]";
				else if (nam is "Boop"):
					say "[SolarielTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the angel, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SolarielTalk1:
	say "     'Trying to get knowledge of other planes, or are you genuinely interested in me? My name is Solariel, and my mother's name is Ishariel. In our culture, daughters follow their mother's lineage and sons follow their father's. This is extraordinarily fortunate for me as my father has so many different names depending on who you are talking to that introducing myself would have been a nightmare if I was male. My mother is a justiciar for our species, a position that she earned despite the claims that she used my father's reputation to boost her own prestige. I, on the other hand, am a soldier, the commander of the Wings of Hope. You'd probably consider us a mercenary company, but it's a little more complicated than that as we don't fight for fortune.' Solariel pauses to take a breath and you ask whether she could tell you more about her father. 'Technically progenitor may be more accurate as they have borne children themself, but to me he is father. He embodies hope, to a much greater extent than me by far, but beyond that, it is not for me to tell you. Perhaps you'll learn more someday.'";
	say "     You next ask about her siblings, she mentioned some of them when you first met. 'I don't know of anyone with more children than my father, most of them twins, and we all seem to be rather adventurous and travel a lot. I know of five others that came here. Let me think, who have a mentioned so far... Cadmea and Blackpaw are kitsune and oversee the Sanctuary Hotel, though Cadmea is much more dutiful. They're talented mages, but their desire to experience what life has to offer has meant that they aren't nearly as powerful as Illiana. She's queen of the grey demons and in some areas, a more powerful than our father. She may be the eldest of us, but the cats and wolves dispute this. One of them, [']Sirius['], though that's not his real name, protects Cadmea at the hotel. Like me, he is a warrior, though far better than I. Finally, Belliandra. I've yet to find her, but she's likely running an arena somewhere. She's an unsurpassed duellist and likes to share her talent for this with others. Unlike me, she's yet to be wounded,' Solariel laughs, tracing a finger over a particularly long scar on her neck.";
	WaitLineBreak;
	say "     'I suppose [Hope-BornDragonName] counts too, but you know them more than I do. I've probably said more than I should have, but I'm sure that your curiosity remains unsated. I suppose that I can tell you a bit more about myself, considering that was the original question. I value mercy more than justice, which has caused some tensions with my mother a few times. That's not to say that I don't value it, just not as much as being kind. I suppose that I can be a bit of a show off, as I'm sure that you remember from when we rescued Hazel. Using my spear would have made the battle a lot faster, but I also didn't want to cause anyone's death without it being necessary... I really can't think of anything else. If I do, I'll be sure to tell you.'";

to say SolarielTalk2:
	say "     As you begin to bring your finger towards Solariel's nose, she stops you with a firm look. 'I know what you're doing, and no I don't want any bird seed thank you. It's kind of you to offer, but no,' she says. Confused, you tell her that you were going to boop her nose, nothing to do with birdseed. 'Mmm. So you say. Boop away, but if I see any grain without having asked for it, I will be displeased. Despite the wings, I'm not a pigeon.' You nervously tap her on the nose before backing away. Perhaps you shouldn't boop everyone that you meet.";

Section 2 - Sex

instead of fucking Solariel:
	say "     'Really eager to see me without my armor, aren't you? Well, sorry to disappoint you, but my lady parts must remain hidden from your eyes for a bit longer. There aren't any surprises, but I would prefer to settle in before I start becoming intimate with the locals. I'm not my father, after all,' Solariel replies with an apologetic smile. (WIP)";

Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
Angelic Visitor	"Angelic Visitor"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Angelic Visitor"	Angelic Visitor	"[EventConditions_Angelic_Visitor]"	Grey Abbey Library	2500	2	100

to say EventConditions_Angelic_Visitor:
	if HP of Hazel Summers > 0 and HP of Hope-Born Dragon is 6:
		now CurrentWalkinEvent_ConditionsMet is true;

Angelic Visitor is a situation.
ResolveFunction of Angelic Visitor is "[ResolveEvent Angelic Visitor]".
Sarea of Angelic Visitor is "Nowhere".

to say ResolveEvent Angelic Visitor:
	say "     Hearing a knock on the front door, you are walk over to find Solariel waiting outside, the female angel [if Fang is collected]kneeling down to pet Fang, who is surprisingly amenable, while she waits. 'You've got a good protector,' she comments as she straightens up again[else]Running a hand over the stonework while she waits. 'You've picked a defensible place to shelter. Good energy,' she comments as she allows her arm to fall to her side[end if]. 'May I enter?' You nod, allowing the celestial warrior to pass and asking whether there is a particular reason behind her visit. 'You might say that. I wondered if I might be permitted to live here. I promise I won't get in the way,' she replies, surveying the interior of your base of operations. Frowning, you point out that she isn't exactly on the small side and that this is coming out of nowhere.";
	say "     'My size has nothing to do with it. You could fit enough people to populate a village, and anyway, you let [Hope-BornDragonName] establish a lair here. Are you really going to play favorites?' the angel responds almost petulantly. 'Solariel!' a voice excitedly calls from behind you, and Hazel runs up to the warrior and hugs her side. 'Hazel. I'm glad to see that you are well. I assume that there have been no problems?' Solariel queries, patting her on the head. 'No. Everyone has been nice enough, though they mostly leave me alone. What were you two talking about?' the human woman asks. 'I was expressing an interest in living here for the duration of my visit to your plane, though the response so far has been tepid. It would seem that our friend here prefers dragons to angels, which is only marginally better than being one-upped by a demon,' the celestial replies surreptitiously giving you a wink to show that she is kidding.";
	WaitLineBreak;
	say "     'Well, dragons are pretty cool,' Hazel tactlessly blurts out, causing Solariel's jaw to drop. 'Oh, don't defend me or anything. All you humans are alike, no matter the world. Though I suppose being a nobleman's pet would be too demeaning for words... but that's not the point. I thought that you were a nice girl,' the angel mutters. 'I didn't mean it like that. It just sort of... slipped out,' the copper-haired woman apologizes. 'And anyway, you saved me, so it only seems fair that I repay you somehow.' With an audible sigh, Solariel gently grasps the human by her shoulders. 'You owe me nothing. I saved you because it was the right thing to do, because it's the sort of thing that anyone [italic type]should[roman type] do. We make our own choices; you, me, and [name of player]. If [SubjectPro of Player] doesn't want me here, I can go to the Sanctuary Hotel. The Den Mother is sort of my sister, after all.' 'I'll just pretend to understand,' Hazel sighs, directing a pleading look towards you.";
	say "     '[if HP of Cadmea > 0][name of player] could tell you about it[else]It's a hotel run by a kitsune[end if], but it is a truly safe place within the city. If [name of player] hadn't taken you in, I would have suggested that you go there. But that's not the point, you are safe here. I merely intended to relieve you of your misconception that you were somehow in my debt and that [name of player] was free to make their decision on whether I could stay,' Solariel explains, before turning to you.";
	say "     [bold type]'So... What's it going to be?'[roman type][line break]";
	let Solariel_Residence_Choices be a list of text;
	add "Let her stay. You've got enough room and Hazel seems to want this." to Solariel_Residence_Choices;
	add "Tell her no. You don't want to get involved with the angel's plans while she is in the city." to Solariel_Residence_Choices;
	let Solariel_Residence_Choice be what the player chooses from Solariel_Residence_Choices;
	if Solariel_Residence_Choice is:
		-- "Let her stay. You've got enough room and Hazel seems to want this.":
			LineBreak;
			say "     'Excellent. My gratitude to you. If you need me, I'll probably be outside, probably in the [bold type]courtyard[roman type] as I much prefer the open air when I have the option. But first Hazel and I have some catching up to do, and I suppose that I should meet the hatchling too,' Solariel says, bowing. You point out that the dragon is fully grown. 'Yes, but it's a lot younger than me, so... hatchling.' With a shrug, you signal your acceptance of her logic, before properly welcoming the angel and bidding her to make herself comfortable. 'Thank you, once again. I'll be sure to introduce myself to anyone else living here when I have the time. With that, Hazel pulls her away into the bunker, talking excitedly to her, the celestial warrior listening keenly.";
			now Resolution of Angelic Visitor is 1;
			move Solariel to Courtyard;
			now HP of Solariel is 1;
		-- "Tell her no. You don't want to get involved with the angel's plans while she is in the city.":
			LineBreak;
			say "     'As you wish. I had hoped that you might reply differently, but what will be, will be,' Solariel sighs. 'Don't worry, Hazel. I'll drop by from time to time to talk to you. I can see that this is something that you want, though perhaps you would prefer to talk to [Hope-BornDragonName],' she teases her. With a bow, Solariel turns and steps walks outside again. Launching herself into the air and out of sight. 'I hope she comes back soon,' Hazel mutters before trudging back down into the bunker without a second glance at you.";
			now Resolution of Angelic Visitor is 2;
	now Angelic Visitor is resolved;

Solariel ends here.
