Version 1 of Callidora by Prometheus begins here.

[Version 1: Original - By Prometheus]

[ HP of Callidora ]
[ 0 - Unmet                ]
[ 1 - Blessed by Aphrodite ]

Section 1 - Callidora

Table of GameCharacterIDs (continued)
object	name
Callidora	"Callidora"
Callidora	"Cally"

Callidora is a woman.
understand "Cally" as Callidora.
ScaleValue of Callidora is 3. [human sized]
Body Weight of Callidora is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Callidora is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Callidora is 9. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Callidora is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Callidora is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Callidora is 6. [length in inches]
Breast Size of Callidora is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Callidora is 2. [count of nipples]
Asshole Depth of Callidora is 8. [inches deep for anal fucking]
Asshole Tightness of Callidora is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Callidora is 0. [number of cocks]
Cock Girth of Callidora is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Callidora is 0. [length in inches]
Ball Count of Callidora is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Callidora is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Callidora is 1. [number of cunts]
Cunt Depth of Callidora is 8. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Callidora is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Callidora is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Callidora is false.
PlayerRomanced of Callidora is false.
PlayerFriended of Callidora is false.
PlayerControlled of Callidora is false.
PlayerFucked of Callidora is false.
OralVirgin of Callidora is false.
Virgin of Callidora is false.
AnalVirgin of Callidora is false.
PenileVirgin of Callidora is true.
SexuallyExperienced of Callidora is true.
TwistedCapacity of Callidora is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Callidora is true. [steriles can't knock people up]
MainInfection of Callidora is "".
Description of Callidora is "[CallidoraDesc]".
Conversation of Callidora is { "Beautiful. Absolutely beautiful. You have never heard anything so beautiful before in your life. Beautiful." }.
The scent of Callidora is "     You don't know how it is possible, but Callidora smells of sunlight, happiness, and love.".

to say CallidoraDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Callidora] <- DEBUG[line break]";
	else:
		say "     Callidora, being blessed by Aphrodite, is extraordinarily beautiful. Though her body is sufficiently toned to suggest regular activity, or possibly a gift from her patron goddess, it is overall soft and moderately curvaceous. Her wavy chestnut-brown hair flows freely down to her shoulders, framing a sensually-angled face, a few strands stuck to the side of her cheek by seawater. The color of her eyes seem to shift from emerald-green to sapphire-blue at a whim below full eyelashes and delicate eyebrows, the affection behind them obvious no matter their color. Her full dusky-pink lips seem accustomed to smiling, turned up at the corners as though laughter is only a moment away. Her white bikini tastefully hides her C-cup breasts and vagina, but you know from when you first saw her that her body is as smooth as a dove-egg. She is surprisingly fair for how much time that she spends in the sun, but once again, you attribute that to Aphrodite's desire to protect her skin from being damaged by the sun.";
		LineBreak;
		say "     Callidora is kind, caring, and to be honest... rather handsy and overly trusting. She unashamedly touches others while talking to them, usually in a friendly way rather than sexual manner, though you doubt that it would take much encouragement to get her to progress further. For someone experiencing and influencing the city on behalf of the goddess Aphrodite, she is surprisingly critical of the way in which sex is acquired, advocating for it to be for mutual pleasure and love rather than it being only for the pleasure of one or empty of further meaning than immediate gratification. Before the nanite apocalypse she might have been considered a little bit slutty, but her inviting behavior is pretty tame in comparison to many in the city. Due to her viewing stable family groups as an embodiment of love as opposed to lust, she is especially protective of those that she sees, often found reclining nearby them keeping a vigilant eye on the more lust-driven occupants of the beach where she spends the majority of her time.";

Section 2 - Talking

[Yet to be done]

Section 3 - Sex

[Yet to be done.]

Section 4 - Events

Table of GameEventIDs (continued)
Object	Name
Birth of a Goddess	"Birth of a Goddess"

Birth of a Goddess is a situation.
ResolveFunction of Birth of a Goddess is "[ResolveEvent Birth of a Goddess]".
The level of Birth of a Goddess is 0.
Sarea of Birth of a Goddess is "Beach".

instead of going to Public Beach while Birth of a Goddess is unresolved and daytimer is day and a random chance of 1 in 3 succeeds:
	move player to Public Beach;
	BirthofaGoddessEvent;

to say ResolveEvent Birth of a Goddess:
	BirthofaGoddessEvent;

