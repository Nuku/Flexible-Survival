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

instead of conversing the Callidora:
	say "[CallidoraTalkMenu]";

to say CallidoraTalkMenu:
	say "     What do you wish to talk about with the seductive white wolf?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Small Talk";
	now sortorder entry is 1;
	now description entry is "Have an idle conversation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her Past";
	now sortorder entry is 2;
	now description entry is "Ask Callidora about who she was before becoming the Avatar of Aphrodite";
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
				if (nam is "Small Talk"):
					say "[CallidoraTalk1]";
				if (nam is "Her Past"):
					say "[CallidoraTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Callidora looks about to say something before shaking her head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say CallidoraTalk1: [Small Talk]
	if daytimer is day:
		say "     '[one of]Lovely day to lie in the sun, don't you think? The nanites should protect you from sunburn, shouldn't they? If not, I'm sure someone has some cream they would give you[or]Watch out for Circe. A Spartan from the college tried to take an ice cream without paying and she just about turned him into a piglet. Fortunately, he was persuaded to return the icecream and she settled for merely giving him a curly tail[or]I don't suppose you've seen Penthesileia around? If you talk to her, could you tell her that it was me who took her bikini top? She may not be pleased, but she needs to know[or]I hope the city is treating you well. If people need rescuing, I hope that you are providing them with somewhere safe to stay[at random].'";
	else:
		say "     '[one of]Moonbathing is the new [']in thing[']. Come, lie on the sand and absorb Selene's radiance[or]The priestess in the church seems friendly, but she won't let me inside. Perhaps she saw me in that ad...[or]Penthesileia says hi, but she had to go back to her den again. Perhaps one day you'll actually be around at the same time[or]I hope the city is treating you well. If people need rescuing, I hope that you are providing them with somewhere safe to stay[at random].'";

