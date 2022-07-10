Version 1 of Lux & Umbra by Prometheus begins here.

"Adds Lux & Umbra, the children of Fang, to the Flexible Survival game"

[ HP of Lux                           ]
[ 0 - Not yet born                    ]
[ 1 - Born - New to the world/pup     ]
[ 2 - Child                           ]
[ 3 - Teen                            ]
[ 4 - Adult - Grown                   ]
[ 5 - Adult - Had Sex                 ]

[ HP of Umbra                         ]
[ 0 - Not yet born                    ]
[ 1 - Born - New to the world/pup     ]
[ 2 - Child                           ]
[ 3 - Teen                            ]
[ 4 - Adult - Grown                   ]
[ 5 - Adult - Had Sex                 ]

[ hunger of Lux                       ]
[ 0 - No Sex Yet                      ]
[ 1 - Virginity taken by Umbra        ]
[ 2 - Virginity taken by Fang         ]
[ 3 - Virginity taken by Player       ]
[ 4 - Virginity taken by Carl         ]

[ hunger of Umbra                     ]
[ 0 - No Sex Yet                      ]
[ 1 - Virginity taken by Lux          ]
[ 2 - Virginity taken by Fang         ]
[ 3 - Virginity taken by Player       ]
[ 4 - Virginity taken by Amy          ]

[ loyalty of Lux                      ]
[ 0 - Not fully grown                 ]
[ 1 - Only just fully grown           ]

[ loyalty of Umbra                    ]
[ 0 - Not fully grown                 ]
[ 1 - Only just fully grown           ]

[ LuxUmbraMaturityCounter             ]
[ 1 - Young Adult                     ]
[ 40 - Teen                           ]
[ 80 - Child                          ]
[ 120 - Pup                           ]

[ thirst of Lux                       ]
[ 0 - No potential sexual partners    ]
[ 1+ - # of potential sexual partners ]

[ thirst of Umbra                     ]
[ 0 - No potential sexual partners    ]
[ 1+ - # of potential sexual partners ]

an everyturn rule:
	if HP of Lux > 3:
		if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			move Lux to Courtyard;
			move Umbra to Courtyard;
			if Player is in Grey Abbey Library:
				say "     [bold type]Lux and Umbra bound off towards the library courtyard, full of energy and eager to have some space to play.[roman type][line break]";
			else if Player is in Courtyard:
				say "     [bold type]Lux and Umbra bound into the courtyard and begin to chase each other excitedly.[roman type][line break]";
		[else if TimekeepingVar is 1 or TimekeepingVar is -7:] [Midnight]
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn]
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - Sleep]
			move Lux to Computer Lab;
			move Umbra to Computer Lab;
			if Player is in Courtyard:
				say "     [bold type]Lux and Umbra tiredly trot into the library, likely heading back to the computer lab to go to sleep, the dark-furred wolf leaving muddy pawprints.[roman type][line break]";
			else if Player is in COmputer Lab:
				say "     [bold type]Lux and Umbra tiredly trot into the computer lab before curling up beneath one of the desks[if Dash is visible] with Dash[end if].[roman type][line break]";
		[else if TimekeepingVar is 6 or TimekeepingVar is -2:] [mid-morning]
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			move Lux to Grey Abbey Library;
			move Umbra to Grey Abbey Library;
			if Player is in Computer Lab:
				say "     [bold type]With a yawn and a stretch, Lux and Umbra stand up and exchange a lick of greeting with Fang before the three of them pad towards the entrance way to resume guard duty.[roman type][line break]";
			else if Player is in Courtyard:
				say "     [bold type]Lux and Umbra pad over towards the entrance behind Fang and sit down beside [ObjectPro of Fang] to resume guard duty.[roman type][line break]";
		[else if TimekeepingVar is 4 or TimekeepingVar is -4:] [mid afternoon]
		[else if TimekeepingVar is 3 or TimekeepingVar is -5:] [evening]
	else if HP of Lux > 0 and Lux is not in Grey Abbey Library:
		move Lux to Grey Abbey Library;
		move Umbra to Grey Abbey Library;
	else if HP of Lux > 0:
		move Lux to Grey Abbey Library;
		move Umbra to Grey Abbey Library;

An everyturn rule:
	if LuxUmbraMaturityCounter is 80:
		now HP of Lux is 2;
		now HP of Umbra is 2;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Lux and Umbra.";
	if LuxUmbraMaturityCounter is 40:
		now HP of Lux is 3;
		now HP of Umbra is 3;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Lux and Umbra.";
	if LuxUmbraMaturityCounter is 1:
		now HP of Lux is 4;
		now HP of Umbra is 4;
		say "     A strange feeling runs through you, and you get the sense that you should perhaps check on Lux and Umbra.";
		now LuxUmbraMaturityCounter is 0;
	if LuxUmbraMaturityCounter > 1:
		decrease LuxUmbraMaturityCounter by 1;

an everyturn rule:
	if "LuxUmbra Incest Enabled" is listed in feats of player:
		remove "LuxUmbra Incest Enabled" from feats of player;
		add "LuxUmbra Incest Enabled" to traits of player;

Section 1 - Lux & Umbra

Table of GameCharacterIDs (continued)
object	name
Lux	"Lux"

Table of GameCharacterIDs (continued)
object	name
Umbra	"Umbra"

LuxUmbraMaturityCounter is a number that varies. LuxUmbraMaturityCounter is usually 0.
Lux&UmbraResidentOpinionCount is a number that varies. Lux&UmbraResidentOpinionCount is usually 0. [Does not need to be saved..]

Lux is a woman.
ScaleValue of Lux is 3. [human sized]
Body Weight of Lux is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lux is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lux is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lux is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Lux is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Lux is 5. [length in inches]
Breast Size of Lux is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Lux is 8. [count of nipples]
Asshole Depth of Lux is 8. [inches deep for anal fucking]
Asshole Tightness of Lux is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Lux is 0. [number of cocks]
Cock Girth of Lux is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Lux is 0. [length in inches]
Ball Count of Lux is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Lux is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Lux is 1. [number of cunts]
Cunt Depth of Lux is 8. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Lux is 1. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Lux is 2. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Lux is false.
PlayerRomanced of Lux is false.
PlayerFriended of Lux is false.
PlayerControlled of Lux is false.
PlayerFucked of Lux is false.
OralVirgin of Lux is true.
Virgin of Lux is true.
AnalVirgin of Lux is true.
PenileVirgin of Lux is true.
SexuallyExperienced of Lux is false.
TwistedCapacity of Lux is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Lux is false. [steriles can't knock people up]
MainInfection of Lux is "Feral Wolf Bitch".
Description of Lux is "[Luxdesc]".
Conversation of Lux is { "Bark! Woof! Woof!" }.

the scent of the Lux is "     The pale-furred lupine smells strongly of wolf, albeit a slightly feminine scent.".

to say Luxdesc:
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of Lux] <- DEBUG[line break]";
	if HP of Lux is:
		-- 1: [ Pup ]
			say "     Lux looks like a small ball of pale-gray fur, not being particularly mobile. She is most often next to her [if Fang is Male]father[else]mother[end if], Fang, who is making sure that [PosPro of Fang] newborn daughter is safe even while protecting the library. Occasionally, you may see her open her eyes, the irises a dark-gray as they absorb her surroundings. Her rare cries for attention bring a smile to your face.";
		-- 2: [ Child ]
			say "     Lux has grown since you last saw her, now about the size of a shetland sheepdog and her lush fur a pale-gray. She is surprisingly fearless for her size, rushing around after her brother, Umbra, as he explores the library more thoroughly, though Fang prevents them from leaving the building. She meets your gaze, and you can see an intelligence in her dark-gray eyes. You have seen her practice a few unstable steps on her hind legs, though she doesn't keep her balance for very long. Her vocalizations sound like attempts at words, though not recognizable to you unfortunately.";
		-- 3: [ Teen ]
			say "     Lux is now slightly larger than a border collie, her pale-gray fur helping her blend in among the shadows between the bookshelves. Fang seems to think her and her brother are old enough to explore the area just outside of the library, simultaneously keeping an eye on [PosPro of Fang] pups while standing vigil. She looks at you curiously with her dark-gray eyes as you inspect her, tilting her head in an adorable fashion. You have seen her walking on her hind legs when she doesn't think many people are watching, perhaps shy about her attempts. Her ability to talk is limited to single words at a time, easily recognizable if a bit simple.";
		-- 4: [ Young Adult ]
			if Lux is in Grey Abbey Library:
				say "     Lux patiently sits beside the door ";
				if Fang is in Grey Abbey Library:
					say "between her brother and [if Fang is Male]father[else]mother[end if], the three ";
				else:
					say "with her brother, the two ";
				say "of them snuggling together companionably. Lux is a little smaller than her sibling and her fluffy paler gray fur contrasts with his, helping her to camouflage in the city when she explores. Given that she was born before Umbra, it is little surprise that she is more senior in the pack hierarchy, though the two of them don't often express this.";
				say "     Noticing you watching her, she meets your gaze, her dark-gray eyes inquisitive, expressive, and rarely missing any movement, a trait that helps while she helps Fang keep guard. She demonstrates an intelligence higher than the feral wolves that you have encountered, possibly even her [if Fang is Male]father[else]mother[end if], and has used this mental capability to develop capabilities such as fluent speech and the ability to walk on her hind legs for extended periods. As her brother doesn't speak as often as her, she often translates his body language and other non-vocal attempts at communication. Her tail thumps against the floor as she wags at your continued attention.";
			else if Lux is in Courtyard:
				say "     Lux bounces and plays with her brother around the fountain and trees[if Fang is in Courtyard], Fang occasionally joining in when invited, the three of them enjoying this moment of family time[else], enjoying this time bonding with Umbra though the two of them seem inseparable anyway[end if]. Lux is a little smaller than her sibling and her fluffy paler gray fur contrasts with his, helping her to camouflage in the city when she explores. Given that she was born before Umbra, it is little surprise that she is more senior in the pack hierarchy, though the two of them don't often express this.";
				say "     Noticing you watching her, she halts her play and meets your gaze, her dark-gray eyes inquisitive, expressive, and rarely missing any movement, a trait that helps while she helps Fang keep guard. She demonstrates an intelligence higher than the feral wolves that you have encountered, possibly even her [if Fang is Male]father[else]mother[end if], and has used this mental capability to develop capabilities such as fluent speech and the ability to walk on her hind legs for extended periods. As her brother doesn't speak as often as her, she often translates his body language and other non-vocal attempts at communication. She gives you a friendly wag before resuming trying to grab her brother by the [one of]back leg[or]neck[or]tail[at random].";
			else if Lux is in Computer Lab:
				say "     Lux is curled up beside one of the desks with her brother";
				if Fang is in Computer Lab:
					say "and [if Fang is Male]father[else]mother[end if], the three ";
				else:
					say ", the pair ";
				say "of them snuggled together as they sleep[if Dash is in Computer Lab] along with Dash who is almost buried beneath a cloud of warm and soft wolf fur between them all[end if]. Lux is a little smaller than her sibling and her fluffy paler gray fur contrasts with his, helping her to camouflage in the city when she explores. Given that she was born before Umbra, it is little surprise that she is more senior in the pack hierarchy, though the two of them don't often express this.";
				say "     While you can't currently see them, you know that her dark-gray eyes are inquisitive, expressive, and rarely missing any movement, a trait that helps while she helps Fang keep guard. She demonstrates an intelligence higher than the feral wolves that you have encountered, possibly even her [if Fang is Male]father[else]mother[end if], and has used this mental capability to develop capabilities such as fluent speech and the ability to walk on her hind legs for extended periods. As her brother doesn't speak as often as her, she often translates his body language and other non-vocal attempts at communication. It would be a shame to disturb her when she looks so content, a wave of happiness filling you as you look at your family so close to each other.";
			else:
				say "     Lux is [if HP of Fang is 3 or HP of Fang is 4]quite a bit [else]only slightly [end if]smaller than Fang and her brother, Umbra, with fluffy, pale-gray fur that helps her camouflage in the city when she explores. She seems higher in the pack order than her brother, which given that she was born first, isn't really surprising. Her dark-gray eyes are inquisitive and expressive, rarely missing any movement. She shows an intelligence above that of the feral wolves, possibly even her [if Fang is Male]father[else]mother[end if], and is able to walk on her hind legs for extended periods of time without looking awkward. Her speech is rather fluent, only occasionally making an error. She makes use of her talent, often translating what Umbra wishes to express.";

Instead of conversing the Lux:
	if HP of Lux is:
		-- 1: [ Pup ]
			say "     Knowing that you won't be able to have a proper conversation, you content yourself with [if scalevalue of Player > 1]crouching down and [end if]rubbing her tummy. She lets out several joyful squeaks, reveling in the attention as Fang keeps an eye on the two of you and Umbra even while watching for intruders.";
		-- 2: [ Child ]
			say "     Upon greeting her, she lets out a yip of excitement and bounds joyfully around [if scalevalue of Player > 1]your legs[else]you[end if], tail wagging frantically. You [if scalevalue of Player > 1]crouch down and [end if]comment on how much she has grown, stroking her head as she nuzzles against your hand. An affectionate murmuring rumbles from her mouth as she sniffs you to see where you have been, your daughter obviously very pleased to see you. You doubt that she'll be able to hold a conversation with you yet and settle for patting her and letting her take in your scents.";
		-- 3: [ Teen ]
			say "     You express a desire to talk to her, and she eagerly sits in front of you. '[if Player is female]Mother[else]Father[end if],' she barks, pleased to show off her developing language skills. You tell her about the wider city, watching as her eyes widen as she imagines all of the creatures and occurrences that you tell her about. Having told her enough stories for now, you turn to leave, the young wolf still contemplating your tales.";
		-- 4: [ Young Adult ]
			say "     You approach your daughter, who stops grooming herself to focus her attention on you. 'Hello [if Player is female]Mother[else]Father[end if], did you have something in particular that you wanted to discuss with me?' she queries, her tail wagging wildly.";
			WaitLineBreak;
			say "[LuxTalkMenu]";

to say LuxTalkMenu:
	say "[line break]";
	say "What do you wish to discuss with Lux?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Herself";
	now sortorder entry is 1;
	now description entry is "Try to learn more about your daughter";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Family";
	now sortorder entry is 2;
	now description entry is "Ask about her thoughts on Fang and Umbra";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Other Library Residents";
	now sortorder entry is 3;
	now description entry is "Ask her and her brother about their opinions of others in the library";
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
				if (nam is "Herself"):
					say "[LuxTalk1]";
				if (nam is "Family"):
					say "[LuxTalk2]";
				if (nam is "Other Library Residents"):
					say "[LuxTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, indicating an end to the conversation. Lux lets out a slight whine before returning to what she was doing before.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LuxTalk1:
	say "     You ask her to tell you about how she views herself. You may have carried her to term, but there were times that you weren't there as she grew up. She smiles at you before replying, 'I love you very much, [if Player is female]Mum[else]Dad[end if], so you don't need to worry about the times that you were away. Umbra and I understand that you had important things to do in the city. But that wasn't what you asked, was it? You asked about me, perhaps to try and improve communication and bonding within the pack? You may have seen me reading as I grew up, and I still enjoy time inside a book, but now instead of only being able to read picture books or requiring a dictionary next to me, I can usually manage some of the more adult books. Some have particularly adult material...' she says with a blush before feeling a need to justify herself. 'I hope that you can understand. From what I've read, parents don't like to think of their children being involved in anything lewd, but this city is so drenched in the smells of sex, this library no less than anywhere else. If it isn't sending me into heat, it just makes me want to soothe myself one way or another.'";
	say "     Lux blushes again, the flush only visible on her snout. 'I should probably change subject now, shouldn't I? Before I dig my hole even deeper. Walking. Let's talk about my walking capabilities. I don't know whether you have seen [if Fang is male]Daddy [else]Mummy [end if]do so, but [SubjectPro of Fang] is capable of walking on [PosPro of Fang] hind paws for brief periods, as is my brother, but I think that I'm a bit better at it than either of them. It isn't the most comfortable posture, but I will admit that I do like to show off, whether it is by showing off my mind or displaying party tricks like walking on two legs. Even having this conversation allows me to show off and for that, I thank you,' she joyfully informs you. 'Humility can not be said to be my virtue of choice, but I doubt that many people could claim that it is. We should all have something about ourselves that we like and can show off to feel accomplished.'";
	WaitLineBreak;
	say "     'What else is there to say about me? I suppose that it might be worth telling you that I'm not the best at fighting. I can understand the theory of it, but when it comes to putting it into practice, I'm better at dodging than striking as I don't seem to be able to hit in the same way as Umbra or [if Fang is Male]Daddy[else]Mummy[end if]. I'm capable, but I won't be participating in Ragnarok any time soon. I've been reading mythology books recently, so I apologize if that went over your head. How many of the books here have you read? But back to myself. If someone else is helping me defend myself, especially if it is Umbra, then you don't need to worry about me in a fight. This bitch has fangs and claws,' she announces with a wolfish grin, exposing her glistening teeth. Your conversation over for now, you crouch and give her a tight hug, pressing your face into her soft, warm fur before standing up again and deciding what to do next.";

to say LuxTalk2:
	if IncestList is not warded and IncestList is not banned:
		say "     You are curious about Lux's opinions on Fang and Umbra and so ask her, receiving a sly smirk from her. 'So basically you want to know how I feel about other members of my family. Are you sure you don't want my opinion of you too? There's certainly some attraction there, even if you are my [if Player is female]mother[else]father[end if]. I have similar desires for [if Fang is Male]Daddy [else]Mummy [end if]and my brother. I don't know whether it is just something in the air, a genetic remnant, or whether it is just my own perversions...' You blush and tell her that this wasn't exactly what you were asking. You were more interested in more innocent opinions of them. She looks extremely embarrassed, averting her face from you and mumbling to herself. Taking a deep breath, she turns back again. 'Let's start again please and ignore my rampant hormones. You wanted to talk about my family. In a non-sexual manner. I can do that, just give me a moment to think of the words I want.'";
		say "     '[if Fang is Male]Daddy [else]Mummy [end if]might have difficulty expressing it, but [SubjectPro of Fang] is very grateful to you for giving [ObjectPro of Fang] a family again. While [SubjectPro of Fang] hasn't told me much about [PosPro of Fang] personal life before the crisis, I know that [SubjectPro of Fang] had a [if Fang is Male]wife [else]husband [end if]and daughter who left [ObjectPro of Fang], and [SubjectPro of Fang] had difficulty coping. Now [SubjectPro of Fang] gets another chance to be with people that love [ObjectPro of Fang], an important part of being human or wolf. I doubt that [SubjectPro of Fang] would be against expanding the pack a bit more, if you understand what I'm saying. While [SubjectPro of Fang] may not have the same grasp of human language as me, don't discount [PosPro of Fang] intelligence. [SubjectProCap of Fang]'s a lot more cunning and crafty than [SubjectPro of Fang] appears, a trait that [SubjectPro of Fang] has cultivated to increase [PosPro of Fang] chances of survival, though [PosPro of Fang] previous pack didn't seem to value it. What else is there to say about [ObjectPro of Fang]? I think that [if Fang is male]I'm his favorite, though don't tell Umbra I said that. He might disagree, and I wouldn't want to have to shatter that hope. What father doesn't like having a daughter to pamper and impress[else]Umbra is her favorite, but I can hardly blame her. What mother doesn't like having a son to pamper and impress[end if]?'";
		WaitLineBreak;
		say "     'Where should I start on Umbra? My brother isn't as literarily gifted as me, but, like [if Fang is Male]Daddy[else]Mummy[end if], he isn't stupid, as his combat capabilities show. He just has difficulty expressing his feelings in words. You may have noticed how affectionate he is to his family, you included. That is him showing how much he cares when your grasp of wolf communication isn't as fluent as our own. I'm so glad that he expresses his emotions so easily compared to some of the men in the books I read. Why is a lack of emotion considered an attractive trait in males so often? I think that Umbra may be more than a little enamored with you, [if Player is submissive]and considering the times he's seen you present yourself in the city, he may ask you to get to know him on a more physical level[else if Player is dominant]and he sees you as a strong role model, unafraid to say what you want, so he may want to learn from you [italic type]intimately[roman type][else]and he is impressed by how capable you are, seeing as how you have survived so well in the current situation between the roaming creatures and the invading army, so if you give him the chance, he may ask whether you would be interested in getting closer to him[end if]. When you have always been there for us, I share similar feelings towards you too,' she informs you before realizing what she has said. 'I apologize, my hormones appear to have gained control again. Please excuse me.' With that, she leaves, and you take the conversation to be over.";
		add "LuxUmbra Incest Enabled" to feats of Player;
	else:
		say "     You are curious about Lux's opinions on Fang and Umbra and so ask her, receiving a bright smile in response. '[if Fang is Male]Daddy [else]Mummy [end if]might have difficulty expressing it, but [SubjectPro of Fang] is very grateful to you for giving [ObjectPro of Fang] a family again. While [SubjectPro of Fang] hasn't told me much about [PosPro of Fang] personal life before the crisis, I know that [SubjectPro of Fang] had a [if Fang is Male]wife [else]husband [end if]and daughter who left [ObjectPro of Fang], and [SubjectPro of Fang] had difficulty coping. Now [SubjectPro of Fang] gets another chance to be with people that love [ObjectPro of Fang], an important part of being human or wolf. I doubt that [SubjectPro of Fang] would be against expanding the pack a bit more, if you understand what I'm saying. While [SubjectPro of Fang] may not have the same grasp of human language as me, don't discount [PosPro of Fang] intelligence. [SubjectProCap of Fang]'s a lot more cunning and crafty than [SubjectPro of Fang] appears, a trait that [SubjectPro of Fang] has cultivated to increase [PosPro of Fang] chances of survival, though [PosPro of Fang] previous pack didn't seem to value it. What else is there to say about [ObjectPro of Fang]? I think that [if Fang is male]I'm his favorite, though don't tell Umbra I said that. He might disagree, and I wouldn't want to have to shatter that hope. What father doesn't like having a daughter to pamper and impress[else]Umbra is her favorite, but I can hardly blame her. What mother doesn't like having a son to pamper and impress[end if]?'";
		say "     'Where should I start on Umbra? My brother isn't as literarily gifted as me, but, like [if Fang is Male]Daddy[else]Mummy[end if], he isn't stupid, as his combat capabilities show. He just has difficulty expressing his feelings in words. You may have noticed how affectionate he is to his family, you included. That is him showing how much he cares when your grasp of wolf communication isn't as fluent as our own. I'm so glad that he expresses his emotions so easily compared to some of the men in the books I read. Why is a lack of emotion considered an attractive trait in males so often? I think that Umbra may be more than a little in awe of you, and he is impressed by how capable you are, seeing as how you have survived so well in the current situation between the roaming creatures and the invading army. He may want to learn to be more like you. When you have always been there for us, I share similar admiration towards you.' She seems to be squirming slightly and you raise an eyebrow in question. She flushes deeply and hurriedly responds, 'Please excuse me, I'm getting certain feelings that should be dealt with away from family.' With that, she scurries away, leaving you mildly confused at the abrupt end to the conversation.";
		add "LuxUmbra Incest Disabled" to feats of Player;

