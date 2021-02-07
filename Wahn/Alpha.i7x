Version 1 of Alpha by Wahn begins here.
[Version 1 - Put into its own file]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
AlphaOne	"AlphaOne"
AlphaOne	"Alpha"

AlphaOne is a man.
Printed Name of AlphaOne is "Alpha".
understand "Alpha" as AlphaOne.
ScaleValue of AlphaOne is 3. [human sized]
Body Weight of AlphaOne is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of AlphaOne is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of AlphaOne is 5. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of AlphaOne is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of AlphaOne is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of AlphaOne is 4. [length in inches]
Breast Size of AlphaOne is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of AlphaOne is 2. [count of nipples]
Asshole Depth of AlphaOne is 16. [inches deep for anal fucking]
Asshole Tightness of AlphaOne is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of AlphaOne is 1. [number of cocks]
Cock Girth of AlphaOne is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of AlphaOne is 12. [length in inches]
Ball Count of AlphaOne is 4. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of AlphaOne is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of AlphaOne is 0. [number of cunts]
Cunt Depth of AlphaOne is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of AlphaOne is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of AlphaOne is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of AlphaOne is false.
PlayerRomanced of AlphaOne is false.
PlayerFriended of AlphaOne is false.
PlayerControlled of AlphaOne is false.
PlayerFucked of AlphaOne is false.
OralVirgin of AlphaOne is true.
Virgin of AlphaOne is true.
AnalVirgin of AlphaOne is true.
PenileVirgin of AlphaOne is true.
SexuallyExperienced of AlphaOne is false.
TwistedCapacity of AlphaOne is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of AlphaOne is false. [steriles can't knock people up]
MainInfection of AlphaOne is "Herm Human". [TODO: make standin infection for proper impregnation]
Description of AlphaOne is "[AlphaOnedesc]".
Conversation of AlphaOne is { "Meep!" }.

to say AlphaOnedesc:
	say "     Alpha has a fairly unique body plan, consisting of a slender, humanoid upper body and starting at the hips beneath that eight long tentacles, lined with a double row of suckers all along their undersides. He doesn't seem to have any issue using them as legs, as the muscular appendages brace against the floor easily and keep his upper body straight. The human-octopus hybrid's skin is smooth and patterned in shades of orange and red, but appears able to shift to other shades too, as you can see traces of blue ripple over it here and there. Alpha doesn't seem to need moisture to sustain him, making a land-walking lifestyle possible without trapping himself due to dependence on bodies of water anywhere nearby.";
	say "     Noticing your attention, the being turns his androgynously-featured head to look at you, his solidly green eyes with cross-shaped irises meeting your gaze. The throng of countless smaller tentacles that form his 'hair' twitch and move a little as [if mindshield helmet is not equipped]you feel him reaching out for your mind, reading through your surface thoughts as if they were an open book[else]he reflexively seems to want to read your mind, with the helmet on your head giving a little hum as it protects you from that mental invasion[end if]. After a moment or two, he shrugs and turns his attention elsewhere.";
	if "Herm_Rescued" is listed in Traits of AlphaOne:
		say "     Not too far off from where Alpha usually resides, his herm parent is stretched out on one of the sofas in here. The man has been dressed in fairly normal clothes and a blanked covers his sleeping form. From what Alpha said before, he'll keep the former researcher unconscious until he has had the time to remove the influence of the thought eater from him completely. The hybrid can often be seen taking care of him, a comfortingly 'normal' and human activity for such a strange being.";

instead of sniffing AlphaOne:
	say "     The human-octopus hybrid an odd, but pleasant, spicy scent.";

instead of conversing AlphaOne:
	say "[AlphaOneTalkMenu]";

[
an everyturn rule:
	if AlphaOneRelationship > 10 and AlphaOneRelationship < 90:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			say "...";
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			say "...";
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			say "...";
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			say "...";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			say "...";
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			say "...";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			say "...";
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

[
instead of conversing the AlphaOne:
	say "[AlphaOneTalkMenu]";
]

to say AlphaOneTalkMenu:
	say "     [bold type]What do you want to talk to Alpha about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "His mental powers";
	now sortorder entry is 1;
	now description entry is "Discuss his dominating mind";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His plans";
	now sortorder entry is 2;
	now description entry is "Ask Alpha what he's got in mind for the future";
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
				if (nam is "His mental powers"):
					say "[AlphaOneTalk1]";
				else if (nam is "His plans"):
					say "[AlphaOneTalk2]";
				wait for any key;
				say "[AlphaOneTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the human-octopus hybrid, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AlphaOneTalk1: [talk about his powers]
	say "     As you bring up his mental powers, Alpha smiles and strokes a hand over his tentacle 'hair'. 'Why, are you worried? Second thoughts about the tentacle monster you invited into your home?' ";
	if "Mindshield Protected Invite" is listed in Traits of AlphaOne:
		say "He pushes himself up on the tentacles forming his lower half and glances down at you. 'I didn't make you invite me, remember? That little helmet you had on made sure of that,' the hybrid then adds, sounding more amused than offended. ";
	else:
		say "He moves forward on the tentacles forming his lower half and reaches out, putting a slender hand on your shoulder. 'That decision, you came to all on your own. I told you I want to try out whether cooperation is a possibility,' the hybrid then adds, and you can't help but feel that he says the truth. ";
	say "'As for how it feels to have these powers... hmm, it might be difficult for other beings to grasp, but being able to reach out and touch other minds isn't some special ability that you only turn on when you need it. It is who I am, what I am, and most of the time, so very easy. For example, I feel a mind-glow walking along the sidewalk outside. It... no, she, is hungry and in a hurry. She knows this building is occupied, so is worried about being so close and wants to get past quickly. That much I can just sense without even putting any effort into it.' Wiggling his eyebrow-ridges, Alpha adds, 'It's automatic, kinda like seeing in color, or reacting to sound. Going further, that's what will take some concentration, and training.' He closes his eyes at that point, and you see a green-blue glow flicker along his head tentacles, just as you hear the bark of a dog from outside. In reaction to you raising your eyebrows, he nods. 'Yeah, made her bark to demonstrate. Didn't make any changes otherwise, so now she's running off.'";
	if "Mental Powers Intro Talk" is not listed in Traits of AlphaOne:
		add "Mental Powers Intro Talk" to Traits of AlphaOne;

to say AlphaOneTalk2: [talk about his plans]
	say "     Glancing your way, the hybrid raises one tentacle and waves its tip around a little, indicating the building around you. Then a band of shifting colors ripples over his skin, making it appear that he's transparent as he matches the background almost perfectly for a second before reverting to his normal patterning. 'For now, staying hidden is the most important first step. I will need time to gather my strength, training mental disciplines to master them. There is little doubt that a confrontation with my progenitor lies in the future, and I must be ready for when that occurs. You have seen his influence, and know that he is relentless.' Alpha's cross-shaped irises focus on you and he waits for a few seconds to allow the memory of a slavishly obedient researcher in the Trevor Labs underground rise in your mind.";
	if "Herm_Rescued" is listed in Traits of AlphaOne:
		say "     'So, survival first. As for other plans beyond that...' he shrugs his shoulders. 'The world is in flux, and I'm still deciding what to make of it. The fact that you've invited me here of your own free will shows that total domination as my progenitor desires isn't the only option. To him, there is but one goal - a world that is one mind and endless host bodies. He will be alone there, having consumed all. While that plan has absolute security and almost godlike power on the plus side, it is the most extreme and born from his fundamental dislike of humanity and all its newly created offshoots.' That said, Alpha pauses for a moment, his eyes wandering up and down over your form, lingering here and there. 'I'm less set in my way. There might be... alternatives. We'll see.' A slight movement plays over his lips as he says this, with the hint of a smile. Then he waves you off, with the topic clearly over, for now.";
	else:
		say "     'So, survival first. And freeing my parent from being an unwilling puppet to the progenitor. As for other plans beyond that...' he shrugs his shoulders. 'The world is in flux, and I'm still deciding what to make of it. The fact that you've invited me here of your own free will shows that total domination as my progenitor desires isn't the only option. To him, there is but one goal - a world that is one mind and endless host bodies. He will be alone there, having consumed all. While that plan has absolute security and almost godlike power on the plus side, it is the most extreme and born from his fundamental dislike of humanity and all its newly created offshoots.' That said, Alpha pauses for a moment, his eyes wandering up and down over your form, lingering here and there. 'I'm less set in my way. There might be... alternatives. We'll see.' A slight movement plays over his lips as he says this, with the hint of a smile. Then he waves you off, with the topic clearly over, for now.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the AlphaOne:
	say "     <NOTE: This part of the character is a work in progress. Please have patience for future expansions. If you want to see him >";
[
	if (lastfuck of AlphaOne - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[AlphaOneSexMenu]";
]

to say AlphaOneSexMenu:
	say "     [bold type]What exactly do you plan on doing with AlphaOne?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get on your knees and give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Service the wyvern hybrid orally";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take AlphaOne's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the wyvern hybrid";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take AlphaOne's cock in your ass";
	now sortorder entry is 3;
	now description entry is "Get fucked in the ass by the wyvern hybrid";
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
				if (nam is "Get on your knees and give him a blowjob"):
					say "[AlphaOneSex1]";
				else if (nam is "Take AlphaOne's cock in your pussy"):
					say "[AlphaOneSex2]";
				else if (nam is "Take AlphaOne's cock in your ass"):
					say "[AlphaOneSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the wyvern hybrid, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

[TODO: letting him explore you + virgin scenes]

to say AlphaOneSex1: [BJ on AlphaOne]
	say "     ..."; [TODO: choice point for deep throat - leads to some issues with the suckers]
	NPCSexAftermath Player receives "OralCock" from AlphaOne;

to say AlphaOneSex2: [pussy fuck by AlphaOne]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from AlphaOne;

to say AlphaOneSex3: [ass-fucking by AlphaOne]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from AlphaOne;

Alpha ends here.
