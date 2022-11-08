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
	project Figure of Alpha_soft_icon;
	say "     Alpha has a fairly unique body plan, consisting of a slender, humanoid upper body and starting at the hips beneath that eight long tentacles, lined with a double row of suckers all along their undersides. He doesn't seem to have any issue using them as legs, as the muscular appendages brace against the floor easily and keep his upper body straight. The human-octopus hybrid's skin is smooth and patterned in shades of orange and red, but appears able to shift to other shades too, as you can see traces of blue ripple over it here and there. Alpha doesn't seem to need moisture to sustain him, making a land-walking lifestyle possible without trapping himself due to dependence on bodies of water anywhere nearby.";
	say "     Noticing your attention, the being turns his androgynously-featured head to look at you, his solidly green eyes with cross-shaped irises meeting your gaze. The throng of countless smaller tentacles that form his 'hair' twitch and move a little as [if mindshield helmet is not equipped]you feel him reaching out for your mind, reading through your surface thoughts as if they were an open book[else]he reflexively seems to want to read your mind, with the helmet on your head giving a little hum as it protects you from that mental invasion[end if]. After a moment or two, he shrugs and turns his attention elsewhere.";
	if "Herm_Rescued" is listed in Traits of AlphaOne:
		say "     Not too far off from where Alpha usually resides, his herm parent is stretched out on one of the sofas in here. The man has been dressed in fairly normal clothes and a blanked covers his sleeping form. From what Alpha said before, he'll keep the former researcher unconscious until he has had the time to remove the influence of the thought eater from him completely. The hybrid can often be seen taking care of him, a comfortingly 'normal' and human activity for such a strange being.";

instead of sniffing AlphaOne:
	say "     The human-octopus hybrid an odd, but pleasant, spicy scent.";

instead of conversing AlphaOne:
	project Figure of Alpha_soft_icon;
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
	say "'As for how it feels to have these powers... hmm, it might be difficult for other beings to grasp, but being able to reach out and touch other minds isn't some special ability that you only turn on when you need it. It is who I am, what I am, and most of the time, so very easy. For example, I feel a mind-glow walking along the sidewalk outside. It... no, she, is hungry and in a hurry. She knows this building is occupied, so is worried about being so close and wants to get past quickly. That much I can just sense without even putting any effort into it.' Wiggling his eyebrow-ridges, Alpha adds, 'It's automatic, kind of like seeing in color, or reacting to sound. Going further, that's what will take some concentration, and training.' He closes his eyes at that point, and you see a green-blue glow flicker along his head tentacles, just as you hear the bark of a dog from outside. In reaction to you raising your eyebrows, he nods. 'Yeah, made her bark to demonstrate. Didn't make any changes otherwise, so now she's running off.'";
	TraitGain "Mental Powers Intro Talk" for AlphaOne;

to say AlphaOneTalk2: [talk about his plans]
	say "     Glancing your way, the hybrid raises one tentacle and waves its tip around a little, indicating the building around you. Then a band of shifting colors ripples over his skin, making it appear that he's transparent as he matches the background almost perfectly for a second before reverting to his normal patterning. 'For now, staying hidden is the most important first step. I will need time to gather my strength, training mental disciplines to master them. There is little doubt that a confrontation with my progenitor lies in the future, and I must be ready for when that occurs. You have seen his influence, and know that he is relentless.' Alpha's cross-shaped irises focus on you and he waits for a few seconds to allow the memory of a slavishly obedient researcher in the Trevor Labs underground rise in your mind.";
	if "Herm_Rescued" is listed in Traits of AlphaOne:
		say "     'So, survival first. And freeing my parent from being an unwilling puppet to the progenitor. As for other plans beyond that...' he shrugs his shoulders. 'The world is in flux, and I'm still deciding what to make of it. The fact that you've invited me here of your own free will shows that total domination as my progenitor desires isn't the only option. To him, there is but one goal - a world that is one mind and endless host bodies. He will be alone there, having consumed all. While that plan has absolute security and almost godlike power on the plus side, it is the most extreme and born from his fundamental dislike of humanity and all its newly created offshoots.' That said, Alpha pauses for a moment, his eyes wandering up and down over your form, lingering here and there. 'I'm less set in my way. There might be... alternatives. We'll see.' A slight movement plays over his lips as he says this, with the hint of a smile. Then he waves you off, with the topic clearly over, for now.";
	else:
		say "     'So, survival first. As for other plans beyond that...' he shrugs his shoulders. 'The world is in flux, and I'm still deciding what to make of it. The fact that you've invited me here of your own free will shows that total domination as my progenitor desires isn't the only option. To him, there is but one goal - a world that is one mind and endless host bodies. He will be alone there, having consumed all. While that plan has absolute security and almost godlike power on the plus side, it is the most extreme and born from his fundamental dislike of humanity and all its newly created offshoots.' That said, Alpha pauses for a moment, his eyes wandering up and down over your form, lingering here and there. 'I'm less set in my way. There might be... alternatives. We'll see.' A slight movement plays over his lips as he says this, with the hint of a smile. Then he waves you off, with the topic clearly over, for now.";
	TraitGain "Plans Intro Talk" for AlphaOne;