to say LuxTalk3:
	say "     You ask the two of them whether there are any other residents of note that they wish to discuss with you. The twins think for a moment before eventually replying.";
	say "[Lux&UmbraResidentOpinion]";

to say Lux&UmbraResidentOpinion:
	if Lux&UmbraResidentOpinionCount is 3:
		say "     'I can't think of anything to say at the moment. What about you Umbra?' Lux responds before asking her brother to see whether he has anything to add. He shakes his head and you accept that this avenue of conversation isn't going anywhere for now. Perhaps ask again later. The more people you allow to live here, the more likely there will be something of interest to learn about them.";
		now Lux&UmbraResidentOpinionCount is 0;
	else:
		if a random number between 1 and 2 is:
			-- 1: [Amy]
				if Resolution of Lux & Amy Sexual Interest is 1 and Resolution of Umbra & Amy Sexual Interest is 1:
					say "     'I think that my brother and I can definitely agree that Amy is one of our favorite people in the library,' Lux cheerfully informs you, Umbra quickly nodding in agreement. 'She's pretty and nice,' he adds, dipping his head slightly almost in embarrassment. 'I have to agree,' Lux continues, 'She has a way of making you feel at ease and her fur is so well cared for. I think [if Fang is Male]Daddy [else]Mummy [end if]likes her too from the way that [SubjectPro of Fang] looks at her, [if XP of Amy is 1]not to mention how often the two of them seem to be mating. We watch the two of them sometimes and they haven't seemed to mind[else if HP of Fang is 2]but [SubjectPro of Fang] seems reluctant to discuss it with us[else if HP of Fang is 3 or HP of Fang is 4] and as Alpha [SubjectPro of Fang] could make advances on her if [SubjectPro of Fang] wished[else if HP of Fang is 5]and we occasionally sit around and discuss what we like about her, not unlike what we are doing now[end if]. She helps me with my speech from time to time and we read books together.' 'She reads to me and has a warm lap,' Umbra says wagging his tail at the thought. 'I don't talk well but understand. She help teach me.' It sounds like the two of them like Amy for multiple reasons and that she is an important part of their lives. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else if Resolution of Lux & Amy Sexual Interest is 1:
					say "     'I can definitely say that Amy is one of my favorite people in the library,' Lux cheerfully informs you, [if Resolution of Umbra & Amy Sexual Interest is 2]Umbra flattening his ears and looking away with a pained expression. Noticing her brother's reaction, the pale-furred wolf quickly apologizes to him. 'Oh. Sorry. That was tactless of me. But even though the two of you can't be together, you have to agree with me when I say that she [else]Umbra quickly nodding in agreement. 'She's nice,' he adds. 'I have to agree,' Lux continues, 'She [end if]has a way of making you feel at ease and her fur is so well cared for. I think [if Fang is Male]Daddy [else]Mummy [end if]likes her too from the way that [SubjectPro of Fang] looks at her, [if XP of Amy is 1]not to mention how often the two of them seem to be mating. We watch the two of them sometimes and they haven't seemed to mind[else if HP of Fang is 2]but [SubjectPro of Fang] seems reluctant to discuss it with us[else if HP of Fang is 3 or HP of Fang is 4] and as Alpha [SubjectPro of Fang] could make advances on her if [SubjectPro of Fang] wished[else if HP of Fang is 5]and we occasionally sit around and discuss what we like about her, not unlike what we are doing now[end if]. She helps me with my speech from time to time and we read books together.' 'She reads to me,' Umbra says rejoining the conversation. 'I don't talk well but understand. She help teach me.' It sounds like Amy plays an important part in their lives, especially in their language development. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else if Resolution of Umbra & Amy Sexual Interest is 1:
					say "     '[if Resolution of Lux & Amy Sexual Interest is 2]I'm not sure how deep my feelings are for Amy. I really like her, but I'm not sure if I [']like like['] her,' Lux hesitantly says. 'I [']like like['] her,' Umbra adds, earning a snort of laughter from his sister. 'Good for you. I wish that I had you confidence.[else]I'm rather fond of Amy, perhaps more, but either way she's one of the better people in the library,' Lux cheerfully informs you, Umbra quickly nodding in agreement. 'She's pretty and nice and one of the best,' he adds, dipping his head slightly almost in embarrassment. 'One of the best you say? That's high praise coming from you. This wouldn't have anything to do with her attraction to you would it? I wonder if there might be room for me in that relationship too,' Lux teases him. You cough to bring the conversation back on track. Continuing smirking at her brother, Lux continues, '[end if]She has a way of making you feel at ease and her fur is so well cared for. I think [if Fang is Male]Daddy [else]Mummy [end if]likes her too from the way that [SubjectPro of Fang] looks at her, [if XP of Amy is 1]not to mention how often the two of them seem to be mating. We watch the two of them sometimes and they haven't seemed to mind[else if HP of Fang is 2]but [SubjectPro of Fang] seems reluctant to discuss it with us[else if HP of Fang is 3 or HP of Fang is 4] and as Alpha [SubjectPro of Fang] could make advances on her if [SubjectPro of Fang] wished[else if HP of Fang is 5]and we occasionally sit around and discuss what we like about her, not unlike what we are doing now[end if]. She helps me with my speech from time to time and we read books together.' 'She reads to me and has a warm lap,' Umbra says wagging his tail at the thought. 'I don't talk well but understand. She help teach me.' It sounds like Amy plays an important part in their lives, especially in their language development. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else if (HP of Amy > 9 and HP of Amy < 13):
					say "     [if Resolution of Lux & Amy Sexual Interest is 2]I'm not sure how deep my feelings are for Amy. I really like her, but I'm not sure if I [']like like['] her,' Lux hesitantly says[else]I'm rather fond of Amy, perhaps more, but either way she's one of the better people in the library,' Lux cheerfully informs you[end if]. [if Resolution of Umbra & Amy Sexual Interest is 2]Umbra flattening his ears and looking away with a pained expression. Noticing her brother's reaction, the pale-furred wolf quickly apologizes to him. 'Oh. Sorry. That was tactless of me. But even though the two of you can't be together, you have to agree with me when I say that she [else]Umbra quickly nodding in agreement. 'She's nice,' he adds. 'I have to agree,' Lux continues, 'She [end if]has a way of making you feel at ease and her fur is so well cared for. I think [if Fang is Male]Daddy [else]Mummy [end if]likes her too from the way that [SubjectPro of Fang] looks at her, [if XP of Amy is 1]not to mention how often the two of them seem to be mating. We watch the two of them sometimes and they haven't seemed to mind[else if HP of Fang is 2]but [SubjectPro of Fang] seems reluctant to discuss it with us[else if HP of Fang is 3 or HP of Fang is 4] and as Alpha [SubjectPro of Fang] could make advances on her if [SubjectPro of Fang] wished[else if HP of Fang is 5]and we occasionally sit around and discuss what we like about her, not unlike what we are doing now[end if]. She helps me with my speech from time to time and we read books together.' 'She reads to me,' Umbra says rejoining the conversation. 'I don't talk well but understand. She help teach me.' It sounds like Amy plays an important part in their lives, especially in their language development. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 2: [Carl]
				if Resolution of Lux & Carl Sexual Interest is 1 and Resolution of Umbra & Carl Sexual Interest is 1:
					say "     'Carl's hot,' Umbra states, earning a roll of his sister's eyes. 'I mean, I agree, but did you have to say it so bluntly?' she asks him with exasperation. Umbra meerly shrugs and gives her a toothy grin. Lux sighs before continuing discussing the husky soldier with you. 'Carl may be attractive, with a toned body and large in all the right places, but it isn't just physical attraction, his vigilance rivals [if Fang is Male]Daddy's[else]Mummy's[end if]. Carl's dedication is admirable as is how friendly and approachable he seems to be, a trait that our [if Fang is Male]father [else]mother [end if]could probably learn from. Not that I have a problem with [if Fang is Male]Daddy[else]Mummy[end if]. If everyone was the same it would be dull[if HP of Fang is 5], a belief that I believe that [SubjectPro of Fang] shares too[end if].' 'I help,' Umbra firmly adds. 'Yes. Umbra likes to help Carl keep watch from time to time and I suppose I occasionally do too, but I'm not sure how much help we are. He greets us with a smile either way,' Lux elaborates. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else if Resolution of Lux & Carl Sexual Interest is 1:
					say "     'Carl and I have been getting to know each other a little better, [if Resolution of Umbra & Carl Sexual Interest is 2]but that's sort of a sore point for Umbra as Carl doesn't seem to be interested in him,' Lux informs you, her brother letting out a grouchy snort and nosing at your hand to get you to pat him[else]but I think that Umbra is jealous,' Lux informs you, her brother all but confirming the statement with a sour grumble before nosing at your hand to pet him[end if]. You idly do so as your daughter continues. 'If my brother will excuse me continuing to answer your question, Carl is quite the example of masculine desirability with a toned body and large in all the right places, but it isn't just physical attraction, his vigilance rivals [if Fang is Male]Daddy's[else]Mummy's[end if]. Carl's dedication is admirable as is how friendly and approachable he seems to be, a trait that our [if Fang is Male]father [else]mother [end if]could probably learn from. Not that I have a problem with [if Fang is Male]Daddy[else]Mummy[end if]. If everyone was the same it would be dull[if HP of Fang is 5], a belief that I believe that [SubjectPro of Fang] shares too[end if].' 'I help,' Umbra firmly adds. 'Yes. Umbra likes to help Carl keep watch from time to time and I suppose I occasionally do too, but I'm not sure how much help we are. He greets us with a smile either way,' Lux elaborates. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else if Resolution of Umbra & Carl Sexual Interest is 1:
					say "     'Carl's hot,' Umbra states, [if Resolution of Lux & Carl Sexual Interest is 2]earning a sour look from his sister. 'Rub it in why don't you... I mean, I agree, but he rejected me,' she mutters causing Umbra's ears to flatten at the hurt in her voice. Lux sighs sadly before putting on a brave face to continue discussing the husky soldier with you[else]earning a roll of his sister's eyes. 'I mean, I agree, but he doesn't know that yet and you never know who is listening?' she almost hisses at him exasperatedly. Umbra merely shrugs and gives her a toothy grin. Lux sighs before continuing discussing the husky soldier with you[end if]. 'Carl may be attractive, with a toned body and large in all the right places, so you understand [if Resolution of Lux & Carl Sexual Interest is 2]my pain at rejection[else] my attraction[end if], but his vigilance rivals [if Fang is Male]Daddy's[else]Mummy's[end if]. Carl's dedication is admirable as is how friendly and approachable he seems to be, a trait that our [if Fang is Male]father [else]mother [end if]could probably learn from. Not that I have a problem with [if Fang is Male]Daddy[else]Mummy[end if]. If everyone was the same it would be dull[if HP of Fang is 5], a belief that I believe that [SubjectPro of Fang] shares too[end if].' 'I help,' Umbra firmly adds. 'Yes. Umbra likes to help Carl keep watch from time to time and I suppose I occasionally do too, but I'm not sure how much help we are. He greets us with a smile either way,' Lux elaborates. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else if HP of Carl is 10: [Confident Carl]
					say "     'Carl's hot,' Umbra states before his sister shushes him. 'I agree, but he doesn't know that yet and you don't have to say it so bluntly,' she hisses at him, fixing him with a stern glare. Umbra rolls his eyes but holds his tongue from further comment anyway. Lux sighs before continuing discussing the husky soldier with you. 'Carl may be attractive, with a toned body and large in all the right places, so you understand our attraction, but his vigilance rivals [if Fang is Male]Daddy's[else]Mummy's[end if]. Carl's dedication is admirable as is how friendly and approachable he seems to be, a trait that our [if Fang is Male]father [else]mother [end if]could probably learn from. Not that I have a problem with [if Fang is Male]Daddy[else]Mummy[end if]. If everyone was the same it would be dull[if HP of Fang is 5], a belief that I believe that [SubjectPro of Fang] shares too[end if].' 'I help,' Umbra firmly adds. 'Yes. Umbra likes to help Carl keep watch from time to time and I suppose I occasionally do too, but I'm not sure how much help we are. He greets us with a smile either way,' Lux elaborates. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else if HP of Carl is 30: [Subby Carl]
					say "     'Carl is broken,' Umbra states sadly before his sister shushes him. 'Not so loud. I agree, but it seems a hurtful thing to say, especially if he overhears you saying it,' she whispers. Umbra hangs his head ashamedly until, feeling sorry for him, you scritch the fur on the back of his neck to cheer him up again. 'It's sad. I don't know what happened to him before he came here, but Carl seems to be a shell of who he should be. He lacks confidence and seems submissive to everyone despite the drive and confidence that one would expect from a soldier,' Lux continues in a hushed tone, eyes darting around to make sure that the husky doesn't overhear. 'He is upstairs. By the window. Relax,' Umbra reassures her, demonstrating the capability of his animalistic senses. Your daughter lets out a relieved breath before resuming speaking. 'Despite this, he seems remarkably vigilant, almost as much as [if Fang is Male]Daddy [else]Mummy [end if]is, which suggests that he still uses some of his old training.' 'I help,' Umbra firmly adds. 'Yes. Umbra likes to help Carl keep watch from time to time and I suppose I occasionally do too. He greets us as he does anyone, with a smile, but I'm not sure how much help we actually are,' Lux elaborates. You ruffle the fur on their heads and thank them for their opinion as they wait to see whether there was anything else that you wanted.";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			[-- 3: [Sarah]
				if SarahCured > 1: [In Control]
					say "     ";
				else if SarahSlut > 1: [Horny]
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 4: [Colleen]
				if ColleenAlpha > 0: [Dominant]
					say "     ";
				else if ColleenSlut is 1: [Slutty, No Collar]
					say "     ";
				else if ColleenCollared is 1: [Slutty, Collar]
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 5: [Sidney]
				if level of Sidney is 21: [Fox]
					say "     ";
				else if level of Sidney is 22 or level of Sidney is 23: [Otter]
					say "     ";
				else if level of Sidney is 71: [Wusky]
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 6: [Sven]
				if hp of Sven > 3 and hp of Sven < 11: [Subby]
					say "     ";
				else if hp of Sven > 29 and hp of Sven < 50: [Confident]
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 7: [Klauz]
				if Klauz is Tamed:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 8: [Sandra]
				if hp of Sandra > 0: [At Library]
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
				say "     ";
			-- 9: [Alexandra]
				if hunger of Alexandra is 1: [Good Alexandra]
					say "     ";
				else if hp of Alexandra > 0 and hp of Alexandra < 50: [Bad Alexandra]
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 10: [Korvin]
				if GSD_pet > 19 and GSD_pet < 60: [Subby Korvin]
					say "     ";
				else if GSD_pet > 59 and GSD_pet < 100: [Confident Korvin]
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 11: [Xerxes]
				if hp of Xerxes > 0:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 12: [Helen]
				if hp of Helen > 0:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 13: [Candy]
				if coonstatus is 2:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 14: [Elijah]
				if hp of Elijah is 3 or hp of Elijah is 4:
					say "     ";
				else if hp of Elijah is 99:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 15: [Eric]
				if hp of Eric > 9 and hp of Eric < 16: [Cuntboy]
					say "     ";
				else if hp of Eric > 20 and hp of Eric < 43: [Male]
					say "     ";
				else if hp of Eric is 99:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 16: [Dash]
				if dash is tamed:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 17: [Jimmy]
				if hunger of Jimmy is 1:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 18: [Ryousei]
				if Ryousei is tamed:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 19: [Tehuantl]
				if hp of Tehuantl > 9 and hp of Tehuantl < 50: [Female]
					say "     ";
				else if hp of Tehuantl > 49 and hp of Tehuantl < 100: [Male]
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";
			-- 20: [Paula]
				if hunger of Paula is 1:
					say "     ";
				else:
					increase Lux&UmbraResidentOpinionCount by 1;
					say "[Lux&UmbraResidentOpinion]";]