to say CallidoraTalk2: [Her past]
	say "     'I'm still a little hurt that you haven't heard of me, especially as I've been on billboards and the front cover of magazines. I was one of the lead characters in the television series [']A Mind for Crime['], but I also did modeling, mostly for swimwear. It hurts to think that many of the cast and crew may not have survived, but I shall remain hopeful that they were either out of the city or have found somewhere safe to take shelter. But anyway, you wanted to hear about my past, not my fears. I never knew my father, he died before I was born. Pancreatic cancer, by the time the doctors knew, there was nothing that they could do, it was so aggressive. My Mom mostly raised me by herself, until my step-father married her just after I turned ten. After that, my school friends, their parents, and my tutors gave me more attention than Mom. It's not that my mother meant to suddenly neglect me, but when you're head over heels in love with someone, even if he is a scumbag, when he offers to show you the world it must be very difficult to say no.'";
	say "     'The benefit of this is that I quickly learned how to look after myself. Cooking, cleaning, and shopping are important skills for anyone if they want to be self-sufficient, but it took me until middle school to understand this. At least I had the money that Mom would send me from wherever she happened to be at the time, whether it was Paris, Istanbul, or Sydney. She loved me, but I think she loved [italic type]him more[roman type]. Perhaps I reminded her too much of my father. I barely saw them until I was in my final year of high school. Mom felt guilty that she hadn't seen me grow up and persuaded her husband to take a break from traveling. It was a mixed blessing to have them around the house again. My mother overcompensated for being away so long, and my step-father couldn't help but find flaws in whatever I did whenever Mom wasn't around to overhear. I didn't want to upset her, so I have never told her about that.'";
	WaitLineBreak;
	say "     'My best subjects were drama and dance, and I had been in a few local productions. If Mom had been around more, perhaps I would have listened to my teachers['] advice and auditioned for one of the big national ones, but she wasn't, so I didn't. This meant that I hadn't really made a name for myself and thus after I finished school and wanted to be an actress I was only offered background roles, though I was never passed over entirely which is more than what happens to many. Nonetheless, it was demoralizing when I thought that I was going to be the next Munroe. Fortunately, my luck would change when Mom decided that a trip to the south of France would lift my spirits. My step-father came along too, but perhaps things would have been different if he hadn't, so I shouldn't complain.'";
	say "     'Near the end of our vacation, after we had had lunch, my mother decided she would have a nap, leaving me and my step-father to wander around the town without her. Unsurprisingly, he took this chance to tell me how unrealistic my dream of being a successful actress was and that I would be better becoming someone's trophy wife. A young couple sitting outside a cafe overheard and a man came over, introduced himself as Hannibal and asked if I would be willing to spend the afternoon with him and his wife, Kiko. It was a stupid decision when I didn't know him at the time, but as soon as my step-father declined on my behalf, I accepted and immediately followed him to sit back down with his wife. I thought that the worst thing that could happen is that he and his wife were swingers and that I was going to awkwardly have to resist their advances. As it turns out, I didn't even need to worry about that.'";
	WaitLineBreak;
	say "     'Over coffee, Kiko and Hannibal talked to me about how important following one's dreams are and that if acting was something that my heart was set on, that I shouldn't give up on it. By the time my step-father returned with my Mom, I was well and truly cheered up and had steeled myself to endure further auditions, successful or not. As I hadn't been harmed, was in high spirits again, and the couple hadn't actually done anything illegal, my mother thanked them for looking after me before escorting me back to our hotel and privately scolding me for being foolish enough to trust a stranger over my step-father. A few days later we were back in the US and I received a telephone call from a talent agent offering to represent me. When I met Anna, she confirmed my suspicion that she was a friend of Hannibal's, but that she had seen some recordings of some of my previous auditions and that she thought, with her help, that I could have a successful career as an actress.'";
	say "     'I don't know what magical skills talent agents hide from the rest of us, but I immediately began to get better roles in television shows, though they were still relatively minor, until after starring as murder victim number one, Anna approached me with an offer to star as the female lead in a new crime series called [']A Mind for Crime[']. Obviously, I accepted and from there my life was set. Mom was delighted and even my step-father grudgingly conceded that my perseverance had paid off. Hannibal and Kiko flew over from England and took me out to dinner to congratulate me in person. I'm sure that I wouldn't have been noticed if they hadn't got Anna in touch with me. After that, Anna was flooded with requests for my time. Modeling, interviews, and even roles in movies. I was tied into contract with [']Mind of Crime['], but I was able to do some modeling and interviews as long as they didn't clash with filming.'";
	WaitLineBreak;
	say "     'So, as I said, I'm surprised that you didn't recognize me. I may not be the next Munroe, but I'm happy with my progress, though I suppose I'll have to wait and see whether my career can continue after all this is over.' Callidora smiles at you, indicating an end to her story. She seems to have lived an interesting life so far, but you can't help but ask about her step-father. He didn't seem to like Cally, does she think that he loved her mother? 'Oh, I have no doubt. The amount of time he spent with her and the gifts he bought her, she was special to him. I hope that one day I can find someone that feels the same way about me.'";



Section 3 - Sex