after going to Darkened Alcove while (AlphaOne is in Darkened Alcove and "Hiding on the ceiling" is not listed in Traits of AlphaOne):
	if debugactive is 1:
		say "     DEBUG: Alpha is playful and hides[line break]";
	try looking;
	say "     As you walk into the Darkened Alcove, you [if mindshield helmet is not equipped]feel a somewhat odd sensation in your head, kinda as if someone was snapping their fingers next to your train of thought to gain your attention. [else]hear the helmet on your head giving a little hum as it detects something reaching out to your mind. [end if]In response, you look around for the likely candidate for causing it, but you don't immediately spot Alpha. Then something taps your shoulder and you glance behind yourself, still seeing no one - until a yellow-red tentacle tip dips into view again, waving playfully before your eyes and pointing upwards. Raising your head, you see a patch of the ceiling start to change, with warm tones of orange and red rippling over it, revealing the shape of the octopus-hybrid.";
	say "     With a grin on his face, Alpha detaches most of himself from the ceiling, dangling for a second from just two tentacles before making a cat-like landing on the other six and finally coming to stand before you. The dreadlock-like tentacles framing his face wave and twitch as Alpha focuses on yourself, with him saying, 'Hello again! I just was training my physical abilities a little. Seems like the test was a success!' The sheer happiness and glee you can hear in his voice does remind you that for all of the hybrid's mental prowess and intelligence, he's quite new to the world, which includes his own body. There is something charmingly innocent about his reactions, despite the fact that he had to plan and execute his escape even before he was birthed.";
	LineBreak;
	say "     [bold type]How do you react to what he just did?[roman type][line break]";
	say "     [link](1)[as]1[end link] - That was cool! Hang out with Alpha and see what else he can do!";
	say "     [link](2)[as]2[end link] - Acknowledge that it's a useful skill to have, but don't encourage him.";
	say "     [link](3)[as]3[end link] - Grumble that he shouldn't sneak up on you like that! This is your place after all, and he's a guest.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to react eagerly, [link]2[end link] to react calmly or [link]3[end link] to be a bit of a buzzkill.";
	if calcnumber is 1:
		say "     Allowing yourself to be caught up in the enthusiasm Alpha is showing, you give him a high five and tell him you're really impressed by this skill of his. He's happy to hold your interest and decides to show off a little, with you joining right in and making suggestions. Over the next thirty minutes or so, you get to see quite a few amazing feats, executed with suckers and chromatophores. Turns out he actually has enough fine control to make temporary 'tattoos' as well as legible writing appear on his skin. Both of you enjoy the time spent just playing around a little, forgetting other worries for a little while.";
		SanBoost 10;
		AffectionGain 1 for AlphaOne;
	else if calcnumber is 2:
		say "     You give Alpha a suitably impressed nod and tell him that it's certainly a useful skill to have and develop. It could save him in a sticky situation some day. 'That's just what I thought,' he says with a nod, curbing his earlier overflowing enthusiasm to more normal levels. 'I'll do my best to master this skill for future use.'";
	else if calcnumber is 3:
		say "     Grumbling under your breath, you complain that he shouldn't spring surprises like this on you. He's a guest in your place after all. Alpha looks a little put down as you rain on his parade, but he composes himself quickly enough quickly enough, raising both hands consolingly. 'Of course. My apologies,' he tells you, then moves a little bit away from you, the discussion clearly being over.";
	TraitGain "Hiding on the ceiling" for AlphaOne;

after going to Darkened Alcove while (AlphaOne is in Darkened Alcove and "Plans Intro Talk" is listed in Traits of AlphaOne and "Mental Powers Intro Talk" is listed in Traits of AlphaOne and ("PlayerView_TotalDomination" is not listed in Traits of AlphaOne and "PlayerView_LimitedDomination" is not listed in Traits of AlphaOne and "PlayerView_NoDomination" is not listed in Traits of AlphaOne) ):
	if debugactive is 1:
		say "     DEBUG: Alpha wonders about the player's perspective on domination[line break]";
	try looking;
	say "     As you walk into the Darkened Alcove, Alpha is standing ready and waiting, as if he was expecting you. [if mindshield helmet is not equipped]This isn't too surprising, as he must have felt your mind's approach. [else]To yourself, you wonder how he managed that, with you being protected from casual mental contact. Maybe a bird saw you walk past the windows, or he was just watching while camouflaged? [end if]'Ah, hello[if Player is not defaultnamed]  [name of Player][end if]. I wanted to talk to you about something. We've talked about my powers and plans for the future before, which made me a bit curious about your view on things.' He waves to the side, where a chair is standing ready for you. He himself moves over too, taking an interesting pose with two tentacles hooked on the boards of a shelf behind him and the rest forming something of a cradle for him to 'sit' in. After waiting for you to join him, Alpha goes on to ask, 'Care to tell me what [bold type]you[roman type] would do if you had my abilities of [bold type]mental domination[roman type]? You know what my progenitor has planned, but I'm interested in other viewpoints.'";
	say "     [bold type]Feeling the intensity in Alpha's gaze as it rests upon you, something tells you that he'll take note of what you say and could possibly decide to follow it as an example for how he approaches interactions with those around him. You should choose wisely.[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Resist the temptation to dominate anyone, except in dire situations. It's a very slippery slope to use others as puppets to play with...";
	say "     [link](2)[as]2[end link] - You'd maybe dominate some people. Only those who deserve it, no one you know. And not messing too much with them, maybe making them 'better'.";
	say "     [link](3)[as]3[end link] - The world would be your oyster. You'd do anything you wanted, to everyone! Play with them, use them, fuck them, no limits!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to speak against casual domination, [link]2[end link] to recommend moderate domination or [link]3[end link] to suggest total domination.";
	if calcnumber is 1:
		say "     Taking a deep breath, you tell Alpha that he hasn't given you an easy task, and actually take a few minutes to imagine what might happen if you had such powers. Then finally, you meet his gaze again and tell him that you'd do your very best [italic type]not[roman type] to use domination, except in dire situations. As he raises an eyebrow in curiosity, clearly wanting you to explain further, you lay out your reasoning. For a start, two famous quotes are brought up that apply to the situation: 'With great power comes great responsibility', as well as 'Absolute power corrupts absolutely'. Trying your best to lay out a convincing argument, you explain that such abilities present a very, very slippery slope that you doubt that people, including yourself, are built to avoid falling down.";
		say "     It'd be easy to start out with just doing some little mental nudges, and then progress over time to use it more and more, going ever further. It'd be a creeping escalation most likely - in your weak moments, for convenience or out of complacency. Before you might realize, it'd be too late to stop or do anything about the habits you fell into. That may lead to a future of suddenly realizing you're all alone, surrounded by nothing more than the empty shells of people that became your puppets - a vision of horror and isolation. As you finish laying out your dark image of a possible end for overuse of domination, Alpha stares at you with wide-open eyes. He followed your words attentively and really seems to think about your viewpoint on the topic. He even asks you follow-up questions, laying out a number of scenarios to see how you'd react.";
		WaitLineBreak;
		say "     Some time later, he eventually runs out of questions and is apparently satisfied with what information he did get from you. 'Thank you for your openness and for indulging my curiosity. You've given me quite a bit to think about.' With a friendly nod, he then gets up to walk around a little, pondering your answers.";
		TraitGain "PlayerView_NoDomination" for AlphaOne;
	else if calcnumber is 2:
		say "     Taking a deep breath, you admit that you'd be tempted by the possibilities of dominating others. Though even so, you'd never use it on anyone you know. Forcing someone to play as your puppet isn't something you do to friends. As for others... well, maybe just those who'd deserve it. Bad guys, creatures trying to jump you on the streets, and... okay, just maybe someone who's really really hot, but you'd never see them again afterwards. And you'd take care not to mess with them too much. Just 'improve' the outlook of a thug or creature, and wiping your encounter from the mind of others, leaving them none the wiser about what happened. So, overall you say that you'd likely be... not innocent, but far from a monster in how you'd use the powers.";
		say "     Alpha listens to your reasoning attentively and really seems to think about your viewpoint on the topic. He even asks you follow-up questions, laying out a number of scenarios to see how you'd react. Some time later, he eventually runs out of questions and is apparently satisfied with what information he did get from you. 'Thank you for your openness and for indulging my curiosity. You've given me quite a bit to think about.' With a friendly nod, he then gets up to walk around a little, pondering your answers.";
		TraitGain "PlayerView_LimitedDomination" for AlphaOne;
	else if calcnumber is 3:
		say "     A grin spreads over your face as you imagine the sheer power mental domination would give you. Gleefully, you go into details about everything you could do, would do, with no one able to resist your powers. They'd be your fucktoys, your fighters, your devoted slaves - acting on your smallest whim and phantasy while not even knowing it wasn't their own idea. Or if it was someone who crossed you, maybe they actually [italic type]would[roman type] know, would remember the time they were free and belonged to themselves, and act on your orders anyways, despairing in their inability to resist. As you chuckle darkly, with the image of someone from your past in such a position, Alpha observes you closely and really seems to think about your viewpoint on the topic. He even asks you follow-up questions, laying out a number of scenarios to see how you'd react.";
		say "     Some time later, he eventually runs out of questions and is apparently satisfied with what information he did get from you. 'Thank you for your openness and for indulging my curiosity. You've given me quite a bit to think about.' With a friendly nod, he then gets up to walk around a little, pondering your answers.";
		TraitGain "PlayerView_TotalDomination" for AlphaOne;