Umbra is a man.
ScaleValue of Umbra is 3. [human sized]
Body Weight of Umbra is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Umbra is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Umbra is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Umbra is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Umbra is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Umbra is 6. [length in inches]
Breast Size of Umbra is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Umbra is 8. [count of nipples]
Asshole Depth of Umbra is 8. [inches deep for anal fucking]
Asshole Tightness of Umbra is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Umbra is 1. [number of cocks]
Cock Girth of Umbra is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Umbra is 8. [8 Inches]
Ball Count of Umbra is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Umbra is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Umbra is 0. [number of cunts]
Cunt Depth of Umbra is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Umbra is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Umbra is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Umbra is false.
PlayerRomanced of Umbra is false.
PlayerFriended of Umbra is false.
PlayerControlled of Umbra is false.
PlayerFucked of Umbra is false.
OralVirgin of Umbra is true.
Virgin of Umbra is true.
AnalVirgin of Umbra is true.
PenileVirgin of Umbra is true.
SexuallyExperienced of Umbra is false.
TwistedCapacity of Umbra is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Umbra is false. [steriles can't knock people up]
MainInfection of Umbra is "Feral Wolf Male".
Description of Umbra is "[Umbradesc]".
Conversation of Umbra is { "Bark! Woof! Woof!" }.
the scent of the Umbra is "     The dark-furred wolf smells rather masculine and wolfy, his musk obvious to the nose.".

to say Umbradesc:
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of Umbra] <- DEBUG[line break]";
	if HP of Umbra is:
		-- 1: [ Pup ]
			say "     Umbra looks like a small fluffy ball of dark-gray fur, not being particularly mobile. He is usually stumbling blindly around on the floor near his [if Fang is Male]father[else]mother[end if], Fang making sure that [PosPro of Fang] newborn son is safe even while protecting the library. Occasionally, you may see him open his eyes, the green orbs taking in whatever obstacle has impeded his exploration. His rare vocalizations bring a smile to your face.";
		-- 2: [ Child ]
			say "     Umbra has grown since you last saw him, now slightly larger than a shetland sheepdog and covered in thick, dark-gray fur. He is surprisingly fearless for his size, rushing around the library while being pursued by his sister, Lux, as they explore, though Fang prevents them from leaving the building. He meets your gaze, and you can see how much he cares about you, and probably the rest of his family, in his bright-green eyes. You have seen him sizing up creatures he spies while keeping his [if Fang is Male]father [else]mother [end if]company despite how young he is, gauging how much of a threat that they might pose. His vocalizations sound like attempts at words, though not recognizable to you unfortunately.";
		-- 3: [ Teen ]
			say "     Umbra is now similar in height to Fang, and you doubt that he has finished growing, his dark-gray fur helping him stalk among the shadows between the bookshelves. Fang seems to think he and his sister are old enough to explore the area just outside the library, simultaneously keeping an eye on [PosPro of Fang] pups while standing vigil. He looks at you caringly with his green eyes as you inspect him, tilting his head in an adorable fashion and licking his nose. You have seen him get into the occasional fight with creatures that get too close to the library, the young wolf rather nimble for his size. His ability to talk is limited to single words at a time, easily recognizable if a bit simple.";
		-- 4: [ Young Adult ]
			if Umbra is in Grey Abbey Library:
				say "     Umbra vigilantly sits beside the door [if Fang is in Grey Abbey Library]with he and Fang either side of his sister, Lux, the three [else]along with his sister, the two [end if]of them snuggled together companionably. Umbra is[if HP of Fang is 3 or HP of Fang is 4], to your surprise, slightly [else if HP of Fang is 2] noticeably [else] only slightly [end if]larger than his [if Fang is Male]father[else]mother[end if], though he submits without hesitation to Fang when expected to. His lush darker gray fur contrasts with that of his sister, helping him to camouflage in the city when he explores and reduces any harm that comes to him should his agility not be enough. Despite his larger size, he is junior in the pack hierarchy compared to Lux, being younger than his twin likely playing into this, viewing himself as a guardian of the library in a similar manner to his [if Fang is Male]father[else]mother[end if].";
				say "     Noticing you observing him, he meets your gaze, his emerald-green eyes keen and expressive, constantly analyzing his surrounds and any adversary in order to predict their actions. While not as mentally gifted as his sister, Umbra seems more in tune with his instincts, allowing him to react without needing to think while still making use of his capability to learn and adapt to overcome challenges, including balancing on his hind legs when he needs to. He is also much less vocally articulate than Lux, relying on her to translate his body language and other attempts at communication when he can't get the point across. He gives you a friendly wag at your continued attention.";
			else if Umbra is in Courtyard:
				say "     Umbra vigilantly sits beside the door [if Fang is in Grey Abbey Library]with he and Fang either side of his sister, Lux, the three [else]along with his sister, the two [end if]of them snuggled together companionably. Umbra is[if HP of Fang is 3 or HP of Fang is 4], to your surprise, slightly [else if HP of Fang is 2] noticeably [else] only slightly [end if]larger than his [if Fang is Male]father[else]mother[end if], though he submits without hesitation to Fang when expected to. His lush darker gray fur contrasts with that of his sister, helping him to camouflage in the city when he explores and reduces any harm that comes to him should his agility not be enough. Despite his larger size, he is junior in the pack hierarchy compared to Lux, being younger than his twin likely playing into this, viewing himself as a guardian of the library in a similar manner to his [if Fang is Male]father[else]mother[end if].";
				say "     Noticing you observing him, he meets your gaze, his emerald-green eyes keen and expressive, constantly analyzing his surrounds and any adversary in order to predict their actions. While not as mentally gifted as his sister, Umbra seems more in tune with his instincts, allowing him to react without needing to think while still making use of his capability to learn and adapt to overcome challenges, including balancing on his hind legs when he needs to. He is also much less vocally articulate than Lux, relying on her to translate his body language and other attempts at communication when he can't get the point across. He gives you a friendly wag at your continued attention.";
			else if Umbra is in Computer Lab:
				say "     Umbra is curled up beside one of the desks with his sister";
				if Fang is in Computer Lab:
					say " and [if Fang is Male]father[else]mother[end if], the three ";
				else:
					say ", the pair ";
				say "of them snuggled together as they sleep[if Dash is in Computer Lab] along with Dash who is almost buried beneath a cloud of warm and soft wolf fur between them all[end if]. Umbra is[if HP of Fang is 3 or HP of Fang is 4], to your surprise, slightly [else if HP of Fang is 2] noticeably [else] only slightly [end if]larger than his [if Fang is Male]father[else]mother[end if], though he submits without hesitation to Fang when expected to. His lush darker gray fur contrasts with that of his sister, helping him to camouflage in the city when he explores and reduces any harm that comes to him should his agility not be enough. Despite his larger size, he is junior in the pack hierarchy compared to Lux, being younger than his twin likely playing into this, viewing himself as a guardian of the library in a similar manner to his [if Fang is Male]father[else]mother[end if].";
				say "     While you can't currently see them, you know that his emerald-green eyes are keen and expressive, constantly analyzing his surrounds and any adversary in order to predict their actions. While not as mentally gifted as his sister, Umbra seems more in tune with his instincts, allowing him to react without needing to think while still making use of his capability to learn and adapt to overcome challenges, including balancing on his hind legs when he needs to. He is also much less vocally articulate than Lux, relying on her to translate his body language and other attempts at communication when he can't get the point across. It would be a shame to disturb him when he looks so content, a wave of happiness filling you as you look at your family so close to each other.";
			else:
				say "     Umbra is[if HP of Fang is 3 or HP of Fang is 4], to your surprise, slightly [else if HP of Fang is 2] noticeably [else] only slightly [end if]larger than Fang, though he submits without hesitation to his [if Fang is Male]father [else]mother [end if]when expected to. His lush, dark-gray fur helps him camouflage in the city when he explores and reduces any harm that comes to him should his agility not be enough. He views himself as being below you, Fang, and Lux in the pack, though above everyone else, acting as a guardian in similar fashion to his [if Fang is Male]father[else]mother[end if]. His green eyes are keen and expressive, analyzing any adversaries and predicting their actions. He shows an intelligence similar to that of his [if Fang is Male]father[else]mother[end if], able to walk on his hind legs when necessary. His speech is still limited, though he seems to be able to get the message across without any confusion when necessary.";

Instead of conversing the Umbra:
	if HP of Umbra is:
		-- 1: [ Pup ]
			say "     Knowing that you won't be able to have a proper conversation, you content yourself with [if scalevalue of Player > 1]crouching down and [end if]rubbing his tummy. He lets out an appreciative growl, reveling in the attention as Fang keeps an eye on the two of you and Lux even while watching for intruders.";
		-- 2: [ Child ]
			say "     Upon greeting him, he lets out a bark of excitement and bounds joyfully around [if scalevalue of Player > 1]your legs[else]you[end if], tail wagging frantically. You [if scalevalue of Player > 1]crouch down and [end if]comment on how much he has grown, stroking his head as he nuzzles against your hand. An affectionate murmuring rumbles from his mouth as he sniffs you to see where you have been, your son obviously very pleased to see you. You doubt that he'll be able to hold a conversation with you yet and settle for patting him and letting him take in your scent.";
		-- 3: [ Teen ]
			say "     You express a desire to talk to him, and he eagerly sits in front of you. '[if Player is female]Mother[else]Father[end if],' he barks, pleased to show off his developing language skills. You tell him about the wider city, watching as his eyes widen as he imagines all of the creatures and how you overcame, or failed to overcome them. Having told him enough stories for now, you turn to leave, the young wolf still contemplating your tales.";
		-- 4: [ Young Adult ]
			say "     You approach your son, who stops patrolling the bookshelves to focus his attention on you. He seems pleased to see you, his tail wagging wildly as he waits for what you want to speak with him about.";
			WaitLineBreak;
			say "[UmbraTalkMenu]";

to say UmbraTalkMenu:
	say "[line break]";
	say "What do you wish to discuss with Umbra?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Scavenging";
	now sortorder entry is 1;
	now description entry is "Ask whether he has found anything of interest while out in the city";
	[]
	[choose a blank row in table of fucking options;
	now title entry is "Small Talk";
	now sortorder entry is 2;
	now description entry is "Make idle conversation";]
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
				if (nam is "Scavenging"):
					say "[UmbraTalk1]";
				[if (nam is "Small Talk"):
					say "[UmbraTalk2]";]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, indicating an end to the conversation. Umbra lets out a disappointed whine before returning to what he was doing before.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say UmbraTalk1: [An easy way of getting food and water (or soda and chips if the player has Junkfood feat)]
	say "     Somehow doubting that Lux and Umbra spend all of their time in the library while you are absent and exploring the city, you crouch in front of your son and stroke his head as you ask whether he has found anything of use in one of their excursions. He perks his ears up at this before [if player is in Computer Lab]scrabbling under the arrangement of desks that he and his sister use for a den[else]rushing off towards the computer lab[end if], eventually returning with ";
	if a random number between 1 and 4 is:
		-- 1: [Food or Chips]
			if "Junk Food Junkie" is listed in feats of player:
				say "a bag of chips. It seems to be in good condition and well within the expiration date so you find a space in your packpack to put it for if you need a snack while exploring the city. Umbra seems very pleased with himself for finding something of use to you and his tail wags even faster when you start to scratch his chin and coo what a good boy he is. Lux looks over at the attention that her brother is getting and almost shyly approaches as if to hint that she too would like to be petted, a desire that you readily fulfil, feeling the thickness of her coat of fur as you ruffle the fur on the back of her neck. Unfortunately, you must eventually stop but you reassure your children that you will continue lavishing them with love soon.";
				ItemGain chips by 1;
			else:
				say "a can of soup. It is in surprisingly good condition and nowhere near its expiration date so you don't see any problem with putting it in your backpack for later. Umbra seems very pleased with himself for finding something of use to you and his tail wags even faster when you start to scratch his chin and coo what a good boy he is. Lux looks over at the attention that her brother is getting and almost shyly approaches as if to hint that she too would like to be petted, a desire that you readily fulfil, feeling the thickness of her coat of fur as you run your hands through it as you stroke her. Unfortunately, you must eventually stop but you reassure your children that you will continue lavishing them with love soon.";
				ItemGain food by 1;
		-- 2: [Water or Soda]
			if "Junk Food Junkie" is listed in feats of player:
				say "can of soda. The metal is unblemished making you wonder where your son even found it not to mention how he managed to carry it without crushing it at all. Impressed by his find, you slide it into your backpack then begin scratching the thick fur of Umbra's chest, eliciting a low whine of pleasure from the wolf. Lux looks up from where she was lying and approaches you, slowly wagging her tail and licking around her mouth before snuggling up next to you as well. With a wolf on each arm, you relax between them, gently petting them and enjoying some quiet time with your children. Eventually, you decide that you should be getting back to your other responsibilities, giving the twins a kiss on the nose as you leave.";
				ItemGain soda by 1;
			else:
				say "bottle of water. Surprisingly, the liquid is completely clear and the seal is unbroken meaning that in all likelihood, the water is still safe to drink. Impressed by his find, you slide it into your backpack then begin scratching the thick fur of Umbra's chest, eliciting a low whine of pleasure from the wolf. Lux looks up from where she was lying and approaches you, slowly wagging her tail and licking around her mouth before snuggling up next to you as well. With a wolf on each arm, you relax between them, gently petting them and enjoying some quiet time with your children. Eventually, you decide that you should be getting back to your other responsibilities, giving the twins a kiss on the nose as you stand up to leave.";
				ItemGain water bottle by 1;
		-- 3: [A Tennis Ball]
			say "a tennis ball. It looks like any other tennis ball that you've seen, but from the way Umbra is enthusiastically squeezing it between his teeth suggests that he thinks that it is a contender for the best thing since sliced bread. You can't help but find it endearing, scratching him between the ears while making a few mock attempts to take the ball from his mouth, though each time your hand approaches it he twists away with a smug expression. The obsession with the ball doesn't seem exclusive to Umbra as soon Lux pads over and stares intently at the fuzzy yellowy-green sphere in his mouth. You roll your eyes at your children's antics, but smile as you bring them both in for a group hug, your daughter making a tentative (unsuccessful) attempt to coax the ball out of her brother's mouth as he softly growls at her. As you release them, Umbra drops the ball into your hand, giving you the prized object, both wolves watching as you stash it in your backpack for should you ever need it. With one last pat, you stand up and decide what to do next.";
			ItemGain tennis ball by 1;
		-- 4: [Panties]
			say "a pair of frilly pink panties. You take a second longer look to make sure that you have seen correctly, that the wolf has indeed got a pair of ladies underwear in his mouth, but come to the same conclusion that you did before. He has. He seems rather proud of himself, enthusiastically wagging and bouncing from one paw to the other as he deposits the garment in your hand then sitting back and smiling widely as best as he can. His excitement causes, Lux to trot over, your daughter curiously sniffing the panties before giving them a single lick and pressing herself against your side to encourage you to stroke her. With a sigh, you thank Umbra for bringing them to you and stuff them into your backpack then devote you attention to cuddling the two of them at the same time, receiving lots of licks and smooches in return. Eventually, face sodden with wolf saliva, you are able to leave again, conscious of the fact that you have an unknown person's underwear in your backpack.";
			ItemGain pink panties by 1;

[to say UmbraTalk2: [Will be expanded upon further in future]
	say "     You crouch down and scratch Umbra behind the ears as you begin to tell him about "; [Will likely be the player telling him about various specific adventures]
	if a random number between 1 and 3 is:
		-- 1: [Urban Forest]
			say "the Urban Forest, where you first met Fang. He is captivated as you describe some of the creatures that now live there such as the skunks, elves, and, of course the wolves.";
		-- 2: [Zephyr]
			say "";
		-- 3: [Military Presence]
			say "";]

Section 2 - Sex


Section 3 - Growing Up Events

[Puppy]
an everyturn rule:
	if HP of Lux is 1 and HP of Umbra is 1 and Fang is visible and Lux is visible and Umbra is visible:
		if a random chance of 1 in 2 succeeds:
			if a random number between 1 and 4 is:
				-- 1: [ Fang keeping Klauz away from puppies ] [or Lux and Umbra playing]
					if Klauz is booked:
						say "     Walking between the bookshelves, you hear a low growl from near the entrance. Concerned over what has Fang reacting in such a manner, you break into a run to aid the lupine protector. As you round the corner, you see Lux and Umbra peeking out from beneath Fang as [SubjectPro of Fang] crouches protectively over them, teeth bared at the Felinoid. Klauz doesn't seem to be taking this behavior from his rival very well and looks ready to get into a fight over it. Despite his larger size, you doubt that it is a contest that the felinoid will win when Fang is guarding [PosPro of Fang] children, giving [ObjectPro of Fang] even more reason to come out on top. Klauz crouches down, readying himself to leap, while Fang lets out another snarl, saliva dripping from [PosPro of Fang] exposed canines.";
						say "     You hastily intervene, the welfare of your children more important to you than any wish to finally settle this feud once and for all. Klauz looks up upon hearing you approach and makes a show of pretending that he wasn't just about to attack a protective [if Fang is Male]father [else]mother [end if]next to [PosPro of Fang] children, slinking away into another area of the library. The felinoid gone, Fang lies down beside [PosPro of Fang] pups and begins to wash them lovingly, Lux and Umbra scrambling around [ObjectPro of Fang], their tails wagging wildly, seemingly displaying gratitude for being protected from the big bad cat. Glad that the situation ended well, you wander off, hoping that it was just a misunderstanding rather than Klauz planning anything against the wolf pups.";
					else:
						say "     Wanting to spend time with Fang and [PosPro of Fang] pups, you make your way over to [ObjectPro of Fang], your [if HP of Fang is 3 or HP of Fang is 4]Alpha [else if HP of Fang is 2]subordinate [else]mate [end if]keeping half an eye on the world outside while most of [PosPro of Fang] attention is focused on Lux and Umbra who are busy playing together. You settle down next to [ObjectPro of Fang] and watch your children, resting your head against [PosPro of Fang] side and inhaling [PosPro of Fang] settling musk, receiving an affectionate lick in greeting. You take this chance to observe the similarities and differences between the two infant wolves as they leap about letting out yips and excited squeaks. Lux is slightly smaller than her brother and has pale-gray fur as opposed to Umbra's dark-gray fur which is more similar to his [if Fang is Male]father's[else]mother's[end if]. He seems to be trying not to collide with his smaller sister too much a behavior that she has noticed. Seemingly annoyed about being treated as fragile, the ball of pale fur charges into her brother's side, sending him sprawling on the floor.";
						say "     Fang doesn't seem concerned so you wait for how Umbra will react. He regains his feet nearly immediately and hurtles back towards Lux and knocks her over in return, mouthing wetly at the fluff of her neck. Now that she has shown that she can give as good as she gets, the two pups continue their rough play, not quite play-fighting but definitely not concerned about physical contact in their game. You look at Fang's face and you are sure that you see a look of melancholy for a moment before pride and happiness overwhelm it, the majestic wolf surrounded by [PosPro of Fang] favorite people. You snuggle up against [ObjectPro of Fang] and content yourself to watch the children play.";
				-- 2: [ Umbra chasing a moth ]
					say "     As you look over to see how Fang and the children are, you spy Umbra bouncing about after a moth, trying to catch it. He has yet to succeed, seemingly doing it out of enjoyment rather than a desire to actually catch it. You chuckle to yourself at the simple pleasure that the pursuit seems to grant the young wolf and lean against one of the bookshelves to continue watching. You aren't the only one doing so either, with both Fang and Lux following Umbra's hunt with interest, their [if Fang is Male]father [else]mother [end if]likely gauging [PosPro of Fang] son's capabilities. Eventually the moth settles on a stack of books, fluttering its wings as it rests for a moment. The dark-furred wolf takes advantage of this to ready a pounce, his rear shaking in preparation before he propels himself through the air and into the side of the stack, spilling the books across the floor and startling the moth back into flight. Umbra scrabbles to his feet and continues his private game, the moth either enjoying it too or too simple to consider fluttering upwards or out through the door. You decide to leave your son in peace and begin to walk away again. Now you just have to remember what you were doing before...";
				-- 3: [ Lux looking at a picture book ]
					say "     Looking towards Fang, you are surprised to see that Lux isn't next to [ObjectPro of Fang]. Only Umbra is asleep underneath the large wolf. Noting the lack of concern from Fang, you guess that [SubjectPro of Fang] knows exactly where [PosPro of Fang] daughter is and start to wander around the library to find her, curious as to where she has gone. It doesn't take you long to locate her, the pale-furred wolf staring at an open picture book lying on the floor. Here eyes are wide, absorbing the bright colors of the image in front of her, a cartoonish wolf sitting beside a fox in a forest. She looks up at you and wags her tail, letting out a pleading whine and nosing the book. Gathering that she would like you to read it to her, you settle on the floor beside her and pick it up and look at the title, 'The Littlest Wolf', before starting at the beginning.";
					say "     She listens raptly as you read about a wolf who is smaller than all her brothers and sisters and who prefers to befriend the other forest animals rather than play rough and tumble with her siblings. By the end of the book the wolf has convinced the rest of her family that the other animals of the forest are good company, and her siblings have convinced her that playing with other wolves is fun too. Closing the book, you see that Fang and Umbra came to listen too, the book so engrossing that you didn't notice the other wolf pup sit next to his sister looking at the pictures. A feeling of contentment fills you as you relax with your family.";
				-- 4: [ Lux and Umbra playing beneath their father/mother]
					say "     Wanting to spend time with Fang and [PosPro of Fang] pups, you make your way over to [ObjectPro of Fang], your [if HP of Fang is 3 or HP of Fang is 4]Alpha [else if HP of Fang is 2]subordinate [else]mate [end if]keeping half an eye on the world outside while most of [PosPro of Fang] attention is focused on Lux and Umbra who are busy playing together. You settle down next to [ObjectPro of Fang] and watch your children, resting your head against [PosPro of Fang] side and inhaling [PosPro of Fang] settling musk, receiving an affectionate lick in greeting. You take this chance to observe the similarities and differences between the two infant wolves as they leap about letting out yips and excited squeaks. Lux is slightly smaller than her brother and has pale-gray fur as opposed to Umbra's dark-gray fur which is more similar to his [if Fang is Male]father's[else]mother's [end if]. He seems to be trying not to collide with his smaller sister too much a behavior that she has noticed. Seemingly annoyed about being treated as fragile, the ball of pale fur charges into her brother's side, sending him sprawling on the floor.";
					say "     Fang doesn't seem concerned so you wait for how Umbra will react. He regains his feet nearly immediately and hurtles back towards Lux and knocks her over in return, mouthing wetly at the fluff of her neck. Now that she has shown that she can give as good as she gets, the two pups continue their rough play, not quite play-fighting but definitely not concerned about physical contact in their game. You look at Fang's face and you are sure that you see a look of melancholy for a moment before pride and happiness overwhelm it, the majestic wolf surrounded by [PosPro of Fang] favorite people. You snuggle up against [ObjectPro of Fang] and content yourself to watch the children play.";

