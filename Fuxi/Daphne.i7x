Version 1 of Daphne by Fuxi begins here.
[By Fuxi. Coding and Assistance from Prometheus]

[ HP of Daphne            ]
[ 0 - Unmet               ]
[ 1 - Saved from Spartans ]
[ 2 - Talked to her       ]
[ 3 - Talked after spying ]

Section 1 - Meeting Event

Table of GameEventIDs (continued)
Object	Name
Spartan Intimidation	"Spartan Intimidation"

Spartan Intimidation is a situation.
ResolveFunction of Spartan Intimidation is "[ResolveEvent Spartan Intimidation]".
The level of Spartan Intimidation is 10.
Sarea of Spartan Intimidation is "Campus".
when play begins:
	add Spartan Intimidation to BadSpots of MaleList;
	add Spartan Intimidation to BadSpots of FemaleList;

to say ResolveEvent Spartan Intimidation:
	project Figure of Daphne_clothed_icon;
	say "     Wandering through the college campus, you're struck by how relatively peaceful it is. There's not a fight to be spotted. Nobody's screaming for help — no military shooting down your city brethren. Tenvale seems like paradise compared to the outside! Of course, it's in the middle of this thought that your bliss is interrupted. A trio of shady-looking Spartans in the corner of your eye are pressed into the relatively out-of-sight corner behind one of the campus's buildings. Looking closely, you notice the man in the middle is quite unusual looking for one of the ancient warriors as despite being clade in the gear of a Spartan commander all of his exposed body is that of a shaggy coated canine, and standing in front of him is a beautiful blonde woman pinned against the wall. Now even if it's certainly not a good habit for you to build, you can't help but, despite all the dangers of the apocalypse, be drawn to all that's around you. Curiosity killed the cat, but it's worked out well for you so far, so you might as well check out what's going on here.";
	say "     'Foul wench, did you think you'd get away with disrespecting Agis? You'll pay for your insolence,' the warrior to the left of the woman hisses, clearly enraged, one hand tightly gripping his spear, and his partner rumbles his agreement. But even with the Spartans posturing in such an aggressive manner, the gorgeous lady remains calm and composed in fact she seems less afraid and more annoyed rolling her eyes and scoffing with clear disdain. 'My insolence? When Agis was the one who harassed me! He deserved a good kick to the balls. Maybe it'll make him think twice about touching another woman on this campus, that worm. More importantly, what about your insolence? What will Pericles think when he hears about how you've threatened me? I don't think he'd take too kindly to an innocent woman being accosted like this.' She looks quite smug stating this, crossing her arms and throwing a victorious smirk at the campus guards when the two to her left and right shift nervously, backing away slightly her attitude changes quickly when the Spartan in the center takes charge.";
	WaitLineBreak;
	say "     'Pericles won't be hearing about this. You've been a conceited bitch and a thorn in my men's side for quite some time now, Daphne. Naiad or not, you're still a woman, and we will show you your place under us men, open for sex and ready for breeding. You're good for nothing else.' The canine Spartan speaks coldly, emboldening his lackeys who press closer to the naiad you now know as Daphne. She seems far less confident at his speech, managing to uphold her brave front and staring up defiantly at the large middle Spartan, but no longer is it the men beside him shifting nervously; instead, it is her squirming in place and trying to subtlety scout out ways to run from the Greeks surrounding her. 'You can't do this to me. I'm divine! I'm a nymph. You're just a bunch of mortals!' Daphne yells, trying to seem indignant and wrathful but failing to keep a bit of tremor from entering her voice. Again the Spartans to her side demonstrate their weakness by backing away, and again their leader jumps in to steel their hearts.";
	say "     'Divine indeed though you may be, you're no Artemis or Athena, merely a lowly naiad, a water spirit with naught but a pool to her name. Besides, what proof do we have that you're truly divine? These nanites change people into what they're not. How do we know you're not a liar?! And if you are a liar, a heretic claiming godhood, I think your claims are more than enough to justify what comes next, isn't that right, boys?' This time it's the Spartan group's turn to look smug, gripping their weapons tight as they close in on Daphne, gazing upon her body hungrily, eyeing up her breast and curves like wolves stumbling upon fresh meat. The water spirit tries to back away but finds cold concrete to her back, but just as you can see Daphne's fear, you can also see her anger and defiance burning bright as she clenches her fist ' You fucking bastards!' the naiad's decided to go out with a bang rather than a whimper and throws a surprisingly hard punch knocking the Spartan to her left to the ground and tries to make a break for it but is immediately set upon by the other two Spartans.  No matter how spirited Daphne is, she probably won't last when it's her alone against three experienced warriors. It's only a matter of time until she's overwhelmed, and the Spartans can do as they wish with her. From what you've heard, you doubt it's anything good, but if you were so inclined, perhaps you could help Daphne and save her from an unfortunate fate.";
	say "     [bold type]Would you like to intervene?[roman type][line break]";
	let Daphne_Spartan_Choices be a list of text;
	add "Save the young woman from her soon-to-be rapists. It's the right thing to do!" to Daphne_Spartan_Choices;
	add "No. It will undoubtedly be dangerous to get involved." to Daphne_Spartan_Choices;
	add "Leave since you're not interested in any of this at all." to Daphne_Spartan_Choices;
	let Daphne_Spartan_Choice be what the player chooses from Daphne_Spartan_Choices;
	if Daphne_Spartan_Choice is:
		-- "Save the young woman from her soon-to-be rapists. It's the right thing to do!":
			LineBreak;
			say "     You jump into the fray with haste and take advantage of the element of surprise you have over your foes, speedily knocking out the warrior who was on the woman's right, a small light-skinned man, with a quick hard smash against the head next to you to move in on their leader giving Daphne time to finish off the spartan that was on her left a lanky muscled dark-skinned warrior who viciously lashes out with his spear. The head spartan, who had remained irritatingly calm during his confrontation with the captivating naiad, seems infuriated by your interruption and with a feral snarl slashes at you with his short sword grazing your hip and leaving a long cut that ordinarily might seriously impede your ability to fight. Still, thanks to the nanites, it's something you can easily work through. For a little while, you're caught in a stalemate with the leader, the perfect Spartan if it weren't for his abnormal canine features, a tall, broad, muscular, furred brute who fearlessly and skillfully attacks you. Thankfully you spot an opening in your enemy's defenses. Your time street brawling in the city has made you a highly observant and opportunistic fighter. Still, just as you swoop in to claim your glory, the Greek falls to the ground crying out in agony from a hard kick right between his legs by a furious Daphne, who gives him no rest raining kicks against his prone form and stomping the sexist pig into the ground while yelling obscenities.";
			say "     Eventually, she stops kicking and stands panting hard over the unconscious warrior, messy and yet still lovely, before turning to see you and glaring at you once she notices you staring at her, shocked. Her paranoia is justified after having just nearly evaded being raped by these Spartans, so you don't hold it against her and instead put your hands up while moving away a little as you give a short explanation to the fuming naiad, explaining that you heard the commotion and came to help her. Daphne continues her defensive stance for a bit before relaxing, having decided you're trustworthy enough for now and sighs shakily. 'Thanks, I guess I-I'm Daphne. Uh, well, you probably already know that since you've been listening. Sorry, I'm still a bit on edge,' the sexy water spirit shakily says. However, you could've guessed she's on edge given that she still has her foot pressed firmly on the leader Spartan's head, ready to deliver another round of kicks should he start to stir. You ask the woman if she'd like any help or an escort to where she's going, which she seems appreciative of but turns down. 'Thanks again. You seem like a swell person, but I'd rather just run to my dorm alone. If you want to talk again, maybe we can meet in the pool area sometime? It's east of the campus gym. Can't miss it.' Problem solved, and with Daphne's assurance that she'll be safe, you go your separate ways and await your next meeting.";
			now Resolution of Spartan Intimidation is 1;
			now HP of Daphne is 1;
			move Daphne to Campus Pool;
			change west exit of Campus Gym to Campus Pool;
			change east exit of Campus Pool to Campus Gym;
		-- "No. It will undoubtedly be dangerous to get involved.":
			LineBreak;
			say "     Some might consider it immoral of you to sit and watch these three men defile a woman, but it's not that big a deal. It's a commonplace for the apocalypse, and it seems like she hurt their friend, so why not just enjoy the show that is sure to come? Trying to justify your perversions, you watch the battle and wait for Daphne to fall, which doesn't take too long. Falling to the ground, the naiad, even while beaten back and blue, glares defiantly at her attackers, who pay her anger no heed as they go to strip her. A bit of a tomboy in style, the woman's choice of clothing didn't reveal a lot of her body at all. Overall it was quite sporty, but nonetheless, you could tell she would be something to behold when stripped. Your guesses are once again proven correct as the first thing they go for is Daphne's shirt-ripping it off brutishly revealing her C-cup breasts, which the Spartans cheer at the sight of. The one on her right, a short white swordsman, is even so bold he reaches out to fondle them provoking Daphne into yelling obscenities at him. Still, it's nothing a quick slap doesn't shut up. Next to go are her pants. A brief threat from the head Spartan ensures she doesn't struggle, and so they go off without a hitch uncovering yet more of her perfectly sculpted body, her supple thighs, and the main prize, her pretty pink pussy all open to be admired. While the warriors strip Daphne and Daphne falls into misery, you're masturbating, stoking your rapidly hardening cock to the forced strip show.";
			say "     'Basil, Belen, you take the whore's mouth. Her pussy is mine. Maybe when I've finished, you can have a go at her.' The spartan in the middle turns and addresses his two undermen, the swordsman to the right, you know now as Basil and the tall black spearmen to the left, you know now as Belen who both immediately agree to his demands. 'Yes, sir Cyril!' they enthusiastically respond while stripping themselves. You can't help but think it's only right for their commander to take Daphne's cunt first, especially when the armor starts to come off. Cyril would be the perfect spartan were it not for his canine features. Muscled, tall, broad, with a long, slightly curled tail, short floppy ears, and fluffy white fur with black splotches across it. Notably, the sides of his face are black but not his snout or the middle of his face, his ears a tipped black, and two splashes of black fur on his inner thigh spread across his supple ass and taint to create a cute, almost heart-shaped mark contrasting with the Spartan's supreme masculinity. You can't stop yourself from ogling every inch of his body, from his bulging pectorals to his perfectly sculpted ass and the crown jewel of this hulking stud, his long thick, knotted dog cock, and heavy balls. You almost feel a little pity for Daphne, knowing it will not be easy for her to take something that big; however, your arousal from admiring the head warrior's body far outweighs your conscience. You take a moment to admire Cyril's goons as well. They're certainly not hard on the eyes either, well muscled and packing quite a respectable amount of meat but they both pale in comparison to their boss.";
			WaitLineBreak;
			say "     'On your hands and knees, harlot, the proper position for someone of your sex and class.' Cyril growls, evidently enjoying his power over Daphne as he tugs her into doggy-style position while yanking on the beaten lady's hair, forcing her to cry out in pain and look up at Basil and Belen stroking themselves. 'Open your mouth, and if you dare to bite my men, you'll be losing your teeth, got it,' Cyril says smugly as he lines himself up with Daphne's slit and, with one hard thrust, sinks himself balls deep inside his unwilling partner. The initial penetration is enough to break both of their masks, and Cyril lets out a long moan grinding deep up until the knot into the water spirit's depths, savoring her tightly clenching cunny, while Daphne's reaction is the exact opposite; her bravery and strength fail her as she sobs and lets out an anguished wail, unfortunately, leaving her mouth open for her two other attackers with Basil being the first to claim her mouth gripping her head tightly and rolling his hips to plunder her throat mercilessly face-fucking the helpless woman. Cyril and his men have a distinct style to their fucking Cyril is much slower and more methodical, slowly withdrawing until nothing but the head of his manhood lies inside Daphne before spearing himself back into her pussy with a firm thrust, his knot we'll slapping against her pussy. His men, however, are more frenzied, pistoning rapidly into the weak maiden's mouth, their balls slapping against her chin and making the attire affair rather messy, and Daphne slobbers around their cocks with her drool dribbling down her face and down Basil and Belen's sacks not that the two men mind as they take turns plundering the young woman's throat.";
			WaitLineBreak;
			say "     'Fuck you're wet. Are you enjoying this, you slut? You like my dick ruining your tight little pussy' Cyril taunts Daphne while keeping up his harsh pounding with each slap of his hips, forcing the weeping water spirit to take whoever has current claim over her throat even deeper and on closer inspection, it's clear the cruel male's words may not be baseless even from where you stand beating your dick you can see Daphne's fem-cum dripping down Cyril's nuts and faintly hear a wet squish with his every thrust. Undeniable proof of her arousal. 'I'm gonna cum soon bitch if my seed takes I'll be back to claim my kid he belongs to Sparta!' Cyril shouts, jackhammering into his victim and at last pushing his frightfully large knot in as his lackeys start to climax, one forcing Daphne to swallow his seed. At the same time, the other paints her face with his their commander keeps his promise soon after letting out a guttural groan as he stabs deep into Daphne, pressing his cockhead right against her womb to ensure a higher chance at conception. While all this is happening, you're stroking yourself feverishly, bucking desperately into your hands as you, Imagine yourself ravishing Daphne fantasizing about the way her soft lips might feel wrapped around your cock-tip or the way her pussy wound squeeze around you, the only thing you can hope for is that maybe the Spartans will leave their prey behind so you might take a bite out of her yourself. So you quickly reach orgasm alongside the warriors, spraying your hand in cum. For a moment, it's all peaceful. You and the warriors take a moment to enjoy the afterglow with Daphne lying quietly on the ground; spirit crushed, Cyril quickly breaks that peace.";
			WaitLineBreak;
			say "     'Alright, now we switch places,' the victorious fighter says unceremoniously and uncomfortably popping his knot out and withdrawing from Daphne then moving to her mouth with Basil and Belen eagerly swapping to her pussy ready to share that too. 'I want my dick spotless. Do you hear me trollop,' Cyril says, shoving himself back into Daphne and forcing her to clean him. Just as before, he's slower than his men. Rather than just face-fucking Daphne and moving on, Cyril forces her to give him a proper blowjob chiding the naiad whenever her technique gets sloppy or feels lazy and pulling her hair as punishment for the slightest hint of teeth felt, occasionally Cyril also moves Daphne to his balls or knot to ensure every part of him is paid the proper attention and respect it deserves eventually working himself up into another orgasm making the spirit drink some of his spunk while shooting the rest load across her face with his men following close after the both of them making sure to cum outside Daphne to ensure less competition for their boss's seed. 'Basil, Belen, pick her up. I think we've found our newest concubine. Besides, the last thing I need is Pericles on my ass if this heretic decides to complain. Now let's get going!' Cyril commands his men, who certainly aren't complaining about free access to Daphne whenever they want, no matter the ethics. So speedily, the spirit is spirited away by the Spartan trio, with you quickly fleeing now that there's no show to watch and due to the fact the men would have to pass by you now that they're going.";
			now Resolution of Spartan Intimidation is 2;
			CreatureSexAftermath "Daphne" receives "OralCock" from "Spartan Warrior";
			CreatureSexAftermath "Daphne" receives "PussyFuck" from "Spartan Warrior";
		-- "Leave since you're not interested in any of this at all.":
			LineBreak;
			say "     You're enough of a bastard to leave an innocent woman to her assailants, but you're not horrible enough to watch her be raped either. You're a coward, not a monster! Turning away from the injustice you run away and try your best to forget you saw anything at all.";
			now Resolution of Spartan Intimidation is 3;
			CreatureSexAftermath "Daphne" receives "OralCock" from "Spartan Warrior";
			CreatureSexAftermath "Daphne" receives "PussyFuck" from "Spartan Warrior";
	now Spartan Intimidation is resolved;