Instead of fucking Callidora:
	say "     'Sorry, [if player is herm]hot stuff[else if player is male]sexy[else if player is female]beautiful[else]cutie[end if], but while I properly bond with APhrodite, I'm on enforced abstinence. Believe me, it hurts us more to refuse than it does you, but this is something that no-one wants to go wrong. Really.' (WIP)";

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
	say "     Splashing your feet around in the waves, you look around at the many other people that are enjoying their time at the beach. While you once might have seen parents with their children, now everyone looks like an adult, physical and mental development receiving a kick-start from the nanites. Nonetheless, the novelty of spending a day by the sea doesn't seem to have been diminished, the watchful eyes of the orca lifeguards largely protecting them from the likes of sea dragons and living pool-toys. To your left, a small family of wolves are sitting around a picnic basket laughing and eating sandwiches, likely with sand in them. Behind you, a group of what you assume to be students are trying to convince passersby, with mixed success, to join them in a game of volleyball with the stakes being that the winners get to have their way with the losers. Overall, it is an uplifting atmosphere, especially when compared to the dangers of some areas of the city.";
	say "     'It's nice to see so many people enjoying the sun, isn't it?' someone comments from behind you and you look around to see whether this was specifically directed at you. You find a rather beautiful human woman gazing at you with a cheerful smile on her face, a white bikini hugging her pale curves tightly so that there is little left to the imagination while maintaining a image of tastefulness. 'Who can blame them though. With sun, sand, and sea what's there not to like. Most people behave a little better here too,' she continues with a giggle, brushing a stray strand of hair behind an ear. 'I'm overheating a bit so I'll talk to you after I've had a swim if you're still around. See you later, [if player is herm]hot stuff[else if player is male]sexy[else if player is female]beautiful[else]cutie[end if].' As she starts to leave, you point out that she didn't give you her name, causing her to turn back and start apologizing. 'Sorry sweet thing, it's been a while since I met someone that didn't recognize me. I'm Cally, or Callidora if I'm doing something professional,' mock rolling her eyes at the word 'professional'. Before you can stop her, she ensnares you in a tight hug, [if scalevalue of Player < 3]her firm C-cup breasts smooshing against you face[else if scalevalue of player is 3]her cheek touching yours and firm breasts smooshed against your chest[else]your groin dangerously near her face[end if] as she cuddles you a little too over-familiarly.";
	say "     [bold type]How do you react to this strange woman hugging you?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Relax into the embrace.";
	say "     [link](2)[as]2[end link] - Politely extract yourself from the hug.";
	say "     [link](3)[as]3[end link] - Forcefully push her away.";
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

Table of GameEventIDs (continued)
Object	Name
Sunbathing Goddess	"Sunbathing Goddess"

Sunbathing Goddess is a situation.
ResolveFunction of Sunbathing Goddess is "[ResolveEvent Sunbathing Goddess]".
Prereq1 of Sunbathing Goddess is Birth of a Goddess.
Prereq1Resolution of Birth of a Goddess is { 1, 2 }.
Sarea of Sunbathing Goddess is "Beach".

instead of going to Public Beach while Sunbathing Goddess is unresolved and daytimer is day and a random chance of 1 in 3 succeeds:
	move player to Public Beach;
	SunbathingGoddessEvent;

to say ResolveEvent Sunbathing Goddess:
	SunbathingGoddessEvent;