[Child]
an everyturn rule:
	if HP of Lux is 2 and HP of Umbra is 2 and Fang is booked and Fang is visible and Lux is visible and Umbra is visible:
		if a random chance of 1 in 2 succeeds:
			if a random number between 1 and 4 is:
				-- 1: [ Fang keeping the children in the library ]
					say "     Wondering how Lux and Umbra are, you decide to pay them a visit, walking towards the entrance to the library. They are larger than they used to be, and much more mobile, a problem you find that Fang seems to be dealing with as you near the front door. Both the children, perhaps bored of being stuck inside, seem to be trying to get past their [if Fang is Male]father [else]mother [end if]and see what the outside world is like, a desire Fang is determinedly obstructing bodily. As Umbra attempts to dart behind [ObjectPro of Fang], [SubjectPro of Fang] spins around and lightly nips him, sending scuttling back with a squeak. Lux tries to take advantage of her brother's diversion and begins to slip beneath her [if Fang is Male]father's [else]mother's [end if]chest but [SubjectPro of Fang] takes a step back and pins her under one paw. 'Stay,' you hear Fang growl before releasing [PosPro of Fang] daughter to go back and sulk with her equally outwitted brother.";
					say "     This attempt thoroughly quashed, Fang is able to return to [PosPro of Fang] duty of guarding the library, though you doubt that this will be their final attempt. Seeming to feel sorry for disappointing [PosPro of Fang] childrens['] desire, the larger wolf settles down and begins to snuffle and lick them, a quiet conversation of rumbles and murmurs between them as they display their affection for each other. You decide to leave them to it, not wanting to interrupt their moment, even though they would likely welcome you joining them too.";
				-- 2: [ Umbra watching a Gryphon get chased off by a wyvern ]
					say "     As you walk around the library, you see Fang and [PosPro of Fang] children by the front door. Lux is curled in a ball, fast asleep occasionally letting out a yip in response to something in her dream. Fang as usual is on guard, focused on watching the outside world for threats or anything else that may require your attention. Umbra seems to be assisting [ObjectPro of Fang], the young wolf looking to be a mirror of his [if Fang is Male]father's [else]mother's [end if]stance, though quite a bit smaller, as they watch the movements outside together. Approaching them, you see that they aren't merely keeping watch, but observing a display of predatory superiority as one of the gryphons that you see so often is under attack by a wyvern, the difference in combat capability nearly as great as the difference in size. While Fang seems content to just watch and make sure that neither approaches [PosPro of Fang] den, looking at Umbra, his eyes seem to be following both of the combatants['] movements and tactics.";
					say "     The gryphon seems to be well aware that it stands little chance fighting the wyvern head on, focusing its energies on trying to dodge the larger beast's swipes while looking for an opening of escape. The wyvern in contrast knows that this confrontation is of no danger to them and contents themself with toying with their adversary, displaying its dominance rather than trying to inflict harm. Both of their tactics could potentially be useful, the knowledge of when to try and evade attacks, when to strike, and when to intimidate your opponent rather than harm them. The gryphon finally sees their chance as one of the wyvern's wings brushes a roof, unbalancing it, and with a desperate flap of its own feathery wings, the gryphon flees, the wyvern flying in pursuit a moment later. The excitement over, you ruffle the fur on Umbra's head, hoping that he learnt the same lessons from the conflict as you. He seems to be deep in thought so you leave him to it, deciding what to do next.";
				-- 3: [ Lux learning from Amy ] [or Learning with mother]
					if (HP of Amy > 9 and HP of Amy < 13):
						say "     While walking around the library, you come across Lux lightly holding a book between her teeth and follow her as she weaves between the shelves. It doesn't take her long to reach her destination, Amy. You are slightly surprised that Lux has chosen her as company, but when she drops the book into the husky's hand and sits down beside her as she opens the book, you realize that she is getting help with her reading and who better than someone who taught themself to read as they grew up under similar circumstances. Not feeling the need to remain hidden considering they can probably both smell or hear you, you approach the two of them and sit and listen to Amy read 'Little Red Riding Hood'. You can see your daughter's eyes following the words on the page as they are spoken aloud, a rogue thought imagining her memorizing the appearance and pronunciation for future reference, though you mostly dismiss this as farfetched, she's more likely to be looking at the pictures.";
						say "     As Amy describes the wolf being fed salty water to make him regurgitate the grandmother, Lux snuggles up against you, trusting you to protect her from such a barbaric trick. You return her affection, stroking her ears and whispering reassurances. It would seem that the book is an extended version of 'Little Red Riding Hood' as it seems to be in chapters and Amy continues even after the Woodsman has rescued the grandmother, detailing Little Red Riding Hoods other adventures often involving the wolf being a villain in one way or another. Lux doesn't seem to appreciate a wolf being in this role and Amy, seeing that she isn't enjoying it much, doesn't take long to close the book. 'There are likely other books with wolves in more benevolent roles in the library if you still want me to read to you, and don't forget to practice walking on your hind legs like the wolf in the story,' the husky offers. The young wolf looks embarrassed at this, but trots over to a wall and supports her body with her front legs as she tries to balance on her hind paws. You stretch as you stand up again, readying yourself to leave, not wanting your daughter to feel self conscious about something she was, from the look of it, trying to teach herself in secret. Thanking Amy for the story, you start to walk away, Lux taking a few tentative steps as you pass by her and give her a few encouraging words.";
					else:
						say "     While walking around the library, you come across Lux lightly holding a book between her teeth and follow her as she weaves between the shelves. It doesn't take her long to reach her destination, a pile of cushions in the children's zone. You are slightly surprised when Lux slumps to the floor beside them and looks at you, gesturing with her nose for you to sit down beside her on the cushions. Happy to spend some time bonding with your daughter, you recline next to her, making sure that she'll be able to see the pages of the book. You see that it is 'Little Red Riding Hood', though from the thickness of it, there may be other stories afterwards. As you read, you can see your daughter's eyes following the words on the page as they are spoken aloud, a rogue thought imagining her memorizing the appearance and pronunciation for future reference, though you mostly dismiss this as farfetched, she's more likely to be looking at the pictures.";
						say "     As you describe the wolf being fed salty water to make him regurgitate the grandmother, Lux snuggles up against you, trusting you to protect her from such a barbaric trick. You return her affection, stroking her ears and whispering reassurances. It would seem that the book is an extended version of 'Little Red Riding Hood' rather than a collection of stories, as it seems to be in chapters and continues even after the Woodsman has rescued the grandmother, detailing Little Red Riding Hoods other adventures often involving the wolf being a villain in one way or another. Lux doesn't seem to appreciate a wolf being in this role and you can see that she isn't enjoying it much and so close the book. Giving your daughter a hug, you reassure her that you wouldn't let anything terrible happen to her or her brother, you and Fang will make sure of it. She gives you lick of appreciation for the story and the comforting words before dashing off into the maze of shelves. When she doesn't return, you gather she has moved onto doing something else and stand up again, trying to decide what to do next.";
				-- 4: [ Lux and Umbra playing with Dash ] [or Fang and Children]
					if Dash is booked:
						say "     Feeling like reading some [one of]Dickens[or]Mills & Boon[or]Agatha Christie[or]Tolkien[at random], you begin to navigate your way between the shelves to reach the section that you hope they will still be. As you pass by Children's Literature, you are forced to leap out of the way of several blurs, upsetting a stack of magazines. With a quick look, you are able to identify the blurs as your children Lux and Umbra, as well as the fox kit, Dash, the three of them racing around the gaps between the shelves letting out excited yips as they pursue each other. You wonder whether they are playing something sophisticated like Tag, or whether it is just 'Chase-Each-Other-Until-You-Flop-Over'. Judging from the lack of contact, you guess the latter, making you smile at the simplicity of the games played by the young. It doesn't take you long to decide that watching the children play will be a more enjoyable use of time than reading a dusty, old book and you walk over to librarian's desk in the middle of the children's section so that you can watch more easily with less chance of being struck by a canid going at mach 5.";
						say "     It doesn't take long for the three of them to have circled around to you again, still sprinting as though pursued by demons. Currently Lux is in the lead, eyes wide and tongue lolling out of the side of her mouth. Behind her is Dash, the small fox keeping up exceptionally well despite his smaller size. Bringing up the rear is Umbra, though he seems to be tiring himself less than the other two, perhaps pacing himself in order to claim victory by the end, if whatever game they are playing can be won. You can hear them all panting, the energy that they put into their chase gradually depleting until they all collapse on their sides, tongues spilling from their mouths and saliva pooling by their faces. Not long after they have laid down, Fang appears and trots over to them, sniffing them just to make sure that they are alright. You wonder whether it was [ObjectPro of Fang] who put them up to this game in order to tire them out, the thought amusing you as you walk over and ruffle the fur on [PosPro of Fang] neck. Now that that is over, you have to decide what to do next.";
					else:
						say "     Wondering how Lux and Umbra are, you decide to pay them a visit, walking towards the entrance to the library. They are larger than they used to be, and much more mobile, a problem you find that Fang seems to be dealing with as you near the front door. Both the children, perhaps bored of being stuck inside, seem to be trying to get past their [if Fang is Male]father [else]mother [end if]and see what the outside world is like, a desire Fang is determinedly obstructing bodily. As Umbra attempts to dart behind [ObjectPro of Fang], [SubjectPro of Fang] spins around and lightly nips him, sending scuttling back with a squeak. Lux tries to take advantage of her brother's diversion and begins to slip beneath her [if Fang is Male]father's [else]mother's [end if]chest but [SubjectPro of Fang] takes a step back and pins her under one paw. 'Stay,' you hear Fang growl before releasing [PosPro of Fang] daughter to go back and sulk with her equally outwitted brother.";
						say "This attempt thoroughly quashed, Fang is able to return to [PosPro of Fang] duty of guarding the library, though you doubt that this will be their final attempt. Seeming to feel sorry for disappointing [PosPro of Fang] childrens['] desire, the larger wolf settles down and begins to snuffle and lick them, a quiet conversation of rumbles and murmurs between them as they display their affection to each other. You decide to leave them to it, not wanting to interrupt their moment, even though they would likely welcome you joining them too.";

[Teen]
an everyturn rule:
	if HP of Lux is 3 and HP of Umbra is 3 and Fang is booked and Fang is visible and Lux is visible and Umbra is visible:
		if a random chance of 1 in 3 succeeds:
			if a random number between 1 and 4 is:
				-- 1: [ Fang and the children 'hunting' just outside the library ]
					say "     As you pass by the entrance to the library, you are surprised to find Fang absent, [if HP of Fang < 3]the rope that is usually around [PosPro of Fang] neck lying abandoned on the stone floor[else if HP of Fang is 5]which is surprising considering how determinedly [SubjectPro of Fang] protects [PosPro of Fang] territory and family[else]an empty feeling filling you since your Alpha is away[end if]. Lux and Umbra also appear to be missing, and you hope that they are with their [if Fang is Male]father[else]mother[end if], considering it has been quite some time since you saw them. A flash of white catches your eye as you look [if HP of Fang < 3]over Fang's discarded restraint[else]towards the door[end if], a note with the single word 'Outside' scrawled on it. How kind of your daughter to leave you a note, at least you assume that it was her, considering her superior talent for human tasks compared to the two male wolves. Curious to see what exactly they are up to, you stride out the front door and glance around, the area unusually quiet. Movement down the street draws your attention, and you immediately recognize the approaching group to be Fang and the children. They notice you at the same time, the two pups, if you can call them that anymore, bounding over to you, tails wagging wildly.";
					say "     Fang continues [PosPro of Fang] sedate pace but seems just as pleased to see you, [PosPro of Fang] tail waving at a similar rate. They are all carrying objects in their mouths, the two males holding tins between their teeth, whereas your daughter is carrying several bottles of water in a shopping bag. It would appear that Fang is teaching [PosPro of Fang] children to scavenge in the city, a useful skill to be sure, though you hope that the water wasn't taken from someone that really needed it... You discard the thought and ruffle the fur on their heads affectionately and praise them, telling them how clever they are and saying jokingly that soon they won't be needing you anymore. While they seem to respond well to the praise, the jest causes their cheerfulness to fade, and they begin to anxiously lick at your hands. Seeing their distress, Fang gives you a reproachful look before growling, 'No. Always together.' You earnestly agree with [ObjectPro of Fang] and apologize to Lux and Umbra for worrying them and that you would never actually want to leave just because they are learning how to survive on their own capabilities. You walk back into the library together, though your children make sure to keep close to you as though just to make sure.";
				-- 2: [ Umbra and Lux fighting a gryphon ]
					say "     A cacophony of screeches and barks catches your attention, and you wonder what sort of avian creature has strayed too close to the library doors and been met by Fang. Running towards the entrance, you are caught off guard, finding Fang watching whatever is happening from the doorway rather than being part of the conflict. Intrigued as to who is fighting, you stand beside the wolf, rubbing [ObjectPro of Fang] just behind the ears as you walk past [ObjectPro of Fang] to find Lux and Umbra clashing with one of the hermaphroditic gryphons. If Fang wasn't watching the ensuing fight so calmly, you might have been concerned, but you decide to trust [PosPro of Fang] judgement, watching your children alongside [ObjectPro of Fang]. While the slashing talons of the gryphon might concern someone if they only gave the exchange a cursory look, a closer appraisal would reveal that the wolves are in sync enough for one to attack while the other dodges, drawing the creature's focus between them and making its attacks sloppy while also resulting in it expending more energy as it has to split its attention between two threats.";
					say "     You can see now why Fang hasn't felt the need to intervene. [SubjectProCap of Fang] may even have encouraged Lux and Umbra into this fight so that they can make use of the lessons you imagine [SubjectPro of Fang] has taught them or that they have learnt themselves. Lux is more reserved with her strikes, only darting in when the gryphon is sufficiently focused on her brother or when Umbra silently signals her to do so. Umbra is much more confident in his combat ability, keeping close to the gryphon's body, forcing it to constantly turn to try and protect itself, its eyes wide with distress. You gasp when the gryphon slashes at Lux with its beak, a strike that would have opened her from shoulder to pelvis, but she manages to gracefully sidestep the strike and respond by nipping it on the neck. Having seen how easily this fight could go catastrophically wrong, your children resolve to end this fight before it turns against them.";
					WaitLineBreak;
					say "     While the gryphon's attention is on Umbra, Lux charges in and clamps her jaws around one of the avian's hind legs, maintaining her momentum and sliding beneath its undercarriage. This results in it collapsing on its side, leaving it vulnerable, wings beating frantically against the dusty ground. Lux releases its leg and together with her brother approaches the gryphon's head, growling and with fur on end, demanding its surrender. With a plaintive squawk, the gryphon stills and exposes its neck, signaling its submission. It seems astonished when they turn away from it and lope towards you and Fang, allowing it to hastily right itself and take to the skies, barely looking back. The immediate threat over, the wolf siblings relax, lying down in front of you and begin to wash each other, a ritual that Fang joins them for. You can almost see the pride radiating from [ObjectPro of Fang] at [PosPro of Fang] children, a feeling that you share considering how well they complement each other's strengths, especially since it appears that the gryphon could not manage to touch them even once. A great feeling of love swells over you, and you can't resist crouching beside them and [if scalevalue of Player > 2]encircling them all in a hug[else]hugging them one after another[end if], all of them letting out appreciative groans and thanking you with licks and nuzzles. You relax with them for a while before deciding that you should probably get back to doing your own things in the city.";
				-- 3: [ Lux practicing her speech while Umbra watches]
					say "     The sound of talking from several bookshelves over attracts your attention, and you start to walk towards the sound to see who it is. Rounding the corner, you find Lux and Umbra curled up next to each other, Lux reading aloud from what sounds like a natural history book while her brother listens intently, both of them enthralled by the pictures of flora and fauna. They look up as you approach, tails thumping against the floor in greeting. '[if Player is female]Mother[else]Father[end if],' Lux barks joyfully, closing the book and placing it on a stack beside her. Among the books, you spy a dictionary, a few children's books, and some young adult fiction, several of which sound quite saucy from the titles. You decide not to pry as you wouldn't want to discourage her from learning by embarrassing either of them should it be a touchy subject. Crouching down beside them, you express admiration and pride that they are putting so much effort into learning and maturing in their different ways. While you talk to them, you stroke their sides, feeling the thick insulating fluff beneath the more robust outer fur.";
					say "     Curiously, Umbra appears to have softer and thicker fur than his sister, features that you didn't expect from the more physically-minded sibling. Lux's fur is still soft and lush, but feels finer in your fingers and flows through your hand more readily. You can hear appreciative groans from the both of them at the attention that you are giving them, and you wonder whether they would enjoy a good grooming at some point, though you would miss the tactile sensations if you used a brush instead of your fingers. You stand up and encourage them to continue their self-teaching, not wanting to disrupt their learning any more than you have. They give you a lick goodbye before you begin to walk away again, but as you do, you feel an unexplainable urge to watch them without them knowing. Strangely, they don't return to their reading, appearing to converse with each other in growls and whimpers that you can't interpret. Then to your astonishment, they stand up first onto all fours before lurching onto just their hind legs, using the shelves as supports. Lux seems unsteady on her paws but isn't making use of the shelves as much as her brother, who can only take a few steps before having to restore his balance. Nonetheless, you doubt that it will be long before they will be capable of walking on their hind paws for extended periods. You watch them for a few moments before slinking away, allowing them their privacy while they experiment and learn. Reading, talking, and walking on their hind legs, your children really are amazing.";
				-- 4: [ A play fight between Umbra and Lux ]
					say "     The sound of thumping and the occasional growl or bark draws you towards the entrance of the library to see what the commotion is. You are met by Lux and Umbra eyeing each other, chests low to the ground and hindquarters raised, tails waving back and forth. Fang looks on with interest, and you walk over to stand beside [ObjectPro of Fang], stroking [PosPro of Fang] head as you watch your children together. Umbra bounces forward, Lux tucking her tail for a moment as she leaps back to evade her brother's lunge before pouncing forward herself. Umbra doesn't retreat, instead tucking his head beneath her chest and using his superior size to flip her on her side and letting out a snort as though to say, 'Really? That was simple.' She recovers quickly, rolling over and regaining her feet while thinking through what to try next, her brother watching her intently as he waits patiently, shifting his paws in response to her changes in posture. There is little doubt in your mind that Umbra is the more physically capable of the two of them, his larger size and time spent watching the monsters outside lending him an edge that Lux hasn't gained from her more intellectual pursuits.";
					say "     To your surprise, Lux feints to the left before striking from the right, catching her larger brother off guard and gripping the scruff of his neck lightly between her teeth. Fang seems intrigued too, neglecting keeping watch to observe the play fight between your shared children. Umbra's reaction astonishes you even more, the dark-furred wolf slumping sideways on top of his sister, trapping her underneath him as she emits a startled yip. She desperately scrabbles to get out from beneath him, managing to escape the unorthodox tactic in a few seconds. She seems a bit muted at being so easily countered by her brother, her tail drooping slowly. Everyone present seems to realize that in straight combat, Umbra will likely come out on top over his sister. Seeing the paler wolf's expression, Umbra rolls on his back in front of her, licking her throat and muzzle submissively, demonstrating that despite his success in their play, he still loves her and views her as above him in the pack. This seems to break her moment of somberness, her tail wagging steadily as she licks her brother in return to demonstrate no malice towards him. The two young wolves look up at you and Fang watching them approvingly, pleased with the strength of their bond. They rush over to you, enthusiastically sharing licks and affectionate vocalizations with you both, a gesture that you return equally lovingly. You relax and enjoy this family moment, luxuriating in a sea of soft wolf fur. Whatever you were meant to be doing can wait.";

