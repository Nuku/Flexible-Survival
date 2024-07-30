Ava by Sundered Dragon begins here.
[Version 1 Margay taur tf test]
[Version 1.1 pre-preg frame work]
[Version 1.2 MVP Build]
[Version 1.3 The mighty quest for infinite taurs]
"Adds a incorrigible NPC name Ava to the Flexible Survival game."

[Note to Self: Check Ava's menus and makes sure she is set 'Thirst if Ava is 0' for pre-TF content and 'Thirst is >= 1' for post TF content this may be the cause of the menu issue.]


[  HP of Ava                            ]
[ 0 = not met                           ]
[ 1 = talked once                       ]
[ 2 = talked twice                      ]
[ 3 = Margay Taur TF unlocked           ]
[ 4 = Ava Fecund Friends can start          ]
[ 5 = Ava Fecund Friends has started        ]
[ 6 = Ava Fecund Friends is complete        ]
[ 7 = Ava has helped breed Becky        ]
[ 8 = Ava has met broodmother Becky     ]
[ 94 = Margay Taur is locked            ]
[ 95 = Ava Rebuked state temp           ]
[ 96 = Perm rebuke                      ]


[             Thirst of Ava                ]
[ 0 = not offered margay taur infection yet]
[ 1 = Obtained margay taur infection       ]
[ 99 = refused margay taur infection       ]

[               Lust of Ava                              ]
[ 0 = no taur sex                                        ]
[ 1 = first taur mating                                  ]
[ 2 = second taur mating                                 ]
[ 3 = third taur mating                                  ]
[ 99 = Player can not become a margay taur quest progress]

[Hunger of Ava                                      ]
[ 0 = neutral interest in pregnancy                 ]
[ 1 = growing interest in pregnancy                 ]
[ 2 = partial maiesiophilia                         ]
[ 3 = Full blow maiesoiphilia                       ]
[ 4 = Ava can Breed Becky                           ]
[ 5 = Ava is ready to blow Alex                     ]
[ 6 = Ava is open to fucking gyno taurs             ]
[ 99 = No preg content for me please                ]
[ 100 = Ava was stopped from blowing Alex           ]

[Energy of Ava]
[ 0 = baseline                                      ]
[ 1 = Matt showed the Player where Alp-69 is        ]
[ 2 = Player can find Alph-69                       ]

[ Libido of Ava                                     ]
[ 0 = not pregnant                                  ]
[ 1-12 = first signs of pregnancy                   ]
[ 13-28 = About to pop                              ]
[ 29 = Ding kittens are done                        ]

[ Level of Ava                                      ]
[ 0 = no kittens *sad dragon noises*                ]
[ 8-32 = new mother                                 ]
[ 40-64 = seasoned broodmother                      ]
[ 72-104 = professional breeder                     ]
[ 105-999 = Makes Nadia look like a newb            ]
[ 1000-2000 = Genghis Khan is rolling in his grave  ]
[ 2008-9999 = Please stop, inform is crying         ]

[ Intelligence of Ava                                                    ]
[ 0 = Newsstand Quest not Given                                          ]
[ 1 = Newsstand Quest given                                              ]
[ 2 = Newsstand Quest ready to turn in                                   ]
[ 3 = Newsstand Quest completed                                          ]
[ 4 = Ava finishes her project but her and the PC are not fuck buddies   ]
[ 5 = Ava finishes her project while her and the PC are fuck buddies     ]
[ 6 = Ava finishes her project while her and the PC can breed one another]
[ 7 = Ava finishes her project and both are fucking Becky                ]

[                       Humanity of Ava                                  ]
[                        0 = Baseline                                    ]
[                        1 = canning facility looted                     ]
[                        99 = PC fled, pussy                             ]

[                  TODO                       ]
[ Add Cuddle fuck scene for everyone          ]
[ Add preg timer and sex scenes               ]
[ Include preg walk in scenes                 ]
[ Finish Becky's Brood line                   ]
[ Shiro, Hermacore, and feral Margay taurs    ]
[ If people want it add solo preg scenes      ]
[ Unleash the evil that is Cloud Paw          ]

[             XP of Ava                    ]
[             0 = math                     ]
[             1 = writing                  ]
[             2 = spelling                 ]
[             3 = critical thinking        ]

A postimport rule:
	if HP of Ava is 5 and Fecund Friends is resolved and Breeding Material is unresolved:
		now Breeding Material is active;

A postimport rule:
	if Finding Alp sixty nine is resolved and Industrial canning facility is unresolved:
		now Finding Alp sixty nine is unresolved;

LastAvamilked is a number that varies. LastAvamilked is usually 250.


Section 1 - Everybody loves somebody sometimes

Table of GameCharacterIDs (continued)
object	name
Ava	"Ava"

Ava is a woman.
Ava is in Last Chance Auto Body.
ScaleValue of Ava is 5. [12']
Body Weight of Ava is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ava is 1. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ava is 9. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ava is 25. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ava is 5. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ava is 30. [length in inches]
Breast Size of Ava is 16. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ava is 12. [count of nipples]
Asshole Depth of Ava is 40. [inches deep for anal fucking]
Asshole Tightness of Ava is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ava is 0. [number of cocks]
Cock Girth of Ava is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ava is 0. [0 Inches]
Ball Count of Ava is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ava is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Ava is 1. [number of cunts]
Cunt Depth of Ava is 40. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ava is 3. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ava is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ava is false.
PlayerRomanced of Ava is false.
PlayerFriended of Ava is false.
PlayerControlled of Ava is false.
PlayerFucked of Ava is false.
OralVirgin of Ava is false.
Virgin of Ava is false.
AnalVirgin of Ava is true.
PenileVirgin of Ava is true.
SexuallyExperienced of Ava is true.
TwistedCapacity of Ava is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ava is false. [steriles can't knock people up]
MainInfection of Ava is "Margay Taur".
Description of Ava is "[Avadesc]".
Conversation of Ava is {"Sex isn't all that important, but it is when you love someone very much."}.

the scent of Ava is "Ava emits a faint calming scent evocative of the moments before a rainstorm."

to say Avadesc:
	if "Breeder" is not listed in Traits of Ava:
		say "     Standing a solid twelve feet tall when on all fours, Ava's margay taur body easily dwarfs many of the infected you've encountered up until this point. Her gentle citrine colored feline eyes are wide and expressive making you smile regardless of your mood when her gaze meets yours. Framed by a natural black liner reminiscent of an Egyptian queen and cast upon a pelt of amber yellow, her cat-like face is at once both exotic and innocent. Much like the margays at the state fair that she likely descends from, Ava's humanoid torso is generously endowed with a sextet of P-cup breasts capped by soft pink nipples, with a huggable fluffy paunch. Her humanoid arms, decorated in adorable rosettes, have a pleasing amount of pudginess to them. Ava's hands meanwhile appear mostly sapien in design, small barely noticeable black pads are visible on her palms. Strangely or perhaps not so strangely instead of finger nails, Ava has tiny partially concealed slits on the tips of her fingers housing her long claws.";
		say "     Melded to the area where her groin would be is Ava's bestial lower body. To the casual observer, her feral portion would resemble that of domesticated feline though markedly larger. Her furry paws, comparable in scale to dinner platters, appear built more for stalking prey than out right chases, a reality her thunder thighs heartily second. Her undercarriage mirrors her anthro half having six evenly proportioned M-cup breasts tucked between her legs. Sneaking a quick peek at her supple ass, you notice Ava has a [one of]seemingly bottomless[or]canyon-like[or]cavernous[or]expansive[or]elephantine[or]titanic[or]person-swallowing[at random] cunt. Strangely, her plush pink nether lips though unerringly large have a rather human appearance to them. Tied in a bow around the end of Ava's billowing tail is a blue blanket with the Last Chance's log stamped on the corner.";
	else if "Breeder" is listed in Traits of Ava and Libido of Ava is 0:
		say "     Measuring in at a lofty twelve feet tall when on all fours, Ava's margay taur body eclipses the majority of the mutants you've encountered to date. Her gentle feline eyes are wide and expressive making you smile regardless of your mood when her gaze meets yours. Framed by a natural black liner reminiscent of Egyptian royalty and cast upon a pelt of yellow amber, her cat-like face is at once both exotic and innocent. Her anthro half largely resembles the hefty cats in the state fair and is graced by a collection of six plump P-cup breasts topped by perky pink nipples. Since ingesting the transformative cocktail created by Dr. Medea though, her lush body now sports a set of six smooth hairless tendrils growing from her shoulder blades. From experience, you know she has complete control over them and has slowly begun incorporating their use into her day to day life. Her humanoid arms meanwhile are decorated in adorable rosettes and have a pleasing amount of pudgy softness to them.";
		say "     Ava's hands appear mostly sapien in design, with small, barely noticeable black pads visible on her palms and fingertips. Strangely, or perhaps not so strangely, instead of finger nails, she has tiny partially concealed slits on the tips of her fingers housing her long retractable claws. Melded to the area where her groin would be is Ava's bestial lower body, and to the casual observer, her feral portion would resemble that of domesticated feline, though markedly larger. Her furry paws, comparable in scale to dinner platters, appear built more for stalking prey than out right chases, a reality her thunder thighs heartily second. Her undercarriage mirrors her anthro half having six evenly proportioned M-cup breasts tucked between her legs. Sneaking a quick peek at her supple ass, you notice Ava has a [one of]seemingly bottomless[or]canyon-like[or]cavernous[or]expansive[or]elephantine[or]titanic[or]person-swallowing[at random] cunt. Her lush pink nether lips though unerringly large have a rather human appearance to them. Tied in a bow around the end of Ava's billowing tail is a blue blanket with the Last chance's log stamped on the corner. Hidden a layer of fur at the tip of her tail though is her ovipositor slit.";
	else if "Breeder" is listed in Traits of Ava and Libido of Ava > 1 and Libido of Ava <= 12:
		say "     Measuring in at an impressive twelve feet tall when on all fours, Ava's Margay taur body eclipses the majority of the mutant you've encountered to date. Her gentle feline eyes are wide and expressive that never fail to bring a smile to your face regardless of your mood when her gaze meets yours. Framed by a natural black liner reminiscent of an Egyptian queen and cast upon a pelt of amber yellow, her catty face is at once both exotic and innocent. Having been knocked up after one of your recent escapades Ava's already plump anthro half has gained a pleasing amount of mass. Her anthro womb is starting to bulge out into a slightly spherical shape. Despite the early stages of her pregnancy her breasts have already swollen to inhumanly large R-cups that fight each other for space. Flushed with raw rich cream, her uppermost milk tanks rest comfortably atop her growing tummy. Were she some manner of pathetic lowly biped, her lower four breasts would sag against her waist. Due to the elastic nature of her skin, her weighty mounds retain an impossibly shapely and perky disposition despite their size."; ["Four legs good! Two legs bad!" Johnny Bravo, probably]
		say "     Still, their heavenly mass wobbles enticingly with her every motion, promoting your lovely playmate to employ a number of her tendrils as a living bra. The rest she uses to mitigate her growing mobility issues caused by her hyper attributes. From what you've seen, she is quite adept in finding uses for them. Melded to the area where her groin would be is Ava's bestial lower body. To the casual observer, her feral portion would resemble that of a slightly pregnant domesticated feline. Her large furry legs at times seem to struggle with the growing mass of her feral tummy pushing against her P-cups, but she doesn't seem to mind the mild mobility issues. If anything she seems quite happy to use her condition as an excuse to be lazy or pamper her growing body. Not that you can blame her, her distended stomach looks rather cute the way it sways down past her knees and the adorable sight of her milky dugs brushing her well-seeded middle fills your heart with no small amount of pride with the knowledge you've successfully knocked up such a beautiful tauress.";
		WaitLineBreak;
		say "     Sneaking a quick peek at her supple ass, you notice Ava has a [one of]seemingly bottomless[or]canyon-like[or]cavernous[or]expansive[or]elephantine[or]titanic[or]person-swallowing[at random] cunt. As her pregnancy advances, you notice her blushing pink human-esque nether lips have grown ever thicker as a thin trickle of dew leaks from the gravid tauress's fertile flower as her hormonal body is enhanced by the effect of her condition. More than once, you've found yourself distracted by the sweet scent of her simmering maternal desire. Spouting from her fecund flank is Ava's incredibly long prehensile tail. Lighty tied in a classical bow near its terminus, is a blue blanket with the Last Chance's logo stamped on the corner. Hidden beneath the dense layer of fur coating its tip though is her ovipositor slit. Normally invisible to all but the most perceptive of individuals, your enhanced senses can easily pick up the subtle coiling scent of feminine desire emanating from the exotic appendage.";
	else if "Breeder" is listed in Traits of Ava and Libido of Ava > 12:
		say "     Measuring in at a towering twelve feet tall when on all fours, Ava's Margay taur form eclipses the majority of the mutants you've encountered to date. Her gentle feline eyes are wide and expressive making you smile regardless of your mood when her gaze meets yours. Framed by a natural black liner reminiscent of an Egyptian queen and cast upon a pelt of amber yellow, her cat-like face is at once both exotic and innocent. Having been thoroughly knocked up after one of your recent escapades Ava's already rather plump anthro midriff has grown into a glorious taut chubby dome. Swaddled in a thick layer of soft adipose and silky fur, her resplendent tum droops down almost to her knees. Despite her size and constantly soaring weight, the sheer volume of amniotic fluid sloshing inside her combined with the size of your kittens, and the gentle support of her tendril, her plush tummy remains perfectly spherical at all times. Looking closely, you just about make out the blushing pink outline of a cute outie navel beneath her glossy fur.";
		say "     Her already sizable breasts have gained a few more inches, swelling to monumentous T-cups. Her uppermost laze happily along the supple shelf of her growing tummy. Supported by the valiant efforts of her tendrils, Ava's remaining upper breasts frame her well-seeded tum in a jiggling ring of bountiful excess. Flushed with fatty cream, her perky nips hardly need even the slightest bit of stimulation to express. Far from embarrassed by this, Ava seems to take a bit of pride at the light waterfalls of alabaster milk leaking from her chest. A part of you takes a measure of solace in knowing your kitten will be well-fed when the time comes, you can't help but admit you wouldn't mind trying some of her mothers milk too. Perhaps you should [italic type]milk ava[roman type], the next time you're feeling parched. Thanks to their size, Ava's assets completely block her view of anything below them. At this point she's almost completely dependent on her tentacles to support her growing girth, much less waddle around The Chance.";
		WaitLineBreak;
		say "     Not that she seems to mind, the hormone-addled cat girl is quite enamored with current state as she spends more and more of her time petting her plump curves and caring for your gestating brood. More than once, you've heard her humming to your kitten, or encouragingly massaging their slumbering forms. Melded to the area where her groin would be is Ava's bestial lower body is dominated by her growing midriff. To the casual observer, her feral portion resembles a comically gravid house cat's. Her thick furry legs can barely support her blossoming stomach and can hardly even fit around the heavy swollen thing as her kitten-bloated belly sways perilously close to the ground. Her animalistic dugs have grown into weighty P-cups, she has to support with her tendrils lest they drag on the floor. Not that Ava cares about her near total loss of mobility, if anything she seems to embrace her broodmother proportions. Despite her encumbrance, her glowing fur is kept immaculately clean, even her claws are sharped to the keenest of edges and seem to shine with some bountiful inner light.";
		say "     Sneaking a quick peek at her fertile flanks, you spot Ava's [one of]seemingly bottomless[or]canyon-like[or]cavernous[or]expansive[or]elephantine[or]titanic[or]person-swallowing[at random] cunt, positively crinkling with need, her blushing pink lips molded into lush fuckable cameltoe by her body's exotic hormones. Even the slightest breeze is enough to elicit a pleased little purr or desperate quiver from her as she struggles with ever-building lust. Spouting from her fecund flank is Ava's incredibly long prehensile tail. Lighty tied in a classical bow near its terminus, is a blue blanket with the Last Chance's logo stamped on the corner. Hidden beneath the dense layer of fur coating its tip is her ovipositor slit is normally invisible to all but the most perceptive of individuals, but your enhanced senses can easily pick up the subtle coiling scent of feminine desire emanating from the exotic appendage.";


Instead of conversing the Ava:
	if HP of Ava is 0:
		say "     Slipping through the partially closed garage door, you find yourself face to face with the garage's feline occupant. Tauric in nature, they would be around twelve feet tall when standing all fours. Their head initially reminds of an average house cats, yet their wide Brobdingnagian eyes and unique facial markings speaks to them more of a nocturnal predator than some lap animal. Adding a measure of credence to this assumption is their luminous pelt, yellow and white with miniature rosettes sprinkled throughout. A feature only present in the designer savannah cat people created some years ago, leopards, ocelots, and... margays! Bingo, you opine mentally patting yourself on the back as you connect the taur's coat with the plump cat girls at the state fair. A hefty creature, the taur's anthro half supports a husky frame with six P-cup fun bags.";
		say "     Fused to their waist is an equally fluffy lower body built in the order of a predatory feline's. Their digitigrade legs have a healthy amount of padding that almost obscures their set of developed calves. Fighting for attention between their legs is another set of six thirteen-inch breasts. Swishing behind them is a billowing tail coated in rings of gold and burnt ebony. Wrapped around the end of this appendage is a small baby blue blanket. She, you realize, is solely female observing her lack of male equipment. Quite the rarity given that most of the tauric Panthera you've encountered tend to be inter-gendered. Then again, she's genus Leopardus after all, but that's neither here nor there.";
		WaitLineBreak;
		say "     Her room is sparsely furnished with a faded brown rug, a cobbled together futon, and an old davenport being the sole amenities. The floor, though relatively clean in that there are no bits of dirt or hair laying about, has a good deal of loose paper has been scattered. All of which have random portions expertly cut out. Most of the walls are bare, yet in the rear, you can see what you believe to be the beginnings of a collage made out of old reading material. Or it's her scrapbook collection minus that whole book part. Which would make it more of a scrap wall? You muse as the tauress justifiably interrupts your train of thought.";
		if Player is Male: [Male or Herm]
			say "     'Uh-um, h-h-hello there, does Dad- I mean Drake know you're here?' She stammers with a nervous light in her eyes as she backs her rump against the wall as if to keep her backside as far from you as possible. Wanting to put her at ease, for you doubt you'd get much in the way of conversation from her otherwise. You inform the tauress that Drake asked you to stop by. 'That's a relief,' she sighs, looking a little calmer, yet she keeps her hind end away from you. 'Oh, my name is Ava,' she adds awkwardly, eyeing you as one would a dangerous animal.";
		else: [Female or Neuter]
			say "     'Oh hi there, sorry I didn't hear you walking by, or I would have tidied up a bit. Please just give me a second to clean up.' The tauress says in a demure embarrassed tone as she hurriedly sweeps the loose leaf paper into a pile with her tail. Explaining to her it's alright, you inform the tauress that Drake asked you to say hello, not inspect her living arrangements. 'Right sorry, I didn't mean to say you were, not that you couldn't if you wanted to. Or that you should, I mean,' she shakes her head sighing. 'My name is Ava, nice to meet you,' she says in a much more even tone. In reply, you give Ava your name telling her likewise, which puts a cute catty smile on her face.";
		now HP of Ava is 1;
	else if HP of Ava is 1:
		say "     Having never encountered a Margay Taur before, you ask Ava how she acquired her current form. 'Huh,' Ava tilts her head, 'I've been like this,' she says looking at you like you've just asked her if fire was hot, water were wet, and the sky were blue. Flabbergasted, you inquired when that was. 'I am not sure, let me think,' Ava props her left hand under her chin. 'Actually, now that you mention it I don't know when I was born.' Your curiosity peaked. You decide to ask Ava if she perhaps remembers where she was born. 'Mmhh,' Ava nods, 'it was this weird place called the State Fair.' Feeling like you're getting somewhere, you inquire as to why she left. Reasoning that as far as you know, most margay infected don't leave the fairgrounds. 'Oh, I was looking for my mommy and daddy.' Ava replies as if it were the most obvious thing in the world. Finding this an odd response, you point out since she's part margay, wouldn't one of them be her mother. 'Maybe except other margays don't like me, I tried talking with them, really I tried my hardest, but they would hiss and growl at me saying I was [']too big['] or [']not right[']. The other creatures were just as bad, always chasing me, stealing my food, or trying to shove their gross cocks in my face,' Ava says, audibly gags and looking a little green in the gills.";
		say "     '*Cough* sorry about that,' Ava covers her mouth, 'I got really queasy. So I left, I thought maybe I could find my daddy out in the city. Maybe he and I could look for mommy at the fair. I never found him though,' she says, tucking her chin into her bosom and sighing. You ask why she came to The Chance then if she was looking for her family. 'This,' Ava flashes a blanket with The Chances name tied around her tail. 'I've had it since I was a kitten. I don't know who gave it to me though, but it's all I've had to go on,' she says, crossing her arms as if she were cold. Wondering what happened next, you ask her how her search went. 'Bad,' she peeps, 'most of the people I meet either ran away or tried hurting me. Sometimes I could get them to go away if I gave them my food and water but... not always.' You ask her if she ever fought back. 'Once, but it didn't feel good.' Cocking your brow, you ask if she could be a bit clearer. Ava shrugs, 'I can't really explain it but I get this tightness right here when I think about seeing people in pain, kind of like I can't breathe,' she says placing a paw on her chest.";
		WaitLineBreak;
		say "     Though a part of you wants to mention that sounds like a conscience, you decide not to derail her again and let her continue. 'It still hasn't gone away, and I'd rather be beaten up again than feel that way.' Not sure how to respond to such an admission, you inquire about what happened next. 'I don't know. I remember my head started getting really light and hot like I was always standing in the sun all the time then... I-I think I got chased out of the city or maybe I left on my own. My memory is kind of fuzzy but I know at some point I ended up in the plains. It wasn't that bad since the... ferals? I think that's what Drake calls them, out here didn't bother me but they didn't talk to me either. So, I, um sort of wandered around until I got lost after this stinky rain washed out my trail. But not long after that,' Ava brightens up, 'I found a, what did Drake call it, a billboard I think, with the same marking as the one on my blanket.' You ask if that's how she found her way here.";
		say "     'Mh-hm, there was a road I followed leading right up to The Chance. I couldn't read it at the time though but I recognized the L.C. mark,' Ava answers, pointing to her bow. Remembering the less than warm reception Augustus gave you. You ask Ava how her first encounter with Drake went. 'To be honest, the way he first looked at me even though he was nude and unarmed. It was probably one of the most frightening experiences I've had. There was just something about his expression that said I was less than a bug to him, but then, I saw Kathy standing him clutching her tummy as she hid behind Drakes['] leg. I realized what they were, a mommy and a daddy. For a second I thought they were mine, wait that's not true.' She mews mournfully. 'I wanted them to be mine but... they aren't.' Ava whimpers. Wondering how things went from there, you inquire if Ava was able to learn anything about her family. 'No, Drake donates the linens here every few years to the Red 't', so it can given it to other people. Or something I don't really understand it myself.'";
		WaitLineBreak;
		say "     Nodding your head, you ask Ava why then she is still at the Last Chance. 'I don't know where else to go. Besides, I like being here with Kathy and Drake. They're always so nice to me. Drake even gave me this room. That was the first time anyone ever gave me anything,' Ava adds, patting a nearby wall with her tail. What about her parents? Doesn't she want to find them, you ask. 'A little bit, but I am not so sure anymore,' Ava says, furling her ears. 'I mean if my parents actually cared about me why was I abandoned? But Drake and Kathy, they listen to me. They really care what I think, and how I feel. My [']real['] parents couldn't even be bothered to name me, Da-Drake did. He said it was the name of a beautiful woman who taught a great man how to sing the blues.' Interesting you muse then turning your attention to Ava's work in progress, you inquire next as to what she's doing with it. 'That it's called a-a-um coil edge, no coal age, or is it a college? Oh wait it's a collage I am making of mommy and Drake. See there's Drake's left eye,' Ava points to a number of overlapping brown-ish photos depicting an African savannah. 'And that's part of mom's tail,' Ava gestures at ads for gold Rolex watches. Sadly, you don't [']see['] either of these things, no matter which way you look at it.";
		say "     To you it just looks like a bunch of photos randomly adhered to a wall. Perhaps reading your expression, Ava chimes in. 'I am not anywhere near done though. You see, since I already cut up most of the spare books and magazines around here,' she says motioning to the piles of sliced up literature. 'I'm, well, running out of art supplies. I mean I get lucky from time to time and see something I missed. But still I haven't gotten anywhere in quite awhile.' Ava says, propping her chin on her wrists. 'Maybe if I,' Ava shakes her head as if to clear it, 'no that's a bad idea.' Maybe what's a bad idea? You inquire. 'Oh, I was thinking about [bold type]hunting [roman type]around the [bold type]high rise district [roman type]for this big green box that had all these colorful pieces of paper on display. I think Drake said it's called a [bold type]newsstand[roman type]?' Ava shrugs. 'I'm pretty sure I could use that, but I don't want to leave the Last Chance. I'm sure something's living in it though.' Ava sighs as she wistfully stares at her project, 'Oh well I am not going to worry about it.'";
		now HP of Ava is 2;
		now Intelligence of Ava is 1;
		now Newsstand raid is active;
	else if HP of Ava <= 3 or HP of Ava <= 94:
		say "     [one of]'I feel sorry for Da-Drake, he's almost always on watch.'[or]'I love spending time with Kathy, she's so cuddly and her milk tastes great.' Ava says involuntarily licking her lips.[or]'Do you like my room? Drake put it together.'[or]'I hope Drake and mo-Kathy's cubs like me.'[or]'I have no idea what I'd have done if Drake and Kathy hadn't taken me in.'[or]'Have you been to the garden?'[or]'Would you like some [bold type]milk[roman type]? I have plenty stored away under my bed.' Ava says gesturing to her futon.[or]'I don't know why but after I began suckling from Kathy I started getting all milky. It's kind of fun actually listening to the sloshing sounds my breasts make, still I wish I had people to share it with.'[or]'Each place I roam,' Ava hums softly to herself.[at random]";
	else if HP of Ava >= 95:
		say "     [one of]Ava is too afraid to speak with you.[or]Ava has nothing say to you.[or]She doesn't seem interested in talking.[at random].";


Avamilking is an action applying to nothing.

Understand "Milk Ava" as Avamilking.

Check Avamilking:
	If Ava is not visible, say "Who?" instead;

carry out Avamilking:
	if HP of Ava is 0 or HP of Ava is 96:
		say "     Error, you should not be seeing this!";
	else if lastAvamilked - turns < 6:
		say "     Sorry, I am out of bottles right now. If you come back a little later, I am sure I'll be able to scrounge up more though. I don't know why but the plains are covered in them for some reason.' Ava says, shrugging.";
		stop the action;
	else if HP of Ava < 95:
		say "     Feeling a tad parched, you ask Ava if she has any milk to spare. 'I sure do,' Ava exclaims, pushing her mattress aside, revealing a steel grate which covers what appears to be a hydraulic lift. And only with two clawed fingers, Ava casually picks up the metal slab then reaches inside to pull out a few banal glass bottles filled to the brim with a heavy cream. 'Here, this is all I have for now. I can give you more later. I need some time to find more bottles.' she says, handing you a collection of cool to the touch containers.";
		ItemGain margay taur milk by 3;
		now lastAvamilked is turns;

an everyturn rule:
	if "Breeder" is listed in Traits of Ava:
		if Libido of Ava >= 1 and Libido of Ava < 29:
			increase Libido of Ava by 1;
		else if Libido of Ava is 29:
			now Pick Up is unresolved;
			now Electric Boogaloo is unresolved;

Section 2 - Everyone falls in love somehow

the fuckscene of Ava is "[sexwithAva]".

to say sexwithAva:
	if HP of Ava > 1 and HP of Ava < 95 and Thirst of Ava >= 1 and Cock Count of Player < 1 and cunt count of Player >= 1:
		say "[AvaSexMenu]";
	else if HP of Ava > 95:
		say "     She doesn't seem interested.";
	else:
		if "Propositioned" is listed in Traits of Ava:
			say "     She doesn't seem interested.";
		else if ((Nightmaretf > 0) or (wrcursestatus >= 7 and wrcursestatus < 100) or ((JackalManTF > 0 and JackalManTF < 5) or (JackalBoyTF > 0)) or (isHellhound is true) or ("Ceryneian Blessed - Anthro" is listed in traits of Player or "Ceryneian Blessed - Feral" is listed in traits of Player or "Ceryneian Blessed - Taur" is listed in traits of Player)):
			say "     They don't seem interested. [bold type]Author's note: Unfortunately, Ava's content does not play well with permanent infections at the moment.[roman type] If you would like to view Ava's content in full, you may have to either start a new female character, or find a way to remove your permanent infection. Either way, we hope your stay at The Last Chance, and thank you for playing Flexible Survival. If you wish to support the game further feel free to check out our Subscribe Star and Patreon pages. You can also chat with your fellow mutants on are discord channel.";
		else:
			if Cock Count of Player > 0: [Male and Herm]
				say "     Hey Ava, you were wondering if she, you begin but perhaps reading your mind, Ava shoots you down before you even have a chance to finish your sentence. 'No.' she peeps. But I didn't even say anything yet, you reply. 'I...I know what you want,' she stammers pointing at your growing wood, 'I don't like those.' Oh ok then, you shrug their loss. You guess she must not a fan of the old meat and two veg.";
				TraitGain "Propositioned" for Ava;
			else if cock count of Player < 1 and cunt count of Player < 1: [Neuter]
				say "     They don't seem interested.";
				TraitGain "Propositioned" for Ava;
			else if Cunt Count of Player >= 1 and HP of Ava < 94: [Female]
				say "     Sauntering beside Ava, you ask the cute tauress if she's free right now. 'Yup, there's not a lot to do around here right other than wait for the military.' Ava says, shrugging her shoulders. Well you can think of a few things the two of you can do to pass the time, you tease while hooking your arm around her soft tauric waist to the best of your abilities. 'Really like what,' She responds rather cluelessly. Well you can give that sweet little muff of hers a lick, or how about putting that nice fluffy tail of hers to work. You tease, tracing your fingers down Ava's feral half. Maybe the two of you can find out how far that tongue of hers can reach together. 'Oh,' she purrs, 'that does sound nice but um... I uh.' Ava says, swishing her tail nervously behind her.";
				say "     What's wrong, never been with another person before? You ask. 'No mommy and I play all the time, it's just,' Ava's paws go to her bountiful chest, 'I am a little too full right now and it kind of hurts to bounce around.' She says cupping her lower most bosom, and with barely any coaxing a thin stream of cream begins to leak out.";
				LineBreak;
				say "     [bold type] What would you like to do?[roman type][line break]";
				LineBreak;
				say "     [link](1)[as]1[end link] - Turn her down?"; [taur lock]
				say "     [link](2)[as]2[end link] - Have a drink?"; [taur infect]
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 2:
					LineBreak;
					say "(1-2)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] turn her down?, [link]2[end link] have a drink?";
				if calcnumber is 1:
					LineBreak;
					say "     Maybe another time you tell her, you're not really into that sort of thing. 'Oh alright then,' Ava mopes.";
					now HP of Ava is 94;
					now thirst of Ava is 99;
					now lust of Ava is 99;
				else if calcnumber is 2:
					LineBreak;
					say "     Well, what kind of person would you be if you didn't help a girl out in her time of need? You reply, taking the tauress's milky paw in hand and playfully licking off the excess cream. Purring happily in response to your kind gesture, Ava leads you over to her bed saying, 'T-thank you, it's strange though, I never got all milky until I met mommy. Not that I don't like it,' she mews tracing along the colorful borders of the exotic pelt covering her tits, 'but sometimes there's so much. Even Kathy has a hard time emptying them and the pressure gets to me after a while.' Ava sighs, settling her plump fame on her collection of mattresses, her leaky tits on full display. Well you don't know about Kathy, but you intend to enjoy a proper meal, you joke, licking your lips as you nuzzle up to the big kitty's titty. The plus sized cat girl purrs with delight as she lovingly takes your head in her massive paw, and gently strokes your cheeks. God her paws are soft, you muse rubbing your checks against her pillowy pads as she props her lowermost leaky milk tank before you. 'Please,' she mewls, batting her eyes at you.";
					say "     Ah, what a needy kitty you think to yourself, giving her milky nip a little lap that sends a small ripple through her fluffy adipose as she whines delightedly like a spoiled kitty for more. This brings a grin to your face as a section of your nanite-warped mind can't help but appreciate the sight of such a large hypersensitive tauress mewling at so light a touch. Or her sweet flavor titillating your pallet, as you kiss and nibble your massive plaything's chest. She must be quite pent up or very inexperienced. You think to yourself as your dominant hand glides over Ava's achy tit caressing her tender nipple with your [FaceName of player] tongue earning you a cute spray of heavy cream. With a subtle kiss, your lips warp around her teat, as a slow trickle of warm thick milk greets your waiting mouth. You greedily gulp down this meager offering wanting to savor the experience of that perfect moment when her cream hits your tongue again and again.";
					WaitLineBreak;
					say "     You knead Ava's wire-taut melons, stimulating the plump tissue, but mindful not to hurt the innocent kitten. Your gentle actions and Ava's soothing purrs soon breaks some hidden seal. At once rich, fatty cream, almost more than you can handle, floods your cheeks. You can't resist moaning happily between swallows as a feeling almost like being swaddled in down spreads out from your core. Ava herself seems to be enjoying things too as her unoccupied hand drifts down to your swelling midriff. She eagerly massages and fondles your growing food baby. Her animalistic paws draw you in closer in her many limbed embrace. You pull back your [FaceName of player] face covered in more of a milk facial than a mustache, to catch a quick breath. In that moment your eyes meet with Ava as she gives you her sweetest smile and slurps the excess off your check. Surprisingly, her tongue doesn't have the roughness you'd expect, if anything you'd have to admit it's rather ticklish.";
					say "     'Don't stop,' she mewls, rubbing her chin against your head, 'I need it.' You wouldn't dream of it, you tell her, giving the tauress a quick on her peck on ebon lips before burying your head back into her engorged bosoms. You sup deeply from your tauric toy's milk tanks, lavishing each of Ava's plump tits with affection. Never once do you even consider slowing down despite the sheer volume of lactose sloshing around in your guts. It hardly registers when your tummy starts brushing your knees. Maybe it's the nanites messing with metabolism or maybe Ava is damn good at belly rubs. Regardless of who you have to thank, you're grateful for this sudden elasticity as Ava says, 'Wow, you can drink a lot, aren't you uncomfortable?' drawing circles in your swollen paunch with her paws. Burping lightly, you tell her fine, you're not even halfway done, you mummer between sips. 'No I-I-I think you've had enough, anymore and you might pop.' Ava peeps while poking your sides.";
					WaitLineBreak;
					say "     But, you try to interject as Ava clamps onto your shoulders with her forepaws, thrusting you against her feral lower body. As her massive mammaries close around you, you instinctively try to push against her legs. Soft as her figure may appear, there is a tempered steel core underneath her golden downy fur. For the moment, you're trapped in her grip and smothered by her plumb upper rack, as Ava squeaks with as much vigor as she can. 'I said no too much milk will give you a tummy ache. Mommy said so!' Though you try to contest her, any words you may have die on your lips as you're stunned by Ava's strength and the oddness of her argument as she protectively cuddles you between her bosom. 'Now look at you, you're like one of those balloon animals back at the fair, you... oh' Ava stammers as she caresses your bloated belly. 'It's so heavy,' she whispers a goofy grin growing on her feline lips, as she kneads your paunch with her paws in awe at how many gallons of milk you've somehow managed to glut on in such a short time.";
					say "     Hey not so rough, that hurts, you hiss as Ava accidentally digs a claw a little too deeply, (as cats always do) into your sides. That seems to snap Ava back to reality, as recoils her paws far quicker than her frame should allow. 'Sorry-sorry-sorry, I don't know why I uh. You're just so soft and-,' Ava babbles. Not trying to ruin the mood, you tell her that's alright. 'Thank you I-,' Ava starts but you cut her off telling her to worry then cheekily ask if you can have more milk. 'No,' Ava frowns. Please, you beg but Ava lowers her ears in milk frustration. Pretty please, you ask again and this time she curls her eyebrows. Fine, then what does she want to do? You ask jokingly. Grinning, Ava cocking her ears back in place and props her tail against your tummy, tapping the surface like a tambourine, Oh, you snicker coyly, taking hold of her tail and directing her to lay on her back.";
					WaitLineBreak;
					say "     What a naughty kitten, you muse, guiding her seventh limb to your milk stained lips as you seat yourself between the bountiful breasts of her lower body. Not that there is any lack of space, Ava makes the perfect bed as she wraps her many limbs about you in a tender hug. Her lush tits and soft tummy swaddle your form, you tell her you think you can work with this, but you are not raw dogging it. You inform her, shaking Ava's tail at her muzzle once before kissing and lapping at her fluffy tail. Delighting at the way your tauric partner's satin pelt plays along your [FaceName of player] face, and the way her fresh aromatic scent is a soothing balm to your senses for a moment. You plunge her spare appendage into your waiting maw. Cooing happily, you slather up Ava's extra limb like you would a prize toy while a flavor sweeter than honey seeps along your palate. 'That tickles,' Ava says, fidgeting under your care more for show than anything else you suspect. You're pretty sure her tail is just a tail, right?";
					say "     Once you're satisfied her spare limb is properly lubricated, you pop Ava's tail out of your mouth with an extravagant flourish as you wave her lubed up limb just below her chin to signal your readiness. Ava doesn't miss a beat, pulling her out of your hands and snaking her tail she slams her giant tail home with a single thrust. Her tail splays your petals wide, filling your sex to the brim as you feel her bulky limb teasing the edges of your cervix. Her technique is a little brutish but as she corkscrews her tail into a ball inside your [Cunt Size desc of Player] cunt. You can't help but appreciate a more direct approach on occasion. You can feel her doubling than tripling the mass of her already massive stand-in-members width, as your sex bulges to accommodate her girthy pseudo-tool. Without missing a beat, your feline partner's tail surges to life, pistoning and writhing in ways many cocks never could.";
					WaitLineBreak;
					say "     Ava's faux-rod worships every inch of your sex with exotic fluid strokes, its luscious mass constantly shifts forming new knots and bumps along the length of Ava's impressive appendage. Her improvised-tool never seems to grace your feminine passage in the same place twice. Her malleable limb explores neglected spots and hidden nerves with a vigor no banal lover ever has. Utterly enthralled by the experience, you mewl like a needy bitch in her deepest heat and meekly try to buck your hips in tandem with thrust. Desperately struggling to take just another inch of Ava's tender invader in spite of her vice tight grip on you. 'Oh sorry,' Ava purrs, noticing your plight. She withdraws her paws letting you quickly reposition yourself a bit better on her voluptuous feral form even as she continues to pamper your muff with her devoted attention. With a little shuffle, you're resting on the big kitty's exotic figure like a doughy recliner.";
					say "     You let your partner's colossal rack cascade around you, the ebon and gold fur teasing your [SkinName of player] hide. Dimly, you feel as you're being cocooned in Ava's silky bulk. Laying back and letting her pelt caress your [SkinName of player] skin you have to admit that you might be the most comfortable you've been since the nanite outbreak right now taking Ava's fat tail. Your whole body feels like it's floating on clouds, as you playfully nuzzle and grope at Ava's decadent collection of bountiful tit flesh. You abandon any remaining pretense of self restraint, rocking your abused sex in time with the thrusts of Ava's morphic tail, as if it were a common toy. But this is so much better, your inner muse pontificates as Ava pounds your needy cunny while you buck and writhe as your body desires, cuddled all the while by Ava's Rubenesque frame.";
					WaitLineBreak;
					say "     Not that Ava minds, judging by the lewd grin she's wearing. The large tauress is more than content to watch you debase yourself, even joining in the fun you're having with her tits. The obese feline starts fondling the supple orbs next to your head. Gingerly, she tweaks and pulls her ebon tit, coaxing steady spray of cream from her massive breast. The white pools along the edges of her areola, before running across her fur in thin ribbons. Like a woman dying of thirst, you lap at the thin streams, delighting at the toe-curling wonderful flavor. You know it's a pittance compared to what you've had moments ago but it doesn't matter to you. The mix of milk and Ava's natural oils is more than you can handle as the little death creeps up on you like a burglar in the night and hits with the force of the thunderclap.";
					say "     You loose a bestial howl as pleasure, satisfaction, and fatigue crash over you as climax. Each sensation warring for dominance as squalls of static bliss riddle your senses. You sink deeper into your lover's embrace, spent, full, and a little bit sticky between the knees. As your senses clear, you look down at your swollen belly resting on your thighs, you realize that you're not in any condition to get up just yet, let alone defend yourself. Sighing, you reach up to Ava's face cupping her cheek dreamily asking if you crash here for a bit? You don't think you're fit to walk, and poke your distended belly for effect. 'Um ok, should I get an extra mattress?' Ava replies, nuzzling her whiskers against your palm. Nah, you're too comfy and don't wanna move. You purr, stretching out to your full length like Ava's body was a friend's couch. 'Oh, alright, sleep tight then,' Ava replies, wrapping her legs about you like a blanket. Thanks, you respond before drifting off.";
					WaitLineBreak;
					say "     [bold type]An indeterminate amount of time later.[roman type] You awaken, blinking the last bits of sand from your eyes, and for a moment you think you must still be dreaming, since you seem to be sleeping on a smaller version of Ava resting on a regular-sized Ava. Is your dreamworld Ava's all the way down, is your mind really that lazy. You wonder, reaching out for one of 'her' paws. But the hand you see moving it's yours and it's Margay taur shaped... oh damn it! You scream, pushing off the tauress and onto a pair of shapely feline legs as the reality of what has occurred hits like an out of control semi-truck. She infected you! Fuck, she needs to warn people if she's infectious, you howl. Roughly awoken by your voice Ava looks up at the miniaturized version of herself standing above her.";
					say "     'Wa-WA! You look like me, why do you look like me!?' She cries eyes wide with fear as she scurries towards the garage door far quicker than her size should allow. Why do I look like you, you parrot mockingly, because she infected you with her nanites! You know the things that make people into literal fucking animals! 'I,' Ava begins, tapping claws against the cement in a low tattoo, 'I've never done this to anyone Mom-' She pauses, feeling the weight of your gaze on them. Her babbling ceases as she takes a deep breath. From her face you can tell seeing trying to choose her words carefully, '*FFF*' Ava exhales in a dramatic fashion. 'Kathy's never had a reaction to my milk like this, neither has Drake. he-he's had a glass or two because Kathy wanted to know who tastes better. It was a tie, Drake said he-.'";
					WaitLineBreak;
					say "     Not wanting her to go off the rails again, you interrupt her by raising a clawed finger to your new muzzle, gesturing for her to be quiet. You tell her you don't really care about that right now. Ava nods, burying her head in her chest like a chastised pet. Right, so, what she's saying is she's normally completely non-infectious and this is all some crazy cosmic fucking accident. Ava nods again, as look of fear and shame dance her gentle eyes. Many words and emotions, some not so nice, are brought to your mind by this simple gesture. Groaning, you feel like you need a second to process everything, not to mention take stock of your new body before you can even begin to figure out what to do with Ava. You reason, as you take a gander at your newly enhanced physique, and well, you're a bit of a heifer now you note, taking in the spectacular sight of the six massive furry breasts swaddling your pot-belly. With another six fighting for space along your animalistic body. Each golden and black spotted orb sports a single pink nipple, and feels quite tender to your touch, giving your body a seasoned broodmare look.";
					say "     Cupping one, you can already feel the slow accumulation of cream within. You don't need to be psychic to tell your body is gearing up for serious production. And as if to add insult to injury, you notice your plump paunch is sporting furry outie navel. Under other circumstances, you might have found this cute, but considering your situation you only feel aggravation. Curious as to how the rest of you fared, you stretch out your plump arms to see what the damage is. To your relief, besides an extra layer of jiggling pudge and your rosette styled fur, your arms remain more or less the same as when you were human. Your hands though have become an efficient blend of feline and human. You have soft yet meaty pink paw pads ringed by dense black fur. Your catty fingers are each tipped with a very sharp ivory white claws.";
					WaitLineBreak;
					say "     Wiggling one against your thumb experimentally, you realize that they aren't that strong [bold type]yet[roman type] enough to be used as weapons. But they could definitely improve your grip in a pinch or leave a wicked scratch if you were pressed. Tilting your head around your back, because let's face it, you're not seeing your fore-paws anytime soon unless you roll on your back. You're rather unsurprised to see your feral half has more than a little cushion. Fluffing out your animalistic torso is a blubbery half-dome that forces a slight waddle into your step. Supporting your exotic frame, you have four digitigrade legs that can accommodate not just your chubbiness but the six feral dugs fighting for space between them. Luckily, unlike the rest of you, your feline legs appear a tad more muscular than you'd expect to find on such voluptuous creatures as yourself. At least mobility shouldn't be an issue, you ruminate pawing at your exceptional assets with your huge predatory paws.";
					say "     You realize that your engorged feral breasts are about the same size as the ones on your torso. Oddly, despite the fact you know you should find the sight of tits on a feral feline frame a queer one, you don't exactly hate their presence. Maybe it's the nanites['] influence tainting your thoughts, but they do look kind of hot on you. Especially the way they jiggle almost hypnotically with your steps. Your gaze then passes over your broodmare-sized ass and the long billowing prehensile tail growing out of it. You scrunch your feral half into a [']U['] bend to get a look at your pussy to get a good look at the new slit between your tauric legs. Apart from their increased size, your lush pink cunt appears mostly human, save the inversion of your button.";
					WaitLineBreak;
					say "     Satisfied that nothing too major has happened to your downstairs plumbing, beyond a little expansion at least, you correct your posture and notice that despite having such deep flabby love handles, you don't feel impaired. You know there's a lot more of you now, sure, it's hard not to notice the way your dugs massage your sides, or the way your tits sways between your legs. If anything though, you feel a bit stronger and more durable. Maybe it's the nanites messing with your brain or it could be the massive feline body joined to your [']hips['] but there's something about your exotic form that makes you feel powerful. Taking all this into account, how do you feel?  Do you believe Ava's story, do you rebuke her, or is this form maybe not so bad.";
					say "     [bold type]How do you react? [roman type][line break]";
					LineBreak;
					let Ava_Reaction_Choices be a list of text;
					add "Believe her." to Ava_Reaction_Choices; [Stranger things have happened and will continue to]
					add "Rebuke her story." to Ava_Reaction_Choices; [What did the five fingers say to the face?]
					add "You like this form." to Ava_Reaction_Choices; [Furry feline yuri is a go]
					let Ava_Reaction_Choice be what the player chooses from Ava_Reaction_Choices;
					if Ava_Reaction_Choice is:
						-- "Believe her.":
							LineBreak;
							say "     Ruminating on all the oddness that you've experienced in the city like sentient piles of sand, living plushies, actual freaking demons, and giant wyverns. The idea that Ava is either selectively infectious or that her strain has some unique requirements to activate isn't too far-fetched. It's then possible, you reason, that she had no agency over your conversion and that her nanites merely latched on to the nearest viable or respective mate, in this case you. Perhaps you muse, Ava herself is a flawed creation of the nanites who's trying and failing to follow some unknown defect built in her code. This could mean Ava was and perhaps still is a transformative timebomb, but you simply can't blame her for some twisted nanite imperative that she was born with. That doesn't explain Kathy or Drake's vaunted immunity but those two could just be built differently.";
							say "     Heck, just look at you. Most folks tend to lose it once they turn, yet you're more or less sane as ever, despite your changes. Ok, maybe your standards are a little looser now, but all things considered, this legitimately might not be Ava's fault. Still looking down at the chunky beastess you've become you don't know if you should pity her, apologize to her, or thank her for what happened. Nevertheless, you try to explain your thoughts on what happened and why you're not mad. Well maybe you are a little upset, that last form was kind of growing on you. You also leave out that part out her potential being a broken creation of the nanite apocalypse. Though Ava doesn't understand much of what you tell her, which you can't say you blame her for. You don't think many beings less than a year old could fathom a furry gray goo class existential crisis, much less nano-engineering, RNA alterations, or mechatronics.";
							WaitLineBreak;
							say "     Thankfully, Ava does at least understand why you were mad and expresses a profound deal of earnest shame at transforming you. Even if the idea of tiny robots fiddling with people's DNA like bored over-caffeinated kittens playing with a ball of yarn is outside her realm of understanding. 'I never knew,' she sobs. 'I-I just wanted someone to hold, I thought you might like me, I never thought,' Ava mewls, biting back tears. She sniffles and dries her eyes with her tail saying, 'Drake, he always told me, the worst thing about the ferals is they never ask, that change like this should be a choice. I'm so sorry!' Burying her head in her paws, she sinks to the floor sobbing. Padding up to her, you place a paw on her shoulder telling her that it's not her fault. ";
							if "Touched by Madness" is listed in feats of Player:
								say "Everyone wants to find their somebody. Everybody wants to find a place they belong after all. ";
							say "'Really you're not mad?' You nod, explaining you're more surprised than anything at this point.";
							say "     'But I did this to you,' Ava peeps, taking hold of your paw with hers and presses it down on your shoulder. You reiterate to Ava you'll be fine, and that you'd just like to drop the matter. 'Ok, um,' Ava stammers looking up at you hopefully, 'does this mean we can still hangout?' Maybe, well in a while, you add quickly. You've been here for a while now and. 'You have to go,' Ava interjects dejectedly. For now you tell her, which she seems to accept, better to leave things ambiguous after all. You don't know if you want to pursue anything further with Ava right now, or what the consequence for you or her would be if you did. She's already turned you into a mini version of herself without trying, maybe you shouldn't tempt fate. Then again, what else could she do to you at this point, perhaps you're just overthinking things. Either way you've wasted enough time here and should probably get back out into the city. The military won't wait forever.";
							WaitLineBreak;
							say "     [if HP of Augustus Drake is 99]On the way out, you notice Drake peering out from the lobby with the oddest expression on his leonine visage, his eyes squint, muzzle ruffles into a grimace like he bit a sour fig. The moment then passes as understanding of your predicament dawns on him with a predator grin on his feline face. '*PFFFT* HA-Ha-Ha,' Drake laughs, clenching his furry sides, though the sounds he makes are more akin to boastful chuff to ears. Oh har-har laugh it up all you want chuckle fuck, You're still screwing his lover and his daughter! You jeer, flicking him the bird on the way out.[else if HP of Augustus Drake <= 7 or HP of Augustus Drake is 100] Halfway through the parking lot you catch a glimpse of Drake staring out from the lobby door. To say he looked puzzled at the sudden appearance of a smaller version of his adopted daughter carrying all your equipment would be an understatement. Slack jawed, Drake appears visibly shaken as his mind struggles to rationalize your existence stammering, '[Name of Player]?' You nod. 'D-did you do something to your hair?' Well you have been using this new shampoo, you joke, patting your scalp. 'Shampoo did that,' Drake, his eyes widening with fear replies, gesturing to your exotic body. No, you tell him, realizing what poor choice of words that can be in a world where a rogue hairball can turn you into a horse. This was a bit of an accident, you explain, going over a slightly toned down version of events with him. 'Oh ok then, I'm glad you two worked things then. If you'll excuse me, I need to speak with Ava.' Drake says while trying his best to hide shock as he darts off to the garage without looking back.[end if]";
							if "One Pair" is listed in Feats of Player:
								FeatLoss "One Pair";
							if "Bouncy Bouncy" is not listed in Feats of Player:
								FeatGain "Bouncy Bouncy";
							if "Flat chested" is listed in Feats of Player:
								FeatLoss "Flat Chested";
							StatChange "Strength" by 1;
							StatChange "Stamina" by 1;
							Move Player to Last Chance Parking Lot;
							now HP of Ava is 3;
							now Thirst of Ava is 1;
							NPCSexAftermath Player receives "PussyDildoFuck" from Ava;
							turn the Player into a "Margay Taur";
							choose a row with Name of "Margay Taur" in Table of Random Critters;
							if Nipple Count of Player < 12:
								now Nipple Count of Player is 12;
							if Breast size of Player < 13:
								increase Breast Size of Player by 3;
						-- "Rebuke her story.":
							LineBreak;
							say "     Ya, you're not buying what Ava's selling. Her just randomly becoming infections right after you pass out. This whole affair just reeks, for all you know the cute dumb kitten act is just a kink for this bitch. Hell, she's probably conning a free B.N.B out of Kathy and Drake. You tell yourself with all the passion and confidence of a conspiracy theorist. Then verbally lay into Ava, raging against her assertions that she just magically became infectious in the last few or so hours. 'I am telling the truth, this has never happened before, please you have to believe me,' Ava pleads, dropping to all four in prostration. 'I am not like those monsters out there, I'm a good girl! I don't, I wouldn't, I just wanted to be with someone.' And that gives her permission to do this to you! You shout as the hackles on your neck rise in tune with your choler and your claws scratch thin lines in the cement floor.";
							say "     Again Ava repeats her pleas, but such words are lost to the wrathful pounding of your enlarged heart blaring in your ears. Her mewling only grates at your last reserves of patients till at your reserves till it bursts like rotten fruit as you lash at Ava. Unprepared for the blow to her face, the tauress is sent flying by your augmented muscles and collides loudly with the metal garage door. The resounding thunderclap of sheet metal is a painful dirge to your heightened senses, though you suspect everyone in The Last Chance even those without nanite-enhanced hearing heard that. Adding to the sudden din, Ava, still reeling from your blow and sporting five bloody gashes on her cheek, begins sniffling and curling up into a ball crying into her own fur, [bold type]'DADDY! *WAH* DADDY HELP, HELP ME PLEASE!!!'[roman type] Oh shit. 'AVA!?' Drake's call is immediate as are their heavy foot falls headed your way.";
							WaitLineBreak;
							if HP of Augustus Drake is 99:
								say "     In the span of a heart beat, the Lion Primarch bursts into the room and sees a bleeding Ava balled up in the corner with you standing over her, fresh vitae still dripping from your claws. 'You bastard, how dare you hurt her! How dare you make [bold type]MY DAUGHTER CRY![roman type],' Drake roars, charging straight for you, he spears your right in the sternum before you can even recognize him as a threat. His hardened frame hits you with all the force and fury of a warhammer, blasting the wind out of you and as he tries to drive you back. Your extra legs resist for a split second as they lock in place digging your claws into the cement, but Drake's wrath fueled strength overcomes your own mutant strength as gravity's tether slips its hold over you.";
								say "     It feels like you're flying as Drake spears your tauric frame into the wall adjacent Ava's art project. The whole structure shakes as the impact leaves you stunned, feeling fades in your extremities, replaced by cold heavy numbness. You start to slump over no longer being able to support your heavy body, but Drake won't let you fall. His paw shoots out, grasping hold of your throat, you want to fight back but his grip is like vice on your neck. As he pulls you up to eye level, slamming your backs against the wall he looks at you then Ava and says only two words, '[bold type]Explain now[roman type],' as his claws dig into your windpipe.";
								WaitLineBreak;
								say "     [bold type]One explanation later[roman type], Drake finally lets go of your neck, a thoughtful expression on his animalistic visage as he turns to Ava saying, 'Is the true honey, you did this to them.' Ava nods. Drake smiles, though his leonine grin is a tad unsettling as he turns back to you saying. 'Well kid I guess we're all even now.' What? Even? Your kid, you begin but Drake's cold glare makes you choke back your words. 'Didn't know this would happen,' Drake counters, 'Ava's telling the truth, now whether or not you believe her doesn't matter to me in the slightest we're done here. Ava, you said you're sorry?' 'Yes daddy,' Ava peeps from the corner. 'And you accept it kid,' Drake prods though his tone tells you, you don't have a choice in the matter. Unless you want to go another round, but this time Drake probably won't pull any punches. Yes, you huff if only to prevent a needless fight. 'Good, now let's all pretend we're functional adults and move on with our lives, Ok?' Yes Drake, you and Ava reply in unison.";
								if "One Pair" is listed in Feats of Player:
									FeatLoss "One Pair";
								if "Bouncy Bouncy" is not listed in Feats of Player:
									FeatGain "Bouncy Bouncy";
								if "Flat Chested" is listed in Feats of Player:
									FeatLoss "Flat Chested";
								StatChange "Strength" by 1;
								StatChange "Stamina" by 1;
								Move Player to Last Chance Parking Lot;
								now HP of Ava is 95;
								now Thirst of Ava is 1;
								NPCSexAftermath Player receives "PussyDildoFuck" from Ava;
								turn the Player into a "Margay Taur";
								choose a row with Name of "Margay Taur" in Table of Random Critters;
								if Nipple Count of Player < 12:
									now Nipple Count of Player is 12;
								if Breast size of Player < 13:
									increase Breast Size of Player by 3;
							else:
								say "     The hard beats of Drake's footfalls echo about the courtyard in an angry klaxon as Drake races towards his adopted daughter. He crashes through the garage door faster and with far more vigor than you'd expect from a person of his size. Without skipping a step, Drake takes a rifleman's stance training a .44 gunmetal black magnum at your face barking, [bold type]'DON'T MOVE AN INCH.'[roman type] He glances at Ava curled up in a ball nursing a bloody face, then at your still dripping talons, 'I don't know what's going on between you two, so please tell me what's going on kid. You're still in there right?' Drake intones, trying to project calm even if his voice is shaky. Not in the mood to take this kind of a load point blank, you put your paws up as he slowly steps between you and Ava. Drake continues, 'I don't want to shoot you, not in front of little Ava. So what happened here, why do you have her face, why did you hurt her?' Drake prods. Before you can respond, Ava, still recovering from her shock, squeaks through her split lips.";
								say "     'Please don't be mad at them Daddy.' Ava sniffles, trying to put on a brave face as her wounds knit before your eyes. 'I deserve this, I did this to them, but I didn't mean to.' Alarm runs across Drake's face like a sudden storm, for a moment you catch Drake eyes running over Ava in a manner not all dissimilar to the one he gave you when you first met. In that instant, you can almost see his mind at work as a cold internal calculus weighs his affection for his [']daughter['], the risk she poses to not just his humanity, but his unborn children. You can see the gun in his hand shaking, the barrel turning toward Ava just a hair before it falls. 'Is that true, Ava, she did this to you,' he gestures with a shake of his revolver. You nod giving Drake an abridged version of events that Ava more or less corroborates. 'Damn kid, I am at a loss for words. I want to say I am sorry but,' he looks at his daughter's injured face. 'You've hurt little Ava, that's not something I can just overlook.'";
								WaitLineBreak;
								say "     Ya well look what she's done to you, does he think you're happy about this, you fume. 'Kid this was a flipping accident, Ava's never shown any sign of being infectious. Trust me, I have no idea what caused this to change.' Drake scratches his chin thoughtfully, 'Maybe her nanites like you, I don't know. What do you even want me to do about this? Should I go to the forest downtown and pick some Awesomer fruits or grab some sticky sushi from the collage? Would that make you feel better?' Drake proffers, though you can tell from his tone he's losing patience with you. Sighing, you tell Drake that won't be necessary, you're an adult you'll figure out your body situation on your own. 'Right then do you mind giving me some space, so I can take care of Ava. I am sure you can see yourself out right?' You nod not wanting to push things further, there's no point in starting a fight after all. 'Hm,' Drake grunts dismissively, bobbing his head toward the door before turning his attention to Ava once he's sure you've left the room.";
								if "One Pair" is listed in Feats of Player:
									FeatLoss "One Pair";
								if "Bouncy Bouncy" is not listed in Feats of Player:
									FeatGain "Bouncy Bouncy";
								if "Flat Chested" is listed in Feats of Player:
									FeatLoss "Flat Chested";
								StatChange "Strength" by 1;
								StatChange "Stamina" by 1;
								Move Player to Last Chance Parking Lot;
								now HP of Ava is 95;
								now Thirst of Ava is 1;
								NPCSexAftermath Player receives "PussyDildoFuck" from Ava;
								turn the Player into a "Margay Taur";
								choose a row with Name of "Margay Taur" in Table of Random Critters;
								if Nipple Count of Player < 12:
									now Nipple Count of Player is 12;
								if Breast size of Player < 13:
									increase Breast Size of Player by 3;
						-- "You like this form.":
							LineBreak;
							say "     You know, this body isn't all that bad. Sure, you might have liked a heads up, not that Ava could have given you one. Still, you admit with no small amount of pride, you really like what Ava's nanites have done to you. You don't feel the slightest bit of shame at the soft padding swaddling your body, the heavy weight of your furry bosoms, or the rich texture of your silken pelt. Who cares if you're going to be walking with a permanent waddle, have trouble getting through doors, or if you can't see your toes without help. Truly, you take a lewd pride in the way your hefty tauric frame, gold, white and black spotted fur, corpulent middle, and natural eyeliner combine together in a rather queenly figure. A part of you even wonders if you could find some mutant to worship your new folds, but that will have to wait. First, you need to apologize and thank Ava for this gift. You've left the poor girl in silence for long enough as it is. Hey Ava you're sorry you snapped at her, you begin.";
							say "     'Huh, you're sorry but I-I,' she stammers, tilting her head like a confused dog. Sighing like an overworked single mother, you explain to Ava that you believe her when she says didn't do this to you on purpose. Now, you regret that you passed judgment on her so quickly, especially when you're a big fan of the results. 'Wait, you're ok with this now, are you feeling alright?' Ava queries, raising a question eyebrow as if a crazy hair just lodged itself deep where the sun wasn't meant to shine. No you tell her, you don't like this body, you *LOVE* it, you mew, hugging your doughy sides. You stride to Ava's side, and invite her to feel your soft fur, its so silky smooth, you could easily see yourself spending all day petting it. You tease, rubbing your feral half against Ava's as you parade your new body around her in a circle while tease her upper with a few playful strokes of your lengthy rear mounted limb.";
							WaitLineBreak;
							say "     Go on, touch it, you quip, coiling your billowing tail around Ava's much larger chest. You wrap up more and more of Ava's torso with your dexterous appendage, you loop and knot a living shibari about Ava's supple uppermost bosom. You can almost feel her the quickening of pulse as Ava seemingly mesmerized by your touch dreamily complies, brushing her paw's along your constricting limb. See she likes it, you serenade, watching Ava shamelessly fondle the bonds about her bosom. And you should hope so, she gave it to you, you tease as you lose your hold on your kitties['] titties. 'Ah, I liked that, did you have to stop,' Ava murmurs, snapping out of her trance. No, you just wanted to make a point, you tell her, but Ava doesn't respond and merely rather looks at you questioningly.";
							say "     Sighing, you tell her that you're not mad, and you might even want to hang out later. 'Oh why not now though, you just got up?' Ava asks. Well you've been here a while too long and a lot of people in the city need your help. If you stay here too long, who knows what will happen to them. 'But you'll be back, right?' Ava asks, her voice ringing with a low melancholic tremble. Huffing good naturedly, you inform Ava, that yes, you'll come back, you can't say when, but you'll be back. 'Promise?' Ava needles. You promise, you reply, giving Ava a kiss on the fuzzy cheek as you get ready to leave.";
							WaitLineBreak;
							say "     [if HP of Augustus Drake is 99]On the way out, you notice Drake peering out from the lobby with the oddest expression on his leonine visage, his eyes squint, muzzle ruffles into a grimace like he bit a sour fig. The moment then passes as understanding of your predicament dawns on him with a predator grin on his feline face. '*PFFFT* HA-Ha-Ha,' Drake laughs, clenching his furry sides, though the sounds he makes are more akin to boastful chuff to ears. Oh har-har laugh it up all you want chuckle fuck, you're still screwing his lover and his daughter!' You jeer, flicking him the bird on the way out[else if HP of Augustus Drake <= 7 or HP of Augustus Drake is 100]Halfway through the parking lot you catch a glimpse of Drake staring out from the lobby door. To say he looked puzzled at the sudden appearance of a smaller version of his adopted daughter carrying all your equipment would be an understatement. Slack jawed, Drake appears visibly shaken as his mind struggles to rationalize your existence stammering, '[Name of Player]?' You nod. 'D-did you do something to your hair?' Well you have been using this new shampoo, you joke, patting your scalp. 'Shampoo did that,' Drake eyes wide with fear replies gesturing to your exotic body. No, you tell him, realizing what poor choice of words that can be in a world where a rogue hairball can turn you into a horse. This was a bit of an accident, you explain, going over a slightly toned down version of events with him. 'Oh ok then, I'm glad you two worked things then. If you'll excuse me, I need to speak with Ava.' Drake says while trying his best to hide shock as he darts off to the garage without looking back[end if].";
							if "One Pair" is listed in Feats of Player:
								FeatLoss "One Pair";
							if "Bouncy Bouncy" is not listed in Feats of Player:
								FeatGain "Bouncy Bouncy";
							if "Flat Chested" is listed in Feats of Player:
								FeatLoss "Flat Chested";
							StatChange "Strength" by 1;
							StatChange "Stamina" by 1;
							Move Player to Last Chance Parking Lot;
							now HP of Ava is 3;
							now Thirst of Ava is 1;
							NPCSexAftermath Player receives "PussyDildoFuck" from Ava;
							turn the Player into a "Margay Taur";
							choose a row with Name of "Margay Taur" in Table of Random Critters;
							if Nipple Count of Player < 12:
								now Nipple Count of Player is 12;
							if Breast size of Player < 13:
								increase Breast Size of Player by 3;

to say AvaSexMenu:
	if (HP of Ava >= 1 and HP of Ava <= 94) and Thirst of Ava >= 1 and Player is female:
		say "     How would you like to spend time with Ava?";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if Thirst of Ava is 1 and "Breeder" is not listed in Traits of Ava:
			choose a blank row in table of fucking options;
			now title entry is "Taur Mounting";
			now sortorder entry is 1;
			now description entry is "Mount Ava's tauric half";
		[]
		if thirst of Ava is 1 and "Breeder" is not listed in Traits of Ava:
			choose a blank row in table of fucking options;
			now title entry is "Taur 69";
			now sortorder entry is 2;
			now description entry is "Enjoy some mutual taur oral";
		[]
		if Thirst of Ava >= 1 and "Breeder" is not listed in Traits of Ava:
			choose a blank row in table of fucking options;
			now title entry is "Eat Ava out";
			now sortorder entry is 3;
			now description entry is "Lick some kitty";
		[]
		if "Breeder" is listed in Traits of Ava and BodyName of player is "Margay Taur" and Player is pure:
			choose a blank row in table of fucking options;
			now title entry is "Taur mating";
			now sortorder entry is 4;
			now description entry is "Let Ava rail your adorable lower body";
		[]
		if "Breeder" is listed in Traits of Ava and BodyName of player is "Margay Taur" and Player is pure and Libido of Ava > 13 and Player is impreg_now:
			choose a blank row in table of fucking options;
			now title entry is "Breed and feed";
			now sortorder entry is 5;
			now description entry is "Spend some mommy time with your mate before she pops";
		[]
		if "Breeder" is listed in Traits of Ava:
			choose a blank row in table of fucking options;
			now title entry is "Enhanced 69";
			now sortorder entry is 6;
			now description entry is "Treat your mate to a tentacular good time";
		[]
		if "Breeder" is listed in Traits of Ava:
			choose a blank row in table of fucking options;
			now title entry is "Loving Cunnilingus";
			now sortorder entry is 6;
			now description entry is "Worship your Mate's folds";
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
					if nam is "Taur Mounting":
						say "[AvaSex1]";
					else if nam is "Taur 69":
						say "[AvaSex2]";
					else if nam is "Eat Ava out":
						say "[AvaSex3]";
					else if nam is "Taur mating":
						say "[AvaSex4]";
					else if nam is "Breed and feed":
						say "[AvaSex5]";
					else if nam is "Enhanced 69":
						say "[AvaSex6]";
					else if nam is "Loving Cunnilingus":
						say "[AvaSex7]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     On second thought, you decide against fucking Ava.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		clear the screen and hyperlink list;
	else:
		say "     They don't seem interested.";

to say AvaSex1: [Taur mounting]
	say "     Cuddling up to your tauric partner, you ask if she might be up for another round of fun together. 'What kind of fun?' Ava asks coyly, though from her tone and the happy twinkle in her eye you can tell that she already knows what you want.  Well the two of you could fool around a bit, you might have a little sip of milk, maybe even mount that sweet little ass of hers. You offer with a catty grin blossoming on your face as you trace a finger down the side of Ava's engorged bosom, remembering fondly the sweet flavor of her cream. 'Mh,' Ava rumbles like a hunting cat as she guides you over to her bed, 'that does sound nice and I could always use a good milking. I've gotten so full and heavy. I'm starting to get sore again,' Ava purrs, giving her heaving bosoms a shake for emphasis. Oh you bet, you reply, cupping one of her lowermost breasts, delighting at how heavy the milk-filled jugs feel resting in your palms. You remark that she could feed a village with these beauties.";
	say "     Glowing happily under your praise, Ava pulls you close, swaddling you in her soft plush arms as her plump belly presses against your midriff. 'Ah, you really mean that?' Ava swoons, fluffing her chest. Of course you do, why just look at these milk tanks, so ripe and tender just begging to be drained. They deserve some attention. You tease, tweaking one Ava's colossal teats between your fingers, absolutely in love with how stiff and perky her nips are. 'Then why don't you have a taste? I have plenty to share,' Ava replies, squeezing her bosom against your cheeks, filling your senses with the scent of fresh linens and sierra winds. Breathing in deep, you're elated by a certain rush of calmness as her pleasing silken fur brushes along your lips while you draw the hardened nip into your hungry maw. Her body barely needs any stimulation to express itself.";
	WaitLineBreak;
	say "     Her decadently swollen breasts start leaking rivets of warm fatty milk the moment your lips close around her firm teat. You can already hear your stomach rumble in anticipation as the thick spray coats your tongue in heavy nanite laced cream. With each gluttonous swallow, you can feel her aberrant nanite strain coursing through you, purging lesser infections and reinforcing your margay taur nature. Giddy with anticipation at the impending changes, you palm at your growing breasts delighting at the sensation of your ripening body. A part of you watches with a sense of mammary-based pride as the transformation spreads to the rest of your supple bosoms, enhancing your already majestic chest with a thickening layer of productive padding, laced with raw virgin nerves, and rich cream. The fresh sensory cells almost sing with rapture as they grind alongside Ava's prodigious mounds and plush furry core as they grow ever more ostentatious proportions.";
	say "     Soon you can feel the opulent adipose spread to your supple flanks as your feral sex swells in tandem with the rest of you, already sensing your leg splaying as your taur tummy distends to accommodate your growing feline sex. You can only imagine how big you'll get if you keep this up, and why wouldn't you? The thought of having a dozen or so massive breasts laden with gallons of cream, or a fertile snatch large enough for you to smuggle a behemoth inside of you has special appeal as you feast on another one of Ava's cream bloated teats. 'Wow, this stuff really agrees with you, not that I'm complaining! I love how soft my milk makes you. You're like my own personal stuffed plushie,' Ava purrs, playfully mussing up your head fur as your burgeoning body presses against her.";
	WaitLineBreak;
	say "     You nod, brushing your whiskers against her soft bosom, unwilling to release your hold on the source of your fecund growth. 'That's a good kitty, keep drinking now, you want to grow up to be big and strong don't you?' Ava teases as she rubs the subtle swell of your tummy fur. Yes, you mumble between suckles of cheek-filling portions of milk, you need to be bigger, so much bigger. 'Then drink up, but you better not waste so much a drop of that milk, or I will be very angry with you, understand?' Ava warns her voice takes on a harder more dominant tone as she wipes off an errant dribble of cream from your lips. Yes Ava, you swoon, switching to a fresh teat, happily awaiting the cycle of blissful expansion to wrack your tauric body. But, it never comes even as your stomach droops down low past your waist, you still don't feel that wonderful stretching sensation. Huffing under your breath, you redouble your efforts as you drain more of Ava's impressive supply.";
	say "     You soon let a low sigh as the only part that's continuing to grow is your furry waistline. It still feels good to be stuffed full of cream, but at the same time it's not as good as the sensation emanating from your blossoming assets. 'What's wrong little kitty, do you have a tummy ache? I can give you a belly rub if you want?' Ava asks sweetly upon hearing your sigh. No, you tell her, you're merely upset you aren't getting any bigger. 'Oh, I'm sorry, you got a nice yummy meal in your tummy at least?' Hefting your bloated golden furry anthro tummy while you paw at your distended lower body, you tell her that her's true. You do like how warm and heavy you feel with all this milk wallowing around inside like an overfilled hot water balloon, yet it's still not the same. 'Well, would you like to mount me now? I'd love to feel that big soft body of yours resting on me. Maybe you can stuff me with that fluffy tail of yours like you promised?' She teases, as she runs her finger along your well-fed sides.";
	WaitLineBreak;
	say "     Thinking about it, you would, you tell her as your disappointment evaporates like tule fog in the morning light. 'Yay,' Ava exclaims, slipping out of your grip and sashaying over to her bed and plopping down with her back raised to you as if she were a bitch in heat. For a moment, you take a second to drink in the view of her juicy pink flower glistening in the available light. Her tight taur hole framed by her almost heart shaped rear that could put a mare to shame, and plush furry dugs resting comfortably on her mattress. You leap on her, ready to claim her hole like a beast. 'Uff,' Ava grunts, as you land, 'you're kind of heavy.' Thank you, you tease, settling your smaller body over her, exalting at the pleasurable innervation of her pelt rubbing against your anthro half as it comes to rest against Ava's elongated back. You reach around her supple middle with your arm drawing yourself closer so that your muzzle rests on her gold and black spotted shoulder.";
	say "     Your forepaws in turn grasp Ava's robust feral feline frame like a proper taur claiming their mate. While you gently nibble at the nap of Ava's neck, enjoying a sense of primal dominance as your sharp predatory fangs that could so easily puncture her vitals drift over her pliable skin as you kiss her. A feeling Ava seems to share as she mews in approval while your paws explore her well-milked breasts and fluffy paunch. Ava purrs, 'Tee-hee, it feels so right having a taur on top.' Is that so, does she know what else does? you rumble nibbling on Ava ear playfully. 'What,' Ava replies dreamily as she strokes your chin with her massive paws. Getting fucked by a nice, long, furry, tail, You intone your every word dripping with lust as your seventh limb brushes the lips of her warm feral feline snatch.";
	WaitLineBreak;
	say "     Already, you can feel her excited petals soaking your fur as you tease her exotic and sex coiling your prehensile tail into a thick furry knot. You ask her if your big kitty is ready for her treat? Ava nods, her tongue lolling out her mouth as you massage her inverse animalistic button. Good girl, you coo, pressing your sopping tail betwixt her lush pink lips as if you were hotdogging her plump pussy, and slathering your extra appendage in lurid sheen of natural lubricant. You almost want to bask in the heat of her feline flower filtering up your spine as your tail bones grace her plush folds. 'M-more, p-please, kitty needs more, she feels so empty,' Ava mewls, rocking her engorged cunt against your pseudo-member. Well that's music to your ears, you simper obligingly, lining your tail up with her voluptuous sex and thrust. 'Yes!' Ava roars like a feral beast. Her whole body shudders with feral delight as your ponderous limb parts her hungry nether lips in a single masterful stroke. Though your rear-mounted limb lacks the nerves or sensitivity of a natural member, you still feel a certain thrill at the sensation of Ava's Rubenesque figure hugging it.";
	say "     Her welcoming lush cunt conforms to the unique shape of your furry invader even as her hungry muscles try to milk your limb as if it could cum. Goddamn Ava, that feels amazing, you compliment, running a paw over her supple lower half, feeling the subtle bulge of your spare limb beneath her fur. 'Th-thank you,' Ava moans enthralled by the sublime sensation of your silken pelt and decadent appendage lavishing her expansive sex with each bestial motion as she sways into your rhythm. Grinding her fluffy feral bottom along the edges of inverted feline flower as she does, her satin fur teasing your sensitive button splendidly and eliciting a slight trickle of feminine fluids from your unused snatch. Perhaps picking up on this, Ava's own limb flicks to life as she cossets your needy feline flower. Rumbling deeply in approval, you shuffle a bit of feral your figure around to give her easier access to [cunt size desc of Player] passage as rub your muzzle along her furry neck lovingly whispering encouragement to her.";
	WaitLineBreak;
	say "     Ava saturates her massive stand-in rod in your sweet dew with tender passes of her tail along your eager lips, till it drips with feminine honey. Once she judges her tool suitable moist, Ava, without any fanfare, roughly slams her damp limb home. You moan almost seeing stars as her titanic tail spears your tauric sex with animalistic zeal. Parting your plump pussy lips and brushing the edges of your cervix in a single sinful sweep as Ava's buries ";
	if "Touched by Madness" is listed in feats of Player:
		say "meters ";
	else:
		say "feet ";
	say "of her fluidic limb into your yearning snatch. A part of you wants to chastise Ava, but her brutish methods have a certain aplomb to them, you note, sensing her pliable limb looping about itself, increasing in mass delightfully and gaining an exotic sensuous shape, whilst she pistons away filling your sex with her delectable limb. You pant lustfully, as her flexible limb grows wider with each tactile stroke, filling your [cunt size desc of Player] snatch with its alien structure.";
	say "     Gradually, the pair of you settle into a mutual rhythm, wordlessly syncing your strokes with one another's succorers motions as your shared needs and knowledge of each of your forms plays off each other perfectly. Your hands and paws roam over Ava's supple body, lavishing her with your touch as you pound Ava's swollen sex in tandem with her own bestial thrusts. You delight at the subtle jiggling of your plump forms as your tails piston blissfully along your nanite enhanced sexes in a wondrous asymmetrical dance. ";
	if "Touched by Madness" is listed in feats of Player:
		say "Meters ";
	else:
		say "Feet ";
	say "of tauric nerves sing in rapture as your fertile passage is further abused in the most delightful ways by Ava's rough animalistic thrusts. You make no move to correct her though, your tauric form can more than handle it and if anything revels in the experience of being used in such a feral manner. It's only proper to be taken in such a way a bestial section of your nanite-touched mind muses. A delectable body like yours or Ava's is meant to be used. Of course, turnabout is fair play, you tell yourself contorting your flexible tail into new exotic shapes whilst you pound plush pussy with tauric abandon.";
	WaitLineBreak;
	say "     Your pseudo-tool explores every delightful inch of Ava's welcoming expansive sex. You begin to feel the mutual telltale signs of your impending climax. Your knees quiver and cunt spasms as a sensation of rich tightness spreads through your core, a sense Ava no doubt shares judging from the dreamy look on her face as you squeeze in just a few more rapturous thrusts before the end. Alas though, your body can't hold out any longer as a torrent of ecstasy crashes over you, smothering your mind in an animalistic high. And without meaning to, you find yourself roaring in triumph and your cry is swiftly joined by Ava's as she rides out own orgasm. The echo of your voices mingle in their air for a spell, neither of you caring who hears you or who you might disturb with your feral howls.";
	say "     As your voices die down and you and Ava slowly disentangle yourself from one another, your plump lover sighs lolling on her matters saying, 'Ah, I really needed that, I hope that was good for you too,' as she leans over and licks your snout affectionately. Smiling back at her and still basking in the afterglow of your climatic high your tell you it was, that its hard to beat a good fucking. Especially one that comes with a nice milky meal, you add patting your swollen middle contentedly. 'I'm glad, maybe we can do it again some time?' Ava purrs, rolling on her back happily and stretching out her massive paws like a giant house cat. Nodding, you tell Ava that you're already looking forward to next time.";
	PlayerEat 15;
	PlayerDrink 15;
	NPCSexAftermath Player receives "PussyDildoFuck" from Ava;
	NPCSexAftermath Ava receives "PussyDildoFuck" from Player;
	turn the Player into a "Margay Taur";
	choose a row with Name of "Margay Taur" in Table of Random Critters;
	if scalevalue of Player > 5:
		now scalevalue of Player is 5;
	if Breast size of player < 26:
		increase Breast Size of Player by 1;
	if Nipple Count of Player < 12:
		increase nipple count of Player by 1;
	if Lust of Ava < 3:
		increase lust of Ava by 1;
	increase Cunt Depth of Player by 3;

to say AvaSex2: [Taur 69]
	say "     Craving a little intimate time with Ava, you cuddle up to the big-boned girl asking if she might be up for some mutual fun together. 'Oh, what do you have in mind?' Ava asks. Grinning, you tell her to lie down and let you show her. 'Tee-hee. Well I do like surprises,' Ava teases, shimmying over to her makeshift futon. She lays down and rolls onto her back, giving you a wonderful full view of her bountiful body in full repose. And what a sight it is, you muse, gazing at her body's tauric splendor. Her rows of large shapely breasts resting comfortably against her soft form. Her cute furry forepaws tucked submissively against her like a pet begging for attention while her hindlegs cradle her perky dugs. Your eyes wander down her gold, white, and black spotted pelt, drawn to her juicy feral flower. You watch as the big cat fans her heated muff with her billowing tail, filling the room with the scent of eager tauress. Her sweet needy aroma coils about you like a green-eyed snake, invigorating your desires with her exotic feminine fragrance.";
	say "     Not that you needed any further prodding, you had already made up your mind to devour her world, but a little pageantry never hurt anyone you think to yourself, as you position your body along the length of her sizable lower half. You drape your arm over her rearmost furry dug, gingerly massaging her milk-stuffed teats as you saddle your face adjacent to her lush furry sex. 'Heh, that feels nice, but please go a little easy on me. I don't think Mommy has milked those in a while. So, um, maybe you could help me, pretty please,' Ava simpers in a playful tenor as she strokes her padded forepaw over the back of your head. Well, since she asked so nicely, how can you say no, you muse, taking hold of one of her massive milky melons and guiding her stiff nip to your lips. You languidly brush your fingers along the sides her animalistic sweater puppies in a little show of appreciation before wrapping your mouth about her swollen milk spout, your maw watering with anticipation as you recall her sweet flavor.";
	WaitLineBreak;
	say "     Her eager milky melons are quick to react to your touch as tiny beads of rich margay taur milk dance across your taste buds. Your body demands more though and you have no desire to contest it as you start suckling, drinking in thick mouthfuls of her opalescent ambrosia. With each swallow, you can feel your own latent margay taur nanites whirring to life with the reintroduction of Ava's own. The process is slow but enjoyable as your body seems to swell with their presence. Your form shifts, reinforcing its tauric shape, and purging any foreign strains from your core outwards. A section of your nanite-touched mind marvels at the sensation of your breasts growing heavy and tender as raw virgin nerves blossom into existence while your chest swells with productive tissue. Some part of you can't help but feel quite pleased with the immediate results, your warped mind takes no small bit of pleasure in your growing bust.";
	say "     If anything, you wouldn't mind seeing how far you can push yourself, you muse, running a paw over the hefty orbs, feeling the way your skin creaks and sloshes with the cream contained within. You'd make a great wet nurse or dairy cat with a rack like these, you opine as the respective tissue spills through the cracks in your fingers. Soon though, these same blissfully changes spread to your lower half as body shifts closer to facsimile of Ava's own tauric form. By the time you've drained the last drop of nanite-laced lactate from Ava's rearmost bosom, your body has fully scourged the presence of any lesser strains, reinforcing your Margay Taur nature. While adding on a few delightful inches of feminine flesh in the process, you note hugging your doughy animalistic assets, you have to admit that you quite like these alterations. Your tainted mind's only regret is that they stopped.";
	WaitLineBreak;
	say "     Considering what you've seen in the city after all, mere [Breast Size desc of Player] tits and a [cunt size desc of Player] muff seems rather puny nowadays. Especially on a body as large as yours, you opine. And from the low rumble Ava gives you as her paws knead your voluptuous body, you can tell she feels much the same way. 'Wow, I guess my milk still agrees with you,' Ava remarks, patting your doughy sides affectionately with her forepaws. Purring happily as her pads massage your burgeoning body, you tell her it seems that way. Besides, it's not like you're not enjoying it. What's the point of holding back anymore with all that's going on? You can be as big as you want without any consequence, so why not indulge your curiosity? Your tauric body certainly can handle it after all. 'Ah, I'm glad you feel that way. I kind of like the new you. Your body just feels so soft and squishy like one of those cute toy sea cucumbers I saw at the state fair.' Ava titters, giving your lower half a playful squeeze with her sizable paws.";
	say "     Glowing at her praise, you tell her that you're rather inclined to agree with her. Having a big soft mate to play with is quite the treat, you note, nuzzling your muzzle along the underside of Ava's doughy undercarriage while your paw kneads her pillowy racks. 'Aw that feels kind of nice,' Ava mews. Oh if she likes that, well you can make it feel even better, you purr, gently lapping at her massive inverse human-like button with a long, exaggerated, sloppy lick, though you're careful to keep the spines of your feline tongue mostly flat as you do so. You don't want to cause her any discomfort, but adding a bit of flair to your performance never hurts, you muse, probing her plush clitty hood with your oral invader. Ava squirms at your touch, her body practically trembling with excitement as you explore her dewy cavernous folds with quick flicks of your tongue, though with each tender passionate pass, your own neglected sex increasingly cries out of attention.";
	WaitLineBreak;
	say "     Feeling desire bubbling within you, you signal your need with a little waggle of your tauric hips and an eager mewl. The sight of your jiggling feral flanks and lurid vocalization snaps her to attention as she arches her larger anthro frame into position. Though you're unable to see her do so, you can still sense her warm breath playing across your moist petals as her large boxy muzzle brushes the fur of your hindlegs as she tries to wedge her far larger head between them to better attend your sex. Not wanting to impede her, you spread your legs for your larger lover and languidly fan your tail as if to welcome her advances. You can hear Ava purr in a deep approving trill that washes over you in waves of pleasant vibrations as she remarks through a low catty rumble, 'Aw, you look so cute like this. It just makes me want to eat you up even more,' as she kisses your comparatively petite pussy.";
	say "     You coo, delightedly as her lips encompass your feral feline flower. Her sizable tongue strokes your vulva with bestial passion as she services your drooling muff. You mewl in animalistic joy at the way her soft pseudo-barbs tease your sordid sex. You almost feel like you can sense each fleshy spine lavishing your welcoming passage as Ava's oral member attends to your needy tauric depths with her loving touch. With each pass, the pair of you fall deeper into beautiful rhythm, wordlessly syncing your passionate exchange. Every kiss and exalted lap of your sexes complements the last as your paws roam each other's soft plush bodies. Whilst your hands gently play with one another's lush milk tanks. The room fills with the sweet sound of your mutual purring reverberates throughout Ava's concrete abode in crescendo of feminine feline arousal.";
	WaitLineBreak;
	say "     Trilling internally at this blissful choir, you cup your thin ebony lips to her catty joy buzzer, eagerly caressing her throbbing sex and nursing her inhuman button with gleeful innervations of your oral muscle. Your touch elicits a pleased gasp from the big-boned cat girl as her larger-than-averaged clit brushes the natural ridges of your predatory maw. Ava's padded paw hands drift to your supple flanks as her claws lightly fondle the sensitive animalistic nerves lining your inner thighs and plush core of your catty lower half. Meanwhile, the not-so-little cunning linguist's delectably large tongue teases your feline flower and tender button with broad sweeps of her pleasantly barbed oral muscle. Ava lavishes your feline sex in a heady constantly shifting squall of decadent dichotomous delights. The texture of her sensuous muff buffing flows seamlessly from the softest velvety of caresses to a ridged erotic tickle as her oral barbs seem to morph in accordance with your body's ephemeral desires.";
	say "     Not a single ";
	if "Touched by Madness" is listed in feats of Player:
		say "centimeter ";
	else:
		say "inch ";
	say "of your well-loved cunt is left unmolested by Ava's masterful ministration of your molten muff. The big cat's tactful, titillating tongue seems to know just what your body wants almost before you, you muse, sensing her turn her head at a ninety degrees angle, perfectly kissing her pencil thin lips to your ludicrously lengthy love canal in an almost vacuum-like seal. While her heavenly smooth pad traces the beautiful black rosettes of your fur-swaddled bosoms in a show of bestial affection. What a good girl, you purr, feeling the tips of her claws dance across your pelt as she tweaks your perfectly perky nips between her thumb and pointer fingers. The sensation pairs so wonderfully with the rapturous innervation of your soft furry bodies grinding against each other. Every fiber of your being sings in choral contentment as your passion reaches a fevered pitch. Your heart pounds and body tenses with base anticipation.";
	WaitLineBreak;
	say "     The not-so-subtle sensation wells in your breast. Though you try to push back against it to squeeze out just a little bit more time together. The sensation of Ava's satin walls clamping down on your eager oral muscle and the gentle caress of her paws on your exotic body push you over edge. As you cum, loosing a feral roar and squirting a heavy trickle of girl honey into Ava's waiting maw as your body is wracked by waves of molten pleasure. The heavyset cat-girl's loving trill soon turns into a fierce cry of relief as she finishes, basting the inside of your hungry muzzle in exotic sweet flavor. Panting happily as you feel catty contentedness washing over you like a cool breeze, you roll on to your back wiping the sweat from your brow and licking your chops clean. Ava collapses beside you, a happy dopy look is plastered on her face as she pets your lower body affectionately while cleaning any excess fluids for your pelt. For a time, no words pass between you. You're both more than content to simply cuddle in your shared many-limbed embrace and caress each other's silken pelts as you wallow in the afterglow of your affair. And sometime later, when the strength returns to your limbs the two of you finally get up, feeling refreshed and ready to face whatever the nanite apocalypse wants to throw at you next.";
	PlayerEat 15;
	PlayerDrink 15;
	NPCSexAftermath Player receives "PussyOral" from Ava;
	NPCSexAftermath Ava receives "PussyOral" from Player;
	turn the Player into a "Margay Taur";
	choose a row with Name of "Margay Taur" in Table of Random Critters;
	if scalevalue of Player > 5:
		now scalevalue of Player is 5;
	if Breast size of player < 26:
		increase Breast Size of Player by 1;
	if Nipple Count of Player < 12:
		increase nipple count of Player by 1;
	if Lust of Ava < 3:
		increase lust of Ava by 1;
	increase Cunt Depth of Player by 3;

to say AvaSex3: [Eat Ava out]
	say "     Eyeing up your cute tauric playmate, a part of you feels like she deserves a special treat. The poor girl has been cooped up in here all day during this pandemic. Why not do something nice for her and brighten up her day? Perhaps sensing your gaze roving over her exotic form, Ava asks, 'What's up [Name of Player], are you feeling a little hungry?' as she traces a claw down her rows of plump milk tanks. Smirking at the sight, you tell Ava that you might be, though you're in the mood for something a little sweeter than milk right now. 'And what might that be,' Ava asks innocently, cocking her head at a quizzical angle. Smiling, you quip that a helping of girly taur honey would really hit the, you pause to lick your lips, spot. 'Oh,' Ava purrs happily, guiding you over to her makeshift bed. 'I think I might have some, but you'll have to work for it.' Chuckling, you tell her that doing what you love is never work as Ava eases herself onto her tauric backs, putting her curvaceous body on full display for you.";
	say "     To say that the sight brings a smile to your [FaceName of player] face would be an understatement, you muse, observing the beautiful curves of her exotic form, and the cute look of her massive forepaws resting on her rows of heavy breasts sagging along her sides. Not to mention how her heavy hind paws and saucer-sized pads frame her needy pink snatch like an adorable pair of furry handlebars. As Ava fans her voluptuous flanks with her billowing tail, filling the air with the balmy scents of budding feline arousal. You almost want to dive in on the spot and just bury your face in her smooth toe beans; to feel those soft pads brush along your cheeks. Yet, you resist the urge for the moment and just drink in the sight of such a large tauress in recline. It's so rare to find a pure female tauress, that you simply want to bask in the presence of such exotic creature bearing itself to you in all its regal splendor.";
	WaitLineBreak;
	say "     'Um, are you alright?' Ava queries, breaking your trance. Stammering to save face, you clumsily tell her that you were just getting lost at the sight of such a beautiful girl. 'Ah,' Ava sighs bashfully, 'you really mean that?' Smirking, you kneel down beside her feline flower telling her that it's hard not to, there's just so much of her to love. Running a hand down her animalistic sides, you tell how much you adore her soft gold, white, and black spotted pelt. Working your palms up her hindleg, you remark how her cute kitty toes look like big pink jelly beans, which earns you a little giggle from Ava as your fingertips glide over her velvety pads. Your hands languidly drift to her heavy milky breasts, as you serenade Ava over the wonderful heft and size of her assets, then move your attention over to her adorable fluffy paunch, running your palms over her heavy furry body. A part of you revels at the way her exotic pelt parts before your fingertips as they sink into the sea of burnished gold, polished quartz, and glossy jet laid out before you.";
	say "     'That's super sweet of you to say, I-I, um, sometimes get a little self-conscious over my size,' Ava peeps patting her sizable middle. Tutting, you reassure her that she's beautiful just the way she is. 'You think so? I always heard a lot of mutants say I was a gross taur, so I thought no one liked my kind... except mommy and daddy,' Ava replies, though she squeaks that caveat under her breath. Nonsense, you counter, her exotic form is in many ways far superior to a lot of the silly little bipeds slumming it up in the city. It makes her extra soft, like a giant fluffy hug-pillow, you tease as you lean over her feral half and lovingly caress your cheeks along the graceful swell of her lush middle. You then glide your eager mitt down her flanks, telling how her larger form compliments her exceptional collection of tits, and not to mention highlights her lush lily lips. You swoon, as you lightly kiss her glistening nethers, and enjoying the little shudder that passes through her as your warm lustful breath dances over her sex.";
	WaitLineBreak;
	say "     'He-he, that tickles, but this kitty needs more,' Ava rumbles dreamily as she sneaks her tail under your neck and gently entwines it around your throat like a fuzzy collar and tugs. Picking up on her not-so-subtle hints, you run a hand over the invasive limb, fondly stroking her tail as Ava gingerly guides your [FaceName of player] head to her waiting feral sex. Cooing contentedly, you allow her to continue even as the hard bones of her tail brushes up alongside your throat like a living choker. 'Please,' Ava pleads to you in a low lustful voice, holding your lips ";
	if "Touched by Madness" is listed in feats of Player:
		say "centimeters ";
	else:
		say "inches ";
	say "from her waiting feline flower. Her cunt practically burns a rosy red with need. Of course, you sweet little kitten, you tease, saddling your [FaceName of player] lips to her sweet petals and grasping hold of her fluffy hindlegs for support. You lap at Ava's tender sex, taking special care to keep your oral affections focused on the delta of feline flower, knowing full well that her clitty is opposite of where you're used to.";
	say "     'Ah, that feels, *nya* that feels so good,' Ava gushes, massaging the tip of her tail along your chin as you tenderly suckle her juicy thumb-sized button. Glowing under Ava's praise, you decide to add a little more pageantry to your performance. You give Ava a cute waggle of your hips as your lips crest the edges of Ava's voluminous sex, though your mouth is just barely able to engulf her meaty muff. Rivulets of warm taur-honey dribble down your throat, her syrupy flavor playing on your palate as your tongue delves the hot velvety walls of Ava's sizable feral passage. A part of you almost wishes your tongue were a little longer so that you could explore the fullness of Ava's tauric cunt as her exotic muscles hug your oral intruder. You can only imagine how good it would feel to have a long sensitive muscle be milked by ";
	if "Touched by Madness" is listed in feats of Player:
		say "meter upon meter ";
	else:
		say "foot upon foot ";
	say "of plush animalistic snatch.";
	WaitLineBreak;
	say "     Chuffing internally, you mentally note that her whole body is such a beautiful experience. Her delightfully plump button gliding over the tip of your tongue. The sensation of her silken fur and exotic lower half teasing your [FaceName of player] face and the heady mixture of Ava's fresh alpine scent intermingling with the smell of feline arousal playing at your senses. That wonderful innervation of Ava's tail wound about your throat like your own personal collar and how it tickles your Eve's orange every time she shudders from your skillful oral ministrations. Her handlebar-like legs rub your palms while your dexterous oral muscle plies its well-honed craft is a tactile treat, you opine, gazing at the roiling sea of Ava's golden furry body dotted with isles of burnished ebony, and adoring the way her prestigious mounds brush up against your nose. 'N-Nya someone's enjoying themselves?' Ava purrs, nibbling on her claws at the sight of you prostrating yourself to her delectable form.";
	say "     Her lustful voice draws your eyes to her and you watch with some sense of primal pride at the look of such a large creature acting like a common thrill. You rumble in agreement as your tongue is a little tied at the moment, and follow up by working your fingers up Ava's legs till the tips meet hers. 'Mmhh, you look so cute down there,' she says as you try entwining your fingers with her sizable toes. 'Aw,' she coos, squeezing her talons into the back of your hands. The pressure of her razor sharp claws hurts a bit, but at the same time, there is a bit of thrill in locking paws with the gentle tauress. Besides, everyone knows that if you play with a cat, you might end up scratched, you muse, lavishing the doughy folds of Ava's swollen clitty hood with quick skillful darts of your [FaceName of player] tongue till you can feel her not-so-little clit develop a measure of sinfully sweet stiffness.";
	WaitLineBreak;
	say "     You flash Ava a catty grin, as you shift your attention to her thumb-sized button wrapping your tongue around her engorged joy-buzzer, happily nursing her sensitive button like your own personal lolly. Your dominant hand drifts down her plush pelt, tracing teasing circles along her inner thigh as your digits glide towards the lips of her molten muff. You brush your fingertips about the apex of her bestial vulva in loving sweeping motions. You artfully slip your experienced digits past her feral lips as you generously jill her welcoming passage. The tender walls of her supple sex coil about your tactile digits, almost as if they could draw you in. Rather than fight her body's desire, you allow her moist malleable muff to guide your touch. Your fingers are seemingly drawn like living lodestones into her needy depth, lavishing her as you ply your well-honed craft. Making Ava pant with delight like she was wallowing the deepest of heats.";
	say "     Her pulse quickens, breath coming in loud, heavy pants as she writhes at your loving touch. Her whole body quakes with unrestrained passion. Ava roars, 'Oh Mommy!' as she cums, her face burning a bright red under her exotic pelt. Her claws dig in deeper to the back of your hands as you push her over the edge. It doesn't bother though, you're too absorbed in the succulent texture of Ava's wide on to even notice the warm crimson streaks snaking down your arms as he claws rake your [SkinName of player] skin. Your pink treat is all that you care about, that and the delectable trickle of girl juices that rest in your tummy like a warm calming dollop of honey. 'Ah, thanks I REALLY needed that,' Ava sighs, losing her hold on your throat as you clean off the last few drops of girl cum off her sopping feral slit. No problem, besides you got something out of it too, you joke, rubbing your sated stomach. 'Tee-hee I'm glad you enjoyed it,' Ava purrs, brushing her hind-paw against your midriff.";
	WaitLineBreak;
	say "     Oh that feels so weird, you joke as her silken paw pads and teasing pelt massage your sternum. 'Sorry, I didn't mean to-,' Ava replies, drawing her paws back in a panic. Hey, you didn't tell her to stop. You playfully chastise, shooting Ava an annoyed look. 'Oh, is this better?' Ava purrs, happily kneading your torso with her massive forepaws. Much better, you moan lustfully, loving the interplay of her razor sharp claws and smooth feline pad glossing over the [SkinName of player] hide of your [Breast size desc of Player] breasts. 'Well, mommy gives me lots of practice,' Ava replies, her face awash with genuine affection. Almost melting at her touch, you tell her that it shows, and ask if she'd be willing to give you a full demonstration sometime. 'Sure but not right now. Kitty is getting a little sleepy,' Ava yawns, stretching herself out like a cat about to sun herself. Fine, you tell her, giving her heavy paws a playful tussle, but you expect a full body massage one of these days.";
	NPCSexAftermath Ava receives "PussyOral" from Player;
	if Lust of Ava < 3 and Thirst of Ava is 1:
		increase Lust of Ava by 1;

to say AvaSex4: [Taur mating]
	if Libido of Ava is 0 and "Breeder" is listed in Traits of Ava and Player is impreg_able:
		say "     Eying up Ava's voluptuous body, you ask the fertile tauress if she's ready for another litter. 'Of course, I don't know about you, but I feel so empty without your kittens to keep me company,' Ava mews stroking her tummy with her tendrils as she saunters up to you. Nodding, you confess you're starting to feel the absence of your own maternal figure. 'Good because I miss seeing it too, you look so cute and happy with a belly full of little one, and besides the girls,' Ava pauses to paw at her rows of perky breasts, 'were starting to get a little too full.' ";
	else if Libido of Ava is 0 and "Breeder" is listed in Traits of Ava and Player is impreg_now:
		say "     Eying up Ava's voluptuous body, you ask the fertile tauress if she's ready for another litter. 'Of course, I don't know about you, but I feel so empty without your kittens to keep me company,' Ava mews stroking her tummy with her tendrils as she saunters up to you. Smirking, you run a forepaw over the vivacious curves of your feral womb telling her you know how she feels, your cubs presence is a rather comforting one. 'Aw, naughty kitty,' she teases, giving your ear a playful nibble, 'going and getting yourself knocked up, and leaving me to get pent up without you,' she purrs, gesturing to her many tiers of plush shapely tits. ";
	else if Libido of Ava >= 1 and Player is impreg_now: [Player is knocked up]
		say "     Drinking in the sight of your newly gravid lover's blossoming baby bump, you ask if she might be up for a little [']mommy time['] together. 'Heh you bet! I've been feeling pent up these few days, and not just up here,' Ava swoons groping her leaky furry milk tanks as she waddles beside you. 'All these mommy hormones have been driving me crazy, so do you think you could help me out?' she mews, kneading the ground expectantly, as beads of pearly delightly leak from lush chest. ";
	else if Libido of Ava >= 1 and Player is impreg_able: [Player is not knocked up]
		say "     Feeling a touch jealous of your gorgeous lover's condition, and more than a little turned on by the sight and scent of her fecund figure, you paw up beside her and ask if she's up for another round of fun. 'Oh of course, anything for my big sweet mate,' she mews, running her padded fingers along the cute not-so-little curves of your vacant womb. 'You know it's amazing how quickly you come to term!' Snickering, you tell her what can you say, you just seem to be built differently. 'I guess so, but that just means I need to work even harder to keep my wonderful mate extra special full, and you know what I've got just the thing to help,' Ava purrs, gesturing to her plush milk tanks with eager swish of her tail. ";
	say "Well you think you can help out with that. She wouldn't want that cream to go to waste now, would she, you purr licking at the memory of Ava's rich flavorful bounty. 'Then come here my wonderful mate, you deserve a [']little['] treat, and besides it couldn't hurt to bulk you up a bit for the kitten's sake,' Ava trills gently pulling your head to her swollen anthro breasts. Well, when she puts it that how can you say no, you tell her, planting a little kiss on her middle row of her engorged anthro chest. ";
	WaitLineBreak;
	say "     At once, her hardened nips begin leaking in earnest, staining Ava's gold and black spotted pelt with a heavy stream of pearly white fluid. Excited at the scent and sight of her, you eagerly lap at the excess with long languid laps of your tongue exalting in the cute expressions Ava makes as your tongue titillates the tender tissue. Not content with such meager fare though, your lips latch onto her closest teat like a drowning woman to a bit of flotsam while your hands playfully explore Ava's curvy anthro half. Her body eagerly responds to your touch as Ava's bountiful sloshing bosom bastes your mouth in a rich torrent of excess, coating your palate in fatty nanite-laced cream. With each sizable swallow, you can feel your Margay Taur nanites thrum to life as they actively scourge any lesser latent strains polluting your soon-to-be perfect body as they reinforce your tauric nature. Your distorted mind finds it hard not to enjoy the ripening sensation of these alterations racking you as your true self asserts itself. Your body crackles with the essence of change.";
	say "     You can feel yourself growing larger and softer by the moment as Ava's wonderful nanites course through and the last vestiges of any unwelcome alterations are purged. Your infection turns its attention to feminine assets, molding your breasts and sordid sex closer towards being the perfect mommy taur. As you glide a paw over your lush curves, you coo with unbridled catty delight as your chests swell with a fresh layer of soft adipose and taut milk-flushed glands as they press against Ava's. Mh yes bigger, kitty's titties needs to be bigger, so much bigger. You murmur between gulps of thick cream as empty a row Ava's creamy tits. The changes slowly extend to your fertile feral flower as you sense the birth of countless fresh raw nerves lining your eager channel winking into existence like newborn stars. Your sex grows ever larger to accommodate the excess, all the better able to handle a litter of taurs, you muse, running a forepaw over your doughy feral half. '*Tee-hee* your whiskers are so tickly, is my big fluffy kitty enjoying her meal,' Ava titters as a pair of her smooth tendrils snakes their way about your anthro half teasing your curves and growing milk filled midriff.";
	WaitLineBreak;
	say "     Purring happily as you drain yet another of her milk-stuffed teats, you gushingly tell her how much you love what her cream does to you. The tender swelling of your plump breasts and the salacious expansion of your sex all working together to slowly shape you into the perfect broodmother. 'Oh,' Ava mews, pulling you close, 'I'm so glad you appreciate it, because I love it too, it's like I've got my own personal plushie right now. I bet the kittens are going to love it too. I mean just look at these milky tits, they're going to be perfect for keeping the little one's fed,' Ava says proudly as a pair of her tendrils fondle your heavy cream stuffed glands. 'And you've got these wonderfully padded tummies to keep them safe. Of course they could have a bit more cushion, maybe the next litter can help you out there. We wouldn't want some mean old mutant to hurt the cubs the next time you get in a fight now would you?' Ava titters, pawing at your animalistic half with her massive forepaw.";
	say "     Her soft, heavy, pink paw pads and sharp talons easily encompass the totality of your lower body as she lovingly strokes your pelt. No, you would not, you mewl demurely between heartily swallowing down the last mouthful of warm transformative cream Ava's anthro half can produce. 'Good, let's hope some of this sticks. You look so cute with a big stuffed tummy dangling between your little fluffy legs. Mh, just thinking about it makes me want to...' Ava rumbles her voice slowly peter's off in low sensuous purr as she ogles your fertile feral flanks. Makes her want to do what? You quip licking a bit of excess cream off your lips as you reach for her muzzle. You stroke her feline cheeks with your padded hands asking in a pleasant sing-song tone what your beautiful mate wants as Ava hums contentedly, nuzzling your paw-like hand. 'Mh, kitty wants to be on top,' Ava mews playfully, licking your clawed fingers her bristled tongue teasing your pads as she does.";
	WaitLineBreak;
	say "     Of course sweetie, just try not to crush you, or the little ones, you reply, turning on your heels and presenting your feline sex to her with a slight flourish and waggle of your hips. Well go on beautiful, dig in, you tease, giving your animalistic half a playful slap with tendrils that sends ripples along your burnished gold and black spotted pelt. While you jostle your cream-filled dugs and milk-stuffed tummy with an added shake of your hips. Enjoying the sound of sloshing assets as you fan your billowing exotic tail over your sex, impregnating the air with your needy scent for added flair. '*Nya* you look delicious,' Ava mews, her thin ebon lips curving into a hungry predatory grin as she drinks in the sight of eager [Cunt Size desc of Player] snatch. She kneels down behind you, giving your cunny a quick sloppy lick with that monster of a tongue of hers. Her fleshy spines exciting and caressing your tender vulva and inverse button in ways you once rarely dared to imagine as she lubes up your eager sex.";
	say "     Ah such an attentive mate, you coo at her, arching your elongated back in a cute catty pose as Ava's oral muscle braises with long steady laps of her tongue. Each pass sends delighted twitches down the length of your back, as your larger lover tends your moist feral button, warm dew drips from your suitably serviced box then the shapely curves of your hindlegs, Ava rears up on her hindlegs and pounces on your back. At once, your vision is smothered by her heavy furry breasts pressing down around you as your [bodydesc of Player] body struggles to bear the mass of her portly physique and heavy assets resting atop you. Oddly though, you're not really bothered by Ava's weight, something about the way her doughy belly and taut milky dugs weight upon you, and the sensation of her voluptuous legs wrapping around you feels so right to your tauric body. Perhaps it's the nanites messing with your mind, but the sensation of your mate claiming your animalistic half in such a way excites you. Though Ava wastes little time in letting you wallow in your thoughts as her tendrils wrap themselves about your collection of mammaries.";
	WaitLineBreak;
	say "     She gingerly squeezes and gropes the not-so-little things, enraptured by their supple size as she lines up her ovi tail with your slit. Your larger lover tantalizes your dripping feral snatch with languid strokes of exotic limb, coating her massive limb in fem honey. Once properly lubed up, Ava rears back the sordid limb and thrusts, putting a bit too much of her weight behind it. Oh, you moan though not from discomfort, but more from surprise at her and your own strength as your body shakes from the force of Ava's ovipositor parting your lush moist muff. ";
	if "Touched by Madness" is listed in feats of player:
		say "Meter after meter ";
	else:
		say "Foot after foot ";
	say "of her exotic limb fills your sweltering depths in a way many lesser mutants wouldn't be able to. Big as you've become, and not just in stature, you can still feel your [Cunt Size desc of Player] muff bulging and struggling to accommodate her. You don't feel any pain though, as your often neglected depths roils with ecstasy at the touch of Ava ribbed ovi tube. Her glossy tendrils massage your groaning belly fur almost protectively as she plows her lengthy egg-laying limb along your satin walls, lavishing your bestial bits with each exhilarating pass of her pleasingly corrugated appendage.";
	say "     The sweet sensation of your breeder's box being stuffed to the brim sends bolts of molten rapture through your lengthy sex. You find yourself panting heavily for breath with unabashed desire as your tauric sex sings with each thrust, rocking your large body in Ava's grasp. Your rubenesque lover isn't immune from her own zeal, as you can feel her swaying hips and jiggling assets slapping lewdly against you as she pounds your puddling [Cunt Size desc of Player] pussy. You soon find yourself pawing with one of your forelegs at the faint outline of her egg-laying limb. You can just barely detect the hypertrophic thing beneath the soft yet thick layer of adipose swaddling you. 'Heh, that feels kind of nice, gosh I'll never get over how sensitive this thing is, sometimes it's sort of unreal,' Ava remarks at the loving caress of your tauric passage along the length of her ovi tube. Really? Well you can do something that will make her feel even better, you gibe, brushing your own egg laying appendage against Ava feral slit.";
	WaitLineBreak;
	say "     'Oh and what might that be? I hope it's a belly full of eggs,' Ava trills excitedly, running her hand paws down your side as you tease her dewy sex with your altered tail. Aw how'd she know, it was supposed to be a surprise, you titter, sneaking your enhanced tail between her lush warm nether lips, spearing her lurid sex with a practiced thrust. 'Ah yes,' Ava cries, digging her claws into your shoulders as your alien appendage innervates her sweltering muff. You practically feel her heart flutter as your sizable limb ravishes her needy passage, sending quakes through her plush body as you service Ava's exotic body. Your tendrils coil about her heft breast and plump tummy furry, teasing and groping her bountiful figure. Her sopping satin sex clenches and caresses your sordid limb, though most of it, barring your tail mounted slit, lacks the sensitivity of a man's member or your feminine flower.";
	say "     The pressure and frictionless innervation of Ava's vaginal muscles spasming along the girth of your egg-laying appendage titillates your exotic nerves in ways your lust-addled mind struggles to parse over warring sensations of your well-stuffed cunny and milked tail cunt. Words fail you as you roar your satisfaction to the figurative rafters as Ava's meaty tail brushes your cervix. You have to fight to stay standing as your quivering body is ravished by over a ton of horney tauress. Were it not for her support, you suspect you'd have fallen face down ass up letting her rut you to her heart's content like a lazy beastess lost to her heat. Although as you think about, if Ava keeps stuffing you like this and tits and tum keep growing you could easily end up as a immoble tauric broodmare. But that wouldn't be so bad, you opine as Ava's paw hand and tendrils prop you up effortlessly.";
	WaitLineBreak;
	say "     She lovingly fondles your jiggling feminine attributes despite the trembling it evokes in your treacherous knees. Even as your vision is obscured by the swaying of Ava's pendulous orbs smothering your muzzle and coy heady scent plays with your senses. You keep up the tenor of your virile assault on Ava's feral sopping sex in tune with her. Your whole body practically thrums with a familiar stiffness wells up from your loins. One by one, the countless rings of your ovipositor's unusual muscles lining your tail spasm like switches on an overloaded circuit board as the first of your eggs alongside torrent of feminine fluids ripples along your bulging limb. Fireworks explode across your tit-filled vision as each little spasm and contraction feels like a tiny orgasm as numerous eggs grace the concentric circles of your egg laying appendage. The first of your many honey-basted ovum stretches your tail-mounted slit wide, pushing your sensitive tissue to its limit as at last you cum with a wall-shaking knell. Soon more and more your ovum are pushed out like erotic pleasure beads, their sheer weight bloating Ava's fluffy bellies into cute lumpy domes.";
	say "     Your tauric lover pants and coos with each deposited egg unable to constrain her delight as her body swells with your offering. Soon that sweet tone turns to a deep cry of inhuman satisfaction as her tail writhes and deforms with the passage of her eggs and dewy natural lubricants as they push through your well-stuffed birth canal. A part of you opines that you can almost feel the outline of each egg accompanied by a swell of warm feminine fluid pressing past your cervical ring into your eager womb. Placing your padded hands over your stomach, you purr with maternal bliss as the sensation of your kitten factory ballooning in your grasp. Growing low, taut, and round as more of Ava's load packs your accommodating body till your distended lower stomach brushes the ground with each deep breath you take. Yet Ava still has more to give, not all that surprising given her greater stature, and you couldn't be happier for it. As your pregnant paunch presses against both your feline legs and cool cement floor slowly lifting you off a few inches off the ground like a giant water bed even as Ava's growing middles smother your backside.";
	WaitLineBreak;
	say "     '*Huff-huff* so many eggs, so many *huff* beautiful kittens, and such a big soft mate,' Ava babbles, her tongue lolling from her mouth as she playfully sinks her claws into your bed sized tummy, playfully massaging your taut core. Meanwhile, a few of her inquisitive tendrils cup your hefty dugs, groping your heavy feral breasts in their coils. Heh she's not such a slouch either babe, quite the load she's got here wouldn't she say? You gibe, patting her overflowing side with a few of your back-mounted tentacles, though you struggle to find purchase in her drum tight pelt of her lumpy dome-shaped womb. 'Eh sorry, it just felt so good I couldn't help myself. I ,um, might have gotten a little carried away there,' Ava simpers, stroking your lovely creaking curves with her paws appreciably. Shrugging you tell her not to worry, you've kind of come to expect this sort of thing with larger lovers. Besides, you remark that it does feel sort of nice getting so thoroughly stuffed with eggs and fem cum that your paws can barely touch the floor.";
	say "     You might even enjoy spending a few days like this, especially if you have a nice girl to wait it out with you. Too bad it won't last though. The eggs that don't immediately bond with the lining of your womb will likely get absorbed by their peers, if not by your body, pretty quickly, you add patting your yoga ball-sized upper belly. 'Aw I was hoping you'd stay like this a while longer,' Ava pouts. 'Oh well, maybe one day when this is all over we can find a way to stay like this. You'd make the perfect hug pillow if we could,' Ava adds, wrapping her legs around you and giving your lower half a big hug. Tittering, you tell her that you might like that, but for now, you'd prefer to enjoy your temporary condition with her for the time being. Unfortunately, you still have things to do that require walking. 'Ok, how about you lie down with me instead?' Ava purrs, easing herself off your back and motionsing to her mattress. Nodding your head, you tell her that it does sound heavenly at the moment.";
	WaitLineBreak;
	say "     'Yay,' Ava exclaims, dashing off to the otherside of the room. Her swollen assets jiggle enticingly as she drags the thing to you. Dropping it before you, Ava helps you roll onto your side as you snuggle up next to her. 'Now you girls take care of your mommy out there,' she mews, running her paws along the [bodydesc of player] curves of your strained pelt with her glossy pads. Purring happily at her touch, you coil your tendrils about her expectant core as you nuzzle your catty snout along the supple rows of Ava's impressive fuzzy chest, whispering to your brood a similar sentiment. As your paws brush one of their slumbering forms, you take a great deal of solace in knowing they'll be safe out here. That, regardless of what happens to you, a piece of you will always remain in this world, and that your kittens will have a great family to watch over them. You muse on this as Ava drapes her forepaws over you protectively and fondles your slowly shrinking core.";
	say "     A gesture you gladly return as you pull yourself closer, letting your lush [Breast Size desc of Player] tits and well-egged tum rest against hers while the two of you enjoy this brief yet potent moment of connection between not just yourselves, but your cubs. You don't know how long it will be till they [']see['] each again, and some section of your maternal catty mind wants to give them the opportunity to say goodbye to their soon-to-be litter mates. You opine, tracing one of your tendrils along the fruitful borders of yours and your mate's pampered bumps. Eventually though, you begin to feel the pull of other obligations nagging at the back of your mind. Sighing, you know you have to get up, a reality Ava seems all too aware of as untangles herself from you. 'Don't worry, I know you can't stay here, just promise us,' she simpers, patting her paunch, 'you'll come back soon.' Nodding, you lean in and kiss her puffy little navel, telling her that you will.";
	NPCSexAftermath Player receives "PussyFuck" from Ava;
	NPCSexAftermath Ava receives "PussyFuck" from Player;
	turn the Player into a "Margay Taur";
	choose a row with Name of "Margay Taur" in Table of Random Critters;
	if scalevalue of Player > 5:
		now scalevalue of Player is 5;
	if Breast size of player < 25:
		increase Breast Size of Player by 1;
	if Nipple Count of Player < 12:
		increase nipple count of Player by 1;
	increase Cunt Depth of Player by 3;
	if Player is impreg_now:
		decrease gestation of child by a random number from 5 to 10;
		if gestation of child < 1, now gestation of Child is 1;
	if Libido of Ava is 0:
		increase Libido of Ava by 1;

to say AvaSex5:
	say "     Eyeing up your gravid lover's figure, you can't help but feel a note of pride at the state you've put her in. Her breasts have swollen with enough milk to feed an entire pride and dominate her view. While her plush tummies have blossomed into thick meaty orbs dangling just inches from the floor and give her a pronounced sexy sashay that sends cute little ripples along her pelt. You doubt that she can even see the ground much less her own paws at this point, you muse as your gaze lingers on her lush figure, though you notice Ava eyeing your growing curves with a similar look. 'Mh, like what you see? Cause I know I do,' she asks, noticing the lewd twinkle in your eyes as she arches her back to better highlight her condition. Of course, pregnancy suits her, you reply, flashing her a catty grin. 'Aw thanks, I just love the way your kittens make me feel,' she mews, her tendrils coiling about her supple form, 'and getting to share this with you is just the best! You know everytime I see you waddle around The Chance like this I feel like I just want to pounce on your back,' Ava rumbles as her gaze washes over your expectant middles, 'but I'm afraid I'd hurt the kittens.";
	say "     Giggling, you tell her that the feeling is mutual, but that doesn't mean you still can't have a little bit of fun and gesture with a bob of your tendrils to Ava's futon. 'Oh you naughty mommy, I love the way you think,' Ava trills, taking your hand in hers. She leads you over to the mattress and eases herself onto her side. You watch as her soft downy assets and hyper-engorged tummy rest comfortably on the padded sheets. 'Wow the kittens are getting pretty big aren't they?' she comments. Nodding in agreement, you gently run your paw over her taunt pelt, telling her that it looks like it won't long till she gives birth. 'Ya, I can't wait to really hold them all in my arms, but hm.' Ava sighs somewhat wistfully as she caresses her midriff with her tendrils. You ask Ava what is wrong. 'Oh it's nothing, it's just...' she murmurs, casting her gaze to the cute not-so-little curve of her middle, 'I've gotten so used to having a piece of you so close. I'm not looking forward to when they leave.'";
	WaitLineBreak;
	say "     Tutting at her, you paw up to your lovely mate and plant a quick kiss on her cheek, telling her how sweet that sounds and add that you can always give her another batch. 'Thanks [Name of Player], but you know I'm really gonna miss my bump when it's gone. I sometimes wish I could stay like this forever. I mean it feels nice getting to rest my feet like this,' Ava laments as she drapes one of her paws on her heft T-cup tits. 'It's hard to believe how big the girls have gotten, but I want more,' Ava remarks tracing a clawed finger along the borders of her striped pelt as she gives you a come hither stare. Purring approvingly, you tell her that you might be able to arrange that as you slide your own bulky figure beside her. You gently press your fecund figures against one another, excited by the subtle warmth emanating from her cores as your navel's touch. 'Ah it feels like the girls missed you and their sisters too,' Ava coos, as her belly fur seems to quake and roil with activity as her brood reacts to your presence. You gasp in surprise as one or two of their tiny pawbs kicks your fluffy midriff. Looks like it, you respond in a dreamy tone as you tenderly massage the outlines of their cute little toes.";
	say "     'And what about you girls? Did you miss me,' Ave queries as she runs her palm over your heavy middle as she pulls you closer. Your litter seems to react with equal activity as they sense their other mother's voice and warmth, erupting in a sudden flurry of activity as tiny toes dance across the surface of your tauric womb. It would seem so, you reply, fondling your mutual bundles with your padded digits. Ava's tendrils explore your tauric figure, squeezing your love handles and cream-stuffed breasts. ";
	if Breast Size of Player >= 1 and Breast Size of Player <= 4:
		say "'That's good, hopefully they can help their mosquito bite mommy. I mean these do look kind of cute and perky,' Ava sighs, caressing one of feral [Breast Size desc of Player] tits with her tendrils. 'But don't you think you should be a bit bigger? The cubs are going to need lots of milk. How are you gonna feed them like this?'";
	else if Breast Size of Player >= 5 and Breast Size of Player <= 12:
		say "'Mh looks like the kittens have really been helping you grow,' she remarks as she gropes one of you dugs with her forepaws. 'A couple more litters and you'll almost be as big as me!' Ava trills, pressing her larger sweater puppies against you. 'I hope you keep this up, I think you'd look great as a big fat titty kitty.'";
	else if Breast Size of Player >= 13 and Breast Size of Player <= 19:
		say "'Wow, you are coming along nicely,' she remarks as she notes the growing curves of your milk tanks. 'I bet the kittens are going to love nursing from these,' Ava coos, mashing her own equally bloated mammeries against yours. 'Aw look, we're practically the same size now! I wonder if you can get them any bigger. You certainly have plenty of room to grow,' Ava titters as plants a little kiss on your uppermost bosom.";
	else if Breast Size of Player >= 19 and Breast Size of Player <= 25:
		say "'Holy cow look how big you've gotten,' Ava simpers marveling at the size of your profound chest. 'I know I thought I was busty once but this is out of this world. If you keep this up you're going to be a regular dairy cat soon!' So she doesn't think they're not too big then? You sometimes worry she might find them gross, you reply, pawing at the collection of verdant tit flesh sandwiched between you. 'Oh [Name of Player], I could never find anything about you gross,' Ava coos, struggling to grope a paw full of taut taur titty. 'I'm super jelly of you! My boobs always shrink after I have my litter. Lucky you, you get to keep them nice and big. You know, if I were this chesty I don't think I could keep my paws off myself. They go so well with your sexy baby bumps. I bet it feels wonderful when you have these big fluffy tits pressed against your tummies,' Ava purrs glazing a taloned toe along comically overstretched pelt of your hyper assets.";
	else if Breast Size of Player >= 26:
		say "'Oh dear sweet mommy, you've gotten huge!' Ava mewls as she paws at your heaving chest. Big as she is, Ava can barely even get her paw around one. Though from the tone of her voice, you can tell she is both impressed and envious by this as she eyes up your golf-cart-sized bosoms. She gushes at the clear sounds of gallons of rich cream wallowing within the adipose-laden milk tanks as her talon traces the supple equator of your uppermost rack. 'Why, you're practically a kitty cow at this point. All you need is a cute little udder and maybe some horns to complete the look,' Ava jokes. Well the girls aren't that big, you tease in a humble-bragging tone as you nuzzle your chin against your hyper chest pillows. 'Oh don't sell yourself short sexy! It must be amazing to walk around these beauties, watching them bounce and jiggle with every step. And you know what?' Ava asks, squishing her half-sized fun bags against yours. You ask her what. 'I wouldn't have you any other way. My sweet little milky mate,' Ava trills as she kisses your uppermost breast.";
	WaitLineBreak;
	say "     Heh, you shrug, as long as she's enjoying them, you're happy. Besides, she's no slouch herself, you reply, nuzzling your feline muzzle along the furrow of Ava's uppermost bosom as you paw at her sizable milk tanks with your feral limbs. You almost swear you can hear the overstuffed glands groan with their bounty as your talons teasingly trace the edges of her areolas. You jokingly tell her how you hope that the kitten appreciates her lush bounty while your back tentacles worm their way around Ava's heft sides, fondling her deepening curves. 'All the better to keep the kittens safe and comfy,' Ava coos, giving her tummy a wet slap, sending an adorable ripple through her flanks. 'Besides, I can tell their other mommy likes it too,' Ava replies, rubbing her stomachs against yours as she playfully nibbles the tips of feline ears. You almost have to stifle a gasp as her furry gold and black spotted fur brushes against your sensitive gravid body. Guilty as charged, you swoon, running a paw over the crests of Ava's tummy. Now lets see how much more we can stretch, you simper, brushing your ovipositor tail along her [one of]seemingly bottomless[or]canyon-like[or]cavernous[or]expansive[or]elephantine[or]titanic[or]person-swallowing[at random] cunny.";
	say "     Cooing at the innervation of your exotic sexes, you grind your ovi slit along Ava's pliable pussy, slathering the sensuous tissue in her juices. You telling her you can see her tummies and tits aren't the only things getting thicker as your ovi tube explores her moist pregnancy flushed sex. Her swollen labia bulge out ever-so-slightly in a cute tauric cameltoe, and lucid dew trickles along the obscured ribs of your tail like water channeled through a verdant terrace garden. With every pass, her body gushes a fresh rivulet of feminine honey before you arch your tail back into a creative [']U['] bend and thrust. 'Nya!' Ava cries as her pliable passage eagerly engulfs your alien member and your ponderously long tail rollicks her molten stain depth. With each thrust you can feel her needy muscles clamp down on your alter limb as if to milk your ovi-appendage. Knowing Ava's robust body craves a bit of rough treatment despite her condition, you quickly pick up the pace, pumping away at Ava's hungry muff till her body quakes with each thrust.";
	WaitLineBreak;
	say "     That's a good little egg slut, you take that ovipositor. You'll make a proper broodmother out of you yet, you remark in a commanding tone as you massage her downy curves with your tendrils, delighting at the way her rubenesque form conforms to your touch. Your paws roam over multi-tiered breasts playfully kneading the hefty milk-stuffed mounds. Her overstuffed chest responds to your touch and you feel a low rumble from your stomach as the scent of her thick stream of cream teases your feline senses. Without even thinking, you find yourself latching on to one as primal hunger wells in your breast. Unwilling, or unable, to resist your growing feline impulses, you greedily suckle from Ava's heavy teats, relishing the taste of her fatty cream as your tendrils massage the heaving mass of Ava's milk tank. 'Ah such a hungry mate,' Ava purrs, running her fingers down the back of your head. 'Drink up now, you and the kitten must be starving out there.' Rumbling happily at her touch, you sink deeper into her loving embrace, letting your barbed tongue rove across the stiff contours of her teat and tender duct.";
	say "     You delight at the caress of her thick cream, along with the sweet little moans escaping from Ava's lip as her own egg-laying limb caresses your feral sex and her tentacles fondle your tauric plump form. Her fluidic egg-laying appendage teases your sopping wet [Cunt Size desc of Player] passage and throbbing button with each genial stroke of her [']tool['], soaking her ovi tube in a rich sheen of girly juice. As her glossy fur flattens, you can sense every hidden ring lining her exotic limb rifling your elated lips. Though she makes no move to penetrate you, till you give her the go ahead with a bob of your muzzle and a few loving squeezes from your hindlegs. Like the wild creature she resembles, Ava's response is swift and bestial, as she arches her tail and penetrates your feline flower with a rough thrust that you've come to expect of a post-apocalyptic lover.";
	WaitLineBreak;
	say "     Her strokes are strong and decisive things evocative of a rutting beast as the heat of her tempo sends waves of blissful wobbles though your cuddly pelt and plush [Breast Size desc of Player] with each pass of her ovipositor. Not that you mind, some part of you knows your feral sex is up for it, if anything, your lower half craves a visceral rut. The generous layer of adipose swaddling your kittens will keep them safe from any over exuberance on Ava's part. Even as she gropes your animalistic flanks with her claws leaving vibrant rosy trails in your pliable pale skin. You still need more, as you squeeze a paw full of Ava's milky teat, desperate to experience that warm transformative rush once more as her nanites mold your body into the perfect breeder. Your eager kneading is soon rewarded though, your margay taur nanites whirring to life as they react to your desires and unique strain. Little by little you sense your breasts growing larger and productive in preparation for your coming cubs.";
	say "     Despite the frequency of such expansions, the sensation is just as pleasurable as ever. Your sopping sex seems to throb and pulse with activity as your breeder's box swells about Ava's billowing ovi tail. The fresh pleasure sensors are set ablaze with renewed rapture as the unsullied nerves are ravished into existence. You run a paw over your distended feral womb, musing that if this keeps up, your kittens will be doing cartwheels out of you in no time. Oddly, such a thought is rather appealing to you as you murmur to Ava, That's it babe, put a whole pride into there. You don't want to waddle out of here with anything less than a bellyful of octuplets, between suckles and your own sordid thrusts. 'Mh, yes kitty needs to be bigger, much bigger. So big her tummy scrapes the ground. So she big can't even walk out the door,' Ava rumbles with a rare tenseness in her voice as she presses her own gravid middle against yours.";
	WaitLineBreak;
	say "     Then what is she waiting for? Your bodies were made for this, you encourage her between gulps as you intertwine your forepaw with hers. You playfully demand that she fill you, while you wrap your tendrils around her lower half teasing her heavy furry dugs. You can feel your ovi-tail twitche and ripple with anticipation as your alien muscles lavish their affection on her tight passage. You can sense Ava's cunny clenching around your egg-laying slit as the first in a long line of gelatinous eggs push their way out like pleasure beads surging forth from their depths. You pant heavily with deep lustful breaths as your tail throbs and ripples with each micro contraction, stimulating the exotic nerves in an odd parody of a male orgasm as your egg splits your receptive mate's sodden nether lips wide. Ava roars in elation as she swells from the weight of your fertile gift. Her own altered anatomy heaves with the mass of her own hybrid offering. As her middle swells in your arms, your voice joins hers as you cry out in delight.";
	say "     The force of her rich flow of gooey eggs surges through your stuffed canal like boba through a too small straw. Your reactive nerves can almost perfectly make out the shape of each ovum pressing against your [Cunt Size desc of Player] cunny as Ava's tail spasms. You soon find yourself mewling as one gelatinous ovum after the other bloats your already seeded womb with their weight. You can hear your skin creak and nerves howl as your body swells into a beautiful mound. Looking down, you feel a sense of accomplishment as at the sight of your growing gravidity. Your white, gold, and black spot pelts swell with the weight of your young to the point you can see tiny patches of pink and red skin. In your current state, you have no hope of wrapping your arms around yours or Ava's view-obscuring pregnant paunches. Your tentacles on the other paw are quite up to the task. Coiling your tendrils around Ava, you caress and fondle your lover's litter, feeling the little lumps of your freshly laid spawn as they slowly dissolved or are absorbed by the current brood.";
	WaitLineBreak;
	say "     Some section of your psyche is saddened by this fact, but you know that their essence will only add to the vitality of your broods. Besides, you muse, you can always make more eggs. Equally fascinated, Ava paws at your slowly shrinking middle, encouraglying saying, 'Hopefully some of this sticks. I want us to have a big family one day.' Chuckling, you tell her that you don't mind that. Maybe it's the nanites messing with your mind, but the prospect of being the mother of a race of Margay Taurs with Ava has a unique appeal to it. You can almost picture it now; you and her lounging on a padded throne, your bodies permanently swollen with life. Your every want and need attended to by a perpetually growing horde of loyal daughters. Still, even if you never have another litter, just getting to enjoy the afterglow with her is an experience of a lifetime, you remark, nuzzling your chin against her uppermost breasts. 'Ya, I guess you're right. This is nice,' Ava replies, kissing you on the nose while she rubs the tufts of your ears.";
	say "     Purring contentedly, you return the sentiment, lightly massaging Ava creaking tummy tissue as she rubs your own while you wait to return to a normal size. Even your little one seems to join in as their tiny paws dance along the surface of your taut pelt in a sudden flurry of activity. Sometime later, though you were never keeping track of time, your broods have settled and your bodies have returned to a more manageable state, albeit with a bit more baby weight. Not that either of you complain as you disentangle yourself, the sooner one litter arrives the quicker you can get started on the next one. A part of you wishes though you could stay like this forever. A sentiment Ava returns wholeheartedly as give you a kiss on the forehead saying. 'I hope you can come back soon and meet the girls.'";
	NPCSexAftermath Player receives "PussyFuck" from Ava;
	NPCSexAftermath Ava receives "PussyFuck" from Player;
	decrease gestation of child by a random number from 5 to 10;
	if gestation of child < 1, now gestation of Child is 1;
	if Libido of Ava > 25:
		increase Libido of Ava by 1;

to say Avasex6:
	if Libido of Ava is 0:
		say "     In the mood for some simple lovings with your cuddly mate, you saunter up beside her, brushing your hands along her soft silky pelt. You ask if she'd be interested in a bit of mutual fun together. 'Oh, I was hoping you'd say that, I've been feeling so empty lately,' Ava purrs, her fur quivering ever-so-slightly at your touch as she wraps her tail about your waist and nods towards her futon. Shaking your head, you almost regretfully inform your eager kitten, you were in the mood for something, you pause to lick your chops, else. 'Aw, ok,' Ava pouts dejectedly as she flattens her ear and loosen her tail's hold on you, 'but promise me you won't leave me like this too long,' she adds, giving her tummy a light inviting rub with her tendrils. 'I feel so empty without your kittens.' Of course, but there's nothing wrong with taking a little break from time to time, you tease, as you lean in, placing your hand atop her coiled glossy tendrils. You give her extra appendages a well-meaning and reassuring squeeze.";
		say "     'I guess...' she huffs, somewhat indignantly, but you know it's just for show, and you can't say you blame her. On some level, you know her tauric form craves that wonderful rush only a big belly full of kittens can bring, and how cruel it is to deny her that transcendental joy. Still, there may come a day when the two of you may need to slow down, so best Ava learn a bit of self control now, then when you're out in the [']real world['] and are dealing with all the hassle it brings. You ruminate, taking her by the paw and guiding her over to bed. You direct Ava to lay on her side, so you can attend to her. Mumbling something under her breath, Ava complies, albeit almost reluctantly, as she eases her voluptuous frame onto the oversized ad-hoc mattress. Despite her reticence, you can't help but delight at the sight of her heavy dugs lazing along the gleaming white sheet and the cute desperate scent hanging in the air as she fans her tail imploringly about the lips of her [one of]seemingly bottomless[or]canyon-like[or]cavernous[or]expansive[or]elephantine[or]titanic[or]person-swallowing[at random] sex.";
		WaitLineBreak;
		say "     'Are you sure you don't want to breed me instead? I promise I'll take extra special good care of them!' she whines needily, tucking her forepaws to her bestial sternum while her tendrils rove her vacant wombs, eagerly massaging and coddling her supple white, gold, and back spotted pelt. Tutting, you reiterate your decision, telling her as tempting as her offer is sometimes you just want to enjoy a little classical fun. Besides, the two of you can have plenty of fun just like this, you titter seating yourself next to her. 'I know, but it won't be the same,' your spoiled kitten grumbles in a plaintive tone, roughly plunking her head down on the mattress with an audible thud. Oh don't be that way, you tease, draping your arms over her un-seeded feral middle. You lovingly glide your palms along the bountiful hill and valleys of her bestial breasts, indulging the tactile bliss of her satin fur playing across your [SkinName of Player] palms and adorable low sloshing sound of her cream wallowing within. 'But, I miss the kittens...' Ava pouts, dejectedly hugging her empty anthro tummy in her arms.";
		say "     Well, if that's the case, you know what might perk her up, you proffer, nuzzling your [HeadName of Player] face adjacent to her lowermost row of feral milk tanks. Your elated senses are greeted by Ava's sweet calming alpine scent as you playfully knead her ripe M-cups, coaxing a light little trickle of her cream from her lush catty teats. Your digits glide through her plush fur while you gently brush her cheeks against her maternal mounds, kissing and lapping at the rivulets of transformative delight streaming down her fur. 'Mh such a hungry kitten,' she murmurs, her tendrils drift along your [bodydesc of Player] form as pulls you close. A very hungry kitten, you purr over the low rumble of your stomach, circling your elated soft palate about her flush dugs and perky tits. 'Mh yes kitty is so small, she needs to be bigger though, much bigger,' Ava babbles enthusiastically, her supernaturally smooth tendrils roil about your [BodyName of player] being as she guilds your head to her leaky cream spout.";
		WaitLineBreak;
		say "     Acquiescing to her loving yet assertive touch, you cup your lips to her pleasantly puffy nip, diligently exploring and caressing her stiff perky teat, as you lavish the sensitive flesh with well-practiced strokes of your oral muscle. Rumbling happily, Ava's motherly form is quick to react to your gluttonous ministrations; her taut milk tanks loose a rich thick of fatty cream across your receptive taste buds. Your cheeks puff ever-so-slightly with excess, yet your growing catty instincts are more than accustomed to such fare as you swallow each delectable drop of nutritious cream. A sensation of profound internal warmth builds in your core as Ava's enhanced nanites surge through you, scourging any memory of the lesser vile strains that have dared pollute your tauric splendor. Your hearty suckles are punctuated with a potent thrum of eldritch bestial power as her Margay Taur nature makes its presence known, your limbs crackling with energy as the comforting softness of your true form creeps over. You can't resist running your padded paws over the protective adipose swaddling your being[if Player is impreg_now] and your future little ones[end if], as the cuddly coat of white, gold and black spotted fur coddling your ripening [Breast Size desc of player] tits bristles with renewed purpose.";
		say "     Yet a distant bestial fragment of your tainted psyche wants, no, [italic type]needs[roman type] to be bigger as your tentacles writhe about your swelling chests like they have minds of their own. The sleek glassy appendages massage and grope your budding breasts almost as if they could encourage their bountiful growth. Your paws explore the pillowy tallow spreading across your tauric assets like a balmy blanket being wrapped about you. Another time, you might have found its presence off putting, some segment of your nanite-addled mind finds the lush layer of pudge unerringly soothing and inviting to the touch. A sentiment Ava seems to share as her paw joins yours, in the exaltation of the bacchanal bliss encompassing you. 'Good quaggy kitty, you're getting so plush and cuddly,' she susurrates in a proud motherly tenor as your burgeoning body presses against hers. Ava's tentacles roil about you, diligently pampering you fertile curves and tender tum as you feed. You dimly sense the sudden yet not wholly unbidden growth spurt plateau, with it your hunger recedes, and a mote of carnal clarity flash across the tainted lattice of your mind as shift your attention from you lovely mate's plush feline flower.";
		WaitLineBreak;
		say "     Nuzzling your boxy muzzle along her inner thigh, you feel a pleasant shiver pass through your larger lover as your lusty breath caresses her tender folds. Already dripping with lucid beads of glistening girl honey, Ava's receptive sex practically blushes a hot pink at the merest hint of your affections. As you teasingly cup your catty maw to her silken sex, your thin lips effortlessly encompassing her moist syrupy petals and throbbing inverse button in their lustful embrace, and you languidly trace your velvety barbed tongue about her dripping hood. Delighting internally at the interplay of sweet dew and rich lingering balm of her milk serenading your far-traveled palate in a heady whorl of beautiful piquancy. 'Ah such a frisky kitty,' Ava gasps in an all-too-pleased treble as your exotic oral muscle circles her tender flower like a pair of binary stars. With each lustful pass, you slip another cheeky "; [Author's note: the phrase 'binary stars' was once going to be cannibal stars but it sounded way too metal for this piece.]
		if "Touched by Madness" is listed in feats of Player:
			say "centimeter ";
		else:
			say "inch ";
		say "of your tongue betwixt her lush lady lips. You exert a bit more of your growing mastery of your catty form as you shift the supple spines lining your oral muscle in a vibrant ballet of saturnalian sensations.";
		say "     Titillating your beloved mate's sopping muff in a orgiastic display of affection as your tongue parts Ava's lustful petals, her plush walls hug and caress with verdant rhythm all there as Ava mews happily at your caring treatment. She eases her titanic frame against your fertile flanks rumbling, 'Mh, my sweet caring mate,' as she traces along the colorful borders of your pelt with her talons. Far from off putting, sparks of dissonant pleasure dance along you sensitive elastic flesh as the disparate delights of her hard sleek claws and doughy body war for your attention. You can't help but purr at her bestial ministration as she snakes her bendy upper body next to your [Cunt Size desc of Player] catty sex, and the cosset of her whiskers brushing your voluptuous inner thighs as she lovingly tucks her animalist maw between your rear legs. You have to suppress a giggle at the fuzzy touch of her chin and the warm lascivious breath misting your blushing cunt.";
		WaitLineBreak;
		say "     Your playful kitten wastes no time on proper foreplay, as she jovially laps at your tauric muff with long drawn out sloppy licks. What she lacks in skill, she more than makes up for with her enthusiastic pace, and the unsubtle caress of her glossy spines moiling your [Cunt Size desc of Player] cunt only fuels your desire to please your mate. Both sets of your many exotic limbs roam her bountiful form, groping and fondling her regal silky fur and plush rows of decadent breasts. You wallow in the perverse pleasure of her well-bred walls desperately clenching about your tongue as if her over-loved muscle could somehow cum. Your doting mate's own purr soon joins you as their deep bassy resonance echoes throughout the room, filling the air with the sounds of feline arousal and the low slurping thrum of your mutual affections. These loving trills vibrate through your entwined forms, adding to the tender bliss gamboling the fresh virgin nerves lacing your expansive folds.";
		say "     Its raw unsullied rapture pairs like the finest of intoxicants with each probing flick of Ava's impressive oral muscle as she parts your elated lips with an enthralling thrust of her titanic tongue. Her beatific barbs flex and shift almost as if they were caught in your body's erotic gravity, seemingly drifting to your bestial cunt's most desperate of depths. Their ever changing texture elicits new highs of sweet carnal bliss as your tauric walls clench and roil about her cunning [']tool[']. An all-too-familiar feeling of tightness and anticipation wells in your core as your tongue maniacally caresses Ava's lush passage, dipping your supple spines about her stiffening button. Your exotic additions gracefully glide about her satin clitty hood in a chaotic waltz of animalist affections. Ava's sizable joybuzzer throbs with resoundant passionate pulses along your soft palate, as you dotingly wrap her catty button in the bestial folds of your tongue as you lovingly dandle her tauric sex.";
		WaitLinebreak;
		say "     Ava's purr reaches a fevered pitch, her toasty lust-flushed muff rollicks wildly at your touch. Her tendrils coil around your expansive rows of fuzzy breasts tweaking your perky nips and groping the freshly-enhanced glands in their glossy embrace. Your tainted mind struggles to parse the barrage of bliss simmering through you like some feverish ethereal dream. You feel as if you're caught in the squall of a warm primeval sea as each new wave of desire crashes over you till the rising passionate tension in your core breaks as your spasming sex cums. Relief laced with the purest of release cascades through you, as your juicy well-loved cunt bastes your all-too-receptive palate in a generous sheen of taur honey. Smacking her lips happily at your dewy gift, you can feel convulsion pass through your mate's cuddly form as her exotic nerves fire like an overloaded switchboard as her own explosive climax surges through her. Her cunt shivers with the force of her release as your catty maw is treated to a sugary mouthwatering gush of girl juices.";
		say "     Salivating at the delectably hot treat tantalizing your tastebuds, you eagerly lap up any errant droplets that would dare mar you precious mate's pelt. '*Rar*, that feels nice, mh I must have the best mate in the world,' Ava rumbles dreamily as she returns the tender gesture, diligently pampering your still throbbing cunt and pleasure-wracked thighs with a supple kiss of her feline tongue, evoking the deepest of purrs from your catty being as her whiskers and satin fur glide about your lower half. The minutes pass slowly, but unerringly pleasantly, as the pair of you attend to your mirrored bodies till your pelts shimmer warm polished metal. Chuffing contentedly at the sight of a job well done, you yawn and roll on your back, resting your paws on the cute little swell of your well-fed tum. As you gently massage the sloshing mass of milk and honey, Ava snuggle up beside and wraps her many limbs about you, humming, 'Is my fluffy kitty sleepy?'";
		WaitLineBreak;
		say "     Mewing in the affirmative, you nuzzle your chin along her downy breasts. A nice meal and a good bit of fun tends to do that to a person, you snicker, giving your tummy a jocose pat. 'Well, if you like, we can stay like this for a bit, and I can rub your tummy for you while you digest?' Ava simpers, running her glossy paws along the cute swell of your paunch. Swooning, you inform her that does sound rather heavenly as you nestle your muzzle along the pillowy curves of her furry M-cup breasts. The weight of the world seems to melt away as you sink into the soft purring embrace of your diligent lover while her paws and tendrils pamper your pelt. Lying in Ava's arm, you feel as if her sweet little tenor and her gentle caress are like a soapstone for a soul, slowly polishing away all the hardness of the road and weariness of the world.";
		say "     Sadly though, you begin to feel that ever-present pull of the city and wider world tugging you away from your mate. Much as you may like to stay with her, you can't, at least not yet. There are things you have to see, people you need to save, tasks that must be finished, you tell yourself as you, almost regretfully, begin disentangling yourself from your lover's caring hold. For a moment though, Ava looks like she wants to protest this, but keeps her peace, mewling in a sad yet understanding tone, 'It's alright,' as she rubs her chin along your head, 'just come back soon, and be safe ok? If not for me, then the kittens, I don't want them to lose you...' Nodding, you pull yourself and hug her with every fiber of your being, telling her you will. It may take awhile, but you'll be back.";
		PlayerEat 15;
		PlayerDrink 15;
		NPCSexAftermath Player receives "PussyOral" from Ava;
		NPCSexAftermath Ava receives "PussyOral" from Player;
		turn the Player into a "Margay Taur";
		choose a row with Name of "Margay Taur" in Table of Random Critters;
		if scalevalue of Player > 5:
			now scalevalue of Player is 5;
		if Breast size of player < 26:
			increase Breast Size of Player by 1;
		if Nipple Count of Player < 12:
			increase nipple count of Player by 1;
		increase Cunt Depth of Player by 1;
	else if Libido of Ava >= 1 and Player is impreg_now: [Note: I misspelled terrific as 'Taurific' on purpose because bad puns are fun!]
		say "     Drinking in the sight of your gravid lover's maternal glow, you strut up beside her and casually brush your well-seeded tum against hers, asking if she feels up to having some mutual fun together. 'Of course my sweet mate,' Ava swoons, wrapping her tail about your waist, shamelessly brushing her ovi limb along the growing curves of your middle. Snickering, you lightly trace your fingertips along the silky fur coating her exotic slit, informing her with a happy smack of your chops you were thinking of trying something else. 'But, I like using my tail,' she rumbles in a low deflated tone. Now-now you tell her, running your hands along the shared border of your packed middles, you want to enjoy a bit more time with your current litters. 'Well, when you put it like that, I won't mind spending a little time with them too. Besides, I bet you and the girls have worked up quite the appetite out there,' she coos, draping her paw over yours as she lovingly massages her kittens slumbering forms.";
		say "     Nodding, you lean into her touch, gushing internally at the sensation of her glossy pads and satin fur gliding over your tender tum. You can feel your little ones stir ever-so-slightly at Ava's caress and the sweetly musical tenor of her voice. 'Daw, I felt that! Do you think they heard me?' she rumbles, tracing her pointer claw about the outline of one of their tiny paws. Either that or they're hungry, you pant in dissonant delight at your catty mate's smooth sickled talons and pillowy pads braising your taut [SkinName of Player] hide. 'Oh we can't have that, not when I have so much milk to share, and you all have so much growing to do,' Ava chuffs rather proudly, her tendrils entwining among her rows of [if Libido of Ava > 1 and Libido of Ava < 12]hefty P-cup[end if][if Libido of Ava >= 12]monumental T-cup[end if] breasts in a lavish spiral as her exotic limbs enticingly dandle about her ripe milky chest. You watch as beads of the purest alabaster drip from her plump breasts as her appendages snake their way through her lush glowing fur. A low hungry rumble simmers across the growing pit in your stomach.";
		WaitLineBreak;
		say "     'Tee-hee, I felt that too,' Ava titters in a jovial matronly tone as her hands drift along the sweet [bodydesc of Player] curves of your tum and down to your waist. 'Is my kitty hungry?' she teases, her tail swishing behind her in an eager tattoo as the heady scent of catty arousal billows around the edge of your senses. Smirking, you tell her very much so, and bob your head in direct of her bed. 'Good, cause I love what my milk does to my fluffy little mate, and I'm glad you do too,' Ava swoons as she lightly tugs on your hips and gently guides you over to her expansive sleeping spot. Your adorable co-mother makes a show of languidly draping her impressive, cuddly, gravid body along the length of her oversized bed. Reveling in the weight of her plush maternal curves and the inviting jiggle of plush breasts, Ava runs her forepaw over her taut feral core, mewing, 'Mh, just look how big and heavy your kittens are getting,' as her enhanced assets laze over the support surface of mattresses in a cute swell of maternal purpose.";
		say "     Almost blushing at the sight, you quickly cuddle beside her, laying your head adjacent to her rear legs and reach out to lovingly pat her flush flanks, telling her that that's not all of her that's gotten big and heavy as your digit slips between the warm folds of her feline thighs. You swoon at the sensation of her lustrous fur caressing your elated palms as you lustfully fondle her well-padded legs and the taut swell of her satin-wrapped dugs as you direct her to roll over slightly. 'Of course, my lovely kitty,' she rumbles, in a deep-seeded trill, flashing you a toothy Cheshire grin as she lifts her leg and seats herself on her side. An entrancing wobble passes through her white, gold, and black spotted form as the heady perfume of her native alpine scent cut with the enthralling aroma of catty lust swirls about as you catch sight of her [if Libido of Ava > 1 and Libido of Ava < 12]pregnancy-plumped snatch[else if Libido of Ava > 12]flush camel toe[end if] glistening with needy drops of her feminine dew, nestled beside her rearmost feral breasts.";
		WaitLineBreak;
		say "     Enamored at the sight, you gleefully tuck your [HeadName of Player] face against her voluptuous thigh, remarking internally at the wondrous nature of her cushy pelt coddling your cheeks. You tenderly press your lips to the edge of her prodigious nips, letting your warm breath dance along the blissful peaks of her teats. '*Tee-hee* that tickles,' Ava giggles, her tendrils playfully roving over your [BodyName of Player] body as the deceptively powerful limbs pull you closer with an assertive yet altogether gentle and loving tug. Surrendering to her touch, you coyly trace your tongue along one of her stiffening teats, eliciting an adorable little shiver from the sensitive cat girl as her motherly form eagerly responds to your hungry touch. Your far-traveled palate is graced by pleasantly toasty rivulets of fatty cream cascading down her verdant mound in a vivacious sheen of excess. Unwilling to let even a drop go to waste, you diligently lap at her pearly offering, mentally basking at the sweet rich flavor cavorting along your [HeadName of Player] taste buds.";
		say "     Your oral muscle spirals about her erect milk spouts, languidly slurping at the bountiful rivers of her beatific cream, before cupping your mouth to her cuddly dugs. You devotedly suckle from the heavyset kitten's lascivious bestial chest, eager not just to experience the dithyrambic transformative effects of her cream, but to provide for your own cubs as well. As a rich spurt of mutagenic milk coats the exultant surface of your muzzle, you feel your latent Margay Taur nanites whorl to life with each doting swallow. You find yourself purring with unnatural anticipation at the decadent spray of fresh lactate as you press your rapidly warping face against the taut surface of her animalistic milk spouts. Enraptured both by her alluring aroma and the tactile bliss of her flush tits brushing your cheeks and the surface of your dominant hand as your playful knead the plush cat taur's engorged milkers, your free digits sink into the glowing oceanic swell of her fur as you exalt in your cuddly mate's delightfully seeded core.";
		WaitLineBreak;
		say "     'My frisky mate, I didn't know you were so hungry,' Ava coos, encouragingly stroking her forepaws along the length of your head and back. Mewling happily, you rumble between swallows that it is so hard to resist and her mother's milk tastes so good, you just can't help yourself. Besides, you love what it does to you anyway, you purr, sensing your nanites activating fully. A warm sensation of peerless softness roils though your body, wiping away any lingering taint that the city, along with its lowly inhabitants, dared to inflict upon your true form. Your body grows larger and more powerful by the second as a baleful energy wrapped in downy plushness crackles through you, not just restoring, but enhancing your lovely form. Running your paws through your vibrant pelt and adipose laden core, you find its tender presence both intoxicating to touch as your body shifts closer to becoming the perfect cuddly mommy taur, and unerringly comforting to you.";
		say "     Idly flexing your tendrils, you grope a pawful of protective adipose in their glossy embrace, feeling a sense of smug satisfaction at the knowledge that the sumptuous layer of pudge spreading over your assets will keep your brood safe and fed. You lightly comb your talons through Ava's pelt as your swelling [breast size desc of Player] milk tanks press against hers. Basking at the sensation of your ripe taut nerves and voluminous fur warring for space almost sends shivers down your elongated spine as the brief period of blissful transformation seems to have run its course. Though somewhat saddened that your changes have plateaued, a part of you revels in the effects as your gaze languidly drift up the vague outline of her animalistic treasure trail to her [if Libido of Ava > 1 and Libido of Ava < 12]ponderously endowed P-cup[else if Libido of Ava > 12]impressively large T-cup[end if] dugs to her lush [if Libido of Ava > 1 and Libido of Ava < 12]puffy cunt[else if Libido of Ava > 12]lust-pumped labia[end if]. Your altered palate craves the supernatural sweetness of her lovely honey; along with the chance to enjoy some much needed mommy time with your lover, you think to yourself as you loosen your lip's hold on Ava's boundless milk spout, prompting a needy shudder and whine from your mate as the cool cruel air nips at her teat.";
		WaitLineBreak;
		say "     'Aw, is kitty full?' she teases, dotingly fondling her glassy-smooth padded murder-mittens along your cute curvaceous core in a sweet soothing circuit. Rumbling happily at the sensation of her paws caressing your tender tum, you reply that, no, you're just moving on to the main course, as you coyly lap at her inverse button. 'Ooohhhh naughty kitten, that feels so so [italic type]*Rar*[roman type],' Ava purrs in deep, lustful, petering trill, at the kiss of your fleshy spines roiling the dewy folds of her catty hood. You levy your budding control over your beastly form, flexing and vibrating your fleshy barbs about her labial depths in an exotic coital dance of loving affection. The impossibly sweet sapid tang of honey proliferates through your feline palate with every caring lap of your oral muscle. Diligently pampering her plush sex, you draw out each motion as your tongue slips between her plump lips. Leisurely indulging your senses in the sensuous spasm of Ava's satin walls and her cute desperate pants as the well-seeded cat taur writhes in the embrace of your exotic limbs.";
		say "     Your own [Cunt Size desc of Player] muff soon cries out for attention too, as sparks of animalistic joy dance across your [one of]plump[or]tubby[or]fat[or]voluptuous[or]chubby[or]cuddly[or]huggable[at random] body. You waggle your fertile flank before her, trying to signal your need to your larger lover, yet the poor mewing blissed-out kitten seems to be too lost in her own personal elysium. She gleefully basks in your treatment of her cunny, and her own exaltation of your enhanced figure as her paws and tendrils roam your maternal mounds. No matter, your cunning catty mind knows just what to do, you ruminate between hearty flicks of your morphic tongue as you cheekily coil your ovi tail about Ava's throat akin to a living fuzzy collar. Infatuated by the earthly pleasure of your aberrant ovi muscles lining your potent appendage roiling about her Eve's orange as the heavenly samba of her pulse thrums against the soft tissue, you give her neck an affectionate tug.";
		WaitLineBreak;
		say "     'Huh?' she susurrates in a dreamy distant tone at the touch of your tail tip gracing her chin and the wafting scent of pseudo-tail cunt beguiling her senses. 'Oh,' she chuffs, her tenor deep and bassy like the echoes of a proud Mane's challenge as you pull her close. You shudder at the balmy wisps of her warm libidinous breath playing across your faux-lips as Ava's awareness is drawn to your catty box. You can feel her nuzzle her flexible anthro half against your beastly nether's as she engulfs your sopping [Cunt Size desc of Player] sex in her maw's vivacious embrace. Decadent heat floods your elated sex as your convivial mate's fangs glide along the edges of your muff; her sizable oral muscle flickering about your feral petals in a disparate emulsion of desire. Ava's beatific barbs coil along the lust-pumped swell of your catty button, her every motion evoking raw gushes of need from your sordid sex as she worships your folds. The loving attention adds the purest of fuels to your own performance.";
		say "     As you trace your talons along the velvety fur lining her inner thighs, you allow her spasming hungry cunt to draw your snout in like a cheap sex toy. 'Dear sweet MOMMY!' Ava cries as her pliable walls effortlessly stretch to accommodate your sizable maw; your muzzled senses are inundated with her libidinous scent. You find yourself purring loudly and passionate at the unsubtle caress of her breeder's box convulsing about your rhapsodic snoot. The unerringly sweet piquancy of her fem-honey, alongside the adorable bulge of her maw-stuffed cunt mixes with peerless innervation of your muff and loving caress of Ava's dexterous limbs roaming your tender form in a ponderous waltz of tactile delights. Her own catty trill joins yours in a symphony of feminine feline need punctuated by low, sensual, slothing of your milky forms rifling against one another. An all-too-familiar, though not unbidden, sense of tightness builds along the supple barbs of your tongue as the lurid muscle explores the verdant depths of you mate's lustful canal.";
		WaitLineBreak;
		say "     Your every flick and worshipful kiss is guided by your ever-expanding knowledge of your shared forms; instincts takes over, as the feverish desire to please your lover drowns out any lingering petty human concerns for technique or decorum. As you piston your sizable catty tongue about her stain box, the malleable barbs coating your cunning tongue dance an impossible waltz along her needy cunt. Ava cups her own oral muscle about your enraptured clitty, eagerly nursing the raw stiffening joy buzzer with an animalistic alacrity all of her own. Your vision clouds and narrows as if you were viewing the world through a pin-prick in the void, as this wellspring of desire roils within you to a near unbearable degree. Bestial lust crackles and builds within like the swell of some tropical squall, then breaks in a serene torrent of relief as you finish, cumming a tastful sheen of dew into Ava's yearning muzzle. Mewling happily at your gift, the sweet not-so-little kitten gleefully swallows every molten dollop of dewy delight, murmuring formless un-words of animalistic gratitude between pleased smacks of her lips as your delectable flavor and erotic spasm of your cunny sends her too over the edge.";
		say "     Her cunt roils and convulses about your well-loved snout as if it could somehow coax a litter from it as Ava's expansive sex gushes a welcomed flood of syrupy honey across your receptive palate. Not to be out done by your co-mother's loving minstations, you joyfully sup down every tasty drop, ensuring none goes to waste, or mars her fur. '*Gasp* such a hungry mate,' Ava shudders in doting trill, as you extricate your glistening muzzle with lewd pop from her blushing pink muff. Chuffing, you roll on your back, resting your palms on the warm effervescent mass stretching your already packed middles into towering twin domes of fecund excess. You tell her that it is hard not to, especially when her milk is so yummy and it's going to a noble cause too. 'Aw, what a caring mommy,' your flushed playmate simpers as she crawls up beside you, resting her dewy muzzle next to your dominant shoulder. 'I bet the kittens will appreciate all you're doing for them,' Ava swoons, enswathing her paws over your wobbling mounds, drumming her padded digit along the taut curves of your well-bred core.";
		WaitLineBreak;
		say "     Nodding, you demurely rub your paws over the slumbering form of your little ones, informing her that you hope so. It's not like you aren't getting something out of this too, you purr, fondling the downy adipose swaddling your gravid frame. You've rarely felt so full or content as you do right now. 'And you look so cute too!' Ava gushes, propping herself up with one arm gazing hungrily at your [one of]plump[or]tubby[or]fat[or]voluptuous[or]chubby[or]cuddly[or]huggable[at random] body as she runs her massive mitts over your radiant fur. 'Your pelt is just so shiny and soft, I don't know how you keep your hands off all this!' Chuckling, you reply that she shouldn't sell herself short, as you reach out and brush your hand along the inviting curve of her lush figure, inducing a dreamy sigh from your larger lover as you ebulliently trace your claws between the colorful borders of her pelt. Besides, you add, with a theatrical flourish of your tendrils, bodies like yours are meant to be shared with the people you love.";
		say "     'That's so sweet,' Ava mews in an earnest trill, easing her Rubenesque being back next to you. Your affectionate mate lightly rests her chin on your shoulder, as she drapes her massive forelimbs over you. 'I'm so glad the kittens are going to have people like you and daddy in their lives,' Ava rumbles in a nearly inaudible whisper, as she rubs her pillowy pads through your fur. 'Just take care out there, I don't ever want any of them to go through what I did.' Tutting, you tuck your arm under head, gently stroking the tips of her ears telling her that you will. 'Thanks [Name of Player],' she purrs as she leans in, giving you a soft peck on the nose. Smiling you return the gesture, as the world around you two falls into a peaceful silence, you simply bask in the warm afterglow of your shared affection broken only by the briefly little rumble of your stomachs or the subtle wisp of the breeze wiping around the garage door.";
		WaitLineBreak;
		say "     Eventually, you begin to feel the nagging call of the city, and its lesser inhabitants, nipping at the back of your mind. Though a part of you wants to ignore it and lay here swaddled in your mate's embrace for just a moment longer, you know that you can't, at least not yet. There are things you must do, people that need your help, and a whole weirdly flexible world for you to explore and share with your little ones. Still, such knowledge does little to ease pangs of your parting, you muse, gazing at your beautiful mate cuddled up next you. Perhaps sensing this, Ava flashes you a brave smile as she presses her gravid middle against yours, saying in a reassuring tone, 'It's ok, I know you can't stay too long, but don't worry, the kittens and I will be here when you get back.' Nodding, you hug her one last time, eager to wallow just a moment in your growing family presence before you set off, feeling full, content, and just the right amount of sticky between the knees.";
		PlayerEat 15;
		PlayerDrink 15;
		NPCSexAftermath Player receives "PussyOral" from Ava;
		NPCSexAftermath Ava receives "PussyOral" from Player;
		turn the Player into a "Margay Taur";
		choose a row with Name of "Margay Taur" in Table of Random Critters;
		if scalevalue of Player > 5:
			now scalevalue of Player is 5;
		if Breast size of player < 26:
			increase Breast Size of Player by 1;
		if Nipple Count of Player < 12:
			increase nipple count of Player by 1;
		increase Cunt Depth of Player by 1;
	else if Libido of Ava >= 1 and Player is impreg_able:
		say "     Savoring the sensual sight of your mate's [if Libido of Ava > 1 and Libido of Ava < 12]cute little baby bumps[else if Libido of Ava > 12]verdant ripe tums[end if], you sashay up to her, inquiring in a playful coy tone if she might be interested in little, oral exchange. 'A wha?' Ava stammers, confusion written on her lovely muzzle as she tilts her head at a perplexed angle. Smirking at her lightly flustered expression, you teasingly trace your [bodyname of Player] fingers along the growing fuzzy curves of her maternal mound, and motion to her futon with a languid flutter of your eye lashes. 'Uh... oh,' she mews, as your digits dance about the voluptuous satin curves of her milk flushed breasts. 'We can but, wouldn't you rather use my tail instead? It doesn't feel right to keep all this,' she pauses and coils her tendrils about the heavenly mass of your brood. Her exotic glossy limbs invitingly snake their way through the border of her spotted fur, pampering the sweet not-so-little swell of her anthro tum in their tempestuous embrace, 'to myself. It would be a shame to not share this with you, especially after all you've done to make this possible.'";
		say "     Not wanting to hurt her feelings, you tut goodnaturedly at your overeager breeder, and feed her an innocent white lie about having to face some great challenge or nebulous existential peril in the immediate future. Though you're sure you emerge victorious, you nevertheless wouldn't want to risk any harm coming to her cubs during the coming trials. 'I guess that makes sense,' Ava pouts, her ears flattening along the sides of her feline head at the thought, 'Daddy does such a good job keeping the Last Chance safe, sometimes I forget how dangerous the city can be. Is there anything I can do to help?' she asks in a sheepish yet hopefully tenor. Nodding, you wrap your arm about her waist to the best of your form's abilities, you pull yourself close, telling her in a proud, confident tone that you'll be fine. However, you add, nuzzling your cheeks along the border of her taut tauric tummy and heavily swollen teats, rollicking in her material scent and the light caress of her fur, you wouldn't mind a little drink and maybe a chance to spend some time with her and your kittens.";
		WaitLineBreak;
		say "     'Oh, of course, the cubs love it whenever you come by, and I know they miss having you around too,' Ava snickers, resting her paw over the plush [']roof['] of her well-seeded tum as she lightly pets her glowing pelt, 'they always seem to get super excited just before you arrive.' Positively beaming with maternal joy, you reach up and place your comparatively tiny mitts over hers. You squeeze her paw, telling your lovely mate how sweet that sounds as you lead her over to her bed. Your big fluffy kitten makes a show of easing herself to the ground with a purposely slowness that exaggerates her condition. You take with no small amount of pride at the cute little wobble of her gravid assets swaying in sync with her step. While her tendril supportively rover her lush cuddly figure like fishnet bodysuit as spreads her massive form over the ad-hoc sleeping spot.";
		say "     'Now come here my hungry little mate,' your catty partner mews invitingly [if Libido of Ava > 1 and Libido of Ava < 12]as she rests the decadent petite swell of her feral core along the pristine alabaster sheet. A part of you can't help but delight at the pleasing tight and shapely curves of your motherly kitten's gravid middle, as their coddled by her array of plush P-cups[else if Libido of Ava > 12]as her delectably swollen core lazes along the padded surface of her bedding in decadent dome of excess. Her heavily engorged core can barely even maintain in perky disposition as her inhumanly large brood-bloated belly wars for space with her inhumanly huge T-cups. Some section of your tainted mind can almost hear the gallons of rich cream and amniotic fluid sloshing within her as her every breath sends the most adorable of ripple through her well-seed form[end if]. Rumbling happily at her offer, you plop down beside her hindlegs, effusively praising her fecundity as you run your palms along the tender hills and valley of her expectant form. 'Ah thanks, I love what your kitten have done to me, everything feels so new and tender,' Ava gushes, as a pair of her back-mounted tentacles entwine her rearmost milk spouts.";
		WaitLineBreak;
		say "     'Mommy even says my milk tastes better than ever!' she purrs with a haughty proud trill as she teasingly lifts her hindleg, revealing her glistening pink nether lips. The unsubtle aroma of catty need interlaced with her soothing alpine scent shimmers about your senses like a tempting serpent, as you tuck your head between the white, gold, and black spotted arches of her inner thighs. You remark on the beautiful glow and the tender softness of her pelt while easing your face next to her bountiful milk spout. Flushed with delectable cream and bountiful purpose, her perky nips look like peach diamonds as your lustful breath plays upon their hardened peaks. '*Tee-hee* that tickles', Ava rumbles, as her airy and serene scent, like the first, hints of a long awaited rainstorm passing over the sierras wafts over you. What a sensitive kitten, you tease observing the tiniest beads for pearly perfection dripping unbidden from nips. Unwilling to let your mate's bounty go to waste, you lovingly lap at the tantalizing dollops of transformative delight, every brush of your [BodyName of Player] elicits a needy shiver from your lush lover.";
		say "     Some section of you altered psyche revels in the power such a simple gesture has upon her as your elated muscle waltzes about her robust dugs. Her desperate mewls grow all the more potent as she whines for more and paws encouragingly at the back of your head. Tittering internally, you playfully trace your hands along the beatific curves of her feral breasts and whisper just on the edge of her hearing, of course. As you cup your lips to her to almost painfully erect teat, you barely need to apply even the smallest modicum of suction for Ava's brood swollen tits to express a steam of bountiful cream. Purring happily, your palate is graced by a warm fatty stream of her motherly milk. Though your cheeks bulge with the wondrous weight of her offering, the growing gluttonous nature of your latent infection won't let a single drop escape as you swallow each ambrosial gush of catty delight with unnatural alacrity.";
		WaitLineBreak;
		say "     'Mh, my poor mate I didn't know you were so hungry,' Ava coos, in a sing-song trill as tentacles coil around, lovingly groping and fondly your smaller frame as you feed. You can sense the fresh rush of potent nanites coursing through you as a sense of unerring softness laced with a vibrant thrum of eldritch warmth shimmers about your being. As your body grows larger and more powerful by the moment, any remaining weak puny stain that dared to defile your true form sizzles away in the almost overpowering heat of your change. Far from off-putting, the chaotic energies swirling through you are like the finest of intoxicants to your altered mind as you flex your talons free for their housing and lovingly comb their scalpel-like edges though the voluminous fur of your mate's burgeoning middle. Earning you a muffled coo from your mate, as new unsullied nerves wink into existence like the gleaming radiance of freshly formed stars as your body flows into its proper chesty tauric shape.";
		say "     Entranced, you ravenously press your shifting face against your diligent feeder's boundless milk tanks, while your free paws are drawn to your vivacious curves like stellar bodies trapped in the pull of your own erotic gravity as you gleefully caress the billowing fur and tender adipose creeping over assets. Even your [Cunt Size desc of Player] tauric tunnel appears to swell with untold ";
		if "Touched by Madness" is listed in feats of Player:
			say "centimeters ";
		else:
			say "inches ";
		say "of virgin flesh as your tummies puff out just a hair further to accommodate these heady additions. Perhaps, at another point in your life, you might have resented this extra mass, now though, you relish the hellaciously supple tallow swaddling your body in its protective embrace. But now, you just want [italic type]more[roman type], some twisted fragment of your liminal mind cries as you desperately knead Ava's plush milk tanks trying to coax more blissful change from her, and you are not left wanting.";
		WaitLineBreak;
		say "     Her tender melons, likely sensing an eager kitten or receptive soul, seem to adapt to your appetite. The raw, nearly overpowering, gush of ichorous cream slowly winnows away to a tranquil manageable stream of opalescent opulence. Dancing between the fleshy barbs of your elated palate, her tendrils blithesomely lavish your shifting form in their glassy embrace, pampering your voluminous fur and expensive assets in their exotic coils. 'Oh dear sweet Mommy you're getting so big, I bet the kittens are going to love nursing from you!' Ava croons as she gropes a paw of your pillowy tit flesh, casting decadent furrows in your pelt as her talons glide along the sensitive elastic tissue. Swooning at the mere mention of the word and the heady predatory thrill of her razor edges skimming your vulnerable body, your growing maternal side can't but agree as the way your expansive tiers of taurific tits press against the oceanic swell of Ava's own fills you with sense of supernatural satisfaction.";
		say "     As your warm milk-filled mounds war for space, and the gulf between you and your brood-stuffed mate shrinks, a part of you feels like you're on the verge of finally matching your mate in stature. Only to have the sensation of unbridled expansion to plateau, leaving you feeling somewhat bitter and cheated. Though that too passes just as quickly, as the jealous barbs fail to too take root they're washed away with each tender suckle of Ava's rubenesque rack. In their wake comes a rush of lewd lucidity as your awareness is drawn to the provocative redolence of her glistening muff. Your gaze languidly drifts up the vague outline of her animalistic treasure trail to her [if Libido of Ava > 1 and Libido of Ava < 12]ponderously endowed P-cup[else if Libido of Ava > 12]impressively large T-cup[end if] dugs to her [if Libido of Ava > 1 and Libido of Ava < 12]puffy cunt[else if Libido of Ava > 12]lust-pumped labia[end if]. Your altered palate craves the peerlessly sweet sapor of her lovely honey, along with the chance to enjoy some much needed mommy time with your lover, you think to yourself, as you loosen your lip's hold on Ava's boundless milk spout, prompting a needy shudder and whine from your mate as the cool cruel air nips at her teat.";
		WaitLineBreak; [Note: Beyond this point this scene is more or less a carbon copy of the above one, so you can skip it.]
		say "     'Aw, is kitty full?' she teases, dotingly fondling her glassy-smooth padded murder-mittens along your cute curvaceous core in a sweet soothing circuit. Rumbling happily at the sensation of her paws caressing your tender tum, you reply that, no, you're just moving on to the main course, as you coyly lap at her inverse button. 'Ooohhhh naughty kitten, that feels so so [italic type]*Rar*[roman type],' Ava purrs in deep, lustful, petering trill, at the kiss of your fleshy spines roiling the dewy folds of her catty hood. You levy your budding control over your beastly form, flexing and vibrating your fleshy barbs about her labial depths in an exotic coital dance of loving affection. The impossibly sweet sapid tang of honey proliferates through your feline palate with every caring lap of your oral muscle. Diligently pampering her plush sex, you draw out each motion as your tongue slips between her plump lips. Leisurely indulging your senses in the sensuous spasm of Ava's satin walls and her cute desperate pants as the well-seeded cat taur writhes in the embrace of your exotic limbs.";
		say "     Your own [Cunt Size desc of Player] muff soon cries out for attention too, as sparks of animalistic joy dance across your [one of]plump[or]tubby[or]fat[or]voluptuous[or]chubby[or]cuddly[or]huggable[at random] body. You waggle your fertile flank before her, trying to signal your need to your larger lover, yet the poor mewing blissed-out kitten seems to be too lost in her own personal elysium. She gleefully basks in your treatment of her cunny, and her own exaltation of your enhanced figure as her paws and tendrils roam your maternal mounds. No matter, your cunning catty mind knows just what to do, you ruminate between hearty flicks of your morphic tongue as you cheekily coil your ovi tail about Ava's throat akin to a living fuzzy collar. Infatuated by the earthly pleasure of your aberrant ovi muscles lining your potent appendage roiling about her Eve's orange as the heavenly samba of her pulse thrums against the soft tissue, you give her neck an affectionate tug.";
		WaitLineBreak;
		say "     'Huh?' she susurrates in a dreamy distant tone at the touch of your tail tip gracing her chin and the wafting scent of pseudo-tail cunt beguiling her senses. 'Oh,' she chuffs, her tenor deep and bassy like the echoes of a proud Mane's challenge as you pull her close. You shudder at the balmy wisps of her warm libidinous breath playing across your faux-lips as Ava's awareness is drawn to your catty box. You can feel her nuzzle her flexible anthro half against your beastly nether's as she engulfs your sopping [Cunt Size desc of Player] sex in her maw's vivacious embrace. Decadent heat floods your elated sex as your convivial mate's fangs glide along the edges of your muff; her sizable oral muscle flickering about your feral petals in a disparate emulsion of desire. Ava's beatific barbs coil along the lust-pumped swell of your catty button, her every motion evoking raw gushes of need from your sordid sex as she worships your folds. The loving attention adds the purest of fuels to your own performance.";
		say "     As you trace your talons along the velvety fur lining her inner thighs, you allow her spasming hungry cunt to draw your snout in like a cheap sex toy. 'Dear sweet MOMMY!' Ava cries as her pliable walls effortlessly stretch to accommodate your sizable maw; your muzzled senses are inundated with her libidinous scent. You find yourself purring loudly and passionate at the unsubtle caress of her breeder's box convulsing about your rhapsodic snoot. The unerringly sweet piquancy of her fem-honey, alongside the adorable bulge of her maw-stuffed cunt mixes with peerless innervation of your muff and loving caress of Ava's dexterous limbs roaming your tender form in a ponderous waltz of tactile delights. Her own catty trill joins yours in a symphony of feminine feline need punctuated by low, sensual, slothing of your milky forms rifling against one another. An all-too-familiar, though not unbidden, sense of tightness builds along the supple barbs of your tongue as the lurid muscle explores the verdant depths of you mate's lustful canal.";
		WaitLineBreak;
		say "     Your every flick and worshipful kiss is guided by your ever-expanding knowledge of your shared forms; instincts takes over, as the feverish desire to please your lover drowns out any lingering petty human concerns for technique or decorum. As you piston your sizable catty tongue about her stain box, the malleable barbs coating your cunning tongue dance an impossible waltz along her needy cunt. Ava cups her own oral muscle about your enraptured clitty, eagerly nursing the raw stiffening joy buzzer with an animalistic alacrity all of her own. Your vision clouds and narrows as if you were viewing the world through a pin-prick in the void, as this wellspring of desire roils within you to a near unbearable degree. Bestial lust crackles and builds within like the swell of some tropical squall, then breaks in a serene torrent of relief as you finish, cumming a tastful sheen of dew into Ava's yearning muzzle. Mewling happily at your gift, the sweet not-so-little kitten gleefully swallows every molten dollop of dewy delight, murmuring formless un-words of animalistic gratitude between pleased smacks of her lips as your delectable flavor and erotic spasm of your cunny sends her too over the edge.";
		say "     Her cunt roils and convulses about your well-loved snout as if it could somehow coax a litter from it as Ava's expansive sex gushes a welcomed flood of syrupy honey across your receptive palate. Not to be out done by your co-mother's loving minstations, you joyfully sup down every tasty drop, ensuring none goes to waste, or mars her fur. '*Gasp* such a hungry mate,' Ava shudders in doting trill, as you extricate your glistening muzzle with lewd pop from her blushing pink muff. Chuffing, you roll on your back, resting your palms on the warm effervescent mass stretching your already packed middles into towering twin domes of fecund excess. You tell her that it is hard not to, especially when her milk is so yummy and it's going to a noble cause too. 'Aw, what a caring mommy,' your flushed playmate simpers as she crawls up beside you, resting her dewy muzzle next to your dominant shoulder. 'I bet the kittens will appreciate all you're doing for them,' Ava swoons, enswathing her paws over your wobbling mounds, drumming her padded digit along the taut curves of your well-bred core.";
		WaitLineBreak;
		say "     Nodding, you demurely rub your paws over the slumbering form of your little ones, informing her that you hope so. It's not like you aren't getting something out of this too, you purr, fondling the downy adipose swaddling your gravid frame. You've rarely felt so full or content as you do right now. 'And you look so cute too!' Ava gushes, propping herself up with one arm gazing hungrily at your [one of]plump[or]tubby[or]fat[or]voluptuous[or]chubby[or]cuddly[or]huggable[at random] body as she runs her massive mitts over your radiant fur. 'Your pelt is just so shiny and soft, I don't know how you keep your hands off all this!' Chuckling, you reply that she shouldn't sell herself short, as you reach out and brush your hand along the inviting curve of her lush figure, inducing a dreamy sigh from your larger lover as you ebulliently trace your claws between the colorful borders of her pelt. Besides, you add, with a theatrical flourish of your tendrils, bodies like yours are meant to be shared with the people you love.";
		say "     'That's so sweet,' Ava mews in an earnest trill, easing her Rubenesque being back next to you. Your affectionate mate lightly rests her chin on your shoulder, as she drapes her massive forelimbs over you. 'I'm so glad the kittens are going to have people like you and daddy in their lives,' Ava rumbles in a nearly inaudible whisper, as she rubs her pillowy pads through your fur. 'Just take care out there, I don't ever want any of them to go through what I did.' Tutting, you tuck your arm under head, gently stroking the tips of her ears telling her that you will. 'Thanks [Name of Player],' she purrs as she leans in, giving you a soft peck on the nose. Smiling you return the gesture, as the world around you two falls into a peaceful silence, you simply bask in the warm afterglow of your shared affection broken only by the briefly little rumble of your stomachs or the subtle wisp of the breeze wiping around the garage door.";
		WaitLineBreak;
		say "     Eventually, you begin to feel the nagging call of the city, and its lesser inhabitants, nipping at the back of your mind. Though a part of you wants to ignore it and lay here swaddled in your mate's embrace for just a moment longer, you know that you can't, at least not yet. There are things you must do, people that need your help, and a whole weirdly flexible world for you to explore and share with your little ones. Still, such knowledge does little to ease pangs of your parting, you muse, gazing at your beautiful mate cuddled up next you. Perhaps sensing this, Ava flashes you a brave smile as she presses her gravid middle against yours, saying in a reassuring tone, 'It's ok, I know you can't stay too long, but don't worry, the kittens and I will be here when you get back.' Nodding, you hug her one last time, eager to wallow just a moment in your growing family presence before you set off, feeling full, content, and just the right amount of sticky between the knees.";
		PlayerEat 15;
		PlayerDrink 15;
		NPCSexAftermath Player receives "PussyOral" from Ava;
		NPCSexAftermath Ava receives "PussyOral" from Player;
		turn the Player into a "Margay Taur";
		choose a row with Name of "Margay Taur" in Table of Random Critters;
		if scalevalue of Player > 5:
			now scalevalue of Player is 5;
		if Breast size of player < 26:
			increase Breast Size of Player by 1;
		if Nipple Count of Player < 12:
			increase nipple count of Player by 1;
		increase Cunt Depth of Player by 1;

to say Avasex7:
	say "     Wanting to show your [if Libido of Ava is 0]adorable mate[else if Libido of Ava > 1 and Libido of Ava < 12]cute little breeder[else if Libido of Ava > 12]hopelessly gravid lover[end if] some much deserved intimate affection, and to perhaps indulge your curious palate in her exotic flavor once more, you amble up beside her, eyes alight with catty desire, and coyly give voice to your intimate suggestion. 'Mh, that does sound kind of nice, but how about we play with our tails instead, you worked so hard for this it feels like such a waste to do anything else,' Ava rumbles, drawing her oviparous tail about your collar akin to a living choker. Purring happily at her touch, you languidly brush your [BodyName of Player] digits along the inviting surface of her voluminous fur and the tactile muscular ridges lining her tail. As she coils the billowing limb about your throat, you hook the end of her ponderously long tail on the tip of your pointer finger.";
	say "     You draw her faux-slit to your lips, and plant the softest of kisses on her alien muff, telling her in a lascivious trill that, as tempting as her offer may be, you nevertheless wish to show her your appreciation for her companionship in a more... selfless fashion. 'B-but,' she shudders weakly and meekly, her body trembling with unvarnished need at the light caress of your lips and lustful wisp of your breath playing across her aberrant passage. Sh, no buts, you tut in a sweet yet dominant cadence, kitties like her deserve to be shown some proper worship from time-to-time. Besides, it's not as if you're not getting a little treat out of this too, you add, letting your mitts drift down the ponderous length of her enhanced limb while your mouth water at the pleasant memory of her delicious honey. 'Oh alright, I can't say no to you anyways,' your jovial kitten mews good-naturedly as she takes you by the paw and guides you over to her bed. A part of you can't help but relish the tenderness of her grasp as her glossy supple pads engulf your hand in their mushy embrace.";
	WaitLineBreak;
	say "     You're unable to resist the urge to give her mitts a loving squeeze as she cheerfully trots in front of you. Her every step is accentuated by the [if Libido of Ava is 0]lovely sway of her flush M-cups as they wobble enticingly between her legs[else if Libido of Ava > 1 and Libido of Ava < 12] enthralling jiggle of her little breeder belly sashaying betwixt her shapely legs[else if Libido of Ava > 12] pronounced shimmy of her ponderous bloated tums and the subtle sloshing sound her milk-flushed dugs warring for space between her legs[end if]. Perhaps feeling your eyes upon her, your voluptuous mate glances back at you with a knowing smirk as she settles herself on the bed with a theatrical slowness. Her every motion draws your attention to her bountiful body and wondrous pelt as the available light seems to dance like marbles of trapped starlight along her verdant body while tendrils grope vast swaths of her tender being in their glassy smooth embrace. '*Tee-Hee* like what you see [Name of Player]?' she trills, her voice at once light and airy, yet impregnated with a deep-seeded lustful note as she eases herself onto her back before baring her full tauric splendor to you. You feel your breath catching and your heart skip a beat at the sight of her.";
	if Libido of Ava <= 12:
		say "     Even without her full maternal glow or the delightful padding her pregnancies provides, her fur still shines with a vibrant light all its own, as if cast from warm bronze, glistening pearlescent nacre, and lustrous ebony. Her paw pad gleam like sweet glassy beads and fluffy hind legs are spread in a clever [']V['] shape naturally drawing the eye to her plush catty sex. Meanwhile, her tail swishes behind her in an eager metronome of anticipation as her seductive meter whirls her vivacious scent though the air in a mind-numbing current of feminine need. 'What's wrong [Name of Player]? I thought you wanted this,' Ava purrs, leaning over her exotic form and gesturing to her lower half with a broad sweep of her arms. Shaking your head as if to clear your psyche, you stammer an apology, telling her you were just lost in the moment. 'Flatterer,' she blushes, nibbling on her pointer finger, 'I'm glad you like the [']new['] me. These tentacles are amazing! I can't imagine life without them,' she gushes, her extra appendage coiling about like a living catsuit as she playfully gropes her expansive chests.";
	else if Libido of Ava > 12:
		say "     Positively shimmering with maternal purpose and flushed with a tasteful degree of plush padding, your mate's body is slowly but surely burgeoning into a beacon of fecund desire. Aided by the cute not-so-little tum lazing against her decadently swollen breasts, your mate could easily be confused for some primeval fertility deity in repose. Her lovely pink toes shine like diamonds in the available light while her portly legs are held in a lurid delta which naturally summons the eye to her pleasantly plump pussy, while her tail waltzes about her in a ballet of sensuous need as her billowing furry ovi-tail fans her desperate scent about you. 'Ha-ha enjoying the show, my sweet mate?' Ava coos, resting her paws on the taut dome of her lower body as she massages the verdant mass with her forpaws. Nodding dreamily, you tell her yes, very much. 'Good, because I love what your kittens do to me. Gosh, I can't get over how big they're making the girls,' she tease, snaking her tendrils between the lush rows of her feral teats, eliciting decadent cream from her ripe bestial mounds.";
		say "     'They're going to be perfect for feeding the cubs, and my milk,' she rumbles, hooking a fatty droppet of her cream errant cream on her claws, Ava bring it lips and show of languidly lapping it up with single long drawn-out lick, 'it tastes better than ever.' A subtle quiver rocks her heavy not-so-little bumps. 'Mh then just look at these big sexy bellies!' she chuffs, hugging her paws around her glowing middle. 'It's so wonderful to rest in the sun, and hold a piece of you in my paws, or feel their tiny kicks. Oh and don't even get me started on these wonderful tentacles you gave me! They're so supportive, why, I can't imagine my life without them.' She swoons, wrapping the glossy limbs about her heavy form like a living shibari harness. Her lengthy appendages swaddle her lush body in their teasingly tight embrace, further highlighting your mate's voluptuous nature.";
	WaitLineBreak;
	say "     Enamored by the spectacle playing out before you, you merely nod dreamily in agreement as you drop on all fours, and playfully run your hands around Ava's lovely tauric core. You lean over her taurific cunt, and cup your [HeadName of Player] face to her glistening sex while your fingers explore the colorful borders of her pelt coddling her delightful doughy body in its luxurious embrace and evoking the sweetest, neediest purr from your precious mate, as she whines at the caress of your lustful breath simmering along her expansive petals and devoted waltz of your digits gracing the warm silky fur decorating her inner thighs. Such a sensitive kitty, she's not going to cum just from this is she? You tease, tracing your pointer finger about the rim of her feminine flower. 'N-no you just look so cute down there and ah, oh dear sweet mommy that feels-' Ava stammers, her voice dying on her lips as your nails circle her feral clitty. Good, doesn't it? You titter, bringing your lips to hers as you languidly kiss her plump catty pad. Your jubilant palate is treated to the exhilarating rush of her warm syrupy honey cascading about your tastebuds.";
	say "     Delicious, you purr, dipping your tongue between her plush satin folds. Your body crackles with renewed purpose as your true form reasserts itself as her spasming walls roil about your oral muscle, gushing rich rivulets of dew with each flick of your well-traveled tongue. You feel your body growing larger by the moment as the raw rush of comforting pillowy softness creeps over your swelling assets. A part of you just can't get over how right these changes have come to feel, as you run a hand through your luminous pelt, blithing at the sensation of the supple fur coating in its tender protective embrace. It's becoming harder and harder to see yourself as anything other than the cuddly kitten you've come to resemble, you ruminate, kneading your powerful talons against the mattress beneath you, enraptured by the tactile resistance of the fabric hugging your claws. 'Aw look how much you're growing, I bet the kittens are going to love these!' Ava mews, at the sight of your antics, her tendrils encouragingly gliding along the bountiful curves of your resurgent tauric tits.";
	WaitLineBreak;
	say "     Rumbling happily at her praise, your back-mounted tentacles seem to move with a mind of their own, or perhaps acting on your own deep-seeded desires, as their smooth glassy surfaces join Ava's as they roam your shifting body. Everywhere they touch, you can sense the change accelerating, almost like their mere presence were enough to hasten the transformative bliss wracking your body. A sweltering infernal heat courses through your mind like lancets of raw lighting streaking across the surface of a still moonlite, fueling your desire to please your mate, as you tilt you muzzle and gleefully enswathe her [one of]seemingly bottomless[or]canyon-like[or]cavernous[or]expansive[or]elephantine[or]titanic[or]person-swallowing[at random] muff in your maw's embrace. Her satin folds gush with renewed delight as the dissonant caress of your saber-like fangs and pliable fleshy barbs moiling her sensitive petal as you lavish her puddling cunt in a squall of disparate delights.";
	say "     Leveraging your growing control over your feline attributes, you effortlessly shift the texture of each precious lap of your oral muscle, ensuring that no two are alike as the sea of fleshy spines vibrate and flex in an impossible sashay of sensation. You diligently nurse the fluffy swell of Ava's plump pad, and lightly braise her catty vulva with your fangs, providing your performance with a certain predatory thrill that doesn't seem lost on your bestial mate. 'Ah oh MOMMY!' she purrs with a rich animalistic resonance, flexing her tendrils about your regal physique in tandem with your every kiss and caress. The pleasant pressure pairs perfectly with the rollicking bliss cascading through you as your buds drink in the lingering motes of morphic molasses as Ava's toasty dew sweeps into the welcoming furrows of your tongue. Your growing body strains against her tentacular touch as the feeling of unbridled pillowy ripeness taking root in your core seems to plateau.";
	WaitLineBreak;
	say "     Still, the sensation of her frictionless limb innervating your lush curves and heavy tier of tauric titties, spurs you on as you slip your bestial barbs along the oh-so-tender folds of Ava's button, evincing the most delectable spasms from her ponderous passage's walls as they clutch and guide your strokes with avaricious alacrity while you pamper her stiffening joybuzzer in your oral embrace. Your palms rove over [if Libido of Ava is 0]her respective curves[else if Libido of Ava > 1 and Libido of Ava < 12]the graceful swell of her gravid core[else if Libido of Ava > 12]the fecund fields of her fluffy well-seeded middle[end if] as you work your hands up of shapely legs, relishing the feeling of downy fur playing along your supple pad. Following the beautiful bend of her handlebar-esque limbs, you entwine your exuberant mittens with your lover's massive paws. Ava moans with pure blissful anticipation as the needy pulse of her breeders box thrums along your ebullient palate, as she claps her talons over the back of your hands.";
	say "     Far from painful, the erotic bite of your lover's claws only adds to the thrill of bedding such a bestial mate, as you find yourself swooning at the wake of her talons simmering across your hide. The thought of proudly displaying these rosy stfeaks fills you with a bit of eclectic energy as you return the gesture, lightly braising your talons along her pliable hide. Meanwhile, you press your frolicsome snout against her alluring meaty pad, desperate to hilt as much of your oral muscle within her as your body can manage, and tighten your grip upon her hindpaws. Warmth floods your muzzle as her hungering walls snatch and grip at your probing laps as if they can somehow coax you to climax while your lover rumbles like a well-tuned machine at each heady motion. Her lustful trill grows from a fine mewling purr to a proud animistic roar of release as one final convulsion surges through her supple body as she finishes. Her cunt gushes with sweet dewy desire, coating your muzzle in a devilish smear of rich honey.";
	WaitLineBreak;
	say "     Enamored by her flavor and unwilling to allow her pelt to be sullied by even a single lucid drop, you suckle every balmy drop beading from her rosy lips as Ava collapses in a spent heap before you. Words seem to fail her, as her breathing comes in fitful pants, while her forepaws lazily massage her bestial body. Your kitten's tendrils still rove and pamper you in a base show of affection that your savage side approves of as you make a show of audibly smacking your chops. Mh, delicious as always, you rumble, running your hand over the sweet balmy swell of your cum-flushed middle. 'Th-thanks I-I'm glad,' she stammers, her voice and expression distant and dreamy as she stretches out her many limbs in a catty display of contentment. Aw is your girl tired, you tease, as you drape your upper half over her lower body and playfully heaving sides. 'Yes, kitty sleepy, but happy,' she yawns, 'say can-can we please cuddle for a bit before you go, please? Kitty, kitty wants to be held...' Ava mews, as her eyes flutter shut as she starts drifting to sleep beneath you.";
	say "     Of course, you reply, snuggling up beside her protectively and nuzzling your head along the beautiful rows of her bountiful breasts. Your muzzle sinks ever-so-slightly into her furry chest pillows while your paws lovingly massage her lengthy core as this shared moment stretches on. The concept of time and its passage hold little sway over you, suns could rise, moons could fall, shadows can stretch and recede. Yet, only the tender purrs of your mate, the low sloshing of her milk tanks, and the sensation of her pelt intermingling with yours holds meaning to you as you lie there warm and safe beside you mate. This provincial bliss is short-lived though, as your wanderlust builds, and the nagging call of obligations sinks its uncaring claws into the recess of your mind. Perhaps sensing the conflicting tension, Ava cracks open her eyes, and fixes with a knowing look, whispering, 'It's alright. [if Libido of Ava > 1]Just come back and see m-, I mean us soon[else if Libido of Ava is 0]Just come back soon[end if],' as she cups her palm along the side of your face and lovingly strokes your whiskers. Chuffing, you lean forward and give her a quick goodbye kiss on nose[if Libido of Ava > 1] and lean over her middle and plant a few tender kisses on the slumbering forms within[end if] before setting out.";
	PlayerEat 15;
	PlayerDrink 15;
	NPCSexAftermath Player receives "PussyOral" from Ava;
	NPCSexAftermath Ava receives "PussyOral" from Player;
	turn the Player into a "Margay Taur";
	choose a row with Name of "Margay Taur" in Table of Random Critters;
	if scalevalue of Player > 5:
		now scalevalue of Player is 5;
	if Breast size of player < 26:
		increase Breast Size of Player by 1;
	if Nipple Count of Player < 12:
		increase nipple count of Player by 1;
	increase Cunt Depth of Player by 1;


Section - 3 Events

Table of GameEventIDs (continued)
Object	Name
Rebuke Resolution	"Rebuke Resolution"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Rebuke resolution"	Rebuke Resolution	"[EventConditions_Rebuke_Resolution]"	Last Chance Auto Body	2500	2	100

to say EventConditions_Rebuke_Resolution:
	if HP of Ava is 95 and Thirst of Ava is 1:
		now CurrentWalkinEvent_ConditionsMet is true;

Rebuke Resolution is a situation.
ResolveFunction of Rebuke Resolution is "[ResolveEvent RebukeResolution]".
Sarea of Rebuke Resolution is "Nowhere".


to say ResolveEvent RebukeResolution:
	say "     Finding yourself back at the threshold of Ava's abode, a part of you wonders if you were too hard on her last time. You've had some time to adjust to your latest mutations and think on her words a bit with a calmer head. Ava herself seems to have recovered from your light mauling and regards with a pensive yet mournful expression as you loom in her doorway like a specter of ill omens. Perhaps you should try to bury the hatchet so to speak, or do you stick to your guns?";
	let Rebuke_Resolution_Choices be a list of text;
	add "Forgive her." to Rebuke_Resolution_Choices; [live and let live]
	add "Stick to your guns." to Rebuke_Resolution_Choices; [Nay tis a grudging! Bring forth the Dammaz Kron!]
	let Rebuke_Resolution_Choice be what the player chooses from Rebuke_Resolution_Choices;
	if Rebuke_Resolution_Choice is:
		-- "Forgive her.":
			say "     Life is short and whether or not you completely believe Ava when she claims she didn't infect you on purpose, it's best not to carry around grudges. Clearing your throat to get her attention, you explain to Ava that you're somewhat sorry for hurting her. Even if you may not fully believe her, any relations with infected persons always has the potential to lead to mutations. At some point, you have to take a degree of responsibility for your own actions, and Ava didn't force you to do anything. You play with fire every time you [']get to know['] a feral, and you don't get as mad when one of them changes you post-coitus. It's unfair to hold her to a higher standard just because you got burned this time.";
			say "     Still, you tell her you're not sure how much you want to associate with in the future. You might need some time before you can be truly comfortable in her presence. For the moment, you add, you'd just like to put this behind you. 'Really, you're not mad at me anymore?' Ava asks, cocking her head to the side. You shake your head, telling her for the most part, no you're not. 'Thank you [Name of Player]. I still feel awful for changing you.' Ava mews, furling her ears. 'I honestly don't even know how I did it. I play with mommy all the time, Drake's had plenty of my milk, and neither of them have changed in the slightest. I wish I knew why it affects you like this,' she sighs. Shrugging your shoulders, you proffer that Kathy and Drake may just be built differently.";
			WaitLineBreak;
			say "     After all, you note, some people do seem to have a limited resistance to the wave of change sweeping the city. Alternatively, the two of them may just be stuck the way they are, or have some manner of permanent or resilient strain of nanites. Weirder things have happened in recent days, one only needs to look at the sentient slimes roaming the RLD, the psychic dick monsters populating the sewers, or the talking pool toys at the beach to see that the nanites play by their own esoteric rules. All things considered, Ava spontaneously becoming infectious is one of the more banal things you've probably encountered. 'Hm, I guess you're right. I probably shouldn't dwell on it too much, and be more careful with who I play with in the future,' Ava opines. Nodding in agreement, you tell her that would be wise.";
			now Rebuke resolution is resolved;
			now HP of Ava is 3;
		-- "Stick to your guns.":
			say "     Ruminating on it, you're not going to let things go either because you don't believe her lies, or out of sheer spite. You have no desire to ever let her off the hook, and turn your back to her before she even has a chance to say anything, resolving to never come back. The last thing you hear from her as you close the door on her is a light saddened sigh as you walk away from this annoying chapter of your life.";
			move Player to Last Chance Parking Lot;
			now Rebuke resolution is resolved;
			now Newsstand raid is inactive;
			now HP of Ava is 96;

Table of GameEventIDs (continued)
Object	Name
Newsstand Raid	"Newsstand Raid"

Newsstand Raid is a situation.
ResolveFunction of Newsstand Raid is "[ResolveEvent NewsstandRaid]".
Sarea of Newsstand Raid is "High".
Newsstand Raid is inactive;

to say ResolveEvent NewsstandRaid:
	say "     Peregrinating about the wrecked streets of high rise distract, you catch sight of a bright green kiosk-esque structure on the ruined corner of a four way crosswalk. Looking around, you notice the nearby traffic lights wink on and off like dying Christmas tree lights as the city's failing transit grid putters away the last remaining watts of power as if they were the last waning breaths of some great wounded beast. Here and there you spy the husks of wrecked cars littering the area, some are burnt to the bone. Going by the holes pockmarking blackened hulks, their fuel were ruptured by small arms fire levied by the last stand of the city's police, an attempted spoiling action by the military, or panicked resistance of well-armed locals, you can't be sure. Others are torn up by tooth and claw as if their owners were either pulled from them by aggressive mutants. Occasionally, you notice the luckless car who's canopy has been crushed by some variant of a larger infected creature. Others still are muttered in an oily sheen of dried white flakes of what you assume is cum, or spittle as these same creatures attempt to slake their own hungers upon them.";
	say "     More though, show signs of being ravaged from the inside as their transforming drivers ripped their way free of the metal cocoons. Interspersed between these ruined hulks, the sidewalks are littered with piles of soiled torn clothes, the innumerable claw marks of nameless infected, discarded bags, and more than one abandoned ";
	if "Touched by Madness" is listed in feats of player:
		say "pram. ";
	else:
		say "baby carriage. ";
	say "Despite all of this though, the green stall remains untouched, looking closer at you realize it's an old newsstand, a lot like the one Ava mentioned. You're not sure how or why the stall hasn't been pillaged, perhaps with the slow death of print media, the infected were oblivious to its existence.";
	WaitLineBreak;
	say "     Then again, how many people even read magazines any more after the emergence of online media? That doesn't explain why the place hasn't been looted as you can still make out the outlines of a couple dozen rows of neatly stacked junk food, behind the cashier stand. No way looters and entrepreneurial survivors akin to yourself wouldn't have tried to sack it at the start of the outbreak. There must be something guarding it or some kind of contamination warding the locals away. The possibilities are numerous, shapeshifters, psychics, clever fliers waiting in the wings, or tiny infectious items tainting the area, it could be any of these, or all of them. Still, curiosity gets the best of you as you tiptoe about the periphery of the artifice. You're careful to avoid the ubiquitous bits of trash and shredded appeal lest a clumsy foot fall crunch an errant sliver of glass, or jostle the odd filth encrusted article of clothing littering the city.";
	say "     Quickly and quietly, like a mouse scurrying through a church at mass, you work your way forward till your vision crests the vendor's window. Inside, you spy the sleeping form of wolverine guard curled up in the tattered remains of their uniform. It doesn't take a genius to tell this person was much smaller once based on their current size compared to their uniform. Though the fact they've held on to their clothing and even made some effort to crudely patch a few holes suggests they may still be slightly sane. This presents you with a rare opportunity to try talking to them, if they're not nuttier than a squirrel in a peanut factory. You can just ask them if you can buy a few things. There are enough wallets, purses, and murses scattered around the city that you could probably put a down payment on a house with all the loose change. Then again, why risk it, it wouldn't be hard to ambush the mutant and just take what you want.";
	if Pistol is wielded or Driver Carbine is wielded:
		say "Alternatively, you have a projectile weapon and access to plenty of over-watch positions, so you could just lure them out then pick them off from a distance at no risk to yourself.";
	LineBreak;
	say "     [bold type]What Would you like to do?[roman type][line break]";
	let Newsstand_Choices be a list of text;
	add "Ambush them." to Newsstand_Choices;
	add "Talk to them." to Newsstand_Choices;
	if pistol is wielded or Driver Carbine is wielded:
		add "Drop them from a far." to Newsstand_Choices;
	let Newsstand_Choice be what the player chooses from Newsstand_Choices;
	if Newsstand_Choice is:
		-- "Ambush them.":
			say "     Mulling your options over, you decide your best course of action is to ambush the mutant. The only question is how. If you had a way to deal with them at range, you might be able to pick it off from a distance, or skirmish with it. Since you don't, you'll need to be a little creative. You muse, surveying the environment for anything that can give you an advantage, there certainly is tons of scrap laying around after all. There must be something you can use to extend your reach, you think to yourself, quietly appraising the debris in the immediate area. Once your eyes pass over a massive rod of steel slag sticking out of the back of a broken down truck. You think you may have found what you're looking for. Heading to the wrecked vehicle, you brush through the broken concrete and assorted bits of metal that was likely destined to become another layer of landfill somewhere.";
			say "     Plucking it from the pile, you note the unwieldy slab of metal is far too rough, heavy, thick and riddled with rusty blisters to use like a regular weapon. Indeed, you'd probably throw out your back or shred your palms trying to swing this massive hunk of iron repeatedly. However, if it's just once... well you don't have to be Atlas reborn to pull that off. Hefting your iron slab, you walk up to the edge of the kiosk and whistle as loud as you can. Simultaneously winding back your weapon, you wait for the wolverine to stick its head out. You don't have to wait long, as the mutant is roused from its slumber. With a feral growl its pokes neck out just past the lip of the structure yelling, 'Who's there! What's that noise!' [one of]Hey you![or]Over here![or]Hai yo![or]Heads up![or]Batter up![at random]";
			WaitLineBreak;
			say "     You scream to draw their attention to as you swing your make-shift weapon with all your might. You strain your muscles and push your back to its limits, while putting your grip to the ultimate test for this one swing. The heap of iron sails through the air with a brisk whirl as it cuts the atmosphere like a whip cracking. It collides square on with the mutant in a resounding yet somewhat satisfying *CLANG*, that reverberates through your body as metal deforms on impact into facsimile of the creature face. Still they seem to absorb the impact, and for a moment, the two of you are stuck in place staring, until it lurches forward awkwardly like it were trying to make a grab at you. Only to collapse over the side of the kiosk, as its goes cross-eye and it falls face first into the cement with a loud thud. Doing a quick double take to make sure no one noticed you brained the wolverine. You find the area is still clear, and set your deformed weapon next to the pacified creature. Though looking at, a part of you has to admit, you're a little impressed at the near photographic quality of the indentation on the rebar left by the mutant's face. You even briefly consider keeping it, or perhaps selling it to some overpriced modern art museum.";
			say "     If those weirdos will spend thousands for a replica of Marcel Duchamp Fountain, imagine much they'll give you for this! You eventually decide against it though. The thing is just too damn heavy to lug around right now. You'd need a car for that, and all the rideshare apps are most likely not working right now, cabs are a rip off at the best of times, so you decide its best to just leave it. Instead, you content yourself with looting a fat haul of junk food, soda, and as many magazines you can fit in a paper bag from the surrounding area. You even spot a bunch of wallets laying around the area that still have money in them. Going through them all you wind up with a couple hundred American, a stack of euros, and what may as well be colorful play money to you due to how little it's worth from various island nations. You know, now that you think about it, Ava might like the prettier ones. Sure, currency destruction is a crime, but with all that's going on right you doubt anyone will care, you muse. Once you've got everything sorted and packed, you head back to the entrance of the high rise district with an inventory swelling with more goodies than you know what to do with, for a while.";
			now Newsstand Raid is Resolved;
			now Art supplies is Active;
			itemgain chips by 6;
			itemgain soda by 6;
			itemgain wad of cash by 10;
			now Intelligence of Ava is 2;
			TraitGain "Violence of Action" for Player;
		-- "Talk to them.":
			say "     Deciding to go with the diplomatic approach, you scrounge around the area picking up every loose wallet you can find. Though you ignore any that are covered in sticky fluids, whose origin you'd rather not contemplate, till you've got a couple hundred USD, more than a few euros, and a smattering of colorful Caribbean currencies, not to mention a couple of Pacific island ones. Folding them up, you walk over to the counter, you lightly rap your knuckles on the metal surface of the counter. At the sound, the creature begins to stir, as a single bloodshot eye pops open. It fixes on as its pupils shrink to murderous pin-pricks as its warped mind tries to parse your existence as it leaps to its feet. 'Wa, who, what do you, what do you want, mutant!?' it shrieks, baring its teeth at you, spittle dripping from its lips as it looks you over. Unfazed, you tell the creature in your most banal tone that you'd like to buy some travel magazines, a couple of nature ones, and if they have an art rag throw those in, oh, and a few chocolate bars.";
			say "     Caught off guard by your calm and rational demeanor, the creature seems to reign in its aggression, muttering, 'S-shop's closed till the vendor returns. Please return at n-normal business hours,' as its muscles quiver and strain against the too-tight fabric of uniform. With each convulsion, you can see the seams fray and patch begin to rip as the wolverine struggles against its nanite-borne impulse to guard this place no matter the cost. Ya, don't think they're coming back anytime soon, can they ring you up? You have cash. You ask in a droll tone, flashing a fist full of dollars. The creature blinks, a look of confusion written on its bestial visage as the fragment of its human personality wars with its nanite influence. It almost looks pained as it stares at your money, for a moment as the rusty hamster wheel in its head turns a degree. 'We are the middle of a coin shortage, so I can't,' the creature snarls biting its own lip till a trick of blood drips down their chin, 'make-make change is that ex-axe-acceptable Mx?' You shrug.";
			WaitLineBreak;
			say "     'Tha-thank you Mx, what would you like to purchase again?' The wolverine asks. Sighing, you repeat your order and ask if they have any fruit drinks or if it's all colas while you're at it. 'We have several types left, b-blood,' the creature growls, wiping some of its own from its mouth, 'blood orange, lychee, rambutan, and mango.' You tell them you'll take all three. 'Th-thank you Mx please be aware we are a-a-a,' the thing shudders as the veins on its neck bulge and throb like the creature we're caught in the throats of acute tachycardia. 'Paper bags only, Cali-California has banned plastic bags and,' The wolverine bleats, grasping hold of the counter as more violent tremors rack the mutant's body as they struggle to hold itself together. 'That will be $35.73 please know the bag tax is ten cents in this city. Also d-d-due to the pandemic, you will not be able to return these items.' Whatever, you tell them, keeping your expression vacant and placid as you place the exact amount on the counter.";
			say "     'Thank you, for shopping at Mr. Wong's Newsstand,' the wolverine say, slamming its paw on the pile of green backs and sliding them off the edge into its free hand even though its claws rip up the paint, creating a horrible noise worse than nails on a chalkboard in the process. Still, the addled person somehow manages to collect your money despite the tremors rocking its hulking form as it pockets your payment. It then proceeds to gather up your purchase albeit with no small amount of difficulty as its claws piece several items and shreds more than one paper bag. Eventually it manages to bag up your items and plops them in front of you with an exasperated look on its bestial muzzle.";
			WaitLineBreak;
			say "     Thanks, have a nice day, you respond, grabbing the bags and head off like it was another normal day in the golden state. Once you're a few ";
			if "Touched by Madness" is listed in feats of Player:
				say "meters ";
			else: 
				say "feet ";
			say "out of earshot, you sigh in relief as you look over your haul and it's not half bad, that the wolverine really hooked you up! Guess it was trying to make amends for its odd behavior or it was simply aiding a fellow survivor in its own way. Since you've got like ten meals of pure snack food, six cans of soda, and about twenty five issues of various picture-rich magazines like the ones Ava said she wanted. All and all, that's not a bad deal if you must say so, you think to yourself on the way back to the entrance of the high rise district.";
			Now Newsstand Raid is Resolved;
			now Art supplies is Active;
			itemgain chips by 6;
			itemgain soda by 6;
			itemgain wad of cash by 10;
			now Intelligence of Ava is 2;
		-- "Drop them from a far.":
			say "     Eyeing up the nearby fire escapes, you note that many of their ladders have been lowered enough to allow you access to their rooftops, without you having to risk entering the buildings proper. You decide to use this rare stroke of good fortune to press your range advantage. There's no point in putting yourself in harm's way when you can rain death from afar like a proper red-blooded American. Ya, you think to yourself there definitely there is less than no point trying to reason with a mutant when you can just pop [']em in the pudding and be done with it. After all, what's the chance they actually are sane, probably near zero. Even if they are, there is a good chance they might try slipping you an infectious item or double cross you. Best play it safe, you tell yourself selecting a building whose rooftop would give you the best angle of fire. You pad your way over to a derelict office building's fire escape and slowly make your way up, all the while you're careful not to make too much noise in the ascent.";
			say "     Your going is slow with a few near misses as bits of broken cement aggregate are strewn about the area at several points where the building has decayed, though not naturally. Looking closely some of the bars appear bent or crushed at odd angles. You suspect, judging from the deep claw marks on the walls, that this was likely done by the local wyverns as they hunted for prey, or mates. You can't think of any others that could reach several stories off the ground and bend steel like pipe cleaners. If there were something like that, you're not sure you'd want to meet more kaiju-sized infected anytime soon, you think to yourself, scanning the skies warily. For the moment at least, everything is as clear as can be, so you continue with one eye glued to the sky and the other on the fire escape to avoid kicking any debris.";
			WaitLineBreak;
			say "     Cresting the top of the building, you take a position over the newsstand and wonder how best to draw them out. You could try to shoot through the roof, but don't know how hard it is or how much noise it will make. For all you know, you could be sounding the dinner bell for the local horny mutants. You then think about angling your shot, but haven't really had the chance to figure out the rate drop of your weapon is at this distance. It would also put the magazines at risk, you realize not wanting to ruin them with blood splatter or potentially frenzying the wolverine. While they may not be the most dangerous infected out there, they are not total pushovers either, it could make a lot of noise if it went looking for you and who knows what manner of attention that could bring. No, you need to do this in one shot, without risking the loot. But how, you ponder looking around the rooftop at all the errant bits of gravel and trash that has accumulated, an idea pops into your head that just might work.";
			say "     Gathering up a few of the heavier bits, you start flicking them on the metal roof of the newsstand below you. You can't hear the impact from up here, but you imagine it sounds like hail on a tin roof to the mutant inside. Thankfully, it's not loud enough to be heard that far, but to the creature it must be quite annoying as you can hear it snarl as it pokes its black furred head out from under cover. That's it, you muse breathing out and squeezing the trigger. With a *Pop* and *Thud* your round hits  square in the temple, slamming the wolverine's head to the pavement with the force of impact. Though you can already see it's starting to recover before you even holster your weapon. Not that you're surprised, it's almost impossible for some of the infected to die, all you've done is give this one a concussion and the mother of all headaches. Still, your confident the mutant is down for the count and rush down the kiosk doing your best not to make too much noise while not giving the wolverine enough time to recover either.";
			WaitLineBreak;
			say "     By the time you've reached it, its head wound is almost completely healed, the only evidence you've hurt the thing is a ol['] big red bump on his forehead. Well it's not going to be long till it wakes up, you think to yourself, as you swiftly plunder the shop, looting several meals worth of junk food, a dozen sodas, and every magazine with pictures in it for Ava. Shoving them all in your inventory, you decide to look around the area while you're still here to see what else you can find. A couple minutes later and you've enriched yourself with a fat wad of US dollars, a few fist fulls of euros, and a pile of colorful foreign currencies that are worth more as decorations and conversation pieces than as actual money. Stashing the last items away, you head back to the entrance of the high rise district a lot wealthier than you came in.";
			now Newsstand Raid is Resolved;
			now Art supplies is Active;
			itemgain chips by 6;
			itemgain soda by 6;
			itemgain wad of cash by 10;
			now Intelligence of Ava is 2;
			TraitGain "Violence of Action" for Player;


Table of GameEventIDs (continued)
Object	Name
Art Supplies	"Art Supplies"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Art Supplies"	Art Supplies	"[EventConditions_Art_Supplies]"	Last Chance Auto Body	2500	2	100

to say EventConditions_Art_Supplies:
	if Intelligence of Ava is 2 and HP of Ava < 95:
		now CurrentWalkinEvent_ConditionsMet is true;

Art Supplies is a situation.
ResolveFunction of Art Supplies is "[ResolveEvent Art Supplies]".
Sarea of Art Supplies is "Nowhere".
Art Supplies is inactive.

to say ResolveEvent Art Supplies:
	say "     Opening the door to Ava's you flash the gentle tauress a warm smile, and ask if she remembers that newsstand in the high rise district she mentioned to you a while back. Ava nods. Well, you begin, you were there recently and, you pause to open up your inventory then pull out a bundle of magazines. You got these for her, you tell her, handing the tauress the first batch. 'You did! I can't believe it,' Ava stammers, her eyes go wide with delight as she sizes up the covers on the nature magazines. 'You actually found these, but I uh...' Ava mews mournfully, her ears drooping as she shifts her weight between her paws nervously and sets the magazine down on her davenport. 'I can't accept these.' Wondering why, you ask her how come. 'I don't have anything to give in exchange. Daddy says it's not fair to ask people for help, and not repay them for it.' Shrugging, you inform her you were never expecting to be reimbursed, that you did this out of the goodness of your heart. Besides, you found plenty of supplies there you wouldn't have known about without her tip.";
	say "     Speaking of which, you tell her rifling past the rest of the news rags. You got something else for her, you explain unfolding a couple of the foreign dollars. 'What are these?' Ava asks, picking out a brightly colored bill that looks like a miniature gum wrapper in her massive paws. Tittering, you explain its money from other countries and that you thought she might like a few. 'But they're so pretty, aren't they worth a lot, are you sure I can just have them?' Ava asks, eyeballing the large denominations emblazoned on them. Eh, not here, most of these are worth a nickel, maybe less, economics are funny like that. You tell her, handing Ava a small stack of brightly-hued bills. 'Really,' Ava contends holding up a Caribbean note. 'They're so colorful though, I mean look at the blues on this one. Or this one, the foil thingy here looks like mommy's claws.' Ava says, tapping the security strip on another one. It does? It just looks like shiny plastic to you, you question.";
	WaitLineBreak;
	say "     'Oh ya that's right, mine eyes are different from yours, mommy, and daddy's. He said um I see parts of the-the um-uh,' Ava stammers as bobs her head as she racks her brain for the right words. ";
	if "Touched by Madness" is listed in feats of Player:
		say "'Ultra Violence spectrum and something else.' Ava, first off, you really hope she means the [italic type]ultraviolet[roman type] spectrum, secondly "; [Shall we hit up the Korova Milkbar, then go for a lovely spot of the old in and out my lovely droogs?]
	else:
		say "Ultraviolet spectrum and something else. Wait ";
	say "how does Drake know this? You ask. 'Well, one night he was reading to me from this picture book about bees and he was showing me this part out how they see what flowers are yummy and which aren't. Dad, I mean Drake showed me this picture of what Honey Bees see I told him they both looked similar to me. When I did, he started acting a little weird and he said had to clean something up really-really badly, then ran off,' Ava peeps, stifling a sniffle. 'I thought I said something bad, but when he came back he had these strips of pretty polka dot paper. He made me look at each one and tell him what I saw on each one.' Curious, you ask her how that went.";
	say "     'Weird, Drake said I might have a learning ability, and that I see things normal people shouldn't.' Not bothering to correct her grammar this time, you ask Ava how all that makes her feel. 'I don't know, a little sad, but also lucky maybe?' Your interest piqued, you raise a questioning eyebrow in response, politely requesting Ava to elaborate on what she means by lucky. 'Hm,' Ava taps her chin. 'How can I explain this, the world mom and da-, I mean Drake sees sounds so dull and washed out. I can't imagine what it must be like to be so... blind to-to all this.' Ava says, making a sweeping gesture with her hands and tail. Understandably interested in what she means by [']all this['], you ask her for an example. 'Right,' Ava begins, tapping an erratic tattoo with a toe claw on the cement as she looks around the room. 'The walls, what do you see looking at them?' she asks, bobbing her tail against a barren stretch of wall. Shrugging, you tell her matter-of-factly tone you see gray polished cement peppered with black stone as aggregate and the occasional chem stain. 'That's it?' she asks, with a low tenor of disappointment infecting her tone.";
	WaitLineBreak;
	say "     Nodding, you more or less, yes, what does she see? 'Well,' Ava begins as she walks over to the westernmost side of her room and runs a paw over the wall. 'I see waves of purple crystal,' she says, tracing a series of crescents down the side of the building, 'mixing with rainbow spirals where oil and chemicals have seeped into them and the floor.' Ava says pointing to the ground by your feet then turns to the entrance. 'There are patches of vermillion and brown specks by the doorframe where someone slammed their hand, their print is still there too. I know it's not Daddy's. His hands are much bigger and the sweet smell reminds me of mommy, but the shape is wrong.' She says, motioning to the doorway. 'When I look in the corners, I can see a sheen of olive oil colored stuff pooling where somebody did their business once.' She remarks, though a mild shudder passes along the ridge of her feral spine. 'When I look at sunlight or moonlight I see these motes of vibrant purple and waves of metallic blue auroras that look like the picture of seafoam Drake showed me once.'";
	say "     Ava opines, nodding her head to the light spilling under the cracks of her door. She turns to you saying, 'And you, when I look at you. Your whole body shines a brilliant bright blue like it's covered in-' Ava, never mind, you think you've heard enough. You interrupt, not wanting to hear any critiques of your post-apocalyptic hygiene. 'Ok,' Ava nods. 'Thank you for this though, these will really help with my project.' Ava purrs happily as she picks up and leafs through one of the magazines with an appraising look in her eyes.";
	now Art Supplies is Resolved;
	now Intelligence of Ava is 3;


Table of GameEventIDs (continued)
Object	Name
Margay Breeding	"Margay Breeding"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Margay Breeding"	Margay Breeding	"[EventConditions_Margay_Breeding]"	Last Chance Auto Body	2500	2	10

to say EventConditions_Margay_Breeding:
	if Lust of Ava is 3 and player is impreg_now and BodyName of player is "Margay Taur" and Player is pure and HP of Kathy >= 1 and Cock Count of Player < 1 and Cunt Count of Player >= 1 and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Margay Breeding is a situation.
ResolveFunction of Margay Breeding is "[ResolveEvent Margay Breeding]".
Sarea of Margay Breeding is "Nowhere".


to say ResolveEvent Margay Breeding:
	say "     Opening the door to Ava's room, you find your tauric friend isn't alone this time, cuddled up beside Ava on her makeshift bed is a very flushed looking Kathy. The two plump felines appear to be rather relaxed, their paws sprawling over one another as they playfully cuddle on Ava's bed and they share a laugh about something you must have just missed. Propping your shoulder against the doorway, you ask the two cute kittens what's up. 'He-he, not much. Mommy was showing me this trick of hers, go on show her,' Ava prods happily while running a paw down Kathy's sides. 'Oh all right sweetie, but I don't want to wear them out, so keep your eye on my belly. I'm only doing this once more, ok?' Kathy replies in a cheerful tone, rolling her back and spreading her legs letting her womb slip between her fluffy thighs. 'Ok babies you say hi to Ava's friend,' Kathy coos, rocking her fecund middle while playfully tapping her taut furry paunch. At first nothing happens as Kathy drums her claws along her expectant form, but ever so slowly you start to see cute little paw pads push against the plush furry sides of Kathy's tummy.";
	say "     'Tee-hee this always feels so weird,' Kathy pants happily wrapping her fingers along her overstuffed belly. Her kittens respond in turn, pawing different parts of Kathy's tummy. The countless paws of her feline brood push the furry gravid orb in random directions; it almost looks like a dodgeball game going on inside her packed tummy. Not that Kathy minds the stimulation or shows any signs of discomfort as her plush tummy squirms in her arms. Judging from the lewd grin on her as she pampers her lush midriff, the fecund breeder is getting off a bit on the sensations of litter prodding her insides. Seemingly enthralled by the sight, Ava lets out a low pleased mew as she runs her paws over Kathy's tummy purring happily as the kitten kicks her huge pink paw pads. 'Hey,' Ava asks looking hopefully at your own litter, 'can you do this?'";
	say "     [bold type]Author's note: Warning the following contains niche, but wholesome fpreg content and paw rubs. If this is not your jam, feel free to nope out. Otherwise, you can safely skip this scene without locking yourself out of the rest of Ava's preg content.[roman type]";
	LineBreak;
	say "     [bold type]How do you respond?[roman type][line break]";
	let Margay_Breeding_Choices be a list of text;
	add "You absolutely can." to Margay_Breeding_Choices; [Playfully tease Ava]
	add "You can't but want to." to Margay_Breeding_Choices; [Preg pampering]
	add "You're not comfortable with this." to Margay_Breeding_Choices; [Skip preg play]
	add "Nope out." to Margay_Breeding_Choices; [No preg content for me plz am good sexually repressed Christian boy]
	let Margay_Breeding_Choice be what the player chooses from Margay_Breeding_Choices;
	if Margay_Breeding_Choice is:
		-- "You absolutely can.":
			say "     Sure can, you tell them, as you direct the two to move over, so you can show them how it's done. You quip that you are more than happy to show off your fecund state to an appreciative audience. 'Oh, this should be good,' Kathy smirks, as you plop down between the two plush felines. It will be, you promise flopping down on your back. You leer down at your Rubenesque figure, its full glory on display. A part of you can't help but feel a spark of maternal pride at the sight of the fruitful beast you've grown into. Your nanite-warped mind delights at the sight of fur-swaddled breasts and the sensation of the thick calorie rich milk sloshing within. Running your eager paws over the sensitive tissue, you mentally remark how despite their growing size and heavy cargo your opulent tits barely have a hint of sag. Instead, no matter how big you get, your rack practically defies gravity with its supernatural perkiness.";
			say "     You muse, groping a paw-full of succulent tit flesh in your mitts just to feel the weight of them in your padded paw hands before turning your attention to your well-rounded anthro belly. Coddled by your voluptuous bosom, your tender midriff looks well at home on your heavy frame as if it were your natural state. A part of you doesn't even mind slowly losing sight of the ground, or your paws as your condition progresses. It's such a small price to pay for the joy that motherhood brings you after all, you opine, running your padded palm over the silky pelt protecting your anthro pouch. Turning your gaze further south, you can't help but grin at the sight of the pillowy gold and black fur swaddling your animalistic womb nestled neatly between your legs. Not to mention, the heady spectacle of your feral dugs that mirrors the decadent portions of your anthro half. Hugging the rows of your bestial half with your catty limbs, some section of your altered psyche delights at the weight of your litter pressing against you as your legs are forced to make room for the rest of your [bodytype of player] form.";
			WaitLineBreak;
			say "     In the past, you might have been ashamed of what you've become, but your nanite-altered brain looks at the doughy tauress you've grown into with a sense of perverse achievement at the changes. You ruminate to yourself kneading the soft adipose coating your feral womb with your digitigrade feet, and for the first time in a while you get a look at your hard-working feet in this form. At least without contorting yourself, you think to yourself. With all the walking and fighting you do, not to mention your current state, you'd expect your poor beans to be swollen blistered wrecks, but your exotic limbs bear the hard road without complaint. At least now you can give them something soft to touch, you think yourself, trying to massage your resplendent body. Despite being the size massive saucer plates that they are, your paws can barely reach around the pliant adipose belly cradling your tauric young. Still the struggle to reach your feral linea nigra is worth it, as you happily dig your paws into the inches of soft pudge and fur protecting your kittens.";
			say "     A part of your nanite-tainted mind can't help but imagine their sweet frames resting safely within your fluffy undercarriage. As you fondle the home of your future cubs, a part of you fantasizes about just how many kittens you have to be carrying. Some section of your nanite twisted psyche hopes it's a lot more than one. You opine, running a clawed finger along your spotted fur, picturing dozens of wonderful kittens curled up snugly inside your bloated baby maker growing into ";
			if "They Have Your Eyes" is listed in feats of Player:
				say "large and powerful tauresses. ";
			else:
				say "the cutest little hybrids. ";
			say "You can't wait for the day you get to meet them, and have them cuddled up beside you as they nurse from your feral half. You hope they all grow up big strong, you purr under your breath, tapping your claws against the silky stretched skin of your anthro torso. You tease the taut tissue around your puffy navel, drawing playful swirls in the borders of your gold, white, and black spotted fur as if you could encourage their growth. Slowly but surely, you can feel your kittens stir even so slightly from their blissful slumber.";
			WaitLineBreak;
			say "     Their tiny paws barely even register a quiver on your prestigious body at first as your more energetic kits start to stir. In moments, your other kittens start waking up and the little bumps turn into dozens of hard kicks. As your stomachs quake and churn like you've got a wrestling match going on inside you. Yet your tauric body takes it in stride, if anything your body might be enjoying the sensations. It's probably a side effect of your exotic anatomy, a part of you notes, but your alien nerves are definitely getting some stimulation from all those little paws, you ruminate, feeling a pleasant heat bubbling down your flanks. You try to fight back against the unbidden budding need blossoming between your lush thighs. Without meaning to, you can feel your claws flex and tail fans your warming sex as pangs of desire tease your sensitive form. 'Well looks like you're enjoying yourself,' Kathy cuts in, reminding you that you've got an audience next to you and causing you to blush, although you doubt anyone could see through your fur.";
			say "     You try to play it coy, but your fidgeting gives away just how much fun you're starting to have. 'Oh don't be ashamed sweetie, if you're feeling antsy just say so,' Kathy says, pulling her chin to your shoulder. She hugs your arm close against her voluptuous from letting your velvety pelt glide against each other. 'Right, Ava?' Kathy mews, directing your attention to your zoned-out tauric friend with a bat of her feline eyes. The poor tauress doesn't seem to recognize her own name, seemingly more interested in what is going with your litter than the world around her. She just lays beside you, slack jawed and purring. 'Hey Ava, earth to Ava, come in Ava,' Kathy jokes, poking the tauress with her tail. 'Huh, what?' Ava says, finally taking her eyes off your litter for a moment. 'Ava, you're drooling,' Kathy titters, gesturing to her adopted daughter's chin. 'I'm not!' Ava squeaks, clamping her maw shut with an audible click and heavy swallow. 'I, um... just, you know...' the husky tauress stammers.";
			WaitLineBreak;
			say "     Like pregnant furries, you gibe good-naturedly, not minding her attention in the slightest. 'Maybe, I don't know, I've never thought about it,' Ava says half heartedly. 'Well you certainly like touching them,' Kathy coos rubbing her bump against yours as she fixes you with a knowing look. And she definitely enjoys looking at them, you intone, patting both yours and Kathy's bloated stomachs teasingly. 'That's true,' Ava ponders with a pervy smile. How about a taste of one, would that help her make up her mind, you quip, gesturing to your animalist sex with a bob of your tail. 'Really!' Ava mews. You nod and the tauress bolts behind you in a flurry of feline floof. She flops down between your rear legs, her ears just barely visible behind your swollen feral womb. You can feel the heat Ava's nose just";
			if "Touched by Madness" is listed in feats of Player:
				say "millimeters ";
			else:
				say "inches ";
			say "from your moist snatch and realize she's waiting on your go ahead. What a polite girl, you chuckle motioning for Ava to dig in with a flick of your rear mounted limb. 'Yay,' Ava says gleefully, giving your feline pussy a sloppy lick. Fuck, you sigh flexing your toe-mounted talons in time with the laps of Ava's sordid tongue.";
			say "     You exalt in the sensation of her massive oral muscle worshiping your cunt. Her teasing fleshy spines caressing your sensitive muff with every bristly pass. Not stopping there, your lips soon sing with delight as Ava's maw nuzzles its way over your snatch. Her muzzle easily encompasses your sordid sex in her warm embrace as she diligently nibbles and sucks on your tauric button while the sharp edges of her teeth glide over your folds with each motion of her jaw, sending jolts of fear through your nerves at having Ava's impressive fangs so close to your button. But, you muse listening to her content purring, you trust Ava to know her way around someone's kitty. Ava doesn't disappoint either, she kisses and suckles your inverse clit with loving precision as her nose buries itself in the plush tissue of your lush pelt. Cold to the touch, you let out a cute peep as her snoot ruffles your downy belly fur. You can hear Kathy's restrained giggle at your cry, but Ava doesn't seem to hear you, lost in her task. She cups and fondles your feral love handles.";
			WaitLineBreak;
			say "     Her paws sink deep into your lush folds, the feeling of her silken fur caressing your doughy form as she explores your tauric half is unlike anything you've ever experienced when you were a mere human. What a good kitty, you compliment, lolling back more than happy to let Ava pamper your curves. It can be so hard to find a mutant that appreciates a bigger person. Sadly, the vast majority see you as little more than a waddling baby factory or an unwilling transmission vector. Given your current state, you can't say you're been doing much to discourage such sentiments and in the case of the former might not even object to being used as such. The fact that Ava still takes the time to pay attention to the rest of you though is still a rare and welcome pleasure, you opine as the gentle tauress's paws roam your lower body, kneading and massaging knots you never knew you had. While her delectable spined tongue caresses the decadent depths of your feral cunny. You'd almost wonder if she has a road map of your body, if you didn't have a copy of hers, you think to yourself.";
			say "     Meanwhile Kathy, who's likely a little tired of being a passive participant, pulls herself up off the bed cooing, 'Hey sweetie, I hope you don't mind, but I am feeling kind of left out. Do you mind if cut in?' As she positions herself over to your face, giving you a nice peek at her plush ebony pussy lips sandwiched between her tawny golden thunderous thighs and creamy plush mound. You know what she's planning, but you don't even have time to contemplate consent as Kathy roughly spears herself on your muzzle. In the blink of an eye, her plump muff and thick thighs engulf your giant muzzle, smothering your senses with her gold fur, tender thighs, and the sweet scent of seeded lioness. As an almost inaudible purr passes through Kathy as her plump body settles over yours. You can feel her weight pressing down on you, her bloated stomach resting heavily on your breasts and diaphragm pushing the wind from you.";
			WaitLineBreak;
			say "     Her engorged tits laze upon your own, warring for attention with Ava's diligent ministrations. Reflexively, your body tries to breathe in when Kathy makes herself comfy, but all you get is a mouthful of feline pussy and honey-flavored girl cum as her swollen muff perfectly conforms to your boxy muzzle. You feel more than see, Kathy pumps her plump feline snatch stretching over your predatory maw like it were her own personal toy. As her lush ebon cunt takes up more of your vision, you're thankful she at least takes it a bit slow, letting you sneak tiny breaths out the edges of your muzzle. Whether that's on purpose or due to her massive litter weighing her down matters little to you. At least you can breathe between Kathy's thrusts, and try to concentrate on your own performance. Something tells you she's not moving till she busts a nut even if she has to kill a few brain cells in the process, you think to yourself taking hold of Kathy's door jamming sides to lend her your support.";
			say "     Which Kathy seems grateful for as she chuffs encouragingly as your claws dig beautiful deep furrows in the fur of her shelf-like ass. You can almost feel the dense core of muscle hidden underneath her pelt tense up with anticipation as you lavish your oral affections on Kathy's slick molten ebony flower, as much as you're able to. Your mind is torn between Ava's oral affection and Kathy's face smothering snatch. A part of you wants to buck and howl with lust like the beastess you resemble, but the living muzzle of Kathy's sugary leonine pussy turns your frustrations into adorable little gurgles only you can hear. As your air escapes between the gaps of Kathy's thighs and under belly fur, stimulating her sensitive areas. 'Ha-ha, that tickles,' you vaguely hear Kathy pant as your pendulous feline tongue kisses the lips of her fuzzy mound. Your own massive maw is swaddled in Kathy's molten muff like an exotic gag.";
			WaitLineBreak;
			say "     Her malleable muff caresses your oral invader just as it does to your snout almost like her sex is trying to milk your tongue with her well-trained muscles. You'd almost be envious of the cock milking Drake must get, if you didn't have a pair of big beautiful felines exalting your expectant tauric body. You muse on this while riding out the waves of hormone-addled pleasure as Ava laps at your feral clit as if it were her own personal lollipop and beads of Kathy's fem cum drips down your furry chin. You know you wouldn't trade bodies with any man or herm. Pregnant sex is just too good, your nerves are just so wild and raw when you have all these wonderful hormones in your bloodstream. Even the slightest breeze can set you off. Judging from the level of heat and dew radiating from Kathy's slopping cunt, you know she feels the same. You can only imagine what she's experiencing grinding her small body that's so overstuffed with kittens and milk against your exotic fertile form.";
			say "     The sensation of her lush tits and ripe womb rubbing against your own is so decadently wrong, in all the right ways. As yours and Kathy's litters paw at one another through your fluffy tummies and Ava's loving cunnilingus battle for your recognition, your warped-psyche is torn between pleasures all the while driving you closer to the edge. You can even hear Kathy pant with exertion and lust as her body nears in limit as well. 'So good,' Kathy cries as her thrusts become slower and lazier as her pampered body struggles to keep up with her animalistic needs, till she can barely lift her ponderous frame. Instinctively, your paws move up her plush middle and sink into her generous love handles as lend your own strength to her efforts. 'Tha-Thank y-y-you,' Kathy pants grasping hold of your hand with hers, she buries your paws in her portly sides as you work the flush mother over at your own pace.";
			WaitLineBreak;
			say "     You bounce her bulky figure along with your snout with supreme ease, enraptured by the blissful sensation of yours and Kathy's gravid bodies caressing one another. You purr with glee as your fluffy furry forms and swollen tits glide against one another while Ava suckles your [cunt size desc of player] sex. This blissful choir of sensations roils inside your elated being till at last you feel her well-trained cunt almost pinch down on your muzzle as she cums hot rivulets of feminine juice down your feline face. As she howls with release, you feel her slouch in your grasp as the spent kitty collapses face first into the welcoming embrace of your lower body. Her short fall is thankful cushioned by your collective pudge acting as a natural mattress. Utterly sated, the purring tiny lioness snuggles her portly frame atop you, kissing and kneading your fur as your own climax approaches. You can feel your margay cunt throbs with ecstasy while you grab hold of Ava's head with your rear paws and greedily push her feline muzzle deep into your [cunt size desc of player] cunt like a cheap sex toy.";
			say "     You sink your hind claws into her fur, relishing in the power you have over the big tauress as the pleasure and tension building within your well-loved sex as you finally climax with a satisfied feral rumble and your cum hot trickles of girl cum on Ava's snout. To her credit, she doesn't protest in the slightest, if anything the horny kitten sounds quite pleased with her sticky treat. She even goes so far as to lick you sopping feline nethers half clean. What a good daughter you've raised, you quip to Kathy as the pair of you lie back together, letting Kathy rest herself on your bed-sized lower belly for comfort. 'Why thank you sweetie, I'd like to think being a mom suits us both,' Kathy replies, nuzzling your [bodytype of player] tauric body. 'Oh, Ava when you're done back there, can you clean mommy too?' Kathy yawns, stretching out like a common house cat on your tummy before conking out on top of you.";
			WaitLineBreak;
			say "     'Yes Mom,' Ava hums her voice nearly inaudible, over her content purrs as she gently licks the bit of girl juices from your fur. With each pass of her inquisitive tongue, your catty mind can't repress the urge to mewl affectionately at her touch. Once she's done, Ava pokes her head up from under your belly licking her lips saying, 'Ok I'm done, Mom are you, oh,' as she sees Kathy passed out form sprawling over you. Ava blinks then shrugs saying, 'And she's napping, again, great I wanted to... oh nevermind,' while scooping Kathy off of you and holds her close to her bosom like a child. 'I'll go take mommy to Drake. I'd bring her upstairs myself, but I kind of,' Ava pauses to guiltily twiddle her thumbs, 'almost broke the walkway last time I tried. Eh, be right back.' She nods to the Last Chance before popping out the courtyard. In the distance, you can hear her and Drake talk in the background, but you can't make out what they're saying. Moments later after you've collected yourself, Ava's pops back in saying, 'Sorry about that, so, um what's up with you?'";
			Now Margay Breeding is resolved;
			increase Hunger of Ava by 1;
			now Mirror mirror on Ava's wall is active;
		-- "You can't but want to.":
			say "     Kathy, you have no idea how she's doing that, but she has got to show you! You exclaim, more than a little impressed at the control the gravid lioness has over her body. 'Well, come here then lie down on your back and get comfortable,' Kathy coos, patting the space between her and Ava as the two part ways for you. You smile back at the pair, waddling toward them, sighing with contentment as your paws grace the cushiony mattresses. Oh, you really needed this, you remark, flopping down on your elongated back. A part of you is more than a little glad not just for the chance to get off your paws for a moment, but also at the opportunity to lay on a real mattress again, rather than some stinky cot that's probably ninety percent asbestos and ten percent compacted dust at this point. 'I'll bet,' Kathy says, snuggling her soft tawny tum beside yours. 'I mean, just look at your poor paw pads.' She remarks, gently cupping your dominant forepaw in her comparatively tiny mitts as she makes a show of inspecting your pads. 'They're so worn and shiny from all the walking you must be doing to get here.'";
			say "     'And your poor fur is being ruined by the road around here, I mean just look at that little spot of fur in the middle of your paw.' She says, tussling the center of pad with her pointer finger. 'You know it's supposed to push out a bit right? You don't need to shave it.' Kathy sighs, like a mother fussing over their child on photo day as she flexes your toe beans. 'Really dear,' Kathy tuts, massaging your catty digits, 'you should be taking it easy in your condition. It's a wonder you can keep your beautiful figure,' Kathy jokes, rubbing her fingers over your swollen peets. Frowning, you tell her your paws aren't [bold type]THAT[roman type] bad. 'Ha sweetie,' Kathy smirks, giving your feral feet a quick kiss, 'I've been taking care of my paws longer than you've had yours. Trust me, you're walking on concrete too much. This body of yours,' she hums, patting your doughy animalistic tummy, 'is meant to be out here on the plains walking on the nice soft soil, not that crushed up rock the ";
			if "Touched by Madness" is listed in feats of Player:
				say "gangly legged no furs ";
			else:
				say "the stink monkeys ";
			say "love soiling so much. Why just look at Ava's peet's,' Kathy gestures to her adopted daughter as she cuddles her larger body next to you.";
			WaitLineBreak;
			say "     Practically on cue, Ava flashes her forepaws at you. You note, her pads are plush with thick padding of shiny black fur with the sharp tips of claws just barely visible. Comparing your paws to hers, you do have to almost begrudgingly admit her fur is a bit fluffer than yours, and her claws definitely have a tad more edge. 'See, that is how kitties['] paws are supposed to look, clean, fluffy, and with a nice tuft of fuzz in the middle.' She continues, in a chastising yet motherly tone that makes you feel a bit self conscious. 'Oh, sorry,' Kathy furls her saucer-like ears, 'that came out all wrong dear. I sometimes get a bit of, oh what does Drake call it,' she bobs her head thoughtfully, 'mommy brain?' Kathy says, perhaps picking up on your mood. Confused, you raise a questioning eyebrow to her and parrot the odd phrase. 'Oh you know, the urge to mother people and praise my wonderful, perfect little Ava here.' Kathy gushes. 'Aw, thanks Mom,' Ava purrs through a kind of smile that could launch a thousand ships, obviously happy to receive her adoptive mother's accolades.";
			say "     Ok but what does that have to do with you know, you posit with a confused look on your face as you tap your anthro fingers along the linea nigra of your upper belly. 'More than you'd think, getting a little flustered is a great way to wake up the kids without even touching yourself. Well that, and the look on your face when you pout is just so adorable,' Kathy teases, as she tilts her head at a cute angle and flashes you a well-meaning blep. 'But,' Kathy pauses running a paw over your plush pelt swaddling your growing bump, 'it does seem like yours need a little more of a push to wake up. Not that I blame them, they must be very comfy.' Kathy jokes, giving your [bodytype of player] flanks a playful kiss. 'Here let me show you.' Kathy purrs, rapping her sharp talon in a gentle tattoo along the taut flesh of your anthro belly. 'Oh and Ava, do you mind helping mommy with your friend's lower body, someone really needs to show them how to groom themselves.' Kathy adds, reaching out with her dexterous tail not bothering to ask your permission or listen for Ava's response.";
			WaitLineBreak;
			say "     She pulls your nondominant forelimb to her chest with a gentle tug, rumbling to herself like a hunting cat at the sight before lapping at your dusty pads. 'Really can I?' Ava pants, eyeing up your voluptuous feral tummy splayed out before her in an ostentatious fertile dome. You nod, happy to let Ava play along while Kathy massages your hard working paw with her spiny tongue. You have to admit, a part of you rather likes the feeling of her soft bristles scrubbing and counting to the contours of your [bodytype of player] paws is like a grindstone for the soul, polishing off the dust and fatigue of the road. 'Thank you,' Ava purrs, scrunching herself down below your waist, she pauses to look at you then your pads saying, 'Wow! Mom's right, it does look like you've been shaving your paws.' Dang it Ava, not you too,";
			if "Touched by Madness" is listed in feats of Player:
				say "you don't shave your feet! You're not a freaking halfling, ";
			say "you grumble. '*Tzt*, don't snap at Ava, you're setting a bad example for your little ones,' Kathy chides, popping a feline toe out of her muzzle, while pinching your elbow playfully. Huffing under your breath, a part of you wants to tell her that Ava shouldn't insult your paws then. It's not like everyone can just sit on their fat ass and ride out the nanite apocalypse with their fucking boi-toy sugar daddy waiting on them hand and foot. But, you know that's just the mood swings and hormones talking. 'Sorry,' Ava cuts in, 'I was just thinking I have some lotions for your pads that could bring back their spring. If you want I can even polish your claws and, oh,' Ava proffers, taking hold of your left hind-paw with her massive thumb and index fingers.";
			WaitLineBreak;
			say "     'I can see that your paw is stiff. Here, let me just,' Ava says, pressing down on the complex bone structure of your foot till your paw has done a complete one-eighty. Your bone, cartilage, and sinew all pop far too loud for something to not have been broken. You muse, looking at the unnatural angle your feral mitts have been forced into and you brace yourself for the pain to hit. None comes through as you flex your paw on a joint you never knew you had, your ankles feel better than before like you'd been walking wrong your whole life. A part of you wants to ask her how she knew what to do, but you already know the answer. She's been dealing with this body longer than you have. 'Better?' Ava asks with a cheerful grin, as her voice punctuates your thoughts. Nodding, you tell her much, much better actually. 'Good, you should really stretch out more,' Ava beams, rubbing her soft padded feet along the supple curve of your resplendent feral bump. She gently strokes the edges of your fattened womb, massaging your growing fecundity with a practice grace.";
			say "     Ava sinks her claws into your ripened fluffy feral middle cooing. 'Wow you're getting so big and soft, how many babies do you think are in here?' You shrug, pawing at your pregnant tauric belly with your free foreleg. You tell Ava you're never really sure till the moment comes, but it's likely more than one. Hugging your rows of ample dugs with your feral legs, you remark there's no way an infection would be so endowed in the chest department if it weren't baking more than more than one bun in the oven. 'HA, Ava can you imagine if they had one big fat taur in there, they definitely got the padding to hide one.' Kathy jokes, jiggling your plump anthro body for emphasis. 'Oh what about a huge gooey wyvern egg, or a big bubbly baby behemoth?' Ava ribs excitedly petting your feral belly. Please don't joke like that, you interject, fondling what you suspect is the outline of one of your many unborn progeny with one of your feral limbs. You really don't want to think about what it would be like to pass a baby or egg this big.";
			WaitLineBreak;
			say "     'Oh I think you could do it sweetie, with a body like this,' Kathy purrs, running her paws down your exotic waist, cupping the lip of your distended womb. 'I bet your babies will just walk right out when the time is right. Also paw,' Kathy directs, gesturing your other forelimb. Shrugging, you proffer her your paws telling her maybe-,. *OOF*, you gasp for breath feeling a firm kick coming from your anthropomorphic middle. Shock and the heat of embarrassment floods your mind alongside a sudden release of maternal hormones and instincts as your brood responds to Kathy's treatment. Gazing down at your expansive body on full display before you, you can see your bloated wombs quake and jiggle with sudden activity. As a dozen little paw shaped bumps push against your supple body, it almost looks and feels as if your wombs are recreating a scene from a famous movie about aliens. Enthralled by the sight, you can't resist rubbing a curious paw over your active litter. You have to admit Kathy was right, this does feel weird.";
			say "     You thin to yourself, watching your blubbery wombs sway in your lap of their own accord, and enjoying on some level the tender sensation of fecund bump brushing your [breast size desc of Player] tits. Running a hand over one of their little pawbs, your heart is sent a flutter as the firm kicks of your brood echo along your hypertrophic wombs. Your nanite-warped mind likening the feeling to something between a gentle massage and butterflies in your stomach. Smirking at the sensation, you trace a clawed finger along the surface of your taut pelt. The lingering human part of your brain struggles to process the flood of sensations from your exotic nerves and the giddy warmth of your nanite infused pregnancy hormones sufficing your bloodstream. Your thoughts drift from primal sensations of pride at the size of your prospective litter, to feelings of a maternal purpose being fulfilled as you caress your quickening litters. Some section of your warped mind can't help but pant happily like the seeded beast you are.";
			WaitLineBreak;
			say "     A cynical section of your mind is unsure how much of your emotions are yours or some machinations of the nanites forcing you to enjoy your gravidity. Then again, does it really matter where such joy comes from if it makes you feel this good? You wonder, running your paw-hands over the silky fur of your swollen baby bumps as the mother-daughter pair, completely oblivious to this line of thought, continues to stroke and caress your gravid form. They purr happily to themselves as their paws move their way down to your furry bosoms, teasing your swollen milk-tank with their silken pads, while their feline tongues fondly lap at your pelt in a primal show of affection. The pair works their fuzzy digits over your impressive collection of nips, kneading and groping your erect teats between their padded fingertips. Your fecund body, barely needing any stimulation as it is to express itself, responds to their touches with a small trickle of warm budding up from each of your gold, cream, and black spotted tits.";
			say "     And like the hungry kitties they are, your feline attendants['] eyes narrow and lock onto your creamy bounty while their tummies rumble at the sight of the pearly white beads. Go on, you coo, stroking the pair's heads with your anthro hands as you invite them to indulge. Mewling affectionately, the two milk sluts latch on to your prodigious chest with a pair of lewd kisses as they pop a leaking tit between their thin ebon lips. 'Delicious,' Kathy murmurs, between suckles. 'Mh, so thick and rich,' Ava hums through her teeth barely even stopping to drink so she can speak. 'You might even taste better than mommy,' Ava continues, pulling herself closer to you; till you can feel her own plump frame brush up against your chubby gravid sides. She works her paw down your animalistic stomach in teasing circles, till her feline fingers knead the soft fur of your feral mound. While Kathy suckles away chuffing in either agreement with Ava, or too engrossed in feeding to care.";
			WaitLineBreak;
			say "     The pregnant lioness seems lost in her world as she drinks from your boundless supply of fresh milk. You can even feel her already over-packed belly rounding out from the sheer volume of cream she gulps down without care for her waistline. You make no move to stop her. One part of you wants to see just how much Kathy can handle. Another is just relieved to shed a few gallons of cream if only for a few hours, before your overly productive body makes more. Though, out of the corner of your eye, you watch as the former showgirl, purring happily at your offering, tucks a sneaky tail between her thunder thighs. Your enhanced feline hearing picks up the soft sounds of her shamelessly playing with her lush feline sex while she chows down like a proper hedonist. You can't say you'd blame her, treating yourself to a nice warm milky meal while having a quick fap, or better yet finding a nice well-endowed stud or hyper herm to dick you down doesn't sound too bad.";
			say "     In fact, you can't see why you shouldn't, not when you have such a wonderful meal right below your chin, and a pliable horny cat girl on each arm. Why not indulge in your own supply? You remark internally, slipping your arm free from Ava's grip, you take hold of uppermost [breast size desc of Player] tits in your hybrid paw guiding it to your waiting lips. You lap and suckle at your engorged leaky teat, as a gush of sweet rich creamy fluid splays across your delighted palate. You tease the lips of your [cunt size desc of player] pussy with your billowing furry tail. Almost giggling at the sensation of the cushiony velvety soft fur teasing the entrance of your fertile taur pussy like a feather duster plays so wonderfully off your hormone laden senses. You barely even have to try to get yourself worked up. You can feel tiny rivets of feminine fluid start dripping from your fertile feral flower in a light trickle. Rumbling with anticipation even though it causes milk to leak from your feline muzzle.";
			WaitLineBreak;
			say "     You coil your tail in a pseudo-knot like Ava did when you first got to know her. This time though, you get to enjoy it at your own pace, you muse, sumptuously gliding your faux-knot over your needy feline pussy lips till a cool yet pleasing shiver runs up your tailbones as your rear-mounted limb drips with natural lubricant as it absorbs a bit from chill air. Ah this seems nice and ready now, you think to yourself guiding your tauric tail between your matronly nether lips. You can sense your plush pussy parting perfectly at the welcome intrusion while still hugging your tail like a living mold. Your ecstatic nerves flare with delight as your heightened senses detect every twist and turn of your flexible limb as you bury yards of malleable tail into your hungry snatch. Accompanied by a sweet sensation of fullness from your upper body as your greedy stomach fills with quarts upon quarts of rich mothers milk.";
			say "     It's pleasantly warm and the raw pressure on your sensitive physique battles for your mental focus with lascivious strokes of your false knot as you indulge your dual hungers alongside the feline pair glutting themselves on your fertile offerings. Your tainted mind can barely process the raw primal need to feed interspersed with the visceral desire to breed, as you glut yourself on your exotic assets with wild abandon. You find yourself purring with elation as you feel your gut swell with liters of fatty milk even as morphic limbs exotic ministrations wrack your animalist body with waves of feral bliss. You barely even notice your infectious mood spreading to Ava. As she flexes her razor sharp claws across your graceful curves. Her feline finger digs deep furrows in the sensitive folds of your fecund form. The sensation of fear tinged by adrenaline intersplices with a vein of excitement like them moments before the roller coaster is about to take a plunge and races through you.";
			WaitLineBreak;
			say "     While her tail flicks back and forth behind her like a crude metronome, each motion the echo of a thought or suppressed desire. Any other time, you wonder what she's thinking, but the pleased dreamy simple look on her feline visage as she laps at your feral tits while milk runs down her chin in rivets. You know it's you, you opine, as the effervescent tauress fantastically lengthy limb winds itself in a familiar knot, before roughly raw dogging herself with her expansive tail. Ava's room echoes with sounds of feline contentment along gentle sloshing of your collective milk-stuffed bodies. As the three of you shamelessly fap and feast on your maternal bounty. You can barely contain the sense of elation welling inside yourself as you litter and Kathy's paw at one another through your hyper sensitive skin. You'd liken the feeling somewhere between a exotic massage and the kisses of butterfly wings dancing on your over stretched fur complements the thorough tail fucking your giving yourself.";
			say "     You can only imagine what it would be like if Ava was knocked up as well. How wonderful it would be to rub your ripe forms together while suckled from each other. You can just picture how delightful it would feel to your silken pelt sliding against each other as your kittens paw at one another through your over taut pelts. As the trio of you fall deeper into each other's embrace, tail jilling with bestial abandon while your body swells out with milk and nanite-enhanced life. It would be such a great look for Ava, you think to yourself. Imagining a nice distended womb between Ava's legs wobbling with every step she takes as she struggles to walk. Her plump anthro belly nestled between her giant gold, white, and black tits. As her midriff is pushed out into a cute preggy torpedo with a little outie navel in the center. You muse, running a forepaw down her milk stuffed pooch, picturing her swelling up with a litter of her own and how adorable she'd look once she starts showing.";
			WaitLineBreak;
			say "     You can just imagine her pinned down by a massive litter of margay taurs. Her body barely even able to support her huge litter and ponderous breasts as she swells up like you and Kathy have. Along with all the fun you, and perhaps Kathy as well, would have with her as her pregnancy hormones kick in and she starts getting desperate. You ponder to yourself, wondering how nice it would feel to rest your belly against hers, as you give her a good fucking. The thought sends talon curling shivers down your spine mixing with the reverberations of your own vigorous tail fapping. You know you can't hold out much longer. The innervation of your dexterous tail, the supple motility of your brood, and the rich cream teasing your all combine into a fine emulsion of pleasure nipping at the back of your mind. You can feel your waning resistance eroding just as your body is ravished by the mass of tail stuffing your [cunt size desc of player] sex.";
			say "     Still, you press back against the swell of bubbling lust welling in your core as your expansive sex clenches about the exotic shape of your knotted tail to edge out just a few more moments of bliss. You can practically feel each bump and ridge of your billowing limb teasing your eager passage as you pound yourself with increasingly rough thrusts of your dexterous tail. Your pregnancy-enhanced body bounces in a delightfully tandem with each motion. Stealing a glance at jiggling fecund figure, you're unable to repress the feelings of hedonistic joy at bouncing bumps and collection rubbing against your eager playmates. While the attentive mother-daughter pair, lovingly stoke your pillowy pelt and heaving tits as they press their delectable assets against your own. You can't resist cooing at the way the sinfully sweet sensation of their adamantine-hard nips and razor sharp talons glide along your sensitive [bodytype of player] being.";
			WaitLineBreak;
			say "     The heady brew of bliss dances across your exotic nerves like fingers of static rapture playing across your tauric form in passionate crescendo. Till at last you, Kathy, and Ava roar with bestial delight as your climax washes over you like a wild tide. Bring with it a sweet balmy coolness that gently sweeps through burning all-consuming need from your loins as you cum sticky ribbons of girl jizz down your feral back side. With a flick of your tail, you wipe most of it away, as the girls, sporting dreamy looks on their predatory muzzles, collapse into your bosom. Sighing contentedly, the happy gluttons nuzzle their feline cheeks against your plush sides in a base animalistic show of affection. Smiling down at them you ask the kitties if they're full, while rubbing their fuzzy heads. They nod in unison. Good, the three of you should do this again sometime, you proffer. 'Really?' Ava hums, looking up at you with hopeful eyes. You bob your head in the affirmative telling her of course, what does she think, eh Kathy? You enquire looking down at the tiny lioness only to find she's passed out in your arms.";
			say "     'Looks like mommy fell asleep, again' Ava pouts, dipping her ears in dismay. '*Sigh* She always does this. Here, let me take her to da-, Drake, he can tuck her in.' Ava says, collecting the mini kitty in her arms like a tired babe, sounding more than than a little bummed out. 'I'll be right back,' Ava grumbles heading out the door. A few seconds later and you can hear her and Drake speaking in the distance for a spell, before she returns with a grin at the sight of your sated form reclining in her bed. 'So, um what do you want to do now?' She asks.";
			Now Margay Breeding is resolved;
			increase Hunger of Ava by 1;
			now Mirror mirror on Ava's wall is active;
		-- "You're not comfortable with this.":
			say "     Blushing in embarrassment as much as a giant furry tauress can, you tell Ava you're not really comfortable with this situation, and duck out the door before they can reply.";
			Now Margay Breeding is resolved;
			now Mirror mirror on Ava's wall is active;
			move player to Last Chance Parking Lot;
		-- "Nope out.":
			say "     Ya this is all way too weird for you. You reply, shutting the door and backing away before either of them can say a word.";
			now Margay Breeding is resolved;
			now Lust of Ava is 99;
			move player to Last Chance Parking Lot;



Table of GameEventIDs (continued)
Object	Name
Mirror mirror on Ava's wall	"Mirror mirror on Ava's wall"


Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Mirror mirror on Ava's wall"	Mirror mirror on Ava's wall	"[EventConditions_Mirror_mirror_on_Ava's_wall]"	Last Chance Auto Body	2500	2	10

to say EventConditions_Mirror_mirror_on_Ava's_wall:
	if Lust of Ava is 3 and BodyName of player is "Margay Taur" and Player is pure and Player is impreg_now and ScaleValue of Player is 5 and player is female and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Mirror mirror on Ava's wall is a situation.
ResolveFunction of Mirror mirror on Ava's wall is "[ResolveEvent Mirror_mirror_on_Ava's_wall]".
Sarea of Mirror mirror on Ava's wall is "Nowhere".
Mirror mirror on Ava's wall is inactive.

to say ResolveEvent Mirror_mirror_on_Ava's_wall:
	say "     On your way into Ava's place, you notice her door is wide open and a long fresh scuff marks marring the walkway leading into her abode. Curious, you pop your head through the door to ask Ava what's up. Once you pass the threshold though, you spy the tauress posing in front of a large full body mirror. Though her back is turned to you, you can vaguely see her arch her spine so that her belly pushes out prominently. You almost ask her what she's doing as your image drifts across the mirror's surface. With a start, Ava yelps as she whirls around doing her best to hide the mirror behind her bulky frame. 'Uh, hi there, I didn't hear you come in,' Ava squeaks. Gesturing with your thumb, you tell her that the door was open. 'It was?' Ava says, peering behind. You nod. 'Oh, never mind then, what's up with you?' Ava asks, somewhat nervously. Not much, you reply, you were just a little curious about what the story behind that mirror is though. You answer, motioning to the oversized thing. 'It's um,' Ava pauses to scratch the back of her feline head.";
	say "     'It's something daddy found a while back, he said he was trying to use it in a... oh what did he call it,' Ava pause to bob her head, 'a solar cooker I think? He never got around to it. He said something about the glass was wrong, or that it had.' Ava taps her chin thoughtfully, 'Lead in it? I wasn't paying close attention,' she shrugs, 'so he said I could have it.' Justifiably intrigued, you ask her what she is doing with it, noting her odd pose when you walked in. 'I was, well,' Ava blushes, 'wondering what I'd look like if I had a tummy like you and mommy.' Really, why's that, you query, eyeing up Ava's physique. 'Ya well, I see you and her waddling around with those cute tummies and I am kind of curious what I'd look like too,' Ava says, turning her back top and gesturing for you to join her by the mirror. Marching up beside her, you watch as she arches out her back so that her belly puffs into a soft dome as she massages her tummy fur, saying. 'So, do you like this?'";
	WaitLineBreak;
	say "     Following the graceful arc of her paw-like hands, some section of your mind does admit, her pose does look rather fetching on her. Be it the way her cute midriff parts her rows of exotic breasts, the supple impression those same milk tanks make as they rest comfortably along the plush bulge of her anthro core, or the dreamy gaze in her eyes as cradles the exaggerated curves of her voluptuous anthro half. All-and-all, not a bad look for her, even if she's missing the graceful bit of sway in her lower body you yourself are currently sporting to complete the look. You absentmindedly run your dominate forepaw over the artful swell of your bestial tum. Still though, a nagging cynical segment of your mind pontificates, should you really be encouraging this? Ava's not even a year old, what manner of life would her kittens have out here, what kind of mother would she be at her age?";
	say "     Perhaps, it would be best if you nicked this potentially self-destructive line of thought in the bud before Ava ends up making what could be the worst mistake of her life. Then again, you muse, as you look down at your own growing bundle of joy, if she had a more experienced mother like yourself to show her the ropes would it really be that awful? Who knows, you think to yourself, it could be kind of interesting to guide her through things. Not to mention, all the fun the two of you could have as Ava gets into the later phases of pregnancy. She'd look absolutely adorable once she starts getting extra needy and hormonal. You think to yourself, picturing the fluffy cat taur bending over for you and begging you to take her soft gravid form.";
	LineBreak;
	say "     [bold type]With all this in mind, how do you respond?[roman type]";
	let Path_to_broodmotherdom_Choices be a list of text;
	add "Try to nip this in the bud." to Path_to_broodmotherdom_Choices;
	add "She isn't ready." to Path_to_broodmotherdom_Choices;
	add "Sexy as hell." to Path_to_broodmotherdom_Choices;
	let Path_to_broodmotherdom_Choice be what the player chooses from Path_to_broodmotherdom_Choices;
	if Path_to_broodmotherdom_Choice is:
		-- "Try to nip this in the bud.":
			say "     Adopting a calm measured tone, you politely break it to Ava that you doubt that she will ever have kids, much less take care of them properly at her age. You honestly can't see her bending over for a man, a herm, or random oviparous mutant, so she probably shouldn't worry about it too much. 'Ya you're right,' Ava sighs, sucking her gut in. 'I shouldn't be thinking about this weird stuff. I'm sorry I brought it up [Name of Player], I don't know what came over me.' She mews dejectedly. ";
			if HP of Anthony >= 1:
				say "Offering Ava a reassuring smile, you tell her not to beat herself up. The nanites are quite adept at putting strange intrusive thoughts in people's heads. Why they once tried to get you fuck a cow! As in the dumb four-legged feral animal kind, and not the two legged versions slumming it up at the Park, or the ones living on the local farms. 'Ew, that's so weird, why would they do that, who would that even work!?' Ava gags as hackles of her back rise in disgust. Shrugging, you tell her you're not sure, but it's probably to help them spread. Actually, now that you think about it, that probably explains why people are developing bi and pan curious tendencies all of a sudden too. Or why people's standards are set lower than limbo-bar at an army ant convention.";
			now Mirror mirror on Ava's wall is resolved;
			now Penny for your thoughts is active;
			now HP of Ava is 99;
		-- "She isn't ready.":
			say "     Thinking on it, you tactfully tell Ava that despite how cute she might look knocked up. You just don't think she's ready for the responsibility, yet. 'I don't understand, what do you mean?' Ava pouts, flicks her ears at odd angles. Well for starters, you ask her, if the kitten comes out as big as she is, where are they going to sleep? Her room could probably hold one or two at best. You lecture, gesturing to Ava's living area. Then you mention the issue of food, sure your kids can scavenge just fine, but that's because you're constantly on the move, or letting them stay somewhere safe. How is she going to keep them fed if she doesn't leave The Chance? 'Uh,' Ava pauses to tap her chin, 'maybe Daddy could help,' she replies, swishing her tail on the floor behind her in an aggravated tattoo. Shaking your head you tell her how selfish that sounds, the guy is already housing and feeding her, for free. Throwing more kittens on his lap especially when he's expecting a litter of his own soon is well kind of a dick move.'";
			say "     'Ya... you're right. I guess. I should wait,' Ava huffs. Nodding you tell her that's for the best, no point in tying herself down with kids so early in life. She can always have kids later, after this whole nanite situation dies down. 'Oh well, I guess so,' Ava pauses and runs her hands over her tummy fur, 'I was so caught in the fun I was having with mommy and you. I wasn't thinking about what it would take for someone in my situation to bring kittens into the world,' Ava mews mournfully as she furls her ears. Patting her on the back, you again tell her not to fret. You're sure she'll make a great mom once she's got a few more years under her belt. 'You know, you're right,' Ava beams, as she leans into your touch. 'I keep forgetting you, mommy, and da-,' she stops and takes a breath before correcting herself.";
			WaitLineBreak;
			say "     'I mean Drake, are way older than me. You guys probably know so much more about the world and how to raise kids. I-I-I shouldn't rush into it should I?' Nodding, you tell her that's true, but when she's finally ready, and maybe she has a place of her own. She could absolutely start a family. You'd love to set up a playdate with her kittens and your own kids, or potentially grandkids with the rate you're going one day. And you wouldn't be opposed to having a little [']mommy time['] with her when she's ready. You tease, sneaking a quick kiss on her cheek. 'Ah, thanks,' Ava purrs happily.";
			now Mirror mirror on Ava's wall is resolved;
			now Penny for your thoughts is active;
		-- "Sexy as hell.":
			if "Horny Bastard" is listed in feats of player and HermList is not banned:
				say "     Ruminating on it, you tell Ava that you think she'd look absolutely stunning, waddling around with a pair of big preggy taur tums, brushing your tail against her lower belly. 'Really? You think so?' Ava purrs happily, pressing out her midriff as far as she can while she poses for your playful inspection. Of course, but she needs to make sure to get knocked up with a nice big litter. With a body like this, you tease, tracing a clawed finger along the delectable curve of Ava's prodigious mammaries, she needs to make sure her mate is the right size. She can't just go around with a puny litter of tiny latex foxes. She would barely even be able to see them under all her cute pudge, you joke pinching Ava's love handles. Maybe you can find her extra hung Wolftaur, knots are pretty amazing. Once she's ridden on a good one you doubt she'll ever want to go back. Plus, you bet she'd look adorable weighed down by a litter of cat-dogs weighing you down. You hear they're pretty frisky too. You tease. 'I-I um don't like guys or canines,' Ava peeps.";
				say "     Well there are plenty of other options, the two of you could go downtown and catch a panther taur. Those [']girls['] are huge! Well not as big as the pair of you, you joke, patting Ava's animalistic flanks with your tail. But they've got these fat, pringle-can size dicks and huge fluffy black balls. Just imagine how precious her kittens would look as margay panthers? You ramble already imagining the fun you and Ava could have taking turns dominating a big sexy Panthertaur. '[Name of Player], I-,' She says, trying to cut in, but you talk over her as you're too lost in your own fantasy to fully comprehend her protests. Well if she doesn't like black cats, then the two of you can go to the zoo. They have these [']ladies['] called Tigertaurs there. They're like the Panthertaurs, but better, with lush milky tits, massive dicks, and they just fuck for hours on end. '[Name of Player]. That's not what-,' Ava peeps, in an attempt to get a word in edgeways.";
				WaitLineBreak;
				if HP of Orthas >= 2:
					say "     It'd be wonderful if the two of you could subdue a whole pack of them. The pair of you could spend the whole day laying on our backs, getting serviced by an entire pride of taurs as they use your bodies to their heart's content till our every hole is packed to the brim with spunk, your bodies hopelessly swollen with dozens of their cubs and milk as they-, '[Name of Player]!' Ava screams, shocking you out of your fantasy. What!? You grumble. 'I don't like dicks,' Ava says flatly. Well, that makes things difficult. You pause to ponder what you know of the infected reproduction till your mental rolodex eventually lands on the anthro dragoness guarding Trevor labs. Well she could go see Orthas then, you proffer. 'Who or what's an Orthas?' Ava asks, flicking her ears. Gesturing towards the city, you tell Ava that they're an anthro black dragoness that works at Trevor labs before the infection he-, er she... You start to trail off, catching yourself before revealing Orthas was a man, knowing that Ava will immediately shoot your idea down. You instead tell Ava that they have ovipositor in their cunt and-.";
					say "     'Wait, an ovi what?' Ava questions, tilting her head in confusion. An Ovipositor, it's this, well tentacle sort of thing in her pussy she can use to lay eggs inside people. You explain, giving her a condensed version of how Orthas's unique biology came to be and its requirements. You go on to tell her she might like a big eggy tummy. It'd be a nice basic pregnancy for her, no kicking or squirming, just a bunch of quiet eggs nestled in your womb. True Orthas might not be able to lay enough eggs to give her a real bump like Kathy's, but everyone has to start somewhere. You proffer. 'That would be nice, I am not sure I'd want to be as big as you or mommy on my first try. Maybe you can introduce me one day?' Ava says patting her lower belly with her paw, no doubt imagining having a clutch of tauric dragon-kitty taurs growing inside her.";
					now Mirror mirror on Ava's wall is resolved;
					now Penny for your thoughts is active;
					increase hunger of Ava by 1;
				else:
					say "     It'd be wonderful if the pair of you could subdue a whole pack of them. You two could spend the whole day together laying on your backs, getting serviced by an entire pride of taurs as they use your bodies to their heart's content till your every hole is packed to the brim with spunk and your bodies hopelessly swollen with dozens of their cubs and milk as they-. '[Name of Player]!' Ava screams, shocking you out of your fantasy. What!? You grumble. 'I don't like dicks,' Ava says flatly. Well that makes things difficult, huh, you pause to ponder what you know of the infected reproduction till you recall some of the more exotic infected are oviparous. True, many of them may not be to Ava's very narrow likings.";
					say "     Regardless, you suggest that a nice simple eggy pregnancy might be a bit easier on a first timer like her than live young. 'Hm, I didn't know there were ferals that did that,' Ava remarks in a thoughtful tone. Shrugging, you tell her she'd be surprised at some of the weird stuff the nanites have cooked up. 'Ha ya,' Ava titters, patting her tummy fur, 'but it might be worth a try one day.'";
					now Mirror mirror on Ava's wall is resolved;
					now Penny for your thoughts is active;
					increase hunger of Ava by 1;
			else:
				say "     Taking on a warm and caring smile, you tell Ava that of course she'd look stunning with a bun or two in the oven. Why, you'd bet she'd rock the cutest bumps in town. Well second cutest, you add with a proud trill running your dominant hand over the supple swell of your anthro midriff. But, you note gazing appreciatively at your larger lover's natural voluptuous curves, she's also absolutely adorable just the way she is. She should never feel any pressure to change herself to please you, or anyone else for that matter. 'Really?' Ava mews with a pleased trill as she corrects her posture. Of course, you tell her as you saunter her next to her and hook your forelegs around her tauric waist. You pull yourself close and affectionately nuzzle your catty chin against soft fuzzy chest, telling her. She's a kind, sweet, innocent [']little['] kitten, anyone would be lucky to have her in their lives. 'Aw,' Ava sniffles, 'thanks [name of player], you really know how to make a girl feel loved.'";
				say "     Ava purrs, as she returns your tender gesture and rubs her massive chin along the top of your head in a show of feline appreciation. Nodding, you nestle yourself against her plush core and tilt your head upwards, wedging your predatory muzzle between her rows of luscious M-cups and flash her a sweet catty blep, telling her not to worry about it. She deserves a little goodness in her life after all she's been through. 'Thanks,' Ava mews almost on the verge of joyful tears, 'You, mommy, and Da-, Drake, you-you're all just the best, you know that? I'm so glad I met you all.' She murmurs, as she pets the small of your upper back with her large paw-like hands. Sh, there-there, no more tears, only smiles, you reply in a comforting octave as you reach up to massage the side of her whiskered cheek. Mrowling in reply, your sweet catty lover's expression visibly brightens into one of pure love and acceptance as you caress her face.";
				WaitLineBreak;
				say "     No further words pass between you two, as the pair of you wrap your anthro arms about one another and simply cuddle in place for minutes more, feeling safe and warm in each other's loving embrace. When you at last build the resolve to let go, you do so almost begrudgingly. Still, the lingering tendrils of heat left behind by your brief encounter clings to your core like the calming rays of the morning sun playing across the whole of your comforted being. You can't say why, but on some level, you feel just a bit certain and prepared for whatever curveball life can throw at you next.";
				now Mirror mirror on Ava's wall is resolved;
				now Penny for your thoughts is active;
				increase hunger of Ava by 1;
				increase humanity of player by 15;
				increase morale of player by 15;



Table of GameEventIDs (continued)
Object	Name
Penny for your thoughts	"Penny for your thoughts" 

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Penny for your thoughts"	Penny for your thoughts	"[EventConditions_Penny_for_your_thoughts]"	Last Chance Auto Body	2500	2	10

to say EventConditions_Penny_for_your_thoughts:
	if Lust of Ava is 3 and player is impreg_now and BodyName of player is "Margay Taur" and Player is pure and Player is female and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Penny for your thoughts is a situation.
ResolveFunction of Penny for your thoughts is "[ResolveEvent Pennyforyourthoughts]". It is inactive.
Sarea of Penny for your thoughts is "Nowhere".
Penny for your thoughts is inactive.

to say ResolveEvent Pennyforyourthoughts:
	say "     'Hey [if Player is not defaultnamed][Name of Player][end if], I have a personal question for you,' Ava asks, eyeing up your fecund figure as you saunter into her room. Shrugging, you tell her to shoot. 'Well, I um,' Ava stammers, as she starts twiddling her fingers nervously, 'I want to know what's it feels like, you know, being a pregnant taur?' Well, now that is a personal question.";
	LineBreak;
	say "     [bold type]How do you respond to this?[roman type][line break]";
	let Fecund_friendsionnaire_Choices be a list of text;
	add "It can be a mixed bag." to Fecund_friendsionnaire_Choices;
	add "You hardly notice it." to Fecund_friendsionnaire_Choices;
	add "You love it." to Fecund_friendsionnaire_Choices;
	let Fecund_friendsionnaire_Choice be what the player chooses from Fecund_friendsionnaire_Choices;
	if Fecund_friendsionnaire_Choice is:
		-- "It can be a mixed bag.":
			say "     Thinking on it, you tell Ava it can be trying at times. True, the nanites may handle things like morning sickness, and you don't have to bother with childcare, or the horror of diaper changing. However, your exotic body still gets a tad worn down from all the extra weight, giving you back aches at times. On top of that, you are always growing a few cup sizes with each litter. The first few sizes may have been fine, and maybe even helped with your body image. Now though, it's almost to the point where you're just ready to stop looking for new bras at this point and embrace the commando lifestyle. 'That doesn't sound fun, I thought you always seemed so happy when you're pregnant,' Ava says with a concerned look on her face as she eyes up your fecund form. Shrugging, you tell Ava that at times it's true, the pregnancy hormones definitely have that effect on you especially when you're horny. You occasionally also have a certain sense of pride at bringing life into the world, but there are a lot of little things about being a gravid taur that make life difficult.";
			say "     'Like what,' Ava queries, swishing her tail nervously. You inform her things like the occasional swelling in your joints you get after walking all day is one thing. The loss of mobility that accompanies your condition creates some of the bigger issues. You tell her, it can be quite difficult to maneuver some of the tight places in the city where everything is designed for [one of]tiny[or]meager[or]puny[or]lesser[at random] bipeds. You have to be on constant alert for narrow passageways lest you get stuck, or rough terrain that could nick your lower body. 'That does sound scary, I can't imagine what that must be like for you. Is there anything you enjoy about though? You keep getting knocked up so you must enjoy something about it.' Ava asks, motioning to your lower half.";
			WaitLineBreak;
			say "     Ruminating on it, you reply a large part of it is due to your heats, which you point out, you have no idea how Ava deals with it, that makes it very hard to keep off the D. 'What's heat,' Ava asks, cocking back her ears. Sighing, you try explaining the estrus cycle, the differences between the human and animal versions to her as well as how the nanites have overcharged it to aid in their propagation. That you routinely have to struggle not to seek out the nearest feline with a dick every couple of days, in order to quench the burning need the nanites force upon you. 'Oh you mean the tingle, dad, er Drake gave me something for that.' Ava replies, sauntering over to one of the tool cabinets and pulls out a bright pink circular pill container. Looking it over, you instantly recognize the design as generic birth control pills, like the ones schools or women's health groups occasionally hand out. You surmise Drake must be giving them Ava to keep her heats or [']the tingle['] as she childishly calls it in check.";
			say "     As for what you enjoy or at least find the most useful though, you tell it would have to be the effect it has on your lactation. Already, you can almost entirely slake your thirst on your own supply, but when you're expecting your rich cream becomes even more nourishing and seems to improve your nanite-induced healing factor. 'That does sound super useful,' Ava says, sounding a tad impressed with your ingenuity, but also a little let down by your answers.";
			now Penny for your thoughts is resolved;
			now Broodmother threshold is active;
		-- "You hardly notice it.":
			say "     Wait, you're pregnant again, you ask looking down at your slightly swollen anthro half and notice for the first time the subtle swell of your tummy. Oh guess you are, you chuckle. Hey babies didn't see you guys down there, you jokingly as you lift the weight of your gravid upper womb in your paws as if to confirm its existence. 'Huh, how do you not notice something that big?' Ava asks, tilting her head questioningly. Shrugging, you tell her you're not sure, the nanites sort of take care of everything, so you never really have to think about a pregnancy until it's time to give birth. Even then it's pretty tame compared to what people normally had to go through before. You just have to find a place to lay down then let nature take its course. In a few minutes, the kids are full grown so the whole affair it's really anything special, or difficult to you at this point. 'Are you kidding me? You really don't notice a thing.' Ava queries, poking your tummy.";
			say "     Not really, your margay taur body is a bit big boned, so you don't kind of don't notice a few more layers of padding unless someone points it out. Or if you're waddling through a narrow door, then you definitely noticed the extra weight. It's not all bad though, you sort of like the way it feels when your body brushes against something soft, you simper, patting your plush feral womb with your forepaws. One of these days you wouldn't mind heading down to the beach and walking in the surf letting the soft sand cushion your paws, and the gentle cool waves lapping along your taut skin, you trill, running your hands along the supple length of your feral half. 'Hm, that does sound kind of nice. Maybe we could go down there together one day?' Ava asks, with a thoughtful look on her muzzle as her paws drift down to a vacant womb.";
			now Penny for your thoughts is resolved;
			if Hunger of Ava < 3:
				increase Hunger of Ava by 1;
			now Broodmother threshold is active;
		-- "You love it.":
			say "     Ava, it's the most wonderful feeling in the world, you reply, gesturing to your lower half. You eagerly explain how there is so much to love everything about being a preggy taur, from selecting the best mutant to mount you, feeling their mutant cocks stuffing your feral sex, the sensation of them basting your womb with corrupt seed. You gush, placing a paw on your upper belly remembering fondly the encounter that left you in your majestic state. Getting to watch your body grow round and resplendent with life, and how your skin gets so sensitive. She has no idea how good it is just to walk around the plains, feeling those blades of grass ticking your distended womb and feral teats as your regal body sways delightfully with every step. Not to mention, the way it affects the rest of you. You add, gilding your padded fingers to your [breast size desc of player] chest exalting the innervation of your sensitive tits and the sensation of your fur caressing your palms. You remark at the joys of watching your breasts getting larger and milkier with each bountiful litter.";
			say "     Not to mention the hormones, you exclaim. You knew pregnancy was supposed to make you crazy hungry and horny all the time, but the nanites have really kicked things up a notch. Everything just tastes and feels so good now. She has no idea how blissful it is just to have someone pet your fur or massage your paws. 'Really? Then can I, um, touch you?' Ava asks bashfully as she rocks back and forth nervously on her paws. Chuckling mirthfully, you tell her you'd be offended if she didn't. Go on, say hi, you joke, arching your back so that your pregnant belly sticks out more, gesturing for her to have a feel. 'Thank you,' Ava purrs, cupping your furry belly in her massive paw as she massages the tender tissue, 'Tee-hee you're so soft and oh I think I felt a kick. That was a kick right,' Ava gushes excitedly, as midriff squirms lightly at her touch. Yep that was, you gasp feeling the light quickening of your latest litter. 'Do you think they know you're talking about them? Does it feel good?' Ava asks as her paw graces the hem of your tummy.";
			WaitLineBreak;
			say "     You nod, telling her, if only for show, that it's quite an experience having all those little paws kicking inside you as you waddle around town. 'I bet that makes people stare at you a lot,' Ava asks, sounding a touch nervous at the prospect of the center of attention. You might, but a part of you loves having that power over mutants. You get to watch men, women, herms, and creatures of non-specific genders drool over your big milfy body is incredibly affirming in some way. And you know what Ava? You ask, flashing her a toothy grin. 'What?' She replies. You have her to thank for it, this body is just perfect for you. You simper, as you stand on the tips of your toes and steal a quick kiss on her cheek. 'Oh,' Ava blushes, 'I really didn't mean to infect you, but I am glad you like the results.' You do, you purr contentedly giving your tummy a loving pat, and tell her you hope that answers her questions. 'You did, and you've given me something to think about,' Ava remarks thoughtfully as she runs her paws over the cute little curve of her midriff.";
			now Penny for your thoughts is resolved;
			now Broodmother threshold is active;
			if Hunger of Ava < 3:
				increase Hunger of Ava by 1;


Table of GameEventIDs (continued)
Object	Name
Broodmother threshold	"Broodmother threshold"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Broodmother threshold"	Broodmother threshold	"[EventConditions_Broodmother_threshold]"	Last Chance Auto Body	2500	2	10

to say EventConditions_Broodmother_threshold:
	if Lust of Ava is 3 and player is impreg_now and BodyName of player is "Margay Taur" and Player is pure and Player is female and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Broodmother threshold is a situation.
ResolveFunction of Broodmother threshold is "[ResolveEvent Broodmotherthreshold]".
Sarea of Broodmother threshold is "Nowhere".
Broodmother threshold is inactive.

to say ResolveEvent Broodmotherthreshold:
	say "     Heading back to Ava's room, you're hit by a sudden wave of fatigue. All at once, your body and mind feel sluggish and heavy almost like your thoughts were being filtered through dirty cheesecloth. Thinking about it, wandering around town with a tummy full of baby taurs, fun as it may be at times, it does take its toll on you. Given all the hiking and fighting you've been doing, things were bound to catch up with you sooner or later. So, why not take a mommy break with Ava till it passes, you muse. You know she's a bit of a Maiesiophile anyway and would probably enjoy herself. Besides, everyone in your condition deserves to be treated at least once during their pregnancies. At least, that's what you tell yourself pawing up to Ava with an exaggerated pregnant waddle that imparts your sagging lower belly with a cute bit of sway to catch the tauress's eye. 'Uh hey [Name of Player]. How, um, are things hanging?' Ava stammers, her eyes practically glued to your expanding waistlines.";
	say "     Good, you think to yourself loving the effect your gravid form has on her as you run your forepaw over your cub-swollen lower half just to reaffirm majestic presence. You cheekily tell her you just thought you'd come to see your favorite kitty and introduce her to the latest batch of little ones here, rubbing your rounded anthro half for show. Say hi everyone, you tease, giggling as you massage the taut surface of your gelatinous feral middle with your forepaws and, almost on cue, you can feel your little ones stirring as adorable little bumps form on your plump ripe womb. Oof, these guys sure are active today, you titter, tracing the outline of their tiny peets with your pointer claw. 'I'll say,' Ava gushes in a pleased tone as watches you pamper your growing paunch. Smirking at the cute look on the large tauresses's muzzle, you ask her if she would like a feel? You know she wants to, you add patting your gravid tummy provocatively.";
	WaitLineBreak;
	say "     'Can I really?' Ava asks, her tail swishing behind excitedly. Go on, you mouth while nodding your head down south. 'Yay,' Ava replies, prostrating her larger form before your packed wombs. You watch with a bit of mirth as the plump Margay girl cups her padded hand around the lip of your kit-packed baby factory cooing, 'Wow you're getting kind of low, how many do you think you have in there,' as her sizable feline paw glides over the adipose laden outline of your growing kittens. Purring at the touch of her meaty pads brushing up against your doughy tummy, you lean into her caress telling her you're never sure. Your babies have so many limbs and have so much space to hide in it makes it hard to count them all on your own. You tease, patting your distended lower belly and [breast size desc of Player] tits invitingly. 'Would having another set of paws help? We could lay down on my bed and find out together.' Ava says with a lustful twinkle in her eyes as she massages your furry love handles. Purring approvingly, you tell her that sounds heavenly. Your paws could definitely use the break. 'I'll bet, it must be hard moving around the city while lugging around those big tummies,' Ava replies, guiding you over to her makeshift bed.";
	LineBreak;
	say "     [italic type]Author's note: Choosing [']You don't mind['] will lead to paw fisting.[roman type]";
	LineBreak;
	say "     [bold type] How do you respond?[roman type][line break]";
	let threshold_Choices be a list of text;
	add "You don't mind." to threshold_Choices;
	add "Makes you hungry." to threshold_Choices;
	let threshold_Choice be what the player chooses from threshold_Choices;
	if threshold_Choice is:
		-- "You don't mind.":
			say "     It can be, you rumble laying yourself down, belly side up on Ava's taur-sized bed, but you wouldn't give up this experience for the world. You serenade lazily wrapping your paws over your squishy baby bumps and [breast size desc of player] tits that have come to dominate your view. Still there's nothing like being a big preggy taur, you sigh with a note of maternal pride as your paw at the growing roundness of your golden waistlines. 'You really enjoy being a mommy, don't you?' Ava quips, seating her voluptuous form beside yours. Nodding, you tell her for the most part you do, but the nanites and this beautiful body she gave you really help out with that. You don't think you'd enjoy yourself anywhere near as much without it. Taurs and pregnancy just go together like chocolate and peanut butter, you answer, playfully groping at your soft fecund form. And you have her to thank for that, you never would have gotten to experience this the same way without her.";
			say "     You titter, gesturing for her to have a feel of your glorious gravid body. 'You're welcome, I um, can't say I don't like the results either. I just wish I had more control over it. It's still kind of scary to think I could do this to someone without their permission,' Ava says bashfully as her clawed fingers glide along the sensitive lining of your feral womb. She fondles your active doughy belly and feline dugs with her massive predatory mitts. She mews excited as your fatty wombs writhe like a bowl of jello under her touch. 'Ah, that's so cute. I think I just felt one of their tiny pawbies push against my palm. Could you feel that too?' A little bit, you admit, it does feel kind of nice actually. It's almost like someone hugging you from the inside and out, you reply, gliding your feline digits over the lightly churning mass of your furry womb marveling at how big you're getting. At times you could almost swear you can feel the little ones grow with every breath you take stretching out your tummy just a hair each time.";
			WaitLineBreak;
			say "     Which wouldn't be impossible given your current state, you ruminate as your padded fingers sink into the maternal adipose swaddling your anthro expectant middle. You rumble with pride at how soft you've gotten and how the fur and padding running between your digits feels so delightful to the touch. As your digits brush along the firm layer of amniotic fluid sheltering your kittens, you at last feel one of their tiny paws grabbing your cute toe beans, causing your heart to flutter. Did you see that Ava? You gush like a girl on prom night as a rush of nanite laced hormones floods your body with a tide of warmth and effervescent feelings toward your growing brood. 'No what happened?' Ava answers, pausing her exploration of feral bump to glance at your wiggling anthro belly. Gesturing to your navel, you tell her one of your kittens just grabbed your finger. As you excitedly rub your growing belly button, barely able to contain the sudden burst of joy you feel sharing this tactile connection with your unborn and Ava.";
			say "     You quickly tell her keep her eyes on while you see if you can get them to do it again. You purr, drumming your clawed fingers along the linea nigra of your growing belly button. You notice the poor thing is barely able to keep its cute little shape from all the amniotic fluid sloshing around inside. It won't be long till it fully pops out into an even bigger and cuter outie you muse, playfully pinching a thick roll of furry pudge between paws before giving it a gentle shake whispering encouragement to your rumbling tummy. For a moment, nothing happens and the room is quiet, save for the low gurgle of your cub-stuffed womb and sensuous sloshing of your milk-filled tits. But perhaps responding to their mother's loving stimulation, your little ones perk up with a sudden flurry of activity. Dozens of bumps press against your hypertrophic baby maker, as your body erupts in a churning sea of activity. You can't resist mewing happily as you massage your expectant wombs as your body groans and creaks with activity.";
			WaitLineBreak;
			say "     Even your feline tummy titties join in on the action as your growing brood squirms delightfully within you, overly sensitive bumps jostling your cream stuffed tits with each little spasm. 'Ah that looks so cute! Is it still ok if I touch them; like it won't hurt them or anything, right?' Ava coos, gesturing to the tiny paw prints created by your quickening brood dotting your glowing pelt. Of course, you tell her. You've got plenty of padding for them, you add with a proud joking tone while giving your hips a hearty slap. 'Oh you're just the best!' Ava replies, running her sizable digits over the taut rim of your navel. Your little ones react to her touch almost at once. Their little paws all seem to gather around Ava's fuzzy feline fingers. You can practically see perfect indentations of their toe beans through the fur and adipose of your gravid taur tummy as they grab at Ava's digits. This feels amazing, you opine as your overstretched hide is caressed by the big cat taur's silky pads.";
			say "     Ava, you and the babes really know how to treat a momma, you stammer as the sensation so unlike anything you've felt before wreaks havoc on your senses. Your nanite-altered mind struggling to parse the maternal high you feel as your kits and Ava paw at your over-inflated bellies is almost on par with the joy you felt conceiving them. 'Thanks, mommy gives me lots of practice,' Ava blushes as one of your kits grabs at comparatively titanic digits. Really, and what has she learned from the experience? You swoon, as you reach up to gently stroke Ava's massive chin with a pair of clawed fingers. 'Well...' Ava hums in a sing-song tone, leveling her chin with your swollen upper half. She flashes her tongue at you with a sweet catty expression, saying, 'Mommy really likes it when I do this when her babies start kicking.' She trills, planting a kiss on your baby's little paw pads. Oh, that does feel nice, you mew appreciatively, reveling in the innervation of Ava's hot breath and soft ebony lips teasing your squirming tummy fur and taut pale skin.";
			WaitLineBreak;
			say "     Not wanting to neglect your bestial side, her tauric paws animalistically rove over your fertile lower half, fondly groping your thoroughly distended feral portion in tandem with her oral affections. 'Mh, your fur is so silky, and look at this beautiful glow, how do you keep your paws off all this? You're like a giant plushie,' Ava quips more to herself than you as her kiss slowly transforms from gentle pecks to long sloppy licks as she grooms your bloated tummy fur with the sizable barbs of her feline tongue. Her free paws work their way down your animalistic sides, affectionately groping your bestial nips. Well, isn't that what girlfriends are for? Besides, it'd be unfair to keep all this to yourself, you serenade, jiggling a paw full of milky taur tit right under Ava's chin just to watch her flustered lustful expression as beads of pure white cream seep between your fingers. 'Mh girlfriend, I like that. I'm [Name of Player]'s girlfriend,' Ava trills as if tasting the words with a deep throated catty rumble.";
			say "     Chuckling, you tell her not to let it go to your head. Well, not just yet, not when she's got a lot more kitty to lick, you joke, gleefully gesturing to your exotic form. 'Mmhh, yes ma'am,' Ava replies, flicking the spined tip of her feline tongue along the edge of your puffy navel, her rough fleshy barbs teasing your sensitive skin of your taut belly in ways your burgeoning cat-like instincts more than approve of. Lower, you command, stroking Ava's head with your forepaw as she grooms your swollen furry love handles. Mewing submissively, your giant partner languidly shifts her attention to your animalistic half. Eyeing you for approval, Ava kisses her way down your beautiful curves, groping at your feline teats till her muzzle passes between your twin wombs. Though you can just barely see her head past your regal form, you can still feel her whiskers and coarse tongue playing against your exotic body as she lovingly nuzzles her chin alongside your fluffy feral half.";
			WaitLineBreak;
			say "     Such a good kitty, you praise as Ava slips a hind paw down the growing curve of your animalistic stomach, till her toes are caressing the lips of your plump [cunt size desc of player] snatch. She lavishes your moist tauric sex with soft sensuous strokes of her surprisingly dexterous talons along the rim of your feline labia. More, you pant. 'Of course,' Ava mews, slipping a sizeable toe past your puddling lips though you barely feel it. Your tauric body is far too large to be satisfied with the innervations of a single digit, a fact which Ava quickly seems to pick up on, as she hilts one then another of her meaty toes till she practically knuckles you with her hindpaw. Oh yes, just like that, worship that cunny like she means it! You cry in elation feeling your well-used cunt muscles grip Ava paws like it were a mutant's member.";
			say "     'Mmhh, yes [Name of Player],' Ava swoons, thrusting her feral foot like an impromptu tool home, stretching and filling your pregnant pussy in ways many mutants struggle to. Pleasure like none you've experienced as a [one of]lowly human[or]meger biped[or]lesser creature[at random] could roils about your satin depths. Ava's paw twists and contorts at alien angles, her mushy toe beans fondle every wonderful ";
			if "Touched by Madness" is listed in feats of Player:
				say "centimeter ";
			else:
				say "inch ";
			say "of your sodden sex. Ah, it feels like you're in heaven. You mewl contentedly as Ava kisses her way down your gold, white, and black spotted treasure trail. While her free paws explore every lush inch of your giggling body and [breast size desc of player] tits. She teases the hypersensitive curves of your motherly form with the exotic fleshy barbs of her felinoid tongue till her oral muscle is cresting the lip of your prominent fuzzy omphalos. 'Delicious,' Ava coos lapping at your about to pop turkey timer, basting your furry button in tender kitty kisses as her hindpaw works its feral magic on your feline sex.";
			WaitLineBreak;
			say "     Her silky paws, barbed tongue, and gentle jiggle of your [bodytype of player] body play wonderfully off one another as Ava indulges herself on your gravid form. Watching her go, you can't help reaching up to her head and playfully running your fingers through her hair. You purr encouragement to your not-so-little budding bump-a-holic as she probes your swelling umbilicus with her soft spiny oral muscle giving the often neglected nerves some much appreciated love. With each pass, you can feel your resistance melting away under the dual ministrations of your Rubenesque figure. As a wonderful tightness grows in your core slowly building into a lustful pressure. Your paws drift along Ava sides, pulling the bigger cat close. You relish the sensation of your plump milk-bloated assists pressing against yours as she teases your sweltering innermost depths.";
			say "     Mh. Big milky tits, a belly full of cubs, and a cute girl to play with, what more could a person ask for in life, you mentally remark, listening to the sound of cream churning in your stuffed rack as the loving strokes of Ava's lengthy tongue sends blissful tremors though your plush gold, white, and black spotted body. The delectably dissonant sensations of Ava's paw roils your [cunt size desc of player] cunny. Big as you are, your bestial body bulges beautifully at the tender caress of her smooth pads and velvety pelt, your exotic muff is struggle accommodate your macro lover's attention. With each pass of her supple paw, your fecund figure is rocked by sordid tremors though your thoroughly-seeded form. Every ";
			if "Touched by Madness" is listed in feats of Player:
				say "centimeter ";
			else:
				say "inch ";
			say "of your spotted coat jiggles in a living ocean of milky whites, polished golds, and iridescent ebony as your bountiful assets against one another delightfully chorus of opulent excess. Ava's dexterous paw swirls about your eager passage at impossible angles as she attends your needy tauric depths.";
			WaitLineBreak;
			say "     Your sweltering sex moils about her girthy limb, your malleable walls almost milking her tender pads and lurid pelt with fervent beat of your heart. You soon find yourself purring loudly at every motion of her practiced paw. The heady sensation pairs so perfectly with her gentle kiss along the growing squirming middle. You can't suppress a growing urge to show a modicum of appreciation to your tauric playmate. You pull her soft body closer to you, eager to experience the sweet sensation of your plush hybrid bodies brushing one another. For her own part, Ava doesn't resist your touch and gleefully allows you to wrap your feral legs about her fluffy feline form. You lightly sink your claws into her plush pliable pelt, then draw her in. Reveling in the heavenly weight of her doughy body pressing on yours and your soft tums and milk-stuffed teats in a salacious dance of feline affection as your mirrored forms glide against one another. The pair of you let heavy paws roam over each others tauric bodies in a show of bestial love.";
			say "     A sweet heat slowly seeps over you like a fever-dream as the heady sensation of your properly-stuffed muff and the loving interplay of your exotic body fights for prominence in your altered mind. The blissful warmth edges just the cusp of being unbearable, and breaks as you finish. Your heart races like a drum and your spasming cunny gushes a generous trickle of fem cum drip down Ava's hindleg. You collapse onto the welcoming embrace of Ava's mattresses panting like you've just run ";
			if "Touched by Madness" is listed in feats of Player:
				say "exactly point six-two-one kilometers ";
			else:
				say "a mile ";
			say " in a minute, yet as you lay there feeling the loving afterglow of your passionate exchange wash over you, you couldn't be more relaxed. You muse as Ava slowly extracts her paw for your throbbing muff with cute little pop. Oh you really needed that, you coo as Ava cuddles up beside you, nuzzling your shoulder. 'Well if you ever need a little more mommy time, feel free to come see me,' Ava replies, stretching out with her hind-paws like a relaxed kitten. Nodding, you tell her you'll keep that in mind.";
			now Broodmother threshold is resolved;
			if Hunger of Ava < 3:
				increase Hunger of Ava by one;
			if Hunger of Ava >= 3:
				now HP of Ava is 4;
		-- "Makes you hungry.":
			say "     Well now that she mentions it, being a mom is hungry work, and this body of yours just needs so much fuel to keep going. Why, you tease, playfully rubbing your assets for show, it sometimes feels like you're wasting away out there.";
			if Breast Size of Player >= 1 and Breast Size of Player <= 4:
				say "'Oh, now we can't have that, you're practically skin and bones as it is. I mean just look at these itty bitty titties! How are you going to feed your kittens with these tiny things?' Ava says tracing a claw around one of your areola. Huffing, you grumble they're not THAT small, but Ava won't hear a word of saying. 'Now-now think of your kittens, you wouldn't want to go hungry would you. After all, baby taurs need lots of milk if they're going to grow up big and strong.";
			if Breast Size of Player >= 5 and Breast Size of Player <= 12:
				say "'Aww poor thing, we can't have you going hungry you're still growing yourself. I mean look at these cute petite breasts, they can barely fill my hand,' Ava coos groping one of your milk tanks with her sizable padded paw hands. Chuckling, you inform her that you're not that small, she's just huge. If you were still a [one of]grimy[or]insipid[or]banal[or]disgusting[or]boring[or]vanilla[at random] human, your sweater puppies would be considered candidates for breast reduction at this point. 'Hmp, well it's a good thing you're not! If you were any smaller I'd worry for your kitten's health. Your babies are gonna need lots of milk, and I know just how to help out.";
			if Breast Size of Player >= 13 and Breast Size of player <= 19:
				say "'Well maybe a nice meal will help you out. Your body needs all the fuel it can get if you're going to keep these cute titties full. Just look at them, they're perfect size for your kittens,' Ava trills eyeing up your almost inhumanly large [breast size desc of player] breasts. 'Fortunately for you, I've always got plenty to share,' she adds, patting her furry chest. Smirking, you thank her for the compliment. You're quite proud of your excessive rack, especially since your tauric body is able to support them so gracefully. If you were still a [one of]mere[or]puny[or]weak[or]pathetic[or]scrawny[or]meager[at random] human, or heaven forbid a smaller strain of mutant, you'd probably have horrible back problems at this point. Instead, you get to enjoy all this wonderful breast flesh, with none of the downsides such excess could bring. 'That's good to hear, sweetie, but you know you could always be bigger.";
			if Breast Size of Player >= 19 and Breast Size of Player <= 25:
				say "'I can imagine, it must be a struggle out there. You're almost more titty than kitty at this point!' Ava titters as she tries and fails to wrap her paws around one of your gigantic milky mounds. Rumbling proudly, as you try to hug your own heaving chest you tell her you wouldn't have it any other way. You worked hard for this majestic bust, and your consistent efforts to become the perfect broodmother have borne the most wonderful and ripe fruit. Your children will never go hungry, and you get to enjoy the constant pleasure of being swaddled by potentially hundreds of pounds of bouncing creamy furry breast flesh. Sure, they might block your view, and good luck finding a bra, but who cares if you never see the floor, or the whole being [']decent['], when you have a body like this. At this point all you want to do is get bigger. 'Oh well, if that's how you feel, I think I can help you out.'";
			if Breast Size of Player >= 26:
				say "'I'll bet,' Ava chuckles. 'I'm not even sure how you're still standing with these massive tits, much less scavenging for food out there,' Ava says, eyeing up your impossibly large collection of milk-stuffed mammaries with a bemused look as she paws at her chest. Aw Ava, is she jealous? You tease, noticing the way she stares at your colossal cans. 'Maybe,' Ava replies in a sing-song tone. Good you tell her, you put in a great deal of time and energy to become the gravid titty monster you are now. You've lost count of the ordeals you've put your body through to gain these divine proportions. All of which has borne the most resplendent milky fruit. At this point you could practically feed the world with these impressive jugs, you remark as you struggle to embrace your extreme tits in your tauric limbs. But it's all worth it for this perfect brood mother body. Your only regret is that you've seemed to hit the limit of what the nanites can handle, for now at least. 'Well if that's how you feel, maybe a little sip here,' Ava says, squeezing her own bosom between her arms, 'can help you out.'";
			WaitLineBreak;
			say "     'So why don't you lie down, I've just the thing to make everything even better,' she quips, leading you over to her mattress. Plopping down beside Ava, you notice her tits are already leaking a few beads of pearly milk from the excitement as you coyly ask what's on the menu. 'Why, nice fresh cream straight from the tap just how mommy likes it,' Ava replies in a joyful tune, hefting one of her massive breasts to your lips as she takes your anthro half into her arms. Jokingly, you inform Ava of how thoughtful she is as you press your feline muzzle to her bosom and rest your many limbs against your doughy side and voluminous bumps. Merely touching your lips to her chest is all the stimulation Ava's body needs to express itself. Her perky nips erupt in warm thick spray of rich thick milk, ballooning your animalist cheeks in the blink of an eye. It takes all of your jaw and throat strength just to keep up with the rush of fatty cream, not that your growing maternal feline instincts would let you turn down such a calorie dense meal.";
			say "     Even if you have to glut yourself, your babies need it, and you need it, you think to yourself, letting yourself sink deeper into Ava's embrace. You allow her to support you entirely as you drink. Utterly enraptured in the sweet interplay of Ava's soft pillow body pressing up against your plush cream-stuffed middle. Without even thinking, your various paws go to your middles, eagerly fondling your growing curves as your body stretches to accommodate Ava's milky offering. Your reverie is almost cut short as the heady gush of Ava's creams start to diminish and you struggle to stifle a gluttonous growl. Your diligent lover notices this, and swiftly proffers another cream filled teat, saying, 'Ah don't worry, I've always got plenty more,' as she motions to her luscious bosoms, 'Eat up,' Ava coos, tracing a pointer claw invitingly along the beautiful curves of her glorious collection of heavy milk-swollen breasts. Not that need to be told, the gluttonous side of your infection is in too much control right now and the only thing you can do is ride it out.";
			WaitLineBreak;
			say "     With prideful rumble, you bury yourself in Ava's many-tiered chests, determined to glut yourself till she's dry. You move from milk tap to milk tap, lewdly suckling from each creamy teat with reckless abandon, trying to fill the bottomless void inside you. Your tongue dances over Ava's stiff nips as you drain each one in a flurry of gluttonous activity despite the growing pressure in your stomach. Still, your tauric body is more than able to accommodate your feast, even as the gallons of cream sloshes around inside you and the firm dome of your feral tummy brushes your inner catty thighs and bestial dugs. Far from concerned by this development, your nanite-saturated mind is brimming with pride. You can't help but want to grope the adorable curve of your tummies and taut tits as you revel in your gastronomic accomplishment. The weight feels so right to your touch as your padded paws the distended mass of your burgeoning body.";
			say "     You don't think you'll ever get over the blissful dichotomy of your plush doughy adipose-laden form and firm mass of amniotic fluid hidden beneath, or the feeling of your ripe furry womb dangling between your feral dugs. A part of you wonders if this is what Kathy feels like all the time. The notion certainly does have special appeal to it, you ruminate between swallows. Simply breathing at this extreme size sends shivers along your over-stretched form. The slightest stimulation of your gravid assets makes your sensitive nerves sing with elation. You can only dream of what it must be like to be mounted in this rapturous state by a virile or oviparous mutant. Of course, you can't have everything, but you think to yourself, remembering your luscious flexible tail. However, you can get close, you think to yourself, arching the massive limb into a shepherd's crook as you tease the lips of your feral felinoid flower. You gently jill your eager cunny, delighting at how the plump tissue seems to hug every ";
			if "Touched by Madness" is listed in feats of Player:
				say "centimeter of your extra appendage.";
			else:
				say "inch of your spare limb.";
			WaitLineBreak;
			say "     'Nya, looks like someone's enjoying herself. Say, you don't mind if I join in, do you?' Ava purrs as her tail coils about the inner thigh of your rear leg. Too distracted by your feast to think of a proper reply, you lazily nod your head, and lean into Ava's advances, splaying your legs for her ease of access. Your larger lover lets out a pleased trill at this as her tail entwines itself in a knot with yours, saying. 'Don't worry, I'll take care of you from here. You just focus on your meal. Your kittens need all the nourishment they can get so they can grow up big and strong, just like their mommy.' As she lightly pats your [bodytype of player] broodmare body affectionately. Lost in your base revelries, you can only murmur a low thanks to her as you work your way down her bosoms. You allow Ava full control over your extra appendage, confident she knows how to handle pregnant pussy.";
			say "     The big cat girl does not disappoint either as she picks up the pace without skipping a beat, kneading your knotted limbs about your bitch button and lavishing your exotic sex with tender affection as the loving caress of your entwined tails coax a generous tickle of lucid juices as your pussy practically puddles with excitement. Your warm dew dribbles down your legs, coating your tails in a growing sensual sheen of girl-honey with each gesticulation. Though Ava is not done there, as she arcs your fem-honey-soaked tails into a familiar stance and jabs the entwined limbs home. Your breath catches in our throat as cream spurts from your lips at the sudden intrusion, though not for discomfort or pain, but pure ecstasy as your waiting hole is stuffed to the brim with the combined girth of your tails. Or at least that's how it feels to you as your muff stretches to make room. You almost swear you can sense each knot of your entwined limbs, each section of your vertebrae, and every nodule on them as your tauric sex conforms to the malleable mass of your linked tails.";
			WaitLineBreak;
			say "     As Ava glides your sizable appendages along your exotic sex. She teases every eager nerve of your folds almost like she emphatically knows what your body needs. Not an impossible feat, given that you both share a similar form, you muse groping her lowermost rack. A part of you wonders offhandedly, if the same is true for other infected couples, or if this connection is unique to you and her. Not that it matters or changes how the wellspring of delight bubbling inside you as your dual needs to feed and breed are tended to with such zealous alacrity. Nor does it slow your pace of your feeding, if anything it spurs you on. Your body has never felt so full or fulfilled before. The nature of it doesn't matter, only the pure bliss roiling though your [cunt size desc of player] sex and well-fed midriff. You nuzzle your bewhiskered muzzle at your larger lover's plush furry core, eliciting a happy mewl from her as the stiff not-so-little bristles of your whiskers brush her sensitive teats.";
			say "     Glancing up at Ava, you can tell from the expression on her catty visage, she feels much the same way as her paws explore your swollen body, rubbing and massaging your heavily gravid form like a jovial kitten as your knotted limbs brush your cervix. You don't blame her though, you've got so much to enjoy after all. You ruminate, idly groping your [breast size desc of player] melons with one of your free hands. Exalting in the weight and heft of the furry orb in your padded paw-like hand as they seem to swell in grasp and spill between the silky gaps of your finger as your body absorbs more of Ava's wonderful nanites. A part of you feels it would be a crime not to share, and who better than your current partner. You opine fondling one of your [breast size desc of player] tits. You offer the swollen milk tank to Ava with a half smile. 'Oh is this for me? You're such a sweet mate.' Ava trills, leaning in.";
			WaitLineBreak;
			say "     She eagerly kisses your proffered nip, teasing the stiffening ducts with the rigid yet smooth spines of her catty tongue as her pencil thin feline lips embrace furry areola. Already primed and ready for your latest brood, your fecund body needs little in the way of motivation to express itself as Ava's warm breath kiss caresses your teats. Your body responds with a gush of mothers milk right into the eager cat girl's maw. Ava purrs delightedly at this like a happy kitten, and your body reciprocates as if she were one of your own. Each of your breasts springs a sympathetic leak, coating the orbs in a sheen of thick white fluid. Not that you mind the waste, you can always make more, you mentally remark as your body sways with the generous strokes of Ava's preferred tool.";
			say "     You mewl your appreciation as your body is relieved of its bountiful burden and feel some of bestial satisfaction at fulfilling your budding maternal desire to feed others. A part of you was becoming so accustomed to the ripe and ready feeling swelling in your chest that you almost started to forget what it's like to feel any amount of lightness in your breast, which only adds to the bliss and fulfillment welling your core as your tauric passage is savaged by Ava's animalistic affection. Your plush body quivers at her touch as she teases your feminine folds and laps at your leaking breasts. While her paws roam your tauric figure, massaging your taut pelt with strokes of her soft pads. Ava takes special care to exalt every ";
			if "Touched by Madness" is listed in feats of Player:
				say "centimeter ";
			else:
				say "inch ";
			say "of your [bodytype of player] form, purring, 'Mh, you're filling out nicely, I hope your kittens appreciate how much you're doing for them,' as she does so.";
			WaitLineBreak;
			say "     Rumbling happily in reply, your maternal side basks at the attention paid to your body as, at least for the moment, your dual needs to feed and breed are met. You feel as if your mind is practically swimming in nanite-laced hormones and heady rush of dopamine, filling you with a sense of purpose and pleasure. Your heart pounds in your ears as a tempest of delight washes over you consuming your senses. Your cunny muscles hug every facet of yours and Ava's entwined tails. A storm of sensation inside of you bursts in a supernova of rapturous release as you cum, squirting a trickle of honey down your shaking back legs. More than a little weak in the knees, you coo like a blissful drunkard and would have collapsed if not for Ava cradling you in her many limbs. While reality spins around you on its own crooked axis as you ride out your climax, Ava eases you down besides her while your fuck-numbed mind reasserts itself.";
			say "     Riding your natural high, you cuddle up to her, wrapping your arms around her, murmuring your thanks as she cleans any errant cream from your pelt. Between licks, the frisky feline fixes you a flirtatious grin asking, 'Did mommy enjoy her meal?' as she pats your pregnant paunch. Smacking your chops like a sated beastess, you roll on your back letting the weight of your fare and your brood wash over you. You gaze at turgid mass slung over your waist in a fertile dome of gold, white, and black fur. You tell her you did as you paw at your tummy, adding that your kittens did too. 'That's good, I hope they grow up big and strong,' Ava replies, planting a line of kisses on your treasure trail. 'They don't know how lucky they are to have someone like you as a mother... I wish I did,' Ava adds under her breath.";
			now Broodmother threshold is resolved;
			if Hunger of Ava < 3:
				increase Hunger of Ava by 1;
			if Hunger of Ava is 3:
				now HP of Ava is 4;
			if Breast size of Player < 26:
				increase Breast size of Player by 1;
			if nipple count of Player < 12:
				increase nipple count of Player by 1;
			Increase Cunt Depth of Player by 3;

Table of GameEventIDs (continued)
Object	Name
Fecund Friends	"Fecund Friends"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Fecund Friends"	Fecund Friends	"[EventConditions_Fecund_Friends]"	Last Chance Auto Body	2500	2	100

to say EventConditions_Fecund_Friends:
	if HP of Ava is 4 and BodyName of Player is "Margay Taur" and Player is pure and Player is female and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Fecund Friends is a situation.
ResolveFunction of Fecund Friends is "[ResolveEvent Fecund_Friends]".
Sarea of Fecund Friends is "Nowhere".

to say ResolveEvent Fecund_Friends:
	say "     Pawing up to your catty playmate, you notice that the bubbly cat girl seems to be a little more anxious than normal, almost as if she's got something weighing on her chest. Curious, you inquire as much. 'Well, [Name of Player], I've been thinking a bit and, you love me, right?' Ava asks as she nervously traces circles on the floor with her foreclaws. Smiling reassuringly, you tell Ava you wouldn't keep coming to see her if you didn't care about her. 'Then, um, will you,' Ava stammers dropping to one knee, 'please give me children!' She cries, taking your paw in hers. She draws it to her face as a pleading look crawling across her feline visage. Doing your best to stifle a laugh, you politely ask Ava the hard and pertinent questions, how and why. 'Well I've been watching you and mommy, the two of you seem so happy and I am... kind of jealous.' Ava sighs, letting go of your paw.";
	say "     Really? And what exactly is your big kitty jealous of? Is it the way your nice fat tits are swollen with milk? You tease stroking the tips of clawed fingers along your feminine mounds. Is she curious about what it's like watching her body grow all round and tauter by the moment? You purr, arching your back for effect. Perhaps she just wants to know what it's like getting railed with all the wonderful hormones rushing through her? Ava nods, her eyes glued to your every sensuous motion. Well, if that's the case, you can always find her a nice stud. You might even have some pets who could help out. '[bold type]NO[roman type], I don't want someone else's kids, I want yours! You're the only person I've ever loved. You're sweet, smart, kind, and despite me turning into a margay taur you still like me. I can't think of a better mother than you,' Ava mews.";
	WaitLineBreak;
	if "UB Pred" is listed in feats of Player and HP of Doctor Medea >= 1:
		say "     Sighing, you take a seat beside Ava and explain that despite any willingness you may or may not have to breed her, you can't; simple biology prohibits it. Now, if you weren't in a nanite-infested hellscape populated by the rape monsters of week, the two of you could look in to crispr type treatments, then you'd have a chance. Otherwise there's not much that you can do unless... 'Unless what?' Ava asks hopefully. Not too sure how to best explain your relationship with Medea, you tell Ava that you know someone who may be able to help. You just need to speak with her first. 'Really, you know someone who can help, that's amazing!' Ava gushes. Not to burst her bubble, you inform Ava that things could take quite a while.";
		say "     She shouldn't expect things to be done in the snap of a finger, or that she'll come out of things completely unchanged. Messing with something as volatile as the nanites is bound to have some manner of consequences neither of you can predict. 'Ok I think I understand, but you promise to go see them right away right?' Ava asks rather excitedly, placing her paws over her portly stomach. Grinning, you nod to Ava setting your own paw reassuring on top of her fat furry tum, reveling in the feeling of your pad sinking into her soft pliable adipose. You tell her you will get right on it as you run your claws down her side. A part of you can only imagine how cute she'll look if Medea is able to come through. That it will be YOUR children that she'd be pregnant with only adds an exotic taboo thrill to your budding plan.";
		now Fecund Friends is resolved;
		now Breeding Material is active;
		now HP of Ava is 5;
	else:
		say "     Huffing like an exasperated parent, you tell her that there are some technologies being developed around the world that could help. However, they're expensive and she doesn't even have a passport or the funds to even attempt it. 'Oh but what about around here, maybe someone around can help? Drake said he ran into people studying nanites, could one of them do something? Mommy also says the nanites made people and animals into mutants along with all sorts of other weird stuff. Who's to say they can't do this?' Ava queries. A part wants to challenge her on that, but Cock Cannons, tentacle monsters, Shaft Beasts, literal demons from freaking hell, and sentient latex pool toys exist so trying to argue or speculate on the limits of what the nanite can do is a Sisyphean task. Still, not wanting to break her spirit, you give her a politician's promise to ask around but are very upfront with the fact that no one may be able to help. Most researchers in the city are probably not looking for ways to improve mutant reproduction. If anything those not working to profit from it are likely working to curtail it or [']cure['] the condition out right.";
		say "     'I understand, but I believe in you,' Ava gushes with an upbeat tone as she stands up to give you a deep hug. Not one to waste opportunity, you pull her close burying your purring feline face in her silken bust. You press voluptuous bodies together reveling in the sensation of your warm Rubenesque figure rubbing against one another as your paws brush her plump bosoms. Ava purrs approvingly, as you fingers languidly tease her bountiful form and you can't help but admit you wouldn't mind seeing an exceptionally gravid Ava struggle to waddle around the Chance. Releasing her, you muse that the fact she'd be carrying your brood only adds to the appeal and cements your resolve to at least look around the city.";
		now Fecund Friends is resolved;
		now Breeding Material is active;
		now HP of Ava is 5;


Table of GameEventIDs (continued)
Object	Name
Breeding Material	"Breeding Material"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Breeding Material"	Breeding Material	"[EventConditions_Breeding_Material]"	Doctor's Office	2500	2	100

to say EventConditions_Breeding_Material:
	if HP of Ava is 5 and Lust of Doctor Medea is 3 and BodyName of Player is "Margay Taur" and Player is pure and Player is female and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Breeding Material is a situation.
ResolveFunction of Breeding Material is "[ResolveEvent Breeding_Material]".
Sarea of Breeding Material is "Nowhere".
Breeding Material is inactive.

to say ResolveEvent Breeding_Material:
	if "UB Pred" is listed in feats of Player and Player is impreg_now:
		say "     Opening the door to Medea's abode, you spy the genial lizard woman standing beside her well-stocked countertop with her back turned to you as she mixes a pair of vibrant-colored vials, filled with some unknown fluid. At the sound of the aperture closing behind you, Medea's yellow-brown head frills appear to perk up slightly as if to better angle her ear holes as she sets down the containers. She turns on the balls of her padded reptilian paws, revealing the unsubtle swell of her scaled tum poking out from the hem of blouse. 'Ah well if it isn't my favorite patient, what can I do for you today?' Medea smirks, casually and shamelessly eyeing up your middle as you walk in, as if inspecting her handiwork. Returning her greeting, you tell her nothing for you, thanks, but a lover of yours had a question for her. Nodding, Medea motions for you to continue. Right, does she know how she was able to give you the ability to unbirth people a while back. You inquire, absentmindedly petting your tummy fur as you recall the experience.";
		say "     'I do,' Medea preens through a proud toothy grins, resting a hand on the roof of her eggy laden tum, 'it was one of my finer breakthroughs, I trust you've been enjoying the *ahem* adoptive process.' She snickers, taking out a ringed notepad with a single black plastic pen tucked in its coils from her lab coat pocket. 'Speaking of which, I'd say you're well overdue for a follow-up exam, shall we?' she asks, giving the butt of her pen a quick click. Shrugging and wanting to stay on the doctor's good side, you tell her that's no problem. 'Wonderful, now before we start, is your little one here a [']natural['] child or a foundling?' Medea asks with an expectant twinkle in her reptilian eyes, as she gestures to your verdant bump with the butt of her pen.";
		LineBreak;
		say "     [bold type]How do you respond?[roman type] [line break]";
		let Breeding_Material_Choices be a list of text;
		add "Tell her you adopted." to Breeding_Material_Choices;
		add "Tell her you haven't adopted." to Breeding_Material_Choices;
		let Breeding_Material_Choice be what the player chooses from Breeding_Material_Choices;
		if Breeding_Material_Choice is:
			-- "Tell her you adopted.":
				say "     'Excellent, I was hoping that was the case,' Medea chirps excitedly, as she rolls a pair of wheeled trays covered in all manner of medical paraphernalia next to you. A few items are easily recognizable like stethoscopes, sterile syringes, industrial scales, and, blessedly, a manual blood pressure gauge. The rest appear to be custom-made tools that resemble forceps, spanners, and spreaders of varying quality. Naturally curious about the good doc's work, you begin to ask them about it, but Medea cuts you off as she runs a scaled along the growing curve of your baby bump exclaiming. 'Oh my, you've been taking quite good care of yourself dear!' as her sleek paws gently prod the underside of your engorged furry womb. You nod, leaning into the cute lizard girl's touch, enjoying both the attention, and the pleasingly cool caress of her scales along the taut surface of your pelt. 'What an astounding process, it must feel amazing, and your current form seems to have taken to it quite well too,' Medea rumbles approvingly, running claws through your spotted silken pelt.";
				say "     'I can tell your body's got great circulation just by looking at your fur's beautiful glow,' she says, observing the vibrant reflecting shine of the lantern light playing along your white, gold, and black spotted pelt. 'Oh and I see your little outie here is coming in nicely too.' She swoons, tracing her talons along the borders of your puffy naval, sending sensual tremors through your flush core as her claws lightly graze your sensitive flesh. 'Though you may be getting just hair on the plump side,' she snickers, giving you lush love-handles teasing pinch. 'But a bit of weight gain is to be expected, and you wear it quite well. Besides, I'll bet your little one needs all the nutrients they can get, and they seem to be growing rather rapidly too,' Medea notes, palming the equator of your gravid tum. 'In fact,' she coos, edging her sleek reptilian mitts along your [bodydesc of player] flanks, 'I'd like to take a few measurements, purely for, er, research purposes.'";
				WaitLineBreak;
				say "     Bobbing your head, you tell her that's alright with you, it's not like you're not a tad curious yourself. 'Perfect!' she cries in a too eager tone as she grabs a bright yellow tape measure from her pile of supplies. She saunters up beside you and attempts to take your measurements. Though the tapeline barely makes it halfway around you, forcing Medea gets creative as she adheres several together with a bit of masking tape. 'My my, *huff* aren't you the big girl?' The overeager lizard coos with a flustered look on her muzzle and eggy core rubs against your spotted pelt, as she struggles to wrap her arms around you. Her slender form sinks into the [bodydesc of player] mass of your gravid figure as she pressed herself against you. The enthralling aroma of reptilian arousal teases your senses as her smooth egg-swollen middle rifles against your latest kitten. What can you say, must have been someone you ate. You tease, flashing the good doc a far-too-toothy smile, while you lightly paw at her tight curvaceous figure.";
				say "     'Uh sorry I didn't mean to...' Medea gulps, over the loud rumble of your stomach as she realizes how close she is to your drooling maw. You smell the fear and desire welling up inside her as your claws lightly graze her cool sleek vulnerable scalie hips, yet you push back against these budding instincts through sheer force of will, telling her no harm done. You're quite enamored with your present form, and you can't say you aren't a little curious either as to how big you are at the moment. '*Tsk* Unfortunately that's inconclusive,' Medea replies in a tactful tone, pulling herself away, 'your baby is growing, or, regrowing rather rapidly. Your belly already measures in at over over sixty nine cm, and climbing.' Nice, can't wait to see how big they get. Guess it won't be long till you make a proper tauress out of them yet. You coo, lovingly stroking your taut stomach fur. 'Indeed,' she purrs, enviously running her taloned fingers along the supple swell of her growing bump, 'say, do you mind if we try weighing the little one instead?'";
				WaitLineBreak;
				say "     She gestures to the nearby scale with a swish of her tail. Shrugging, you tell her that you don't mind. 'Perfect,' Medea responds in a quick chirp, leading you over to the device. She zeros it and motions for you to plop you bump on the scale. More than a little excited to find just how heavy you've gotten, you grab hold of your portly mound, reveling in the weight of the thick layer of adipose and dense core of amniotic fluid swaddling your adopted child as they rest comfortably in your lush paw pads. With a low grunt, you gently heft the growing mass of your turgid tum just above the analog scale then gingerly lower your bundle of joy onto the scale, listening with no small amount of pride at the sound of the metal gears grinding under the weight of your little one. Oh that takes a load off the backs, you joke, waiting for the device to settle. All the while Medea's gaze darts between your burgeoning bump and the numbers as the machine struggles under your girth.";
				say "     You can just barely hear her murmuring to herself, 'Forty-three, forty-three point zero-zero-zero-one, forty-three point zero-zero-zero-four recursive.' She drones on for several minutes before jotting something down, saying. '.0003 grams seems to be the average.' Cocking an eyebrow, you ask what she means. 'Well weighing you little one is proving rather... difficult,' Medea says gingerly patting your fur, 'your upper belly alone appears to be gaining .0003 grams per minute, quite the growth spurt. Fascinating as the data may be though, this doesn't account for your lower half, or the initial weight of your adopted child.' She adds gesturing to bountiful curves of your animalistic half. 'Perhaps in the future we can find a few [']volunteers['] to weigh properly, assuming you aren't opposed to it.' She swoons, flashing you a lewd knowing smirk. 'Regardless, I must say the speed at which your body's able to reform others is remarkable even by infected standards!' She exclaims, as her tail snakes its way along the lower half, cheekily fondling the supple animalist curves of [bodydesc of player] form.";
				WaitLineBreak;
				say "     Jokingly rolling your eyes, you tell her you're not surprised, you've noticed your adoptive pregnancies take far less time than the [']natural['] ones to come to fruition. 'Really, so it's not just a feature of your current tauric form,' Medea says, scribbling something on her pad, 'then do you mind if I take a blood sample? I'd like to check what manner of hormones your body is producing, and see if I can find nucleotide or nano-mechanical marks left by your little one, then we'll discuss your friend's needs.' Shrugging, you tell her why not. 'Thank you, let me just get the supplies.' She says, sauntering over the back of her office, Medea roots through a series of draws pulling sterile and still in their package syringes, a felt pen, a handful of lab-grade vials, and a wad of cotton. She quickly scribbles your name plus the date on them and motions for you to place your arm on the counter beside her. Complying with her request, you do as she instructs.";
				say "     'Alright just look away for a second,' nodding as you tilt your head to one side. You feel a cold pressure on your arm as Medea disinfects the area followed by a tiny painless pinch. 'Done, you can look now.' Medea says pressing a wad of gauze to your arm. Impressed by her skill, you tell her you hardly even noticed. 'Well, I've had a lot of practice on needle-phobic people. Now, you were telling me one of your partners had a question for me?' Right, you tell her that her name is Ava and that she was the one wondering if it were possible for two biological women to have a child. Considering her prior success in giving you the ability to unbirth others, you were hopeful she could somehow co-opt or adapt the process. 'Hm, well it is possible, I know of some foreign fertility clinics that were attempting a similar feat, and there are some rumbling in S.F. about groups looking to achieve the same results. I'd imagine it would be quite expensive, and I doubt they'll show results for the next twenty odd years.'"; [Author's note: Funny enough for the low price of 1 million USD same gendered partners can now have kids in S.F., was not expecting that when I first wrote this in 2012.]
				WaitLineBreak;
				say "     Medea lets out an exasperated sigh. 'Right now, the easiest option would be some estosterogen pills, they're non-transformative and should allow you both to grow male genitals without compromising your female anatomy. I heard some were being tested in the city hospital before the cataclysm as part of some bluesky HRT project. I am sure you could find some there, or you could just bite the bullet and find a donor male or herm.' Shaking your head, you inform the good doc, Ava is a bit Agoraphobic and borderline misandrist at times, so that option is out of the question. 'Then I'm not too sure what I can do for her,' Medea replies, shrugging her shoulders. Oh come on doc, she's a dang fertility genius, she's made cunt pills, ovi pills, mpreg pills, learned how to give people control when they get pregnant, and even figured out unbirthing. This should be nothing for her! 'Well, ok maybe I do have an idea how to help,' Medea says, her scales blushing a light rosy red, 'but I need some supplies and better equipment.";
				say "     Fortunately most of what I need is in Trevor labs, however, the place was locked pretty tight before the outbreak, so I don't imagine you could just waltz into that place without a keycard, or staff member to show you around.' Not a problem, you tell her, you've been there before and have some knowledge of the layout. 'Ah then let me just get a list together of what I need,' Medea replies, swishing her tail towards a nearby brown metal file cabinet tucked in the corner of her office. For the next few minutes, the good doctor digs through various poorly organized drawers and overstuffed folders. Eventually, she seems to come across what she's looking for, 'Here we go,' she says, plucking out a number of manila file. She quickly skims them and jots a list of items on her notepad.When she's done, Medea rips out the page and hands it over for inspection. Looking it over it appears she wants: fresh fish from a very specific industrial canning facility in the warehouse district, a slew of exotic chemicals, and some equipment whose name has more umlauts than a page in the average German phonebook. Once you finish reading it over, you tell the good doc you'll get right on it. 'Excellent,' Medea chirps, 'and do be careful [Name of Player].'";
				now Breeding Material is resolved;
				now Glass Castles is active;
				now Registry Location is active;
				now Industrial canning facility is active;
				ItemGain Medea's List by 1;
				now XP of Ava is 1;
			-- "Tell her you haven't adopted.":
				say "     'So this is a natural child, interesting,' Medea says, with a neutral chirp as she rolls a stool beside you gesturing for you to present your litter for examination. Replying in the affirmative, and not seeing the harm in indulging her, you waddle to up her and present your gravid midriff for inspection. Smirking, the pregnancy-obsessed scalie languidly brushes her clawed finger against the taut fur of your tauric tum saying. 'I can see you're taking very good care of yourself. Your fur is so wonderful soft and hm,' Medea rumbles, giving your love handles a cheeky pinch and watches as it snaps back into place, 'your skin still has plenty of elasticity to it despite your size. Good on you for staying hydrated! You'd be surprised how many of my former patients were on the cusp of dehydration before the outbreak,' Medea sighs, shaking her muzzle dejectedly as if to banish a bad memory.";
				say "     'Oh, and I see you're expressing too!' she remarks excitedly though can't help but notice a slight tinge of jealousy in her voice as her taloned fingers brush up against one of your engorged [Breast Size desc of Player] milk tanks. 'Do you mind if I take a quick sample? I've been wanting to study the regenerative properties of mother's milk for some time now.' Sure, you've got plenty to spare, and the girls could do with a quick draining, you tease, giving your [Breast Size desc of Player] tits an affectionate pat. Nodding, Medea fishes out a couple of graduated cylinders from a nearby desk, then sets them beside herself as she cups one of your lower teats remarking. 'Oh may you've got quite the chest here, dear! Good balance of glandular tissue and fat,' Medea trills as her sleek scalie's claws massage your tight titty tissue, sending a delectable little shiver through your [bodydesc of player] body at the sensation of her talon grazing your tight overwound nerves.";
				WaitLineBreak;
				say "     'Quite productive and rich too!' Medea says sniffing the air, while she expertly coaxes a thick stream of pearly white cream from your engorged ducts by lightly kneading your swollen [Breast Size desc of Player] sweater kittens. She slowly lines a nearby shelf with vials of your milky bounty. 'This should be enough for my experiments. Although, I can't help but wonder if a taste test is in order too,' she coos, with a needy look in her eyes as a few beads of opalescent excess dribble down her finger tips. Snickering, you cup your dominant padded-hand about one of your lush creamy teats, and offer her the chance to slake both her thirst, and her curiosity. After all, what better way to observe the effect of mother's milk, than to try some herself. You're sure the good doctor's brood could use the nourishment too, you tease brushing your fluffy tail along her eggy tum. 'Hm, you raise a good point [name of player], and it is important to stay [italic type]hydrated[roman type],' Medea chirps, over a low rumble emanating from her gravid middle.";
				say "     Go on then, you simper, seating your comparatively larger lower half on the floor, while wrapping an arm around her soothingly cool curvaceous waist, and guide her head your neediest nip. 'Mh, so warm,' Medea purrs, nuzzling her glossy scaled form along your velvety pelt. Her clawed fingers roam your [bodydesc of player] curves, gently fondling the decadent adipose swaddling your form. 'And soft too,' she chuckles, tracing cute little swirls in the borders of your taut overstretched spotted pelt as she presses her angular muzzle to your breast. You purr contentedly at the sensation of her thin scaled lips caressing your swollen areola, and the light flick of her forked tongue dancing along your leaky ducts. She coils her oral muscle about the stiffening milk spout eliciting a tender trickle of cream from your flush mounds. 'Delicious,' Medea rumbles contentedly as she suckles. Your mind is flooded with a sense of profound relief and an odd sense of purpose as your body's need to care for and feed others is sated, even if only for the moment, you muse, gliding your talon along the back of Medea's frilled head encouragingly.";
				WaitLineBreak;
				say "     This evokes a pleasant chirp from the eggy lizardess as she gorges on your potent cream, nuzzling her boxy snout against ";
				if Breast Size of Player >= 1 and Breast Size of Player <= 4:
					say "the taut petite shapely swell of your [Breast Size desc of Player] chest. ";
				if Breast Size of Player >= 5 and Breast Size of Player <= 12:
					say "the lush curves of your lavishly endowed [Breast Size desc of Player] chest. ";
				if Breast Size of Player >= 13 and Breast Size of Player <= 19:
					say "the vast valley of your [Breast Size desc of Player] chest. ";
				if Breast Size of Player >= 19 and Breast Size of Player <= 25:
					say "the bountiful expanse of your [Breast Size desc of Player] chest. ";
				if Breast Size of Player >= 26:
					say "the perky gravity defying peaks of your ponderously large breasts. ";
				say "You can feel her cute dainty little B-cups swell sympathetically against your own with each gleeful swallow. 'Amazing, am I...' she susurruses delightly between sips. Her hands rove the tightening seams of her blouse as a pair of dark wet splotches drip down her chest. Lactating? You tease, running a talon along the distressed seams of her top. Feels good doesn't it doc? You titter, drawing your claw about her growing curves as your exotic strain's influence makes its presence felt.";
				WaitLineBreak;
				say "     'Ah-ha, yes, I can't believe it feels so *KEE*!' The needy scalie squeaks as her top constricts about her slender body, highlighting every little wobble of her supple mounds and tender swell of her gravid tum. Oh poor thing, let me help you with that, you simper, hooking one your talon under the hem of her blouse. You pull the fabric tight, letting the razor edges sink into the light fabric, as Medea ripening mounds strain against their cruel confines. You take a moment to admire the faint blush of her glittering ochre and yellow scales peeking through the tightening textile, before you languidly draw them upwards. You revel in the subtle tearing sounds of the fabric and at the cute look of relief on your eager milk-slut's face as her lush lacertidae body slips free of her silly little human trappings. Now, doesn't that feel better? You purr, pawing at her eggy middle, indulging in the sensation of your velvety pads gliding along the glassy equator of her petite baby bump.";
				say "     You know, you look so cute like this, you josh, at the sight of her blushing off-colored splotch of scales decorating her core. 'Mh-hm,' she murmurs, thin streams of cream leak from her thin lips, as her hands join yours in exploring the taut lumpy curve of her gravid midriff. 'So full, but I want more!' She mewls, burying her muzzle in the pillowy fur swaddling your [breast size desc of player] chest, creating the sweetest little furrows in your pelt as she eagerly kneads your bountiful bosom. Of course, have all the milk you want, you swoon, delighting at the assertive touch of her claws, and the gentle caress of her forked tongue playing across your innervated ducts. You press your [bodydesc of Player] form against the needy endotherm's expectant figure as if to bask in the tranquil thermocline created by your body's touch, and the heady dissonance of her sleek lightly-muscled scaled form massaging your plush cuddly pelt. A sentiment no doubt shared by your cold-blooded plaything, you muse, as she wraps her frilled tail around your waist for support.";
				WaitLineBreak;
				say "     Her knees shake with unrepressed rapture as her bliss-wracked body falls deeper into your [bodydesc of player] embrace. Unwilling to let her stumble, you ease your verdant bumpaholic to the floor, cradling her like a babe in your loving arms as you settle her comparatively tiny body beside yours. Such a hungry girl, just lie down now, let mommy take care of her, and her little ones, you chuff in a tender matronly tone, serpentining your claws along her reptilian flanks. Nodding, Medea stretches out alongside you, letting you drink in the spectacular sight of her milk-flushed body. Stretched to her absolute limits, her every labored breath, sends a cute little wobble through her ripe scaly form as she wraps her smooth slender legs about your [bodydesc of player] lower half. Her raptor-esque talons lightly graze your tender elastic skin as she lazily strokes her leaky tits.";
				say "     You watch the plush orbs slosh in her claws. Cream streams down the natural scaly grooves of her engorged chest and lush tum in a scintillating river of excess, as her body struggles to contain its pearlescent cargo. 'Yes mommy,' Medea chirps in a cute dreamy reptilian trill as her scaly breasts groan and slosh with untold liters of fresh milk, as they spill over the roof of her rose-tinted middle. 'Please, so sore,' your adorable feedee whines in a desperate submissive tone, fixing you with an imploring look. She reverently palms one of her engorged teats while her free paw roams her voluptuous form, eagerly groping the tight curves of lightly-muscled body, creating cute indentations in her plush scaly flesh as her clawed finger down her legs invitingly. Of course dear, you purr over the audible rumble of your tauric stomach at the sight of the perceived feast laid bare before you. You heft the proffered nip to your lips, giving her stiff teats a tender lap with your tongue's silken bristles, provoking a timid whimper from your scalie playmate.";
				WaitLineBreak;
				say "     As a gush of her balmy delight washes over your well-pleased palate, your practiced palms gently caress her verdant chest like a hungry kitten. A part of you can't help, but rumble happily at the sensation of your cheeks swell with the sweet little lizard girl's cream as the poor endotherm's body is relieved of her unnatural burden. Though with each hearty swallow, you can sense her flow decrease, and chest shrink ever-so-slightly, as if her native infection is unable to keep pace with your gluttonous body's needs. Or perhaps, her nanites are already starting to purge yours. No matter, you and your kittens will eat well regardless, you muse, delineating your claws along the steadily diminishing curve of her flush chest and ripe tum. Each provocative pass, eliciting a tender chirp and titillating quivers from your greedy plaything as she feeds. Your elated lover, eagerly strokes your ears, and plump tum in kind as your milk-stuffed bump lazy against hers. Your forepaws rove her hourglass waist and lightly-padded ass, delighting at the sensation of her glossy scales and soft frills innervating your supple paws.";
				say "     Such a sweet little eggy-slut, this is such a good look for you. You snicker, groping a paw full of plush maternal flesh. 'Thank you, your milk is so yummy, but... so full, it hurts,' Medea mewls plaintively, patting the drum tight scales of her swollen midriff. Shh, don't worry dear, just lie flat on your back, and you'll take good care of her, you purr, directing her to let go of your nip, then gently ease the ground. You prop her head on your fuzzy forelimb like a pillow, smirking at the sight of her cream stuffed middle. You can clearly see each individual tear-drop shaped scale decorating her tum and the taut rosy flesh peeking out between their edges. Her ever labored breath sends a cute little wobble through her gravid form. Reaching down, you delicately run your non-dominant hand along the glassy-smooth surface of her core in a soothing circuit, cooing, there-there, does that feel better? Nodding, Medea chirps unintelligible as she gropes her other stilling leaking chest with an imploring look on her reptilian visage.";
				WaitLineBreak;
				say "     Flashing her a knowing grin, you lean over her, cupping your lips to her chest, and sup deeply from her stiff milk nip. The tender teat hardly needs any coaxing beyond your lovely body heat and the loving touch of your pencil-thin lips to express as a generous rush of alabaster fluid bastes your voracious taste buds. Medea swoons, in a relieved animalist trill, while you rub her heaving tummy. You can feel her eggs growing larger by the moment even as her body skinks back down to her [']normal[']. Perhaps they might make nice playmates for your own kittens one day, you opine, as you quietly relieve the good doctor of her burdens. But such things can wait, you muse, tracing a claw along tight edges of her comparatively tiny frame, the pair of you spend the next few minutes, cuddling together on the cool sterile floor, while pampering your well-fed partner as she digests.";
				say "     [italic type]An indeterminate amount of time later[roman type], and Medea's body has more or less returned to her normal proportion, though her eggs seem to have gotten a hair larger in the interregnum. Though it might just be your imagination, their adorable little lumps seem just a tab more prominent, you opine, as Medea disentangles herself from you. 'My that was quite the experience [Name of Player], I hadn't expected such a, [italic type]potent[roman type] reaction,' she chirps, unconsciously smacking her lips in an almost catty fashion, as she rests her paws on the slightly swollen swell of gravid tum. 'Clearly this bears more study, but that can wait for another day, but I do believe you had a question for me?' Nodding, you relate Ava's request to her, and how you were wondering if it might be possible to somehow adapt your Unbirthing ability to allow two biological females to have a child together. 'Well,' Medea pauses and taps her toe claws along the floor in a thoughtful rhythm, 'it's not impossible, but I'll need some supplies and a fresh blood sample from you to tailor a new sequence of nanite command codes along with a few other reagents.' Flashing her the thumbs up sign, you tell her that's no problem. 'Splendid, now I have one last question before I take a blood sample. Have you noticed any changes since you've begun adopting.'";
				if "Safe Appetite" is listed in feats of Player:
					say "     Honestly no, your body seems to have adapted to the process, outside of the occasional urge to unbirth people, you haven't changed much. 'Really, how would you describe this urge?' Medea asks, cocking an [']eyebrow['] at you inquisitively. Thinking on it, you'd say it was like a mix of extreme hunger and heat, as if you have a void growing in your middle that hits wherever you go too long without a bun in the oven. 'Interesting, I'd hoped that might be the case after seeing the after-effects of your first adoption. I had some concerns, the raw rush of foreign nanites might have proved too much for your body to handle, it's good to see that theory was proven wrong,' Medea chirps, as she jots down your response. 'I think that's all I need. Let me just take a blood sample.'";
				if "Safe Appetite" is not listed in feats of Player:
					say "     Ruminating on Medea's question, you tell her that aside from the occasional post-adoption transformation, your body hasn't changed much. 'Really, you still transform when you adopt? It must be hard keeping your desired form then,' Medea notes with an edge of concern in her otherwise clinical tone. You tell her it can be, but you've gotten used to it at this point, and have your means of coping with any unwanted changes. 'You must have quite the flexible psyche then, most people can't handle a single transformation. I had hoped your body might adapt on its own, hm,' she pauses to jot something down, 'I'll have to make some adjustments in the future, perhaps a concentrated burst of microwaves could be used to nullify any invasive strain before the builder nanites reach critical saturation levels. For now, let's get that blood sample.' Nodding you tell her to go ahead. 'Splendid, allow me to finish up here and I'll go grab my things,' she says, while idly jotting down your response.";
				WaitLineBreak;
				say "     Sauntering over the back of her office, Medea roots through a series of draws pulling some sterling chemicals and a package of syringes, a felt pen, a handful of lab-grade vials, and a wad of cotton. She quickly scribbles your name plus the date on them and motions for you to place your arm on the counter beside her. Complying with her request, you do as she instructs. 'Alright just look away for a second,' nodding as you tilt your head to one side. You feel a cold pressure on your arm as Medea disinfects the area followed by a tiny pinch. 'Done, you can look now,' Medea says pressing a wad of gauze to your arm. Impressed by her skill, you tell her you hardly even noticed. 'Thank you, I've had a lot of practice on needle-phobic people. Now, as to your request, as I said I'm going to needs some supplies and better equipment, most of what you'll need can be found in Trevor labs.'";
				say "     'However, I don't even know how to get into to the more secure areas, supposedly the place was locked down pretty tight before the outbreak. I don't imagine you could just waltz into that place without a keycard, or a staff member to show you around.' Not a problem, you tell her, you've been there before and have some knowledge of the layout. 'Ah, aren't you the resourceful one, [Name of Player]. That simplifies matters greatly. Let me just get a list together of what I need,' Medea replies, swishing her tail towards a nearby file cabinet tucked in the corner of her office. For the next few minutes, the good doctor digs through various poorly-organized drawers. Eventually, she comes across what she's looking for, 'Here we go,' she says, plucking out a number of manila folders. She quickly skims them without showing you the contents and jots down a list of items on a bit of scrap paper. When she's done, Medea hands it over for inspection. Looking it over it appears she wants: fresh fish from a very specific industrial canning facility in the warehouse district, a slew of exotic chemicals, and some equipment whose name has more umlauts than a page in the average German phonebook. Once you finish reading it over, you tell the good doc you'll get right on it. 'Excellent,' Medea chirps, 'and do be careful [Name of Player].'";
				LineBreak;
				say "     [italic type]Warning: Running or submitting in the following events will, at best, fail Ava's quest, at worst it will lead to a sexless game over[roman type].";
				now Breeding Material is resolved;
				now Glass Castles is active;
				now Registry Location is active;
				now Industrial canning facility is active;
				ItemGain Medea's List by 1;
				now XP of Ava is 1;
	if "UB Pred" is listed in feats of Player and Player is impreg_able:
		say "     'Opening the door to Medea's abode, you spy the genial lizard woman standing beside her well-stocked countertop with her back turned to you as she mixes a pair of vibrant-colored vials, filled with some unknown fluid. At the sound of the aperture closing behind you, Medea's yellow-brown head frills appear to perk up slightly as if to better angle her ear holes as she sets down the containers. She turns on the balls of her padded reptile in paws, revealing the unsubtle swell of her scaled tum poking out from the hem of blouse. 'Ah well if it isn't my favorite patient, what can I do for you today?' Medea smirks, casually and shamelessly eyeing up your middle as you walk in, as if inspecting her handiwork. Returning her greeting, you tell her nothing for you, thanks, but a lover of yours had a question for her. Nodding, Medea motions for you to continue. Does she remember how she was able to give you the ability to unbirth people a while back, you inquire, absentmindedly petting your tummy fur as you recall the experience.";
		say "     'I do,' Medea preens through a proud toothy grins, resting a hand on the roof of her eggy laden tum, 'it was one of my finer breakthroughs, I trust you've been enjoying the *ahem* adoptive process.' She snickers, taking out a ringed notepad with a single black plastic  pen tucked in its coils from her lab coat pocket. 'Speaking of which, I'd say you're well overdue for a follow-up exam, shall we?' She asks, giving the butt of her pen a quick click. Shrugging and wanting to stay on the doctor's good side, you tell her that's no problem. 'It's too bad you're not expecting though. I would have liked the contemporary data, *sigh*, we'll just settle for a basic blood test,' Medea grumbles, looking at your empty womb with a look of utter disappointment. 'Assuming you consent with the procedure, of course.' Bobbing your head, you tell her that's fine. 'Splendid, now let me get my supplies.' She says, sauntering over the back of her office.";
		WaitLineBreak;
		say "     Medea roots through a series of draws pulling sterile and still in their package syringes, a felt pen, a handful of lab-grade vials, and a wad of cotton. She quickly scribbles your name plus the date on them and motions for you to place your arm on the counter beside her. Complying with her request, you do as she instructs. 'Alright just look away for a second.' Nodding as you tilt your head to one side, you feel a cold pressure on your arm as Medea disinfects the area followed by a tiny pinch. 'Done, you can look,' Medea says pressing a wad of gauze to your arm. Impressed by her skill, you tell her you hardly even noticed. 'Well, I've had a lot of practice on needle-phobic people. Now, you were telling me one of your partners had a question for me?' Right, her name is Ava, she was the one wondering if it were possible for two biological women to have a child. Considering the resounding success of her unbirth treatment, you figured she might be able to adapt the procedure or piggyback off any insights she may have gleaned from the whole affair.'";
		say "     Well, I know of some foreign fertility clinics that are trying something similar, for those with the money,' Medea adds with an exasperated sigh. 'Right now, I'd say the easiest option would be some estosterogen pills, rather than attempting something so invasive. They're non-transformative and should allow you both to grow male genitals without compromising your female anatomy. I heard some were being tested in the city hospital before the cataclysm as part of some weird bluesky HRT project. I am sure you could find some there, you could just bite the bullet and find a donor male or herm.' Shaking your head, you inform the good doc, Ava is a bit agoraphobic and borderline misandrist at times, so that option is out of the question. 'Then I'm not too sure what I can do for her,' Medea replies, shrugging her shoulders. Oh come on doc she's dang fertility genius, she's made cunt pills, ovi pills, mpreg pills, learned how to give people control when they get pregnant, and even figured out UB. This should be nothing for her!";
		WaitLineBreak;
		say "     'Ok maybe I do,' Medea says blushing as best her scales will allow, 'but I need some supplies and better equipment. Thankfully, much of I need is in Trevor labs, however I don't even know how to get in, supposedly the place was locked pretty tight before the outbreak. I don't imagine you could just waltz into that place without a keycard or staff member to show you around.' Not a problem, you tell her, you've been there before and have some knowledge of the layout. 'Ah then let me just get a list together of what I need,' Medea replies, swishing her tail towards a nearby file cabinet tucked in the corner of her office. For the next few minutes, the good doctor digs through various poorly-organized drawers. Eventually, she comes across what she's looking for. 'Here we go,' she says, plucking out a number of manila folders. She quickly skims them without showing you the contents and jots down a list of items on a bit of scrap paper. Looking it over it appears she wants: fresh fish from a very specific industrial canning facility in the warehouse district, a slew of exotic chemicals, and some equipment whose name has more umlauts than a page in the average German phonebook. Once you finish reading it over, you tell the good doc you'll get right on it. 'Excellent,' Medea chirps, 'and do be careful [Name of Player].'";
		LineBreak;
		say "     [italic type]Warning: Running or submitting in the following events will, at best, fail Ava's quest, at worst it will lead to a sexless game over[roman type].";
		now Breeding Material is resolved;
		now Glass Castles is active;
		now Registry Location is active;
		now Industrial canning facility is active;
		ItemGain Medea's List by 1;
		now XP of Ava is 1;
	else if "UB Pred" is not listed in feats of Player:
		say "     'Oh hello again friend, what can I do for you?' Medea chirps, as she watches you walk in. Reciprocating her greeting, you bring up Ava's question about the possibility of two biological women having a child together and if she might have the means to facilitate this. 'Sadly, no,' Medea replies, clicking her toe claws against the floor. 'With the pandemic going on, options are rather limited. Right now your best option is finding a donor male or herm, I am sure there are quite a few willing mutants in the city.' Medea quips, with a devious smirk. Shaking your head, you tell her Ava is rather set on having a kid with you specifically. 'Then the easiest solution would be to find some estotrogen pills, they should grant you both male anatomy without compromising feminine attributes. If memory serves, you can find them at the city hospital. I recall they were part of some experiential HRT program, but I don't know who ran it or why though. The A.P.A doesn't exactly recognize intersex dysmorphia as a valid mental disorder, yet.'";
		say "     Shaking your head, you tell her that won't work either Ava is a borderline misandrist and mildly agoraphobic. 'Then there is not much I can do then. Maybe when things blow over you check around and see what's in Ava's price range.' Medea shrugs. Really there's nothing she can do? You ask. 'Well,' Medea hums, tapping her muzzle thoughtfully, 'maybe but it won't be easy. Let me check some of my notes and I'll see what I can do,' Medea replies, gesturing to a nearby file cabinet. 'But I should warn, some supplies and need better equipment, hotplates and mess kits can only get you so far. The only place I can think of that would have them is Trevor labs, and that place was built like a fort before the darkest days of the current cataclysm started to stretch on ahead of us.'";
		WaitLineBreak;
		say "     'I don't imagine you could just waltz into that place without a keycard, or staff member to show you around,' she says somewhat sheepishly, as her tail swishes nervously. Not a problem, you tell her, you've been there before and have some knowledge of the layout. 'Ah, then let me just get a list together of what I need,' Medea replies, swishing her tail towards a nearby file cabinet tucked in the corner of her office. For the next few minutes, the good doctor digs through various poorly-organized drawers. Eventually, she comes across what she's looking for. 'Here we go,' she says, plucking out a number of manila folders. She quickly skims them without showing you the contents and jots down a list of items on a bit of scrap paper. When she's done, Medea hands it over for inspection. Looking it over it appears she wants: fresh fish from a very specific industrial canning facility in the warehouse district, a slew of exotic chemicals, and some equipment whose name has more umlauts than a page in the average German phonebook. Once you finish reading it over, you tell the good doc you'll get right on it. 'Excellent,' Medea chirps, 'and do be careful [Name of Player].'";
		LineBreak;
		say "     [italic type]Warning: Running or submitting in the following events will, at best, fail Ava's quest, at worst it will lead to a sexless game over[roman type].";
		now Breeding Material is resolved;
		now Glass Castles is active;
		now Registry Location is active;
		now Industrial canning facility is active;
		ItemGain Medea's List by 1;
		now XP of Ava is 1;


Table of GameEventIDs (continued)
Object	Name
Glass Castles	"Glass Castles"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Glass Castles"	Glass Castles	"[EventConditions_Glass_Castles]"	Primary Lab	2500	2	100

to say EventConditions_Glass_Castles:
	if HP of Ava is 5 and BodyName of Player is "Margay Taur" and Player is pure and Player is female and ScaleValue of Player is 5 and HP of Doctor Matt < 100 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Glass Castles is a situation.
ResolveFunction of Glass Castles is "[ResolveEvent Glass_Castles]".
Sarea of Glass Castles is "Nowhere".
Glass Castles is inactive.

to say ResolveEvent Glass_Castles:
	say "     Quietly pawing up to Dr. Matt's containment cell, you spy the man hard at work, hunched over his PC. His faceguard awash with a soft blue light of his monitor as he tabs through pages of spreadsheets and background programs. Recalling the list that Medea gave you, and reasoning that since Matt is the last sane member of the research staff left, as far as you are aware at least, he might have some knowledge of where to find these items or at the bare minimum, point you in the right direction. With no other leads, you clear your throat to get his attention. Lost in his work though he doesn't respond, forcing you to rap your knuckles roughly on the glass. Shocked by the sudden noise, Matt leaps to his feet in a panic, knocking over his office chair. He grabs a nearby red staple gun and points it around the room frantically like it were a handgun as he swivels his head in blind fright looking for the source of sound with a terrified expression seared into his face. When your eyes meet, you throw up your arms in mock surrender, jokingly telling him to not shoot.";
	say "     At the sound of your familiar voice, Matt's expression softens as he loses a light chuckle. His gaze drifts from the stapler to the reinforced glass wall protecting him from the horrors of the outside world. The man appears to calm down a bit, and asks what you're doing here, stating that he's in the middle of some important tests that demand his full attention. Wanting to respect his work, even if you don't fully understand what it is, you then give him a brief censored version of events. Explaining how you're assisting another doctor studying various aspects of mutant reproduction and need some supplies from the lab. Nodding along, Matt, likely intrigued, asks to see the list in question. Flashing him the thumbs up sign, you press the list to the glass, and notice the light of recognition in his eyes as he reads off the items. 'Hm, under normal circumstances, I'd have to turn down such a request. However, considering all you've done to support the cause, I may know where these are, but,' he pauses to click his teeth, 'you'll need a keycard to enter that section of the labs.'";
	WaitLineBreak;
	say "     'Give me a moment, I think there's a visitor's pass somewhere in here.' He says, motioning to the poorly organized clutter littering his campsite. He kneels down beside a pallet of sealed office snacks, his hazard suit squeaks loudly as if somewhere rubbing to over inflated balloons together as shift through the pile of supples. 'Ah, this should work.,' Dr. Matt remarks, as he pulls out a bright yellow keycard from under a pile of half eaten instant noodles that like their home to a budding colony of scoby cakes. 'The items you're looking for are in Isolation Lab Alp-69 sub-level 1, Access Point Primus. I would strongly recommend bringing a strong rucksack or a dolly with you if you truly intend to ransack the lab.' Why is that, you ask. 'Well the,' Matt pauses as he takes in long deep breath, 'Schäfer-Nägele-Göring-Köhne-Wolfeschlegelsteinhausenbergerdorff-Jorgen-Von-Strangle-Jager-Bombastic-Rothschild-Habsburg-Vandercunt-autonomous-exo-lab you're associate is seeking is powered by an advanced Stirling radioisotope generator.'";
	say "     Normally, we employ a forklift to move it, but,' he shrugs as he looks over your tauric figure, 'I'm sure your current form will manage it, somehow,' the doctor replies, as he plucks a lightly used napkin from his suit pocket and scribbles something that looks like directions on the back with a nearby pen. 'You'll need these too,' he says dryly, tucking both the card and napkin between his pointer and middle finger, then flashes his chicken scratch in your direction  'After the outbreak, a number of highly sensitive experiments were left... unattended far too long.' What sort of experiments, you query, naturally curious about what manner of hazards you may encounter. 'The need-to-know kind,' Matt grunts, causing the budding crows feet ringing his eyes to twitch ever-so-slightly in aggravation, though whether or not this sentiment is directed at you, or something else you can't say. 'All you need to know is that when containment failed, much of the lower level was damaged, and several passages collapsed in the resulting chaos,' he says, in a lighter tone, motioning towards a tab on his workstation labeled: Deadman's Hand Protocol.";
	WaitLineBreak;
	say "     'Going by the last ping sent from the building's automated custodian, I doubt you'd be able to find your way in without them.' Dr. Matt adds, as he flicks open the two way airlock separating the two of you and places the note along with the keycard inside. With a quick practiced motion, he quickly punches in some manner of code, or command, you can't be certain from your current angle into the pad beside the airlock before sealing it, then waits patiently as the device cycles. Seconds later, a light on your side flashes green as the aperture hisses and opens, loosing a low pungent fumes of sterilizing chemicals. While he watches you pocketing both items, Matt loudly clears his throat to get your attention. '*Ahem* [name of Player], do be careful down there.' You tell him not to worry about it. You're a big girl and you can handle whatever is down there. 'I should hope so [Name of Player], you've been a,' Matt pauses, parsing his lips as if searching for the right word, 'passable assistant throughout the outbreak, your loss would be a shame,' then turns back to this work without sparing you another moment's notice.";
	LineBreak;
	say "     [italic type]Hint: Having Klauz as your active pet during the follow-up event will unlock a special scene with him.[roman type]";
	now Glass Castles is resolved;
	now Finding Alp sixty nine is active;
	now Energy of Ava is 1;
	if Registry Location is unresolved:
		now Registry Location is resolved;


Table of GameEventIDs (continued)
Object	Name
Registry Location	"Registry Location"

Registry Location is a situation.
ResolveFunction of Registry Location is "[ResolveEvent Registry_Location]". It is inactive.
Sarea of Registry Location is "Sealed".

to say ResolveEvent Registry_Location:
	say "     Bereft of assistance in navigating the lower level of Trevor Labs, you set off boldly into the depths in search of any document or records that could aid in your search. You pour through countless defiled labs and ruined passageways dotting the underground catacombs. The air grows more humid and oppressive, the scents of mold and decay war with one another for primacy as you trek deeper into the abyss. Many of the paths you cross show signs of mutant aggression as the innumerable scuff marks dotting the floor all tell the sad tale you've seen far too often on the surface. You muse, observing the trail the heel prints and nail scratches, and claw marks scattered about the floor where some luckless soul was dragged off into the gloom. Gradually, these signs of resistance fade as pieces of what may have once been a bright orange cleansuit litter the ground like luminescent bread crumbs as whoever this once was seemed to have succumbed to their infection, you note, as you spy the unsubtle change in the scrawling blemishes belighting the ground grow closer in shape till at last they become indistinguishable from one another.";
	say "     There the signs of violent struggle end, and the eerily similar set of claws seem to entwine with one another in carnal dance of dominance. Here and there lucid scintillating slime leaks from what may have once been a gleaming white roof, in a prattling tattoo, now though, the tiles are tinted necrotic black by a writhing ebon mold, streaked with pulsing crimson veins spreading across its surface. The labs fare little as most appear to have been host to some manner of stampede, or wild mass exodus of their previous occupants as ruined priceless equipment and rare chemicals litter the floor like common trash on the surface. Others though are far less fortunate, as the building plumbing and waste water pipes have ruptured like benighted cysts spilling countless gallons of foul-smelling liquid into them, ruining anything of value they may have contained. More than once, you come across a lab with its HVAC seals still intact and flooded to the rafters as if it were some mockery of a bottle garden.";
	WaitLineBreak;
	say "     Their lurid metallic blue [']waters['] are replete with cast off clothing, rotting quasi-formed organic matter, and alien aquatic lifeforms. Some even appear to possess a modicum of, if not sentience, then a dim base awareness of their surroundings, and perhaps even an inkling of their fate too, you muse as you watch a misshapen fetal mass of gray riddled with tumorous blubber, dark blood-shot eyes, and pseudo-limbs evocative of a poorly-preserved coffin-birthed child drift along the unseen currents of its blighted enclosure. Alongside it, you spot the wriggling bright yellow forms of plasmodial colonies glomming onto the walls, and partially translucent Cnidaria tendrils shaped like a prismatic helix spotted with glowing red nodules reminiscent of the boiling plasma found on the rims of accretion disks spirals aimlessly through the murk. Observing the blobs movement, you can almost feel the hate and... envy, radiating off from the distressed primeval eyes of the fetal mass as they longingly stare at your [bodydesc of player] [bodyname of Player] body.";
	say "     Poor thing, you whisper under your breath, placing your hand on the clear barrier separating you. They must have been one of the staff here, or perchance, one the former staff descendants that got caught in there when the pipes failed, its current appearance, likely an unfortunate result of nanite's attempt to keep it alive in whatever manner of carcinogenic slurry it now finds itself in. A part of you doubts if the creatures could even leave their fetid cradle at this point, at least in their current state. Who knows how much of their minds are still intact, or if it would even be possible to change them, you remake internally, watching a light fog form around your palm print. You observe the fetal creature swimming next to it, its crude misshapen limbs flailing akin to some emaciated palsy victim, as it tries to place its crooked hand beside yours, though you use the term in the loosest possible sense. The tainted appendages graying flesh is spotted with chem burns both old, and new, its digits twisted as if they were suffering from Dupuytren's contracture as its rubbery calloused fingers struggle to stay unclenched.";
	WaitLineBreak;
	say "     When your hands [']meet['], a sudden tremor passes through as the limb splits along an impossible seam, revealing rows of mismatched teeth housed behind droop flaps of flayed flesh, reminiscent of some candid bog body recently pulled for the mire. Its weeping gums are riddle with sickly yellow phosphorescent cysts, and a thin bone spur-riddled tongue nestled along the rotten appendage. Stretching its maw at an impossible wide angle, the thing lunges at the aluminum crystal barrier with unnatural speed, its impact sends a resound quake through the floor beneath as its fangs shatter on the artificial sapphire. Caught off guard by the explosion of violence as the creature batters its unearthly maw against the wall, heedless of the damage it does to itself, you stumble back and slip on an errant puddle of some nameless viscous ooze. You're sent tumbling back, and collide with a door leading to a darkened adjacent lab. The aperture holds for but a moment, then gives with frightful metallic knell as you fall into the all-encompassing gloom with a loud thud.";
	say "     Stumbling to your feet, dust, or at least what you dearly hope is dust, billows around you in an oppressive cloud. Your senses are greeted by the sweet pungent tang of ozone mixed with organic decay like some great inferno had raged through here. As if to confirm these suspicions, you note the presence of a melted lab bench tucked in the corner of the otherwise vacant room and the huddled charred remains of a cleansuit curled in a ball beneath it. The former occupant was likely in the throes of nanite conversion as you note the former human's carbonized form is draped in boiled blackened plastic akin to a shroud, twisted far beyond the acceptable norms of baseline humanity. Their legs are bent at alien insectoid angles that end in long scything claws. Their jaws are split down the middle and lined with saw-like fangs akin to some abyssal fish while tendrils longer than the victim was tall sprout from their back and tailbone. Its hands though, are still human, and in them is clutched an intact, if somewhat singed metal storage clipboard.";
	WaitLineBreak;
	say "     Judging from its pose, they seemed to have been trying to protect it with their body even as the flames consumed them. Wondering what could have been so important, you gingerly extract the metal container and flip it open. Inside, you find a slightly heat-warped photo placed atop a small binder. Looking at the picture, you see a middle-aged, if somewhat overweight, latino man with almond eyes, rosy dimpled cheeks, a kind weather beaten face, and glossy, oiled, slicked back hair dressed in a tuxedo. Besides him is a green-eyed thin red-headed caucasian women in her mid-forties wearing a satin bridal dress, carrying a huge bouquet of red roses almost as large as her ";
	if "Touched by Madness" is listed in feats of Player:
		say "one point three meter frame. ";
	else:
		say "four foot five frame. ";
	say "They stand together beneath a white wicker arch way on a clear blue day, behind them a wide-open grassy field stretches on for acres. Flipping the photo over, you see the picture is dated not all that long before the outbreak.";
	say "     This realization fills you with a sudden rush of melancholy at the loss, and lacking means to identify them as their mutations and fire damage have stripped away convenient markers of their prior identity, you decide to place the photo in fallen person's hands, in the hopes that one day another may find it and see it returned to their surviving partner. You then turn your attention to the binder, leafing through the pages. You realize that its an inter-lab shipping manifest belonging to someone called, worker class code 5192 R. Mendoza, in it you find a number of the items you were looking for have been moved to the hazardous testing and isolation lab Alp-69 along section, access point Primus. Whatever that means, you muse, leafing through the documents till you find the transfer paperwork. Skimming through it, you discover this lab is used to simulate deep space conditions, specifically the effect of high radiation and extreme temperatures on electronics.";
	WaitLineBreak;
	say "     Trevor Labs appears to have accepted a contract by a private, yet unnamed space company to test something called the: Schäfer-Nägele-Göring-Köhne-Wolfeschlegelsteinhausenbergerdorff-Jorgen-Von-Strangle-Jager-Bombastic-Rothschild-Habsburg-Vandercunt autonomous exo-lab. Apparently, it was slated to be sent to Mars sometime in the next twenty-six to fifty-two months, and Trevor was set to do the final stress testing prior to launch. The results of which are still pending, you note thumbing through the last pages, and find a solid black keycard tucked away behind the binder with the words [italic type]H-sec Clearance[roman type] emblazoned on the front in bold silver letters. Pocketing it, you decide to hang on to it in the off chance that the lab is locked. Now you just have to find [bold type]Alp sixty nine[roman type], wherever that is. You grumble under your breath as you sneak past the strange feral drifting about its unearthly bottle garden, and back towards the upper levels to plan your next move.";
	LineBreak;
	say "     [italic type]Hint: Having Klauz as your active pet during the follow-up event will unlock a special scene with him.[roman type]";
	now Registry Location is resolved;
	now Energy of Ava is 2;
	now Finding Alp sixty nine is active;
	if Glass Castles is unresolved:
		now Glass Castles is resolved;


Table of GameEventIDs (continued)
Object	Name
Finding Alp sixty nine	"Finding Alp sixty nine"

Finding Alp sixty nine is a situation.
ResolveFunction of Finding Alp sixty nine is "[ResolveEvent Finding_Alp_sixty_nine]". It is inactive.
Sarea of Finding Alp sixty nine is "Sealed".

To say ResolveEvent Finding_Alp_sixty_nine:
	if Energy of Ava is 1:
		say "     Following Matt's crude directions, you locate the route leading to access point Primus, and Alp-69. The going is slow as you're never quite sure what's hiding in the shadows cast by the gloomy emergency lighting, and you have no desire to bump into the local mutants just yet. Although, looking at the state of this part of the lab, you might have preferred the company, you muse, noting the light sheen of some lucid matter dripping down the wall and air duct in a slow steady tattoo. The lab alcoves themselves aren't faring any better as a thick layer of pale crimson mold and bubbling ebony sludge has taken over many of them. Here and there, you notice the pseudo-organic matter seeping out of the walls through the electrical outlets and vents. In some places, you spy quivering bulges in the walls where the stuff seems to be pooling, and growing as gilled veiny mushrooms bore their way through the wall. Interspersed with the alien material, you spot the tattered remains of bright-orange cleansuits floating on their surface, as if they were long forgotten buoys cast adrift upon the currents of some alien sea.";
	else if Energy of Ava is 2:
		say "     Reasoning a facility of this scale must have some manner of map or directory, to keep new employees, visitors, or logistical staff from getting lost. You begin searching around the branching paths leading outward from the central staircase for signs of an interior floor plan. Using common sense, you eventually locate it tucked away near one such split, sadly, the map is fairing little better then the building itself. Streaked with yellow-brown mildew, its multicolored ink runs and pools at odd angles, obscuring much of the building's layout, yet you can still draw a few inferences and locate passages leading to access point Primus though who can say how many are still navigable given the poor state of the building? A part of you briefly considers taking the map, tattered though it may be with you, but you decide against it. The parchment is on the verge of crumbling at any moment, instead you spend a few minutes to commit it to memory then set off into the fetid depths.";
		say "     The going is slow as you're never quite sure what's hiding in the shadows cast by the gloomy emergency lighting, and you have no desire to bump into the local mutants just yet. Although, looking at the state of this part of the lab, you might have preferred the company, you muse, noting the light sheen of some lucid matter dripping down the wall and air duct in a slow steady tattoo. The lab alcoves themselves aren't faring any better as a thick layer of pale crimson mold and bubbling ebony sludge has taken over many of them. Here and there, you notice the pseudo-organic matter is seeping into the walls through the electrical outlets. In some places, you spy quivering bulges in the walls where the stuff seems to be pooling, and growing. Interspersed with the alien material, you spot the tattered remains of bright-orange cleansuits floating on their surface as if they were long forgotten buoys, set adrift upon the currents of some alien sea.";
	say "     Many of them appear to have ruptured from some internal pressure as their former wearer either outgrew them or simply burst forth like seeds from rotten fruit. Others show signs of having been shredded after a struggle, likely with their mutant peers. Despite this, the area seems rather deserted, for the moment. A part of you hopes that this is due to good fortune, but your inner cynic wonders if the mutants might be avoiding this section deliberately. If true, you'd rather not find out what's keeping them away. Regardless, you remain unmolested all the way to Alp-69. Once you arrive, you're unsurprised to find the thing is locked down by a massive tungsten blast door. Thankfully, you spot a red LED light flashing nearby attached to a black plastic card-reader recessed into the wall. Experimentally swiping your keycard, you watch the LED switch from red to yellow. For a moment nothing happens, then the P.A crackles around you as an automated male voice bellows. [bold type]'DECONTAMINATION IN PROGRESS, RELEASING PURIFICATION AGENT: AJAX-BLUE[roman type]! Please standby until the all clear signal is given.'";
	WaitLineBreak;
	say "     A low hissing knell cuts through the gloom and the mighty cry of the angry klaxons blaring through the halls as the building's failing subsystem struggles to carry out their command. Covering your ears to block out the horrid noise, you almost fear the sub-level might break as the ceiling shakes and bits of cement flakes from the walls as the voice yells. 'Warning system failure, corruption found in kernel node: XZZ821 vector unknown, rerouting to node: D33281. Hand protocol initializing... buffering... buffering, protocol accepted,' the voice intones as the building's stricken plumbing system groans around you. '[bold type]PURIFICATION COMMENCING![roman type]' As you sigh in relief as the sound of gentle rain begins to echo from behind the heavy metal blast wall. Only to have your spirits dashed as the voice blares. 'Warning: Potential Class-10 biohazard detected, purification can not be completed at this time. Purgation squads: Xiphox, Gladius, and Imperious, report to ALP-69!! Priority: Terminus Alpha! Lower priorities tasks are suspended, use of all weapon platforms approved! Flamer usage approved! Attention staff, this area is now considered a free fire zone!'";
	say "     'Addendum: all staff, be advised that this event is now classified as per your N.D.A and failure to comply will result in existential termination as per the revised Patriot Act of 20-[bold type]*ZXT*[roman type] subsection: error 404 file not found. Now releasing safety locks,' the canned message concludes as the blast door slowly retracts into the ceiling. Once it's clear, you note that the lab's entrance is divided into two sections, one is a clear glass-like substance framed by black metal barrier larger than most heavy industrial forklifts. Peering at the edges, you spy a number of generic warning labels in different languages dotting its edges all warning staff to keep clear when the safety shield is being lowered. Given the size and presence of motorized grooves, which aren't all that different to ones you've seen used to shutter stores. You surmise this section is able to be raised and lowered, possibly to bring in, or remove large equipment. Peaking through it, you're happy to see that despite some mist dripping down the walls, the lab appears to be fully intact.";
	WaitLineBreak;
	say "     Analyzing the layout, you spot a solid white series of shelves and lab equipment arrayed on the walls around a central fume hood. While the lab itself has enough room around it to fit a dozen or more people in it, in the rear, you note the presence of another isolation chamber with its blast doors still locked. A solid black keycard reader blinks nearby, its yellow LED casting the room in a sickly pale irregular glow. Adjacent to the outer viewing window, you spot a heavy hermetically-sealed airlock door. Lacking any features or interface, you briefly wonder how you're supposed to open the thing when it suddenly starts to hiss as the aperture creaks open spewing whatever was inside directly in your face. At once your nose is assaulted with the overpowering stench of chlorine, bromine, and other counter septics singe your lungs as the different atmospheres of lab and corridor attempt to equalize. For the moment, you have no choice but to retreat as you fall back coughing and spitting phlegm as the air around you clears.";
	say "     Your nanites are already in the process of adapting to the toxins though, so there shouldn't be any lasting damage, you hope. By the time the lab has properly vented, and the air stops stinging your senses, you've cleared your lungs of much of the irritants though you still feel like you just washed your lungs out with jet fuel. You take a moment to compose yourself, then check your surroundings once again. You worry something must have heard that, it would be impossible not to, yet you find your solitude is undisturbed. Still, you're wary of further surprises as you slink back to the Alp-69. You can still smell the [']purification agent['] as the building's P.A called it, but it's no worse than an over-chlorinated indoor pool now. Hopefully it hasn't damaged the equipment, but there's no way to know until you check. Although, considering that the P.A mentioned a potential biohazard, you suspect the cleansing chemicals that were just released were meant to neutralize biological threats.";
	WaitLinebreak;
	say "     The spoils should be relatively unharmed, in theory at least, you tell yourself. Mentally gritting your teeth for what will no doubt be a monotonous search, you whip out the good doc's list and search the room in a clockwise pattern starting at the shelves closest to the door. Cracking the first one open, you're pleasantly surprised to find that none of the items appear damaged by the spray, too bad you have no idea what these things are though, or how they're organized. Oh well, good thing you have a list, so you don't have to drag everything out of here. A bit of digging and sorting later, and you've collected most of the goods. You're just lacking the Schäfer-Nägele-Göring-Köhne-Wolfeschlegelsteinhausenbergerdorff-Jorgen-Von-Strangle-Jager-Bombastic-Rothschild-Habsburg-Vandercunt autonomous exo-lab. Doing a second, then a third search, you're left with three possibilities; the thing was moved, stolen prior to your arrival, or it's in the isolation annex chamber.";
	say "     After your experience opening this place up, you're not exactly thrilled about cracking another seal. Your options aren't all that great though, so while you're here you might as well give it a try. After all, what's the worst that could happen? You unleash [italic type]ANOTHER[roman type] apocalypse, you opine, swiping your card. The LED switches from a flickering yellow to solid green as the blast shield retracts in less dramatic fashion than the first, revealing what you think is a black void behind the security door. Then something in the wall clicks and the lights kick in flooding the room in a sterile white light. Damn it, knew this was too easy, you sigh, getting a good look at the chamber and its occupant. The room itself is a cramped depressing thing just barely large enough for three people to stand at arms length with high shiny white walls and bright phosphorescent lights. Observing the ceiling, you spot several cameras and sensors recessed into the plastic-like material.";
	WaitLineBreak;
	say "     Nestled in the far left corner, you spy its lone occupant, a solitary flesh blob placidly nesting beside the device. Or at least, you assume it is, to your eyes the artifice is a solid cube of black metal no larger than a mini fridge with several USB ports arrayed around some sort of hatch that reminds you of a side-loaded washing machine. You don't see any manner of display, readout, or identifiable marking anywhere on it from this distance. Of course the thing could just be off, but you have no way of knowing until you actually inspect it. Seeing no better option, you gently try the door hoping the blob is asleep and you can simply walk around it. Your hopes are instantly dashed the moment the door opens as the creature shoots up and charges at you.";
	Challenge "Flesh Blob";
	if fightoutcome >= 10 and fightoutcome <= 19: [Win]
		say "[Cum_Girl_Fight]";
	else if fightoutcome >= 20 and fightoutcome <= 29: [Lose]
		say "     Beaten back by the blob, the creature launches itself at your weakening form, it latches on to your chest as mass wraps about you pulling you to the ground. Expecting that the creature, just like every other mutant you've met going to fuck you and be done with, you offer minimal resistance as its gooey mass spreads over your body. Hopefully it will be done soon and you can loot this place in peace. Too late though, you realize the thing isn't try to fuck you, its try to absorb you! You try to struggle or pull away from, yet your efforts are for naught as the creature pours its biomass into you and the maddening chattering of it previous victims blares in your skull like an angry swarm of bees blotting out your thoughts.";
		wait for any key;
		now humanity of Player is 0;
		now FaceName of Player is "Flesh Blob";
		now TailName of Player is "Flesh Blob";
		now SkinName of Player is "Flesh Blob";
		now BodyName of Player is "Flesh Blob";
		now CockName of Player is "Flesh Blob";
		trigger ending "Flesh Blob Infection";
		end the story saying "We ArE tHe bLoB! Resistance is impossible, your biological and nanomechanical distinctiveness has been to our own.";
		now battleground is "void";
		wait for any key;
		now skipturnblocker is 1;
		follow the turnpass rule;
		stop the action;
	else if fightoutcome >= 30: [Flee. Or not...]
		say "     Sensing the tide of battle shifting in the Blob's favor, you try to dart out of the iso lab, and back to the comparative safety of the lower level. Though you don't get that far, as creature launches itself at you, stumbling you try to throw it off, but this feral's hold is too strong and soon its unnatural form seeps into you as the maddening chattering of it previous victims blares in your skull like an angry swarm of bees drowning out your thoughts."; [Not the Bees!]
		wait for any key;
		now humanity of Player is 0;
		now FaceName of Player is "Flesh Blob";
		now TailName of Player is "Flesh Blob";
		now SkinName of Player is "Flesh Blob";
		now BodyName of Player is "Flesh Blob";
		now CockName of Player is "Flesh Blob";
		trigger ending "Flesh Blob Infection";
		end the story saying "We ArE tHe bLoB! Resistance is impossible, your biological and nanomechanical distinctiveness has been to our own.";
		now battleground is "void";
		wait for any key;
		now skipturnblocker is 1;
		follow the turnpass rule;
		stop the action;
		
to say Cum_Girl_Fight:
	say "     Slapping down the insolent gnat, the blob looses a terrible ear-splitting shriek as it darts past you and off into shadowed halls, leaving a thin trail of ooze behind. Satisfied that it's no longer a threat, you turn your attention to your perceived prize and as you look the machine over, you're relieved to find a tiny label laser-etched into its surface with an even more miniscule font confirming its identity hidden on one of the corners nearest the wall. Now you just have to figure out how to get this thing out of here. Lacking a dollie or forklift, you surrender to the fact that you just have to put your back into it as you grab hold of the machine. You grunt with effort as the device barely budges, the cramped confines of the annex chamber constrict your movement and your attempts at applying leverage. Damn, gonna throw something at this rate, you grumble, massaging your spine. How are you going to get this out of here, you wonder. Maybe, you can fridge walk it or something? You huff under your breath, trying to shimmy the thing out of the isolation cell.";
	say "     Though it takes you several attempts, you manage to get it out the door. All your clamor seems to have attracted some unwanted attention though, as perched on the threshold of Alp-69 is one of the local Cum Girls. Her jizz-jammed body is cloaked in the sodden remains of a researcher's lab coat that still clings to her voluptuous doll-like frame. Markedly larger than others of her kind, you suspect that she is on the verge of budding any time now. Her curvaceous cum swollen alabaster breasts wobble enticingly as they bounce upon her pleasantly plump middle with her every motion. She struggles to push her amorphous mass though the door. She eye's with a curious look, her vacant orbs rover your [BodyName of Player] form as if searching for something before attacking, yelling. 'CuMmIeS!'";
	Challenge "Cum Girl";
	if fightoutcome >= 10 and fightoutcome <= 19: [Win]
		say "[Cum_Girl_Victory]";
	else if fightoutcome >= 20 and fightoutcome <= 29: [Lose.]
		say "     Reeling from the Cum Girl's abuse, you collapse in a sticky heap on the icy floor, she looks over your spent beat form, almost as if she were considering a round two. Though she seems to rethink her plan when a sudden resonant metallic *clang* coming from deeper within the lower levels draws her attention. 'AH! More cummies?!' she warbles as her head swivels about like owl's while she searches for the noise. 'Where cummy?!' the creature rumbles in a strange bubbling cadence as her bloated form lazily drifts towards the doorway. In no mood to stop her, you make yourself small and crawl towards the annex chamber, while you watch her slip into the darkness, rambling the same phrase over-and-over like a deep-seeded autistic tick as she searches for prey. You do your best to stay hidden, while listening to her voice slowly petering off as moves further away. You're not sure how long you stay there huddled in the failing bone-white glow of the lab's waning lumination, taunted by her discordant wailing reverberating like a maddened echo cascading throughout the halls.";
		say "     Eventually, she seems to have found her luckless quarry as a broken elated cry akin to the baying of a slavering breast cuts at your ears, 'CuMmIeS!' she yells followed by the hollow yowl of some unfortunate Shadow Beast. Try as you might to shut out the horrid din, you can still hear the palliative mewl and needy pants of the two mutants intertwining like snakes upon a Caduceus, and then just as quickly as it started, all is still again. Sensing an opportunity, you grab and bundle your finds around the exo-lab then haul the things to surface in a mad dash for freedom, all the while, expecting the Cum Girl to seep of shadows, yet she never appears, and only when you reach the surface do you allow yourself the luxury of collapsing. Spent, tired, sore and sticky in places you never thought possible, but alive, and whole if not in body, then at least in mind.";
		WaitLineBreak;
		say "     Your whole body aches from the stress that you subjected it to. In time you may heal and perhaps even recover some of the raw [italic type]strength[roman type] you've lost, but for now, you have to struggle on in this weakened diminished state. At least you take some solace in the fact that you've survived, and maybe even learned from this encounter. You resolve to never again overestimate your abilities, or underestimate the strength of your foes. You may not be so lucky next, you muse, rather warily while you eye the city for new threats along with potential avenues of escape."; [Author's note: Losers never win, git gud scrub.]
		statchange "Strength" by -1;
		if "Wary Watcher" is not listed in feats of Player:
			FeatGain "Wary Watcher";
		now Dexterity of Ava is 1;
		now Finding Alp sixty nine is resolved;
	else if fightoutcome >= 30: [Oh brave-brave Sir Player watch as they turned about and bravely do they chicken out. Yes-Yes Brave-Brave Sir Player, most courageous in the realm, now watch as they scream and shout.]
		say "     Knowing a losing battle when you see it, you dart past the corpulent creature, and make a brazen sprint further into the lower levels, with the creature in hot pursuit. Her cum-stuffed form is like a living, writhing wall of howling madness as she surges after you, knocking over countless pieces of lab equipment and assorted refuse. Though for all her size, the narrow confines of this prove difficult for her to navigate, a reality you readily exploit as you lead her to the more cramped rubble strewn sections of the sub-labs. She finds it difficult to keep up with you and maintain her fragile cohesion as she struggles to maneuver about the collapsed halls and debris-strewn passageways. Eventually, she appears to have given up as her crazed chant of 'CuMmIeS!' soon fades into the ambient background thrum of the sealed labs. Still, you have little desire to meet her again, well not yet at least, perhaps when you're stronger, you might exact a modicum of revenge upon her. For now, you take a long circuitous route back to Alp-69 while avoiding any lingering signs of the Cum Girl's presence.";
		say "     Though a simple task, it is a slow monotonous one, made all the harder by the poor state of the area, yet for all drudgery, upon your return, you take some measure of relief when you find the lab is still clear. Albeit messy and reeking of bestial cum intersliced with a low chemical sapor that clings to the back of your throat. Regardless, your task isn't finished yet, you muse, going through the various items and scientific doodads proliferating the area. You spend the next few minutes, cobbling together an impromptu bundle of goods lashed together with random office supplies and scavenged cords the lab probably won't need anymore. Satisfied, you pile them into your inventory, then head back to the surface, while keeping your ears open for signs of the Cum Girl, or any other threats. Fortuitously, you never encounter them, be it due to luck, or the mutant's own aggressive nature, you can't say which. Nor do you have any inclination to find out, you muse, coming upon the stairs leading to the upper levels. You lug the device up the flight of stairs cursing their inventor with each step. Once you've reached the ground level, you collapse on the floor, dropping the equipment next to you while you catch your breath. You'll pick it back up in a moment, you tell yourself. You just need to rest first.";
		now Dexterity of Ava is 1;
		now Finding Alp sixty nine is resolved;

to say Cum_Girl_Victory:
	if Player is impreg_able and BodyName of player is "Margay Taur" and Player is pure and Player is female and ScaleValue of Player is 5 and "UB Pred" is listed in feats of Player and "Vore Predator" is listed in feats of Player:
		say "     Reeling from your last blow, the engorged Cum Girl collapses in a pool of her own goop. Though the fight has been beaten out of her, she still struggles to grab onto your legs sobbing, 'Hungry for cummies, give cummy, want cummy, [italic type]NEED CUMMY[roman type]!' Looking down at her, you can't help but feel a little sorry for this creature. Going by the tattered coat sling to her sodden form, she must have been on the research staff. The poor woman, she had a job, a home, perhaps, even a family once. Now, she's a gamete-eating mutant who is likely responsible for this section of the lab being so vacant. Her plump semen-stuffed curves more than attest to this. Your analytical side doubts that she'll ever mentally recover from this extreme mutation, or even be able to leave the lower levels as she is... As she is, those words echo in catty cranium as your nanite-infused neurons fire on all cylinders as an idea forms in your head. You realize, if there were ever a creature who would benefit from a trip to your womb, this would be the one.";
		LineBreak;
		say "     [italic type]Do you want to [']help['] them?[roman type] [line Break]";
		let Saving_Shiro_Choices be a list of text;
		add "No, you do not want to give them a second chance at a normal life." to Saving_Shiro_Choices;
		add "Yes, you would like to give them a second chance at a normal life." to Saving_Shiro_Choices;
		let Saving_Shiro_Choice be what the player chooses from Saving_Shiro_Choices;
		if Saving_Shiro_Choice is:
			-- "No, you do not want to give them a second chance at a normal life.":
				say "     Mulling it over, these Cum Girls are a rather unusual strain of mutant to say the least, and on reflection, you're not too sure you want to invite into your body so casually. This creature will have to fend for itself. At least down here it has plenty of [']food['], and perhaps in the future someone can help them, but that someone won't be you, you muse, packing up Medea's supplies then setting off for the lobby. Thankfully, the path back is just as barren as when you first passed by so you make good time. You doubt that you could fight all that effectively carrying all this stuff anyway in these cramped conditions. By the time you're back on the lobby floor, you're about ready to collapse and set your haul down before you drop it. You just need a few minutes to rest, that's all, you tell yourself.";
				now Dexterity of Ava is 1;
				Now Finding Alp sixty nine is resolved;
			-- "Yes, you would like to give them a second chance at a normal life.":
				say "     Oh you poor unfortunate soul, what sad fate led you here? Trapped down here all alone in the cold dark, you sigh, kneeling next to them. Does it even remember is own name anymore? You ask, running a claw finger along their cheek, you hook the sickled edge under her chin, and guide her head towards you with a soft tug. 'What name? Is name a cummy!?' she queries, in hopeful yet simple tenor. 'Want cummy! Am hungy!' The creature babbles like a confused petulant child, her every word punctuated by the stench of body soil and stale jizz. Thought not, oh well, if she's really that hungry you have a little snack for you right here. You coo in motherly tone presenting your feral feminine flower to her. 'Cummies? Me Cummies?' the Cum Girl asks meekly, her vacant doll-like orbs eyeing your animalist groin with suspicion. Yes dear, it's all for you, you reply in a matronly tone, fanning your billowy tail about the glistening lips of your bestial sex and filling the air with the subtle scent of feline arousal. 'Yay cummies! Warm yummy girly cummy!' she cries, burying her warm amorphous face in the plush lips of your [Cunt Size desc of Player] snatch.";
				say "     Gently grabbing hold of your [bodydesc of player] flanks, she laps at your petals with a surprising vigor, teasing your feline button with her odd gloopy hominid-esque tongue. Your feral bits quiver needily at even the lightest touch of the exotic stimulants proliferating her amorphous alien biology. Each sloppy pass of her malleable oral invader, elicits a raw uncontrolled gush of feminine honey from your delighted muff. Not a drop is spilled, or wasted though, as your native nectar seems drawn to her ivory form. The dewy offering clearly agrees with her odd constitution though, as her body swells against you as she drinks, regaining a measure of cohesion with each drop of feminine honey that she assimilates. Your sensitive sex can already feel her form going from a soggy shapeless mass of wriggling goop to an almost feminine humanoid configuration as she worships your inverse catty button with a mindless desperate zeal. Your tauric muff detects the subtle hints of sapien fingers and hominid nose brushing your lurid nether lips.";
				WaitLinebreak;
				say "     Mh what a good girl, have all the cummies you want dear. There's plenty more where that came from! You trill, invitingly coiling your tail about her gelatinous form, guide her towards your sweltering satin depths. Compelled by her cravings, the Cum Girl slavishly obeys her nanite-induced hunger and the assertive pull of your tail as she slowly pours herself into your tauric passage. Her body seems to grow and inflate by the second as she desperately laps at every lucid drop of feminine dew that your body can produce. The exotic sensation of her unusual pseudopodes that line her gelatinous being lavishing your tender sex evokes an excited purr from your catty lips as your lower stomach swells with the writhing mass of her exotic form. You can't resist the urge to playfully paw at your soft fur, rollicking in the heady sensation of her body roiling within you, and the lovely heft of her fluidic body as she pours herself into your eager sex. Glancing over your shoulder at her, you watch with certain sense of satisfaction as the last bits of her body quickly vanish into your sopping cunt with a wet slurping knell.";
				say "     Ah that's right dear, drink up, you moan encouragingly, racking your claws over your taut pelt, enraptured by the feeling of the squirming Cum Girl pressing against your paw pads as she feeds. Your [bodydesc of Player] muff relishes the touch of her warm fluidic form teasing and lapping at your sensitive passage and her every motion brings new, wondrous, and ever-changing pleasures, as her amorphous being shifts and adapts to your needy sex's mercurial desires. Every ";
				if "Touched by Madness" is listed in feats of Player:
					say "millimeter ";
				else:
					say "inch ";
				say "of your sopping [Cunt Size desc of Player] cunt sings with bestial bliss. Her tender efforts leave you weak in the knees as your lower stomach balloons past your ankles, and grows larger by the moment, till your supple hits the cool floor with a lewd plop. Far from uncomfortable, the little tendrils of welcoming chill seeping from the sterile floor pairs rather elegantly with each the blissful sloshing sensation roiling your tender fur and [bodydesc of player] tum like the gentle laps of waves. Your flexible nerves stretch and contracted in heady waltz of aberrant elysium as the Cum Girls chaotic mass convulses along your well-loved walls.";
				WaitLineBreak;
				say "     So why not take advantage of this unique treat, you muse, gingerly lowering yourself to the ground. You roll on your back, more than content to let your soon-to-be daughter have as much fun as she wants as your body draws her in deeper. Her explorative tendrils fondle your cervix, and you can't help but chuff approvingly as your hungry muff muscles pull her in. She doesn't fight in the slightest, whatever drives her hunger seems to hold her in total thrall as her oozing effervescent mass impresses upon your waiting womb. Your predatory nanites are quick to react to her presence as well, flooding your baby maker with a rush of transformative fluids as your body gears up for its latest surrogacy. All of which, the Cum Girl's strange anatomy tries to absorb as if your tainted fluids were like any other. Her body expands inside you as she assimilates more and more of your transformative fluid, growing larger still.";
				say "     Your adorable lap-filling tum swells in your grasp, the adorable little outlines of her hand shimmer along your spotted pelt like decadent waves of gold, ivory, and onyx. Your tight skin creaks and groans with the weight of her body pressing against your altered womb, making you pant delightedly at the sensation of your tender body sloshing in your many limbed embrace. Its soft yet heavy bulk gently pushes your legs apart with its sheer weight, you feel like you could pop at any second, but your [bodydesc of Player] body has bested greater mutants than her. Such antics will in the end only hasten her transformation in the end, besides, your inner collector has to admit, the challenge of unbirthing such an exotic specimen is too good to pass up. The feeling of her fluidic form sloshing in your tainted biology and the lovely feeling of forbidden fullness building in your core is a heady brew you could never deny yourself the pleasure of. That's a good girl, you purr, stoking her squirming form with your feline paws."; [Note to Prom: I tried to make a portmanteau with 'pregatory' pregnant + predatory, I don't know if it will make sense to ESL players though.]
				WaitLineBreak;
				say "     Ha-ha absorb as much as you want dear, this'll make a proper tauress out of you yet. You murmur encouragingly, massaging her growing outline peeking through your glowing maternal pelt with your glassy smooth toes beans. You can't believe how sensitive to the touch your skin feels. Every little [']kick['] of your most recent occupant and each breath you take sends shivers down your spine as your tummy wobbles like a giant piece of jello in your grasp. Even your [Breast Size desc of Player] breasts and feral nips seem to be getting in on the action as they slosh with fresh cream as your maternal body prepares for your coming child. Your whole body practically thrums with pregatory bliss at each disturbance, and you love every second of it. Your perverse mind basks in the ceaseless innervations of your sensitive spasming womb, though your feral cunny soon cries out for attention. Perhaps it's some lingering effect of the Cum Girl's strange anatomy plaguing your being, or the sinful pressure building in your baby maker.";
				say "     Without even thinking, you soon find your tail lightly caressing your needy nether lips. Its loving touch of the exotic structure makes you swoon internally at the vibrant sensation washing over your plush [cunt size desc of player] cunt, as you soak your expansive appendage in a rich sheen of natural lubricants. Perhaps not for the first time, you find yourself feeling somewhat quite grateful for the hands free experience the dexterous limb offers as you gleefully jill yourself in tandem with the sonorous motions of the Cum Girl's thrashing. Your limbs are free to lovingly fondle the churning mass of the Cum Girl's chaotic body, exalting at the way her amorphous mass roils your fur in a sea of activity as she squirms in your motherly embrace. You eagerly paw at your resplendent furry body, delighting in the way the thick doughy layer of adipose swaddling your drum-tight womb feels brushing along your clawed mitts, and heavenly tattoo of her unnatural aphrodisiacs coursing through you.";
				WaitLineBreak;
				say "     You encouragingly knead your exotic passenger's amorphic being like an eager kitten, enraptured by the weight and vigor of her expansive malleable form. You almost look like you are trying to smuggle a full-blown behemoth out of here at this point, though from the size of her kicks and the adorable bulges they make in your raw flesh, you might as well be. Fuck, love it when they thrash! You mewl excitedly as your tummy wriggles in your grasp like a washing machine gone wild. Mh, yes sweetie keep it up! You roar, running your forepaw over your fecund dugs, tweaking your nips with base abandon. You can almost hear the cream sloshing within ready to feed your newest kitten. The thought makes you wet with excitement as your voracious side relishes every movement. From the sensation of your feral breasts perking up in the palms of your paws as your body readies itself for your latest child, to the erotic sparks of desire dancing along malleable nerves is almost like a drug to you.";
				say "     One you'd never want to quit, not with all the joy it brings you. You feel like you could almost cum without touching yourself as your hypertrophic baby maker wriggles in your pawed embrace. Soon enough though, the Cum Girl movements start to become sluggish and slow. Dimly, you suspect that your predatory nanites must be overwhelming her unique strain, or maybe she's just had her fill. Aw, getting full so soon honey? You tease gliding a paw over a creamy patch of fur. Guess they couldn't handle mommy's cummies now could they? You snicker, as you struggle to hug your vibrant womb with your legs. You gently pull her wriggling mass towards you, and plant a line of loving kisses along the overstretched fur sheltering her changing form. Don't worry though, mommy will take care of you from now on. You just focus on absorbing all those wonderful nanites. You'll be a beautiful tauress in no time, and trust you dear they'll love it, four legs are so much better than two, or none in your case.";
				WaitLineBreak;
				say "     You titter, caressing the outline of her body as it solidifies and condenses into a feline fetal position. Deep down, you know her body must now be slowly regressing to a more embryonic state. It won't be long till she's reborn as one of yours, you opine, gently stroking your excited clitty hood with your tail, exalting in the way that the hypersensitive tissue practically sings with electrostatic bliss as your hormone-addled body slowly shrinks back to a more manageable size. You gradually increase the pace of your tail wank to make up for her growing lack of activity, slathering your tail fur in girl juice till the thing is practically dripping. Once you've judged it suitably lubed-up to be comfortable, you bring the billowing limb into position, and mindful not to disturb your child, you gently part your plump petals with a gentle thrust. The engorged hormone-laden tissue yields delightfully to intrusion as your cunny muscles seem to milk your tail of their own accord as you piston the sordid limb along the tender walls of your tauric sex. You can almost feel the individual vertebrae of your lengthy appendage grinding along your silken passage; their little hills and valleys exciting your spasming muscles in the way the average johnson often fails to.";
				say "     Every pump reverberates through you with heady erotic echoes of delight, jostling your lush furry body in a sinfully pleasant manner as you pamper your swollen body with your paws, enraptured by the replete sensations emanating from within. You've never felt so full or fulfilled before, like you or your body was meant for this. Although, looking at the beads of fresh cream dripping down your pelt from your leaky overstuffed milk tanks, you realize that you could always be fuller, you tell yourself, grasping the upper most breast in your arms. You wouldn't want to waste such bounty. You and you're not-so-little one are going to need all the nourishment you can get in the coming days, you muse, guiding your perky tit to your muzzle, and giving the stiff nip a tender lap before latching on with your feline lips.";
				WaitLineBreak;
				if Felinoid Companion is listed in companionList of player:
					say "     Swollen with decadent purpose, your [breast size desc of Player] tits require only the faintest of touches to express their thick creamy bounty as the rich gush of fatty milk seeps across your elated palate. You loose a happily catty purr at the ambrosial flavor of your matronaly cream. While you drink, you notice out of the corner of your vision, Klauz creeping up behind you with a devious twinkle in his eyes as he sizes up your vulnerable yet needy state. The opportunistic kitten, chuffs a deep bassy rumble as his sleek tapered ";
					if "Touched by Madness" is listed in feats of Player:
						say "twenty three centimeter ";
					else:
						say "nine inch ";
					say "pre-slicked cock slides out of his sheath at the sight of your [bodydesc of player] form in full repose before pouncing on your lush flanks. Klauz drapes his toned muscular body over yours as he laps at your spotted fur with the gentlest strokes of his barbed tongue while his silky paw roams your tender sides.";
					say "     His stiffening tool brushes along your fluffy treasure as he grinds his powerful body against you. Impressed by both his boldness and the sensuous sensation of your pelts gliding across one another, you grab hold of hid chiseled bestial flanks with your rear legs, delighting at the heady contrast of your [bodydesc of Player] body and the carved animalistic muscles adorning his feral frame. You lovingly, yet subtly, guide his throbbing prick to your dripping [Cunt Size desc of Player] passage. Rumbling approvingly, the big cat leans into your kind, yet assistive, touch as his cock slams home. Fuck, so good, you mewl, almost losing your hold on your still dribbling teat at the sensation of your leonine lover's fleshy spines roiling your moist muff and sopping tail as your entwining tools moil your tauric depths. You have the most decadent of thoughts, as you wrap your prehensile limb about his serviceable tool like a living cock extender. Eliciting a proud happy chuff from the spoiled kitten as you give his heavenly rod an encouraging squeeze.";
					WaitLineBreak;
					say "     The hunky cat's barbed spire throbs with deep passionate pulses in your tail's embrace as he rails your aphrodisiac-laced passage. The lingering touch of the Cum Girl makes its invigorating presence felt with each lascivious motion of the dominant lion's hips, rocking your receptive form with a fresh cascade of rapturous delight. Your fertile form wobbles delightfully before you in a sea of fecund excess, as Klauz's cock strains against your tail's genial caress. His supple spines shift and dandle about your lush folds with potent tempo all their own as if drawn to your neediest depths by your body's erotic gravity. The big studly lion's hot steamy breath simmering across your [one of]velvety[or]silky[or]satin[or]glossy[at random] pelt as he worships your ripe, squirming, brood-swollen bump with the sweet kiss of his spiny tongue and powerful paws kneading your well-loved being. Your body practically sings with elation at their symbiotic touch as your sensitive fur is pampered by the dual caress of your intermingling paws, and tittling tenor of your coiling limbs.";
					say "     Your eager mitts encouragingly rove his animalistic flanks, wallowing in the wondrous sensation of his chiseled haunches and plump fuzzy balls brushing your soft pads. His poor flushed spunk banks are practically brimming with virile excess as the effects of the potent brew of the Cum Girl's unique anatomy has its way with him. Enraptured by the change, you stroke his inner thighs and creamy fur-wrapped sack with your hindpaws, whispering in a teasing tone between sips of your heavy cream that he is such a good kitty, while you lovingly cup his turgid balls in your paws. They seem to drink in more of the Cum Girl's exotic essence, growing denser and heavier as they swell in your grasp. You can feel their potent mass sink into your marshmallowy pads, creating the cutest little furrows in his fur as his swollen sack spills over the side of your paws. Klauz rumbles a loud, pleased, chesty chuff at your tender supportive ministrations that echoes through your elated core with its deep bassy resonance. You can feel the blissful tension welling within him as his cock throbs with a passionate crescendo, in tune with his potent pulse as his serviceable spire rifles your well-loved tauric tunnel.";
					WaitLineBreak;
					say "     Each of his supple barbs and every tactile nodule of your tailbone roils your sopping sex with loving alacrity as your cunt milks your eager mate's elated tool. Spurred on by your wanton actions, your affectionate mate sinks his talons ever-so-slightly into your soft pliable hide and gropes your lush dugs. Flushed with motherly delight, his silky pads can only gain the barest purchase in your [bodydesc of Player] fur as they glide along their tender surface. Such a cheeky boy, you purr, wrapping your forelimbs over his powerful paws and rippling muscles as you both pamper your fecund figure. You graze your talons, along his plush sack, eliciting a titillating twitch from his ripe package as he suddenly looses a deep chest roar as cum. His heavy nuts seem to shrink with the force of his explosive climax as your sordid passage is basted in a deluge of molten seed, stretching your pelt just a hair tighter. Every flexible nerve in your tauric cunt, strums with euphoric adulation as the simmering erotic pressure waxing within you reaches its fever pitch.";
					say "     You clasp your forepaws over his and pull him close as the welcoming embrace of the little death washes over you with an ecstatic happily catty mewl. Warm dew laced with the big cat's cream and the Cum Girl's exotic leavings drip from your [cunt size desc of player] cunny, as you both lay there together, wrapped in each other arms, luxuriating in your shared embrace while Klauz's cock slowly deflates inside you. Until, with a subtle lewd slurping noise, your kitty's barbed cock slips free, sending one last rapturous quiver through your supple form as his spine's tease your tender muff, and he, somewhat begrudgingly, hops off your burgeoning animalist half. The hunky cat proceeds to prance around you with a profoundly proud grin as he nuzzles your well-seed midriff almost like he were claiming it and your new found daughter as his own. Snickering internally at the boastful kitten's antics, you roll onto your side and praise your eager plaything's virility while you teasingly run your paws over the heavy mass of your soon-to-be child's slumbering form, waiting for her to shrink down to a more manageable size.";
					WaitLineBreak;
					say "     More than used to such behavior from you, Klauz cuddles up beside your head protectively, offering his body up as a pillow to rest on. Such a thoughtful daddy, you tease, resting your muzzle on his thickly-furred chest while petting his lush golden-white mane. Your senses are greeted by the heady scents of virile feline and gentle earthy aroma, as the kinky kittens half-chubbed tool bobs invitingly mere ";
					if "Touched by Madness" is listed in feats of Player:
						say "centimeters ";
					else:
						say "inch ";
					say "from your face. Poor daddy, still feeling a little pent up? You snicker, at the sight of his glistening barbed spire, straining against his plump sheath. 'Rraa?!' Klauz mews needily, he lifts his leg while fixing you with an imploring gaze. Daw, of course you'll take care of that for him. You coo, lovingly wrapping your expansive maw about his adorable little tool. Gently pampering his still twitching rod in the warm pillowy folds of your feline tongue. Your elated palate is treated to a sudden burst of dry salty delight as the lingering juices coiling about his enthralling barbs seep into you.";
					say "     You purr contentedly at the blissful interplay of masculine and feminine flavors dancing across your spiny tongue, and the lovely caress of your mate's mane coddling your [bodydesc of Player] head. The two of you lie there for what feel like hours, while you encouragingly paw at your steadily shrinking tummy before drifting off to sleep in your mate's protective embrace. [italic type]An unknown amount of time later[roman type], you awaken with Klauz's delectable cock still nestled comfortably in your mouth, and you nuzzle your bewhiskered visages against his dense mane while the big cat stirs beneath you. You can feel his powerful craved core ripple with each flex in response to gentle tickle of your fur against his. Ah, did you sleep well big guy, you coo, stretching out beside him as your paws roam the tender curves of your middle. You find your baby bump has shrunk back to what might be considered [']normal['] for someone your size.";
					WaitLineBreak;
					say "     Though a part of you wishes to remain cuddled up next to your pet a spell longer, you can only push your luck so far in a place like this. Best to get moving now, before something else comes looking for you, you tell yourself as you somewhat regretfully disentangle yourself from Klauz and set about packing up your finds. With all your experience scavving out in the city, you're able to salvage a number of office and lab equipment to create an ad-hoc carrying case filled with chemical and other scientific sundries. All that's left is that exo-lab thingy Medea wants; thankfully the device appears more or less unharmed despite the fight, save for a few splotches of errant cum splattered on its hull. Not wanting to ruin or potentially taint your other supplies, you pull out a bit of spare cloth from your inventory. You quickly wipe it down and toss the dripping cum rag in the corner. The thing impacts the nearby wall with a wet slap then slides down the reinforced cement leaving a snail trail as it falls in slow motion.";
					say "     When it finally hits the group you notice the thing start to twitch. What in the heck!? You gasp while you and Klauz share a mutual horrified look as the soiled rag starts to crawl along the ground like some manner of horrible, pale, bloated worm. Before you can even think of stopping it though, the rag makes a move for the gaps in the flow hood's machinery. Klauz tries to make a grab for it as he pounces on it, and manages to catch the rag in his paws. The slimy thing still slips through his grasp and vanishes under the hood, leaving you both in stunned silence. Unsure what to make of what just transpired, you nervously paw at your brood-swollen middle, wondering what this could mean for you little one. Perhaps sensing your distress, Kluaz nuzzles your hand reassuringly, while he rubs his sleek predatory form against you as if to comfort you, and his perceived daughter. Leaning into his welcome touch, you decide to let them matter drop, there's no way you can go after that thing without tearing up the whole lab.";
					WaitLineBreak;
					say "     It's probably just reforming anyways, though who knows how long that will take, you muse while pack up the device and set off towards the ground floor. Your trek back is all the more arduous thanks to the huge loads you're carrying, but at least the ferals seem content to leave you be. Though more than once, you spy the flicker of Shadow Beast, sharking around the edge of your vision, but they seem to be content for the moment to simply watch you leave. Those that get close are quickly chased away by Klauz. Not that you need the assistance, but a part of you appreciates the thought and besides having the big cat makes the trip a little more bearable. Coming to the stairs leading upwards, you take a deep breath and begin the monotonous ascent, cursing their inventor's name with each step. Once you're on the ground level, you collapse outside the floor, dropping the equipment next to you while you catch your breath. You just need to rest first, you tell yourself as Klauz sits himself beside while your recuperate.";
					now HeadName of Child is "Margay Taur";
					now TorsoName of Child is "Margay Taur";
					now BackName of Child is "Margay Taur";
					now ArmsName of Child is "Margay Taur";
					now LegsName of Child is "Margay Taur";
					now AssName of Child is "Margay Taur";
					now TailName of Child is "Margay Taur";
					now HeadSpeciesName of Child is "Margay Taur";
					now TorsoSpeciesName of Child is "Margay Taur";
					now BackSpeciesName of Child is "Margay Taur";
					now ArmsSpeciesName of Child is "Margay Taur";
					now LegsSpeciesName of Child is "Margay Taur";
					now AssSpeciesName of Child is "Margay Taur";
					now TailSpeciesName of Child is "Margay Taur";
					now ubpreg is "Margay Taur";
					now gestation of Child is a random number between 8 and 16;
					now pregtype is 1;
					increase ubcount by 1;
					TraitGain "Shiro's Saviour" for Player;
					now Dexterity of Ava is 1;
					PlayerEat 10;
					PlayerDrink 10;
					now Finding Alp sixty nine is resolved;
				else:
					say "     You barely even have to exert a modicum of pressure for the hefty glands to express themselves, as a rich thick cream explodes across your palate, its delectable flavor perfectly complements the divine sensation of packed womb and generously stuffed cunny as you pound your tauric sex. Mmhh, having a bun in the oven really improves the flavor, you murmur as your unoccupied limbs roam your excessive furry form, enraptured by the blissful sensation emitting from your anthro and feral halves. With each tender stroke of your paws and tail, you can feel a familiar pressure building in your core, tightening like an overwound rubber band at the touch of your faux-rod. Fuck this body is amazing! You swoon, though a part of you almost wishes the thing were a real cock or another tail, titilating your tainted mind as you fantasize about having another taur atop you and feeling of their legs draped over your bloated womb as they knead and pamper your expectant form while you feed on your own supply, or better yet, getting to suck off a third has a special appeal to your warped mind.";
					say "     You can just picture yourself sandwiched between a pair of loving mates as they take turns stuffing you full of their their bestial broods. Your body grows larger and rounder as your pampered broodmare body's every want and whim attended by an ever expanding hoard of "; [Foreshadowing for future update.]
					if "They Have Your Eyes" is listed in feats of player:
						say "tauresses. ";
					else if "They Have Your Eyes" is not listed in feats of player:
						say "adorable hybrids. ";
					say "God you can't wait to share this with Ava, you titter internally as the flexible knots and heady bends of your tail moil the lurid depths of lust-flushed box. You twist and contort the prehensile appendage into new exotic shapes, lavishing your neediest nerves with diligent strokes of your seventh limb. The room is filled the lewd echos of feline desire, and the gentle patter of your lush [bodydesc of Player] body swaying each beatific thrust.";
					WaitLineBreak;
					say "     Your paws rove your pillowy pelt, indulging your catty senses in the warm effervescent sensations cascading through your well-seeded womb and milk stuffed core. Meanwhile, your barbed tongue playfully dances about your [breast size desc of Player] duct, titillating the stiff yet oh-so-receptive tissue with broad loving pass of its malleable spines. Your milk-spouts eagerly respond their caress, and the potent presence of your potential progeny wallowing with you, as your vibrant flow seems increase by moment. Your cheeks bulge with the heavenly weight of your cream as beads of rich fatty milk streams from your lips in a glittering river of excess. Poly-chromatic stars dance across your vision as heart races like a well-tuned engine as you roar in rapturous release. Your whole body spasms exquisitely as an toe curling orgasm rolls over your form in waves of relief and pleasure like wild electricity arcing over a faraday cage as the burning need in you is temporarily quenched.";
					say "     You collapse in a happy spent heap, looking down at your excessively engorged body with pride and lazily pamper your copacetically laden form. Enjoying the exhilarating, yet complimentary sensation of perverse fullness rocking your core, your paws explore the hills and toasty valley of your resplendent figure. Its obvious that you're not going anywhere for a little while, your paws can't even reach past your tummy. A part of you fears about what would happen if you were to bump your precious cargo into something sharp on the way. Or worse, you could get stuck in a doorway and be left to the tender mercies of local mutants till you pop. Not wanting to harm yourself, or precious cargo, you decide to loll on your side and wait things out. From experience, you know it won't take long before your little one has regressed to a more convenient size. Oh well, at least you won't be alone while you wait, and it's not like you don't enjoy your current state either, you think to yourself, patting your quivering womb.";
					WaitLineBreak;
					say "     You curl up in a happy ball, your arms and legs tucked protectively about your little one. You spend the next few minutes purring to yourself and your prospective kitten. The poor girl has probably been through so much it's only right to spend some time bonding with her in this state. It won't be long till you're unable to hold her in your arms like this ever again, especially if she comes out Ava-sized. Best enjoy it now before the moment is lost, you muse, lovingly petting her slumbering form with your soft paws, hoping beyond hope your nanites can give her a second chance at life in the real world once this is all over. Even if she has to start from zero, no one deserves to be stuck down here, forced to hunt others for their cum like some degenerate beast, you think you yourself as you cuddle her rapidly diminishing form in your motherly embrace.";
					say "     Once you're back to what some would call [']normal['] for your size, you turn your attention back to the collection of chemicals and lab equipment you came here for. Hopefully nothing was damaged during the fighting, you muse, checking things over. Much to your immediate satisfaction, aside from some errant bits of semen splattered on the device's hull, it's completely untouched. Not wanting to ruin or potentially taint your other supplies, you pull out a bit of spare cloth from your inventory, and quickly wipe it down before tossing the dripping cum rag in the corner. The thing impacts the nearby wall with a wet slap then slides down the reinforced cement leaving a snail trail as it falls in slow motion. When it finally hits the group you notice the thing start to twitch. What in the heck, you think to yourself as the soiled rag starts to, of all things, crawl along the ground like a pale eyeless slug.";
					WaitLineBreak;
					say "     Before you can even think of stopping it though, the rag slips through the gaps in flow hood's machinery and out of your reach. Oh well, looks a part of the Cum Girl got away. Who knows how long it will be until it's able to regrow, you ruminate placing a paw on your swollen womb, wondering what, if anything, this means for your little one. Still, that's a problem for future you. If nothing else, this will make for one hell of a story. Right now, you've got to focus on the present issues, like how you're going to get the items Medea wants out of here while carrying your current bundle of joy. It shouldn't be too hard though, your tauric body is very experienced at carrying heavy loads at this point, right?";
					say "     You think to yourself, shuffling your pile of loot out the door and towards the lobby. Thankfully, none of the other inhabitants seem to have noticed the Cum Girl's absence just yet. The trip back is rather slow, and a bit hard on your back, but it is an uninterrupted one. By the time you make it back to the stairs leading up the lobby, sweat is pouring from your brow. As you lug the device up the flight of stairs cursing their inventor with each step. Once you're on the ground level, you collapse outside the floor, dropping the equipment next to you while you catch your breath. You'll pick it back up in a moment, you tell yourself. You just need to rest first.";
					now HeadName of Child is "Margay Taur";
					now TorsoName of Child is "Margay Taur";
					now BackName of Child is "Margay Taur";
					now ArmsName of Child is "Margay Taur";
					now LegsName of Child is "Margay Taur";
					now AssName of Child is "Margay Taur";
					now TailName of Child is "Margay Taur";
					now HeadSpeciesName of Child is "Margay Taur";
					now TorsoSpeciesName of Child is "Margay Taur";
					now BackSpeciesName of Child is "Margay Taur";
					now ArmsSpeciesName of Child is "Margay Taur";
					now LegsSpeciesName of Child is "Margay Taur";
					now AssSpeciesName of Child is "Margay Taur";
					now TailSpeciesName of Child is "Margay Taur";
					now ubpreg is "Margay Taur";
					now gestation of Child is a random number between 8 and 16;
					now pregtype is 1;
					increase ubcount by 1;
					TraitGain "Shiro's Saviour" for Player;
					now Dexterity of Ava is 1;
					PlayerEat 10;
					PlayerDrink 10;
					now Finding Alp sixty nine is resolved;
	else:
		say "     Unable to hold its strained cohesion any longer, the Cum Girl dissolves before you into a gibbering pile of foul-smelling gametes and tainted cloth. Over and over its rapidly degenerating visage cries for seed as it tries to claw at your legs. These mad warbling quickly fade as vestiges of its humanoid frame collapse in on themselves leaving only a bubbling puddle of mutant cum. Briefly, you experience a slight twinge of regret and pity for the creature's condition, but somehow you know that it will only be a matter of time till it reforms. With no organs or organelles to worry about, the nanites should be able to restore her shortly. At least that's what you tell yourself to assuage any lingering pang of guilt you may have as you gather up the various chemicals Medea requested. Storing them safely in some spare containers and padding it with loose unsullied paper for transport, you turn your attention to the device.";
		say "     Lacking any sort of cart or dollie, you're not exactly looking forward to schlepping with this thing out of here. So your best bet is to just shimmy the thing down the hall and hope for the best. At least you won't have to worry about any mutants challenging you along the way. You suspect the Cum Girl you just pacified was what was keeping this area clear. Her sudden and brazen appearance was the result of her [']natural['] hunting patterns. Given the lack of dehydrated over-milked mutants littering the area, you surmise that many of the local creatures know to avoid this section of the lab by now. It thus stands to reason that you should be able to slip out before they notice her absence. With this theory in mind, you begin the slow arduous journey back to lobby. Luckily, your assumption seems to hold true as the way is just as clear as when you first came this way. A few times though, you swear you catch sight of the flicker of Shadow Beasts, or hear the wet thump of some nameless horror off in the distance.";
		WaitLineBreak;
		say "     Either out of fear of your martial prowess, or as a show of respect for besting the well-fed Cum Girl, they seem content to merely observe you. Whatever the case, you are at least grateful for the temporary truce not because you feel threatened by them though, but rather because you don't want to risk damaging your haul. Time passes, be it hours, or minutes, you can't tell as the passage of time is difficult to judge in this low light environment, until eventually you reach the stairway leading to the first floor. Standing at the foot of the staircase you consider your options for how to get your haul up to the first floor, which are regrettably few and far between. Your first thought is try rolling the giant metal cube up the steps, but that would risk damaging it.";
		say "     You don't know how sensitive its internals are, and without a clear way to pop it open, you'd have no way of know if you broke anything till long after you've dropped it off with Medea. Your next thought is to try building a ramp of sorts, then pulling the thing up with rope or cord. Then again you don't have the materials, not to mention tools on hand for such an endeavor. Mulling your options a tad more, you finally settle on a middle option. By salvaging bits of furniture, lab equipment, and cast off clothing you can Macgyver something like sled or skip, tie a rope to it, and haul it up the stairs. While it's not exactly an ideal plan, it's the only one you got. With that in mind, you set about disassembling and retooling some of the less tainted pieces of office furniture and lab equipment lying about for parts.";
		WaitLinebreak;
		say "     You even find a few carabiners on your way that you could use to clip the thing to the railing if worse comes to worst. By the time you're done and your Frankensteinian creation is complete, you plop your not-so-ill-gotten gains in place then make your ascent. The going is tough as the reclaimed wood and sheet metal groan in protest with each step. Your ad hoc rope frays in a few places but you still somehow manage to reach the surface before it fails catastrophically. Summiting the stairs, your whole body drips with sweat and wild curses that would make an old salt blush pour from your lips like leaded wine at a Roman orgy. As you collapse beside your bumble of loot telling yourself, you just need a minute to rest. Once you've caught your breath, you promise yourself, you'll make your way to Medea's officer";
		now Dexterity of Ava is 1;
		now Finding Alp sixty nine is resolved;


Table of GameEventIDs (continued)
Object	Name
Industrial canning facility	"Industrial canning facility"

Industrial canning facility is a situation.
ResolveFunction of Industrial canning facility is "[ResolveEvent Industrial_canning_facility]". It is inactive.
Sarea of Industrial canning facility is "Warehouse".

to say ResolveEvent Industrial_canning_facility:
	say "     Following Medea's instructions, you pick your way through the maze of old poorly-marked buildings littered with broken crates, rotting trash, interspersed with split pipes and torn lengths of wire insulation indicative of copper theft. Although you have no idea who would buy it given the state of the city, logic has never stopped such people before. No reason to assume a little thing like the apocalypse will change that, you muse, drifting down the alleyways till you are about two addresses away from the canning facility. As you're about to round the last corner, you hear an odd burst of static followed by the dulcet tones of a male singer. Despite the occasional skip of the player, his voice is regal, smooth, and clear. Even the gentle clash of the waves and low thrum of sea birds seem to hush themselves in reverence to his cadance. Accompanying him, is a skilled band of well-tuned brass and lively drums playing something that sounds like classic pop. Straining your ears, you can about just make the words.";
	say "     'Oh that shark babe, has [bold type]*KXT*[roman type] pearly whites, [bold type]*BZT*[roman type] like a jackknife, [bold type]*VXT*[roman type] babe.' Before it cracks again and someone yells in a rather harsh male voice. 'Fuck man I almost, got that thing working,' and you stop in your tracks to search for the source. 'Whatever pops, you say that every time you bust out that old janky ass hunk-O[']-junk. Why don't you get a walkman or MP3, least then we don't gotta listen to yo shit!? They had those in your day right?' Another gruff male spits in a grease mocking tone as you creep forward, doing your best not to make a sound. You peek around the corner of one of the many faded brick buildings littering the area. As you do, you catch sight of a quartet of twisted Pimps loitering around the entrance of the canning facility that Medea mentioned. A rare sight outside of the red light district, the group's attention is fixed on an old wooden gramophone at the moment, so they don't notice you, yet. 'Ya and how da fuck I download shit with no WIFI.'";
	WaitLineBreak;
	say "     'An bitch when the last time you saw someone sell cassettes that weren't god damn self-tapes at a shitty ass bodega, or run down gas station in middle of fucking nowhere, huh?' The first Pimp to speak grumbles as he kneels down beside the player, and applies a bit of light percussive maintenance to the side. 'He got a point, I ain't been able to charge my smart phone in weeks,' a third Pimp mutters in a downtrodden tone. 'Shit well, things still broke and yo music is awful man! Bad enough we stand all the damn day, now we gotta listen to your Bojangly ass music! Gonna give us all goddamn tinnitus at this rate,' the second Pimp grumbles as he kicks petulantly at the ground. 'Boy you better take that stupid and shove back it belongs, or Imma whip you worse than a red-headed love child!' The first Pimp bellows, as the fragment of the song plays in the background: 'keeps it,' [bold type]*KXT*[roman type], 'out of sight,' loops in the background. 'You best have respect for classics in my presence without the summit, sweet Lady Ella, god bless her soul,' the Pimp pauses to take off his hat and touches it to his chest. 'And quaaludes half your damn generation wouldn't even be here.'";
	say "     'Man will both you both shut da fuck up and keep your eyes out, you know how important this is to dem fat cats in the High Rise District. They paid us good money to muscle in here and I ain't messing up a good thing,' the fourth Pimp shouts, in a deep aggravated cadence. 'A good thing?' the second Pimp counters. 'We watching fish man, canned, fucking, fish! Who da fuck gonna steal fish?! We should be down in the RLD managing our product, cause those hoes be just as likely to give it away for free as they is to charge.' 'Then you clearly ain't seeing the big picture here,' the fourth Pimp sighs, rolling his eyes. 'What big picture you talking about? Whole world is full of horny people who can't not nut for a day. We got the wettest pussy and best dick in RLD rolled into one package. Right now we need to manage that shit and expand our stables, not this,' the second Pimp hollers as he spits on the ground in front of him. 'Ya and in a few weeks what they gonna eat, what they gonna drink? Supermarkets closed last time I checked, water off too,' the fourth Pimp replies, gesturing to the current state of the city.";
	WaitLineBreak;
	say "     'Just scavenge like we always do. Whole lot less people around, shit should last a lllooonnnggg ass time,' the second Pimp says in a mocking tone. 'Ya what happens when it runs out, or the shit rots ain't no power right now so how you gonna preserve that shit. Or you just gonna invite Salmonella Fitz Gerald for dinner from now on? Hell, what ya gonna do then when the hoes start starving?' the fourth Pimp grumbles, jabbing a finger into the second's chest. 'Then we go take over The Mall or something. I hear they got plenty of food there, power too,' the second Pimp replies, batting away the fourth's hand. 'Boy you ain't been there recently have you?' the third Pimp chimes in. 'They got fucking psycho ass wolverines guarding da place, but the way I hear it, a lot of those shopkeepers don't need [']em. People say they got some sort of magic or something, heard one of them might even be a demon.'"; [Author's note: the 90's was a hell of a drug. Clip for context: https://youtu.be/oTGlDLs9J3M?si=3SINdwNbLXz5GBz8]
	say "     'They got magic and demons? Man, da fuck you smoking?! Cause whatever it is, you doing too much, O['] not enough,' the second Pimp laughs as the group descends deeper into their petty argument. Letting them go at it, you take the time to scout out the building. Going by its hybrid style, the brown brick structure itself appears built around the tail end of nineteen-hundreds as it incorporates proto-brutalist elements with pseudo-medieval architecture. Its walls are completely bare hand-fired clay bricks with crisp rocky texture and it has a series of decorative machicolations and crenellations lining its roof that house a number of tightly-packed solar panels. Scouting around the edges, the building appears to have only two visible entrances, one of which is an emergency door that you spot by the loading dock out back that connects to the water via what was once a wharf, but it appears to have been boarded up and fallen into disrepair a long time ago.";
	WaitLineBreak;
	say "      As only a few rotten barnacle-encrusted pylons remain, based on their size and dispersion, you'd estimate the former dock could have easily accommodated a pair of Otter Trawlers. The other door in the front is guarded by the Pimps. All the windows are out of reach and the fire escapes are locked. Even if you could fly, the narrow alleyways would make things difficult. Given the layout, it seems you'll have to deal with the Pimps somehow. The obvious way is to rush them, Twisted Pimps aren't the most dangerous infected out there. Still, there are four of them, and how did the old Soviet expression go: Quantity has quality of its own? Alternatively, you could try reasoning with them. They don't sound particularly motivated to guard the place, but what would you even offer them? Though something tells you that if you do so, the terms will be down right unfair and you'll only have one chance at it.";
	if "Stealthy" is listed in feats of Player:
		say "Considering how disorganized they are, you could lure them and pick them off one by one. The narrow spaces and dark alleyways would make great ambush positions. ";
	if Pistol is wielded or Driver Carbine is wielded:
		say "Conversely, you suspect these Pimps are more bark than bite, and you have a gun. Some of the buildings here can provide good overwatch positions, once you've got the high ground, you doubt they could even reach you. ";
	say "Mulling over your options, you wonder what you should do?";
	let Abyssal_Decisions_Choices be a list of text;
	add "Rush them." to Abyssal_Decisions_Choices;
	add "Negotiate with them." to Abyssal_Decisions_Choices;
	if pistol is wielded or Driver Carbine is wielded:
		add "Press your ranged advantage." to Abyssal_Decisions_Choices;
	if "Stealthy" is listed in feats of Player:
		add "Ambush them." to Abyssal_Decisions_Choices;
	let Abyssal_Decisions_Choice be what the player chooses from Abyssal_Decisions_Choices;
	if Abyssal_Decisions_Choice is:
		-- "Rush them.":
			say " Despite their numbers, you don't feel threatened by the Pimps and step out boldly into the open, then whistle to get their attention. 'Who the fuck is that?' the second Pimp blurts out. 'Man, da shit do I know, they ain't wearing a goddamn name tag,' the fourth Pimp grumbles, gesturing to your [bodydesc of player] chest with an aggravated jab of his middle and pointer fingers. 'Yo get the hell out of here, this is our turf! We ain't gonna warn you twice!' Shaking your [HeadName of Player] head, you crack your knuckles in response. 'Oh looks like we got a stupid ass wannabe tough mofo, who you think you is, Leroy mother fucking Brown!?' the first Pimp yells, charging at you.";
			say "[PimpFight]";
		-- "Negotiate with them.":
			if player is impreg_now and BodyName of Player is "Margay Taur" and Player is pure and Cock Count of Player is 0 and Cunt Count of Player >= 1 and ScaleValue of Player is 5 and (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) >= 1:
				say "     Strutting around the corner, you politely wave to the Pimps, trying to get their attention. Lost in their argument, the quartet doesn't notice you in the slightest. Sighing, you clear your throat to attract their notice, and at once the group of Pimps turn to face you as the second one yells, 'Yo eyes up, we got a big ass fucking feral,' as they size up your towering tauric form. Aiming to resolve things peacefully, you quickly put up your paws, and tell them that you're not a feral. 'Then why you here? Gonna get jumped or something sneaking around like that. Yo fatass is gonna give the old man here a heart attack,' the second Pimp laughs, pointing to the first Pimp. Sorry, you didn't mean to spook them, you reply. 'Ya whatever. [Italic Type]I[Roman Type] ain't scared of your fat ass, bitch, now what ya want?' the second Pimp huffs, though his comment earns him a dirty look from the first.";
				say "     Thinking on your paws, you tell the assembled Pimps that a working girl in the Red Light District said that you could buy food here. 'Bitch, ain't enough fish in the sea to feed yo ass. Why don't you-,' the second Pimp jeers before the first clamps a firm hand on his shoulder. 'Boy, da fuck wrong with you!? Why you gotta be insulting someone's baby momma like this? I oughta give you a damn pumpkinhead for that, cause yo shit be out of pocket!' the first Pimp roars, gesturing to you with a flick of his head. 'Dis bitch here be trying to get her chitlins groceries like a responsible ass hoe should, and you given her lip for dat? Now,' the Pimp pauses and clicks his teeth as he looks in your direction, 'ain't that right bitch?' You nod in agreement, and pat your belly for emphasis.'";
				WaitLineBreak;
				say "     'See,' the first Pimp speak to huffs, rounding on the second, 'Now I'd ask if yo rude ass was dropped on ya head as a kid, but I wouldn't wanna insult your special E.D. classmates.' Throwing off the first Pimp's hand, the second looks to the others for support. However, he finds none, as the third and fourth Pimp fix him with glares and cross their arms. For a moment, he looks like he's about to say something but thinks better of. Bereft of support, the second Pimp slinks to the side, allowing the first to continue. 'Bitch I [']pologize for that boy, he got no sense of self. Now down to bidness, how many kids you trying to feed right nah?'";
				if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 1 and (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) <= 10:
					say "     Bashfully, you tell them that not counting your current litter, you're trying to feed a small family of less than a dozen. 'Ah dat ain't too many, let me go get some stuff. No charge by-da-by on account O['] dat fool over there,' the first gestures towards the second with an angry thrust of his bandaged thumb, 'but you gotta promise to spread da good word bout dis place. Ya hear?' Bobbing your head, you tell him you will (even though you most likely won't). 'Right, give me a sec. An['] you,' the first glares at the second. 'This shit coming out of your cut for the week, teach you to mouth off at the damn customers again,' the first Pimp sneers as he heads off into the facility, slamming the door loudly behind him. Seconds later, he returns with a gray plastic bag stuffed full of canned fish. Passing it over to you, the second Pimp looks like he's about to protest, but the looks of his peers keeps him in check. Not wanting to push your luck any further, you say thanks to each each of them before leaving.";
					ItemGain food by 5;
					now Strength of Ava is 1;
					now Industrial canning facility is resolved;
				else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 10 and (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) <= 20:
					say "     Chuckling nervously, you pat the slumbering forms of your grown litter, telling them you have a wonderful family of a dozen or so. 'Dang girl, you've been busy,' the first Pimp says in a sing-song tone. 'Don't know if we can spare dat much, but let me see what I can do,' he says as he gestures to the facility behind him. 'O.G. you best not be thinking of giving that shit away foe free!' the second Pimp screams. 'Boy, fuck yo couch, what if I am? You gonna do something [']bout it,' the first Pimp growls, raising a fist at the second as if to pantomime socking him. Flinching at the gesture, the second Pimp goes silent, and seems to back down. 'Thought so ya little punk-ass bitch, just for that, shit coming out your cut. Maybe that will teach you not to give customers any goddamn lip next time one stops by. Now if you'll excuse me Miss,' the first Pimp says, bobbing his hat at you and heads into the facility. Seconds pass and he returns with a Rucksack packed full of fresh canned fish. 'Now I just need to ask you one thing for I give this to you.' The Pimp shakes the bag. 'You promise to tell folks about this and how [']nice['] we is?' Shaking your head in the affirmative, you tell them you will (even though you probably won't). Satisfied with your answer, the Pimp hands you the pack, and you part ways.";
					ItemGain food by 8;
					ItemGain Rucksack by 1;
					now Strength of Ava is 1;
					now Industrial canning facility is resolved;
				else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 20 and (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) <= 40:
					say "     Smiling, you look down at your growing litter and inform the Pimp that you have a respectable family of several dozen or so beautiful children. 'For real?' the first Pimp whistles in admiration. 'Damn bitch, you could put some of the hoes back in the RLD to shame,' he remarks, inspecting your fecund figure appreciatively. Leaning into his gaze, you thank the Pimp for complement as you run a paw languidly across your gravid belly fur. 'Shit, you welcome, but uh, ya we don't have enough in stock right nah. Most of this is spoken for, but I am sure we can find a few cans what [']fell off da truck['], and we wouldn't want to send dented cans to the High Rise, now would we?' the first Pimp remarks with a conspiratorial grin. 'O.G. you best not be playing with people up top, that ain't good for business,' the second Pimp grumbles.";
					say "     'Man fuck those fat cats upstairs, dem fucks can go blow a Cock Cannon for all I care. An you,' he points accusingly at the second Pimp. 'Know what? Just for dat lip, I taken the shit from your cut since you [bold type]SO[roman type] worried [']bout big scary pussy cats up top. Might teach you not to mouth off to ya elders, ya little punk ass bitch,' the first Pimp huffs, as he angrily clicks his teeth like he was chastising an unruly puppy. 'Then wa-what I gonna eat?' the second Pimp replies meekly. 'Fuck I care? Go scavenge or something, all you do is bitch every time I try to cook something for ya. Maybe a little hunger will make shit taste better, hear it's a great spice,' the first Pimp says as he stomps into the canning facility. A few awkward moments pass and the Pimp returns with a Rucksack full of freshly potted fish. Thanking him, you try to take the bag from him, but he refuses to let go saying, 'Just one thing though, you to spread the good word about this place. Promising him you will (even though you probably won't), he lets go, and you part ways.";
					ItemGain food by 10;
					ItemGain Rucksack by 1;
					now Strength of Ava is 1;
					now Industrial canning facility is resolved;
				else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) > 40 and (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) <= 100:
					say "     Placing your paws on your gravid stomach, you proudly proclaim that you have a family of nearly a hundred or so of the most wonderful children any mother could ask for. 'Holy shit you ain't kidding is you?' the first Pimp stammers. Grinning, you arch your back to exaggerate your expectant state and happily repeat your claim. 'Jesus Christ bitch, you gonna buy a house with all that child support money!' the first Pimp quips. 'But uh ya, no way we can feed that many. Surprised you even managed to keep them fed this long. Still,' he pauses and taps his foot on the pavement, 'Might got something to help you out doe. You lot fine with that?' the first Pimp queries, casting a harsh glance at his peers. The others mutter in agreement, either out of respect for the first, or because they fear angering your extensive family. 'Right, one second then. I'm gonna go get yo shit,' the first Pimp says as he heads into the facility. A minute or two later, the Pimp returns with a large Rucksack, saying. 'Here, don't be making a habit O['] dis,' as he hands you the bag. Taking it from him, you tell him you'll keep that in mind, and quickly head out before they have any second thoughts.";
					ItemGain food by 13;
					ItemGain Rucksack by 1;
					now Strength of Ava is 1;
					now Industrial canning facility is resolved;
				else if (number of filled rows in Table of PlayerChildren + number of entries in childrenfaces) >= 101:
					say "     Positively beaming with maternal pride, you pat your resplendent womb telling them you're the happy mother of over a hundred of the sweetest post-apocalyptic children a mom could ask for. 'No fucking way bitch that yo ass got more youngings than all the hoes in the RLD! Shit you jus straight messing with us trying to get more food, ain't ya!' the first Pimp roars, his curt tone cutting your smile short and as you pull yourself to your full milfy height. Oh really, you rumble, *ahem*, you cough into your paw, [bold type]KIDS[roman type] could all of you come here for a minute, mommy needs you! You holler with a devilish grin on your muzzle. 'Sure thing mom! You heard her everyone, mom needs us, let's go move!' one of your older children calls back as the ground around you shakes from the impact of their collective march. In seconds, your bountiful offspring pack the alleyway and rooftops shoulder to shoulder as your menagerie of not-so-little ones pour into the area. They swarm around you protectively like a living wave.";
					say "     Crowding around you and the Pimps, your children ask what's wrong and if these ferals are bothering you. Oh sweeties, it's horrible! You were trying to order some fresh food for them when these foul mouthed creatures, you cry pointing angrily at the Pimps, called you a bitch and refused to believe you when you told them how many of them there were. 'Hey we didn't call that fat bitch a bitch, she lying!' the second Pimp yells, seemingly undaunted by the overwhelming number of mutants surrounding him. Oh they're in for it now, you muse watching your children's collective baneful gaze turn towards the Pimps. 'What did you just call our mom!' one of your children roars, brandishing a length of timber. 'That guy called her bitch, how dare they! She's not a bitch, mom's the sweetest, kindest, nicest person in the world!' another of your brood bellows, hefting a brick. 'Hey what's wrong with being fat, I think mom looks great just the way she is!' one of your kids chimes in, flicking open a pocket knife.";
					WaitLineBreak;
					say "     'We should teach these guys a lesson! Uh, if that's ok with you mom?' another of your spawn inquiries, breaking out a pair of knuckle dusters while fixing you with an imploring look. Only if you think they deserve it dear, you croak, struggling to fight back the tears of joy and affection you feel towards your swarming young. In unison, your children cry, 'Yes,' as they descend on the Pimps en masse. The fight is horribly one-sided and the Pimps are swiftly beaten and dragged off by your brood. Some part of you wonders what they'll do to them, at worst though you suspect you'll end up with a few hybrid grandkids. A handful of your younger children stay behind to check on you, one of the more perceptive of their number notices the saline matting your furry eyeliner and asks why you're crying. Patting their head, you tell them you're just so proud of them for the way they defended you and your unborn. 'Oh don't worry about it mom. You work so hard to bring so many of us into the world. The least we can do is take care of you!'";
					say "     Biting back a flood of emotions, you briefly hug them close and thank them for making this apocalypse the best time a mother could ask for. 'Daw mom,' your child chuckles as you let go of them, 'don't worry about it, now let's loot this place! I bet they're hoarding all kinds of cool stuff in there.' Your perceptive child takes you by the paw and guides you toward the facility. Nodding for them to lead the way, you rest your other hand on your tummy and follow your small detachment of children inside. Despite the exterior's obvious age, the interior appears to have undergone serious renovation as much of the canning equipment is also relatively new. While the building has been divided into two distinct [']floors[']. The ground level, a wide open industrial space adjoined by what you suspect is a breakroom and loading bay with cement floors that seem to have been freshly laid and waxed to immaculate glossy shine. The second floor, if one could truly call it that, is a series of catwalks overlooking the work area.";
					WaitLineBreak;
					say "     Connected to it is a single green wooden door with a frosted glass window at its core and gray metal ladder leading to the roof tucked in the northwestern corner of the building. Turning your attention to first level, as you doubt the thin suspension paths could hold your tauric bulk, you spy a series of grooved channels curved into the polished material leading to a number of well-placed shiny bronze drains placed near the machines. Examining the equipment further in an attempt to find a maker's mark, you notice a power cable leading up to the industrial solar panels on the roof. Your children all-the-while scurry about the facility opening various crates and haphazardly upending the contents. A few others busy themselves with ransacking the breakroom's vending machine, employee lockers and what you suspect is the manager's office on the second level. Noticing you looking at them as they build a pile of jackets and scarfs, one of them calls you over, 'Hey mom we found a bunch of stuff for you to lay down while we loot the place.'";
					say "     'We'd have gotten you a chair, but,' they gesture to your lower half, 'I don't think they made one in your size.' Smiling contently, you tell them that's quite alright and take a seat on the makeshift nest. 'If it's not comfy enough we can add more parkas if you like?' one of them asks as you roll on your backs more than happy to temporarily relieve your paws of walking duty. Oh don't trouble yourself dear, it's wonderful just the way it is, like you're laying a cloud, you reply, resting your collection of paws on your soft fecund middle as you watch them work. 'Um, is there anything else we can get you mom?' your nest-making child asks a tad too eagerly. Shrugging, you tell them nothing at the moment and bid them to go join their siblings. 'Alright but if you need anything let us know,' your child replies before joining their kin's looting frenzy.";
					WaitLineBreak;
					say "     [italic type]Sometime later[roman type], your children have stripped and sorted every useful bit of scrap or salvage from the facility, only stopping at the canning machines. Going through it with them, you pull out one large tin of fish for yourself. The rest you offer to your children, they deserve it for all their hard work. Besides, there is no way you could carry it all yourself. Some of them try to argue, stating you deserve a bigger cut for finding the place, yet you try to remain firm on the matter. Still, it's rather hard to say no to all of your kids at once, so you end up taking a six pack of soda, a medkit, an oversized Rucksack, and a can of pepper spray just to keep them happy. Satisfied with this, your kids pack up your cut in the Rucksack they found and split the rest equally between themselves. Once everything is secured, your growing platoon heads back out to the entrance of the Warehouse District to plan your next move.";
					ItemGain food by 1;
					ItemGain Soda by 6;
					ItemGain Rucksack by 1;
					ItemGain Pepperspray by 1;
					ItemGain Medkit by 1;
					now Strength of Ava is 1;
					now Industrial canning facility is resolved;
			else:
				say "     Stepping out the shadows, you loudly clear your throat to get the Pimps attention. In unison they turn to face you, demanding to know who you are and what you're doing here. Thinking on your feet, you tell them you heard this was the place to buy fresh fish. If not, you'll leave, you respond, holding your hands out to demonstrate your lack of hostility. 'For real, you here to buy fish? How you hear about this place? We ain't take out no ads in the goddamn personals,' the first Pimp inquires. Thinking on your feet, you tell them that you heard about this place from a Tigress Hooker in the Red Light District and how you're running out of food at your place and don't have a way to preserve things without a working fridge or freezer. 'Huh, dat right... den what you got ta trade?' The first Pimp inquiries half-heartedly. What do you offer, water, free credits, medicine[if wad of cash is owned], or a wad of greenbacks[end if].";
				let Fruitful_Negotiation_Choices be a list of text;
				add "Offer unto they who are athirst a drink from the waters of life, just not freely." to Fruitful_Negotiation_Choices;
				add "Tempt them with free creds." to Fruitful_Negotiation_Choices;
				add "See if they'll take meds." to Fruitful_Negotiation_Choices;
				if wad of cash is owned:
					add "Try to pay with cash, it is king." to Fruitful_Negotiation_Choices;
				let Fruitful_Negotiation_Choice be what the player chooses from Fruitful_Negotiation_Choices;
				if Fruitful_Negotiation_Choice is:
					-- "Offer unto they who are athirst a drink from the waters of life, just not freely.":
						if carried of Water Bottle >= 2:
							say "     Reasoning that everyone needs water, you tell them that you have a few clean bottles on hand. 'All right, two to one trade, how much you need?' the fourth Pimp asks. Thinking on it, Medea only needs a single tin so you ask as much, claiming that you want to try the stuff first before you make a larger purchase. 'Alright one sec, let me go grab it, don't try nothing though,' the fourth Pimp says, darting into the facility. A moment later, he reappears with a tin in hand. Handing his associates a pair of water bottles, they kick the can over and tell you to leave. Not wanting to push your luck, you grab the tin and scoot.";
							ItemLoss Water Bottle by 2;
							now Strength of Ava is 1;
							now Industrial canning facility is resolved;
						else if carried of Water Bottle < 2:
							say "     Reasoning that everyone needs water, you tell them that you may have a few clean bottles on hand. 'All right, two to one trade, how much you need?' the fourth Pimp asks. Shaking your head, you inform them that you don't have two bottles of water on you. 'Man this broke mother fucker ain't got shit, do ya?' the second Pimp growls impatiently. 'Ya, you just here wasting our time or something O['] is you casing this place for ya crew?' the fourth Pimp rumbles angrily as his peers begin to flock around you. 'Whatever, I say we kick they ass either way,' the third Pimp replies, cracking their knuckles. 'Best damn idea heard all day, GETT'EM!!!!' the first Pimp bellows as he rushes you.";
							say "[PimpFight]";
					-- "Tempt them with free creds.":
						if freecred > 200:
							say "     Considering the dollar has more or less pulled a Papiermark at this point, you decide to offer them free credits in exchange for some fish. 'Free cred? Da fuck is that?' the first Pimp rumbles in a confused tone. 'It's post-apocalyptic crypto, man get with the times,' the second Pimp says. 'What, like the dog? Man, I loved that comic as a kid. Him and the super pets were one O['] my favs growing up,' the first Pimp opines in a wistful tone. 'Nah man, it's internet money,' the fourth pimp answers. 'Since when the internet got money, it's a bunch of tubes. Don't you remember Gore told us that a long time ago when he invented the internet, and what tubes gonna do with money!' the first Pimp replies, prompting you all to groan in unison.";
							say "     'Man nevermind, just give me two hundred cred for a tin. I'm too sober for this shit!' the fourth Pimp says, rubbing his temples in aggravation. Deal, you'll take one tin. 'Right one sec, let me get it,' the second Pimp says, dashing into the canning facility. He returns in a moment, tin and burner phone in hand as he instructs you to make the transfer. Ok, what's your routing number, you ask, bringing up the app. '6969,' the Pimp responds in a cocksure tone. Nice, you chuckle, tapping it in, you wait a moment for the funds to clear then you're handed the tin and part ways.";
							Decrease freecred by 200;
							now Strength of Ava is 1;
							now Industrial canning facility is resolved;
						else if freecred < 200:
							say "     Considering the dollar has more or less pulled a Papiermark at this point, you decide to offer them free credits in exchange for some fish. 'Da fuck is that?' the first Pimp rumbles in a confused tone. 'It's post apocalyptic crypto, man get with the times,' the second Pimp replies. 'What, like the dog? Man, I loved that comic as a kid. Him and the super pets were one O['] my favs growing up,' the first Pimp opines in a wistful tone. 'Nah man, it's internet money,' the fourth pimp answers. 'Since when the internet got money, it's a bunch of tubes. Don't you remember Gore told us that a long time ago when he invented the internet, and what tubes gonna do with money!' the first Pimp replies, prompting you all to groan in unison. 'Man nevermind, just give me two hundred cred for a tin. I'm too sober for this shit!' the fourth Pimp says. Sadly, you have to tell them that you don't have two hundred freecreds. 'Broke ass mofo! Ya you just here wasting our time or something, O['] is you casing this place for ya crew?' the fourth pimp rumbles angrily as his peers begin to flock around you. 'Whatever I say we kick they ass either way,' the third Pimp replies, cracking their knuckles. 'Best damn idea heard all day, GETT'EM!!!!' the first Pimp bellows as he rushes you.";
							say "[PimpFight]";
					-- "See if they'll take meds.":
						if carried of Medkit >= 3:
							say "     You tell them you have medkits. 'Shit, we got a lot of dem already, how three kits for a tin sound?' the third Pimp asks. Despite the steep price, you'd rather avoid violence at all costs and tell them you have three medkits, even though you're clearly getting ripped off. 'Right, hold on, let me get a tin,' the third Pimp says, ducking in the facility to retrieve a tin. When he pops back out, the two of you quickly swap items even though you're getting the short end of the stick. Business concluded, you leave the area before they have a chance to change their minds.";
							ItemLoss Medkit by 3;
							now Strength of Ava is 1;
							now Industrial canning facility is resolved;
						else if carried of Medkit < 3:
							say "     You tell them you may have some medkits on hand. 'Shit, we got a lot of dem already, how three kits for a tin sound?' the third Pimp asks. Shaking your head, you tell them you don't have three medkits. 'Broke ass mofo! Ya you just here wasting our time or something, O['] is you casing this place for ya crew?' the fourth Pimp rumbles angrily as his peers begin to flock around you. 'Whatever I say we kick they ass either way,' the third Pimp replies, cracking their knuckles. 'Best damn idea heard all day, GETT'EM!!!!' the first Pimp bellows as he rushes you.";
							say "[PimpFight]";
					-- "Try to pay with cash, it is king.":
						say "     Flashing a wad of green backs, you inform them you have cash on hand. 'Shit, should of said so in the first place,' the fourth Pimp says, popping into the facility. When he emerges, he's carrying several tins packed inside of a large Rucksack tucked under his arm and motions for you to set the money on the ground then step back. Nodding, you do so and the Pimp kicks the bag towards you. Eyeing them warily, pluck the tin off ground and with your business concluded. You part ways with the Twisted Pimps before get any funny ideas.";
						ItemLoss wad of cash by 1;
						ItemGain Food by 6;
						ItemGain Rucksack by 1;
						now Strength of Ava is 1;
						now Industrial canning facility is resolved;
		-- "Ambush them.":
			say "     Deciding its best to pick them apart one at a time, you retreat into the alleyway and length of sundered pipe off the ground, then rap the hilt along a nearby brick wall, and wait for the Pimps['] reactions. You are not left waiting long though, as the first Pimp shouts, 'Everyone shut up, ya hear that?' 'Ya, think we got a rat?' the second Pimp asks. 'I don't know, a lot of weird shit in the city nowadays. Might be one of dem spider things crawling around again,' the third Pimp replies. 'I don't care what it is! Fan out and find it, [']bout time we had some fun at least,' the fourth Pimp retorts. Good, you muse, listening to sounds of their shoes echo through the narrow alleyway as they drift apart. When one pair of foot falls gets close, you duck around another corner and tap the wall again. 'There it is again! Don't know who you is, but why not come out? I ain't gonna hurt ya. Just wanna talk is all,' the second Pimp says, drawing closer.";
			say "     You keep quiet though, pressing yourself to the wall, biding your time for them to round the bend. The slow tattoo of their steps comes nearer, you almost smell their cheap cologne fighting with the salty tang of ocean spray permeating the area in a discordant waltz of scents. Closer-closer, you muse, waiting for them to take that fatal step, and... got you! Your internal monologue cheers as the Pimp rounds that corner. In a flash, you slam the pipe into the mutant's face. Stunned, the hapless feral stumbles backward clutching his face as you rush forward. Holding the pipe by both ends, you jam it against their throat, pinning them to the wall in a single fluid motion. Caught off guard by your sudden violence of action, the Pimp merely stares at you, shock written upon their animalistic eyes as the bestial orbs slowly become evermore more unfocused with each weakening beat of their heart. They try to claw at you in desperation, the efforts doing little more than make the situation worse as you punch them in the gut, knocking the remaining wind out of them.";
			WaitLineBreak;
			say "     Shh, you whisper, as they thrash in your grip, the effects of shock and asphyxiation take their toll and the Pimp slumps in your arms. Not one to waste momentum, you roughly toss the mutant into a nearby pile of trash, knocking over a number of rusted red paint cans in the process. The terrible din of the collision has the predictable result of drawing the ire of the remaining ferals as you hear them baying in the distance. The next phase of your trap set, you dart round a corner to this side of a building with an unlatched fire escape. Seconds later, the first Pimp rounds the corner screaming for his associate. He looks hither and thither, till his obscured features catch sight of his fallen companion's shoes sticking out of a pile of trash. 'Is that a-, oh lord it's a body,' they cry, watching pools of crimson paint billow at their feet. 'What you talkin['] [']bout, OH SHIT! What the hell! He was out of sight for just a second,' the third Pimp shouts as he and the fourth rush to the first's side.";
			say "     'I-is they dead?' the fourth asks, in a trembling tone as paint pools around his feet. 'I don't know, let me get them out of this mess and check they pulse,' the first Pimp responds trying to pull the second out of the heap that you threw them into. 'Fuck man you heavy,' the first grunts. While they're distracted you make your way up the fire escape towards the roof of one of the industrial warehouses. From your vantage point, you watch as the trio struggles to extricate the second Pimp. Confident that they haven't seen you, you pad over to the edge of the roof and, weapon in hand, leap upon the third's back, driving the pipe into their skull, felling them in a single stroke. The others turn on their heels and recoil in horror as you round on them and hook the pipe behind the fourth Pimp's knee cap and yank them off their feet. Unable to resist, they fall, and you use the momentum to pounce atop them, delivering a swift coup de grace to the head.";
			WaitLineBreak;
			say "     You then turn your gaze to the first Pimp expecting him to rush you in the brief moment that it takes you reorient. Yet the mutant has clearly lost his nerve and instead of pressing his slim chance to turn the tables, he runs. Watching him flee, a part of you knows that he's not a threat anymore, but you don't want to take the chance that he could come back with friends at some point. Observing their path as they scurry down the alley, you wind back your [BodyName of Player] arm and hurl the pipe at him. Your weapon flies true, catching him in the back of the head. With a loud thud, the mutant falls, for the moment at least. Not wanting to give them a chance to recover, you barrel down on them. You deliver a brutal stomp to the back of their head, stilling them, for the moment at least.";
			say "     With the Pimps dealt with, you have free reign of the cannery and take your time looting the place. Despite the exterior's obvious age, the interior appears to have undergone serious renovation as much of the canning equipment is also relatively new and the building has been divided into two distinct [']floors[']. The ground level, a wide open industrial space adjoined by what you suspect is a breakroom and loading bay with cement floors that seem to have been freshly laid and waxed to immaculate glossy shine. Above this is the second floor, if one could truly call it that, made up of a series of catwalks overlooking the work area connected to a single green wooden door with a frosted glass window at its core and gray metal ladder leading to the roof tucked in the northwestern corner of the building.";
			WaitLineBreak;
			say "     Turning your attention to the first level as you doubt that the office would have much of value in it, you spy a series of grooved channels curved into the polished material leading to a number of well-placed shiny bronze drains placed near the machines. Examining the equipment further in an attempt to find a maker's mark, you notice a power cable leading up to the industrial solar panels on the roof. The ample power source seems to have allowed whoever works here to produce tons of freshly vacuum-sealed cans of fish. Looking over the set up, you find the facility could easily be used to preserve any food stuff with very little modifications. Further sleuthing reveals, the site is so well stocked too you even find a few medkits as well as a six pack of soda tucked away in the break room. Pocketing them along with a few spare can of food, you pack up and head back to the entrance of the Warehouse District to plan your next move.";
			itemGain Soda by 6;
			itemGain Medkit by 3;
			itemGain Food by 3;
			now Strength of Ava is 1;
			now Industrial canning facility is resolved;
		-- "Press your ranged advantage.":
			say "     With how well-armed you are, why should you put yourself at risk, you muse, sneaking your way to one of nearby fire escapes with a good line of sight over the canning facility. You move slowly and methodically, ascend the side of the building, and lock the emergency ladder in place so no one can follow you. Once you're secure, you head on over to the side of the structure. You go prone, lining up your firearm with one of the Pimps and yell at them to get on their knees. Naturally, the mutants ignore your first warning and scrabble to find you. One of them even screams, 'Who da fuck said that? You think you da po-po or something? Bitch show yo fucking face, so I can kill you!' Sighing, you line up a shot on the loudest one's shoulder and fire.";
			say "     [bold type]*BLAM*[roman type] your round impacts right on target, slamming the Pimp to the ground and pulping the tissue. The others rush to his side to put pressure on the wound while you repeat your demands, declaring that the next one won't be a warning shot. That at least gets their attention, as they freeze as instructed. One of them, the first Pimp, still has a bit of nerve left in them, and puts themselves between you and his peers, roaring, 'Alright-alright! We do what you say. Now what you want!?' Smart man, you muse, before telling them to leave, now! 'Bitch, we can't just leave! You know what the people up top will do to us?' Growling in an annoyed tenor, you inquire who he thinks he should be more worried of right now? The person with a gun trained on them, who is more than willing to use it, or the ire of some distant benefactor. 'Man lets just go. I don't wanna get shot again,' The second Pimp warbles though the first Pimp appears unmoved.";
			WaitLineBreak;
			say "     Clicking your teeth, you tell the Pimp he should listen to his friend. They need medical attention and soon. They're at risk of losing that arm if he isn't quick, that fabric lodged in the wound is going to start festering in this salty air. Septicemia is a hell of a way to go after all, you bluff. 'Man I don't want to lose this arm, it's my lucky slots arm!' the second Pimp sobs, fixing the first Pimp with a pleading look as they cradle their ruined limb. 'Fine, just one question, what's yo name?' the first inquires. ";
			if "Touched by Madness" is listed in feats of Player:
				say "Mack Heath, you sneer. 'Shit for real, ain't you supposed to use a knife or something?' the first Pimp stammers. Times change now, get out of here! You bark, firing a round at his feet and watch as they scurry away.";
			else:
				say "Na-ya, you reply. 'Na-ya what?' the first Pimp asks. None of your damn business, now get out of here before you change your mind about letting them go, you bark, firing a round at his feet and watch as they scurry away.";
			say "     With the Pimps dealt with, you have free reign of the cannery and take your time looting the place. Despite the exterior's obvious age, the interior appears to have undergone serious renovation as much of the canning equipment is also relatively new and the building has been divided into two distinct [']floors[']. The ground level, a wide open industrial space adjoined by what you suspect is a breakroom and loading bay with cement floors that seem to have been freshly laid and waxed to immaculate glossy shine. Above this is the second floor, if one could truly call it that, made up of a series of catwalks overlooking the work area connected to a single green wooden door with a frosted glass window at its core and gray metal ladder leading to the roof tucked in the northwestern corner of the building.";
			WaitLineBreak;
			say "     Turning your attention to the first level as you doubt that the office would have much of value in it, you spy a series of grooved channels curved into the polished material leading to a number of well-placed shiny bronze drains placed near the machines. Examining the equipment further in an attempt to find a maker's mark, you notice a power cable leading up to the industrial solar panels on the roof. The ample power source seems to have allowed whoever works here to produce tons of freshly vacuum-sealed cans of fish. Looking over the set up, you find the facility could easily be used to preserve any food stuff with very little modifications. Further sleuthing reveals, the site is so well stocked too you even find a few medkits as well as a six pack of soda tucked away in the break room. Pocketing them along with a few spare can of food, you pack up and head back to the entrance of the Warehouse District to plan your next move.";
			ItemGain Soda by 6;
			ItemGain Medkit by 3;
			ItemGain Food by 3;
			now Strength of Ava is 1;
			now Industrial canning facility is resolved;

to say PimpFight:
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 4: [runs for 4 times or until the player loses or flees]
		now inasituation is true;
		if fightoutcome < 20 and GroupFightCounter < 4:
			say "     Felling one, another darts in to take their place.";
		challenge "Twisted Pimp";
		increase GroupFightCounter by 1;
		now inasituation is false; [reset]
	if fightoutcome >= 10 and fightoutcome <= 19 and GroupFightCounter is 4:
		say "[PimpFightWin]";
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "[WhatDidTheFiveFingersSayToTheFace]";
	else if fightoutcome >= 30:
		say "[Slap]";

to say PimpFightWin:
	say "     With the Pimps dealt with, you have free reign of the cannery and take your time looting the place. Despite the exterior's obvious age, the interior appears to have undergone serious renovation as much of the canning equipment is also relatively new and the building has been divided into two distinct [']floors[']. The ground level, a wide open industrial space adjoined by what you suspect is a breakroom and loading bay with cement floors that seem to have been freshly laid and waxed to immaculate glossy shine. Above this is the second floor, if one could truly call it that, made up of a series of catwalks overlooking the work area connected to a single green wooden door with a frosted glass window at its core and gray metal ladder leading to the roof tucked in the northwestern corner of the building.";
	say "     Turning your attention to the first level as you doubt that the office would have much of value in it, you spy a series of grooved channels curved into the polished material leading to a number of well-placed shiny bronze drains placed near the machines. Examining the equipment further in an attempt to find a maker's mark, you notice a power cable leading up to the industrial solar panels on the roof. The ample power source seems to have allowed whoever works here to produce tons of freshly vacuum-sealed cans of fish. Looking over the set up, you find the facility could easily be used to preserve any food stuff with very little modifications. Further sleuthing reveals, the site is so well stocked too you even find a few medkits as well as a six pack of soda tucked away in the break room. Pocketing them along with a few spare can of food, you pack up and head back to the entrance of the Warehouse District to plan your next move.";
	ItemGain Soda by 6;
	ItemGain Medkit by 3;
	ItemGain Food by 3;
	now Strength of Ava is 1;
	now Industrial canning facility is resolved; 

to say WhatDidTheFiveFingersSayToTheFace:
	say "     Overwhelmed by the twisted Pimps, you collapse, unable to continue fighting as the group swarms over you, kicking and punching till you're on the verge of blacking out. One of them, who you recognize as the second to speak, wonders aloud what they should do with you. 'Oh I got an idea, I saw this shit in a movie once. One of you grab dat bag O['] concrete we found last week, this gonna be fun,' the first Pimp says as you faint from the pain. [italic type]An indeterminate later[roman type], you regain consciousness and find yourself wrapped in chains and stuffed inside a crate. The four Pimps are standing around you in a circle as one their number pours bags of wet cement into the box with you. They watch, faces twisted into cruel masks of sadistic joy as you struggle and that same laughter and their warped expression is the last thing you see and hear as the mortar covers your head.";
		now thirst of Player is 100;
		now hunger of Player is 100;
		now humanity of Player is 0;
		trigger ending "Player Starvation";
		end the story saying "[bold type]YOU DIED[roman type].";

to say Slap:
	say "     Sensing the flow of battle shifting in the Pimp's favor, you break contact and dart back towards the entrance of the Warehouse district with the coterie of Pimps in hot pursuit. As fate would have it, the ferals don't appear much interested in the chase past the first few blocks, and seem more than content to see you off. Though they promise if they ever see you again, they won't let you get off so lightly next time. In no mood to try your luck, you decide to give up on coming here again, you muse, arriving at the comparative safety of area's entrance and begin planning your next move.";
	now Industrial canning facility is resolved;
	now Humanity of Ava is 99;


Table of GameEventIDs (continued)
Object	Name
Open Floodgates	"Open Floodgates"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Open Floodgates"	Open Floodgates	"[EventConditions_Open_Floodgates]"	Doctor's Office	2500	2	100

to say EventConditions_Open_Floodgates:
	if HP of Ava is 5 and Strength of Ava is 1 and Dexterity of Ava is 1:
		now CurrentWalkinEvent_ConditionsMet is true;

Open Floodgates is a situation.
ResolveFunction of Open Floodgates is "[ResolveEvent Open_Floodgates]".
Sarea of Open Floodgates is "Nowhere".

to say ResolveEvent Open_Floodgates:
	say "     Hey Doc, it wasn't easy but you found those items you wanted, you grunt, schlepping through the door as you plop down the heavy load of chemicals and scientific sundries on the ground. 'Fantastic!' Medea chirps, inspecting the pile of equipment. 'Hm everything seems to be here, oh and you even brought the fish!' the good doctor exclaims rather excitedly, pulling out the tin alongside a handful of awesomer fruit. She takes them over to a slightly less cluttered section of her livingspace, pulls out a hotplate, mess kit, and a multitool from one of the nearby drawers. You watch as she flips out a can opener, as now salivating Medea cuts open the tin, drops the contents into a mess pan and puts it on the hot plate. Setting it to medium, Medea plucks a vial of white powder from the pile of chemicals you collected, cracks the lid, and sprinks the substance into the pan while jostling the contents as the room begins to fill with a gentle oceanic aroma spliced with mouth-wateringly sweet citrus scents. Curious, you ask what chemical she's making or distilling.";
	say "     'Lunch,' Medea replies matter-of-factly as she stirs the pan over the hot metal. Feeling your lower right eyelid twitch in agitation, you ask her if she's serious. 'What? I've been living off of canned baby food, formula powder, and whatever I could scrounge from the break room since the pandemic started. Do you have any idea what that does to a person?' Perturbed, you inquire if you've just been on a glorified food raid. 'N-n-no...,' Medea answers in a childish tone as she stares intently at the pan to avoid eye contact. 'Well, ok maybe a little, I can assure you though, the rest of these things are completely necessary for my work. Scout's honor,' Medea says, briefly placing her left hand on her heart and raising her right like she was being sworn in at court. Right, you reply dryly in annoyance. 'Oh don't be like that,' Medea chides good-naturedly, as she flicks her tail behind her as if to clear the air. 'Come back in a few hours or so with your friend Ava and I'll have everything ready, I promise.' Fine, you mutter, deciding to let the matter drop for now.";
	WaitLineBreak;
	say "     'Ah, a word of caution,' Medea chirps, her back still turned to you as she motions for you to wait a moment. 'I won't under any circumstance carry out the procedure if either you are pregnant or hosting any parasites. If that's the case for either of you, I'd recommend holding off till you've given birth, or taken care of any undesirable hanger ons.' Raising a questioning eyebrow, you ask why that is, you'd think the good doc would love experimenting on a pair of gravid tauresses. 'Honestly,' Medea shrugs, her eyes never once leaving the pan as she flips its simmering content in the air, 'you're not wrong, but there's no telling what the effects a rewrite of this nature could have under those conditions.'";
	say "     'Despite my recent changes,' she hums absently minded running a hand over her middle, 'I'm still a doctor, I'm not going to put my patient at risk just to satisfy my own proclivities.' Well, you guess that's a fair point, you wouldn't want to screw around with children's DNA, eh, anymore than you already do. Besides, who knows what would happen if some of the more aggressive parasites in the area were spliced with whatever cocktail Medea cooks up. For all you know, you could end up creating some sort of nanite-charged superbug. 'Exactly [Name of Player], so if you have need of vermifuge treatments, I can administer them, er right after my lunch,' she chirps, gesturing to her dish with a bob of her tail as she kills the heat on her hot plate, letting the sweet-smelling meal boil in the ambient heat.";
	now Open Floodgates is resolved;
	now Unlimited Taurs is active;


Table of GameEventIDs (continued)
Object	Name
Unlimited Taurs	"Unlimited Taurs"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Unlimited Taurs"	Unlimited Taurs	"[EventConditions_Unlimited_Taurs]"	Last Chance Auto Body	2500	2	10

to say EventConditions_Unlimited_Taurs:
	if HP of Ava is 5 and player is impreg_able and BodyName of player is "Margay Taur" and Player is pure and Player is female and ScaleValue of Player is 5:
		now CurrentWalkinEvent_ConditionsMet is true;

Unlimited Taurs is a situation.
ResolveFunction of Unlimited Taurs is "[ResolveEvent Unlimited_Taurs]".
Sarea of Unlimited Taurs is "Nowhere".
Unlimited Taurs is inactive.

to say ResolveEvent Unlimited_Taurs:
	say "     Remembering your agreement with Dr. Medea, you saunter up to Ava a wide grin and tell her you have some very good news for her. 'Really, what is it?' Ava asks, tilting her adorable head at an inquisitive angle. So... does she remember how she was telling you about how she wanted to have a child together? 'Ya,' Ava nods, her eyes widening in glee, as her tail curls and flicks behind her with a pronounced nervous energy. Well... you found someone who might be able to help-, you begin but Ava cuts you off, exclaiming manically, 'You did, that's amazing!! Where are they?! Are they here right?! Can I meet them now?! Oh this exciting we're going to be mommies!' shifting her weight from one paw to the other as she seems to prance in place, her cute many-tiered breasts wobbling in sync with her every motion. Doing your best to calm her down, you inform Ava that yes, she can meet them, but no they are not here with you. The two of you have to head to the city proper together and meet them at her office.";
	say "     At the mention of the city, Ava's ears droop alongside her prior enthusiasm as she mews, 'Aw, why can't they come here? It's so much nicer out here than in that smelly old city.' Shaking your head, you explain that you're already asking her to do both of you a [italic type]HUGE[roman type] favor as is, forcing her to drag herself, and all of her equipment out here is a reach too far. 'Oh ya, you're right, sorry,' Ava mews apologetically, ruffling her whiskers, 'it's just I don't like leaving The Last Chance, but as long as I'm going with you, it won't be so bad. Let me just go see mommy and daddy first. I need to tell them we're going out for a bit.' Ava says, trotting out of the garage door and into the parking lot. ";
	if Loyalty of Augustus Drake is 1: [completed Drake's quest]
		say "Listening to Ava pad up to The Chance proper, you hear her and her adoptive family chatting in the background. From the little that your enhanced hearing can pick up, it sounds like Drake and Kathy are both supportive of you and Ava stepping out a bit. You vaguely hear Drake mentioning something about how glad he is that Ava's found a strong and responsible woman to take her around town. He still asks her to be careful, telling her that if anything happens she should run home, and that she should carry a flare gun on her, just in case she gets separated from you."; [Author's note: Once upon a time Drake was going to give the PC totally not magical flares to call in sniper support. These were more or less an I win button, but were cut for lore and balance reasons.]
	else if Loyalty of Augustus Drake is 0 and HP of Augustus Drake < 99: [Drake's quest in progress or turned down]
		say "Pushing your nanite-altered hearing to the maximum, you try to eavesdrop on the slighted heated discussion between Ava and her adoptive parents. From what you can pick up, Drake expresses some incredulity at Ava's desire to head out with you. Kathy, however, manages to persuade him to give you a chance. Going by his low rumblings, Drake still doesn't sound that happy about it, but nevertheless agrees on the condition that she carries a can of pepper spray and a taser with her at all times.";
	else if Loyalty of Augustus Drake is 0 and HP of Augustus Drake is 99: [Lion form Drake]
		say "Perking up your feline ears, you do your best to eavesdrop on Ava's conversation. It's not that hard though as Drake is flat out against it as he screams bloody murder at the notion that someone like you is even worth Ava's affections. However, the combined pleading of Ava and Kathy eventually quiets his protests. The two of them go on to argue that Ava is an adult post-human who has every right to come and go, whenever she wishes, with whoever she pleases, so long as they aren't feral. Despite rumbling like a grumpy old house cat woken from its midday nap, Drake seem yield to their argument, but only on the condition that Ava agrees to a magnum and flare gun with her in case of emergencies or you turn on her.";
	WaitLineBreak;
	say "     Ava agrees to this, and you hear Drake heading back into the lobby. Seconds later you hear the lobby door creak open as Drake passes something off to Ava. The two talk for a moment longer though you can't can't pick up what was said. When their done, you hear [if HP of Augustus Drake >= 98]the Drake's heavy foot falls of his boot echoing across the pavement[else if HP of Augustus Drake is 99]the muted swish of his paws brushing the hard ground[end if] as he heads up stairs followed by the subtle creak of Kathy's door closing behind them. 'Sorry that took so long,' Ava peeps, quietly ducking her head under the garage door and you notice a lumpy light blue duffle bag with off-white straps slung over her right shoulder. Due to her size though, the puny bag looks more akin to some cheaply-made purse. Curious, you ask what's in it as the thing looks a bit full for such a short trip. 'Just some food and some other stuff for the road daddy wants me to hang on to. But since I'm with you, I probably won't need it,' Ava replies, patting the bag. Shrugging, you ask her if she's ready to leave now. Ava nods, and the pair of you head out towards the city together.";
	say "     Your trip is thankfully rather uneventful as most of the mutants you come across give the two of you a wide berth. Not that you blame them, as despite your voluptuous figures, Ava is almost as tall as a highway overpass, and you're bigger than the average delivery van. So you doubt many of them would be foolish enough to try their luck attacking a pair of tauric giantesses. Further aided by your superior frames, you both make commendable time and soon find yourselves outside of the damaged entrance pediatric lobby. 'Wow, what happened to this place? We're not going in there are we?' Ava mews, nervously eyeing up the destruction. Putting on a confident tone, you tell her you don't really know for certain, but yes you are headed in there. 'I am not sure I want to go in there, it looks kind of scary.' Laughing, you tell not to worry, the worst of the destruction is limited to the outside and most mutants tend to avoid this place.";
	WaitLineBreak;
	say "     'Ok, but can I,' she pauses with a bashful blushing look on her catty visage, 'hold your paw, this place smells wrong,' Ava squeaks, her sweet little button and wiry whiskers twitching in aggravation at the beastly masculine scents coiling about the area like tendrils of rotten eelgrass floating in some stagnant tide pool. Sure, your reply, saunter up beside her, you take hold of Ava's massive paw and are struck by both the glossy sensation of your entwing pads neatly gliding against each other, but the strength of your larger lover's grips paw as her hand fully encompasses your own. Her hold is at once stronger than iron and softer than satin, as she tenderly runs her thumb over the back of your paw. Better? You coo, nuzzling your [bodydesc of Player] muzzle along the side of her fuzzy arm, delighting in her sweet alpine scent and soft caress of her spotted fur tickling your cheeks. 'Much,' Ava simpers as you guide her through the wreckage. The pair of you gingerly pick your way past the wreckage, till you come to Medea's office and politely knock on the door announcing your presence. 'Come on in friend, you have great timing. I just finished isolating the nanite control codes... oh-,' Medea stammers, opening the door for the pair of you.";
	say "     Her eyes suddenly go wide at the sight of you and your large mate. What's wrong doc? Cat girl got your tongue? You ask, making an attempt to flash her what you hope is a cute disarming blep. 'N-n-no, it's just you didn't mention your friend was so big,' Medea gulps, a look of repressed terror on her scalie visage as her frills shiver with alarm. Is that a problem? You reply in an even tone, cocking an eyebrow at her. 'I, um, you see, I-I, *gulp*, may have had a few bad experiences with larger infected individuals,' Medea peeps, sounding like she's on the verge of a panic attack as her eyes dart around the ruined sections of the building searching for something though you can't say what. 'Oh, I understand,' Ava frowns, looking at the damaged building with a mote of understanding in her eyes. 'I'm so sorry to have troubled you Miss,' she says apologetically, bowing her head. 'We can leave if this is a bad time.'";
	WaitLineBreak;
	say "     'Ahem, that won't be necessary. You've likely come a long way and your friend has done some truly incredible work to make all this possible,' Medea chirps, proudly glancing in your direction. 'My apologies, I shouldn't let past experience color my perception of all larger infected persons. So please do come in, you should see the fruits of her, and my own labor,' Dr. Medea replies, her tone brightening a bit as she gestures for the two for you to enter. Following her lead, you both squeeze into Medea's office and take a seat beside one another on the floor while Medea pulls out a pair of vials from her coat. 'Right, so I don't know how much [Name of Player] has told you much about this, but thanks to her I been able to isolate a number of command code from infected with, well let's call them,' she hesitates a moment, tapping her toe claws in a thoughtful rhythm searching for the right word, 'unusual reproductive strategies. From them, I've been able to isolate a series of genes and nanomachine commanded codes that should, in theory, enable two biological women to reproduce without male or herm assistance. Regrettably, I can only bind it to a single pureblooded strain.'";
	say "     'So if either of you were to try to bring in a third from another species, your modified ovum will be unlikely to become viable offspring. Furthermore, if you're transformed even partially, I can not guarantee this treatment will survive the process. So if you have any desire to take on a different purebreed form, I would recommend doing so before you take this,' she concludes, placing a clear glass vial with a glowing pink fluid sloshing inside of it each of your paws. Well that shouldn't be a problem. As far both of you know, Ava was born a Margay Taur, so you doubt that she can even be transformed in the conventional sense. Now that you think about it, she's probably the original too, you reply. 'Really, is that true?' Medea asks, fixing Ava with a clinical inquiring stare. 'Ya, I was the only one for a while, until I,' she wavers, a note of deep-seeded shame lacing itself through her otherwise bright tenor, 'infected her. But it wasn't on purpose, I'm not a monster! I'm not like those things out there, I swear!'";
	WaitLineBreak;
	say "     'I'm a good girl, daddy-,' she cries, her voice hanging on the word like a drowning woman clinging to a bit of flotsam, 'daddy said so, i-it just kind of happened all of a sudden when we were playing...' Ava answers, sheepishly as she draws circles on the floor with her forepaw. 'Oh I didn't know that, it must have been quite a shock for both of you, but for what it's worth, I believe you,' Medea says reassuringly as she paws up to the massive tauress and gives her shoulder a gentle squeeze. 'But I'm going to assume [Name of Player] that since you've decided to keep this form you're happy to stay in it.' she adds, turning to face you. Grinning, you tell her that your new body has grown on you in recent days. If you have to maintain it to have children with Ava, that really doesn't seem like a problem to you anymore. Besides, if you ever have your form compromised Ava can always just reinfect you no problem. 'Hm,' Medea says, tapping her muzzle.";
	say "     'If that's the case, it would ensure you can never truly lose your enhancements. There is a good chance that it could even be passed to offspring. In time, it might even become stable, perhaps even ingrained enough in your strain that it can affect other infected, and even baseline humans. I know there are quite a few lesbain couple who would kill for the opportunity,' she adds with a lewd, toothy, reptilian grin. 'Um, I have one question Miss. This isn't going to make me grow a nasty cock or something?' Ava asks, holding the vial before between her thumb and point claw as she hesitantly peers at the contents. 'What, no of course not, I pruned every gene loci, and scrubbed every line of code relating to phalli. Don't misunderstand me though, your bodies will change, I had to make some creative workarounds,' she chirps in a proud trill, as she motions to her ad-hock lab with a flick of her tail. 'You wouldn't believe how hard it was to stabilize. I ended up having to pull some junk code from some other sample left my former patients to fill gaps and prevent rejection.'";
	WaitLineBreak;
	say "     'But I assure you, you're not going to undergo something so drastic as a gender inversion, reproductive hybridization, or species shift,' Medea preens, haughtily fluffing the collar of her lab coat. 'Right but what's a fall-eye and gander inversion?' Ava asks, cocking her head to the side. Dick, Ava, she means dick, as in she's not going to grow one and suddenly turn into a hyper herm or some yucky dude, you tease. 'Well that's good, I think I'm ready to do this now. Are you?' Ava says, swirling the vial's contents in her paw. Nodding, you tell her you're more than ready, so, cheers, you titter, clicking your vials together, and downing the exotic slurry in unison. Mhm tastes kind of like a thick chalky strawberry milkshake. What do you think Ava? You quip smacking lips as you feel the strange chemicals tickle your stomach lining. 'I like how fatty it tastes, kind of like mommy's milk mixed with pepto. I don't feel any different though when does it start to-, oh. This feels nice,' Ava chuffs, 'like someone's pushing on my tummy from the inside.' Ava purrs running a paw over her anthro stomach.";
	say "     Placing a paw over your own rumbling middle, you find yourself agreeing with her. Although you recognize the sensation as something more akin to indigestion. The feeling spreads down to your lower half only to concentrate itself in your tail and anthro back. Then just as quickly as it came, the pressure breaks like a fever, leaving you with a needy empty feeling in the pit of your belly, not all that dissimilar to one of your feline heats. Your body however remains unaltered, except for a slight draft along the tip of your tail and trapezius of your anthro back, whipping the limb around, you spot the first change almost immediately. Parting your tail fur, you're pleasantly surprised to find your body has grown what appears to a faux-ovipositor slit. Curious, you stroke the length of it feeling a raw meaty tube hiding inside of it connected to something down near the base of your feral hind end. Your analytical side surmises it likely leads to either your current ovaries, or perhaps another specially adapted set.";
	WaitLineBreak;
	say "     Letting go of your modified limb, you shift your focus to your back, patting the area around your shoulder blades. Your padded fingers soon find the other alteration as they brush against a smooth set of six tendrils. The fresh appendages, that are a little longer than your tail and not all that dissimilar to a Tentacle Horror's limbs, are clustered on either side of your spine. On first touch, your body doesn't recognize them as being a part of you, they feel cold and deadened to you like they were injected with way too much novacaine. Sensation slowly trickles into them though as your body's nanites adapt them to your current nervous system. In moments, you can exert a modicum of control over the new limbs even though doing so is about as easy as typing when your arm's fallen asleep. This too seems to fade and with enough time, you're sure that you'll be able to manipulate them just as easily as you would any other appendage. Turning your attention back to Ava, you see she's playing with her own ovipositor.";
	say "     The curious kitten appears to be absolutely enraptured with the change as she fondles the length of her tail with her tendrils panting, 'Feels so good to the touch, mom is gonna be so jealous when she sees these. But, I've never seen one of these back here before, how is this even going to work.' Chuckling, you saunter up behind her, you wrap your tail around hers, instructing her to turn around and you'll show her. Assuming the doctor doesn't mind the show, you ask, casting a glance at Medea, who pulls up a stool, mobile privacy curtain, and a clipboard. She swiftly seats herself, giving you the thumbs up sign as she wheels the cloth divider between you and her. 'Oh, I love it when you take charge,' Ava trills, squaring her legs and presenting her plush hind end to you. Not for the first time, your tauric body shivers with delight at the sight of your larger mate's cute cavernous cunt and lush feral dugs on full display. Her posture and needy heat-laden scent excites your senses as you leap on her back, mounting her the way your exotic body prefers. A low purr escapes your lips as you drape your voluptuous body over hers.";
	WaitLineBreak;
	say "     You slip your forepaws between a pair of her heavy feral teats, caressing her soft doughy dugs with your lush pads. You cheekily snake your tendrils about her anthro breasts in a living bow while you guide her tail-mounted ovipositor with your own to your sweltering feline flower, mewing encouragement for her to do what her body tells her to as you massage her egg laying limb along the lush lips of your feral vulva. Mewling in agreement, Ava's newly forged limb surges through your grip, spearing your lush, drooling, heat-engorged muff. 'So warm, I never knew I could feel this good,' Ava coos as her virgin egg-slit brushes your inner sex, stretching the sensitive tissue in the most sinfully sweet ways. Chuffing happily, you lean your anthro torso against hers, nibbling on her kitty neck fur. You whisper tender nothings in her ear as you kiss the nape of her neck while you playfully grope her lush milky bosoms. You sink your padded hand paws and collection of dexterous tendrils into her bloated milk tanks, delighting at the silky caress of her fur along the smooth surface of your fingers as your elated digits sink into her taut creamy mounds, creating the little impression in her engorged tit flesh.";
	say "     Massaging the hefty orbs, you can practically feel the milk wallow within them as you tweak Ava nips as you goad her. So ripe and heavy, she's going to make the perfect mother with these, you bet your kittens will never go hungry. Still, you tease, fluffing her furry bosoms, you can't wait to see how big they get once you get a few litters under her belt and she has a nice big tummy to cushion them on. You snake your exotic appendages along the edges of Ava's heat swollen lips like you were hotdogging her lust-flushed cunt. Her tender petals clench and crinkle around your sensuous limb as you exalt in the innervation of her warm dewy lips caressing your raw ovi tail-cunt. You're almost surprised at the level of sensation your modified limb is able to experience with each stroke of Ava's plump breeder's box. Where once you would have likened your prior tail play to a rough fingering, the fresh nerves of your ovi slit and the alien tissue lining tail is almost on par with your cunny. Your body's burgeoning instincts demand more though, and you're quite happy to oblige them.";
	WaitLineBreak;
	say "     As you arch your limb into position and blindly drive your exotic faux slit home, Ava shivers with delight, yowling in a mix of surprise and satisfaction as her welcoming sex seems to devour ";
	if "Touched by Madness" is listed in feats of Player:
		say "meter upon meter ";
	else:
		say "foot upon foot ";
	say "of your billowing limb. 'Oh mommy, your tail feels amazing!' Ava purrs as her exotic limb plumbs your needy breeder's box, each sensuous motion slowly synching up her thrusts with your own. You practically swoon with elation, as your walls massage her ovi tube with deviant alacrity, the heat-fueled muscle clenching around her tail with a desperate inhuman vigor. With every bestial thrust of her soft girthy limb, the subtle changes to her become more apparent as your slick channel brushes the soft ribbed cartillage and muscles lining her modded limb in concentric ring.You rumble with raw passionate delight at the sensation of those exotic bumps and pleasant valleys gracing your satin box as you dig your foreclaws into her fur.";
	say "     That's a good kitty, keep going just that, and you'll earn yourself a big belly full of kittens, you croon as you lightly kiss the points of her ears and your padded palms drift to her stomach. Running your paws through the soft pliable fur, you ask in a teasing tone as your claws braise the lush equator of her tail stuffed tummy, if she's looking forward to being your personal breeder. 'Yes,' she mews, as her paws join yours, 'yes, fill me! I want to be as big as mommy, no, bigger! I don't want to feel empty ever again,' Ava cries in a heat-fueled caterwaul as she wraps her tendrils around you, hugging you close and groping your lush curves. Of course, you tell your eager little kitten factory, you promise you'll keep her full from now on. You'll never see your paws or the floor again. From now on whenever you look down all you'll see is a nice tummy packed to the brim with cute baby taurs and a fat set of bloated milkers. By the time you're rescued you'll have hordes of obedient margay taurs waiting on our every need. She won't have to move a claw, or be lonely ever again.";
	WaitLineBreak;
	say "     The two of you can just lie back and grow your family forever. Doesn't that sound lovely? You simper, over the sound of yours and Ava's meaty ovi-tools slapping against your needy nethers. Your tendrils coil about your eager swaying duga as you pamper their pillowy forms in their buttery smooth embrace. 'Mh that does sound nice, hehe. Mom is going to be so jealous. I can't wait to see the look on her face when we come waddling home with a basket full of kittens for her to play with,' Ava coos mischievously at the thought. Her body twitches with excitement as she caresses her feral undercarriage fondling the outline of your egg-laying limb with a clawed forepaw as her sweltering passage seems to clench your exotic limb. That's right sweetie, you doubt anyone will be able to keep her paws off her when they see that nice belly swaying between her legs. You trill delightedly as an unusual stiffness and pressure slowly builds along the base of your tailbone.";
	say "     Far from unpleasant, the lurid sensation seems to grow with each meaty thrust of your ovipositor. Your exotic muscle tenses as your egg-laying limb seems to ripple like a wind sock in a gale. As the new specialized muscles push along the first of many gel-like eggs, no larger than a cantaloupe, you can feel the soft-shelled embryos bloating your mutant canal almost to the edge of some forbidden elysium as they rapidly pass their way through your sordid appendage. A part of you feels like you should be bracing for a rush of pain or discomfort as the tender tissue spasms wildly with each false contraction. It never comes though, as your aberrant nerves and exotic muscles sing in rapture instead with each little ripple as the egg parts Ava's plush lips. You can feel her seemingly [one of]bottomless[or]canyon-like[or]cavernous[or]expansive[or]elephantine[or]titanic[or]person-swallowing[at random] passage stretch with your eggy bounty, your needy tauress gasps for breath crying, 'Oh yes [Name of Player] don't stop!' as she paws at her feral stomach, caressing the impression of eggs as one after another of your soft-shelled ovum stretches her hypertrophic passage in ways few could ever hope to.";
	WaitLineBreak;
	say "     'Mh more. I want you to give me all of your kittens,' she rumbles as her tum expands in your padded paws with the weight of them. 'Oh mommy, its so [italic type]*RAWR*![roman type],' Ava roars in primal satisfaction as her ovipositor undulates within you as her egg-laying muscles spasm to deliver their precious cargo alongside a gush of feminine honey. You can feel her tail swell with their size as they press against your feral half. You find yourself panting in anticipation. Your heat-tainted body wants nothing more than to feel those gooey eggs inside you as the first ovum forces your tight cunny to part like the Red Sea. Fuck yes! You purr sensing the exotic bulging ribbing of Ava's ovipositor and her gelatinous eggs innervating your [Cunt Size desc of Player] snatch with their passage in a steady stream, like boba passing through you like a crazy straw. You swiftly lose count of how many eggs pass your sodden sex.";
	say "     Your senses become overloaded with maternal bliss as your womb swells with their presence, forcing your [breast size desc of player] tummy tits to fight for space around them. Your body groans and heaves before you with untold bounty as their passage hits you like a chain of erotic firecrackers being set off in your core. As the last egg nestles itself into your waiting womb, you find yourself sporting a pair of taut stomachs that would put an octomom to shame. Unable to resist touching them, your tendrils and paws fondle the sensitive fatty orbs as you trace the outline of each egg. Casting a glance at Ava, you can see she's equally enthralled with her litter as she dreamily massages her sagging tummy with her paw-like hands as if to confirm its presence, saying, 'Wow this is all mine, I can't believe it. I've never felt so huge before, it's amazing. Everything feels so raw and tender, I don't ever want this to end.'";
	WaitLineBreak;
	say "     All ours, you reply, pressing your bloated anthro belly against the base of her upper back, delighting in the pin-prick sensation of her fur teasing your raw skin, telling her to wait until she really starts to show. She hasn't experienced half the fun yet, as your back tentacles grope her expansive pot belly and pendulous breasts. 'Ours mh,' she simpers, smacking her lips as if to taste the word, 'I think like the sound of that,' Ava trills, gently leaning her anthro half against yours. You drape your arms around her larger frame, hugging her doughy form close, telling her that you hope so. You might be planing on having a lot more litters after this one after all. 'Good, because I want to fill the world with our kittens,' Ava purrs dreamily. 'You know if I could. I'd arrange for every girl I have to have your charms. So every minute, of every hour, every girl could have a chance to find what I've found in your arms,' Ava swoons. Nuzzling your muzzle against her cheek, you tell her that's sound like a lofty goal, but one that you could be very eager to assist with. 'Heh thanks,' Ava mews, kissing your feline muzzle."; [Ava is quoting Dean Martin's song, 'Everybody Loves Somebody' here.]
	say "     'Now let's head back to the Last Chance. I don't want Drake to worry.' Nodding in agreement, you tell her that sounds like a good idea. Besides, you can't wait to see the look on their faces when they see your augmented bodies. Not to mention, you have some things in the city you like to keep an eye on. Much as you'd enjoy cuddling with Ava for a little while longer, time is rarely on your side. 'I know, hehe, mommy is gonna be so jelly when she sees us,' Ava replies as you dismount her. Turning her attention to the good doc, Ava continues saying, 'Oh and Doctor Medea, I can't thank you enough for your hard work. You've made me the happiest girl in the world.' Parting the blinds, Medea swifty drapes her clipboard over her dripping groin and tells Ava it was her pleasure. She also invites both of you to come back for a follow up visit anytime if there are any complications. Nodding, the two of you tell her that you'll keep that in mind and gingerly make your way back out of the office after you collect your things.";
	WaitLineBreak;
	say "     On your way to the Last Chance, the pair of you walk side by side, letting your gravid feral middles brush against one another as they sway between your legs. As you walk, Ava gushes over the experience and peppers you with questions on what to expect in the coming days. All of which you are happy to answer. Besides, it's a good way to kill time on the trip, waddling your way back to the Dry Plains. Three hours later, the two of you are almost in sight of the Last Chance and Ava stops in her tracks saying. 'Hey, I was thinking you might want to wait out here for a while. You see, I kind of didn't tell them what I was planning and well... It might be better if I had a few minutes to explain this to daddy on my own.' [italic type]What?![roman type] She didn't tell them about what's going on? You query. 'Mh-hm, I wanted to make it a surprise,' Ava says, shrugging as she squints and makes a cute blep face at you. A surprise, oh dang it did she even make any plans on how you were going to feed or house our kids. Just imagine if they come out her size!";
	say "     Does she have any idea how hard it would be to keep them at The Last Chance? You stammer at her audacity. 'Oh, I was going to send them off to live with you. I've heard you're staying in some kind of huge bunker complex with a big library building nearby, so you should have plenty of space. Besides, your kids seem to be able to forage just fine. I'm sure a few more mouths to feed won't be a problem,' Ava replies as if it were the most obvious thing in the world. Rumbling in annoyance, you tell her she's not wrong. You've gotten quite adept at whelping ardent survivors, and yes the Abbey does have a good deal of space. You'd prefer it though if she ran things past you a bit more from now. 'Of course, I promise I won't do anything like this again without consulting you first.' Ava says. Shrugging, you tell her you're going to hold her to that. 'Thanks I knew you'd understand, now let me go talk with daddy.' Please do, you can already feel the crosshairs on the back of your head, you reply gesturing to the pillbox atop The Last Chance as Ava heads off."; [This is a Gears of War reference.]
	NPCSexAftermath Player receives "PussyFuck" from Ava;
	NPCSexAftermath Ava receives "PussyFuck" from Player;
	now Libido of Ava is 1;
	now Unlimited Taurs is resolved;
	if "Wild Womb" is listed in feats of Player:
		FeatLoss "Wild Womb";
	if "Litter bearer" is not listed in feats of Player:
		FeatGain "Litter Bearer";
	TraitGain "Breeder" for Ava;
	Move player to Dry Plains;
	now Affection of Ava is 1;


Table of GameEventIDs (continued)
Object	Name
Good Kitty Meets Her Kids	"Good Kitty Meets Her Kids"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Good Kitty Meets Her Kids"	Good Kitty Meets Her Kids	"[EventConditions_Good_Kitty_Meets_Her_Kids]"	Last Chance Parking Lot	2500	2	100

to say EventConditions_Good_Kitty_Meets_Her_Kids:
	if Libido of Ava is 29 and Loyalty of Augustus Drake is 1 and level of Ava is 0 and BodyName of player is "Margay Taur" and Player is pure and Cock Count of Player is 0 and Cunt Count of Player >= 1 and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Good Kitty Meets Her Kids is a situation.
ResolveFunction of Good Kitty Meets Her Kids is "[ResolveEvent Good_Kitty_Meets_Her_Kids]".
Sarea of Good Kitty Meets Her Kids is "Nowhere".

to say ResolveEvent Good_Kitty_Meets_Her_Kids:
	say "     Making your way along the road to the Last Chance, you overhear a minor din of activity from behind the curtain wall. Listening closely, you can just barely make out the sounds of pained grunts and claws scraping along the blacktop. Fear like you've never known grips your heart as you rush to the gate, heedless of danger as your maternal instincts scream at you to find and protect Ava and your kittens, no matter the cost. Bounding to the gate as fast as your legs can carry you. You kick the thing open and unsheath your talons, ready to fell anything that threatens your family. However, the sight that greets you is not what you'd expected. Gathered in a circle in the courtyard, you spot eight Margay Taurs who you instantly recognize on some intrinsic level as yours. Each one is as large as Ava and covered in strips of blue powder from head to toe save for their paws, which are dyed red. They appear to be circling around a shirtless Drake like a pack of hunting cats.";
	say "     In his hands, he wields a pair of crudely carved foam tonfa covered in the same blue colored dye coating your children's fur. The sight makes your choler rise and bubble as you're about to scream at him and demand to know what he's doing to your precious babies. But a slightly slimmer Ava yells for attention as she runs over to your side from inside the garage. 'Hey [Name of Player] you're just in time to see the end of today's lessons.'  Lessons? You query, eyeing up the improvised thunder dome you've walked into. 'Ya daddy's teaching them how to fight as a group. He says wants to make sure they're able to hold their own out in the city if you guys ever get separated. They're doing pretty good actually, one of them almost landed a hit before you got here,' Ava replies proudly. 'Ya,' Drake huffs, sounding a little fatigued but nonetheless pleased. 'Your girls are pretty quick on the uptake. Don't know if it's the nanites, or their parents['] good genes, but your kitten here are fast learners.'";
	WaitLineBreak;
	say "     'Ah, thanks grandpa Drake,' one of your daughters remarks as she swipes at Drake's legs with her left hand as if she were about to claw his torso. Despite her nanite-enhanced speed, Drake backpedals around the blow. A word or two of advice bubbles then dies in your chest, as you realize that her attack was a feint as she swings her forepaw at him. Once again, she's too slow though as he ducks under her limb and slashes at her leg, leaving a fresh blue smear on her pelt. 'That's your leg gone sweetie,' Drake grunts rolling away from her as your daughter tucks her paw into her side. 'You ladies need practice working together! Don't come at me one at a time anymore. You're more than your sisters, you're a pack, er,' he hesitates, his catty amber eyes rolling towards the clouds then back to your kitten, 'pride, you should be more in tune with each other. So let's go, AGAIN!' Drake bellows sounding like a football coach, bashing his tonfa against each other releasing a cloud of blue powder while he takes a formless guarded stance.";
	say "     'YES SIR!' Your girls roar in unison as they circle about him like a proper pride. With no small amount of joy, you watch your daughters launch feints and probing at their prey, forcing Drake to split his attention between them. His movements are quick and fluid as parries and dodges your little ones strikes with practiced ease. Yet, you can see the limits in his defenses conferred by his lesser bipedal body. He only has two arms, two legs, two eyes, and a reach of a few feet. Your daughters meanwhile are not so inhibited, as they press their tauric advantage, attacking in groups of three. They claw, kick, and bat at him with their natural armaments from every direction. Drake struggles to keep up. His body twists and weaves around the savage attacks like he was made of water and wind, not flesh and bone. Tough as he may be, his body and the nanites can only be pushed so far.";
	WaitLineBreak; 
	say "      Sweat glistens from his brow and pours down the toned hills of his sternum like a river of shimmering diamonds, his pecs heave with each ragged breath as he ducks one of your daughters paws and tries unsuccessfully to aim a riposte at their under belly. Your girls however have hardly broken a sweat as they dance between each other, careful not to impede their litter-mates['] avenues of attack and egress. Large as they are, you imagine it would be easy for them to trip over one another. Still, they keep a rough cohesion without speaking despite their inexperience. You can almost taste the air of inevitability as their train of blows rain down on the little human's guard forcing him to his knees. '*Huff* *huff* don't get cocky girls, I'm not out of this yet!' Drake pants as he lunges between your daughter and slash at their undercarriage while he passes under them. 'Your down hun,' Drake rumbles rolling out from underneath as your daughter feigns a collapse. 'Come on girls, I believe in you! You're not gonna let some old man show you up in front of your moms!' Drake jeers climbing to his feet, with his back to your daughter's prone form.";
	say "     'Heck no!' one of them cries, charging in like a bull seeing red as she tries to swat him with an over-handed swipe. 'Ha, good effort sweetie, but you shouldn't break rank,' Drake sneers, leaping back and slashing at her paw. He lands on your defeated daughter's side, motioning for the rest of them to come at him. Your daughter stares at the blue streak on her paw for a moment before charging again, but this time she's not alone. Two others join, trying to pincer Drake between them. No way is he getting out of this, you muse, watching five sets of red paws come down at him from different angles. At the last moment though, Drake jumps and bounds between their outstretched arms as he slashes at their faces. 'Fudge,' you hear one of them grumble as they playfully collapse on another in a pile. 'No fair grandpa, you're so small, how can we hit you!?' one of the girls moans exasperatedly from underneath her litter-mates.";
	WaitLineBreak;
	say "     'That's what girls got to figure out. Your opponents are not going to tell you how to defeat them,' Drake quips as he lands atop them. Looking at them though, a part of you wonders if Drake is going too far, but squeeze on your arm from Ava stops you as she says, 'I know it looks like he's being mean, but don't try to stop them. I begged daddy to teach them and not to hold back. You've been out in the city, you know what the mutants would do to them if they got a chance.' Blinking back a tear, you nod telling her, you know all too well. Then turn your attention back to still standing kids and yell encouragement to them. Your little one's ears perk up at the sound of your voice as the remaining four circle back around him. Pacing around Drake, an odd look passes between them as each seems to eye one of his limbs. 'Ah, got a plan this time girls, or are you waiting for me to keel over from old age? Give it another sixty, seventy odd years and that just might work,' Drake laughs, his lips curling into a proud yet oddly toothy grin, revealing a pair of saber-shaped canines.";
	say "     Don't answer him girls, you got this! Remember your moms are rooting for you! you cry. 'Ya get them girls! We believe in you!' Ava cheers, clutching your arm tightly in her paws. 'Ha, hear that ladies, you're not gonna let your moms down now are you?' Drake taunts through a happy rumble. 'No way!' They bellow in unison as they regroup. 'Good! Now,' the big man pauses as he takes a deep audible breath. Watching him exhale, you notice a pair thick white wisps of steams coiling around his fangs as all tension and fatigue seems to leave his body and a look of peace and anticipation blossoms on his lip. 'SHOW ME WHAT YOU CAN DO!!' He roars as your daughter charges in. Drake whirls tonfa about him warding off blow after blow yet with his focus locked on their flurry of paws and claws. He doesn't notice their tendrils lashing out and grabbing hold of his arm. Panic and just a hint of respect runs across Drake's face as tries to slash at it but his balance is thrown off as other daughters['] tentacles latch and toss him to the ground.";
	WaitLineBreak;
	say "     In flash, they leap upon and sweep their dye-covered paws across his chest. 'That's you down grandpa,' one of them taunts, adding a little flourish of red to his sternum. 'Ha-Ha-ha, I guess so,' Drake chuffs as they let go of him. While he pushes himself to his feet, you get a good view at where your girl [']hit['] him and have to suppress a laugh as you realize that they've drawn a red smiley face on Drake's abs. Looking down at the mark, the man lets loose a light chuckle as he congratulates your remaining daughters. 'Good job girls, I think you guys have got the hang of things, just don't skimp on practice. You should remember that you won't always have the advantage of numbers, size, limbs, or the luxury of attrition. Although considering who your other mother is, [italic type]*TZK*[roman type]' He clicks his fangs and shrugs. 'I could be wrong about the numbers part. Still, you did good, with a little practice. I'm sure you girls will be able to handle most of what the city can throw at you.'";
	say "     'But please, watch each other's backs, and,' he smirks, cocking his head in your direction, 'take care of your mom out there. She's a good woman, you're lucky to have her.' Drake says, giving you an approving nod. 'Anyways, I'm gonna get washed up, and give you girls some space. Oh Ava, don't forget I have some water warming on the roof of the garage if you want to give them a proper bath. I don't think you want to lick the dye off. It's not edible,' he adds, motioning to his core. 'Sure thing dad,' Ava replies as Drake makes his way up to Kathy's room. Once he closes the door behind him, Ava lets out a deep sigh saying. 'Oh mommy, that was a little hard to watch.' Patting her on the arm, you tell her you're inclined to agree, but understand why she put the kittens through that. Better they learn how to fight here, than out in the city where the consequences are a bit more dire. 'Thanks, I'm glad you understand,' Ava says, giving you a big fluffy hug.";
	WaitLineBreak;
	say "     'Oh moms, don't be so dramatic, that was kind of fun,' one of your dye-smeared daughters says as she tries dusting off her pelt. 'Ya, it sort of felt like we were dancing after a while, though I wouldn't mind a bath. My skin is getting really itchy,' your daughter who got her belly slashed says gesturing to her underside. 'Also, we kind of need names. Mommy Ava said she didn't want to give us one till you got back,' your daughter who got her paws bopped adds. 'I, um, second this, it feels weird not knowing what to call myself,' yet another of your daughters chimes in. You don't see why not, but how about you give them a bath first. It looks like they got into a fight with an angry paint mixer, you joke, gesturing to the blue dye marring their pelts. When they're all clean, we can think about names. How does that sound?";
	say "     'Great!' your girls answer in unison as they line up in an orderly fashion for you. Leaning over to Ava, you compliment her on teaching them to queue so soon, most adults never figure that one out. 'I didn't, they sort of just knew, they must have 'learned' it from your side,' Ava says, throwing up her paws. Shrugging, you tell her that you guess so and ask if she can grab the water Drake mentioned. 'Sure thing!' Ava replies jumping up on her hindleg and plucking an arm full of gallon-sized milk jugs off the roof and sets them in a pile at your paws. Passing one back to her, you tell Ava to hold it over your daughter's head and slowly pour it out while you scrub them down. Ava nods and the pair of you spend the next few minutes cleaning and bonding with your kittens. Like your prior progeny, they seem to have inherited much of their mother's emotional intelligence, and already seem to have the minds, if not the bodies of adults.";
	WaitLineBreak;
	say "     Although they seem to have few gaps in their knowledge base compared to your earlier broods as they admit they barely know how to read, write, or do basic math. From experience, you guess it might have something to do with the fact you weren't the one who breastfed them. When you bring it up with them, Ava and the kitten's express their agreement. To the letter, you girls are a little bit curious about what they missed out on and ask if they could try suckling to see if that might balance them out. Flashing them a reassuring smile, you invite them to your breast one at a time, enjoying the brief profound moment of connection with your kittens.";
	say "[HappyDragonAuthorNoisesOne]";

to say HappyDragonAuthorNoisesOne:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonAuthorNoisestwo]";

to say HappyDragonAuthorNoisestwo:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonAuthorNoisesthree]";

to say HappyDragonAuthorNoisesthree:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonAuthorNoisesfour]";

to say HappyDragonAuthorNoisesfour:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonAuthorNoisesfive]";

to say HappyDragonAuthorNoisesfive:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonAuthorNoisesSix]";

to say HappyDragonAuthorNoisesSix:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonAuthorNoisesSeven]";

to say HappyDragonAuthorNoisesSeven:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonAuthorNoisesEight]";

to say HappyDragonAuthorNoisesEight:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	WaitLineBreak;
	say "     Once your last kitten has had her fill, you direct them to over to your children so they can meet their kin. When you feel they're out of ear shot, you turn to Ava and ask if she's really ready to part ways with them. 'I-I think so, I've spent quite a bit of time with them already after all,' Ava answers in a slightly downcast tone as she places a paw on her now vacant tummy. 'I'm still gonna miss being so close to them all the time. It felt like a part of you was always beside me. I already sort of miss my belly bumps too. You know, if you wanted, maybe you put another one in before you leave. I really enjoyed the extra attention mommy and daddy gave me while I was pregnant.' Placing a hand on her tummy, you tell her you think you can arrange that.";
	say "     Not to mention, you often find yourself missing your maternal figure too, it just feels wrong to walk the city without a belly full of kittens to keep you company. You then turn to your children and ask who they would feel about having a few more sisters. 'That would be awesome mom. Ava was telling us how there are only a handful of us right now. You should really fix that, we're like an endangered species right now,' one of your daughters replies. 'Ya you heard Grandpa Drake how there's safety in numbers, so you should have more of us. That way we can help you out more if you ever get in trouble,' another of your daughters adds. Well that settles it. If the kids are fine with it, and Ava's willing, you can't see why not. 'Oh, let's get started right away then.' Ava purrs motioning for you to follow her back to her room with an inviting wave of her tail.";
	WaitLineBreak;
	say "     [italic type]Congratulations![roman type] Ava's quest and The Last Chance storyline ends here, for now. Though it may be pick up again one day, in the interregnum please enjoy your breedable cat girl waifu, and I'll see you next time ";
	if "Touched by Madness" is listed in feats of Player:
		Say "on... Dragon Raider Z! The author would also like to thank everyone who left bug reports on Discord, your assistance helped make this a better, more functional piece. A special pair of shoutouts to the Wasteland Warrior Tsakar for there kind words as well as for supporting Flexible Survival, and to Prometheus for his help getting this piece off the ground.";
	else:
		say "in Dragon Raider Galaxite! The author would also like to thank everyone who left bug reports on Discord, your assistance helped make this a better more functional piece. A special pair of shoutouts to the Wasteland Warrior Tsakar for there kind words as well as for supporting Flexible Survival, and to Prometheus for his help getting this piece off the ground.";
	now Good Kitty Meets Her Kids is resolved;
	now Libido of Ava is 0;
	increase level of Ava by 8;
	if "Spirited Youth" is not listed in feats of Player:
		FeatGain "Spirited Youth";
	if "Youthful Tides" is not listed in feats of Player:
		FeatGain "Youthful Tides";
	increase Score by 69;


Table of GameEventIDs (continued)
Object	Name
Naughty Kitten greets There Brood	"Naughty Kitten greets There Brood"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Naughty Kitten greets There Brood"	Naughty Kitten greets There Brood	"[EventConditions_Naughty_Kitten_greets_There_Brood]"	Last Chance Parking Lot	2500	1	100

to say EventConditions_Naughty_Kitten_greets_There_Brood:
	if Libido of Ava is 29 and Loyalty of Augustus Drake is 0 and level of Ava is 0 and BodyName of player is "Margay Taur" and Player is pure and Cock Count of Player is 0 and Cunt Count of Player >= 1 and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Naughty Kitten greets There Brood is a situation.
ResolveFunction of Naughty Kitten greets There Brood is "[ResolveEvent Naughty_Kitten_greets_There_Brood]".
Sarea of Naughty Kitten greets There Brood is "Nowhere".

to say ResolveEvent Naughty_Kitten_greets_There_Brood:
		say "     Cracking open the gate to the Last Chance, you spot a slightly slimmer Ava lounging happily on her back in the middle of the garden. Her ears perk at the sound of the gate clicking closed and turning her head to face you. As your eyes meet, Ava waves you over with an excited look on her muzzle. Padding over to her side, you coyly ask her why she looks so happy to see you today. 'Cause I have a surprise for you. Can you guess what it is?' Ava replies, her tail happily swishing behind her. Well judging from her lack of tum, you surmise she's given birth, though you don't see your kids anywhere. 'Daw you ruined the surprise, though I guess I should have worn a baggy shirt or something,' Ava pouts, playfully stomping her back foot. Tittering, you remark that you doubt she could find one her size. 'Ya... oh well surprise ruined. Ahem,' Ava clears her throat, '[italic type]KIDS, COME ON OUT[roman type]. Your other mother is here. It's time for you to meet her.' Ava shouts in the direction of The Chance.";
		say "     'Sure thing mom,' a charmingly female voice replies from behind The Chance as eight Margay Taurs rush out from behind the building. Each one is the spitting image of you and Ava, even your tendrils seem to have been passed down. Huh, guess Medea will be pretty pleased to hear her alterations are congenital, you muse as your daughters bound up to you in a line and take turns giving you a hug. Returning the gesture, you ask them about their names and how they've been. 'Um, they don't have names yet [Name of Player]. I thought about it, and after all the work you did it's only fair that you get to name them.' Blinking in surprise, you tell her you don't mind, but you might need a few minutes to get a better sense of who they are first. 'Sure, come on girls take a seat by us, I want you all to meet your other mom,' Ava simpers, gesturing for your children to join her in the garden. Nodding, your daughters bound over her and the lot cuddle up to one another, for much much needed introductions.";
		WaitLineBreak;
		say "     For the next few minutes, you chat as a family, sharing stories about adventures in the city along with yours and Ava's history. During this time your small talk meanders towards the library you're staying at, and what books they might like to read there. Here, your daughters admit that they are not really all that literate or know much in the way of math. This strikes you as odd, your previous broods generally seemed to know everything you do. Then it hits you, your past litters were all breast fed and carried by you, so these girls likely only know what Ava knows. Perhaps, you offer if they suckled from you. You could share your wisdom with them. It would far easier not to mention faster than trying to teach on the fly.";
		say "     Besides, you're not exactly qualified to teach mutants, but then again, who is? Your daughters seem to take this explanation at face value and confer amongst themselves for a moment, then agree it's worth a shot. If nothing else, they seem eager to experience the greater connection breastfeeding brings. A sentiment you don't wholly disagree with. In a way, it does feel odd knowing that you are these children's [']mother['] despite not being the one who carried them. It might feel good to go through the usual motions with them at the very least. With your mind made up, you invite them, one at a time to your breast to enjoy the brief but wondrous sense of connection nursing brings you.";
		say "[DragonAuthorNoisesOne]";
	
to say DragonAuthorNoisesOne:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[DragonAuthorNoisestwo]";

to say DragonAuthorNoisestwo:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[DragonAuthorNoisesthree]";

to say DragonAuthorNoisesthree:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[DragonAuthorNoisesfour]";

to say DragonAuthorNoisesfour:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[DragonAuthorNoisesfive]";

to say DragonAuthorNoisesfive:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[DragonAuthorNoisesSix]";

to say DragonAuthorNoisesSix:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[DragonAuthorNoisesSeven]";

to say DragonAuthorNoisesSeven:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[DragonAuthorNoisesEight]";

to say DragonAuthorNoisesEight:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	WaitLineBreak;
	say "     Once your last daughter has been named, you turn your attention back to Ava and ask if she's really ready to let them leave yet. You can always give her a little more time if she needs it. After all, you can imagine it's not the easiest thing in the world for her and the kittens to split up so soon.'No, I know I am going to miss them, but it's for the best. They can see and learn a lot more out there than they can here. I mean you'll still come to visit me right? Maybe we can have a few more litters. I kind of miss having a piece of you so close,' Ava mews, running her paw over the tender curves of vacant tum. Offering her a reassuring look, you tell Ava that of course you'll come by again. Though you want to hear what your daughters think about you two expanding the family further first. A part of you already knows they're going to say yes, but still you want to make sure your family is on the same page.";
	say "     'I wouldn't mind having a few more sisters either mom. There aren't that many of us after all,' one of your children replies. 'Ya, I think having a couple extra sisters sounds pretty cool, especially if it makes mommy Ava happy,' another of your young answers. 'It sure would help out in the city too. From what mommy Ava says, there are a lot of mean mutants out there so having extra eyes and ears around can't hurt right?' one of your daughters adds. Well guess that settles that, you quip telling Ava that as long as everyones fine with things you don't mind growing the family some more. Besides, you are already starting to miss the maternal bliss you and Ava had together. 'Tee-hee, good I was hoping you'd say. You know we could get started right now if you like,' Ava purrs gesturing to her room. Shooting her a catty grin, you tell her that could be arranged and head inside. You'll be by in a minute. 'Don't keep me waiting too long then,' Ava mews as saunters off.";
	WaitLineBreak;
	say "     [italic type]Congratulations![roman type] Ava's quest and The Last Chance storyline ends here, for now. Though it may be pick up again one day, in the interregnum enjoy your breedable cat girl waifu, and I'll see you next time ";
	if "Touched by Madness" is listed in feats of Player:
		Say "on... Dragon Raider Z! The author would also like to thank everyone who left bug reports on Discord, your assistance helped make this a better, more functional piece. A special pair of shoutouts to the Wasteland Warrior Tsakar for there kind words as well as for supporting Flexible Survival, and to Prometheus for his help getting this piece off the ground.";
	else:
		say "in Dragon Raider Galaxite! The author would also like to thank everyone who left bug reports on Discord, your assistance helped make this a better, more functional piece. A special pair of shoutouts to the Wasteland Warrior Tsakar for there kind words as well as for supporting Flexible Survival, and to Prometheus for his help getting this piece off the ground.";
	now Naughty Kitten greets There Brood is resolved;
	now Libido of Ava is 0;
	Increase Level of Ava by 8;



Table of GameEventIDs (continued)
Object	Name
Pick Up	"Pick Up"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Pick Up"	Pick Up	"[EventConditions_Pick_Up]"	Drake's Garden	2500	1	100

to say EventConditions_Pick_Up:
	if Libido of Ava is 29 and level of Ava > 1 and level of Ava < 32 and BodyName of player is "Margay Taur" and Player is pure and Cock Count of Player is 0 and Cunt Count of Player >= 1 and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava and "New Mother" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Pick Up is a situation.
ResolveFunction of Pick Up is "[ResolveEvent Pick_Up]".
Sarea of Pick Up is "Nowhere".

to say ResolveEvent Pick_Up:
	say "     Wandering over to Drake's Garden, you immediately spot a group of eight Margay taurs lounging beside Ava in the Chances garden as she reads to them from a too-small for her paws children's book. Seeing you, your daughters wave you over, no doubt they're quite eager to meet you. Bounding over to them, your daughters and Ava crowd around you and take turns giving you a hug as Ava introduces them. She explains they've been waiting for you to show up and hear your opinion on what to name them. As well as waiting for the opportunity to share your own knowledge with them. With a happy grin, you invite your daughters to your breast. Eager to finally receive their names and add to their own wealth of inborn wisdom, your kittens crowd around your available nips.";
	say "[HappyDragonNoisesOne]";
	
to say HappyDragonNoisesOne:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonNoisestwo]";

to say HappyDragonNoisestwo:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonNoisesthree]";

to say HappyDragonNoisesthree:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonNoisesfour]";

to say HappyDragonNoisesfour:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonNoisesfive]";

to say HappyDragonNoisesfive:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonNoisesSix]";

to say HappyDragonNoisesSix:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonNoisesSeven]";

to say HappyDragonNoisesSeven:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[HappyDragonNoisesEight]";

to say HappyDragonNoisesEight:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "     After your last child has had their fill, your newly enlarged family takes a seat around the courtyard as Ava explains how they are going to be traveling with you from now. A few of them are a little sad at the thought of leaving her. Of course once you promise to regularly visit their birthing mother and maybe even expand your family a bit further. They start to brighten up and even become a little excited about seeing the world. Apparently, Ava has been telling them a bit about your adventures out in the city. Your daughters, despite some misgiving about leaving The Last Chance, are quite eager to experience life in the [']real world[']. One or two of them are already even talking about finding a mate or perhaps a few pets just like their more adventurous mother. Guess the apple, you think to yourself as your children fall in line with the rest of your brood.";
	LineBreak;
	say "     [italic type]Author's note: This is a placeholder event, more will be added in the future though.[roman type]";
	now Pick Up is resolved;
	now Libido of Ava is 0;
	increase level of Ava by 8;


Table of GameEventIDs (continued)
Object	Name
Baby Pictures	"Baby Pictures"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Baby Pictures"	Baby Pictures	"[EventConditions_Baby_Pictures]"	Drake's Garden	2500	1	100

to say EventConditions_Baby_Pictures:
	if Loyalty of Augustus Drake is 1 and Libido of Ava is 29 and level of Ava is 32 and BodyName of player is "Margay Taur" and Player is pure and Cock Count of Player is 0 and Cunt Count of Player >= 1 and ScaleValue of Player is 5 and "Propositioned" is not listed in Traits of Ava:
		now CurrentWalkinEvent_ConditionsMet is true;

Baby Pictures is a situation.
ResolveFunction of Baby Pictures is "[ResolveEvent Baby_Pictures]".
Sarea of Baby Pictures is "Nowhere".

to say ResolveEvent Baby_Pictures:
	say "     Drawn inexorably back to the Last Chance by your ever-growing maternal instincts, you're pleasantly surprised to see your latest batch of kittens and their mother waiting in a loose circle together in Drake's Garden. Even their [']Grandfather['] seems to be sitting cross-legged in the middle of their gathering, with their backs resting on the bronze marker at the center of the garden. In his lap is a large-by-human-standards light blue plastic ring binder, stuffed to the gills with plastic sheet protectors, that he seems to be showing to your cubs as he gestures to the pages. Although from your current angle, you can't see the pages contents clearly, you still spy something that looks like old photos or cards arrayed in even rows tucked into the pages. Curiosity piqued, you begin to shut the entrance to the Chance behind you before heading over to see what's going on. At the sound of the gate being shuffled back into position, Drake looks up at you and as your eye's meet, the man passes the binder to Ava and beckons you over with a wide proud toothy grin and eager wave of his hand before leaping to his feet.";
	say "     As he strides towards you, it's almost impossible not to notice his fangs have grown somewhat longer since you last saw him, as their pearlescent serrated edges poke out from his lips. Strangely though, despite prior reticence towards his partial transformation, he seems oddly at peace with this and makes no effort to conceal them behind his once dour expression. Perhaps your kitten's presence is softening him to his changes, or he's showing them as a way to bond with your little ones. Regardless, you take a measure of comfort that the cubs and him are getting along, especially after Ava, [']surprised him['] with your first litter. Open-minded as you may be, a part of you wouldn't have held it against him if he took a measure of umbrage at the sudden imposition. Still, as he paws up to you with a relaxed stride, you can't say that you're not a touch curious about his presence. As you gallop over to the redwood walkway crisscrossing the garden to meet him, you tactfully ask Drake what he's doing. 'Ah, the kittens were curious about-,' he hesitates a moment, as a brief look of reluctance grows on his chiseled visage, then vanishes behind a proud leonine smirk.";
	WaitLineBreak;
	say "     'My side of the family,' he replies with a casual bob of his head in the direction of your little ones. 'So, thought I'd break out the family photo-album, a lot of history in that and in the name, not all of it good though. Speaking of which, I got something for ya,' he rumbles as he motions for you to wait a moment as he fishes around in his pants pocket. You feel your nose twitch as the breeze catches and with come the scents of stale oil, organic decay, and the lingering tang of carbonized matter impregnating the dust around the Last Chance sweeps through the area. Then, just as quickly it came, the gust shifts again, and the smell is gone, replaced by the sweet perfume of the garden alongside the calming aroma of your assembled family. 'Here,' he says, in commanding a patriarchal tone as he passes you a tiny polaroid, 'I took a few of these right after the girls were born, figured you might like one since you couldn't attend,' Drake grumbles in low annoyed tone as you take the picture from his hand.";
	say "     You reply in a level tone, that you would have come if you could, but it's hard to plan these things with the state of the city, and the speed at which some people can come to term now. '*Hrump* I guess you're right, you're doing your best with your situation, which is more than can be said for a lot of would-be-parents nowadays,' he retorts with a heavy shrug of his well-muscled shoulders. He gestures to the stricken city with a jab of his left thumb, eliciting a low groan from the too-tight fabric of his shirt as it struggles to contain the big man's nanite-enhanced physique. 'Still, you should hang on to it, it was hard enough to find self-developing film for my old camera before the apocalypse, and uh word to the wise [Name of Player], don't let any of the latex fu-,' he growls, in a harsh steely tenor reminiscent of your first encounter when he held you at gunpoint as the rumble in his chest grows loud and more bestial and he bares his fangs in a predatory grimace.";
	WaitLineBreak;
	say "     His slitted eyes narrow to fine umbral pinpricks, cast in unflinching citrine, if only for a moment. However, as the bright happy giggle of Ava and your kittens worms its way through these sour notes as they flip through the binder, his grim expression evaporates like morning fog. Drake seems to relax, his countenance shifting to a more casual, relaxed state. 'Creatures, even the sane ones, see it. Crazy as this may sound, a lot of them like to eat these sorts of things,' he finishes his sentence. Really, you ask, fixing him with an incredulous look. 'Ya,' the big man clicks his fangs in annoyance, though you can tell it's not directed at you but rather at some unpalatable memory. 'They act like it's some kind of delicacy, don't know why. Suppose it has something to do with the type of plastic, the chemical used in making it, or the way it looks. Not sure really, I haven't had much opportunity to talk to them either. Most of the ones I've run haven't been the... [italic type]talkative type[roman type],' he adds, huffing the phrase with a baneful yet sanitized edge as he glances back at your kittens out of the corner of his leonine eye. Right, you tell him you'll keep that in mind as you level the picture with your catty snoot and look the thing over.";
	say "     You're immediately greeted with the acrid stench of gunpowder imparted by Drake's touch and a vague chemical fume you struggle to place a name to. Your heart, nevertheless, is warmed by the sight of a tired, yet all-too-happy looking Ava reclining on her mattress. Though her fur appears rather damp with impossible perspiration, and her natural eyeliner seems to have darkened just a hair, her expression is one of pure bliss, as nestled in her massive arms are eight of the tiniest, cutest fluffiest kitty taurs you've ever seen, each one is no larger than your hands once were when you were but a puny biped. Their adorable stubby legs can barely even wrap around their mother's arm as she holds them for the camera. Gazing at their eyes, you note that they're an interesting mix of smoke blues and earthy browns, likely a sign the little dears are still somewhat blind and deaf like many new born felines tend to be. While their sweet button noses are a flush shade of pink much in the order of their pads."; [Author's note: According to some gun nuts I know, discharging firearms for prolonged periods can cause the smell of gunpowder to cling to your hands. Cue the more you know GIF.]
	WaitLineBreak;
	say "     Peering closer, you notice something odd about the kittens['] fur, namely the pronounced absence of the creamy white splotch they seem to have now. Offhandedly, you surmise that this is likely some remnant of their animalistic origins as it is not uncommon for some species to have their hair change color as they age. Considering your own urge to immediately nurse and age up your own brood the instant they're born, combined with the heady brew of maternal hormones swimming through your mind during such occasions, you realize that you never truly thought, or more likely possessed, the clarity of mind to inspect them properly. Even now, you sense a growing urge to feed these lovely kittens nibbling at the back of your mind, you muse as beads of sympathetic cream begin to leak from your chest. Before you can address this, the sound of Drake's voice calls you back to reality. 'Beautiful aren't they?' he asks, rather warmly. Yes, you reply, doing your best to bite back the tears of joy welling within you as thank him for this precious gift.";
	say "     'Don't worry about it [Name of Player], you did right by me and mine, it's the least I can do,' the big man answers with a graceful wave of his hand as if to brush the matter aside. 'Anyways, I'll leave to your, er, thing with the girls,' He adds as walks past you and gives you a respectful pat on the shoulder before heading off to see Kathy and his own kittens-to-be. 'Oh Ava!' Drake hollers from the foot of the staircase. 'Yes daddy?' she answers, as her ears perk up at the sound of his voice. 'When you're done with that,' the big man says, motioning to the binder with a casual flick of his wrist, 'remember to put it somewhere dark, a lot of those photos are pretty light sensitive.' 'Sure thing dad!' she replies, flashing him a respectful smile, as she flips through some of the older looking sections. 'Good girl,' Drake chuffs, as he strides up the stairs and slips into Kathy's room. As he shuts the door behind himself, you notice him sliding something that looks like a dingy white sock with a large hole in the heel over the handle.";
	WaitLineBreak;
	say "     Chuckling, you roll your eyes at this, and amble on over to your family, arms held wide as you invite them over. Rumbling happily, your kittens bound toward you in a great fluffy stampede as they crowd around you. Your daughters take turns hugging you in their many-limbed embrace as they pepper you with questions about your own family. Doing your best to calm them down, as their voices and inquiries bleed into one another like a musical squall of mutual fascination, you tell them that you will share your own past, in due time. Though admittedly, you don't have anything as storied as Drake's album on hand, you add, mentally noting how some of the section dividers have little annotated names and dates on them stretching all the way back to the eighteenth century. Not all the names are in proper American English either, a few are written with Yiddish, German, Polish, and even Creole characters. Perhaps though, you can offer them a bit of practical knowledge instead, you reply, motioning to the little beads of creams forming on your chest.";
	say "     After all, the world's a rather dangerous place right now, it's more important to arm your kittens with the skills they'll need to survive and thrive out there first. 'Aw but I want to hear about your side of the family now!' one of your kittens sitting on the edge of the garden pouts, roughly thumping her tail along the ground in an aggravated tattoo. 'Now-now little one,' Ava retorts, as she slips her tendrils about your grumpy child's forepaw and gives it a loving squeeze. 'You should listen to her, she knows better than anyone else how dangerous the city is and she's only looking out for your best interests. Besides, she'll have plenty of time to tell you lots of exciting stories while you're traveling together,' she says, glancing in your direction with a motherly grin on her face, 'isn't that right my sweet mate?' Responding in the affirmative, you tell them of course, and who knows, they just might get a crash course in their family history if they nurse enough.";
	WaitLineBreak;
	say "     'Really? Me first then. I want to know everything about mommy!' your previously incredulous kitten declares, her tone brightening too excitedly as she eyes your nips with pronounced interest. 'See? I told you girls, your mother is such a wonderful person, now come here, she needs to name you all too,' your matronly mate quips as she motions for you to join them. Rumbling happily at the invitation, you pad over them and seat yourself in the center of the garden where Drake once sat. You note how the wood still carries motes of his warm and slightest hints of his catty musk mixed with light wisps of gunpowder, though you pay their presence little mind. Instead, you roll on your side, exposing your rows of animalistic dugs to your cubs as you summon your eager daughters to your breast. Mewling affectionately, they nod and cuddle up beside you, gleefully tucking their adorable lips to your nips and proceed to suckle. A feeling of unbridled warmth floods your being as your maternal mind basks at the connection this simple act brings along with sudden flush of potential names for your eight children.";
	say "[NameThatKittenOne]";

to say NameThatKittenOne:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[NameThatKittentwo]";

to say NameThatKittentwo:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[NameThatKittenthree]";

to say NameThatKittenthree:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[NameThatKittenfour]";

to say NameThatKittenfour:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[NameThatKittenfive]";

to say NameThatKittenfive:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[NameThatKittenSix]";

to say NameThatKittenSix:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[NameThatKittenSeven]";

to say NameThatKittenSeven:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[NameThatKittenEight]";

to say NameThatKittenEight:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "     Once your last child has received their name along with their [']education['], your cubs snuggle up next to you in a great fluffy cuddle puddle. Murmuring vague thanks and appreciation for both the gift of your wisdom and the lovely meal, they nuzzle their massive muzzles along your extremities in a display of feline affection. In no great rush to break up this tender moment with your cubs, or tear them away from Ava just yet, you beckon for their other mother to join you in spending a few more minutes with them. Mewling delightedly, your wonderful mate wiggles herself in between you and your lovely litter as they wallow in your shared warmth. Not a single word amongst you, only low contented purrs and the odd rumble of a full stomach dares pierce the serene calm of the garden as your growing family enjoys this rare moment of peace in each other's arms. The nanites, the ferals, and all silly little human problems plaguing the world feels like a distant memory to you as you pet your kittens with your many dexterous limbs.";
	say "     You notice a number of shadows passing overhead, looking up you're surprised to see a small group of unaltered Monarch Butterflies fluttering above you. Perhaps drawn by the Marigolds or the tranquility of the area, the orange, white, and black spotted insects flutter about the garden in a shimmering flock of delicate pristine beauty. At once, your kitten's quietly oh and aw at the sight of them as few of the braver or more curious critters land upon on their massive reclining forms. You watch as your cubs coax a couple of them to climb up on their tendrils as they begin passing the bugs between themselves in a circle, eager to inspect the tiny creatures with a surprising degree of gentleness. They gush over the sensation of their legs tickling their tentacles and the cute pattern of their wings reminds them a bit of their own pelts. While you're not to sure if you agree with that, you nevertheless smile good-naturedly as they pass the butterflies over to you and Ava.";
	WaitLineBreak;
	say "     Though as you reach out to accept them, the bugs jump off their tendrils and fly over to you of their own accord and land on the tips of yours and Ava's ears instead. 'Ah lucky, that looks so cute!' one of your kitten mews, her eyes alight with catty wonder as she watches the miniscule thing gently flapping its wings. Smirking, you unsheath a claw and hold it out invitingly to the other bugs. Likely sensing your lack of hostile intent or confusing you for some exotic plant, one of the critters soon obliges your offer as it lightly lands on your talon. Giving it a moment to settle, you slowly lean over to your not-so-little daughter and carefully brush your talon along her ear, coaxing the creature to hop off you and onto her. 'Oh wow, thanks mom,' your kitten gasps in awe at the sight of the bug perched on her like a living piece of exotic jewelry. Think nothing of it dear, you coo, slumping back down beside Ava as the two of you watch the flock dance around you and the marigolds for a while longer before departing. As they go, you turn to Ava and ask if she's ready to say goodbye to the kittens yet.";
	say "     Much as you might like to stay, the world waits for no one, not even you. 'Ya, you're right,' your mate sighs. 'Kids, I-I hate to see you go, but you all deserve to see the world, and I can't think of anyone better to show it to you than [Name of Player].' 'Its alright mommy Ava, we want to explore, and see all the cool stuff mommy [Name of Player] has,' one of your brood simpers, as she nuzzles her chin along your mate's flank. 'She's right, this place is nice, but I wanna try taming a pet for myself just like mommy [Name of Player]!' another of your cubs exclaims, rather proudly as she eyes up the city with an almost predatory gleam in her eyes. 'He-he, you know I might like to have some kittens of my own soon,' a third of your kittens rumbles in a dreamy tone, as she runs her paws over her stomach. Tittering, you tell them all in good time dear, for now they should all go meet their siblings, before you head out. 'Yes mom!' your cubs cry in unison as they bound off to meet their peers leaving you and Ava to cuddle for a moment longer before she heads back to the garage. Though from the inviting swish of her tail, and hungry look linger in her eyes as sashays past you, you can tell you she wouldn't mind if you followed her.";
	now Baby Pictures is Resolved;
	TraitGain "New Mother" for Ava;
	now Loyalty of Ava is 1;
	ItemGain Baby Picture by 1;
	now Libido of Ava is 0;
	increase level of Ava by 8;
	now Electric Boogaloo is active;


Table of GameEventIDs (continued)
Object	Name
Cuddle Puddle	"Cuddle Puddle"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Cuddle Puddle"	Cuddle Puddle	"[EventConditions_Cuddle_Puddle]"	Drake's Garden	2500	1	100

to say EventConditions_Cuddle_Puddle:
	if Libido of Ava is 29 and level of Ava is 32 and BodyName of player is "Margay Taur" and Player is pure and Cock Count of Player is 0 and Cunt Count of Player >= 1 and ScaleValue of Player is 5 and Loyalty of Augustus Drake is 0:
		now CurrentWalkinEvent_ConditionsMet is true;

Cuddle Puddle is a situation.
ResolveFunction of Cuddle Puddle is "[ResolveEvent Cuddle_Puddle]".
Sarea of Cuddle Puddle is "Nowhere".

to say ResolveEvent Cuddle_Puddle:
	say "     Pulled by the call of your maternal instincts back to The Last Chance, your arrival is greeted by the heartwarming sight of the latest brood cuddling together in a sleepy pile of feline felicity at the center of Drake's garden. Smiling at the sight of your kittens['] fluffy forms wrapped together in their tails['] soft embrace, their serenity only broken by the odd flex of adorable paws or their sweet dreamy mews as they peacefully doze in the available light. Eager to check in on them, you quietly paw up to them, as you get nearer though, you notice another set of comparatively tiny foot-paws poking out between the entwined forms of your slumber brood. Tilting your head in curiosity, it takes you a moment to place a name to the tawny gold pelt and supple black toes intermingling with burnished golds, nacre whites, and lustrous jet fur, then it hits you. Kathy? You inquire in soft whisper, as you lean over your kittens and give her paw a poke with your tendrils. 'Huh?' the matronly lioness mewls, as she stirs at your touch.";
	say "     You watch her foot retract and vanish into the collective floof of your cubs as the sound of talons clattering against the walkway echo through the still garden as her catty head and shoulders suddenly pops out from the pile. '*Yawn* Who's there?' Kathy rumbles, as she looks about The Chance for some sign of her mate. When you gazes met though, her eyes narrow slightly with a mix of confusion, fatigue, and aggravation, but as the last vestige of sleep falls from her visage, her expression brightens. [if Thirst of Kathy is 3]'Oh hey sis[else]Oh hi there [Name of Player][end if]! Sorry, I didn't hear you come in,' she says, with a pleasant trill as your kittens stir all around her, flexing and stretching out their many exotic limbs. 'No way, Mommy [Name of Player] is that you!?' one of your more active cubs chuffs, at the sight of you. 'Hey everyone get up Mommy [Name of Player] is back!' Another of your kittens exclaims excitedly as she jostles her siblings with her tendrils. The others groan and grumble at the disturbance, but as they catch sight of you, their expressions are set alight with pure jubilation as roll over into a sitting position around [if Thirst of Kathy is 3]your partner in crime[else]their apparent babysitter[end if].";
	WaitLineBreak;
	say "     You realize that Ava is nowhere to be seen, curious and perhaps just a hair worried, you ask where your mate is. 'Oh her and Drake are off together getting water and fresh herbs for dinner tonight,' your litter's caretaker answers, gesturing towards the quarantine line with a casual flick of her ears and a bob of her head. 'Ya, Drake said he's making us a huge pot of stew oh I can't wait!' one of the kittens simpers, licking her lips with anticipation as she idly paws her stomach. 'Mh, me too dear, Drake's a great cook, but he won't be back for a while though. So they let me watch your kitten's while they're out,' Kathy quips, reclining in the crook of one of your cubs lower bodies as if it were her own personal throne. 'And I must say dear, you have such well-mannered cubs,' she coos, running her paws over their fur affectionately. 'I know they're going to be great play[italic type]mates[roman type] for my little ones one day.' She smirks, flashing you a devious Cheshire grin as she languidly rubs her tail over the plump swell of her own overripe womb.";
	say "     'Heh-heh, you bet momma Kathy, we can't wait to meet them!' yet another of your daughters swoons, as Kathy strokes her luxurious fur. 'Ya it will be so fun to let them ride us all around the plains, and show them all the cool stuff you've shown us,' one of your daughters seated on the periphery comments in a dreamy tone. 'I want to play with them too! Just imagine all the fun we'll have with our little sisters and baby bros,' one of you daughters seated next to Kathy adds, as she crawls forward and nuzzles her chin along [if Thirst of Kathy is 3]your co-conspirator's[else]their minder's[end if] resplendent middle. 'And you will dear,' Kathy purrs expectantly at the touch of daughter's whiskers tickling her sides. 'Well, one day. For now, I think they need a little more time in the oven. Besides,' she rumbles, cupping her paws about her uppermost row of delectable D-cups, idly admiring their heft as beads of fresh cream leaky between her fuzzy fingers, 'the little ones really know how to bring out my flavor,' Kathy teases, as she hooks a drop of pearly perfection on the tip of her pointer claw and draw the succulent rivet to her lip.";
	WaitLineBreak;
	say "     'Wouldn't you all agree?' she coos, languidly lapping at the tasty treat, as her tongue coils about her talon's sickled edge with a deliberate slowness. 'Ya, Momma Kathy's milk is the best,' your brood cries in unison over the hungry rumbles of their stomachs as they pull themselves closer with their forepaws. You feel your temper rise at both the perceived insult to your bountiful cream, and the odd slavish reaction of your kittens. However, before you can even think to give voice to these thoughts, Kathy raises her left paw-hand. 'Now-now little ones, don't say that. You're going hurt your [italic type]other[roman type] mother's feeling talking that, and you all wouldn't want that now would you?' the matronly lioness implores with an enchanting trill, gesturing to you with a magnanimous wave of her paw. 'No momma Kathy, we're sorry,' they whine, ears drooping below their forehead and halt in place. 'Ah,' Kathy huffs, puffing out her chest as she motions for them to listen, 'That's better, but you should be apologizing to [Name of Player], not, me don't you think? Why, you haven't even tried your mommy [Name of Player]'s milk yet, now have you?'";
	say "     'No,' several of them mumble, as your brood turns their attention back to you. 'We're sorry Mommy, it's just... Momma Kathy is so yummy, I guess we got a little carried away,' one of your kittens kowtows, as she traces nervous circles in the walkway with her forepaws. 'May-may we please try some of your milk?' Well, you begin, letting the word hang in the air like a lure as your kitten's fix their needy expectant gazes upon you. Maybe, but you might like some privacy, this is a very personal affair after all, you add. 'Oh don't be like that dear, we're both mothers so there's nothing to be bashful about, and besides from what Ava's told me the experience will be rather enlightening for all of us,' she chuffs through a toothy jovial grin, as her thin black lips stretch back into a predatory smile. Hesitating, you wonder if perhaps you should ask her to leave, but the hungry pleading looks of your latest litter quiets such thoughts. All-and-all, what's the harm in letting her observe, you muse, beckoning your little one's to your side.";
	WaitLineBreak;
	say "     'That's the spirit dear, now come here, lay your head down on my lap, and get nice and comfy. It must have been so hard walking all the way out here, you deserve a chance to rest,' she titters, spreading her lush legs out before you as she fans her inviting tail about her well-seeded figure, impregnating the air with her soothing, motherly, catty scent. Eyeing up her pillowy thighs, and the lingering drops of alluring alabaster cream clinging to her tawny pelt like pearls floating upon on a sea of flowing molten gold, you feel your eyes drooping and any reticence you may have had ebb as a sudden pang of primal hunger simmers though your core at thought of sampling such ample fare. 'What's wrong dear, are you feeling a little hungry too?' Kathy hums, her cadance both warm and inviting as she leans back on one arm. 'Don't worry, I have plenty of milk to share with [italic type]my girl's[roman type],' she says, beckoning you forward with a luxuriant come-hither gesture. Her fecund body wobbles enticingly with her every breath as a barely audible groan emanates from her decadent D's.";
	say "     Unable to resist the tempestuous scene playing out before you, you nod, then seat your [bodydesc of Player] head in her lap, allowing her toasty pillowy thighs and downy soft pelt to cradle your catty head in their lush supportive folds. As the matronly lioness brings one her lowermost nips to your lips, she mews, 'Go on dear,' as she gives the plush orb an encouraging tender squeeze, eliciting a light trickle of lustrous alabaster ambrosia from her stiff perky teat. Spellbound by the sight of her gleaming offering, you eagerly press your muzzle to her chest, your sizable maw effortless encompassing her leaky milk spout in their loving embraces as you suckle. You're treated to a pleasant rush of warm calming fatty cream, coating your far-traveled palate in a delectable sheen of rich milky delights. Delicious, you purr under your breath as your barbed tongue explores the tight puffy contours of her tit as you drink. 'Mh such a hungry mommy,' Kathy swoons, brushing the side of her paw along your cheek, 'don't let any go to waste, you won't want to set a bad example for your cubs now would you?'";
	WaitLineBreak;
	say "     No, momma Kathy, you mew sleepily, between hearty swallows of the well-seeded lioness's potent milk. 'Good girl[if Perception of Player > 30], your all coming out so well[end if],' she trills in a light whisper, tracing her talon along your chin, sending pleasant sparks of catty contentment through your cuddly core at her doting praise as your own [Breast size desc of Player] teats thrum with activity, seemingly in response to her voluptuous potent cream. You soon feel tiny pearls of your vivacious milk seeping from your ripening body. Rumbling happily at the sensation of pure maternal purpose coursing through you, you can't resist pawing at your supple mounds before beckoning your kittens to your breast. Purring in reply, your cubs snuggle up to your exposed chest and gratefully cup their own sizable muzzles to your [Breast size desc of Player] breasts as they drink in your tainted knowledge and experience. 'Ah, you all look so cute like this, I can't wait to share this with your brothers and sisters one day,' Kathy murmurs, eyeing her own growing brood with an odd expectant smirk.";
	increase Breast Size of Player by 1;
	say "     Lost in your own pleasant feeding and the blissful presence of your cubs, you hardly even notice her expression, as your motherly mind simply wallows in the moment. Only the desire to care and provide for your young holds any true meaning or place in mind, as you encouragingly pet your hungry little adorable forms. You can sense on some level your strain reacting to this potent need, as your breasts swell in tune with your kitten's demands. Fresh sensitive nerves and flush supple adipose, simmer along your fecund figure. Beyond accustomed to such changes, your tainted mind welcomes this pleasurable padding as all around you, your brood mews in appreciation of their mother's endless bounty as desperately suckle your [Breast size desc of Player] in the attempt to quench their thirst. Eventually though, your form seems to have hit the usual wall as the growth levels out, leaving you feeling a touch cheated. You need to be bigger if you're going to provide for them after all, a part of you hisses in aggravation.";
	WaitLineBreak;
	say "     This intrusive thought is short lived though as your kitten's rumble of appreciation echo all around you, as you let go of Kathy's plump teat and turn attention to them.'Wow mom, you're delicious!' one coos, as she smacks her chops. 'And rich! Mh, I don't think I can drink another drop,' a second chuffs, fondly massaging her stomach with her tendrils. 'Gosh, you're smart mom, I never would have guessed half this stuff in a billion years,' a third stammers in awe, as she fixes you with a look of profound pride, while the others simply cuddle up next to you in a show of familial feline affection. Glowing under their earnest heartfelt praise, you thank them for their loving word, before offering them one last gift. 'What's that mom? Your intellectually inclined child asks. Why, their names of course, you reply. 'Really?!' they cry in unison. Nodding, you shift your gaze to your nearest kitten, you decide to call her.";
	say "[CuteBabyNamesGoHereNoisesOne]";

to say CuteBabyNamesGoHereNoisesOne:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[CuteBabyNamesGoHereNoisestwo]";

to say CuteBabyNamesGoHereNoisestwo:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[CuteBabyNamesGoHereNoisesthree]";

to say CuteBabyNamesGoHereNoisesthree:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[CuteBabyNamesGoHereNoisesfour]";

to say CuteBabyNamesGoHereNoisesfour:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[CuteBabyNamesGoHereNoisesfive]";

to say CuteBabyNamesGoHereNoisesfive:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[CuteBabyNamesGoHereNoisesSix]";

to say CuteBabyNamesGoHereNoisesSix:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[CuteBabyNamesGoHereNoisesSeven]";

to say CuteBabyNamesGoHereNoisesSeven:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[CuteBabyNamesGoHereNoisesEight]";

to say CuteBabyNamesGoHereNoisesEight:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	WaitLineBreak;
	say "     After your last, but by no means least, little one has received her name, your attention is suddenly drawn to the sound of the gate opening as you spy [if HP of Augustus Drake > 99]Drake's looming figure pushing the portal open with a rough kick of a vintage paratrooper boot[else if HP of Augustus Drake is 99]Drake's proud leonine visage as he wedges the aperture open with a heavy thwap of his tail[end if] as he hauls what appears to be carcass of a red deer buck by a length of heavy rope. Glancing at the remains of the noose trap coiled about its neck, a part worries the stricken creature may have been a feral, but a quick glance reveals its simple bestial nature and puts your heart at ease. Not that Drake seems to notice the brief look of concern on your face as he walks past you. His eye's set and jawed set in determined grimace as pulls almost half of the unprocessed kill behind him, as he seems utterly oblivious to your presence. Only the elated cry of Kathy and the kittens greeting the noble provider shakes his steely match towards the back of the compound.";
	say "     At their resounding cheers, the big man halts and lowers his prey to ground saying in a tried yet command tone. 'Hey girls, I must of zoned out a bit there,' as he shakes head as if to clear it, 'We had a little run-in with some hyenas who thought they could take this bad boy off us,' he rumbles, giving the noose a tug. 'Lazy sh-' Drake hesitates as his citrine eyes drift toward your kittens. '*Ahem*,' he coughs, 'so-and-sos, I must still be on edge.' 'Oh that's alright dear,' Kathy beams, at the sight of her proud hunter, while she fans her tail in front of her. 'We're all grateful for you and Ava. Speaking of which, where is my sweet kitten?' the lovely lioness asks, with a note of earnest worry worming its way through her otherwise bright tone as she peers behind him. 'RIGHT HERE!' Ava shouts, from behind the wall separating the Chance from the wider world, as the outlines of her ear drift between the razor wire coiling about its edges. 'Sorry, one of the guardrails fell off the cart, and I had to tie it up before things fell out.'";
	WaitLineBreak;
	say "     She rounds the bend and you notice simple ad-hoc leather tied about her waist connected to a rudimentary wooden cart. No, solid wooden cart, you correct yourself, catching sight of the pair of primitive wheels rolling behind her as she pulls the sizable contraption through the gate, stuffed to the gills with several bright blue barrels of water interspersed with multiple stacks of milk-crates full of various plants along with a few multi-colored bird eggs, all of which is held in place with a simple cord bow tied in the same manner as Ava's baby blanket. 'Ah, good job Ava. Might need to work on your knots though,' Drake comments, eyeing up the basic tie with a critical eye. 'Sure thing da- er, Drake,' Ava peeps as she unties her lower half from the crude rickshaw. 'Uh where should I put this?' she inquires, batting her tendrils towards the bundles of supplies, while gently rubbing out the creases in her fur. 'Leave it there for now, I have to process the deer before the parasites can get a chance to ruin the meat. When you get the chance though, can you wash the stuff off so we can pickle it?' he replies as he makes his way to the back of the compound with the buck in tow.";
	say "     'Yes sir, I'm just going to say hi to [Name of Player] and the cubs first,' your dutiful mate replies, though her tone is bright and cheerful, you can still detect a note of weariness worming at the edges of her words. '*Hrump*,' the big man grunts, as him and the buck drift out of sight. Ava shifts her attention back to you and the cubs saying, 'Hey everyone, sorry we're late,' as she trots over to the garden. You notice the poor girl's paws are caked in fresh dirt and her natural eyeliner seems just a tad darker. Her pelt too appears to have lost a bit of radiance, as a heavy coating of the gray-drown dust impregnating the area around the Last Chances clings to her fur like a waterlogged cloak. Briefly, you consider mentioning this, but as you observe the way your mate tries to hide her sullied paws from view, you realize she's quite aware of this.";
	WaitLineBreak;
	say "     Instead, you simply offer her a seat beside you, telling her how glad you are to see her safe and sound. 'Thanks [Name of Player], it's good to see you too,' Ava mews, plopping down beside you, sending a light quake through the walkway, as the wooden pathway groans under your family's combined weight. 'Oh mommy it feels too good to get off my petes,' she whimpers, rotating her left forepaw in an effort to placate some of apparent stiffness in her joints, as her poor limb loudly creaks from the effort. 'I'll say, sweetie, sounds like you two had a rough time out there,' Kathy sympathizes in a genuinely caring tone as she eyes her tired adopted daughter's dusty fur. 'Ya...' your mate sighs, her ears furling slightly, 'but,' she adds her eyes brightening at the sight of her family seated around her, 'just seeing you guys makes the trip worth it. So, how were things while I was out?' 'Great mommy Ava! We spent most of the day cuddling with momma Kathy, then mommy [Name of Player] and gave us our names,' one of your daughters exclaims.";
	say "     'Oh, I can't believe I missed that! I bet you're all pretty mad I wasn't around for that,' Ava huffs dejectedly, as she buries her head in her hand. 'What? No, of course not mommy Ava! We understand you and Drake can't be around all the time. We're just happy you're back!' another of your kittens says in a comforting tone as your litter crowds around their birth mother. 'Thanks everyone, but now you're just making this next part harder,' she sniffles, as she stares in your direction. 'What do you mean mom?' a third kitten inquires, tilting her head to one side. 'Well, it's time for you girls to go live with your other mother. I was hoping we'd have more time but,' she croaks almost on the edge of crying. 'Hey, don't cry mom. We know, and besides we're looking forward to traveling with mommy [Name of Player] and meeting our sisters!' a fourth kitten exclaims, as she throws her arms around Ava and gives her a loving hug. 'Really? You're not mad at me?' your mate mews, nuzzling her chin along her daughter's head.";
	WaitLineBreak;
	say "     'No way! We know how hard it is for you and Drake to keep us fed. We're still going to miss you, but this way we can bring you guys some food for a change,' a fifth kitten rumbles, proudly gesturing to the city with a wave of her paw. 'Oh honey, don't talk like that. It's not that hard-' Ava begins but the chorus of children's voices drowns out her words as they proclaim their desire to pitch in just like their birth mother. For a moment, your mate looks like she's about to contest them but a tender look from Kathy quiets her protest. 'Alright, just stay safe and take care of mommy [Name of Player] for me,' Ava beams, bobbing her head in your direction. 'Sure thing mom,' the fifth kitten simpers as she casts her gaze towards her siblings. 'Now come on everyone, let's go meet the others and give our moms some space,' the fifth cub concludes in a commanding tone as she leads the others off to greet their kin.";
	say "     Once they're out of sight and earshot, you and Kathy snuggle up to Ava and offer her both your praise at raising such dutiful cubs, and your condolences at seeing them leave so soon. 'Thanks you two,' she rumbles, wrapping her tendrils about you both as she draws you in for a quick hug. 'I wish I could stay with you guys for a while, but I have to wash the produce for da-, I mean Drake. But when I'm done and have a chance to wash up,' she adds dusting off a section her pelt with a pat of her paws, '[Name of Player], maybe you could come see me in the garage for a little mommy time?' she swoons, pressing her paw about your middle. Nodding, you tell your dutiful mate, of course. 'Thanks,' Ave mews, as she disentangles herself from and heads over the cart, then begins unpacking.";
	now Cuddle Puddle is resolved;
	now Libido of Ava is 0;
	increase level of Ava by 8;
	TraitGain "New Mother" for Ava;
	now Depravity of Ava is 1;
	now Electric Boogaloo is active;



Table of GameEventIDs (continued)
Object	Name
Electric Boogaloo	"Electric Boogaloo"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Electric Boogaloo"	Electric Boogaloo	"[EventConditions_Electric_Boogaloo]"	Drake's Garden	2500	1	100

to say EventConditions_Electric_Boogaloo:
	if Libido of Ava is 29 and level of Ava > 32 and level of Ava < 64 and BodyName of player is "Margay Taur" and Player is pure and Cock Count of Player is 0 and Cunt Count of Player >= 1 and ScaleValue of Player is 5:
		now CurrentWalkinEvent_ConditionsMet is true;

Electric Boogaloo is a situation.
ResolveFunction of Electric Boogaloo is "[ResolveEvent Electric_Boogaloo]".
Sarea of Electric Boogaloo  is "Nowhere".
Electric Boogaloo is inactive.

to say ResolveEvent Electric_Boogaloo:
	say "     Pergating about the Last Chance, your graze is soon drawn to your bountiful brood laying on the garden walkway in a priceless cuddle puddle of catty perfection with your mate at the center. Overjoyed at the sight of your little ones, you race over to greet them. You notice each appears to be hard at work scribbling away a large sheet of white paper with equally massive black quills. Tucked next to each of your kittens are some simple baby-blue paperback english and math primers that they seem to be copying from as jot they down the problems then attempt to solve. Curious and also just a tiny bit proud to see your family engaging in such scholastic activities despite all the chaos and distractions the modern world offers, you politely ask how their lessons are going. '[italic type]*SSS*[roman type] Hard,' Ava hisses, baring her fang at the page. Her eyes narrow to thin pinpricks as she taps the sharpened end of the quill along the margins. 'Sorry,' your mate sighs as she takes a deep breath to center herself, 'the kittens and I have just stuck on some of these problems for a while now.'";
	say "     Nodding, you tell her not to worry, there's no shame in asking for help. 'Thanks but,' your studious mate huffs, 'I need to learn how to do this on my own. I can't rely on you or [if HP of Drake is 7]daddy[else]da- I mean Drake[end if] for everything. It's not fair to either of you. Don't worry though, I'll figure this out eventually!' Ava beams, scrawling out a few lines of pre-algebra then tries to puzzle it. Unfortunately, she [one of]doesn't follow the order of operations correctly, instead defaulting to trying to solve the problem left to right[or]misinterprets a multiplication symbol for subtraction[or]forgets to properly apply an exponent[or]doesn't show her work correctly[at random], and lets out a disappointed rumble when she compares her answer to the one on the page. 'Agh! Who decided to change the way math worked?!!!' one of your kittens fumes, slamming her tail against the walk as she makes a similar mistake. Tutting, you paw up beside her and offer to help. 'No thanks, mommy [Name of Player], [if HP of Drake is 7]grandpa[else]Drake[end if] and well-,' she whines, biting her lip in frustration. 'I just don't understand this stupid human stuff, it so-so GAH! None of this makes any sense,' she raves, scratching her claws through her head hair in abject bewilderment before turning to face you with a sad look in her eyes. 'I'm just dumb aren't I mom?' Drawing yourself up to your full height, you inform your daughter in no uncertain terms that she is not and that you will not tolerate her any of your brood calling themselves dumb in your presence ever again!";
	WaitLineBreak;
	say "     It takes the balding monkeys almost a decade and a half to get this far, and a lot of the ones in this country struggle to get past this level of math. The fact that she managed to figure this much out in such a short amount of time is amazing, and you will not hear a word otherwise. 'No way, it doesn't take them that long. The book says it's for twelve and up.' she huffs, tilting her head in confusion while her tail swishes behind like a broken metronome. Yes, twelve [italic type]years[roman type] and up, not hours or days, you answer in a loving tone, as you kneel down beside her and offer to walk through a few problems with her. 'No thanks, [if HP of Drake is 7]grandpa [else]Drake[end if] already tried that but he just kept talking about excusing his dear aunt Sally,' she pouts, thumping her head against the walkway in abject frustration. Saddened by the sight, you gently pet her on the back, informing her you're going to show her a special trick of your own that might help. 'Really? Well, if you think it will help, I don't mind giving it a try,' your flustered kitten mumbles, fixing you with a desperate sad look.";
	say "     That's the spirit dear, now come here, she deserves a quick snack, you coo, gesturing to your [Breast Size Desc of Player] chest with an inviting wave of your tendrils. Mewling happily, your diligent kitten eagerly presses her muzzle to your breast as her cute not-so-little lips tenderly latch onto one of your prominent milk spouts. A part can't help but swoon at the feeling of affectionate connection her touch brings as despite the respectable number of children you've sired with Ava. Some section of your feminine psyche is still adapting to the reality these children are yours despite the fact you weren't the one to carry them to term. Though as you lovingly stroke the back of her head while she quietly nurses in your caring embrace, you can sense that sentiment eroding as this simple seems to affirm your familial bonds in a way the lingering simian side of you can comprehend.";
	WaitLineBreak;
	say "     All the while, your other cubs look on with a mix of jealousy and hunger as their sister feeds. Sensing the weight of their eyes upon you, you invite them all to join in. You have plenty of milk and wisdom to share after all. As they eagerly crowd around you and join their peer in partaking of your [if Intelligence of Player < 20]serviceable pool of knowledge[else if Intelligence of Player > 20 and Intelligence of Player < 30]vast library of experience[else if Intelligence of Player > 30]boundless sea of sagacious wisdom[end if]. A sensation of tranquil and maternal purpose washes over like a balmy tropical tide, as the air resounds with the sound of catty contentment. You soon find your voice mixing with theirs as you hum some wordless tune to them while platonically pet their cute pelts. Your senses are awash in a sea of motherly love, while your mind is set alight with dreams of the all bright sparkling futures that could await your sweet tauric daughter's one day, along with some great names for them.";
	say "[TinyBabyNameOne]";

to say TinyBabyNameOne:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[TinyBabyNametwo]";

to say TinyBabyNametwo:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[TinyBabyNamethree]";

to say TinyBabyNamethree:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[TinyBabyNamefour]";

to say TinyBabyNamefour:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[TinyBabyNamefive]";

to say TinyBabyNamefive:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[TinyBabyNameSix]";

to say TinyBabyNameSix:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[TinyBabyNameSeven]";

to say TinyBabyNameSeven:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "[TinyBabyNameEight]";

to say TinyBabyNameEight:
	let NewChildName be "";
	let NewChildGender be "";
	now NewChildGender is random child gender;
	let NewChildPersonality be "";
	now NewChildPersonality is random child personality;
	say "[bold type]Please name your ([NewChildPersonality], [NewChildGender]) child: [roman type]";
	get typed command as playerinput;
	now NewChildName is playerinput;
	LineBreak;
	say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
	say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
	if calcnumber is 1: [coming along]
		say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
		choose a blank row in the Table of PlayerChildren;
	else if calcnumber is 2: [bunker]
		say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
		choose a blank row in the Table of PlayerBunkerChildren;
	now Name entry is playerinput;
	now BirthTurn entry is turns;
	now Gender entry is NewChildGender;
	now Head entry is "Margay Taur";
	now Torso entry is "Margay Taur";
	now Back entry is "Margay Taur";
	now Arms entry is "Margay Taur";
	now Legs entry is "Margay Taur";
	now Ass entry is "Margay Taur";
	now Tail entry is "Margay Taur";
	now ShowTail entry is true;
	now ShowLegs entry is true;
	now Pureblood entry is true;
	if a random chance of 3 in 100 succeeds:
		now Albino entry is true;
	else if a random chance of 2 in 100 succeeds:
		now Melanism entry is true;
	now Personality entry is NewChildPersonality;
	now PlayerRelationship entry is "[one of]loving[or]affectionate[at random]";
	now Feral entry is false;
	if number of filled rows in the Table of PlayerBunkerChildren > 0:
		move Offspring to Bunker;
	say "     Once your kittens have drunk their fill and you've finished bestowing them with proper names, your little dears slowly disentangle themselves from and share a certain proud knowing look with one another before pouncing up their worksheets with renewed vigor. Their quills are ablaze with activity as they wiz through line after line of problems as they tear their current section of their primers. They hardly even stop to check their work, not that they need to, every one of their answers is correct. Though you do notice that their handwriting seems to have changed as it's moved towards a close copy of your own. A part is slightly saddened by this individual flare, but you realize this is likely a result of their exposure to your own knowledge, or a desire to show their appreciation for your priceless gift. Either way your kittens seem rather proud of themselves as they loudly slam their primers shut then write their names and the date on the upper left hand corner of work before passing forward to Ava for inspection.";
	say "     Accepting each one with a smile, your mate quickly checks them against the answer section and exclaims, 'A's all around!' as she proudly scribbles the letter on each page. 'Wow, that was easy, thanks mommy [Name of Player]!' One of your kittens rumbles, as she proudly gazes at the giant [']A+['] on her worksheet. 'Ya, this all makes so much sense now, gosh now I feel silly for throwing a fit earlier,' your once flustered daughter gushes. Patting her on the back, you tell her not to worry about it. You're proud of her and Ava for getting as far as they did in such a short amount of time. 'Thanks moms, you're both the best!' your kitten sniffles, as she bounds between you and Ava, giving you a quick loving hug. Tittering you, tell her that it was nothing, and ask if they'd like to meet the rest of their family while you catch up with Ava. 'You bet! Come every let's go see our big sises,' your now overjoyed daughter hollers as they all gallop off, work in hand to greet their kin.";
	WaitLineBreak;
	say "     Once they're out of earshot, you paw over to your mate, asking her if she's ready to say goodbye to them yet. 'I-I think I'm gonna miss them though,' she peeps weakly, pressing her hand to her empty stomach, 'but,' her voice brightens, 'it's for the best. They deserve to see the world, and who knows? The next time I see them, I might be able to teach them something!' Applauding her gumption, you tell her that you're looking forward to it, and you can think of the perfect motivation for her too. 'Oh what would that be?' Ava snickers, her expression alight with a certain catty desire as she cuddles up beside you. Why, you smirk, nuzzling your chin along the tender swell of your sweet mate's bountiful chest, a nice litter of kittens to her company. 'Mh, I think I'd like that, just don't keep me waiting.' she simpers, as she leans in and gives your ears a cute little nibble, before trotting off to the garage.";
	LineBreak;
	say "     [italic type]Author's Note[roman type]: This is the second tier of placeholder events and will be updated one day. Though you can still breed Ava to your heart's content, no new scenes will play. *Sad tired Dragon noises*";
	now Electric Boogaloo is resolved;
	now Libido of Ava is 0;




Table of Game Objects (continued)
name	desc	weight	object
"Scientific Sundries"	"A collection of assorted chemicals and high end lab tech, crudely secured (for the moment) around a large black metal device of vaguely specified origin. You don't most of it is or does, but Medea says she needs it, so that's good enough for out. It's heavy as sin though, but you're sure to find a way to get her... somehow."	100	Scientific Sundries

Scientific Sundries is a grab object.

instead of using Scientific Sundries:
	say "     Staring at the of heavy pile of salvage, you brielf toy with idea of fiddling around with some of you haul, but think better it. Medea needs them after, and its not you find more of this stuff if somehow end up breaking anything.";
	LineBreak;
	say "[italic type]Warning: this item is deprecated due to issue with inform and only exist to preserve backwards compatibility.[roman type]";

Scent of Scientific Sundries is "Scientific Sundries smells of cold steel with purgative chemicals.".

Table of Game Objects (continued)
name	desc	weight	object
"Medea's list"	"A laundry list of items Medea's looking for reading it over is seems she needs: Fresh fish from an industrial canning facility in the warehouse district Some equipment and chemicals Medea believes can be found in sealed portions of Trevor Labs."	0	Medea's list

Medea's list is a grab object. Medea's list is not temporary.
Usedesc of Medea's list is "[MedeaslistUse]";

to say MedeaslistUse:
	say "     Looking at Medea's list you notice a small doodle on the corner of the piece of paper. Staring at you see: A large blue Dragon Taur typing away on a light up keyboard that's too small for its claws. Behind it, a pair of short-haired black wolves look on with mixture of curiosity and disappointment at the egregious number of spelling errors. Along the edges of the doodle, four twisted Pimps are being chased by a tiny orange kitten with blue eyes. A clown wearing a bright red wig riding an eclipse floats overhead, its expression is one of misery and contempt. The clown is menaced by several interlocking equilateral triangles. This image represents hope.";

the scent of Medea's list is "The list smells of sterilizing chemicals and reptilian arousal.".


Table of Game Objects (continued)
name	desc	weight	object
"Rucksack"	"A solid black rucksack comprised of kevlar and stretchy yet durable waterproof lycra. Possibly of military or mill surplus origin, this heavy duty pack appears to have undergone some moderate aftermarket to fit larger infected individuals. By who though, you can't be certain, regardless, it will no doubt serve you well, so long as you're large enough to wear it."	1	Rucksack

Rucksack is a grab object.
Rucksack is equipment.
It is not temporary.
Plural of Rucksack is false.
Taur-compatible of Rucksack is true.
Size of Rucksack is 5.
AC of Rucksack is 10.
Effectiveness of Rucksack is 5.
Placement of Rucksack is "back".
Slot of Rucksack is "back".
Descmod of Rucksack is "A solid black rucksack comprised of kevlar and stretch yet durable waterproof lycra. Possibly of military or mill surplus origin, this heavy duty pack appears to have undergone some moderate aftermarket to fit larger infected individuals. By who though, you can't be certain, regardless, it will no doubt serve you well, so long as you're large enough to wear it.".
Scent of Rucksack is "The pack smells of ocean spray and just a hint of feline musk.".
EquipFunction of Rucksack is "[EquipRucksack]".
UnequipFunction of Rucksack is "[UnequipRucksack]".

to say UnequipRucksack:
	decrease capacity of Player by 50;

to say EquipRucksack:
	increase capacity of Player by 50;

Table of Game Objects (continued)
name	desc	weight	object
"Baby Picture"	"A simple photo of holding Ava and your newborn kittens moments after they were born. Looking at it, it's often hard to believe your massive cubs were once so tiny they could find in the palm of your paws. Still, just holding it in your mitts makes you feel a bit better, filling you with the drive and determination to struggle on despite the horror and depravity infesting the city. You'd best take care of this though, you doubt Drake can make more, or that your kids would forgive you for losing it."	0	Baby Picture

the scent of Baby Picture is "The photo smells of gunpowder and pungent chemical fumes.".

Baby Picture is a grab object. Baby Picture is not temporary.
Usedesc of Baby Picture is "[PictureUse]";

to say PictureUse:
	say "     Gazing at your cub's baby picture, you feel your heart melting at the sight of their cute little button noses, adorable smokey blue and brown eyes, and sweet tiny pink toe beans as they rest comfortably in Ava's arms. Despite the fatigue written on your mate's face, her smile is of pure joy and accomplishment as reclines on her bed, spent from the exertion of childbirth, but nevertheless content and happy.";
	SanBoost 1;



Table of Game Objects (continued)
name	desc	weight	object
"Dragon Break Coin"	"Are Ava's events not firing correctly? Then use this to activate Medea's walkin, beware using this item outside emergency debugging can have unpredictable consequences!"	0	Dragon Break Coin

the scent of Dragon Break Coin is "The coin smells like mental hazards.".

Dragon Break Coin is a grab object. Dragon Break Coin is not temporary.
Usedesc of Dragon Break Coin is "[DBCoinUse]";

to say DBCoinUse:
	say "     Rubbing the coin between your fingertips, reality ripples and shifts as it bends to the ephemeral will of the poorly made debugging tool.";
	now Breeding Material is active;
	ItemLoss Dragon Break Coin by 1;


Table of Game Objects (continued)
name	desc	weight	object
"Debugging Rod"	"Are Ava's events not firing correctly? Then use this to unresolve Alp 69, beware using this item outside emergency debugging can have unpredictable consequences!"	0	Debugging Rod

the scent of Debugging Rod is "The rod smells like retcons and bad writing.".

Debugging Rod is a grab object. Debugging Rod is not temporary.
Usedesc of Debugging Rod is "[STRodUse]";

to say STRodUse:
	say "     Rubbing the rod between your fingertips, reality ripples and shifts as it bends to the ephemeral will of the shoddy debugging tool.";
	now Finding Alp sixty nine is unresolved;
	ItemLoss Debugging Rod by 1;


Ava ends here.