to BirthofaGoddessEvent:
	say "     Splashing your feet around in the waves, you look around at the many other people that are enjoying their time at the beach. While you once might have seen parents with their children, now everyone looks like an adult, physical and mental development receiving a kick-start from the nanites. Nonetheless, the novelty of spending a day by the sea doesn't seem to have been diminished, the watchful eyes of the orca lifeguards largely protecting them from the likes of sea dragons and living pool-toys. To your left, a small family of wolves are sitting around a picnic basket laughing and eating sandwiches, likely with sand in them. Behind you, a group of what you assume to be students are trying to convince passersby, with mixed success, to join them in a game of volleyball with the stakes being that the winners get to use the losers. Overall, it is an uplifting atmosphere, especially when compared to the dangers of some areas of the city.";
	say "     'It's nice to see so many people enjoying the sun, isn't it?' someone comments from behind you and you look around to see whether this was specifically directed at you. You find a rather beautiful human woman gazing at you with a cheerful smile on her face, a white bikini hugging her pale curves tightly so that there is little left to the imagination while maintaining a image of tastefulness. 'Who can blame them though. With sun, sand, and sea what's there not to like. Most people behave a little better here too,' she continues with a giggle, brushing a stray strand of hair behind an ear. 'I'm overheating a bit so I'll talk to you after I've had a swim if you're still around. See you later, [if player is herm]hot stuff[else if player is male]sexy[else if player is female]beautiful[else]cutie[end if].' As she starts to leave, you point out that she didn't give you her name, causing her to turn back and start apologizing. 'Sorry sweet thing, it's been a while since I met someone that didn't recognize me. I'm Cally, or Callidora if I'm doing something professional,' mock rolling her eyes at the word 'professional'. Before you can stop her, she ensnares you in a tight hug, [if scalevalue of Player < 3]her firm C-cup breasts smooshing against you face[else if scalevalue of player is 3]her cheek touching yours and firm breasts smooshed against your chest[else]your groin dangerously near her face[end if] as she cuddles you a little too over-familiarly.";
	say "     [bold type]How do you react to this strange woman hugging you?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Relax into the embrace.";
	say "     [link](2)[as]2[end link] - Politely extract yourself from the hug.";
	say "     [link](3)[as]3[end link] - Forcefully push her away.";
	[say "     [link](4)[as]4[end link] - Be hugged into the future (Skips to end of event)";]
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link], [link]2[end link], or [link]3[end link].";
	if calcnumber is 1: [Continue]
		LineBreak;
		say "     You decide to make the most of having a beautiful woman casually pressing herself against you, returning her embrace in a friendly manner. 'I'm pleased that I'm not making you uncomfortable. I'm a very touchy-feely sort of person and I often got told that I was a little too handsy before the city became... well the way that it is. These days, people are much less critical. A hug shouldn't transform either of us, at least it hasn't so far, but I should probably ask next time, shouldn't I?' Cally says, a bright smile on her face. You chuckle and say that you're hardly complaining, there's nothing wrong with being smothered by a scantily-clad stranger when she isn't trying to force herself on you, making her laugh. 'There is that. Most people seem more receptive when you are easy on the eyes, which is a shame for those who have the personality but not the pretty exterior as they aren't any less deserving of love,' the strong sense of conviction in her voice suggesting that the sentiment is personal to her.";
		say "     This seems a strange comment to come from someone with a 'pretty exterior' as she put it, but she continues before you have a chance to question her about it. 'But here I am seemingly propositioning you without even knowing if you are even attracted to women or were merely being polite. I should probably get to know you first as, while I'm not exactly picky, I put a little more emphasis on love and less on immediate gratification than most people in the city nowadays. Which is quite funny considering how often my manager had to spin my exploits to avoid bad publicity, but that's another story or three... And before you get the wrong impression of me, no, I'm not a bimbo, I'm a ditz at worst, I merely prefer body contact when I talk to people. It feels more personal and heartfelt. Now that that is out of the way, perhaps I could get your name too?' You tell her, your mind wondering how she would manage in France or Italy as well as predicting future repeats of being ensorcelled in her embrace. 'A pleasure to meet you. Now I'm really overheating, so would it be alright if I went for a swim now, unless there's anything else I've forgotten?' She looks at you questioningly, but you shake your head and your new friend bounds into the waves and you decide to find a warm patch of sand to lie down and have a rest for a bit.";
		WaitLineBreak;
		say "     ...";
		say "     ...";
		WaitLineBreak;
		say "     You do not know how long you dozed off for before you are woken up by a commotion on the beach. Looking around, you see a large number of people wildly pointing out to sea, shouting and gesturing for other people to look. Returning your focus to the ocean, you see a considerable build up of foam approaching the shore with, miraculously, a flight of doves fluttering above it cooing. As the froth reaches the sand not far from where you are watching, the bubbles burst and the form of a woman is revealed. It doesn't take you long to recognize her as Callidora, and for a moment you struggle to breathe as fears that she has drowned cross your mind before she stirs and gracefully stands up. Taking a moment to adjust her bikini, she casts her gaze about at the approaching mass of people before spotting you ahead of them, giving you a radiant smile and a wave. You open your mouth to ask about her strange return to shore, but she holds her hand up to quieten you. 'I'll explain in a minute. There are others who may wish to hear what I have to say,' she says apologetically.";
		say "     It doesn't take long for a crowd to have gathered around her, though fortunately you seem to be in the front row so still have a clear view of her and easily hear her voice when she begins in a serious tone. 'I bring dire tidings mortals. You have displeased the goddess, Aphrodite, with your sinful actions in this city. Rape, assault, looting... Because of this, she has seen fit to punish you for your crimes and selected me as her representative for bringing about your demise!' Your brow shoots up, not expecting this from the woman who seemed so friendly and kind before. A shocked gasp spreads through the assembled people, curiosity turning to fear on many of the faces that you can see. However, after a few seconds of watching the crowd's reaction, Cally can no longer stifle what was apparently a growing laugh, releasing a giggle and doubling over with laughter. 'Sorry, sorry. I couldn't resist the chance to appear like a prophet foretelling doom. It's nothing so serious.'";
		WaitLineBreak;
		say "     More than a few people look visibly irritated and begin to approach the woman with their fists clenched, but others hold them back when Callidora continues, this time in a much lighter manner. 'While the Goddess of Love is saddened by the violence and apathy in the city, she would never do anything so drastic as to harshly punish so many people. In addition to being unable to act so directly, it is not her way. However, the debauchery has intrigued her and in return for her blessing, I have agreed to allow her to experience the love and passion between those that consent. All who grant Aphrodite this gift will be under my protection as best as I can and may experience the benefits of it. While I haven't had time to explore this boon, from what she has told me, it will be intensely pleasurable for all involved.' She delivers this last sentence with almost a purr, demonstrating her best 'bedroom eyes'. While you can see many skeptical expressions in the crowd, you can see just as many lascivious, intrigued, and reverential looks as well. Regardless of the truthfulness of her proclamation, Cally is definitely giving off a much more sexual aura than when you were talking to her earlier.";
		say "     'I look forward to getting to know many of you, as friends as well as lovers, as does Aphrodite, especially those who have formed strong bonds and raised families despite the current adversity. In this, Hera and the Goddess of Love are in agreement. Thank you for your time.' With this, Callidora dismisses the crowd, though a few remain to exchange hushed words, though judging from their expressions, not all are of support. When the last of them returns to lounging on the beach, Cally walks over to where you have found a seat on the sand and allows herself to slump beside you. 'A word of advice. Becoming the mortal avatar of a goddess isn't all it's cracked up to be. Also, don't threaten destruction as a joke. It doesn't come across well,' she tiredly says. Despite her apparent exhaustion, there is a new light behind her eyes as she meets your gaze. 'You go around the city, what do you think of it?' You cautiously reply that some places are worse than others but that you manage, earning a chuckle from the woman. 'That isn't what I meant, but I suppose it answers my question nonetheless.'";
		WaitLineBreak;
		say "     The two of you lie there in companionable silence for a few moments, reflecting on recent events and what the future might hold, before Cally speaks up again. 'I think that it will be hard work changing the city for the better, but there were some people in the assembly that were receptive, weren't there?' You lazily confirm her question, your focus mainly on the warmth of the sand beneath you and not drifting back to sleep. A firm poke in the face stirs you from your lethargy, Cally's finger withdrawing again as she chides you, 'It's rude to fall asleep while a lady is talking to you.' She has a point, and you did sleep a little earlier so you sit up properly and direct your attention at the bikini-clad woman as she continues to question you about who you have met in the city, whether any seem to have maintained more control than others, and even if there are any people that still worship the Olympian gods. You try to answer her as best you can, strangely at ease with her considering you only met her earlier today.";
		say "     'I don't plan on traveling around for quite some time, but knowing what to expect is crucial if I'm going to be able to help people overcome the darker side of lust that seems to control so many of them. As a note, I'm not here to convert people to worshipping Aphrodite, just to try and guide them away from raping anything that moves,' Callidora explains, clambering to her feet and pacing around as she speaks. 'It is especially important that I avoid becoming worshipped as a god myself. The consequences would be messy, and not in the fun [']semen on all surfaces['] way. There are few things as disrespectful as besmirching the name of a god, something which I need to remind a certain fish-breathed someone, so I wish to make this clear to you; I am Callidora, not Aphrodite. I am a human, not a god. A human blessed by a goddess, but a human nonetheless.' You nod to show that you understand, earning a smile. 'I'm told that there is an avatar of Bastet somewhere in the city, so I might try and find her at some point to compare notes on hosting part of the essence of a goddess, but for now the beach requires my protection and benevolent grace.' You raise an eyebrow, but she gives you a wink to show that she is just teasing you and that she isn't any more big-headed than before.";
		WaitLineBreak;
		say "     Deciding that you have spent enough time lying around on the beach for now, you stand up and brush sand off your back. 'Leaving so soon? Are you sure that I can't seduce you to stay a little longer? Perhaps I need to extol the virtues of the Goddess of Love to you more?' Cally says, hugging you before you have a chance to say anything. She makes sure that it is only a friendly hug this time, resisting the urge to squeeze you against her bosom. 'Be sure to come and visit. I have a special place in my heart for you. Whether this place is for a lover or a friend remains to be seen, but it is yours either way,' she informs you. 'You can even bring your friends and we'll make it an orgy,' Cally adds with a giggle. Laughing with her, you make sure that you have all your belongings before walking away across the sand, waving over your shoulder at the cheerful avatar of Aphrodite. You wonder how the city will change...";
		move Player to Public Beach;
		now HP of Callidora is 1;
		decrease Sleeptimercount by 2;
		follow the turnpass rule;
		now resolution of Birth of a Goddess is 1; [Allowed hug]
		now Birth of a Goddess is resolved;
	else if calcnumber is 2: [Polite Rejection]
		LineBreak;
		say "     With a polite cough, you push gently on her shoulders to separate her from yourself. Cally seems to understand instantly, blushing and apologizing again. 'Sorry, sorry. I got told that I was too touchy-feely before the city became... well the way that it is. I suppose it is reassuring that some things don't change even as dog-people stalk the streets for men and women to become their bitches. I would assure you that I'm not infectious, but that's hardly the point. I was overly affectionate without consent when you had only just met me. You have my apologies.' You chuckle and say that it isn't that serious, you just would have preferred a warning before being smothered by a scantily-clad stranger, making her laugh in return. 'If that's the only problem, I'll give you some warning next time and we can get to know each other more intimately. I'm teasing you, don't worry. I don't know whether you're even into women so it would be silly of me to proposition you when we know so little about each other. I'm not exactly picky, but I put a little more emphasis on love and less on immediate gratification than most people in the city nowadays. Which is quite funny considering how often my manager had to spin my exploits to avoid bad publicity, but that's another story or three...'";
		say "     Cally doesn't spend long reminiscing before she remembers why she was telling you all this. 'So, to sum up. Sorry that I was so enthusiastic with my hug, I'll try and remember it in future but don't hesitate to correct me again if I forget. It's a long running problem for me and I doubt that my personality will be changing any time soon. Before you ask, no, I'm not a bimbo, I'm a ditz at worst, I merely prefer body contact when I talk to people. It feels more personal and heartfelt. Now that that is out of the way, perhaps I could get your name too?' You tell her, your mind wondering how she would manage in France or Italy, relieved that she has accepted your wish for personal space so willingly, though it does sound like there could be repeats in future. 'A pleasure to make your acquaintance. Now may I be excused to swim in the sea, unless there is anything else that I've forgotten?' She looks at you questioningly, but you shake your head and your new friend bounds into the waves and you decide to find a warm patch of sand to lie down and have a rest for a bit.";
		WaitLineBreak;
		say "     ...";
		say "     ...";
		WaitLineBreak;
		say "     You do not know how long you dozed off for before you are woken up by a commotion on the beach. Looking around, you see a large number of people wildly pointing out to sea, shouting and gesturing for other people to look. Returning your focus to the ocean, you see a considerable build up of foam approaching the shore with, miraculously, a flight of doves fluttering above it cooing. As the froth reaches the sand not far from where you are watching, the bubbles burst and the form of a woman is revealed. It doesn't take you long to recognize her as Callidora, and for a moment you struggle to breathe as fears that she has drowned cross your mind before she stirs and gracefully stands up. Taking a moment to adjust her bikini, she casts her gaze about at the approaching mass of people before spotting you ahead of them, giving you a radiant smile and a wave. You open your mouth to ask about her strange return to shore, but she holds her hand up to quieten you. 'I'll explain in a minute. There are others who may wish to hear what I have to say,' she says apologetically.";
		say "     It doesn't take long for a crowd to have gathered around her, though fortunately you seem to be in the front row so still have a clear view of her and easily hear her voice when she begins in a serious tone. 'I bring dire tidings mortals. You have displeased the goddess, Aphrodite, with your sinful actions in this city. Rape, assault, looting... Because of this, she has seen fit to punish you for your crimes and selected me as her representative for bringing about your demise!' Your brow shoots up, not expecting this from the woman who seemed so friendly and kind before. A shocked gasp spreads through the assembled people, curiosity turning to fear on many of the faces that you can see. However, after a few seconds of watching the crowd's reaction, Cally can no longer stifle what was apparently a growing laugh, releasing a giggle and doubling over with laughter. 'Sorry, sorry. I couldn't resist the chance to appear like a prophet foretelling doom. It's nothing so serious.'";
		WaitLineBreak;
		say "     More than a few people look visibly irritated and begin to approach the woman with their fists clenched, but others hold them back when Callidora continues, this time in a much lighter manner. 'While the Goddess of Love is saddened by the violence and apathy in the city, she would never do anything so drastic as to harshly punish so many people. In addition to being unable to act so directly, it is not her way. However, the debauchery has intrigued her and in return for her blessing, I have agreed to allow her to experience the love and passion between those that consent. All who grant Aphrodite this gift will be under my protection as best as I can and may experience the benefits of it. While I haven't had time to explore this boon, from what she has told me, it will be intensely pleasurable for all involved.' She delivers this last sentence with almost a purr, demonstrating her best 'bedroom eyes'. While you can see many skeptical expressions in the crowd, you can see just as many lascivious, intrigued, and reverential looks as well. Regardless of the truthfulness of her proclamation, Cally is definitely giving off a much more sexual aura than when you were talking to her earlier.";
		say "     'I look forward to getting to know many of you, as friends as well as lovers, as does Aphrodite, especially those who have formed strong bonds and raised families despite the current adversity. In this, Hera and the Goddess of Love are in agreement. Thank you for your time.' With this, Callidora dismisses the crowd, though a few remain to exchange hushed words, though judging from their expressions, not all are of support. When the last of them returns to lounging on the beach, Cally walks over to where you have found a seat on the sand and allows herself to slump beside you. 'A word of advice. Becoming the mortal avatar of a goddess isn't all it's cracked up to be. Also, don't threaten destruction as a joke. It doesn't come across well,' she tiredly says. Despite her apparent exhaustion, there is a new light behind her eyes as she meets your gaze. 'You go around the city, what do you think of it?' You cautiously reply that some places are worse than others but that you manage, earning a chuckle from the woman. 'That isn't what I meant, but I suppose it answers my question nonetheless.'";
		WaitLineBreak;
		say "     The two of you lie there in companionable silence for a few moments, reflecting on recent events and what the future might hold, before Cally speaks up again. 'I think that it will be hard work changing the city for the better, but there were some people in the assembly that were receptive, weren't there?' You lazily confirm her question, your focus mainly on the warmth of the sand beneath you and not drifting back to sleep. A firm poke in the face stirs you from your lethargy, Cally's finger withdrawing again as she chides you, 'It's rude to fall asleep while a lady is talking to you.' She has a point, and you did sleep a little earlier so you sit up properly and direct your attention at the bikini-clad woman as she continues to question you about who you have met in the city, whether any seem to have maintained more control than others, and even if there are any people that still worship the Olympian gods. You try to answer her as best you can, strangely at ease with her considering you only met her earlier today.";
		say "     'I don't plan on traveling around for quite some time, but knowing what to expect is crucial if I'm going to be able to help people overcome the darker side of lust that seems to control so many of them. As a note, I'm not here to convert people to worshipping Aphrodite, just to try and guide them away from raping anything that moves,' Callidora explains, clambering to her feet and pacing around as she speaks. 'It is especially important that I avoid becoming worshipped as a god myself. The consequences would be messy, and not in the fun [']semen on all surfaces['] way. There are few things as disrespectful as besmirching the name of a god, something which I need to remind a certain fish-breathed someone, so I wish to make this clear to you; I am Callidora, not Aphrodite. I am a human, not a god. A human blessed by a goddess, but a human nonetheless.' You nod to show that you understand, earning a smile. 'I'm told that there is an avatar of Bastet somewhere in the city, so I might try and find her at some point to compare notes on hosting part of the essence of a goddess, but for now the beach requires my protection and benevolent grace.' You raise an eyebrow, but she gives you a wink to show that she is just teasing you and that she isn't any more big-headed than before.";
		WaitLineBreak;
		say "     Deciding that you have spent enough time lying around on the beach for now, you stand up and brush sand off your back. 'Leaving so soon? Are you sure that I can't seduce you to stay a little longer? Perhaps I need to extol the virtues of the Goddess of Love to you more?' Cally says, hugging you before you have a chance to say anything. She makes sure that it is only a friendly hug this time, resisting the urge to squeeze you against her bosom. 'Be sure to come and visit. I have a special place in my heart for you. Whether this place is for a lover or a friend remains to be seen, but it is yours either way,' she informs you. 'You can even bring your friends and we'll make it an orgy,' Cally adds with a giggle. Laughing with her, you make sure that you have all your belongings before walking away across the sand, waving over your shoulder at the cheerful avatar of Aphrodite. You wonder how the city will change...";
		move Player to Public Beach;
		now HP of Callidora is 1;
		decrease Sleeptimercount by 2;
		follow the turnpass rule;
		now resolution of Birth of a Goddess is 2; [Refused hug]
		now Birth of a Goddess is resolved;
	else if calcnumber is 3: [Push the woman over]
		LineBreak;
		say "     Without giving her any warning, you grab Callidora by the shoulders and shove her away from you, the woman letting out a surprised yelp as she tumbles onto the sand unceremoniously, drawing the attention of nearby beach-goers. Perhaps believing that you intend to assault or rape her, several people rush towards the two of you, shouting for you to back away, an order which you comply with. By the time anyone reaches you, Callidora has regained her feet, rubbing various sore areas of her body. 'That has to be one of the most extreme responses to being hugged that I have ever witnessed. To be honest, I think that you should be ashamed of yourself, but I suppose that social etiquette isn't what it used to be in the city,' she mutters as she looks reproachfully at you. After thanking the concerned onlookers, she stumbles off towards the sea without looking back at you. From the hostile glares that you are receiving, you decide it best to leave the beach until this incident has been forgotten about, confident that Callidora won't want to approach you again.";
		move Player to Beach Plaza;
		now HP of Callidora is 99;
		now resolution of Birth of a Goddess is 3; [Expressed your disinterest. Strongly.]
		now Birth of a Goddess is resolved;
	[else if calcnumber is 4: [Skip Event]
		LineBreak;
		say "     Deciding that you have spent enough time lying around on the beach for now, you stand up and brush sand off your back. 'Leaving so soon? Are you sure that I can't seduce you to stay a little longer? Perhaps I need to extol the virtues of the Goddess of Love to you more?' Cally says, hugging you before you have a chance to say anything. She makes sure that it is only a friendly hug this time, resisting the urge to squeeze you against her bosom. 'Be sure to come and visit. I have a special place in my heart for you. Whether this place is for a lover or a friend remains to be seen, but it is yours either way,' she informs you. 'You can even bring your friends and we'll make it an orgy,' Cally adds with a giggle. Laughing with her, you make sure that you have all your belongings before walking away across the sand, waving over your shoulder at the cheerful avatar of Aphrodite. You wonder how the city will change...";
		move Player to Public Beach;
		now HP of Callidora is 1;
		decrease Sleeptimercount by 2;
		follow the turnpass rule;
		now resolution of Birth of a Goddess is 4; [Skipped Event]
		now Birth of a Goddess is resolved;]

Callidora ends here.