Section 4 - Grown Up Events

an everyturn rule:
	if HP of Lux > 3 and HP of Umbra > 3 and Fang is booked and Fang is visible and Lux is visible and Umbra is visible:
		if a random chance of 1 in 10 succeeds:
			if a random number between 1 and 2 is:
				-- 1:
					if HP of Carl is 10: [ Umbra spending time with Carl ]
						say "     You catch a flash of a dark-furred tail disappearing upstairs, and for a moment, you wonder who it could be. However, a quick glance at Fang calmly guarding the entrance makes you realize that it was likely Umbra, and you follow, curious as to the reason why he has gone up there. Not bothering to try and hide your presence, you sedately follow him, your son flicking an ear in front of you upon hearing your movement on the stairs. Upon reaching the top, you see the wolf approach Carl, who is, as usual, watching the city out of a window, a pair of binoculars slung around his neck. Perhaps feeling a presence behind him, the husky soldier turns around, giving you a nod and ruffling the fur on Umbra's head. [if HP of Carl is 30]'Hello, my Alpha,' he greets you before crouching down beside the wolf. 'Who's a good boy? Yes. It's you!' he croons softly to the lupine, vigorously scratching him under the chin. [else]'Come to check in on me, you two?' he asks as he crouches down in front of the wolf, stroking the back of his neck while whispering what you are sure is nonsense. From the snort that Umbra gives, he seems to think so too.[end if]";
						say "     'He comes up fairly often to keep me company while I keep watch,' the husky explains, barely looking up from patting the wolf. 'Mostly he just sits there, but occasionally he'll notice something before I do.' 'I help,' your son says, his voice quiet but firm. [if HP of Carl is 30]The husky seems a bit surprised at the wolf speaking for once, but doesn't comment and nods his head in agreement. 'Yes. You help.' [else]'Ooh. The mighty wolf graces us with his words,' Carl teases before losing his footing when Umbra pushes his shoulder firmly against him. You hear the husky light-heartedly mutter 'ass' under his breath as he clambers to his feet again. [end if] 'Perhaps he views it as doing his part to help his [if Fang is Male]father [else]mother [end if]downstairs, and I can't say that I begrudge the company either. His sister comes up sometimes too, but only rarely, and she usually has a book with her. I swear that her paws change into hands at times...' He lapses into silence and stares out the window again. Your curiosity sated, you turn to walk away, Carl absent-mindedly raising a paw in farewell and Umbra wagging his tail against the floor a few times before sitting beside the husky and nudging him until the soldier starts to gently pat him again. As you return downstairs, you muse over how well your lupine children seem to get on with the other residents of the library.";
					else: [Umbra looking over the city from upstairs]
						say "     You catch a flash of a dark-furred tail disappearing upstairs, and for a moment, you wonder who it could be. However, a quick glance at Fang calmly guarding the entrance makes you realize that it was likely Umbra, and you follow, curious as to the reason why he has gone up there. Not bothering to try and hide your presence, you sedately follow him, your son flicking an ear in front of you upon hearing your movement on the stairs. Upon reaching the top, you see the wolf approach a window and gaze at the view, eyes avidly watching for movement that might be a threat. As you reach him, he leans against you, taking comfort in the contact with someone he cares about. You gently stroke behind his ears, a soft murmur of appreciation escaping from the corner of his mouth, making you smile. A flicker of movement outside distracts Umbra for a moment, his ears pricking up as he prepares to react, but he seems to deem whatever it was to be of no threat as he presses his head back against you to ask you to resume petting him.";
						say "     You hear a patter of paws behind you and turn to see Lux approaching a book clasped between her two front paws as she walks on her hind legs. 'Oh. Hello, [if player is female]Mother. [else]Father. [end if]I wasn't expecting to see you here. Assisting my dear brother in his vigilance? With [if Fang is Male]Daddy [else]Mummy [end if]watching the front door and Umbra looking out the window, nothing should be getting in here unnoticed without magic. I don't really feel I can be of much help, but I like to be near them anyway, even if I'm just reading. Just one of the many ways that I show my appreciation for the time they spend keeping us safe.' You aren't sure how to take this, but judging from Umbra's wagging tail, he is pleased to see her, even if she isn't actively helping. You don't really see how you can be of much assistance either, so you content yourself with making quiet conversation for several minutes before returning downstairs again.";
				-- 2:
					if Nadia is booked: [ Lux spending time with Nadia ]
						if a random chance of 1 in 2 succeeds:
							say "     Noticing a flicker of pale fur disappear around a bookshelf, you expect it to be Lux off seeking yet another book to read, but decide to follow her anyway, determined to continue to be part of your children's lives even now that they are grown up. However, when you eventually catch up with the female wolf, you find her cheerfully approaching Nadia, who looks rather frightened, [if NadiaChickCounter > 1]her chicks peering curiously out from behind her[else if NadiaChickCounter is 1]a lone chick peering curiously out from behind her[else]eyes searching wildly for some route of escape[end if]. 'Sorry, I didn't mean to startle you,' your daughter apologizes, halting her advance. 'My name is Lux. You have probably met my [if Fang is Male]father[else]mother[end if], Fang. [SubjectProCap of Fang] protects the library.' Nadia visibly relaxes, but the arrival of Umbra causes her to return to looking terrified. You hear the female wolf sigh before she continues, 'And that's my brother, Umbra, who should know better than to walk so quietly when he isn't outside. He can even sneak up on me. [if player is female]Mother [else]Father [end if]named him well.' 'Sorry,' the male wolf says, his apology shorter but no less sincere.";
							say "     Wishing to see how your children handle themselves, you remain hidden, watching them attempt to socialize with the bird-woman. [if NadiaChickCounter > 1]Her own children seem unfazed by the wolves and approach the two of them blithely, unaware of the distress that their mother seems to be trying to hide[else if NadiaChickCounter is 1]Her chick seems unfazed by the wolves and approaches the two of them blithely, unaware of the distress that their mother seems to be trying to hide[else]Despite their apologies, Nadia seems to remain fearful of the two wolves, visibly shaking due to being outnumbered and not being able to see any way to extricate herself[end if]. Umbra, however, picks up on the discomfort that he and his sister are causing and nudges her, an unspoken communication that they should leave passing between them. 'As you don't seem comfortable with our presence, we shall allow you some peace. Our most sincere apologies for terrifying you so,' Lux says politely, though you get the sense that she is saddened by Nadia's reaction. Feeling that this wouldn't be the right situation to be caught watching, you quietly return to the entrance hall.";
						else:
							say "     Noticing a flicker of pale fur disappear around a bookshelf, you expect it to be Lux off seeking yet another book to read, but decide to follow her anyway, determined to continue to be part of your children's lives even now that they are grown up. However, when you eventually catch up with the female wolf, you find that she is merely meeting up with her brother, the both of them wagging their tails in greeting before starting their cursory sniffing. You stifle a laugh that they still exhibit such basic canine behavior, including sniffing the other's rear. When this ritual is complete, Umbra briefly licks his sister's chin and neck before she interrupts him. 'I wasn't gone for that long, and you don't need to flatter me so much. I'm not that concerned about dominance,' Lux chastises him. You are sure that you see him stick his tongue out in response, but he quickly relents.";
							say "     Umbra doesn't remain still for long, bouncing and bowing in front of his sibling in an attempt to get her to play. 'Don't you think that we're a bit old for that now?' Lux laughs, her brother shaking his head determinedly in reply. 'Neither do I,' your daughter responds, matching his movements much to his delight. You are pleased as well to see how close they remain and that they haven't let the world outside steal the joys of youth away from them. When Umbra gets too excited, he begins to woof, Lux trying to quieten him down between fits of giggles while you continue to watch. Eventually, they tire themselves out, collapsing to the floor together, tongues lolling out of the sides of their mouth as they pant and lick at each other's faces. 'I love you, dear brother,' the female wolf sighs. 'Not as much as I love you,' her brother responds, earning a lick on the nose. With a smile, you turn and leave, your children lying down to rest after their exertion.";
					else:
						say "     Noticing a flicker of pale fur disappear around a bookshelf, you expect it to be Lux off seeking yet another book to read, but decide to follow her anyway, determined to continue to be part of your children's lives even now that they are grown up. However, when you eventually catch up with the female wolf, you find that she is merely meeting up with her brother, the both of them wagging their tails in greeting before starting their cursory sniffing. You stifle a laugh that they still exhibit such basic canine behavior, including sniffing the other's rear. When this ritual is complete, Umbra briefly licks his sister's chin and neck before she interrupts him. 'I wasn't gone for that long, and you don't need to flatter me so much. I'm not that concerned about dominance,' Lux chastises him. You are sure that you see him stick his tongue out in response, but he quickly relents.";
						say "     Umbra doesn't remain still for long, bouncing and bowing in front of his sibling in an attempt to get her to play. 'Don't you think that we're a bit old for that now?' Lux laughs, her brother shaking his head determinedly in reply. 'Neither do I,' your daughter responds, matching his movements much to his delight. You are pleased as well to see how close they remain and that they haven't let the world outside steal the joys of youth away from them. When Umbra gets too excited, he begins to woof, Lux trying to quieten him down between fits of giggles while you continue to watch. Eventually, they tire themselves out, collapsing to the floor together, tongues lolling out of the sides of their mouths as they pant and lick at each other's faces. 'I love you, dear brother,' the female wolf sighs. 'Not as much as I love you,' her brother responds, earning a lick on the nose. With a smile, you turn and leave, your children lying down to rest after their exertion.";

instead of going to Computer Lab while HP of Lux > 3 and HP of Umbra > 3 and Lux is visible and Umbra is visible and a random chance of 1 in 4 succeeds:
	if Dash is booked: [ Dash, Lux & Umbra curled up together ]
		say "     As you enter the computer room, turned den-of-children, the sight before you causes you to halt in your tracks. In front of you, your children, Lux and Umbra, as well as the fox kit, Dash, are all curled up together, fast asleep. You can hear the larger male wolf snoring softly as his chest expands and shrinks in time with his sister's. Even while resting, they are in sync, bringing a smile to your mouth. Between them, snuggled within the warmth of their fluffy fur, is Dash, the fox protected by his adopted siblings['] more substantial forms from potential threats, not that many would be likely to get past Fang outside. Whining softly in a dream, the young vulpine rolls over, legs momentarily flailing in the air before he slumps sideways against the pale fur of Lux, and for a moment, you fear that this might disturb her, but other than a snuffle, her slumber remains unaffected.";
		say "     You continue to watch the three of them sleep, leaning against the doorframe so as not to risk waking them. Sensing movement behind you and feeling a form against your side, you look to find Fang silently joining you in watching over the members of [PosPro of Fang] pack. They look so sweet and vulnerable at the moment, and you can sense the love that the large wolf bears for them radiating from [ObjectPro of Fang], [if HP of Fang is 3 or HP of Fang is 4]undiminished by the authority that [SubjectPro of Fang] bears[else]a feeling that you share[end if]. However, [SubjectPro of Fang] doesn't remain there for long, giving you an affectionate lick before returning to [PosPro of Fang] post by the front door to continue watch, satisfied with the safety of [PosPro of Fang] children. With a contented sigh, you too leave, reducing the risk that you will inadvertently rouse the three of them unnecessarily, following Fang back to the main entrance.";
	else: [ Lux & Umbra curled up together ]
		say "     As you enter the computer room, turned den-of-children, the sight before you causes you to halt in your tracks. In front of you, your children, Lux and Umbra, are curled up together, fast asleep. You can hear the larger male wolf snoring softly as his chest expands and shrinks in time with his sister's. Even while resting, they are in sync, bringing a smile to your mouth. They seem to be fast asleep, the occasional movement in response to dreams failing to stir either to wakefulness, and you imagine that their trust in Fang guarding the door to the library allows them to display such vulnerability. For a moment, you admire their fluffiness and the contrast in the shades of gray of their fur as it mingles where they are pressed together. Were it not for the risk of disturbing them, you might consider giving them a loving pat, but you restrain yourself and merely imagine the feel of their fur against your palm.";
		say "     You continue to watch them sleep, leaning against the doorframe so as not to risk waking them. Sensing movement behind you and feeling a form against your side, you look to find Fang silently joining you in watching over your children. They look so sweet and vulnerable at the moment, and you can sense the love that the large wolf bears for them radiating from [ObjectPro of Fang], [if HP of Fang is 3 or HP of Fang is 4]undiminished by the authority that [SubjectPro of Fang] bears[else]a feeling that you share[end if]. However, [SubjectPro of Fang] doesn't remain there for long, giving you an affectionate lick before returning to [PosPro of Fang] post by the front door to continue watch, satisfied with the safety of [PosPro of Fang] children. With a contented sigh, you too leave, reducing the risk that you will inadvertently rouse them unnecessarily, following Fang back to the main entrance.";


Table of GameEventIDs (continued)
Object	Name
Lux & Umbra Sexual Interest	"Lux & Umbra Sexual Interest"

Lux & Umbra Sexual Interest is a situation.
The level of Lux & Umbra Sexual Interest is 0.
The sarea of Lux & Umbra Sexual Interest is "Nowhere".

instead of going to Computer Lab while hp of Lux is 4 and hp of Umbra is 4 and Lux is in Computer Lab and Umbra is in Computer Lab and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and "LuxUmbra Incest Enabled" is listed in traits of player and Lux & Umbra Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Lux&UmbraSexualInterestEvent;

to Lux&UmbraSexualInterestEvent: [Lux and Umbra express interest in each other] [Early Morning-Noon] [May be subject to change/improvement]
	say "     As you enter the computer lab, you are surprised to see Lux and Umbra talking to each other in hushed tones. While it is not unusual for them to be in here, they are usually asleep at this time, huddled together as they dream. Not wanting to interrupt whatever they are discussing but nonetheless curious, you sneak closer, your presence remaining unnoticed due to their concentration on each other, until you are behind a desk barely a meter from them. You have no idea how they are failing to catch your scent, but you are now able to hear what is being said. 'You probably think that I'm a freak. Attraction to family is considered disgusting if the books I read are to be believed, but I can't deny who I am. Maybe I won't be judged as much considering the state of the city, but I don't want to lose you as a brother just because I can't control my libido. If I have to-' Lux whispers before Umbra cuts her off.";
	say "     'I love you too. You are pretty. You are smarter but make time for me. How could I not love you? But what will [if player is Female and Fang is Male]Mother and Father [else if player is Male and Fang is Female]Mother and Father [else if player is Male and Fang is Male]our fathers [else]our mothers [end if]think?' The two of them are momentarily quiet as they contemplate that. 'I don't think I could bear for [if Fang is Male]Daddy [else]Mummy [end if]to be hurt by this if we couldn't convince [ObjectPro of Fang], and [if player is female]Mother [else]Father [end if]may be difficult to convince if [if player is female]she [else]he [end if]doesn't approve...' your daughter sighs. 'We can't go behind their backs. It might break them,' your son adds before pausing, his nose twitching and his eyes widening. '[if player is female]Mother's [else]Father's [end if]behind that desk.' Embarrassed at being caught, you crawl out and sit beside them and wait for them to complain about you eavesdropping. Instead, they stare at you and await your verdict on their forbidden love for each other.";
	say "     [bold type]Do you wish to allow them to express their attraction to one another in future?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Seeing how much they care for each other, you give them a warm smile and tell them that as long as they genuinely love each other, and aren't just being driven by lust, that you don't see any problem with them getting more intimate with each other. You see the fear disappear from their faces and they rush towards you, pressing their sides against you as they enthusiastically lick you to express their gratitude and relief. It will hardly be the most perverse thing to happen in the city, and to be honest there is a slight feeling of arousal at the thought, so who are you to interfere with what their hearts seem to want? 'Thank you,' both of your pups say at the same time, gray and green eyes meeting your own to show you their sincerity. After a few minutes of bonding with them, you decide to give them some privacy before they go to sleep. Despite the intensity of their mutual attraction, you doubt that they'll be having sex just yet.";
		now Resolution of Lux & Umbra Sexual Interest is 1;
		increase thirst of Lux by 1;
		increase thirst of Umbra by 1;
	else:
		LineBreak;
		say "     You look at your children and a wave of unease washes over you as you think of them having sex with each other. You can't bring yourself to allow this and so it is with a heavy heart that you let out a sigh and shake your head. Their ears and tails droop as you sternly inform them that you do not wish for them to engage in any form of sexual contact with each other. You can't stop their mutual attraction, but they will have to accept that they won't be able to act upon it beyond what they already do. They look disappointed but considering their considerable affection towards you as their parent, there is no hint of rebellion in their posture. After a quick pat, you leave the two of them to accept your position on the matter before they go to sleep. You don't doubt that they will be affectionate with each other, but it will never develop into anything more in the foreseeable future.";
		now Resolution of Lux & Umbra Sexual Interest is 2;
	move player to Grey Abbey Library;
	now Lux & Umbra Sexual Interest is resolved;

Table of GameEventIDs (continued)
Object	Name
Lux & Fang Sexual Interest	"Lux & Fang Sexual Interest"

Lux & Fang Sexual Interest is a situation.
The level of Lux & Fang Sexual Interest is 0.
The sarea of Lux & Fang Sexual Interest is "Nowhere".

instead of going to Grey Abbey Library while hp of Lux is 4 and Lux is in Grey Abbey Library and Fang is in Grey Abbey Library and HP of Fang > 1 and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and "LuxUmbra Incest Enabled" is listed in traits of player and Lux & Fang Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Lux&FangSexualInterestEvent;

