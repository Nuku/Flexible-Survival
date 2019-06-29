Version 1 of Landon by Luneth begins here.
[Version 1 - establish Landon as an NPC - Luneth]

[ HP of Landon                                                                 ]
[ 0 - not encountered yet                                                      ]
[ 1 - encountered Landon                                                       ]
[ 99 - lost Landon                                                             ]

[ Stamina of Landon                                                            ]
[ 0 - did not save him from the hypnogeeks                                     ]
[ 1 - did save him from the hypnogeeks                                         ]
[ 99 - lost Landon                                                             ]


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
		say "     You can tell that this line of conversation will lead down a pretty dark path for Landon, judging by the wetness of his eyes, so you attempt to change the subject and ask him more about himself instead. 'Like what? I mean, come on, [if player is female]girly[else]bro[end if], there ain't much to tell. I hate pretty much everything about this campus, well other than Jean, the parties, and of course, being on the baseball team!' You can see the goldie's chest puff up in pride at mentioning playing baseball. 'Look, thanks for checking in on me, but I'm ok, I just gotta go clear my head. Maybe I'll see ya later though[if Stamina of Landon is 1], and again, thanks for the help before. I mean, who knows what those creepy mice had in store for me[end if].";
		WaitLineBreak;
		say "     With his parting words, the retriever jock gets up off of the ground and readjusts his letterman jacket before starting to jog away. Before he gets too far away though, he stops and turns around, waving back at you with a smile on his muzzle. Then with a cocky wink, he turns back around and resumes his run. As you watch him fade into the distance, you can't help but wonder what is really going between Landon, Arsene, and Alcippe. Or how what happened with the mice could be connected...";
		now HP of Landon is 1;
	else: [don't encounter Landon]
		LineBreak;
		say "     You decide that no matter what is going on over here, more than likely, it has nothing to do with you. You slide back along the wall that you have been using as a hiding spot, using the cover to leave without disturbing whatever it is that they are fighting about. As you continue on your walk, the sounds of the yelling from the two males become fainter, until they finally disappear completely.";
		now HP of Landon is 99;

Part 2 - Random

Section 2 - Talking

Section 3 - Fucking

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



Landon ends here.