to SunbathingGoddessEvent:
	say "     Wandering through the many beach-goers, you notice a crowd gathering further away from the cliffs. Curious as to what is causing this, you make your way over, weaving through sunscreen-soaked bodies until you manage to get a clear view of who everyone seems to be focused on. Lying on the sand in a yellow polka-dot bikini is Callidora, the vessel of Aphrodite seemingly having dozed off while sunbathing, her nap allowing onlookers a chance to ogle her body. 'There's no way those are real,' you hear someone mutter. 'Someone should probably wake her. We don't want her getting sunburnt,' someone more compassionate says, nonetheless not following their own suggestion. Eventually, with no-one doing anything other than staring (with a few almost drooling), an anthro African hunting dog, her fur patterned similar to tattoos, irritably sighs before elbowing her way to the front. 'Sex-obsessed bastards,' you hear her spit under her breath as she passes by you. Kneeling beside the slumbering woman, she gently shakes her by the shoulder.";
	say "     'Cally, you've got half the city staring at your tits. You can tell them to piss off or do a strip show, but either way, you've slept for long enough, unless you're hoping to entice the sun into fucking you,' the canine grumbles, her crude speech in stark contrast to her delicate touch. With a sensuous moan, Callidora's eyes flicker open and she looks around at the crowd before returning her attention to the hunting dog. 'Thank you, Penthesileia, though you did interrupt a pleasant dream,' the bikini-clad woman mumbles, still waking up. Laughing, the canine replies, 'I apologize if I interrupted anything dirty, but as I said, everyone is watching so you would have had an audience if you enjoyed yourself too much.' 'Would that have been so bad?' Callidora replies with a smirk. Snorting, Penthesileia turns back to the crowd. 'Show's over you perverts, let the lady wake up before she has to deal with your shit.' Muttering indignantly, the mob disperses back to swimming, relaxing, and other pleasurable activities.";
	WaitLineBreak;
	say "     Soon you are the only person left watching the two of them, the canine briefly fixing you with a stern glare, before a hand on her shoulder diverts her attention. 'I know [ObjectPro of Player]. They're the one who was there when Aphrodite blessed me,' Cally says soothingly. '[if resolution of Birth of a Goddess is 1]Didn't [SubjectPro of Player] let you hug them without knowing you[else if resolution of Birth of a Goddess is 2]The one who was scared of a hug[end if]? It's your choice, but they look dangerous and Hannibal will be pissed if you are harmed,' Penthesileia warns her. 'Nonsense. Between the two of us, we wouldn't need [italic type]him [roman type]to step in,' Callidora replies dismissively before directing her attention fully towards you. 'Hello, [if player is herm]hot stuff[else if player is male]sexy[else if player is female]beautiful[else]cutie[end if], how has the city been treating you? Kept out of trouble, or have you left a string of illegitimate children in your wake?' The hunting dog rolls her eyes but shifts her weight to her back foot while she watches you.";
	say "     'Ah, but where are my manners? This delightful young woman is Penthesileia, once a bodyguard for a friend but now my own protector,' Cally explains before the woman in question interrupts. 'Fuck off. It's only you and him that call me Pen-this-ill-E-ah, I'm older than you and I've never been described as delightful, not even when I was five. Stop talking shit or I'll shove sand in your bikini,' she retorts, carefully enunciating the syllables of the strange name. 'You're only a few years older, but I get the point, Isabella. I remember the last time you did that. Bitch,' the vessel of Aphrodite mutters, earning a grin from her companion. You doubt that Callidora would be quite as amenable to this treatment if the two of them weren't friends, but it is still slightly disconcerting. 'How about we get an icecream while we talk. Circe was meant to be getting some sorbets that I am interested in trying. Don't worry, I'll pay,' Cally says, her offer extended to both you and Isabella. Tempting as that bribe may be, I need to get going. I agreed to train the pups when I get back to the den. They deserve the best after all,' the canine apologizes. She follows you as far as the top of the steps before vanishing into the city, leaving you follow Callidora to the ice cream vendor.";
	WaitLineBreak;
	if Player is Pure Male:
		say "     'Mixing with pigs again, Cally?' [if HP of Cindy > 5]Circe [else if HP of Cindy > 1]Cindy, or apparently Circe, [end if] teases after giving you a quick glance. 'No need to be rude. Not all men are worthy of such judgment,' Callidora replies reproachfully. 'That may be, but they are few and far between, though I did meet one the other day who treated me with the proper reverence. Knew the old language too. He had a similar aura to you so hardly someone that I can compare common mortals to,' Circe concedes. ";
	else if player is female: [Female and Herm]
		say "     'Picking up beauties, Cally?' [if HP of Cindy > 5]Circe [else if HP of Cindy > 1]Cindy, or apparently Circe, [end if] asks, beaming at you both. 'You could say that, but I somehow doubt that you would have been as enthusiastic if I was accompanied by a man,' Callidora replies dryly. 'True, but the majority of men are pigs, even if they don't show it on the outside, though I will admit that I met one the other day who treated me with the proper reverence. Knew the old language too. He had a similar aura to you so hardly someone that I can compare common mortals to,' Circe shoots back. ";
	else: [Neuters]
		say "     'Goodness, a neuter. You do meet some interesting people, don't you Cally,' [if HP of Cindy > 5]Circe [else if HP of Cindy > 1]Cindy, or apparently Circe, [end if] says with astonishment after letting her eyes rest on you. 'They're a person not a curiosity, though I suppose that this is still a more tame response than if they had been a man,' Callidora reprimands her. 'I apologize for my present rudeness, but I stand by my stance on men. Most of them are pigs, even if they don't show it on the outside, though I will admit that I met one the other day who treated me with the proper reverence. Knew the old language too. He had a similar aura to you so hardly someone that I can compare common mortals to,' Circe concedes. ";
	say "'But you're probably here for the frozen dessert rather than the philosophical conversation. What can I get you? Free for divine avatars and hangers-on. Not even I want to cross the Goddess of Beauty and Love,' she announces. The exhaustive list of ice cream flavors only fosters your indecision until you eventually ask Callidora to choose for you.";
	say "     'An excellent decision. Leave it to the connoisseur,' Circe compliments you. 'Two pomegranate sorbets please,' Cally asks. 'Such an impeccable taste you have. Persephone herself has approved it,' the concession stand owner replies, scooping two small tubs out from a freezer. Handing you one and taking the other for herself, Callidora blows a kiss in thanks to Circe before gesturing to a vacant table nearby. 'Shall we? I thought that we might catch up for a bit, though it is a shame that Isabella couldn't stay. She takes some getting to know, but there is a kind heart beneath her acidic tongue.' Complying with her suggestion, slouch onto a seat and begin to sample the delicious sorbet, neither of you speaking until you are unable to scrape any more from your pots. You can definitely believe that a goddess would give it her seal of approval.";
	WaitLineBreak;
	say "     'Ahhh. Scrumptious. Penthesileia will be jealous,' Cally sighs, running a finger around her mouth to collect stray dribbles of sorbet before sucking it clean. Curious as to how the African hunting dog got her name, you ask, earning a musical laugh from the god-vessel. 'She used to work security for a friend who was a bit eccentric. Though perhaps in hindsight, insightful might be a better description. He worshiped the Greek gods and goddesses. Anyway, Isabella was a very capable woman and Hannibal used to joke that she might even have been able to overcome Achilles and so started to refer to her like that. I'm not sure that she thought much of the name itself, but it made her feel appreciated and accepted. Apparently no-one had been comfortable teasing her since she left the army, and I think she missed the ribaldry. Perhaps you can ask her about it yourself sometime, but for now, I want to hear about you. How [if TwelveLaborsStage > 1]have the labors been going[else]has life at the library been treating you[end if]?";
	if TwelveLaborsStage > 1:
		if TwelveLaborsStage is 2:
			say "     You tell her about your fight with the Nemean Lion in the Dry Plains. 'A good start for an aspiring hero, though it is a bit unfair that everyone ends up compared to Herakles. Did you defeat it with your bare hands, or did you break with tradition and try using a bazooka?' Callidora laughs. ";
		else if TwelveLaborsStage is 3:
			say "     You tell her about your encounter with the Lernean Hydra in the Junkyard. 'She's a tough one. I doubt that there have been many people that could defeat her once she grows a few extra heads. I hope that you had a friend to help you. Nothing can overcome the power of love, even if that love is platonic,' Callidora says, nodding her head sagely. ";
		else if TwelveLaborsStage is 4:
			say "     You tell her about your hunt for the Ceryneian Hind throughout the city. 'Circe mentioned that. I don't know how I missed it. Was that when I was judging the sandcastle competition? Must have been quite the change of pace from having to beat a mythical creature to a pulp,' Callidora teases. ";
	else:
		say "     You tell her a bit more about your recent daily activities, not sparing on the details as she gives you her undivided attention. 'How do you find enough time in the day to do all this? If you've been making deals with Kronos, I'm going to have to report you,' Callidora teases. ";
	say "You haven't felt this relaxed in a while, but after a few more inconsequential topics of discussion, you accept that you've probably spent long enough idly chatting. 'Yes, I suppose you have other important places to be, people to meet, and I should get back to patrolling the beach for sea monsters and bullies. Be sure to visit me again though. I promise that I have time in between my unnecessary beauty regimen and idle matchmaking,' Cally replies when you hesitantly mention the time. Promising to do so, you watch her return the empty ice cream pots to Circe before approaching the stairs back down to the beach. 'See you later [if player is herm]hot stuff[else if player is male]sexy[else if player is female]beautiful[else]cutie[end if],' she calls before vanishing from view and leaving you to decide what to do next.";
	say "[bold type]Your sanity increases by 20![roman type][line break]";
	SanBoost 20;
	move Player to Boardwalk2;
	move Callidora to Public Beach;
	now Sunbathing Goddess is resolved;


Callidora ends here.