to Lux&FangSexualInterestEvent: [Lux and Fang express interest in each other] [Noon-Early Night] [May be subject to change/improvement]
	if HP of Fang is 2: [Omega]
		say "     Looking around as you enter the library, you are concerned to see that Fang isn't in [PosAdj of Fang] usual position watching the door. Readying yourself for having to reprimand [ObjectPro of Fang] for this dereliction of duty, you briskly begin walking around the library until as you pass the open door to the courtyard, you hear Lux's familiar voice. Your need to find Fang less pressing than finding out who your daughter is conversing with, you stealthily approach until you can clearly see that she is talking to your missing guard, Fang, and pacing back and forth ceaselessly as she speaks with her [if Fang is Male]father[else]mother[end if]. '...but I didn't didn't need privacy to talk about such mundane topics such as your night. I have something a little more sensitive to discuss and I'm concerned that it might affect your fondness of me,' the pale-furred wolf worriedly says. 'Not likely. You haven't hurt your brother. If you prefer females, I will support you. Why are you scared?' Fang replies, the variety of [PosAdj of Fang] questions suggesting that [SubjectPro of Fang] has no idea what is troubling [PosAdj of Fang] daughter.";
		say "     'Thank you for the support [if Fang is Male]Daddy[else]Mummy[end if]. While male or female makes little difference to me, that isn't what I was worried about,' Lux half laughs between deep breaths. 'You may think that I'm disgusting, but I'm attracted to you.' The two of them stand in silence for a few moments as the female wolf's words sink in until Fang breaks the silence. 'I know what I'm meant to do. You're my daughter. I don't want to take advantage of you. You're not meant to feel like this about me. I'm not meant to feel this way about you. But you do. And I do.' The two wolves look at each other differently with this revelation, nervousness struggling with excitement that they feel the same attraction towards each other. 'Your [if player is female]mother [else]father [end if]mightn't like it. I made a mistake before. My freedom is limited by their will,' Fang rumbles, pressing [PosAdj of Fang] ears back at disappointing [PosAdj of Fang] daughter. It looks like you have a decision to make.";
		say "     [bold type]Do you wish to allow them to express their attraction to each other in future?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     You may have authority over Fang, but your daughter has a little more freedom and this seems to be something that she wants. Your guard wolf has been doing a good job too, so you don't see why you can't allow [ObjectPro of Fang] a closer relationship with [PosAdj of Fang] daughter. Your mind made up, you openly approach the two of them, their heads snapping up as one upon noticing you. Before they have a chance to speak or make excuses, you kindly inform them that you were listening to their exchange and that you are willing to allow them to explore their attraction to one another as long as they continue to make you proud. Lux is speechless, while Fang narrows [PosAdj of Fang] eyes slightly, perhaps expecting there to be further conditions, a suspicion that you quickly allay, promising that you won't come between [ObjectPro of Fang] and [PosAdj of Fang] daughter. As you begin to leave, Lux calls after you, 'Thank you. This means a lot to me.' With a smile, you return to the library, pleased that you could grant them at least a moment of happiness.";
			now Resolution of Lux & Fang Sexual Interest is 1;
			increase thirst of Lux by 1;
		else:
			LineBreak;
			say "     Considering your direct authority over Fang and that Lux is your daughter, you feel confident that they will accept your decision to forbid such a relationship to develop between them. Your mind made up, you openly approach the two of them, their heads snapping up as one upon noticing you. Before they have a chance to speak or make excuses, you firmly explain that you will not abide your Omega and daughter having sex with each other. Your daughter could do so much better than mating with the bottom member of the pack when there are so many other better males in the city to choose from, and you tell her as much. While Fang looks dejected at your justification, Lux looks unsure whether to be ashamed at disappointing you, or angry that you so easily turn to degrading her [if Fang is Male]father[else]mother[end if]. Your decision clear to them, you turn and leave, returning to the library confident that the two of them won't act upon their attraction for the foreseeable future.";
			now Resolution of Lux & Fang Sexual Interest is 2;
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha]
		say "     Looking around as you enter the library, you are surprised that your Alpha isn't in [PosAdj of Fang] usual position guarding [PosAdj of Fang] pack. Curious as to where [SubjectPro of Fang] may have gone, you casually wander around the library until you eventually pass the door out to the courtyard and hear Lux's familiar voice. Wondering who she is speaking with, you go outside and move towards the sound of talking until you can clearly see that she is conversing with Fang, and pacing back and forth ceaselessly as she speaks with her [if Fang is Male]father[else]mother[end if]. '...but I apologize for taking up so much of your time [if Fang is Male]Daddy[else]Mummy[end if]. I had something a little more sensitive to discuss with you and I'm worried that it may affect your fondness for me,' the pale-furred wolf worriedly says. 'I doubt that, Lux. I care deeply for my children. I am your [if Fang is Male]father[else]mother[end if] first, your Alpha second. You do not need to fear me,' Fang comforts her, willing to show a softer side while talking to [PosAdj of Fang] daughter.";
		say "     'It is because you are my [if Fang is Male]father[else]mother[end if] that I am afraid to tell you this,' Lux replies. She pauses for a moment to gather her nerve before almost spitting out, 'I am attracted to you and want to be more intimate with you.' There is silence for several long seconds at this confession, a look of shock on Fang's face, while [PosAdj of Fang] daughter gradually looks more and more dejected as the lack of response drags on. 'You think I'm disgusting don't-' Lux starts but her [if Fang is Male]father[else]mother[end if] cuts her off. 'No. Never that. Speech is difficult. Give me time.' [PosAdjCap of Fang] forceful response surprises both you and [PosAdj of Fang] daughter, allowing [ObjectPro of Fang] some time to decide what to say. 'I think you are beautiful. I think you are intelligent. I think you are kind. I did not want to take advantage of you. Love should be given. Not taken just because I am Alpha. I love you too. As my daughter and more.' The two wolves look at each other differently with this revelation, nervousness struggling with excitement that they feel the same attraction towards each other.";
		WaitLineBreak;
		say "     When they both seem to share this attraction, you doubt that you could forbid it happening even if you wanted to, especially when Fang is your Alpha. You're not sure that you should interrupt this moment either, so you remain at a distance, merely watching. Her difficult confession of forbidden love rewarded, Lux tentatively rubs up against her [if Fang is Male]father[else]mother[end if]'s side, her tail softly wagging, a response mirrored by the larger wolf. As they begin to lick the other's muzzle, you decide to leave and allow them some privacy to develop their intimacy under the light of the moon, returning back into the library. You doubt that they'll be having sex any time soon, considering that their relationship is developing beyond being just familial.";
		now Resolution of Lux & Fang Sexual Interest is 1;
		increase thirst of Lux by 1;
	else if HP of Fang is 5: [Beta]
		say "     Looking around as you enter the library, you are surprised to find Fang absent from [PosAdj of Fang] usual position guarding the front door. Wondering as to where [SubjectPro of Fang] may have gone, you begin to search around the library until you eventually pass the door out to the courtyard and hear Lux's familiar voice. Wondering who she is speaking with, you go outside and move towards the sound of talking until you can clearly see that she is conversing with her [if Fang is Male]father[else]mother[end if], and pacing back and forth ceaselessly while she speaks. '...but I didn't ask you to come out here just to socialize [if Fang is Male]Daddy[else]Mummy[end if], as much as I enjoy spending time with you. I had something a little more sensitive to discuss with you and I'm worried that it may affect your fondness for me,' the pale-furred wolf worriedly says. 'I doubt that, Lux. I love you and your brother no matter what. My children come before anyone else in the pack. What could change that?' Fang reassures her before licking her nose.";
		say "     'You might not be so unconditional with your love if you knew what I had to say,' Lux replies, returning [PosAdj of Fang] gesture of affection. 'I am in love with you and wish for our bond to go beyond just being family,' she finally reveals, her voice barely more than a whisper. It takes a moment for Fang to process this confession before leaning down and pressing [PosAdj of Fang] lips against [PosAdj of Fang] daughter's in what looks like [PosAdj of Fang] best attempt at a kiss, causing her eyes to go wide. 'I love you too. Your beauty. Your intellect. Your kindness. All of you. I will gladly be your mate and your [if Fang is Male]father[else]mother[end if].' The two wolves look at each other differently with this revelation, nervousness struggling with excitement that they feel the same attraction towards each other. '[if player is female]Mother [else]Father [end if]may not like it, but who knows? They may be as accepting of who I am as you are [if Fang is Male]Daddy[else]Mummy[end if],' Lux muses, earning a supportive rumble from the larger wolf as [SubjectPro of Fang] nuzzles against her. It looks like you have a decision to make.";
		say "     [bold type]Do you wish to allow them to express their attraction to each other in future?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     When they both seem to share this attraction, you don't see anything wrong with allowing them to develop this bond further. They both definitely deserve good things in life and it would be a shame to ruin the happiness that this conversation has brought them. Your mind made up, you openly approach the two of them, their heads snapping up as one upon noticing you. Before they have a chance to speak, you apologize for listening in but inform them that you don't see any problems with them exploring their attraction to each other when they so obviously love each other. Lux is speechless, while Fang looks at you with gratitude plain on [PosAdj of Fang] stupidly grinning face. As you begin to leave, Lux calls after you, 'Thank you. This means a lot to me.' With a smile, you return to the library, pleased that love can still blossom in a city so willing to turn to rape.";
			now Resolution of Lux & Fang Sexual Interest is 1;
			increase thirst of Lux by 1;
		else:
			LineBreak;
			say "     Despite their mutual attraction to each other, you come to the decision that you don't wish to allow them to continue such a relationship. Your mind made up, you openly approach the two of them, their heads snapping up as one upon noticing you. Before they have a chance to speak, you firmly declare that you forbid them from being anything other than [if Fang is Male]father[else]mother[end if] and daughter. 'But... but I love [ObjectPro of Fang],' Lux pleads, ears flat against her head and tail tucked between her hind legs. Letting out an exasperated sigh that she didn't just accept your ruling on the matter, you explain that as her parent and authority figure in the library that she should obey. She looks ready to answer back, but to your surprise, Fang interrupts, 'No. She is my daughter too. She is an adult. She can make her own decisions. You are Alpha, but she is not your bitch.' The tone of [PosAdj of Fang] voice is as though [SubjectPro of Fang] is stating facts, but you wouldn't be surprised if you nearly crossed a line here. 'However, I will discuss this with her. You shall not have to worry about catching us mating.' With that, the two wolves stalk off, leaving you to return to the library alone.";
			now Resolution of Lux & Fang Sexual Interest is 2;
	move player to Grey Abbey Library;
	now Lux & Fang Sexual Interest is resolved;

Table of GameEventIDs (continued)
Object	Name
Umbra & Fang Sexual Interest	"Umbra & Fang Sexual Interest"

Umbra & Fang Sexual Interest is a situation.
The level of Umbra & Fang Sexual Interest is 0.
The sarea of Umbra & Fang Sexual Interest is "Nowhere".

instead of going to Grey Abbey Library while hp of Umbra is 4 and Umbra is in Grey Abbey Library and Fang is in Grey Abbey Library and MaleList is not warded and MaleList is not banned and "LuxUmbra Incest Enabled" is listed in traits of player and Umbra & Fang Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Umbra&FangSexualInterestEvent;

to Umbra&FangSexualInterestEvent: [Umbra and Fang express interest in each other] [Noon-Early Night] [May be subject to change/improvement]
	if HP of Fang is 2: [Omega]
		say "     Upon entering the library, you are concerned to find that Fang isn't in [PosAdj of Fang] usual position by the door. With a sigh of disappointment, you begin to search for the wolf, readying yourself to reprimand [ObjectPro of Fang] for this dereliction of duty. You briskly walk around the library until you catch sight of a tail disappearing out of the door to the courtyard. Assuming that it is Fang, you quickly follow after [ObjectPro of Fang] only to discover that [SubjectPro of Fang] is not alone. It would seem that your son, Umbra, has something that he wishes to discuss with his [if Fang is Male]father[else]mother[end if], and judging by the nervous pacing that he is doing, it may be something awkward so you decide to remain watching from a distance rather than interrupting now and making it more difficult for him. 'I need to tell you something. It might upset you,' Umbra hesitantly says, struggling to meet his [if Fang is Male]father[else]mother[end if]'s eyes despite his greater size. 'Not likely. You haven't hurt your sister. Females or males, I'll support you with either. What are you scared of?' Fang replies, the variety of [PosAdj of Fang] questions suggesting that [SubjectPro of Fang] has no idea what is troubling [PosAdj of Fang] son.";
		say "     'I like both. That is not the problem,' Umbra bluntly replies, despite his lack of sexual experience. His [if Fang is Male]father[else]mother[end if] stands and waits for him to elaborate, patiently waving [PosAdj of Fang] tail back and forth in the hopes of appearing reassuring to [PosAdj of Fang] conflicted child. 'I am attracted to you. Despite us being family,' Umbra finally confesses, lowering his head in shame at how [SubjectPro of Fang] expects his [if Fang is Male]father[else]mother[end if] to react. The silence returns again as the younger wolf's revelation sinks in, until Fang speaks. 'You are my son. Do not feel ashamed of who you are. I have these feelings too. You are not alone.' The two wolves look at each other in a new light, surprised that such a taboo attraction is shared and unsure how to proceed next. 'Your [if player is female]mother [else]father [end if]may disapprove. They may deny me this. I made mistakes in the past. By their will I am bound,' Fang rumbles, pressing [PosAdj of Fang] ears back at disappointing [PosAdj of Fang] son. It looks like you have a decision to make.";
		say "     [bold type]Do you wish to allow them to express their attraction to each other in future?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     Accepting that both of them are old enough to make their own decisions and willing to let Fang have this modicum of autonomy, you decide to let them explore this mutual attraction. Your mind made up, you openly approach the two of them, their heads snapping up as one upon noticing you. Before they can speak or make excuses, you calmly inform them that you will allow them to get to know each other on a more intimate level for as long as they both wish to, expressing your gratitude for the effort that they put into defending the library from the creatures of the city. They are both speechless, an unsurprising response given their usual limited vocalisation, but after a few seconds Umbra manages to say thank you in what is barely more than a whisper, his [if Fang is Male]father[else]mother[end if] nodding in agreement, both of their eyes expressing the depth of their gratitude. Pleased with yourself at such a display of magnanimity, you return into the library to continue with your day.";
			now Resolution of Umbra & Fang Sexual Interest is 1;
			increase thirst of Umbra by 1;
		else:
			LineBreak;
			say "     Considering your direct authority over Fang and that Umbra is your son, you feel confident that they will accept your decision to forbid such a relationship to develop between them. Your mind made up, you openly approach the two of them, their heads snapping up as one upon noticing you. Before they have a chance to speak or make excuses, you firmly explain that you will not abide your Omega and son having sex with each other. Your son could do so much better than mating with the bottom member of the pack when there are so many other better males in the city to choose from, and you tell him as much. While Fang looks dejected at your justification, Umbra begins to growl at your derision and contempt for his [if Fang is Male]father[else]mother[end if], only falling quiet when you give him a stern glare. Your decision clear to them, you turn and leave, returning to the library confident that the two of them won't act upon their attraction for the foreseeable future.";
			now Resolution of Umbra & Fang Sexual Interest is 2;
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha]
		say "     Upon entering the library, you are concerned to find that your Alpha isn't in [PosAdj of Fang] usual position guarding [PosAdj of Fang] pack. Curious as to where [SubjectPro of Fang] may have gone, you casually wander around the library until you catch sight of a tail disappearing out of the door to the courtyard. Assuming that it is Fang, you quickly follow after [ObjectPro of Fang] only to discover that [SubjectPro of Fang] is not alone. It would seem that your son, Umbra, has something that he wishes to discuss with his [if Fang is Male]father[else]mother[end if], and judging by the nervous pacing that he is doing, it may be something awkward so you decide to remain watching from a distance rather than interrupting now and making it more difficult for him. 'I have something I must tell you, Alpha. It may displease you,' Umbra hesitantly says, not meeting his [if Fang is Male]father[else]mother[end if]'s eyes. 'I doubt that, Umbra. I care deeply for my children. I am your [if Fang is Male]father[else]mother[end if] first, your Alpha second. You do not need to fear me,' Fang comforts him, willing to show [PosAdj of Fang] softer side when talking to [PosAdj of Fang] son.";
		say "     'I worry because you are my [if Fang is Male]father[else]mother[end if],' Umbra replies. The older wolf stands and waits patiently for him to continue, sensing the turmoil from [PosAdj of Fang] son's still tail and constantly shifting gaze. 'I am attracted to you. Despite you being my [if Fang is Male]father[else]mother[end if]. Despite me being subordinate,' Umbra struggles to say, lowering his head in shame at how he expects his [if Fang is Male]father[else]mother[end if] to react. The silence returns again as the younger wolf's confession sinks in, Umbra looking increasingly terrified as waits for a response. Finally, Fang replies, 'I think you are handsome. I think you are quick. I think you are kind. I did not wish to take advantage of you. Love should be given. Not taken just because I am Alpha. I love you too. As my son and more.' The two wolves look at each other differently with this revelation, both having talked much more than usual in order to express their attraction towards each other.";
		WaitLineBreak;
		say "     When they both seem to share this attraction, you doubt that you could forbid it happening even if you wanted to, especially when Fang is your Alpha. You're not sure that you should interrupt this moment either, so you remain at a distance, merely watching. Umbra tentatively rubs against his [if Fang is Male]father[else]mother[end if]'s side, his confidence growing as the older wolf returns this display of affection, both of them softly wagging their tails. As they begin to lick the other's muzzle, you decide to leave and allow them some privacy to develop their intimacy under the light of the moon, returning back into the library. You doubt that they'll be having sex quite yet, considering that their relationship is developing beyond being just familial.";
		now Resolution of Umbra & Fang Sexual Interest is 1;
		increase thirst of Umbra by 1;
	else: [Beta]
		say "     Upon entering the library, you are surprised to find that Fang is absent from [PosAdj of Fang] usual position guarding the front door. Wondering as to where [SubjectPro of Fang] may have gone, you begin to search around the library until you catch sight of a tail disappearing out of the door to the courtyard. Assuming that it is Fang, you quickly follow after [ObjectPro of Fang] only to discover that [SubjectPro of Fang] is not alone. It would seem that your son, Umbra, has something that he wishes to discuss with his [if Fang is Male]father[else]mother[end if], and judging by the nervous pacing that he is doing, it may be something awkward so you decide to remain watching from a distance rather than interrupting now and making it more difficult for him. 'I have something I must tell you, [if Fang is Male]father[else]mother[end if]. It may displease you,' Umbra hesitantly says, not quite catching the older wolf's gaze. 'I doubt that, Umbra. I will love you no matter what. My children come before anyone else in the pack. What could change that?' Fang reassures him before licking his nose.";
		say "     'You have not heard my secret. Your love is appreciated though,' Umbra replies, returning the gesture of affection. 'I love you. Romantically. I want to be more than your son. I want to be your mate too,' he finally reveals, his voice an intense whisper. It takes a moment for Fang to process [PosAdj of Fang] son's confession before leaning forward and pressing [PosAdj of Fang] lips against [PosAdj of Fang] son's in what looks like [PosAdj of Fang] best attempt at a kiss, causing the younger wolf's eyes to go wide. 'I love you too. Your attractive body. Your quick mind. Your kind soul. I will gladly be your mate as well as your [if Fang is Male]father[else]mother[end if].' The two wolves look at each other differently with this revelation, relieved that they feel the same way about each other, but unsure how to proceed. '[if player is female]Mother [else]Father [end if]may not like it. I hope they understand like you did,' Umbra muses, the older wolf letting out a supportive rumble as [SubjectPro of Fang] nuzzles against him. It looks like you have a decision to make.";
		say "     [bold type]Do you wish to allow them to express their attraction to each other in future?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     When they both seem to share this attraction, you don't see anything wrong with allowing them to develop this bond further. They both definitely deserve good things in life and it would be a shame to ruin the happiness that this conversation has brought them. Your mind made up, you openly approach the two of them, their heads snapping up as one upon noticing you. Before they have a chance to speak, you apologize for listening in but inform them that you don't see any problems with them exploring their attraction to each other when they so obviously love each other. Both of them are, unsurprisingly, speechless, but Fang's gratitude is plain on [PosAdj of Fang] stupidly grinning face. As you begin to leave, Umbra calls after you, 'Thank you.' With a smile, you return to the library, your son's few words meaning as much to you as Fang's toothy smile.";
			now Resolution of Umbra & Fang Sexual Interest is 1;
			increase thirst of Umbra by 1;
		else:
			LineBreak;
			say "     Despite their mutual attraction to each other, you come to the decision that you don't wish to allow them to continue such a relationship. Your mind made up, you openly approach the two of them, their heads snapping up as one upon noticing you. Before they have a chance to speak, you firmly declare that you forbid them from being anything other than [if Fang is Male]father[else]mother[end if] and son. 'But I love [ObjectPro of Fang],' Umbra dejectedly replies, ears flat against his head and tail tucked beneath him. Letting out an exasperated sigh that he chose to answer back, you explain that as his parent and authority figure in the library that he should obey. He looks confused and scared, struggling between compliance and dissent until, to your surprise, Fang interrupts, 'No. He is my son too. He is an adult. He can make his own decisions. You are Alpha, but he is not your bitch.' The tone of [PosAdj of Fang] voice is as though [SubjectPro of Fang] is stating facts, but you wouldn't be surprised if you nearly crossed a line here. 'However, I will discuss this with him. You shall not have to worry about catching us mating.' With that, the two wolves stalk off, leaving you to return to the library alone.";
			now Resolution of Umbra & Fang Sexual Interest is 2;
	move Player to Grey Abbey Library;
	now Umbra & Fang Sexual Interest is resolved;

Table of GameEventIDs (continued)
Object	Name
Lux & Player Sexual Interest	"Lux & Player Sexual Interest"

Lux & Player Sexual Interest is a situation.
The level of Lux & Player Sexual Interest is 0.
The sarea of Lux & Player Sexual Interest is "Nowhere".

instead of going to Grey Abbey Library while hp of Lux is 4 and Lux is in Grey Abbey Library and FemaleList is not warded and FemaleList is not banned and "LuxUmbra Incest Enabled" is listed in traits of player and Lux & Player Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Lux&PlayerSexualInterestEvent;

