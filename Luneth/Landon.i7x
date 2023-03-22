Version 1 of Landon by Luneth begins here.
[Version 1 - establish Landon as an NPC - Luneth]

[ HP of Landon                                                                  ]
[ 0 - not encountered yet                                                       ]
[ 1 - encountered Landon                                                        ]
[ 2 - Landon locked in place                                                    ]
[ 99 - lost Landon                                                              ]

[ Stamina of Landon                                                             ]
[ 0 - did not save him from the hypnogeeks                                      ]
[ 1 - did save him from the hypnogeeks                                          ]
[ 99 - lost Landon                                                              ]

[ Charisma of Landon                                                            ]
[ 0 - no gender lock                                                            ]
[ 1 - treats the player is male                                                 ]
[ 2 - treats the player is female                                               ]
[ 3 - treats the player is neuter                                               ]
[ 4 - pure male lock (views player as a masculine who is biologically male)     ]
[ 5 - trap male lock (views player as a feminine who is biologically male)      ]
[ 6 - pure female lock (views player as a feminine who is biologically female)  ]
[ 7 - butch female lock (views player as a masculine who is biologically female)]


Table of GameCharacterIDs (continued)
object	name
Landon	"Landon"

Landon is a man.
[physical details as of game start]
ScaleValue of Landon is 3. [scalevalue 1-5: "tiny(under 1 foot)", "small(under 4 feet)", "average(around 6 feet)", "large(around 10 feet)", "huge(over 11 feet)"]
Body Weight of Landon is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Landon is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Landon is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Landon is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Landon is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Landon is 7. [length in inches]
Breast Size of Landon is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, C = 3, D = 4 DD = 5, ...]
Nipple Count of Landon is 2. [count of nipples]
Asshole Depth of Landon is 6. [inches deep for anal fucking]
Asshole Tightness of Landon is 1. [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
Cock Count of Landon is 1. [number of cocks]
Cock Girth of Landon is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Landon is 9. [length in inches]
Ball Count of Landon is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Landon is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Landon is 0. [number of cunts]
Cunt Depth of Landon is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Landon is 0. [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
Clit Size of Landon is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Landon is false.
PlayerRomanced of Landon is false.
PlayerFriended of Landon is false.
PlayerControlled of Landon is false.
PlayerFucked of Landon is false.
OralVirgin of Landon is false.
Virgin of Landon is true.
AnalVirgin of Landon is true.
PenileVirgin of Landon is true.
SexuallyExperienced of Landon is true.
TwistedCapacity of Landon is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Landon is false. [steriles can't knock people up]
MainInfection of Landon is "Golden Retriever Male".

Description of Landon is "[LandonDesc]".

Conversation of Landon is { "ruff" }.

The scent of Landon is "[LandonScent]";

to say LandonDesc:
	say "     The tall and muscled golden retriever jock is decked out in some baggy cream-colored shorts, a black tank top, and a red lettermen jacket with the name [']Landon['] on the back. His fur is the normal golden-yellow color, which compliment his warm honey-brown eyes.";

to say LandonScent:
	say "     He smells like clean sweat, with a hint of something that you can't quite put your finger on... but if you could, you would probably lick it.";

Section 1 - Events

Part 1 - Intro

after going to Athletic Street while (Resolution of HypnoGeeks > 0 and Resolution of HypnoGeeks < 98 and HP of Landon is 0): [intro event]
	say "     You decide to take a walk around the Athletic Street. For the most part, it seems like walking through a normal college area, albeit the shapes of those on campus are far different than most. While you can hear the sounds you would expect from the area, something catches your attention: an angry shouting match. Walking closer, you can see three individuals in close contact with each other. Two of them are males, one a human facing you and the other a golden anthro canine with his back mostly on show. They seem to be the ones fighting, while the lone female, a dark-brown anthro equine, stands to the side and appears to be pretty amused by what's happening in front of her. Hugging the side of a nearby building, you attempt to keep your presence hidden.";
	say "     Upon closer inspection, you can see that the man facing you is one of the spartan guards that seem to be all over the campus. He is wearing a crimson cloak around most of his form, however as a breeze blows through the area, you get a full view of his olive-complected body, which you learn is completely bare underneath. Looking him up and down, you can see that he has a big overall frame with thick thighs and powerful pectorals, but what really grabs your attention though is his large uncut cock swaying back and forth between his legs as he moves. As your gaze reaches his face framed by his bronze helmet, you aren't all that surprised to see a full black beard adorning his rugged mug, but what does shock you are his eyes. While full of rage at the moment, they are a beautiful jade-green color, and you have to force yourself to look away when those same orbs flick in your direction for a moment before zeroing back on their opponent.";
	WaitLineBreak;
	say "     The chocolate-colored horse girl standing next to the spartan has her arms crossed over her ample breasts and a wicked smile on her lips. She is wearing black spandex pants coupled with a black tube top. She laughs at what you assume is something funny about the fight taking place in front of her, causing the long black mane behind her to sway into view, showing off the single tight braid that she has styled it into. You can also see the powerful muscles under her fur flex with every movement that she makes, showcasing that while she may be a pretty mare, she is also something akin to war horse. From the angle that you're standing, you can't get a very good look at the goldie, well other than the fact that he's wearing a letterman jacket and baggy pants.";
	LineBreak;
	say "     [bold type]Do you think that you should stick around?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes, by the looks of it, someone might need some help.";
	say "     ([link]N[as]n[end link]) - No, whatever is going on over here, is none of your business.";
	if player consents: [encounter Landon]
		LineBreak;
		say "     Deciding to stick around and see what the commotion is really about, you're surprised when the goldie punches at the spartan, however the warrior simply steps to the side, effectively evading the assault. The retriever growls loudly at the man and finally speaks, 'What the fuck, Neil? Ya think that just cuz you got yourself a new body that the rules have changed!? You're still the same piece of shit loser you've always been, and if you don't back off of my girl, I'm gonna kick your ass!' [if Stamina of Landon is 1]You recognize the voice and realize that this is the same retriever jock that you saved from those two mouse brothers with the weird machine. [end if]Through the spartan's thick beard, you can see his lips pull back in a sneer, exposing his pearly-white teeth.";
		say "     'Shut your muzzle, Landon. My name is Arsene, and when you address me, it will be with respect!' Landon ends up bursting into laughter in response. 'Bro, if you are gonna change your name, maybe try something that sounds a lil['] tougher. Personally, that name sounds like it would be a better fit on some spoiled lil['] princess... Oh wait, never mind. I guess that it does suit you after all, haha!' You can see Arsene's hand clenching tightly into a fist. 'My name means power, obviously something that you seriously lack, cur.' Without any further warning, the spartan rushes at Landon and delivers a hard punch right into his gut. The retriever is forced to fall to his knees, all of his earlier laughter completely silenced.";
		WaitLineBreak;
		say "     Looking down at the fallen canine, Arsene grabs ahold of Landon's muzzle, forcing the retriever to look up at him. 'Do you realize why we spartans guard the campus? Because we are powerful warriors of course, but also because this is now our territory... and one of the perks of that is that we own everything inside of this area. Do you know the difference between the helots and the rest of you?' The spartan leans in close to Landon's face and says, 'Absolutely... nothing.' While the man's voice has a cold edge to it, you can see pride bloom within his emerald eyes. 'There are only two types of people on this campus, dog: those that are warriors and those that serve. Which do you think rule?' Arsene quickly pulls his fist back and slams it across the canine's muzzle with a sickening crack.";
		say "     Glancing down at Landon, the spartan spits on him, almost as a final insult, before beginning to walk away. 'Come, Alcippe. We have better things to do than deal with some feral mutt!' Taking a step to follow after Arsene, the horse girl stops herself and instead walks over to where Landon is splayed out on the pavement. Leaning down closer to his face, she speaks to the retriever, 'Sorry about this, Landon, but a girl has needs ya'know, and what this girl needs is power, and Arsene has that. Love, friendship, all of that crap doesn't matter in this world anymore, baby... I need a real man that can get things done and inspires fear and loyalty. Those are things that he can do that you never could. If it makes you feel any better, I would have chosen to stay with you, but you were just to weak for what I need. And that fucking slobbering tongue when you want to lick my breasts - yuck!'";
		WaitLineBreak;
		say "     The horse girl's words sound dead serious, but the twinkle in her eye lets you know that on some level she is enjoying this. 'Alcippe, come, now!' With that, the girl laughs, and with a wink in your direction, races after the Spartan, leaving Landon panting on the pavement. Leaving your hiding spot, you quickly jog over to where Landon is, looking around to make sure that you won't be disturbed and then you kneel at the retriever's side. Looking down at his face, you aren't sure if he's even conscious or not until he finally opens his honey-brown eyes and just looks up at the sky for a few moments. While he does have some blood around his muzzle, you can see its elongated shape straightening out again, the broken bone healing in moments and his split lip closing up. You attempt to help the goldie up into a sitting position when he pushes you away with a sneer on his face and sits up on his own.";
		say "     The look that Landon shoots you is one full of rage and betrayal, and you can't help but second guess your decision to come over and check on him. 'Look, [if player is female]lady, I ain't into random sluts, and[else]bro,[end if] I don't have anything for ya to steal, so just push off!' The growl in his voice causes you to hold your hands up in an attempt to hopefully calm the angry retriever down. The goldie finally takes a moment to actually get a good look at you. [if Stamina of Landon is 1]'Wait a second, aren't you the one that helped me with those mice?' [else]'Eh, I guess that you look alright. At least you're not trying to jump my bone or rob me, haha.' [end if]Quickly, the rage leaves Landon's eyes and is replaced with a happy smile on his muzzle. You decide to ask him if everything is alright as you explain to him that you saw everything that had happened earlier.";
		WaitLineBreak;
		say "     The retriever's gaze ends up drifting towards the ground. 'So you saw all of that, huh? The asshat that punched me, his name's Neil... well now he goes by Arsene. He was a total loser. When he wasn't looking for new ways to paint his face up in that black make-up, he was busy smoking up. Now that he has that new body of his, he seems to think that he matters now. It's like, bro, I know that you got that new body by becoming some spartan's cumdump, haha!' You can't help but chuckle a bit, especially after seeing how much of a jerk this Arsene seems to be firsthand. 'The other person, that's my girl, Jean... Well she was my girl at least.' You can see the sadness in the canine's expression, but you can't help but ask why Arsene called her Alcippe. 'Oh that? She allowed that bastard to rename her. Can you believe that? He [']renamed her[']?!'";
		say "     You can tell that this line of conversation will lead down a pretty dark path for Landon, judging by the wetness of his eyes, so you attempt to change the subject and ask him more about himself instead. 'Like what? I mean, come on, [if player is female]girly[else]bro[end if], there ain't much to tell. I hate pretty much everything about this campus, well other than Jean, the parties, and of course, being on the baseball team!' You can see the goldie's chest puff up in pride at mentioning playing baseball. 'Look, thanks for checking in on me, but I'm OK, I just gotta go clear my head. Maybe I'll see ya later though[if Stamina of Landon is 1], and again, thanks for the help before. I mean, who knows what those creepy mice had in store for me[end if].";
		WaitLineBreak;
		say "     With his parting words, the retriever jock gets up off of the ground and readjusts his letterman jacket before starting to jog away. Before he gets too far away though, he stops and turns around, waving back at you with a smile on his muzzle. Then with a cocky wink, he turns back around and resumes his run. As you watch him fade into the distance, you can't help but wonder what is really going on between Landon, Arsene, and Alcippe. Or how what happened with the mice could be connected...";
		now HP of Landon is 1;
	else: [don't encounter Landon]
		LineBreak;
		say "     You decide that no matter what is going on over here, more than likely, it has nothing to do with you. You slide back along the wall that you have been using as a hiding spot, using the cover to leave without disturbing whatever it is that they are fighting about. As you continue on your walk, the sounds of the yelling from the two males become fainter, until they finally disappear completely.";
		now HP of Landon is 99;

Part 2 - Placement

after going to Athletic Street while HP of Landon is 1 and "Placement Event Done" is not listed in Traits of Landon: [placement event]
	say "     As you slowly begin walking down Athletic Street, you keep your eyes peeled for any potential threats. While you know that the Spartans are supposed to be keeping the campus a [']safe zone['], you have been attacked on the grounds enough to know that they can't always be everywhere. Then again, after what you witnessed earlier on this same street between Arsene and Landon, you doubt that every Spartan has the student body's interests at heart. Even though you are supposed to be trying to keep an eye out for danger, your mind begins to swirl with thoughts of the goldie baseball player. With what you saw go down, you can't help but feel bad for him. Losing aspects of his humanity, and to top it off, having his girlfriend dump him had to take its toll. With your head stuck in the clouds and not paying attention to your surroundings, you walk straight into what feels like a fluffy brick wall, causing you to fall flat on your behind.";
	say "     Glancing up, you shield your eyes from the sunlight and see a tall shadow standing in front of you. As it slowly turns around, you are able to see something being thrown high into the air. As your eyes finally adjust to the sunlight behind the person you bumped into, a shiny coat of golden fur can be seen poking out from underneath shorts and a letterman jacket. 'Hey, [if player is female]girly[else]bro[end if]!' Landon's warm honey-brown eyes look down at you while his long tail can be seen wagging behind him. The canine quickly reaches down to help you up, and that's when you notice a shadow falling from the sky above the retriever. You open your mouth to warn him, but sadly not fast enough as the baseball he was tossing collides with his head with an audible clunk, causing a confused expression to pass across Landon's face.";
	WaitLineBreak;
	say "     'Wow, that was kinda weird, Don'tcha think?' You're about to comment on the fact that it's actually pretty normal for gravity to have that effect when he simply continues talking, 'I mean, I don't think I've ever laid eyes on someone and just... felt the world shift like that.' At first, you think that the goldie is joking around, and a smile can't help but creep at the corner of your mouth. That's when you realize that this guy is being totally serious, and without even really thinking, you point to the ball that bounced to the grass next to his feet. The intense look on his face quickly shifts when his eyes land on the baseball. 'Awesome! A ball!' You can't keep the happy chuckle at seeing how this normally imposing male looks as excited as a puppy at Christmas, that is until he seems to figure out what actually happened.";
	if Player is barecrotch and Player is barechest: [Naked]
		if player is puremale or player is herm and breast size of player is 0:
			say "     'Ya'know I was only joking about that whole world moving thing, right?! I mean, come on, you're a bro, and I'm a bro... err and I'm a bro that's totally down with the chicks.' The goldie looks suitably embarrassed, whether from his world shifting comment or from the whole needing to make sure that you understand that he likes girls. 'I have a girl by the way! Err well, I had one, but I haven't given up on her!' Rolling your eyes at the hyperactive canine's antics, you hold your hand out for him to help you up. 'Well, I don't usually make a big effort to help dudes off the sidewalk, but since you have been pretty nice and had my back... I guess I can make an exception for ya, bro-man!' You can't decide whether to find it amusing or annoying that he actually sounded like he was seriously trying to figure out if he should help you or not. As his furry digits wrap around your hand, you can't help but notice how soft his paws are, but that thought quickly leaves your mind as you are pulled up far too fast and end up bumping into the canine's chest.";
			WaitLineBreak;
			say "     'Haha, you aight, bro? Hopefully you didn't end up walking into me cuz you were wasted from some party.' The smile on his muzzle lets you know that he is only teasing you, so you join him in laughing and then remind him that his strength was to blame. 'Yeah, well you can't be a baseball star without gaining some guns!' The goldie slowly flexes to show off said guns. 'Oh, dude, don't forget your bag. Must have fallen off when you bumped into all this bro-muscle, haha.' Not wanting to lose your bag, you quickly turn around and bend over to collect it. A soft growl comes from behind you, and when you turn around, you see Landon staring at where your bare ass had been. Moving to the side, you ask if he's alright. 'Oh yeah, it's always sunny around here, well except when it rains.' Well... that made no sense. Wanting to get the canine's attention, you quickly snap your fingers in front of his muzzle.";
			now Charisma of Landon is 1;
		else if player is purefemale or player is herm and breast size of player > 0:
			say "     'Ya'know I was only joking about that whole world moving thing, right?! I mean, I've already got a girl! Err well, I had one, but I haven't given up on her!' The quick and spastic speech leads you to think that maybe this is an attempt to backpedal out of embarrassment. Well that and the fact that he looks about a minute away from making a run for it. Reaching up, you hold your hand out for him to help you up. 'Oh yeah, wouldn't be very gentlemanly to leave a pretty girl just sitting on the ground, would it?' [if player is herm]The goldie stops suddenly and looks down at your cock. 'I mean... you [']are['] a girl aren't you?' Laughing, you nod your head, explaining that the lady bits are all here and accounted for. [end if]As his furry digits wrap around your hand, you can't help but notice how soft his paws are, but that thought quickly leaves your mind as you are pulled up far too fast and end up bumping into the canine's chest. Looking up at Landon, you see that his gaze is transfixed on your bare breasts. Clearing your throat in an attempt to capture his attention, you are confused by his response of, 'Oh yeah, it's always sunny around here, well except when it rains.'";
			WaitLineBreak;
			say "     Backing up, you release a soft giggle at the reaction that Landon had when having your bare chest pressed up against him. 'Woah, sorry about that. I guess a guy shouldn't just start staring at a chick's tits... even if they are just hangin out and the perfect shape, with plenty of bounce.' The last bit is said barely above a whisper, but you still manage to pick it up. In the hopes that you can help keep Landon a little less focused on your chest, you casually cover your chest with your hands, which unfortunately just leads to the retriever finding something else interesting to gaze at. Following his eyes to see what has him so captivated, you realize that he is staring at your exposed [if player is herm]cock[else if player is female]pussy[end if]. Deciding that this isn't exactly what you had hoped to talk with the canine about, you quickly snap your fingers in front of his muzzle to get his attention.";
			now Charisma of Landon is 2;
		else: [Neuter]
			say "     'Ya'know I was only joking about that whole world moving thing right?! I mean come on, you're a bro, and I'm a bro... err I mean you are a bro, right? I mean, no offense but you kinda look like a living doll, haha!' The goldie looks suitably embarrassed, whether from his world shifting comment or from the whole not being sure what your actual gender is. 'I have a girl by the way! Err well, I had one, but I haven't given up on her!' Rolling your eyes at the hyperactive canine's antics, you hold your hand out for him to help you up. 'Well. I guess there shouldn't be a problem with helping you up. I mean, you're not really a dude, and plus you've had my back before, so... why not!' You can't decide whether to find it amusing or annoying that he implied you might not be a male. As his furry digits wrap around your hand, you can't help but notice how soft his paws are, but that thought quickly leaves your mind as you are pulled up far too fast and end up bumping into the canine's chest.";
			WaitLineBreak;
			say "     'Haha, you aight? Hopefully you didn't end up walking into me cuz you were wasted from some party.' The smile on his muzzle lets you know that he is only teasing you, so you join him in laughing and then remind him that his strength was to blame. 'Yeah, well you can't be a baseball star without gaining some guns!' The goldie slowly flexes to show off said guns. 'Oh dude... chicka... whatever, haha, don't forget your bag. Must have fallen off when you bumped into all this bro-muscle, haha.' Not wanting to lose your bag, you quickly turn around and bend over to collect it. A soft growl comes from behind you, and when you turn around, you see Landon staring at where your covered ass had been. Moving to the side, you ask if he's alright. 'Oh yeah, it's always sunny around here, well except when it rains.' Well... that made no sense. Wanting to get the canine's attention, you quickly snap your fingers in front of his muzzle.";
			now Charisma of Landon is 3;
	else: [has clothes]
		if breast size of player > 1: [B and up, treated as female initially]
			say "     'Ya'know I was only joking about that whole world moving thing, right?! I mean, I've already got a girl! Err well, I had one, but I haven't given up on her!' The quick and spastic speech leads you to think that maybe this is an attempt to backpedal out of embarrassment. Well that and the fact that he looks about a minute away from making a run for it. Reaching up, you hold your hand out for him to help you up. 'Oh yeah, wouldn't be very gentlemanly to leave a pretty girl just sitting on the ground would it.' As his furry digits wrap around your hand, you can't help but notice how soft his paws are, but that thought quickly leaves your mind as you are pulled up far too fast and end up bumping into the canine's chest. Looking up at Landon, you see that his gaze is transfixed on your covered breasts. Clearing your throat in an attempt to capture his attention, you are confused by his response of, 'Oh yeah, it's always sunny around here, well except when it rains.'";
			WaitLineBreak;
			say "     Backing up, you release a soft giggle at the reaction that Landon had when having your chest pressed up against him. 'Woah, sorry about that, I guess a guy shouldn't just start staring at a chick's tits... I mean, they're nice, well nice in a non-pervy way, ya'know with clothes covering them and all!' The last bit is said with an uncomfortable laugh on his part. Obviously he has a way of speaking before he thinks. In the hopes that you can help keep Landon a little less focused on his embarrassment, you casually cross your arms over your chest. Thankfully, this seems to calm the hyper goldie down and once again, he meets your eyes.";
			now Charisma of Landon is 2;
		else: [A and no breasts, treated as male initially]
			say "     'Ya'know I was only joking about that whole world moving thing, right?! I mean come on, you're a bro, and I'm a bro... err and I'm a bro that's totally down with the chicks.' The goldie looks suitably embarrassed, whether from his world shifting comment or from the whole needing to make sure that you understand that he likes girls. 'I have a girl by the way! Err well, I had one, but I haven't given up on her!' Rolling your eyes at the hyperactive canine's antics, you hold your hand out for him to help you up. 'Well I don't usually make a big effort to help dudes off the sidewalk, but since you have been pretty nice and had my back... I guess I can make an exception for ya, bro-man!' You can't decide whether to find it amusing or annoying that he actually sounded like he was seriously trying to figure out if he should help you or not. As his furry digits wrap around your hand, you can't help but notice how soft his paws are, but that thought quickly leaves your mind as you are pulled up far too fast and end up bumping into the canine's chest.";
			WaitLineBreak;
			say "     'Haha, you aight, bro? Hopefully you didn't end up walking into me cuz you were wasted from some party.' The smile on his muzzle lets you know that he is only teasing you, so you join him in laughing and then remind him that his strength was to blame. 'Yeah, well you can't be a baseball star without gaining some guns!' The goldie slowly flexes to show off said guns. 'Oh, dude, don't forget your bag. Must have fallen off when you bumped into all this bro-muscle, haha.' Not wanting to lose your bag, you quickly turn around and bend over to collect it. A soft growl comes from behind you, and when you turn around, you see Landon staring at where your covered ass had been. Moving to the side, you ask if he's alright. 'Oh yeah, it's always sunny around here, well except when it rains.' Well... that made no sense. Wanting to get the canine's attention, you quickly snap your fingers in front of his muzzle.";
			now Charisma of Landon is 1;
		say "     'Oh ah, what were we talking about?' Deciding that bringing up his [']staring['] issue would just cause more embarrassment for him, you instead change the subject and ask how he's been since you last saw him. 'You mean since my girlfriend basically told me I wasn't good enough for her?' On reflex, you wince at his words. While you were hoping to change the subject, you hadn't exactly planned on hurting Landon's feelings by bringing up that mare Jean, or Alcippe as she goes by now. 'Don't worry about it, [if Player is not defaultnamed][name of Player][end if]. I know that you weren't trying to be an ass, and it's nice to feel like someone cares, even if we only met a lil['] while ago. But yeah, I'm doing a lot better. Still haven't given up hope on getting my girl back though.'";
		WaitLineBreak;
		say "     You can see the steely resolve in his honey-brown eyes. Well, for a moment you can, then his normally happy go lucky expression returns. 'Oh wait, this is totally awesome! You wanna be my [if Charisma of Landon is 1]wing-man[else if Charisma of Landon is 2]plus one[else if Charisma of Landon is 3]umm wing-person[end if]?' You're thrown off balance by Landon's question. Well that and the fact that he also chose that moment to go into [']puppy-mode['] and is crushing you against his furry chest, which would normally be fine, but oxygen is something all living things require. The canine finally realizes that you aren't so much patting his back in the hug as attempting to inform him that you want to live, and he backs off with an embarrassed chuckle as you take this moment of freedom to gulp in blessed fresh air.";
		say "     'See, I'm a part of a frat, and they are always throwing the best parties around. I'm serious, we don't really mark it as a win until either the police or an ambulance is called, haha. Anyway, I've been really wanting to just let loose and go balls to the walls crazy. The only problem with doing that is my bros like to get me into trouble when I'm wasted. Like this one time, we were doing shots of tequila, and next thing I know, it's morning and I'm on a boat, in the ocean, covered in some like plastic paint stuff, which by the way was super fun to pull off since I was never really hairy as a normal guy anyway.' So far, this sounds mildly frightening, but the look on his face is so happy that you laugh right alongside him. 'So I finally get this shit off, right? And BAM! I also got a tattoo that I didn't remember getting, haha! Wanna see?!'";
		WaitLineBreak;
		say "     Apparently, he isn't waiting for your input on whether or not you want to see it, so you're half expecting him to pull off his lettermen jacket and show off some ridiculous [']pussy hound['] tattoo or something, so you can't help but be surprised when Landon begins to undo his shorts. Once he is finished, he tugs the clothing down a bit and turns around. You are now face to face with the top half of the goldie's bare ass, well that and his wagging tail, which almost smacks you with how fast it's moving. Deciding that you might as well see the tattoo since he already went to all of this effort to show it off, you gently but firmly grab ahold of his tail and lift it up so that you can see better. This causes a whine to escape Landon's throat, and you worry for a moment that you might have hurt him. 'It's all good. I've just never had someone grab my tail before, and when you lifted it, I don't know, it just... felt kinda weird.'";
		say "     You choose to ignore the panting sound coming from the canine and instead look for the tattoo. That's when you see the huge red heart with an empty banner across it. 'Funny, right? I can't believe they talked me into that. Well I mean, it's not the same as it used to be. It used to have [']Jean['] written in the banner, but after I changed it just... sorta disappeared.' Landon's voice falters for a moment, and you can only assume how hard this must be since he didn't just lose her name but also her as a person. Wanting to try and raise the droopy dog's spirits, you give the baseball player's still-exposed backside a swat, causing his meaty ass to jiggle a bit as he jumps away from you laughing, 'Hey now, I never said anything about touching, haha!'";
		WaitLineBreak;
		say "     Landon turns back to face you, and it seems that laughter is just what he needed. Well, going by how the puppy-boy's tongue is happily hanging out as he tries to catch his breath. 'Anyway, so there's a party, and I was wondering if you wanted to go with me? I mean, it should be fun, and I would really like to show off my new friend to all my bros!' Your heart melts just a tiny bit with how proud the goldie sounds about showing you off. Well at least it did until he followed it up with, 'Oh, but you can't come like that. I mean, if I'm gonna show off my new friend, I wanna do it in style, sooo... you're gonna need some new threads. Lucky for you, I know a girl who could prolly help you out at the mall. She works in one of the clothing shops. Every time I went in, she would always pick out the clothes that looked the best on me! I can't really remember her name, but she always walked around with those fake cat ears, so ya shouldn't be able to miss her.'";
		say "     'I'm usually around here, so after you get the stuff just come back, and we can go to one of the parties. It's not like there's a rush. I mean, we have parties every night, haha.' Looks like if you wanna go the party with Landon, you are gonna needs some new clothes. Who knows, maybe a night out could be fun, and you have to confess, it might be fun to see Landon go [']wild['], haha. 'I can't believe how awesome this is gonna be, showing up with such [if Charisma of Landon is 1]an awesome brah[else if Charisma of Landon is 2]a super hot chick[else if Charisma of Landon is 3]a cool person[end if]!' Not wanting to take the wind out of his sails, but feeling it might be necessary, you explain to him that you will check out the mall, but that he might wanna do up his shorts before he leaves, or he might end up exposing himself to someone. 'What?! Oh shit, thanks!'";
	move Landon to Athletic Street;
	TraitGain "Placement Event Done" for Landon;


Section 2 - Talking

to say LandonTalkMenu:
	LineBreak;
	say "What do you want to talk with Landon about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk about what comes to mind";
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
				if (nam is "Just chat a bit"):
					say "[LandonTalk1]";
				wait for any key;
				say "[LandonTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the goldie baseball player, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say LandonTalk1:
			say "     'Sup[if Player is not defaultnamed], [name of Player][end if], so... yeah, I might not show off my tattoo too much anymore. I was showing it to this new pledge at the house, and before I knew it, he was trying to lick my butt. I had to push him back and ask what the heck he was doing! Then he mentioned something about how I smelled really good, and I just ran for it after that.";



Section 3 - Fucking

instead of fucking the Landon:
	say "     That would probably not be the best idea, especially since you are both still feeling out your friendship.";

[to say LandonBJ:
	if player is female:
		if PenileVirgin of Landon is true: [first time facefucking the player]
			now PenileVirgin of Landon is false; [since he isn't a true virgin dick-wise, we just used this to track player v-card]
			say "...";
			NPCSexAftermath Player receives "OralCock" from Landon;
		else:
			say "...";
			NPCSexAftermath Player receives "OralCock" from Landon;
	else: [oh horror - a gay cock vampire!]
		if PenileVirgin of Landon is true: [first time facefucking the player]
			now PenileVirgin of Landon is false; [since he isn't a true virgin dick-wise, we just used this to track player v-card]
			say "...";
			NPCSexAftermath Player receives "OralCock" from Landon;
		else:
			say "...";
			NPCSexAftermath Player receives "OralCock" from Landon;]


Section 4 - Quests

Section 5 - Infection

[see Luneth folder Retriever Male Infection]

Section 6 - Notes&Comments
[WARNING SPOILERS!]

[See HypnoHeeks file notes for the plans that Landon has in store for the mice]



Landon ends here.