Section 2  -  Campus Pool Area

Table of GameRoomIDs (continued)
Object	Name
Campus Pool	"Campus Pool"

Campus Pool is a room.
Description of Campus Pool is "[CampusPoolDesc]";

to say CampusPoolDesc:
	say "     The Campus pool is truly pristine and marvellous. Its waters are a beautiful shining blue, and its tile floors are spotless. Despite the apocalypse, it seems the staff and clientele of the pool have taken excellent care of the area.";


Section 3 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Daphne	"Daphne"

Daphne is a woman.
ScaleValue of Daphne is 3. [X sized]
Body Weight of Daphne is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Daphne is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Daphne is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Daphne is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Daphne is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Daphne is 5. [length in inches]
Breast Size of Daphne is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Daphne is 2. [count of nipples]
Asshole Depth of Daphne is 12. [inches deep for anal fucking]
Asshole Tightness of Daphne is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Daphne is 0. [number of cocks]
Cock Girth of Daphne is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Daphne is 0. [Length in Inches]
Ball Count of Daphne is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Daphne is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Daphne is 1. [number of cunts]
Cunt Depth of Daphne is 12. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Daphne is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Daphne is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Daphne is false.
PlayerRomanced of Daphne is false.
PlayerFriended of Daphne is false.
PlayerControlled of Daphne is false.
PlayerFucked of Daphne is false.
OralVirgin of Daphne is false.
Virgin of Daphne is false.
AnalVirgin of Daphne is true.
PenileVirgin of Daphne is true.
SexuallyExperienced of Daphne is true.
TwistedCapacity of Daphne is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Daphne is false. [steriles can't knock people up]
MainInfection of Daphne is "Naiad".
Description of Daphne is "[DaphneDesc]".
Conversation of Daphne is { "Hmph" }.
The scent of Daphne is "Daphne smells like chlorinated water and flowers, an odd but certainly not unpleasant combination of scents."

to say DaphneDesc:
	project Figure of Daphne_clothed_icon;
	say "     Daphne is an absolutely stunning Naiad woman currently [one of]sitting on the edge of the pool.[or]swimming laps inside the pool.[or]practicing her diving inside the pool.[at random] She's a blonde bombshell with bright blue eyes, a perfect hourglass figure, and muscles that show the swimmer's dedication to her sport. Currently, the water spirit is wearing a one-piece swimsuit cutting off at her upper arm and thigh while tightly framing Daphne's body, leaving nothing to the imagination. The red and white sides and short sleeves of her outfit accentuate her curves and nicely complement her mesmerizing eyes while also pleasantly contrasting the rest of the piece's blue coloring. There's also a zipper at the chest of the one-piece area for more easy removal. Noticing your staring, Daphne calls out to you. 'Are ya just gonna stare all day, or are you gonna come over?!' she questions playfully.";


Section 4 - Talking

instead of conversing the Daphne:
	project Figure of Daphne_clothed_icon;
	if HP of Daphne is 1:
		say "     'Hey, nice to meet you again! Sorry for bailing on you so quickly. I was still kinda freaked out from the whole, y'know, nearly getting gangbanged by a trio of Spartans thing!' Daphne tries to laugh it off, but it's clear from her tone that the incident still has her shaken up. Even her laugh is rather shaky. Your worry must be obvious to the naiad as she quickly assumes a more defensive tone. 'Hey, stop looking at me like that. Thanks for the help and all, but I'm fine, really,' she states firmly. You believe otherwise, but anything you say would probably annoy Daphne, so it's best to keep quiet.";
		now HP of Daphne is 2;
	else if Daphne & Alyssa Tentacle Fun is resolved and HP of Daphne is 2:
		say "     'Well, look what the cat dragged in. Come back to spy on me some more? Shoot your cum on the wall, then run away.' Daphne says loudly. Having just exited the pool, she's wet and wearing her swimsuit. The naiad crosses her arms, looking at you expectantly, and you're ashamed to say that before you can even say anything in your defense, your eyes dart down to stare at Daphne's breast, which she immediately notices. 'Oh, you like looking at those? I bet you got a nice peep at them a while ago, perv!' Daphne yells and glares out at you. Having completely botched your meeting, you're left stammering excuses blushing, and stuttering apologies, which Daphne quickly shuts down. 'Save it, voyeur. I don't wanna hear anything from you!' She shouts, and you're left silent, staring at the ground guiltily as she continues to lambaste you. 'Good. Now ordinarily, I'd beat bastard like you black and blue for something like that. Ordinarily, that is,' Daphne says, her voice softening, and you allow yourself a bit of hope and look up at her and find that instead of glaring, you see her grinning slightly. 'Loosen up. I'm not going to hit you. We're cool, okay? Normally I'd be pissed if someone spied on me like that, but you're not a bad person, I think. You helped me with those Spartans before, and anybody with the balls to do that for a stranger is good in my book.'";
		say "     Sighing in relief, you meet Daphne's eyes again and let her resume her speech, 'Don't get me wrong, it was shitty of you to spy on me, but I get it the nanites mess with your head. I mean, that's why I needed Alyssa's help after the Spartan incident. I was in my head a lot and couldn't fuck anybody. It was driving me crazy! So I went to her for help.' the water spirit explains calmly and continues with a lusty smile. 'Besides wouldn't be the first time somebody's watched me, and from the amount you left on the wall, you certainly loved it! I'm flattered. Just ask next time you want to see me in action or maybe get some action,' Daphne ends, whispering flirtatiously and winning at you before going back to the pool to sharpen her skills some more.";
		now HP of Daphne is 3;
	else if Spartan Intervention is resolved and HP of Daphne is 3:
		say "     'Thanks for coming by to talk with me about Cyril and his soldiers as well as helping me deal with them in the first place, especially when you had no skin in the game.' Daphne starts off bowing her head slightly in gratitude before meeting your eyes again somewhat guiltily. 'You've already helped out a bunch rescuing me, and now, Alyssa, when we were cornered. Who knows where either of us would be or what would've happened to us, but I need your help again, hopefully for the last time if this all goes smoothly,' Daphne says glancing worriedly at you anticipating rejection, an expectation that you quickly defy sincerely telling the naiad that you're ready for whatever is needed and ask what she has planned. Why would you have saved her and Alyssa just to turn back now after all? 'That's a relief. I don't think anything will happen to hurt you, but you've already put yourself at a lot of risk. I just needed to know if you were ready and all.' the swimmer sighs and smiles, her previous solemnity fading and prompting you to ask what she has planned next.";
		say "     'Well, we both know that Cyril and his men ganging up on Alyssa isn't a coincidence. They have it out for me. They've always had it out for me because I wouldn't submit to their authority. It's worse because I'm a woman, and it's only gotten worse now that we've beaten them. As I said before, you've been a great help, but you can't be here to protect me all the time. I wouldn't want you to either, and even if you could and I let you, it doesn't matter now that they're targeting my team. I won't stand for it. I consider myself pretty tough, but I can't handle a group of Spartans, and if I can't, then most of my girls definitely can't. I won't let them get dragged into this.' Daphne says determinedly, scowling at the thought of Cyril muscling in on her team. You hum in response and say that from her previous work, it sounds like she's already got something planned, and you're surprised to see the previous anger and drive fizzle out a bit as the water spirit blushes.";
		WaitLineBreak;
		say "     'Alyssa actually figured things out. We can't beat Cyril using force. He'll just come back even angrier than before, and despite his usual appearance Cyril's well-connected, so Alyssa figured out an alternative approach. It turns out she knows a Helot of that brute, someone she befriended and told me all about how she befriended him in vivid detail, who has potential blackmail on Cyril,' Daphne explains, blushing a bit harder. Everything she told you checks out, but you can't help but think and voice your worry about whether or not you can truly trust this helot. 'That's exactly why I need your help. Alyssa wanted to meet up with him alone, but we can't be sure it's completely safe, so I want your help defending her in case it's a trap or something. Is that alright?.' Daphne asks, and you quickly agree. '[bold type]Meet Alyssa at night at the campus entrance[roman type] to go negotiate with the helot. It should be an easy enough spot for the both of you to remember.' The athlete rolls her eyes slightly. 'Alyssa still gets lost wandering around campus. I swear, after all the time she's spent here, you'd think she'd remember the layout by now! Anyway, that's it. Anything else you wanna talk about?'";
		now HP of Daphne is 4;
		now Helot Negotiation is active;
	else:
		say "[DaphneTalkMenu]";

to say DaphneTalkMenu:
	say "     What do you wish to talk about with the stunning swimmer?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "The Spartans";
	now sortorder entry is 1;
	now description entry is "Ask how she feels about the warriors";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Daphne's Past";
	now sortorder entry is 2;
	now description entry is "Ask her about herself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sex With Daphne";
	now sortorder entry is 4;
	now description entry is "Ask Daphne how she wants things to go";
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
				if (nam is "The Spartans"):
					say "[DaphneTalk1]";
				if (nam is "Daphne's Past"):
					say "[DaphneTalk2]";
				if (nam is "Sex With Daphne"):
					say "[DaphneTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Daphne looks about to say something before shaking her head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DaphneTalk1:
	say "     You decide to ask Daphne how she feels about the Spartans patrolling the campus despite knowing that it's likely nothing positive, and right away you can see the naiad getting worked up. 'Ugh, where do I begin with our campus's supposedly loyal protectors? They're a bunch of fuckin['] sexist dirtbags!' she exclaims angrily. 'These pigs all strut around like they own the place and think they're doing us all such a favor and supposedly protecting this place when most of the time they're the ones causing all the damn trouble! In my opinion, they're no better than the ferals outside the campus! I mean, come on, they're a bunch of delusional warriors stuck in the classical era, idiots who struggle with how a phone works that run around punishing students by turning them into slaves! Why do we tolerate them here at all? This is supposed to be a safe place for sane students, not a bunch of insane militaristic men!' Daphne rants for quite some time, expressing an awe-inspiring disdain for the Spartans as she continues to belittle them for, you'd guess, at least around 5 minutes before she finally stops red in the face and painting with rage. Taking a moment to compose herself, she begins again.";
	say "     There's only one of them I can stand, and he's also the only sane Spartan I've met so far. Pericles, he's a stand-up guy. I wish he took better control of his men, but I can't hold it against him too hard, can't fault him for struggling to deal with hundreds of ancient Greek warriors when Pericles was just a normal human student, just like the rest of us before this whole apocalypse kicked off. [if PericlesRelationship < 6]Poor guy actually seems quite stressed[else]I'm pretty sure he has a boyfriend now. Good for him. He seemed rather stressed before. He looks happier now[end if].";

to say DaphneTalk2:
	say "     'So you wanna know a little bit more about me, okay? Then where do I begin' Daphne contemplates aloud, resting her chin on her hand. 'Well, I suppose the very beginning is a good place. I was born and raised in this city my entire life. As you can imagine watching your home city fall apart into a broken down, debauched hell hole isn't a lot of fun, but at least some parts of it are still safe' The naiad sighs sadly, and you're just about to comfort her when she quickly moves on 'I've always been a bit of a tomboy growing up. I never wanted to wear my dresses. I shunned my dolls. Instead, I always played outside and got into fights with the boys. It drove my parents crazy. Real conservative types always wanted me to be more of a 'proper' woman' Daphne chuckles a bit, her childhood memories cheering her up after thinking about her current situation. 'They never forced anything onto me though they loved me. I know that, even if they disapproved of my lifestyle. The only person in my family who encouraged my interest was an aunt of mine. I remember going to her house, and she lived by the beach. She's the one who taught me how to swim and ignited my passion. ' Daphne smiles contentedly, completely relaxed as she reminisces.";
	say "     'You should've seen me before this whole infection thing. I was so strong before! I had my hair cut short. I was big, muscular, and butch as hell!' Daphne yells proudly, a look of annoyance crossing her face soon after. 'This disease ruined it all for me. I lost my body; even the muscles I have now, I have to work constantly to maintain. Just like that, years of hard work and championship swimming wiped away instantly. I try to cut my hair, and it just grows back instantly. It fuckin sucks! I used to be so strong, and now I feel like a brittle doll, and everyone is always looking at me like I'm just something for them to get their rocks off to!' Daphne rants for a bit before seeming to deflate, sighing resignedly. 'At least I've still got swimming. Hell, even with this weaker body, I might be better than I was before. It's hard to explain, but everything comes so naturally now. I was talented before, but now it feels ingrained, like the waters are a part of me. Does that make sense?' Daphne wonders to herself, not looking to you for a response.";

to say DaphneTalk3:
	say "     'Oh, how bold, no hi, no hellos, just straight into the action, huh?' Daphne asks, faking surprise and shock. Maybe you might've been more nervous about offending the athlete with your question before, but you know she's a much more upfront person than how she's acting right now. 'If there's one thing you have to know about me, it's that I like to have a certain amount of control during sex. I'm not a dominatrix or anything like that, but I want things moving at my pace, starting when I want it at where I want it,' the naiad proudly proclaims. 'I guess I'm a bit of a voyeur or an exhibitionist, like when people can see me, and I like watching people. Having fun with the swim team got me more than used to the lack of privacy. Maybe you can join us in one of our locker room romps one day.' Daphne continues on and teasingly gropes your butt as she mentions the possibility of group fun. 'Besides that, I don't think I'm anything special in the sheets. No crazy kinks here, not into whipping or knives or anything like that.'";


Section 5 - Sex

instead of fucking Daphne:
	if (lastfuck of Daphne - turns < 6): [she got fucked in the last 18 hours = 6 turns]
		project Figure of Daphne_clothed_icon;
		say "     'Slow down there, tiger. Not all of us have the time or the energy to fuck around all day. You're just going to have to find somebody else for now,' Daphne says sternly";
	else if Daphne & Alyssa Tentacle Fun is not resolved:
		project Figure of Daphne_clothed_icon;
		say "     'Look, you seem like a chill guy, but I'm still getting over the incident with the Spartans,' Daphne says, shivering, disgust evident on her face.";
	else if Daphne & Alyssa Tentacle Fun is resolved and HP of Daphne is 2:
		project Figure of Daphne_clothed_icon;
		say "     'Well, look what the cat dragged in. Come back to spy on me some more? Shoot your cum on the wall, then run away.' Daphne says loudly. Having just exited the pool, she's wet and wearing her swimsuit. The naiad crosses her arms, looking at you expectantly, and you're ashamed to say that before you can even say anything in your defense, your eyes dart down to stare at Daphne's breast, which she immediately notices. 'Oh, you like looking at those? I bet you got a nice peep at them a while ago, perv!' Daphne yells and glares out at you. Having completely botched your meeting, you left stammering excuses blushing, and stuttering apologies, which Daphne quickly shuts down. 'Save it, voyeur. I don't wanna hear anything from you!' She shouts, and you're left silent, staring at the ground guiltily as she continues to lambaste you. 'Good. Now ordinarily, I'd beat bastard like you black and blue for something like that. Ordinarily, that is,' Daphne says, her voice softening, and you allow yourself a bit of hope and look up at her and find that instead of glare, you see her grinning slightly. 'Loosen up. I'm not going to hit you. We're cool, okay? Normally I'd be pissed if someone spied on me like that, but you're not a bad person, I think. You helped me with those Spartans before, and anybody with the balls to do that for a stranger is good in my book.'";
		say "     Sighing in relief, you meet Daphne's eyes again and let her resume her speech, 'Don't get me wrong, it was shitty of you to spy on me, but I get it the nanites mess with your head. I mean, that's why I needed Alyssa's help after the Spartan incident. I was in my head a lot and couldn't fuck anybody. It was driving me crazy! So I went to her for help.' the water spirit explains calmly and continues with a lusty smile. 'Besides wouldn't be the first time somebody's watched me, and from the amount you left on the wall, you certainly loved it! I'm flattered. Just ask next time you want to see me in action or maybe get some action,' Daphne ends, whispering flirtatiously and winking at you before going back to the pool to sharpen her skills some more.";
		now HP of Daphne is 3;
	else if Player is not Male:
		say "     Sorry. No scenes for those without a penis currently.";
	else: [ready for sex]
		say "[DaphneSexMenu]";

to say DaphneSexMenu:
	project Figure of Daphne_naked_icon;
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is Male:
		choose a blank row in table of fucking options;
		now title entry is "Blowjob";
		now sortorder entry is 1;
		now description entry is "Ask the beautiful Naiad to wrap her lips around your dick";
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
				if (nam is "Blowjob"):
					say "[DaphneSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the naiad, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DaphneSex1:
	say "     Before you can even make your request to Daphne, she's seen through you. 'Spit it out already. You've been eye-fucking me for a minute now,' she says, flipping her hair behind her back. Well, there's no point in subtlety now, so you ask the athlete candidly if she'd like to give you a blowjob. Daphne pretends to think briefly, crossing her arms and pushing her boobs to tempt you. 'Okay, we can have some fun on one condition. We have to do it here in the pool room. Okay?' she agrees, mischievously smiling and waiting to see if you'll accept her conditions which doesn't take long. Whatever hang-ups you may have over fooling around in public with the water spirit are drowned out by your libido, and with Daphne actively showing off her body and all you stand to gain, it's clear to you that the benefit far outweighs the negatives. When Daphne starts stripping, you feel more than assured that you've made the correct choice as she unzips her swimsuit and pulls it down her revealing her flawless body, her boobs in particular, drawing most of your attention as always. Every part of the nymph feels designed to tempt you. The stories certainly weren't exaggerating when they described the Naiads, as you can see now.";
	say "     For a moment, all you can do is take in the sight of her almost painfully erect and trembling with anticipation yet too stunned by Daphne's body to take any action to sate it. You're a little embarrassed when the swimmer has to guide you into touching her pressing one of your hands to her boob and letting you grope till you're satisfied. It looks like Daphne will have to help you continue again, though, because it seems as if you'll never be satisfied, not that she's complaining you're squishing and fondling of her sensitive chest is quite pleasurable for her as well, but nowhere near as pleasurable as it is for you. Daphne's boobies feel heavenly to you, so soft and squishy, yielding perfectly to your touch, and with the sounds of the naiad's pleasure reverberating into your head, you'd feel content to continue for the rest of your day. Daphne's got other ideas in mind, however, so she pulls your hands away from her bosom and sets them on her hips right above her ass.";
	WaitLineBreak;
	say "     At first, you were extremely disappointed to have your fun redirected, but as your hands snake down to squeeze at Daphne's fun, that quickly fades away. Everything seems to fade away as you continue to play with the swimmer's butt. Your worries, fears, and obligations melted away the blissful feeling of Daphne's bubbly rump between your fingers. Each cheek fits perfectly in your hands, and your mind is consumed by fantasies of everything you could do with this wonderful ass. Dreams that make your spurt pre against Daphne's stomach as you wonder if it's too late to ask for something more from the beautiful woman. 'Alright, no more touching let's get this show on the road. Sit on the edge of the pool,' Daphne directs you, and you follow her as if in a trance led by your dick. Dipping into the pool clears your mind, the cold water snapping you out of the haze Daphne's body held you in. You forget yourself all over again, though, when the athlete enters the pool and swims right between her legs. Everything seems alright in the world while you stare into her stunning blue eyes.";
	say "     Daphne gently grips your cock and starts to stroke you slowly. It shouldn't affect you as much, but it sends to shiver throughout your body, and you can already feel your balls churning with the need cum. Did her body get you worked up that much? You whine needily, begging the water spirit to answer your prayers and sate your lusts, but it seems you'll have to suffer a little longer as the Daphne keeps up her painfully slow pace but at least sees it fit us more than her hand as she leans down to slowly kiss and lick your balls. Every wet smooch along your sack makes it feel heavier and heavier with pent-up come, and every drag of her tongue along your tortured orbs has you squirming where you sit on the edge of the pool. Stifling a laugh at your desperation, Daphne starts to suck only your nuts a little, noisily slurping and popping your testicles in and out of her mouth before she finally moves on, satisfied with her attention to your balls.";
	WaitLineBreak;
	say "     Slowly licking up from the base of your shaft to the tip, Daphne plants a lot of little kisses on your cock-tip. You stifle a frustrated groan thinking you're in for the same slow teasing as before, only to instead let out a loud, surprised, and euphoric moan as the fickle nymph engulfs your shaft all in one go taking you right down to the balls her nose pressed right against your pubes. If it wasn't already clear from the fact that Daphne throated your meat all in one go, she's experienced at sucking dick, and It shows as she bobs her head quickly up and down your shaft, her tongue twirling around your head and tracing your cum vein also occasionally tickling against your balls when the naiad takes in all of you. You can't help but thrash a little from the pleasure kicking your feet in the water and splashing Daphne, who seems to enjoy the moisture. Her throat feels amazing, so right, and each time she swallows down around you, you can feel it clench around your dick, milking you for more pre to gulp, not to mention the spirit's dexterous tongue. You know you won't be lasting long. As much as you try to deny the inevitable, you can feel your climax rising, and when the dam finally breaks in a spurt of excitement, you hold Daphne's head down, forcing her to drink all of your cum.";
	say "     When the post-nut clarity hits and when Daphne hits your leg to tell you she needs air, you immediately let go of the young woman panting slightly and apologize for your forcefulness but are stunned when, instead of opening her mouth to scold you, the swimmer instead shows off a puddle of your cum sitting on her tongue and then swallows, opening up again to show you her actions making you spew one last string of jizz on her body. 'Heh, knew you'd get a kick out of that perv,' Daphne says playfully and leans in to give you a peck on the lips. 'I'm gonna go freshen up now. Don't want my breath smelling like sperm,' with those last words, Daphne leaves you to recover and goes to clean herself up.";
	NPCSexAftermath Daphne receives "OralCock" from Player;


Section 6 - Events

Table of GameEventIDs (continued)
Object	Name
Daphne & Alyssa Tentacle Fun	"Daphne & Alyssa Tentacle Fun"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Daphne & Alyssa Tentacle Fun"	Daphne & Alyssa Tentacle Fun	"[EventConditions_DaphneandAlyssaTentacleFun]"	Campus Pool	2500	2	100

to say EventConditions_DaphneandAlyssaTentacleFun:
	if HP of Daphne > 1 and Daphne & Alyssa Tentacle Fun is not resolved: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Daphne & Alyssa Tentacle Fun is a situation.
ResolveFunction of Daphne & Alyssa Tentacle Fun is "[ResolveEvent Daphne & Alyssa Tentacle Fun]".
Prereq1 of Daphne & Alyssa Tentacle Fun is Spartan Intimidation.
Prereq1Resolution of Daphne & Alyssa Tentacle Fun is { 1 }.
The level of Daphne & Alyssa Tentacle Fun is 0.
The sarea of Daphne & Alyssa Tentacle Fun is "Nowhere".

to say ResolveEvent Daphne & Alyssa Tentacle Fun:
	project Figure of Daphne_naked_icon;
	say "     Entering the swimming area, Daphne climbing out of the pool sopping wet immediately draws your eyes to her, and you can only describe yourself as entranced by her beauty. Looking all over the naiad's scantily-clad body, her swimsuit perfectly accentuating her figure and letting you ogle to your heart's content, scanning all along Daphne's form from her shapely thighs, bubbly ass, and her bountiful breasts, not all hidden by her attire. So hypnotized by the nymph's beauty, you don't even notice somebody else is close by her, too busy instead admiring every inch of Daphne's truly godly body, lewd fantasies filling your mind as you imagine groping touching, and fucking her in every way imaginable worshipping her divine form. It's only when the second woman in the room pulls Daphne towards her and lays her hands on the water spirit's hips that you notice her. She is an extremely skimpily dressed squid girl with purple skin and purple tentacle-like hair, and tentacles sprouting all along her back that twist and curls all along her body. Her bikini does nothing to hide her body, letting you feast your eyes as you please, taking in her jiggly ass and thighs and giant tits bouncing with the lady's every step. What holds your attention most, however, is her crotch and the thin, almost useless piece of cloth that conceals her pussy from the open air.";
	say "     You're wondering who this woman is to Daphne and if you should be concerned. Given that your first meeting with her was defending the swimmer from being assaulted by Spartans, you're understandably worried for her. You are instead left shocked as Daphne makes the first move pulling the unknown squid girl into a passionate kiss and leaving you very aroused, rubbing and groping at your crotch with pent-up arousal building up since you'd laid eyes on the two gorgeous ladies. The purple-skinned lass responds in tandem, hugging Daphne tight and using her tentacles to tug her close and push her into the kiss. 'Fine, Alyssa, you wanna fuck? Let's fuck then!' Daphne growls out at the cephalopod infectee, speedily unzipping her swimsuit and letting free her perfectly perky tits before peeling the rest of her outfit off and prompting the lady you now know as Alyssa to give a hearty laugh as she also strips, ripping off her skimpy clothing and standing naked alongside Daphne. At the same time, you've progressed to outright masturbating while you wait for the sex times to begin. It's quite commendable you didn't start earlier, given the nanite's manipulation of your libido and lust. Ordinarily, you might be curious as to what might've started this romp or held concerns about spying on two people, but right now, you just want to stroke yourself and hope that you're not caught or seen by anyone, given that you are relatively out in the open.";
	WaitLineBreak;
	say "     Alyssa's tentacles grow more adventurous. The slick appendages start squeezing and squishing Daphne's bosom, coaxing cute moans from the flustered swimmer as another pair goes to play with her nipples, flicking against them or pressing their suckers onto them to provide a strange, but not certainly not unenjoyable, sensation to the young diver, while Alyssa decides to start making out with her again deciding to leave all the work into her many dexterous tentacles which enthusiastically explore every inch of Daphne's body. One particularly ambitious limb is so spirited it gives her a little spank making the naiad gasp as her butt jiggles quite enticingly. Eventually, they reach their main target, the water spirit's dribbling cunny, and start slowly rubbing at her clit. At the same time, another limb teases her nether lips running along Daphne's vulva and making her whine with need showing off quite a different side of the headstrong athlete as they tantalize her with the pleasures to come. Alyssa seems quite amused at her partner's desperation. She stops her make-out session and begins to leave a long trail of kisses along Daphne's neck and collarbone towards her boobs, where she joins in her tentacle's loving attentions and begins to lick and suck at the gorgeous student's breast forcing out restrained groans of lust from the prideful tomboy.";
	say "     Alyssa lingers on Daphne's breath briefly before she moves down to the main event. The squid girl quickly moves down until faced with the true object of her passions, Daphne's needy cunny dribbling with want and eager for any affection the other woman is ready to give it. Alyssa mischievously grins up at the red face water spirit. She drags a long wet lick right up to her clit, breaking any restraint the pair has as Daphne lets out a long wanton moan, abandoning her stubborn attitude in favor of enjoying her attention to the fullest, too wound up by the tentacles prodding to resist any more. Alyssa abandons her slow seductive pace in favor of devouring the sweet honeypot in front of her, loudly slurping and licking the water nymph's sopping snatch, their lewd noises loudly echoing through the empty pool area. While eating out Daphne, Alyssa doesn't neglect her body, and one of her tentacles thrusts into her tightly gripping cunt.";
	WaitLineBreak;
	say "     Of course, while all this is happening, you're still watching, panting with desire as you jerk off longingly to the sights and sounds in front of you. It feels almost impossible to tear your eyes away and anything that compels you to, whether that be the guilt of spying on your friend or the respectable part of your mind that berates you for such reckless and silly behavior like masturbating in the open, but right now you don't care what happens as long as you can continue watching Daphne admiring that perfect body. It's a miracle you haven't cum right now. You came so close when you saw the tentacles slap her ass. It was glorious the way it jiggled. That's the only way you can describe it. You might remember that for the rest of your life, fantasize about it for all time. Her moans are like music to your ears and like having an aphrodisiac pumped right into your body so beautiful and yearning you barely have the restraint not to rush in and fuck Daphne right now, capture her immaculate form under you and make her scream for you. Not to mention Alyssa and all the body on display from her. The busty student's got curves in all the right places, and right now, with her kneeling toward Daphne, you have a perfect view of her giant purple bubble butt and the tentacle fucking her slobbering muff. When the two women climax loudly, shouting their pleasure, you cum right alongside them, painting the walls beside you white with sticky strings of cum. Your orgasm seems to go on far longer than normal, and by the end of it, you're weak in the knees, almost fallen to the ground from the overwhelming ecstasy, so much so that you almost don't catch the lady's conversation.";
	say "     'So, feeling better, Daph?' Alyssa asks the panting swimmer, a mess of vaginal juices still clinging to her face, mischievously grinning at the women beside her. 'Yeah, fine I guess I do feel better now,' Daphne grumbles back, still blushing slightly. 'So want do you say?' the squid girl asks, grinning smugly, purple eyes gleaming with delight. 'Okay, thank you for helping me have sex again! Now buzz off! I need to get dressed before someone sees us!' Daphne loudly responds, her tone playfully sarcastic as she swats Alyssa on the rump and rises to her feet. Before someone sees her, you think, too late for that a fact that Daphne soon notices, turning around and meeting your eyes. For a moment, you both stand there, shocked and embarrassed. 'Aw damn, my clothes got all wet. I threw [']em in the pool,' Alyssa's complaining snaps you both out of your starting contest. While the athlete is briefly distracted, you utilize the moment to escape running off to Athletic Street, ashamed and afraid of how your peeping might affect your meeting with the beautiful naiad.";
	now Daphne & Alyssa Tentacle Fun is resolved;


Table of GameEventIDs (continued)
Object	Name
Spartan Intervention	"Spartan Intervention"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Spartan Intervention"	Spartan Intervention	"[EventConditions_SpartanIntervention]"	Campus Pool	2500	2	100

to say EventConditions_SpartanIntervention:
	if HP of Daphne > 2 and Spartan Intervention is not resolved: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Spartan Intervention is a situation.
ResolveFunction of Spartan Intervention is "[ResolveEvent Spartan Intervention]".
Prereq1 of Spartan Intervention is Daphne & Alyssa Tentacle Fun.
The level of Spartan Intervention is 0.
The sarea of Spartan Intervention is "Nowhere".

to say ResolveEvent Spartan Intervention:
	project Figure of Daphne_naked_icon;
	say "     Coming into the pool room, you're met with quite an alluring sight. Stripped completely naked is Daphne, her hair still slightly damp, and a bag of clothes right beside her. Just like the last time you saw the swimmer so exposed, you're frozen in place at the entrance and ogling all along her perfectly sculpted form. Still, this time, you find the force of will to drag your eyes away, remembering the scolding your spying previously earned you. You try to escape before you get noticed again but are stopped by a sudden shout, 'Aw, what's wrong? Not enjoying the show this time!' Daphne hollers out to you, making you turn, and to your relief, she's smiling. It looks like the water spirit meant what she said when she forgave you. 'Show's over now anyway. I suppose you can watch me get dressed if you want to, though, heh! I'm heading to the dorms right now. Wanna come?' Daphne offers casually to you, and after thinking for a moment, you quickly accept them. You don't have anywhere to be right now. You definitely want to continue watching her, and it'd be rude not to accompany her after the staring. You continue watching the beautiful nymph, and when she's all dressed, her wet clothes neatly packed away in her bag, you try to hide your disappointment and set off toward Daphne's dorm.";
	say "     It's an enjoyable walk, for the most part. The campus is peaceful and exceptionally clean compared to the rest of the fallen city, and you and Daphne converse pleasantly about how everything goes. You tell her about the library you now inhabit and your adventures in the city, while Daphne tells you about her swim team, its members, and her efforts to recruit more. Specifically, she's looking for more water-attached infected like herself and Alyssa. The athlete mentions a kappa and an otter she thinks might be close to joining. You find yourself spacing out a little as you stroll, passively listening to Daphne and offering little responses and hums when it's your turn to respond, but a pause in the conversation pushes you out of your calm, and you notice the athlete stop moving to stare at a purple tentacle curled around a wall ahead. 'Wait a minute here. I'm pretty sure that's Alyssa. Maybe she'll want to come along with us,' Daphne says, already moving forward and not seeing the harm in another travel companion you don't protest.";
	WaitLineBreak;
	say "     But what you and Daphne spot when you get there is more than just a single squid girl but rather Alyssa surrounded by a trio of Spartans just a couple of feet away from you and instantly noticing you! You immediately know things aren't going to end well, especially with Daphne here, and you're proven right fast. 'Get the fuck away from her, you creep!' Daphne yells and throws her bag of wet clothes at the Spartans, making them all move. It doesn't do much damage at all, but the momentary panic and surprise give Alyssa the perfect opportunity to try to dash away from the surrounding Spartans. 'Fuck!' Curses fly from both sides as Alyssa escapes but not entirely unscathed as the tall spearman that was on her right, closest to you, manages to stab at her calf and cuts deep, spattering blue blood across the concrete. Any further fighting is interrupted by an order from the largest Spartan in the group. 'Basil, Belen, stop. It'll do us no good to pursue them any longer. The interloper is back,' he finishes and glares at you, his resentment and fury boiling beneath the facade of an unbothered commander despite the imposing man's best attempts at concealing his emotions. 'Yes, sir Cyril,' his men respond, clearly disappointed. Up close and personal like this, you can get a better look at their canine commander. From whom you can see uncovered by his armor, he seems to have mostly white fluffy fur with black splotches. Notably, the sides of his face are back while his muzzle and the middle of his face are white, his ears are white and floppy, the tips of them colored black, his hands pure white, and his eyes are a startlingly beautiful dark blue glaringly right at you.";
	say "     'What business do you have interrupting us this time?' Cyril questions you through gritted teeth, 'What were you gonna do to Alyssa?!' Daphne counters back, and Cyril shifts his rage to her. 'This is official Spartan duty, wench. You have no business interfering in this, and neither does your friend, for that matter!' the hulking warrior says venomously, but Daphne refuses to back down. 'Were you going to show Alyssa her place? Under you? Under men, open and ready for breeding! Gang up on her, beat her down, and bang her!' Daphne yells, her hands balled up into fists, and it seems like she and Cyril are about to come to blows. You can see him reaching for his blade and his soldiers pressing closer, and you're tensing up, just about to jump into battle, when he meets your gaze again. Suddenly, he backs off, stepping away from you, Daphne, and Alyssa with a sigh. 'The outsider won't be here to protect you and your friends forever, naiad, and can't look after all of your little swim team. You'll get what is coming to you soon enough. Basil, Belen, let's go.' Just like that, the head warrior walks off, his men following nearby.";
	WaitLineBreak;
	say "     'Alyssa, are you okay? You're bleeding!' Daphne says, immediately turning her attention to her friends now that she no longer has to worry about the Spartans coming down on her. 'Yeah, yeah, I'm fine, Daph. It was actually kinda exciting being surrounded by three hunky guys like that, ha!' Alyssa says, joking and laughing off Daphne's concern. 'Don't joke about that! Ughh,' the water spirit and the squid girl playfully squabble as you watch the earlier tensions melt away as the two friends banter. 'You're hopeless, I swear.' Daphne sighs and looks at you again. 'I'm sorry about this. I wanted a peaceful walk, but those Spartans aren't going to be leaving me alone anytime soon. Meet me again soon; we'll need a plan to deal with this. I'm going to head off and take Alyssa with me,' Daphne says, and you agree with slight hesitance, worried the Spartans might show up again but understanding she'll want some alone time with their friend. 'Thanks for all your help. Bye!' The nymph bids you farewell and darts in for a quick, chaste kiss on the cheek before walking off, dragging Alyssa with her.";
	now Spartan Intervention is resolved;


Table of GameEventIDs (continued)
Object	Name
Helot Negotiation	"Helot Negotiation"

Helot Negotiation is a situation.
Helot Negotiation is not active.
ResolveFunction of Helot Negotiation is "[ResolveEvent Helot Negotiation]".
The level of Helot Negotiation is 10.
Sarea of Helot Negotiation is "Campus".

to say ResolveEvent Helot Negotiation:
	if Player is in College Campus Entrance and daytimer is night:
		project Figure of Daphne_clothed_icon;
		say "     Arriving at the entrance of Tenvale College, you notice Alyssa waiting for you, sitting on the fountain ledge. The purple squid girl looks lovely with the moonlight shining on her voluptuous body; you don't have too much time to admire her before she notices you. 'There you are! I was worried you weren't gonna show up. I just realized we never set a proper date, and I thought I was gonna be waiting here all night! Anyway, we should get going right now. Alexis is kinda skittish. We shouldn't keep him waiting too long,' Alyssa babbles slightly and grabs your hand, pulling you northeast, surprising you with how eager she seems to be to get going. It's a rather peaceful sprint, but remembering the last relatively peaceful walk you had ended with you and Daphne bumping into a trio of Spartans puts you on higher alert, which also makes you think more about that event and the woman you're accompanying. From what you can tell, Alyssa seems completely fine as usual, even in the cold night air; she's scantily dressed and her injury from the Spartan Spearmen Belen has completely faded. Considering what a harrowing experience that must've been, you can't stop yourself from voicing those thoughts to her.";
		say "     'Well, this is just how I've always been. I've always been rather laid back and unbothered more than I should be, maybe, and I've just felt like that even more since transforming. No use crying over spilled milk, y'know? Especially when you could be something fun or fucking someone,' Alyssa says and slows down her pace a bit to speak with you. 'Maybe a little bit too much since this transformation. I don't know how I would've coped without Daphne. I'd probably have just lost my mind at one of the campus frat parties or something,' Alyssa says rather nonchalantly, to your obvious shock. 'I know it sounds bad, but that's the thing: I'm not really that alarmed by it. Maybe it's a combination of the nanites and how chill I was before, but I just find it hard to be affected by these kinds of things.' The tentacled swimmer shrugs her shoulders. 'Daphne, however, really doesn't take these things well. Did she tell you about the beginning of all this? Well, it's none of my business anyway. It is her story to share, but suffice it to say she wasn't doing hot at all,' Alyssa says, looking a tad bothered now and speeds up her pace. 'Here we are, welcome to the photography club!' the squid girl announces cheerfully, cutting your conversation short. Looks like it is a shorter distance than you thought.";
		WaitLineBreak;
		say "     'Let me do most of the talking. Alexis knows me already. I loved to come down here a lot to get pictures taken. Everybody was always so eager. I wonder why?' Alyssa speculates aloud, the sarcasm and amusement evident in her voice as she crosses her arms to push up her bust. Without further ado, she pushes open the door of the dark club room, revealing a couple of scattered chairs and tables with cameras and equipment locked in cabinets. Seated in the center of the room is a skinny, tan-skinned man with long brown hair and badly damaged clothes. You immediately recognize him as a helot. 'Alexis! It's been so long. I'm glad you're still doing photography, even after this whole apocalypse thing. I miss taking photos with you,' Alyssa greets the slave cheerfully, walking up to his table and pulling a seat beside him. 'Hello, Alyssa. I miss our photoshoots and our other activities. Still, I'm afraid I'll have to cut through the pleasantries and get straight into business,' Alexis says and smiles at Alyssa before meeting your eyes and straightening up.";
		say "     You're curious why Alexis would turn on Cyril, as he is his master, so it looks like you'll also be skipping the pleasantries. You tell the helot, both he and Alyssa seem surprised at how quickly the both of you are jumping into things, but Alexis doesn't miss a beat. 'Very well, it's a rather obvious reason, but I suppose you didn't make it in the city by being careless. I want freedom. I want my life back. I haven't completely succumbed to my infection yet, but it's only a matter of time. I despise Cyril and my role under him, but I can't deny his talents...' Alexis says slowly, a blush spreading across his face. 'I didn't see any way of escaping at first, and perhaps later on, the desire had started to fade, but Cyril's been giving me more freedom lately, especially around night, and because I was curious as to why, I followed him around one day and found out some things that could be very useful to you,' Alexis says shuffling nervously in his seat. He's being quite scarce with the details you note. Still, given that it is effectively his only ticket to freedom besides the camera equipment, which you could easily bypass him to claim, it's understandable why. 'That's my deal. I'll tell you everything I know, but in exchange, I need my freedom first. To do that, I need to switch from a helot to a stronger infection to keep me safe afterward and to ensure I won't lose my new form, which is why I need you,' Alexis finishes his explanation, looking at you anxiously.";
		WaitLineBreak;
		say "     You take a moment to consider. Sure, though you understand why the helot keeps his cards so close to his chest, part of you can't help but be suspicious. He could be lying. There could be no info to gain at all. It all could just be a desperate ploy to gain his freedom, but even so, what do you have to lose? He's looking for transformations, and you already collect plenty of them through your journeys in the city. At worst, there's no info, and you save a fearful man from Cyril's grasp and rob him of a slave. After considering all this, you ask the helot what he's thinking about possible infection changes, to his apparent delight. 'I haven't been able to explore, being a thrall and all, but I've seen some infection around campus. I've seen a couple of Zebras on campus. They look strong, and Coach Randy is a rhino now, which also looks quite secure. If you can get me some samples of cum or spit or anything that can shift me into those things, I'll be set. I need both, though, just in case one doesn't take so I have a backup.' Alexis lays out his demands excitedly, sensing freedom just within his reach. It'll be rough, you know, dealing with these enemies, but Alexis needs a strong form, that's a core demand, so you don't see the point in arguing for a different infection when the difficulty would be the same and end up quickly agreeing to his terms.";
		say "     'Excellent then! I'll always be here waiting, and please get everything to me as soon as possible.' Alexis says, sighing in relief and smiling ecstatically, quite hopeful that you'll soon be back to free him. With nothing left to discuss, you gave a small nod to him to acknowledge his desires and headed out the door, with Alyssa following awkwardly behind you. 'Man, I didn't get to do any negotiating! I felt like a total third wheel.' The squid girl whines a bit, making you chuckle. 'Ah well, sorry to leave you alone at night, but I'm gonna split now and tell Daphne how everything went. Is that alright?' Alyssa asks, and you assure her you'll be alright. You've got a lot of experience by now in journeying alone in the dark, and so you're left at your own devices again as she goes running off. While left alone, you think about how much material you should collect for Alexis. It sounds like he's been transformed for a while. It's annoying, but if you want to ensure you get your info and Alexis's transformation works, about four bottles of Rhino and Zebra cum is what you'll have to collect. The sooner you satisfy the helot's desire, the better, so you can ensure the swim team's safety.";
		now Helot Negotiation is resolved;
	else:
		say "     It looks like forgetfulness is a trait you might share with Alyssa. Wracking your brain, you remember that you're supposed to meet Alyssa at the [bold type]Campus Entrance[roman type] and that Daphne said that whoever you're mystery informant is will only be able to meet you at [bold type]night[roman type].";

Daphne ends here.