to Lux&PlayerSexualInterestEvent: [Lux expresses interest in the player] [Noon-Early Night]
	say "     You are surprised to find Lux waiting for you as you enter the library, her pleasure at seeing you obvious from the way her tail begins to wag. 'Hello [if player is female]Mother[else]Father[end if]. I hope that you aren't having too much trouble in the city. You could always spend more time with my brother and me. I know we'd both appreciate it,' she greets you, the last sentence delivered in an almost sensual manner. The surprise on your face must be plainly visible because your daughter suddenly looks embarrassed. 'I meant that to be subtle. Instead I seem to have shouted, [']Look at me I'm a deviant who loves her parents in ways that she shouldn't[']. I'm sorry. I seem to have made you uncomfortable. Had I not made my feelings known before?' You admit that you might recall such a thing, but you didn't know she was this serious about you.";
	say "     'Why wouldn't I be?' she replies, looking you in the eye. 'Other than the social expectations, questions of morality, and fear of being rejected by my family, why wouldn't I have been serious when I told you that I was more than fond of you? I know the potential consequences of letting my feelings be known but it is important enough to me that I'm telling you anyway. So either I find out that you are willing to explore these feelings with me, or you don't and I'll attempt to work from there. I'm not going to avoid you just because you rebuff my advances, nor will it damage our bond, but I will definitely be happier if you reciprocate my attraction.' Part of you wonders what Fang will think of this, but almost as if predicting your thoughts, Lux adds, 'Don't worry about [if Fang is Male]Daddy[else]Mummy[end if]. I'll talk to [ObjectPro of Fang] about it too, and there is very little that [SubjectPro of Fang] wouldn't do to make my brother and me happy.' It would seem that she has had plenty of time to think this through and is now only waiting on your response.";
	say "     [bold type]Do you wish to explore this sort of relationship with Lux?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Crouching down beside her, you place a hand against the side of the face before leaning in and kissing her on the nose. Of course you'd be happy to further your relationship with her beyond its current level and you tell her so, stroking her soft, pale fur much to her delight. 'Thank you [if player is female]Mother[else]Father[end if]. I was very afraid of being rejected, so knowing that you feel this way about me too is a relief. It's like some of the books that I've been reading, true love conquering all boundaries.' You stifle a laugh at her outburst, but the sentiment is the same despite her girlish enthusiasm. She snuggles close to you, content to just be in your presence and touching you. However, this must eventually come to an end as you have other things to do today and you should probably give her time before you start having sex with her, a thought that you probably wouldn't have had before the nanite apocalypse you chuckle to yourself as the two of you part with another affectionate kiss.";
		now Resolution of Lux & Player Sexual Interest is 1;
		increase thirst of Lux by 1;
	else:
		LineBreak;
		say "     Not sharing her attraction, you have a difficult task ahead of you. She can see your expression and can instantly tell that you have a reluctant reply to her confession. Kneeling beside her, you stroke her head as you haltingly explain that your affection towards her is no more than that of any parent towards their child and that you're sorry that you don't feel the same attraction as her. She takes this surprisingly well, only a few tears before she snuggles against you. 'But you still love me, right?' Lux asks, desperately looking at you. You ruffle the fur on her head and say that of course you do, just because you aren't romantically attracted to her, doesn't mean that you love her any less. Revealing to you the way that she feels must have taken quite a bit of courage after all. 'Thank you [if player is female]Mother[else]Father[end if]. I think I would like to be alone for a while, or at least only Umbra for company.' After one last affectionate lick on your cheek, she bounds off, leaving you to decide what to do next.";
		now Resolution of Lux & Player Sexual Interest is 2;
	move Player to Grey Abbey Library;
	now Lux & Player Sexual Interest is resolved;

Table of GameEventIDs (continued)
Object	Name
Umbra & Player Sexual Interest	"Umbra & Player Sexual Interest"

Umbra & Player Sexual Interest is a situation.
The level of Umbra & Player Sexual Interest is 0.
The sarea of Umbra & Player Sexual Interest is "Nowhere".

instead of going to Grey Abbey Library while hp of Umbra is 4 and Umbra is in Grey Abbey Library and MaleList is not warded and MaleList is not banned and "LuxUmbra Incest Enabled" is listed in traits of player and Umbra & Player Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Umbra&PlayerSexualInterestEvent;

to Umbra&PlayerSexualInterestEvent: [Umbra expresses interest in the player] [Noon-Early Night]
	say "     Finding Umbra waiting for you as soon as you enter the library, you give him a pat on the head before [if scalevalue of Player < 3]standing [else]crouching down [end if]in front of him to see if he had anything in mind to talk to you about. He seems to appreciate your attention, his tail wagging and letting out cheerful huffs as he presses his head against your palm. 'Hello [if player is female]Mother[else]Father[end if]. You smell nice. Very unique scent. I like it. I miss you when you are not here. So does Lux. Spend more time with us,' he states as he begins to lick your hand. Ruffling the fur on top of his head, you reply that you miss him too while you are away. 'Then stay here. With Umbra. With Lux. With Fang. We all love you. As [if player is female]mother[else]father[end if] as well as mate. All of us.' He notices your look of surprise at this revelation of attraction and backs away, tucking his tail between his legs and flattening his ears. 'Lux warned me of this. I have said too much. I have upset you.' Seeing that he is about to flee in response to your less than enthusiastic reaction, you quickly call him to explain further and ask why he hadn't told you before, an order which he haltingly complies with.";
	say "     'Lux said she had told you. I've seen you in the city.[if Player is submissive] Letting others mount you. Pleasing them. Am I worth less than them? Is there another reason why you don't want to mate with me?[else if Player is dominant]Making others submit to you. Such dominance. I want to be like you. I want to be [italic type]with[roman type] you. Am I not worthy?[else]Pleasing others. Having them please you. You allow both and I admire you for it. I want to experience such feelings with you. Do I not deserve this?[end if].  Lux says we are not normal. Is she right? She said to follow my heart. She said not to feel shame for who I love. But accept that they may not feel same way. I asked [if Fang is Male]Father[else]Mother[end if] and [SubjectPro of Fang] gave same answer. To keep those we love close. Even we cannot love them as much as we want. I love you. I will love you even if you do not feel the same. Do you?' Despite his limited language, Umbra has obviously spent the time to think through his confession. Now the only question is do you feel the same?";
	say "     [bold type]Do you wish to explore this sort of relationship with Umbra?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Smiling at his earnest, if a little blunt, delivery, you crouch down beside your son and hug his head against your chest before planting a kiss between his ears. In an almost conspiratorial whisper, you tell him that you love him too, especially his desire for your approval and his direct manner of speech. He dips his ears in embarrassment, but nonetheless nuzzles against you, eager to feel your touch. Amusingly, his excitement soon overwhelms him and he bounces back and begins leaping around you, his tail wagging wildly and every now and then licking you in the face in an overt display of gratitude and joy. Eventually he stops for long enough to string a few words together again, 'I really do love you [if player is female]mother[else]father[end if]. Nearly as much as Lux.' You decide to take this as he intended, rather than taking offence or be upset, reasoning that it is a very definite way of knowing how important you are to him. Before you can properly return the sentiment, Umbra rushes off, likely to tell his sister all about it, leaving you to shout your affection after his retreating tail.";
		now Resolution of Umbra & Player Sexual Interest is 1;
		increase thirst of Umbra by 1;
	else:
		LineBreak;
		say "     Not sharing his attraction, you have a difficult task ahead of you. He can see your expression and can instantly tell that you have a reluctant reply to his earnest confession of love. Kneeling beside him, you stroke his head as you haltingly explain that your affection towards him is no more than that of any parent towards their child and that you're sorry that you don't feel the same attraction as him. He manages to put on a brave face, the slump in his posture the only outward sign of his disappointment. 'But you do still love me?' Umbra asks, desperately looking at you. You ruffle the fur on his head and say that of course you do, just because you aren't romantically attracted to him, doesn't mean that you love him any less. Revealing to you the way that he feels must have taken quite a bit of courage after all. 'I want to be alone with Lux. Love you.' After one last affectionate lick on your cheek, he dashes off to find his sister for comfort, leaving you to decide what to do next.";
		now Resolution of Umbra & Player Sexual Interest is 2;
	move Player to Grey Abbey Library;
	now Umbra & Player Sexual Interest is resolved;

Table of GameEventIDs (continued)
Object	Name
Lux & Carl Sexual Interest	"Lux & Carl Sexual Interest"

Lux & Carl Sexual Interest is a situation.
The level of Lux & Carl Sexual Interest is 0.
The sarea of Lux & Carl Sexual Interest is "Nowhere".

instead of going up from Grey Abbey Library while hp of Lux is 4 and Lux is in Grey Abbey Library and hp of Carl is 10 and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and Lux & Carl Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Lux&CarlSexualInterestEvent;

to Lux&CarlSexualInterestEvent: [Lux and Carl express interest in each other] [Noon-Early Night]
	say "     Reaching the top of the stairs, you are surprised to find Lux keeping Carl company as he keeps watch over the approach to the library. They currently have their back to you, both sitting on one of the couches that the husky has pulled around so that he can have some comfort while he's on duty. Carl doesn't seem too perturbed, idly stroking the wolf's side while looking out the window, occasionally even bringing a pair of binoculars to his face when something in the distance seems to catch his eye. Your daughter seems content with this at first but gradually becomes increasingly restless, nudging up against him and whining more frequently. 'I told you that this would be boring, didn't I? There's not much reason that you need to keep me company when you could be playing with your brother. I'm used to it anyway,' Carl chides her, not diverting his attention from outside.";
	say "     'But I want to play with yooouuu. [if Fang is Male]Daddy[else]Mummy[end if]'s watching the door, so you can at least take a few minutes away from bird-watching to run around with me, Please?' Lux pleads, looking at the soldier with wide eyes. He lets out a sigh and shakes his head before replying, 'One, you're an adult, I would have thought you would've grown out of this by now. Two, in case you hadn't noticed I'm not four-legged like you so I would likely be at a disadvantage. Three, and this is the most important of all, you're sending mixed messages by asking me to play in an innocent manner while staring at my crotch. Your [if Fang is Male]father[else]mother[end if] would be ashamed.' You realize that you've zoned out and that Lux's focus has definitely shifted downwards. 'Why would [SubjectPro of Fang] be ashamed? I'm not giving myself to a stranger, I find you attractive, and I trust your decision to be your own. If you don't want to, I'll still keep you company. I'm not that selfish. Also, how dare you imply that I should grow out of playing. It's fun. Maybe you should connect more with your youthful side?' Lux retorts, forcing her eyes to meet his.";
	WaitLineBreak;
	say "     'It's not so much that I don't want to, rather that I don't want to piss off your parents. You know what your [if player is female]mother [else]father [end if]is capable of, and I do not want to be bound, gagged, and sent back to Allen just because I let my dick control me,' Carl says, though you can see how much he is tempted on his face, something that you doubt that Lux will miss. To your surprise, she seems embarrassed, tucking her ears back and averting her gaze. 'They wouldn't do that to you,' she says, her voice barely more than a whisper. 'I'll give you some more time to think. I'm sorry that I've made you uncomfortable, but I hope that you'll at least consider what I've said.' With that, she clambers off the couch and walks past you to go downstairs, too deep in thought to do more than briefly nuzzle your hand as she passes by. Carl looks back at you and lets out a sigh. 'You heard that then. She's definitely prettier than Fang, but I get the impression that she's starved for a fuck, if you'll excuse my bluntness. I just didn't want to go behind your back on it, given that she's your daughter, but I also didn't want to give her the impression that I needed to ask permission. So, do you mind if your daughter and I get to know each other more intimately?";
	say "     [bold type]Do you give Carl permission to have sex with Lux in future?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     It doesn't take you long to consider his proposition before consenting. You do however make it clear that you are trusting him to make her feel special and make his first time with her memorable. 'I wasn't considering having a quickie in an alley, but I get what you mean. She's really special and I'll treat her as such,' Carl replies, looking you squarely in the eyes to ensure that you can see his sincerity. 'I'll talk to her later about it. I'm sure she'll be thrilled. Fang's view on it may be less friendly if Lux is wrong, but I trust her to convince her [if Fang is Male]father [else]mother [end if] to her way of thinking. ";
		if HP of Fang is 3 or HP of Fang is 4:
			say "Despite [PosAdj of Fang] position as Alpha, [PosAdj of Fang] kids seem to be able to wrap [ObjectPro of Fang] around their paws, in a manner of speaking.' ";
		else if HP of Fang is 5:
			say "[PosAdjCap of Fang] kids are the most important things in the world to [ObjectPro of Fang], so I'm sure [SubjectPro of Fang]'ll do whatever is necessary to make them happy.' ";
		else:
			say "[SubjectProCap of Fang] may lack authority, but if I did anything to hurt Lux, you'd be third in line, after her brother and [if Fang is Male]father [else]mother [end if]to punish me and I don't think I would survive to give you the chance.' ";
		say "You nod, satisfied with his reply before bidding him farewell and returning to the top of the stairs trying to remember what you were doing before.";
		now Resolution of Lux & Carl Sexual Interest is 1;
		increase thirst of Lux by 1;
	else:
		LineBreak;
		say "     With a sigh, you place a hand on the husky's shoulder and hesitantly explain that you would prefer it if he didn't start a sexual relationship with Lux. Being friends with her is fine and something that you encourage given her curiosity and the integral role he plays in protecting the library, but should the two of them fall out with each other then it could cause difficulties for you as well as anyone else you allow to take shelter here. He nods sadly, understanding the logic behind your decision but disappointed that he and your daughter won't get to explore their feelings for each other. 'Gotcha. Well I suppose I'll return to my watch and think of how I can tactfully rebuff her advances,' Carl says, slumping further onto the couch. You decide to leave him to his job and apologize once more before returning to the top of the stairs to decide what to do next.";
		now Resolution of Lux & Carl Sexual Interest is 2;
	move player to Grey Abbey 2F;
	now Lux & Carl Sexual Interest is resolved;

Table of GameEventIDs (continued)
Object	Name
Umbra & Carl Sexual Interest	"Umbra & Carl Sexual Interest"

Umbra & Carl Sexual Interest is a situation.
The level of Umbra & Carl Sexual Interest is 0.
The sarea of Umbra & Carl Sexual Interest is "Nowhere".

instead of going up from Grey Abbey Library while hp of Umbra is 4 and Umbra is in Grey Abbey Library and hp of Carl is 10 and MaleList is not warded and MaleList is not banned and Umbra & Carl Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Umbra&CarlSexualInterestEvent;

to Umbra&CarlSexualInterestEvent: [Umbra and Carl express interest in each other] [Noon-Early Night]
	say "     Climbing the stairs to the next floor, you find Carl and Umbra keeping watch over the city through one of the windows, though you are unsure how much help the wolf is providing. While the husky is scanning the surrounding area through some binoculars, he is sitting beside him on the couch and wildly wagging his tail. Despite this, Carl seems to appreciate the company, taking the occasional break to ruffle the fur on Umbra's head or stroke a paw through his thick fur. They both turn as you step up behind them, Carl giving you a nod while your son's tail waves even more rapidly as he leaps off to greet you, bumping up against your leg and licking your hand as you affectionately pat him. 'I'd be glad to have him beside me if I were in the city, but his help is limited up here when he can't use binoculars,' the husky comments, earning a reproachful look from the dark-furred wolf. 'Hey, don't look at me like that. I said limited, not non-existent. You're good company and you demand less attention than your sister, especially with how often she asks me to play with her. I usually only get distracted by you when you stretch after getting up.'";
	say "     The contented look on Umbra's face suggests that he is enjoying the praise as well as one-upping Lux. He noses Carl's paw until he begins to stroke the large wolf, scritching between his ears every now and then. You hear the husky mumble, 'Who's a good boy...' to himself, though you get the impression that there is something beyond affection from the way that his eyes stray across the wolf's form from nose to tail. Perhaps feeling you watching him, Carl snatches his hand back and looks embarrassed. 'Your sister is probably missing you, Umbra. You've helped me enough for today and if you're not careful she'll find someone else to play with,' he gruffly tells the wolf. You find it doubtful considering how close Lux and Umbra are, but your son gives a nod and leisurely slides off the couch before stretching in a manner that suggests that he is as interested in Carl as the husky is in him. As he extends his hind legs, his tail raises up behind him more than one might normally expect, revealing his virginal tail-star and full sheath and balls, his scrotum twitching slightly before his tail descends and obscures yours and Carl's view of 'the goods'. As your son disappears downstairs, you turn back to the husky, a silent communication passing between you that this needs to be discussed.";
	say "     [bold type]It would seem that both Carl and Umbra are attracted to each other. Do you wish to allow them to further this relationship?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Not seeing any problem with this, given that they are both consenting adults, you cheerily inform Carl that, should he want to, he may pursue a relationship with Umbra on the condition that no-one gets hurt by it. With how much teasing the wolf has put him through, you doubt that it will take too long for the two of them to take it further than enticing stretching and wistful glances. 'Thanks. I wasn't sure whether it might upset you with him being your son and all, but I'm pleased that you don't mind. If he'd flashed his ass at me like that again I'm not sure whether I would have jumped him to get some release or to beat him for distracting me so blatantly. I guess I know what my answer is now though,' he says with a grin. Now that that is out of the way and considering how much Carl seems to have been distracted recently, you clap him on the shoulder before returning to the top of the stairs to remember what you were on your way to do before you got side-tracked.";
		now Resolution of Umbra & Carl Sexual Interest is 1;
		increase thirst of Umbra by 1;
	else:
		LineBreak;
		say "     From the look on your face, Carl can tell that you aren't going to be supportive of him starting a more intimate relationship with your son but patiently waits for you to justify your decision. Sighing as you think through what you want to say, you then explain that despite Umbra's maturity, he is still relatively young and may not have the experience to understand and properly express his attraction to others. Given the potential danger of the city and the importance of maintaining the safety of everyone in the library, should a relationship between them turn sour, it wouldn't only be them that suffered the consequences. Carl looks like he is ready to argue, but bites back whatever he was about to say, reluctantly accepting this rationalising of the factors behind your decision. 'I'll try and control myself and ignore his teasing then. I hope Umbra finds someone that he can be happy with. The kid deserves it,' the husky eventually says before turning back to the window. Recognizing that the conversation is over, you return to the top of the stairs and decide what to do next.";
		now Resolution of Umbra & Carl Sexual Interest is 2;
	move player to Grey Abbey 2F;
	now Umbra & Carl Sexual Interest is resolved;

Table of GameEventIDs (continued)
Object	Name
Lux & Amy Sexual Interest	"Lux & Amy Sexual Interest"

Lux & Amy Sexual Interest is a situation.
The level of Lux & Amy Sexual Interest is 0.
The sarea of Lux & Amy Sexual Interest is "Nowhere".

instead of going to Grey Abbey Library while hp of Lux is 4 and Lux is in Grey Abbey Library and (hp of Amy > 10 and hp of Amy < 13) and FemaleList is not warded and FemaleList is not banned and Lux & Amy Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Lux&AmySexualInterestEvent;