after going to Darkened Alcove while (AlphaOne is in Darkened Alcove and Mathias is in Darkened Alcove and "Plans Intro Talk" is listed in Traits of AlphaOne and "Mental Powers Intro Talk" is listed in Traits of AlphaOne and ("PlayerView_TotalDomination" is listed in Traits of AlphaOne or "PlayerView_LimitedDomination" is listed in Traits of AlphaOne or "PlayerView_NoDomination" is listed in Traits of AlphaOne) and ("Tabula Rasa" is not listed in Traits of Mathias and "Sleeper Agent" is not listed in Traits of Mathias and "Sleeping Beauty" is not listed in Traits of Mathias) ):
	if debugactive is 1:
		say "     DEBUG: Alpha ponders what to do about Mathias[line break]";
	try looking;
	say "     As you walk into the Darkened Alcove, you see Alpha over at the sofa where Mathias is laid out, sitting with the unconscious researcher. Flickers of blue color dance up and down the hair-like tentacles on the hybrid's head, indicating that he's using his powers to do... something. Curiosity drives you to approach, drawing Alpha's attention as you enter is peripheral vision. 'Ah, welcome[if Player is not defaultnamed]  [name of Player][end if]. I wonder if you could help me with something for a moment.' As he says this, Alpha waves you closer with two tentacles, while pointing at his parent with another. 'You see, I've been working on Mathias's mind since bringing him here, seeking to remove the ties to my progenitor. This has been... difficult. 'When the current developments in the city derailed the research project in the hidden labs, Mathias was dominated and used as an incubator, eventually birthing myself. It was clear those memories had to be removed, but I'm at an impassee what more to do.'";
	say "     Alpha takes a breath and explains, 'You see, Mathias was involved with the project to create my progenitor, so there are many images and thoughts that feature him. Any of those might have been used to anchor more chains of mental binding in Mathias, as it is hard to tell of my progenitor's mental signature is attached to those memories because he is featured in them, or because he touched them.' Drawing a grimace, the octopus hybrid adds, 'I am sure that anything before 2004 is untouched, when Mathias was 22 and graduated with a doctorate in Biogenetics from a university in Denmark. He was recruited by Trevor Labs that same year, as they were quite impressed by his intellect and youth for having reached such an archievement. After that, things become hard to trace down. I fear that I might not yet have the skill to purge all of my progenitor's domination hooks if I try to keep the rest of those 4 years of memories intact.'";
	LineBreak;
	say "     [link](1)[as]1[end link] - Suggest that he should make a cut after Mathias's graduation. You must be sure that he won't instantly become a puppet of the Thought Eater when he is awakened.";
	say "     [link](2)[as]2[end link] - Tell him you believe he can do it and suggest that Alpha keep as many memories intact as possible. Can't just cut years out of Mathias's life!";
	say "     [link](3)[as]3[end link] - Maybe he should keep Mathias in his current state, sleeping and safe, until he is sure of his ability to remove all ties to the Thought Eater selectively.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to suggest a sharp cut of Mathias's memories, puring those who might be compromised, [link]2[end link] to recommend selective memory purging, hupefully getting all of the Thought Eater's hidden influence or [link]3[end link] to suggest keeping Mathias asleep for the forseeable future.";
	if calcnumber is 1:
		say "     Thinking about it for a little while, you finally counsel Alpha to purge Mathias's memory back to before he started working on the secret project. It is the only way to be sure that the Thought Eater isn't controlling him anymore. On top of that, maybe the resulting personality of the young man will be a tad more 'innocent' too, as you can't imagine one can work on a black project in a secret labs for years without making some seriously questionable moral choices. Who knows, maybe Mathias will be thankful that he won't be burdened by remembering all of what happened there. Alpha listens to your arguments and then slowly nods. 'I see your point, and agree. Thank you for your help. It'll be some more time before I can wake him, but at least now I know what I want to do.";
		TraitGain "Tabula Rasa" for Mathias;
	else if calcnumber is 2:
		say "     Thinking about it for a little while, you finally counsel Alpha to keep as much of Mathias's memory intact as he can. Who a person is stems from what they remember, and he'd basically be murdering his parent if he simply purged years of his life. Also, there might be knowledge that he needs to eventually defeat the Thought Eater somewhere in there. Things that could give him a critical edge in the conflict to come when they meet again. Alpha listens to your arguments and then slowly nods. 'I see your point, and agree. Thank you for your help. It'll be some more time before I can wake him, but at least now I know what I want to do.";
		TraitGain "Sleeper Agent" for Mathias;
	else if calcnumber is 3:
		say "     Thinking about it for a little while, you finally counsel Alpha that it'd be best to keep Mathias in his current state of dreamless sleep until he can wake him up safely, with no chance of hidden domination remaining. Who a person is stems from what they remember, and he should strive to keep every memory he can intact, even if it takes some while longer. Also, there might be knowledge that he needs to eventually defeat the Thought Eater somewhere in there. Things that could give him a critical edge in the conflict to come when they meet again. Alpha listens to your arguments and then slowly nods. 'I see your point, and agree. Thank you for your help. I'll focus on training my skills and hopefully be ready to wake him at some point.";
		TraitGain "Sleeping Beauty" for Mathias;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the AlphaOne:
	if PlayerFucked of AlphaOne is false: [virgin]
		say "     As you approach Alpha, the octopus hybrid [if mindshield helmet is not equipped]immediately picks up on the lustful intent you carry with you. [else]seems to pick up on the lusty gleam in your eyes. [end if]When bringing up that you'd like to have some fun, he seems to be intrigued by the idea of having sex, with rhythmic patterns of yellows and reds rippling over his body as he meets your eyes. 'I was hoping you'd show an interest in expanding our interactions to a sexual level,' Alpha says with a smile spreading over his lips. 'Having read my parent Mathias's memories of past encounters, and been present in his mind as the progenitor kept inseminating him over and over, I am well acquainted with the general mechanics, and his sensations at the time[if PlayerFucked of Mathias is true]. Your own mating with him is something I fondly remember.' [else]' [end if][line break]";
		say "     'Given all of this, I find myself having the desire to try sex with my own body and see how that will feel, with more limbs and feeling it myself. To play the active role in such a pairing, the one giving pleasure, and fill my partner with my seed.' Sounds like he's got some fairly well-developed ideas of what he wants to do. You can't help but feel that for all his opposition to the Thought Eater, he's partially stepping into the same footsteps as his father, almost as if to take on the role from the other being. For all their differences, their relation shows, and Alpha seems to have picked up on the desires and impulses to breed from the mental impressions of those around while he was developing. Still, you do sense that there could be some wiggle room there in the future if you wanted to introduce him to other sexual acts.";
	if (lastfuck of AlphaOne - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     Alpha chuckles and says, 'I fear I'll need a little while to recover before doing something sexual again...'";
	else: [ready for sex]
		say "[AlphaOneSexMenu]";

to say AlphaOneSexMenu:
	project Figure of Alpha_hard_icon;
	say "     [bold type]What exactly do you plan on doing with Alpha?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get on your knees and let him face-fuck you";
	now sortorder entry is 1;
	now description entry is "Service the octopus hybrid orally";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Alpha's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the octopus hybrid";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Alpha's cock in your ass";
	now sortorder entry is 3;
	now description entry is "Get fucked in the ass by the octopus hybrid";
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
				if (nam is "Get on your knees and let him face-fuck you"):
					say "[AlphaOneSex1]";
				else if (nam is "Take Alpha's cock in your pussy"):
					say "[AlphaOneSex2]";
				else if (nam is "Take Alpha's cock in your ass"):
					say "[AlphaOneSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the octopus hybrid, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

[TODO: letting him explore you + virgin scenes]

to say AlphaOneSex1: [BJ on Alpha]
	if PlayerFucked of AlphaOne is false: [virgin]
		say "     Sinking to your knees before Alpha, you stroke eager hands down his front, touching the lithe being's flat abs and crotch. His skin is slightly moist, yet warm, making it actually fairly nice to feel and explore. This soon reveals a usually pretty much invisible line about seven inches beneath his belly button - Alpha's genital slit. Glancing up to meet his eyes and give the eager hybrid a smile, you lean forward and kiss his opening, then lick over it, drawing a little gasp from Alpha. Next, you bring your fingers back into play, gently pulling on both sides of the fold in his skin, opening it up a little and allowing your tongue to slide deeper, exploring the sensitive soft skin of Alpha's private parts. 'Ooh, that feels nice!' he pants, then openly gasps out loud as he feels the stimulation, and you can feel several of his tentacles wrap around your upper body and arms, both to keep you held close as well as bracing against you.";
		say "     The tip of your tongue quickly brushes against something moving within the slit, with it pushing alongside and starting to wrestle with you. Just like his tentacles, Alpha's cock is somewhat prehensile too, and he appears to like playfully rubbing it all over your tongue before it soon gets fully hard and forces your appendage out of the genital slit. As it emerges, his erection shows itself to be as much a hybrid as Alpha himself is - on one hand, it is tentacle-like and can flex and move, on the other it does have a fairly human-like mushroom head. Where the four lines of little nubs along the sides, top and bottom of the shaft came from is anyone's guess, but it is very clear that taking this dick will be quite an experience. As you lean forward and lap your tongue over the head, the virgin hybrid trembles in pleasure from the new sensation.";
		WaitLineBreak;
		say "     Alpha lowers a hand on top of your head, mostly to keep you steady as he presses his hips forward. With his cock waving back and forth a little, you're treated to a first little taste of his pre-cum as the octopus hybrid rubs his head over your lips, and you flick out your tongue for a second. 'Like it? I sure do,' Alpha says as his fluids reach your taste-buds, and you give him a smiling nod, wiggling your eyebrows. 'Good, because I want to do THIS-' he replies, then has his manhood shoot forward, snaking its way between your lips and right into your mouth. With the octopus hybrid's hand gripping the back of your head now, he begins to face-fuck you, first slowly as he tries out how to do it, then faster, with his unconventional cock feeling around and rubbing up against your tongue. The red and orange patterns of his skin pulse and ripple almost hypnotically as Alpha enjoys himself with you.";
		say "     As he pumps in and out of your mouth, finding his pace and working himself up for a proper dominant face-fuck, your own hands are left free to seek out your crotch, where you quickly begin to stroke and rub yourself. [if Player is male]Hand wrapping around your own cock, you jerk its length [else if Player is female]Fingers frigging your clit, you stroke yourself [else]Fingers rubbing your sexless, yet sensitive crotch, you stroke yourself [end if]in rhythm with Alpha's thrusts against your face, wanting to share his pleasure as he makes use of you. With the two of you humping and grinding as you are, it doesn't take long before Alpha reaches the point of no return and forces his tentacle-cock down your throat, unloading a thick load of cum right into your stomach. The overwhelming sensation of his first orgasm makes the horny hybrid get rather weak-kneed, with him having to cling to you to keep standing.";
		WaitLineBreak;
		say "     You quickly finish yourself off moments later, [if Player is male]letting loose a volley of cum-shots that splash across the lower ends of several of his tentacles. [else if Player is  female]female juices dripping from your nether lips onto the ground. [else]tingles going up and down your spine as you climax. [end if]After his orgasm ebbs off soon after, Alpha withdraws his cock from your mouth and gives you a satisfied grin. 'I loved that! Fucking someone's face is fun!'";
	else:
		say "     Sinking to your knees before Alpha, you stroke eager hands down his front, touching the lithe being's flat abs and crotch. His skin is slightly moist, yet warm, making it actually fairly nice to feel and explore. This soon reveals a usually pretty much invisible line about seven inches beneath his belly button - Alpha's genital slit. Glancing up to meet his eyes and give the eager hybrid a smile, you lean forward and kiss his opening, then lick over it, drawing a little gasp from Alpha. Next, you bring your fingers back into play, gently pulling on both sides of the fold in his skin, opening it up a little and allowing your tongue to slide deeper, exploring the sensitive soft skin of Alpha's private parts. Now he openly gasps out loud as he feels the stimulation, and you can feel several of his tentacles wrap around your upper body and arms, both to keep you held close as well as bracing against you.";
		say "     The tip of your tongue quickly brushes against something moving within the slit, with it pushing alongside and starting to wrestle with you. Just like his tentacles, Alpha's cock is somewhat prehensile too, and he appears to like playfully rubbing it all over your tongue before it soon gets fully hard and forces your appendage out of the genital slit. As it emerges, his erection shows itself to be as much a hybrid as Alpha himself is - on one hand, it is tentacle-like and can flex and move, on the other it does have a fairly human-like mushroom head. Where the four lines of little nubs along the sides, top and bottom of the shaft came from is anyone's guess, but it is very clear that taking this dick will be quite an experience.";
		WaitLineBreak;
		say "     Alpha lowers a hand on top of your head, mostly to keep you steady as he presses his hips forward. With his cock waving back and forth a little, you're treated to a first little taste of his pre-cum as the octopus hybrid rubs his head over your lips, and you flick out your tongue for a second. 'Like it?' Alpha asks you as his fluids reach your taste-buds, and you give him a smiling nod, wiggling your eyebrows. 'Good, because I want to do THIS-' he replies, then has his manhood shoot forward, snaking its way between your lips and right into your mouth. With the octopus hybrid's hand gripping the back of your head now, he begins to face-fuck you in an eager tempo, with his unconventional cock feeling around and rubbing up against your tongue. The red and orange patterns of his skin pulse and ripple almost hypnotically as Alpha enjoys himself with you.";
		say "     As he pumps in and out of your mouth, working himself up for a proper dominant face-fuck, your own hands are left free to seek out your crotch, where you quickly begin to stroke and rub yourself. [if Player is male]Hand wrapping around your own cock, you jerk its length [else if Player is female]Fingers frigging your clit, you stroke yourself [else]Fingers rubbing your sexless, yet sensitive crotch, you stroke yourself [end if]in rhythm with Alpha's thrusts against your face, wanting to share his pleasure as he makes use of you. With the two of you humping and grinding as you are, it doesn't take long before Alpha reaches the point of no return and forces his tentacle-cock down your throat, unloading a thick load of cum right into your stomach. You quickly finish yourself off moments later, [if Player is male]letting loose a volley of cum-shots that splash across the lower ends of several of his tentacles. [else if Player is  female]female juices dripping from your nether lips onto the ground. [else]tingles going up and down your spine as you climax. [end if]After his orgasm ebbs off soon after, Alpha withdraws his cock from your mouth and gives you a satisfied grin. 'I loved that!'";
	NPCSexAftermath Player receives "OralCock" from AlphaOne;

to say AlphaOneSex2: [pussy fuck by AlphaOne]
	if "HasFucked" is not listed in Traits of AlphaOne: [virgin for penetration]
		say "     As you tell Alpha that you want to let him fuck your pussy, an eager expression crosses his face and he steps closer to you. 'YES! I've been wanting to try this out myself so badly! Feel someone wrapped around my cock!' With that said, the octopus hybrid grabs you and pulls you over to a nearby sofa, several of his many tentacles starting to [if Player is not naked]strip you down before you're even halfway, casually dropping clothing and items of your gear along the way. [else]feel you up before you're even halfway. [end if]Your entwined naked bodies almost land to the ground as Alpha stumbles over a dropped book in his haste to get things on with you, but thankfully he manages to catch the two of you in time. For a moment, you're cradled in a nest of tentacles, with him touching you basically everywhere - holding your arms and legs, wrapped around your chest and back, then you're gently lowered onto the cushions.";
		say "     Planting his hands on your shoulders, Alpha leans over you and brings his face close to yours. 'I've got my parent's memories about doing this with his first girlfriend, then a number of others after her. They sure liked it, so let me try to follow his footsteps, hah!' With that said, he brings your lips together, impatiently slipping his tongue into your mouth in a French kiss. You decide to roll with it, enthusiastically participating in the novice's bout of making out, and giving him some helpful advice in between moments of tongue-wrestling with each other. The pleasurable little interlude leads over to him moving lower, kissing and licking your neck, collarbone, then [if Breast Size of Player > 0]breasts[else]pecs[end if][if Nipple Count of Player > 0]. Alpha's questing tongue seeks out your nipples, flicking over them and circling the aureolas before he presses his lips down to suckle gently, first left, then right, and back again. [else]. [end if][line break]";
		WaitLineBreak;
		say "     The octopus hybrid spends some time worshiping your chest, all the while having tentacles touch and caress the rest of your body. Then eventually, you feel something new, as down at your crotch, he begins to stroke over your skin. It isn't his hands, as those are feeling up your chest, and a quick glance down reveals that it's not one of the 'normal' tentacles either. An appendage that is as much a hybrid as Alpha himself has emerged from a previously well-concealed genital slit - on one hand, it is tentacle-like and can flex and move, on the other it does have a fairly human-like mushroom head. Where the four lines of little nubs along the sides, top and bottom of the shaft came from is anyone's guess, but it is very clear that taking this dick will be quite an experience. The erection of the virgin hybrid snakes left and right a little, as if searching for his target.";
		say "     Hot and bothered from the touching and foreplay, you reach down and take hold of it, finding the flexible shaft firm yet yielding, and seemingly covered in some sort of natural lube. Meeting Alpha's eyes and wiggling your eyebrows, you push your lower half up a little to line up with him, raise your legs and then guide his shaft to the eagerly waiting slit of your pussy. As you brush his dickhead over your opening, the octopus hybrid trembles in pleasure from the new sensation. Still, he keeps at least some self-control, taking control back as he moves his prehensile cock up and down, stroking your nether lips and clit sensually and making your pussy drippingly wet and hungry for his cock. He keeps going like that until finally, you simply can't take any more and breathlessly pant that you need his dick, now!";
		WaitLineBreak;
		say "     Following such an urgent plea, there's nothing to stop Alpha anymore, and he goes for what he aimed all along, pushing his hips against yours eagerly while letting his cock press into you. With the appendage being able to adjust itself for finding just the right angle, he takes to fucking like a fish to swimming, easily penetrating your body and sliding inside. The little nubs along his shaft's sides send shockingly pleasant tingles up your spine as they slip past your opening, and for a moment, you just close your eyes and focus on the sensations of taking him into your body. 'Mmhh yes! This is even better than I had imagined from Mathias's memories! I really love the feeling of your pussy around me! Squeezing from all around and gripping my cock!' Alpha says somewhat breathlessly, then stops talking, focusing his attention on fucking instead. You can feel his tentacles wrap tighter around you, really getting a grip so he can ram forward, burying his shaft in your sex with vigorous thrusts.";
		say "     Bucking up with a gasp as Alpha feels around inside you with his winding and flexing erection, you open your eyes and are treated to an impressive, almost hypnotic show of colors as tones of red and yellow pulse across the hybrid's skin in rhythm with his movements. Letting the energy of the moment fill you too, you push your hips up to meet the next yellow-pulsing thrust of his hips, making both of you moan out loud as he goes even deeper than before, his ribbed shaft flexing and rubbing pleasure-spots you barely knew you had. The eager fuck escalates at that point, getting ever more frantic as the two of you hold onto each other tightly, building up to an explosive finish as Alpha hammers himself home one last time. As he orgasms and begins to pulse thick, creamy seed into your welcoming slit, splashing the opening of your womb and starting to leak inside, all coordination of Alpha's chromatophores seems to go out the window for a little while, as his whole body pulsates in chaotic colors.";
		WaitLineBreak;
		say "     Wanting to join your partner in his pleasure, you [if Player is male]wrap a hand around your own cock, jerking its length franticly and [end if]frig your clit franticly, driving yourself past the point of no return, your inner muscles squeezing tight around his still spasming cock as you orgasm. [if Player is male]Your erection sprays cum like a volcano erupting, splattering Alpha's and your own chest with streaks of white goo, while [else]Your [end if]pussy gets very wet and some of your female juices start to trickle down over Alpha's cock. The two of you rock and grind against each other for some more time before the octopus hybrid eventually pulls out of you with a satisfied sigh. 'That was... everything I had imagined, and more. I can't wait to do this again!' he says, grinning broadly at you.";
		TraitGain "HasFucked" for AlphaOne;
	else:
		say "     As you tell Alpha that you want to let him fuck your pussy, an eager expression crosses his face and he steps closer to you. 'I can't wait to feel you wrapped around my cock again! You feel amazing and I want to inside you so very much!' With that said, the octopus hybrid grabs you and pulls you over to a nearby sofa, several of his many tentacles starting to [if Player is not naked]strip you down before you're even halfway, casually dropping clothing and items of your gear along the way. [else]feel you up before you're even halfway. [end if]Not content with the slow pace of just walking together, he even wraps his tentacles around you to carry you the last few steps. For a moment, you're cradled in a nest of tentacles, with him touching you basically everywhere - holding your arms and legs, wrapped around your chest and back, then you're gently lowered onto the cushions.";
		say "     Planting his hands on your shoulders, Alpha leans over you and brings his face close to yours. 'I love doing things like this with you!' With that said, he brings your lips together, impatiently slipping his tongue into your mouth in a French kiss. You decide to roll with it, enthusiastically participating in his still more eager than skillful bout of making out, continuing to give him some helpful advice to advance his sexual education, in between moments of tongue-wrestling with each other. The pleasurable little interlude leads over to him moving lower, kissing and licking your neck, collarbone, then [if Breast Size of Player > 0]breasts[else]pecs[end if][if Nipple Count of Player > 0]. Alpha's questing tongue seeks out your nipples, flicking over them and circling the aureolas before he presses his lips down to suckle gently, first left, then right, and back again. [else]. [end if][line break]";
		WaitLineBreak;
		say "     The octopus hybrid spends some time worshiping your chest, giving it eager attention and clearly having a lot of fun doing so, with all the while having tentacles touch and caress the rest of your body. Then eventually, you feel something new, as down at your crotch, he begins to stroke over your skin. Alpha's tentacle-like cock has emerged from his genital-slit again, and it's ready for some action! Glancing down, you see the appendage flex move, its human-like mushroom head almost seeming to look around. You begin to reach out to guide him to your hole, but Alpha's already on it, lifting your legs with his tentacles and spreading them, then moving his crotch closer to your own. Hot and bothered from the touching and foreplay, push your hips up towards him, ready to take Alpha's amazing cock! As you telling him vocally to fuck you deep, he goes straight for the gold and lets his cock press into you.";
		say "     With the appendage being able to adjust itself for finding just the right angle, the octopus hybrid takes to fucking like a fish to swimming, easily penetrating your body and sliding inside. The little nubs along his shaft's sides send shockingly pleasant tingles up your spine as they slip past your opening, and for a moment, you just close your eyes and focus on the sensations of taking him into your body. 'Fuuuck yeah! You're giving me such increadible feelings! This is one amazing pussy!' Alpha says somewhat breathlessly, then stops talking, focusing his attention on fucking instead. You can feel his tentacles wrap tighter around you, really getting a grip so he can ram forward, burying his shaft in your sex with vigorous thrusts.";
		WaitLineBreak;
		say "     Bucking up with a gasp as Alpha feels around inside you with his winding and flexing erection, you open your eyes and are treated to an impressive, almost hypnotic show of colors as tones of red and yellow pulse across the hybrid's skin in rhythm with his movements. Letting the energy of the moment fill you too, you push your hips up to meet the next yellow-pulsing thrust of his hips, making both of you moan out loud as he goes even deeper than before, his ribbed shaft flexing and rubbing pleasure-spots you barely knew you had. The eager fuck escalates at that point, getting ever more frantic as the two of you hold onto each other tightly, building up to an explosive finish as Alpha hammers himself home one last time. As he orgasms and begins to pulse thick, creamy seed into your welcoming slit, splashing the opening of your womb and starting to leak inside, all coordination of Alpha's chromatophores seems to go out the window for a little while, as his whole body pulsates in chaotic colors.";
		say "     Wanting to join your partner in his pleasure, you [if Player is male]wrap a hand around your own cock, jerking its length franticly and [end if]frig your clit franticly, driving yourself past the point of no return, your inner muscles squeezing tight around his still spasming cock as you orgasm. [if Player is male]Your erection sprays cum like a volcano erupting, splattering Alpha's and your own chest with streaks of white goo, while [else]Your [end if]pussy gets very wet and some of your female juices start to trickle down over Alpha's cock. The two of you rock and grind against each other for some more time before the octopus hybrid eventually pulls out of you with a satisfied sigh. 'I wish I could just keep going and stay inside you forever. This is the best feeeling ever!' he says, grinning broadly at you.";
	NPCSexAftermath Player receives "PussyFuck" from AlphaOne;

to say AlphaOneSex3: [ass-fucking by AlphaOne]
	if "HasFucked" is not listed in Traits of AlphaOne: [virgin for penetration]
		say "     As you tell Alpha that you want to take his cock, an eager expression crosses his face and he steps closer to you. 'YES! I've been wanting to try this out myself so badly! Feel someone wrapped around my cock!' With that said, the octopus hybrid grabs you and pulls you over to a nearby sofa, several of his many tentacles starting to [if Player is not naked]strip you down before you're even halfway, casually dropping clothing and items of your gear along the way. [else]feel you up before you're even halfway. [end if]Your entwined naked bodies almost land to the ground as Alpha stumbles over a dropped book in his haste to get things on with you, but thankfully he manages to catch the two of you in time. For a moment, you're cradled in a nest of tentacles, with him touching you basically everywhere - holding your arms and legs, wrapped around your chest and back, then you're gently lowered onto the cushions.";
		say "     Planting his hands on your shoulders, Alpha leans over you and brings his face close to yours. 'My progenitor always just rammed in, but the memories of my parent suggest other things to do first. Let's see about that, eh?' With that said, he brings your lips together, impatiently slipping his tongue into your mouth in a French kiss. You decide to roll with it, enthusiastically participating in the novice's bout of making out, and giving him some helpful advice in between moments of tongue-wrestling with each other. The pleasurable little interlude comes to an end a few moments later, when you feel something down at your crotch, kind of stroking over your skin. It isn't his hands, as those are still on your shoulders, and a quick glance down reveals that it's not one of the 'normal' tentacles either.";
		WaitLineBreak;
		say "     Down at Alpha's crotch, an appendage that is as much a hybrid as Alpha himself has emerged from a previously well-concealed genital slit - on one hand, it is tentacle-like and can flex and move, on the other it does have a fairly human-like mushroom head. Where the four lines of little nubs along the sides, top and bottom of the shaft came from is anyone's guess, but it is very clear that taking this dick will be quite an experience. The erection of the virgin hybrid snakes left and right a little, as if searching for his target. Reaching down, you take hold of it, finding the flexible shaft firm yet yielding, and seemingly covered in some sort of natural lube. Meeting Alpha's eyes and wiggling your eyebrows, you wiggle your lower half a little into place, raise your legs and then guide his shaft to the eagerly waiting ring of your pucker. As you brush his dickhead over your opening, the octopus hybrid trembles in pleasure from the new sensation.";
		say "     Being lined up with his target, there's nothing to stop Alpha anymore, and he pushes his hips against yours eagerly while letting his cock press into you. With the appendage being prehensile and able to adjust itself for finding just the right angle, he takes to fucking like a fish to swimming, easily penetrating your body and sliding inside. The little nubs along his shaft's sides send shockingly pleasant tingles up your spine as they slip past your opening, and for a moment, you just close your eyes and focus on the sensations of taking him into your body. 'Mmhh yes! This is even better than I had imagined! I love the feeling of your ass around me!' Alpha says somewhat breathlessly, then stops talking, focusing his attention on fucking instead. You can feel his tentacles wrap tighter around you, really getting a grip so he can ram forward, burying his shaft in your hole with vigorous thrusts.";
		WaitLineBreak;
		say "     Bucking up with a gasp as Alpha soon hits your prostate full on, you open your eyes and are treated to an impressive, almost hypnotic show of colors as tones of red and yellow pulse across the hybrid's skin in rhythm with his movements. Letting the energy of the moment fill you too, you push your hips up to meet the next yellow-pulsing thrust of his hips, making both of you moan out loud as he goes even deeper than before, his ribbed shaft flexing and rubbing pleasure-spots you barely knew you had. The eager fuck escalates at that point, getting ever more frantic as the two of you hold onto each other tightly, building up to an explosive finish as Alpha hammers himself home one last time. As he orgasms and begins to pulse thick, creamy seed into your welcoming hole, all coordination of Alpha's chromatophores seems to go out the window for a little while, as his whole body pulsates in chaotic colors.";
		say "     Wanting to join your partner in his pleasure, you [if Player is male]wrap a hand around your own cock, jerking its length franticly [else if Player is female]frig your clit franticly [else]rub your sexless, yet sensitive crotch franticly [end if]and quickly drive yourself past the point of no return, your hole squeezing tight around his still spasming cock as you orgasm. [if Player is male]Your erection sprays cum like a volcano erupting, splattering Alpha's and your own chest with streaks of white goo. [else if Player is female]Your pussy gets very wet and some of your female juices start to trickle down over Alpha's cock. [else]Pleasant tingles spread up and down along your spine. [end if]The two of you rock and grind against each other for some more time before the octopus hybrid eventually pulls out of you with a satisfied sigh. 'That was... everything I had imagined, and more. I can't wait to do this again!' he says, grinning broadly at you.";
		TraitGain "HasFucked" for AlphaOne;
	else:
		say "     As you tell Alpha that you want to take his cock, an eager expression crosses his face and he steps closer to you. 'I can't wait to feel you wrapped around my cock again!' With that said, the octopus hybrid grabs you and pulls you over to a nearby sofa, several of his many tentacles starting to [if Player is not naked]strip you down before you're even halfway, casually dropping clothing and items of your gear along the way. [else]feel you up before you're even halfway. [end if]Not content with the slow pace of just walking together, he even wraps his tentacles around you to carry you the last few steps. For a moment, you're cradled in a nest of tentacles, with him touching you basically everywhere - holding your arms and legs, wrapped around your chest and back, then you're gently lowered onto the cushions.";
		say "     Planting his hands on your shoulders, Alpha leans over you and brings his face close to yours. 'I love doing things like this with you!' With that said, he brings your lips together, impatiently slipping his tongue into your mouth in a French kiss. You decide to roll with it, enthusiastically participating in his still more eager than skillful bout of making out, continuing to give him some helpful advice to advance his sexual education, in between moments of tongue-wrestling with each other. The pleasurable little interlude comes to an end a few moments later, when you feel something down at your crotch, kind of stroking over your skin. Alpha's tentacle-like cock has emerged from his genital-slit again, and it's ready for some action! Glancing down, you see the appendage flex move, its human-like mushroom head almost seeming to look around. You begin to reach out to guide him to your hole, but Alpha's already on it, lifting your legs with his tentacles and spreading them, then moving his crotch closer to your own.";
		WaitLineBreak;
		say "     Being lined up with his target, there's nothing to stop Alpha anymore, and he pushes his hips against yours eagerly while letting his cock press into you. With the appendage being prehensile and able to adjust itself for finding just the right angle, he takes to fucking like a fish to swimming, easily penetrating your body and sliding inside. The little nubs along his shaft's sides send shockingly pleasant tingles up your spine as they slip past your opening, and for a moment, you just close your eyes and focus on the sensations of taking him into your body. 'Fuuuck yeah! I love the feeling of your ass around me!' Alpha says somewhat breathlessly, then stops talking, focusing his attention on fucking instead. You can feel his tentacles wrap tighter around you, really getting a grip so he can ram forward, burying his shaft in your hole with vigorous thrusts.";
		say "     Bucking up with a gasp as Alpha soon hits your prostate full on, you open your eyes and are treated to an impressive, almost hypnotic show of colors as tones of red and yellow pulse across the hybrid's skin in rhythm with his movements. Letting the energy of the moment fill you too, you push your hips up to meet the next yellow-pulsing thrust of his hips, making both of you moan out loud as he goes even deeper than before, his ribbed shaft flexing and rubbing pleasure-spots you barely knew you had. The eager fuck escalates at that point, getting ever more frantic as the two of you hold onto each other tightly, building up to an explosive finish as Alpha hammers himself home one last time. As he orgasms and begins to pulse thick, creamy seed into your welcoming hole, all coordination of Alpha's chromatophores seems to go out the window for a little while, as his whole body seems to pulsate in chaotic colors.";
		WaitLineBreak;
		say "     Wanting to join your partner in his pleasure, you [if Player is male]wrap a hand around your own cock, jerking its length franticly [else if Player is female]frig your clit franticly [else]rub your sexless, yet sensitive crotch franticly [end if]and quickly drive yourself past the point of no return, your hole squeezing tight around his still spasming cock as you orgasm. [if Player is male]Your erection sprays cum like a volcano erupting, splattering Alpha's and your own chest with streaks of white goo. [else if Player is female]Your pussy gets very wet and some of your female juices start to trickle down over Alpha's cock. [else]Pleasant tingles spread up and down along your spine. [end if]The two of you rock and grind against each other for some more time before the octopus hybrid eventually pulls out of you with a satisfied sigh. 'That was amazing! I can't wait to do this again!' he says, grinning broadly at you.";
	NPCSexAftermath Player receives "AssFuck" from AlphaOne;

[-----------------------------]


Table of GameCharacterIDs (continued)
object	name
Mathias	"Mathias"

Mathias is a man.
ScaleValue of Mathias is 3. [human sized]
Body Weight of Mathias is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Mathias is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Mathias is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Mathias is 3. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Mathias is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Mathias is 4. [length in inches]
Breast Size of Mathias is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Mathias is 2. [count of nipples]
Asshole Depth of Mathias is 16. [inches deep for anal fucking]
Asshole Tightness of Mathias is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Mathias is 1. [number of cocks]
Cock Girth of Mathias is 2. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Mathias is 9. [length in inches]
Ball Count of Mathias is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Mathias is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Mathias is 1. [number of cunts]
Cunt Depth of Mathias is 9. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Mathias is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Mathias is 2. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Mathias is false.
PlayerRomanced of Mathias is false.
PlayerFriended of Mathias is false.
PlayerControlled of Mathias is false.
PlayerFucked of Mathias is false.
OralVirgin of Mathias is false.
Virgin of Mathias is false.
AnalVirgin of Mathias is false.
PenileVirgin of Mathias is false.
SexuallyExperienced of Mathias is true.
TwistedCapacity of Mathias is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Mathias is false. [steriles can't knock people up]
MainInfection of Mathias is "Herm Human". [TODO: make standin infection for proper impregnation]
Description of Mathias is "[Mathiasdesc]".
Conversation of Mathias is { "Meep!" }.

to say Mathiasdesc:
	if "Awakened" is not listed in Traits of Mathias:
		say "     Mathias is a Caucasian man of slender build, with mid-length blond hair. By your best guess, he is of Scandinavian heritage, with fairly pale skin and strikingly handsome face. It isn't difficult to imagine his ancestors taking Viking longboats to raid coastal villages in Europe. As for the man himself - you don't actually know all that much about him, other than that he was somehow involved in the secret research going on underneath the Trevor Labs. Whatever his role there was, when the nanite apocalypse hit, things went off the rails and he ended up the hermaphrodite breeding slave of the Thought Eater, and the designated incubator of Alpha.";
		say "     When agreeing to harbor the octopus hybrid as part of his escape plan, you insisted on taking the man along too. Alpha did just that, but he had to put Mathias into a sleepless trance to keep his connection to the Thought Eater from betraying your location. You wonder if and when he'll be able to separate Mathias from his master...";
	else:
		say "     Awake Mathias Desc.";

instead of conversing Mathias:
	if "Awakened" is not listed in Traits of Mathias:
		say "     The man is in a dreamless sleep state right now. No chance of having any sort of conversation with him right now.";
	else:
		say "     Awake Mathias Talk.";

Alpha ends here.