to Lux&AmySexualInterestEvent: [Lux and Amy express interest in each other] [Noon-Early Night] [Tummy Rubs]
	say "     You enter the library and find only Fang and Umbra by the door. As you approach the two of them, Fang looks at you, 'Lux reading books. Do not disturb her. Difficult to get peace at times,' [SubjectPro of Fang] says, with a particularly pointed look at [PosAdj of Fang] son. You briefly give the two of them a pat, their tails waving on the floor contentedly at your display of affection, before walking between the shelves and deeper into the library. You should be able to check on your daughter without interrupting the tranquility that seems to currently exist in the library. However, as you are about to round a corner, you see that Amy is currently kneeling beside her on the ground, patting and stroking the pale-furred wolf as the two of them chat.'... doubt that I'm the only child, but I haven't been back to see my mother and I have no plans to do so,' the husky shares. 'It must be nice having a brother that you are so close with and can rely on.' Lux releases a happy whine and rolls on her side as Amy's fingers continue to work through her fur and massage the skin beneath.";
	say "     'I don't have much comparison, but Umbra's always been there for me and I don't see that changing. He's the best,' the wolf replies, rolling on her back and peddling her legs in the air as the husky leans over the top of her and continues massaging her undercarriage. 'Ooooh... What it is to have thumbs. I don't remember the last time I had a tummy rub like this.' 'Tell you what, I'll give you and your brother tummy rubs like this everyday if you want. It's almost therapeutic and I'd love to get to know the two of you better,' Amy laughs. 'Pet a little lower and I'll let you get to know me better now,' Lux shoots back, causing the husky to redouble her chuckling. 'Someone's been reading the adult books again. If you had been serious, I might have taken you up on it.' 'What if I was being serious? I don't mind that you're female. I like you and you're fun to spend time with,' Lux haltingly replies, keen and nervous at the same time. Amy stops and looks deeply into her eyes. 'I won't deny that I'm not tempted, but are you sure? I wouldn't want to rush you into it.'";
	say "     [bold type]The two of them seem to be growing closer. Do you wish to allow the two of them to explore this relationship further in future?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Considering that they are both interested in each other and adults, you see little reason why you should interfere and instead remain hidden from view as Amy continues to almost sensually massage Lux's underside, their eyes locked with one another as the world experiences what may be her most intimate tummy rub so far in her life. However, this eventually comes to an end as the two of them burst out in a fit of giggles. 'How am I meant to keep a straight face if you're whispering [']who's a good girl['] under your breath,' your daughter complains to the husky. 'Sorry. Force of habit from my [']alone time['],' Amy replies with a bashful smile. 'To answer your question, it's me. I'm a good girl. At the moment I would say you are too. Pet me for a few more minutes, then I need to get back to reading. I was getting to a good bit,' Lux responds, waving her legs in the air again to encourage the husky to continue. 'As the good girl wishes.' You decide to leave the two of them to bond further and return to the entrance of the library, Fang staring at you carefully, as if [SubjectPro of Fang] knew what you had just witnessed, before giving you a nod and resuming [PosAdj of Fang] guard alongside Umbra.";
		now Resolution of Lux & Amy Sexual Interest is 1;
		increase thirst of Lux by 1;
	else:
		LineBreak;
		say "     Pretending that you weren't just watching them, you quickly select a book from the shelf and round the corner in time to catch the two of them as their faces close in on the other's. Letting out a gasp, you drop the book as Lux sharply turns to you, a look of shock and embarrassment spreading across her face. This has the side effect of causing her muzzle to collide with Amy's, the two of them releasing a pained squeak before the wolf quickly apologizes. 'I'm so sorry Amy. [if player is female]Mum[else]Dad[end if] startled me. Maybe I'm not ready for this yet...' The husky rubs her jaw with one paw while nodding her acceptance and scooching back a bit. 'Fair enough. I wouldn't want to cause any problems between you and your family,' she replies, though she does glance at you disappointedly. Confident that they have both read your feelings on the matter, you return to the entrance of the library, Fang staring at you carefully, as if [SubjectPro of Fang] knew what you had just witnessed, before turning away and resuming [PosAdj of Fang] guard alongside Umbra.";
		now Resolution of Lux & Amy Sexual Interest is 2;
	move player to Grey Abbey Library;
	now Lux & Amy Sexual Interest is resolved;

Table of GameEventIDs (continued)
Object	Name
Umbra & Amy Sexual Interest	"Umbra & Amy Sexual Interest"

Umbra & Amy Sexual Interest is a situation.
The level of Umbra & Amy Sexual Interest is 0.
The sarea of Umbra & Amy Sexual Interest is "Nowhere".

instead of going to Grey Abbey Library while hp of Umbra is 4 and Umbra is in Grey Abbey Library and (hp of Amy > 10 and hp of Amy < 13) and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and Umbra & Amy Sexual Interest is not resolved and a random chance of 1 in 2 succeeds:
	Umbra&AmySexualInterestEvent;

to Umbra&AmySexualInterestEvent: [Umbra and Amy express interest in each other] [Noon-Early Night] [Asks Amy to read him some adult literature as Lux is busy]
	say "     You meet Fang and Lux by the door as they are on their way out. 'I asked [if Fang is Male]Daddy[else]Mummy[end if] for some extra combat practice,' your daughter explains, butting your hand with her nose to encourage you to pat her. 'I'm worried that I rely too much on Umbra so I wanted to see what I am capable of while [if Fang is Male]Daddy[else]Mummy[end if] watches to make sure I'm not in too much danger.' Fang nods in confirmation before escorting the young wolf outside, presumably to find a lone husky or latex fox. Curious as to what the other wolf twin will be getting up to while he is separated from his sister, you wander through the library until you eventually come across him nudging Amy with a book in his mouth. 'Hello there Umbra. What can I do for you?' the husky cheerfully asks, running her hand through the thick fur on the back of the wolf's neck. 'Would you like me to read that to you? I would have thought that you would ask your sister.' Umbra allows Amy to take the book from his grip before answering. 'She's training. I should learn more too.'";
	say "     '... um, this is rather smutty. Are you sure this is what you want me to read to you?' the husky asks with a smirk, an eyebrow raised. 'Yes. Lux suggested it. She said to only read it with someone I like,' he replies, sitting upright and waiting patiently. 'With someone you like, eh... Does that mean you like me?' Umbra doesn't shrink under her teasing gaze, merely nodding. 'Such a compliment from a big, strong wolf,' Amy flirts, kneeling beside him and running a paw down his chest until it drifts beneath him to lightly grasp his sheath. She barely holds it for a second before she notices you watching them, quickly letting go and beginning to stutter out an apology. 'I didn't mean to flirt with your son so blatantly in front of you, but with how handsome he is how could I resist?' Umbra just sits there panting, the tip of his shaft peeking from its sheath. It would seem that the feeling is mutual.";
	say "     [bold type]The two of them seem interested in exploring this relationship. Do you wish to allow them to do so?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     You quickly reassure Amy that she hasn't done anything wrong. Umbra didn't seem to mind, in fact he seemed to be encouraging it. She lets out a sigh of relief. 'Phew. That's a relief. I was sure you were about to scold me and lock me in a chastity belt or something,' the husky says, on hand unconsciously drifting to protect her crotch. 'I'll stick to reading to him for now, but I'll keep it in mind that there shouldn't be any problems if I want to take things further.' Perhaps feeling left out, Umbra presses himself up against your side and licks at your hand while gazing up at you almost worshipfully. 'Do you want to hear book too?' he asks, but you shake your head and tell him that you don't want to interrupt this chance to bond with Amy. He gives a nod in much the same way as Fang would, making both you and the husky-girl smile. 'Well. I should get to reading to him or we'll only reach the fifth sex scene before he has to go to sleep. See you round.' With a wave goodbye, you return to the entrance and wait for Fang and Lux to return from her training.";
		now Resolution of Umbra & Amy Sexual Interest is 1;
		increase thirst of Umbra by 1;
	else:
		LineBreak;
		say "     You cough politely and calmly explain that you would have preferred to have been consulted before she started flirting with your son, especially when you don't fully approve. Umbra's ears droop and his tail that had been wagging when he saw you becomes motionless. 'I would ask for a reason, but I'm not sure that I would want to know what fault you find with me so I'll just have to accept your decision,' she mumbles, her earlier cheer gone. 'In that case, I should probably find something different to read. I wouldn't want to give him the wrong idea. Come on Umbra. Let's look for something suited for promoting platonic friendship.' Your son follows Amy with barely a look back as the husky walks off between the shelves and leaves you to return to the entrance of the library alone to await Fang and Lux's return, your feelings mixed from their unfavorable response to having their budding relationship ended by you. Despite their disappointment, you trust them not to betray your trust in them.";
		now Resolution of Umbra & Amy Sexual Interest is 2;
	move player to Grey Abbey Library;
	now Umbra & Amy Sexual Interest is resolved;


[Table of GameEventIDs (continued)
Object	Name
Lux & Umbra First Mating	"Lux & Umbra First Mating"

Lux & Umbra First Mating is a situation.
Prereq1 of Lux & Umbra First Mating is Lux & Umbra Sexual Interest.
Prereq1Resolution of Lux & Umbra First Mating is { 1 }.
The level of Lux & Umbra First Mating is 0.
The sarea of Lux & Umbra First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Lux > 3 and hp of Umbra > 3 and (TimekeepingVar is 4 or TimekeepingVar is -4) and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and Resolution of Lux & Umbra Sexual Interest is 1 and ((hp of Lux < 5 and hp of Umbra < 5) or (hp of Lux is 5 and hp of Umbra < 5) or (hp of Lux < 5 and hp of Umbra is 5)) and Lux & Fang Sexual Interest is resolved and Lux & Player Sexual Interest is resolved and Lux & Umbra First Mating is not resolved and a random chance of 1 in 2 succeeds:
	Lux&UmbraFirstMatingEvent;

to Lux&UmbraFirstMatingEvent: [Lux is mounted and bred by Umbra] [Mid Afternoon] [Near Entrance to Library]
	if hp of Lux is 5: [Lux has sexual experience]
		say "     [See Lost Directions Suggestion]";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	else if hp of Umbra is 5: [Umbra has sexual experience]
		say "     [See Lost Directions Suggestion]";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	else: [Neither has sexual experience]
		say "     [See Lost Directions Suggestion]";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	if hp of Lux < 5:
		now hp of Lux is 5;
		now hunger of Lux is 1;
	if hp of Umbra < 5:
		now hp of Umbra is 5;
		now hunger of Umbra is 1;
	now Lux & Umbra First Mating is resolved;

Table of GameEventIDs (continued)
Object	Name
Lux & Fang First Mating	"Lux & Fang First Mating"

Lux & Fang First Mating is a situation.
Prereq1 of Lux & Fang First Mating is Lux & Fang Sexual Interest.
Prereq1Resolution of Lux & Fang First Mating is { 1 }.
The level of Lux & Fang First Mating is 0.
The sarea of Lux & Fang First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Lux is 4 and (TimekeepingVar is 1 or TimekeepingVar is -7) and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and Resolution of Lux & Fang Sexual Interest is 1 and Lux & Umbra Sexual Interest is resolved and Lux & Player Sexual Interest is resolved and Lux & Fang First Mating is not resolved and a random chance of 1 in 2 succeeds:
	Lux&FangFirstMatingEvent;

to say Lux&FangFirstMatingEvent: [Lux is mounted and bred by Fang] [Midnight] [In courtyard beneath Full Moon]
	if HP of Fang is 2: [Omega]
		say "     ";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha]
		say "     ";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	else: [Beta]
		say "     ";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	now hp of Lux is 5;
	now hunger of Lux is 2;
	now Lux & Fang First Mating is resolved;

Table of GameEventIDs (continued)
Object	Name
Umbra & Fang First Mating	"Umbra & Fang First Mating"

Umbra & Fang First Mating is a situation.
Prereq1 of Umbra & Fang First Mating is Umbra & Fang Sexual Interest.
Prereq1Resolution of Umbra & Fang First Mating is { 1 }.
The level of Umbra & Fang First Mating is 0.
The sarea of Umbra & Fang First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Umbra is 4 and (TimekeepingVar is 1 or TimekeepingVar is -7) and MaleList is not warded and MaleList is not banned and Resolution of Umbra & Fang Sexual Interest is 1 and Lux & Umbra Sexual Interest is resolved and Umbra & Player Sexual Interest is resolved and Umbra & Fang First Mating is not resolved and a random chance of 1 in 2 succeeds:
	Umbra&FangFirstMatingEvent;

to say Umbra&FangFirstMatingEvent: [Umbra is mounted and bred by Fang] [Midnight] [In courtyard beneath Full Moon]
	if HP of Fang is 2: [Omega]
		say "     ";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha]
		say "     ";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	else: [Beta]
		say "     ";
		say "     ";
		WaitLineBreak;
		say "     ";
		say "     ";
	now hp of Umbra is 5;
	now hunger of Umbra is 2;
	now Umbra & Fang First Mating is resolved;

Table of GameEventIDs (continued)
Object	Name
Lux & Player First Mating	"Lux & Player First Mating"

Lux & Player First Mating is a situation.
Prereq1 of Lux & Player First Mating is Lux & Player Sexual Interest.
Prereq1Resolution of Lux & Player First Mating is { 1 }.
The level of Lux & Player First Mating is 0.
The sarea of Lux & Player First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Lux is 4 and (TimekeepingVar is 3 or TimekeepingVar is -5) and player is not neuter and FemaleList is not warded and FemaleList is not banned and Resolution of Lux & Player Sexual Interest is 1 and Lux & Umbra Sexual Interest is resolved and Lux & Fang Sexual Interest is resolved and Lux & Player First Mating is not resolved and a random chance of 1 in 2 succeeds:
	Lux&PlayerFirstMatingEvent;

to say Lux&PlayerFirstMatingEvent: [Lux has sex with player] [Evening] [Near Entrance to Library]
	if player is male: [Male or Herm]
		if player is pure and (bodyname of player is "Feral Wolf Male" or bodyname of player is "Feral Wolf Bitch" or bodyname of player is "Alpha Wolf" or bodyname of player is "Dire Wolf"): [Special Wolf Scene]
			say "     ";
			say "     ";
			WaitLineBreak;
			say "     ";
			say "     ";
		else: [Non-Wolf Scene]
			say "     ";
			say "     ";
			WaitLineBreak;
			say "     ";
			say "     ";
	else: [Female]
		if player is pure and (bodyname of player is "Feral Wolf Male" or bodyname of player is "Feral Wolf Bitch" or bodyname of player is "Alpha Wolf" or bodyname of player is "Dire Wolf"): [Special Wolf Scene]
			say "     ";
			say "     ";
			WaitLineBreak;
			say "     ";
			say "     ";
		else: [Non-Wolf Scene]
			say "     ";
			say "     ";
			WaitLineBreak;
			say "     ";
			say "     ";
	now hp of Lux is 5;
	now hunger of Lux is 3;
	now Lux & Player First Mating is resolved;

Table of GameEventIDs (continued)
Object	Name
Umbra & Player First Mating	"Umbra & Player First Mating"

Umbra & Player First Mating is a situation.
Prereq1 of Umbra & Player First Mating is Umbra & Player Sexual Interest.
Prereq1Resolution of Umbra & Player First Mating is { 1 }.
The level of Umbra & Player First Mating is 0.
The sarea of Umbra & Player First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Umbra is 4 and (TimekeepingVar is 3 or TimekeepingVar is -5) and player is not neuter and MaleList is not warded and MaleList is not banned and Resolution of Umbra & Player Sexual Interest is 1 and Lux & Umbra Sexual Interest is resolved and Umbra & Fang Sexual Interest is resolved and Umbra & Player First Mating is not resolved and a random chance of 1 in 2 succeeds:
	Umbra&PlayerFirstMatingEvent;

to say Umbra&PlayerFirstMatingEvent: [Umbra has sex with player] [Evening] [Near Entrance to Library]
	if player is male: [Male or Herm]
		if player is pure and (bodyname of player is "Feral Wolf Male" or bodyname of player is "Feral Wolf Bitch" or bodyname of player is "Alpha Wolf" or bodyname of player is "Dire Wolf"): [Special Wolf Scene]
			if player is submissive: [Player is Penetrated]
				say "     ";
				say "     ";
				WaitLineBreak;
				say "     ";
				say "     ";
			else: [Umbra is Penetrated]
				say "     ";
				say "     ";
				WaitLineBreak;
				say "     ";
				say "     ";
		else: [Non-wolf scene]
			if player is submissive: [Player is penetrated]
				say "     ";
				say "     ";
				WaitLineBreak;
				say "     ";
				say "     ";
			else: [Umbra is penetrated]
				say "     ";
				say "     ";
				WaitLineBreak;
				say "     ";
				say "     ";
	else: [female]
		if player is pure and (bodyname of player is "Feral Wolf Male" or bodyname of player is "Feral Wolf Bitch" or bodyname of player is "Alpha Wolf" or bodyname of player is "Dire Wolf"): [Special Wolf Scene]
			say "     ";
			say "     ";
			WaitLineBreak;
			say "     ";
			say "     ";
		else: [Non-wolf scene]
			say "     ";
			say "     ";
			WaitLineBreak;
			say "     ";
			say "     ";
	now hp of Umbra is 5;
	now hunger of Umbra is 3;
	now Umbra & Player First Mating is resolved;

Table of GameEventIDs (continued)
Object	Name
Lux & Carl First Mating	"Lux & Carl First Mating"

Lux & Carl First Mating is a situation.
Prereq1 of Lux & Carl First Mating is Lux & Carl Sexual Interest.
Prereq1Resolution of Lux & Carl First Mating is { 1 }.
The level of Lux & Carl First Mating is 0.
The sarea of Lux & Carl First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Lux is 4 and hp of Carl is 10 and (TimekeepingVar is 0 or TimekeepingVar is -8) and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and resolution of Lux & Carl Sexual Interest is 1 and (Lux & Carl First Mating is not resolved and Lux & Amy is not resolved) and a random chance of 1 in 2 succeeds:
	Lux&CarlFirstMatingEvent;

to say Lux&CarlFirstMatingEvent: [Lux is mounted and bred by Carl] [Pre Dawn] [Upstairs where Carl keeps watch]
	say "     ";
	say "     ";
	WaitLineBreak;
	say "     ";
	say "     ";
	now hp of Lux is 5;
	now hunger of Lux is 4;
	now Lux & Carl First Mating is resolved;

Table of GameEventIDs (continued)
Object	Name
Umbra & Carl First Mating	"Umbra & Carl First Mating"

Umbra & Carl First Mating is a situation.
Prereq1 of Umbra & Carl First Mating is Umbra & Carl Sexual Interest.
Prereq1Resolution of Umbra & Carl First Mating is { 1 }.
The level of Umbra & Carl First Mating is 0.
The sarea of Umbra & Carl First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Umbra is 4 and hp of Carl is 10 and (TimekeepingVar is 0 or TimekeepingVar is -8) and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and resolution of Umbra & Carl Sexual Interest is 1 and (Umbra & Carl First Mating is not resolved and Umbra & Amy is not resolved) and a random chance of 1 in 2 succeeds:
	Umbra&CarlFirstMatingEvent;

to say Umbra&CarlFirstMatingEvent: [Umbra is mounted and bred by Carl] [Pre Dawn] [Upstairs where Carl keeps watch]
	say "     ";
	say "     ";
	WaitLineBreak;
	say "     ";
	say "     ";
	now hp of Umbra is 5;
	now hunger of Umbra is 4;
	now Umbra & Carl First Mating is resolved;

Table of GameEventIDs (continued)
Object	Name
Lux & Amy First Mating	"Lux & Amy First Mating"

Lux & Amy First Mating is a situation.
Prereq1 of Lux & Amy First Mating is Lux & Amy Sexual Interest.
Prereq1Resolution of Lux & Amy First Mating is { 1 }.
The level of Lux & Amy First Mating is 0.
The sarea of Lux & Amy First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Lux is 4 and (hp of Amy > 10 and hp of Amy < 13) and (TimekeepingVar is 0 or TimekeepingVar is -8) and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and resolution of Lux & Amy Sexual Interest is 1 and (Lux & Carl First Mating is not resolved and Lux & Amy First Mating is not resolved) and a random chance of 1 in 2 succeeds:
	Lux&AmyFirstMatingEvent;

to say Lux&AmyFirstMatingEvent: [Amy is mounted and bred by Lux] [Pre Dawn] [Quiet (or not) corner of the library]
	say "     ";
	say "     ";
	WaitLineBreak;
	say "     ";
	say "     ";
	now hp of Lux is 5;
	now hunger of Lux is 4;
	now Lux & Amy First Mating is resolved;

Table of GameEventIDs (continued)
Object	Name
Umbra & Amy First Mating	"Umbra & Amy First Mating"

Umbra & Amy First Mating is a situation.
Prereq1 of Umbra & Amy First Mating is Umbra & Amy Sexual Interest.
Prereq1Resolution of Umbra & Amy First Mating is { 1 }.
The level of Umbra & Amy First Mating is 0.
The sarea of Umbra & Amy First Mating is "Nowhere".

instead of going to Grey Abbey Library while hp of Umbra is 4 and (hp of Amy > 10 and hp of Amy < 13) and (TimekeepingVar is 0 or TimekeepingVar is -8) and MaleList is not warded and MaleList is not banned and FemaleList is not warded and FemaleList is not banned and resolution of Umbra & Amy Sexual Interest is 1 and (Umbra & Carl First Mating is not resolved and Umbra & Amy First Mating is not resolved) and a random chance of 1 in 2 succeeds:
	Umbra&AmyFirstMatingEvent;

to say Umbra&AmyFirstMatingEvent: [Amy is mounted and bred by Umbra] [Pre Dawn] [Quiet (or not) corner of the library]
	say "     ";
	say "     ";
	WaitLineBreak;
	say "     ";
	say "     ";
	now hp of Umbra is 5;
	now hunger of Umbra is 4;
	now Umbra & Amy First Mating is resolved;]

Lux & Umbra ends here.
