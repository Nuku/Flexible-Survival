Version 1 of Hayato by Stripes begins here.
[Version 1 - Basic event and NPC]
"Adds an Oni NPC named Hayato (Hal) to the Flexible Survival game."

Section 1 - Event

Garage Demon is a situation.
The sarea of Garage Demon is "Capitol";
when play begins:
	add Garage Demon to badspots of guy;
	add Garage Demon to badspots of hellspawn;

Instead of resolving a Garage Demon:
	if hp of Hayato is 0:
		say "     While exploring through the devastated area, you come across an old garage that clearly had seen better days even before recent events.  Having only having one vehicle bay, the concrete building is quite small.  That bay is currently occupied, not by a car, but by a hulking red figure.  The muscled giant of a man sits cross-legged in the garage as if it were some kind of cave.  He looks like he'd be about 10 feet tall when standing and has a very powerful, muscled physique.  His face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs.  He has a thick mane of blonde hair that flows down to his shoulders.  His skin is a bright red, covered only at his waist by a tiger-skin loincloth.  At his side is a massive club made of metal and covered in spikes that's nearly as tall as he is.";
		say "     Your first reaction to spotting him is to get away before he notices you, but you hesitate when you take note that there are a few boxes of supplies in the garage as well.  Looking back and forth between him and them, you ponder if your situation is desperate enough for supplies to risk approaching such a dangerous looking foe";
	otherwise if hp of Hayato <= 5:
		say "     Finding your way back to the old garage occupied by the large, muscled demon of a man, you ponder again approaching him.  Talking didn't seem to work out very well before, but you're unsure about attacking such an imposing creature as well";
	otherwise:
		say "ERROR-Hayato-[hp of Hayato]E: This event should be closed!";
		now Garage Demon is resolved;
		continue the action;
	say ".  Shall you risk approaching to [link]talk (1)[as]1[end link], [link]attack (2)[as]2[end link] while you have the element of surprise or [link]leave (3)[as]3[end link] before you are noticed?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1:
			say "[haleventtalk]";
		otherwise if calcnumber is 2:
			say "[haleventfight]";
		otherwise if calcnumber is 3:
			say "     Deciding that it is not worth the risk of getting too close to his massive club, you slip away quietly.  You make a mental note to give the area around here plenty of clearance to avoid accidentally running into him.";
			now Garage Demon is resolved;

to say haleventtalk:
	say "     Approaching the imposing figure[if hp of Hayato > 0] again[end if], you try to intice him to conversation.  He gets up with a sigh before growling at you to go away as he reaches for his menacing club.  He glares at you with his yellow eyes.  You try your best to calm him down.";
	if hp of Hayato < 5:
		let bonus be ( the charisma of the player minus 10 ) divided by 2;
		increase bonus by hp of Hayato;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14: ";
		if (dice + bonus) >= 14:
			now hp of Hayato is 6;
			say "     You continue being friendly, trying to reassure him that you only want to talk (despite whatever other motives you may have.)  Though unwilling to talk at first, you soon get him to relent.  'Fine.  If it'll make you go away.  It'd be for your own good; I don't want to hurt you,' he adds, sounding more cautionary than threatening.";
			say "[halhistory]";
			now Garage Demon is resolved;
		otherwise:
			say "     The muscled creature slams his metal-clad club against the ground, cracking the pavement.  'Shut up and leave.  Go away before I hurt you.  RArrr!' he growls at the end for good measure, shaking his arms menacingly in the air.  Something in his reaction makes you hope that it might all be for show, but he's certainly too worked up right now to talk to.  Perhaps you might try at another time.";
			increase hp of Hayato by 1;
	otherwise:
		now hp of Hayato is 6;
		say "     The horned man sighs as you approach again.  'Damn, you're persistent.  Very well, we may as well talk for a bit.  Just be careful around me; I don't want to hurt you,' he adds, sounding more cautionary than threatening.";
		say "[halhistory]";
		now Garage Demon is resolved;


to say haleventfight:
	say "     You charge forward, weapon drawn, moving in to attack the horned man.  Noticing you at the last moment, he gives a startled growl and stumbles to his feet while grabbing his club.  'Stay back or I'll crush you,' he growls, bashing his into the wall of the garage while attempting to ready it.  Pressing your advantage, you move in to strike while he's still trapped inside.  His mighty muscles raise the club again, this time putting it through the wall before swinging it wildly.  It goes wide and cracks into the other side of the garage door, but you're forced to step back.";
	say "     'I don't want to hurt you, but you leave me no choice' he growls, raising his club high enough to break a channel through the roof.  Rubble falls from the ceiling as he brings the iron club down, cracking the pavement in front of you with his strike.  Despite neither of you having struck a blow yet, your overconfidence causes you to only take a few steps back from the devastating swing before pressing forward again.";
	say "     When you continue the charge, the muscled demon does something unexpected and turns to face the back of the garage.  He bashes his club right through the back wall, knocking a large hole in it.  He then slams himself into the broken wall, the cracks running through it breaking entirely as your fearsome foe barrels right through it.  Having broken free of the garage, he just keeps running, fleeing rather than fighting you, much to your surprise.  You almost rush after him in pursuit before you realize the garage is coming down and move back.  The building collapses in a cloud of concrete dust.";
	attempttowait;
	say "     As you wait for the dust to clear, you think over what just happened, realizing that the demon's blows were all wide.  Either he had very poor aim or he wasn't trying to hit you, but instead just looking to scare you off.  Regardless, he certainly fled rather than fight you.  You ponder what just happened as you attempt to search the rubble for anything that might have survived, but it is difficult work and only yields a small pack of cookies which is intact.";
	increase carried of chips by 1;
	now Garage Demon is resolved;


to say halhistory:
	say "     The large figure gestures for you to have a seat on a couple of tires.  'I should perhaps introduce myself.  My name is Hayato, though you can call me Hal if you prefer.  As you can see, I am now an oni - a Japanese demon ogre,' he growls with a sigh.  He pauses for a bit in his introduction, passing you a small pack of cookies, which you [if hunger of player < 30]quietly munch on while he talks[otherwise]quickly scarf down[end if].  'I am too large to comfortably live in a home, so this' he gestures to the garage 'has become my cave.'";
	say "     'During that horrible night, it was chaos.  The dwindling survivors ran everywhere, trying in vain to get away from the monsters that seemed to only become more numerous.  Soot and smoke filled the air, burning the eyes and making it hard to spot the creatures before they were upon you.  My attempt to flee was cut off when an oni broke through the wall of a building.  It revelled in the destruction and began to attack and rape the people around it.  We tried to get away, but it caught up to us easily, swatting us to the ground with bone-breaking blows from its hand or club.  I fell to the street hard, head striking the slick pavement and all became blackness.  When I awoke, I found I had landed in a pool of the ogre's cum and had been transformed into a monster like it because of it.'";
	say "     He pauses again, looking down on his strong, meaty hands with their clawed nails and bright red skin.  He balls them up into fists before taking a deep breath and relaxing.  'I was thankfully overlooked by the monster.  I would not want my first to have been that horrible creature.  The others it had attacked were gone, their clothes torn to shreds and demon cum everywhere.  I realize now they have probably become more like it, but unable to contend with the dark urges and lusts which took them over.'  He shifts uncomfortably on the floor and presses a hand to his tiger-skin loincloth.  'Thankfully, I am menacing enough in appearance that most of them give me a wide berth and do not trouble me.  .'";
	say "     Despite his fearsome face and gruff voice, there's a sadness to them as well.  As you grow used to his appearance and his voice, it becomes a little easier to read the true emotions beneath them.  'You should perhaps go now.  I thank you for the company; it is good to speak to someone again.  But now I need to meditate.'  You consider trying to talk to him longer, but decide to leave as he's requested.  Perhaps he'll be feeling more sociable if you return to this [bold type]disused garage[roman type] later.";
	decrease hunger of player by 6;
	if hunger of player < 0, now hunger of player is 0;
	now Disused Garage is known;

Section 2 - Location

Disused Garage is a room. It is fasttravel. It is private.
The description of Disused Garage is "[disusedgaragedesc]";

the scent of Disused Garage is "There is a lingering scent of oil hanging around the building.";

to say disusedgaragedesc:
	say "     The old, single bay garage is build of cinder blocks and has seen better days.  While some of the damage is recent, it's clear that the place had fallen on hard times even before the outbreak.  Hayato's cleared out much of the space to make room for him in his makeshift living quarters.  Packed against the back wall are some cardboard boxes representing the oni's personal supplies.";

[monkey wrench]

Section 3 - Hayato the Oni

Hayato is a man.  Hayato is in Disused Garage.
The description of Hayato is "[halonidesc]";
The conversation of Hayato is { "Hai!" }.

understand "Hal" as Hayato.

the scent of the Hayato is "There is a strong, masculine scent to your large oni friend.";

to say halonidesc:
	if hp of Hayato < 6:
		say "ERROR-Hayato-[hp of Hayato]L: You should not be able to see me.";
	otherwise:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly 10 feet tall.  He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to hide cover himself.  At first glance, his face is quite demonic, with a pair of large horns poinging up, an exaggerated brow and chin, yellow eyes and large, protruding fangs.  Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin.  His voice is rough and deep, fitting for his demon ogre form.  Having gotten to know him a little, you know this appearance to be external, with him a friendly, if somewhat sad, person beneath his terrible exterior.  Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";


Instead of conversing the Hayato:
	if hp of Hayato < 6:
		say "ERROR-Hayato-[hp of Hayato]T: You should not be able to talk to me.";
	otherwise if hp of Hayato is 6:
		say "     The red oni gives you a fearsome smile that shows off his large fangs, but seems cheerful enough.  'Welcome back.  I hope you have been well.  Have a seat,' he says, gesturing to the tire seat.  'How about you tell me your story this time?' he suggests, sitting cross-legged on the garage floor while listening to you give a (mildly edited) account of your adventures in the city.  He is attentive and asks few questions of you, seeming pleased to just have some company again for a while.  He shifts and fidgets uncomfortably at the mention of some of the more sordid details, though you don't see any stirring in his loincloth even after a few baiting attempts to get a rise out of him.  As you mention a few of the tempting creatures you've seen around, he rubs his covered groin.  Realizing what he's doing, he growls for you to change the subject.  'I... don't want to hear of such things.  Please.  I must not give into this demonic lust.'";
		now hp of Hayato is 7;
	otherwise if hp of Hayato < 10:
		say "[one of]'My grandmother used to tell me tales of the fearsome oni.  To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand.  'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust.  Even I've had to... take steps... to keep myself under control.'[or]'I do not wish to become a monster like the rampaging oni I encountered.'[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house.  I must now live in this, my oni cave,' he says with a sad sigh.[at random]";
	otherwise if hp of Hayato is 10:
		say "[one of]'My grandmother used to tell me tales of the fearsome oni.  To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand.  'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust.  The chastity device prevents me from giving in.  Though I could certainly use some relief,' he adds with a hint of arousal and longing.[or]'I do not wish to become a monster like the rampaging oni I encountered.'[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house.  I must now live in this, my oni cave,' he says with a sad sigh.[or]'The shop where I got the medieval chastity belt was quite mysterious.  When I stumbled through the doorway, I was out in the city, but upon leaving it, I was inside a shopping mall filled with cheerful rat people.'[or]'The jackal woman running the mysterious shop was quite strange.  All she wanted in payment for the chastity belt was some little trinket.[at random]";

the fuckscene of Hayato is "[sexwithHayato]".

to say sexwithHayato:
	if hp of Hayato < 6:
		say "ERROR-Hayato-[hp of Hayato]F: You shouldn't be able to find me.";
	otherwise if hp of Hayato is 6:
		say "     You should probably try talking to him some more first.";
	otherwise if hp of Hayato < 10:
		say "     Deciding to make a move on the muscular oni, you recall his uneasiness with the prospect of sex.  You can tell he wants it too, but he's worried he'll be like the rampaging oni.  You figure you'll need to get rather hands on if you want to overcome his reluctance, but you will need to do so without him catching on too early.  You start to chat him up, trying to be subtly seductive as you gradually move closer and closer.";
		attempttowait;
		let bonus be ( the charisma of the player minus 10 ) divided by 2;
		let targetnum be 20;
		decrease targetnum by hp of Hayato;
		increase hp of Hayato by 1;
		let dice be a random number from 1 to 20;
		if hp of Hayato is 10:
			say "     Tempted by your continued advances, Hayato makes no attempt to stop you this time.  There's visible signs of arousal on the oni, a growing lust in his eyes and his nipples getting hard.  You move sensually to arouse him, but take care not to rush it, lest he realize what is going on.  You move in beside him, resting your body gently against his.  You slide an arm along his strong back and snuggle up beside him, your other hand moving in on your target.";
			say "     You slip your fingers under the tiger-skin fur, reaching for his groin.  But rather than the feel of hard, phallic meat, you're met with hard, blocky metal instead.  Surprised, your subtlety fails you and you start groping at it, trying to understand what you're feeling.  Noticing your activity, he flips up his loincloth, showing that his loins have been girded in some form of chastity device.  It seems quite ancient, a crudely mechanical thing of forged iron with a large lock built into it.  It is held on by a tightened metal band around his waist and there is a block of metal with drainage holes on it placed tightly over his loins.  Another band runs between his legs and his butt cheeks with only a saw-toothed channel cut into it for waste to pass through, but clearly unusable for penetration from the other direction.";
			say "     'As I've said, I've taken steps to ensure that I could not give into my lusts and attack others.  Since I've transformed, I've felt the urges to sate my lusts on those around me.  As I struggled to rein in my monstrous libido, I came across a strange doorway and found myself in a mysterious shop on the other side.  The strange jackal woman who ran the shop gave me this, saying she had it among her relics and that it would help me.  It has been... difficult... at times, but it has helped me to keep my desires in check.  And before you ask, I did not take the key so I could not be tempted to free myself of it.  It would be so good to be allowed some relief though,' he adds shifting uncomfortably.";
			say "     Listening to him, you are surprised by the lengths he's gone to fight his lusts.  Having checked him over thoroughly, you can tell he's been locked up tight.  The device, despite its age, seems surprisingly resilient.  Having gotten your hopes up for a romp with the big, strong oni, you find yourself tempted to find a way to get him out of that so you can have the fun you've been denied.  You'll need to [if Nerminetalk is 0]track down this [bold type]mysterious shop[roman type] and talk to this jackal he mentioned[otherwise]visit Nermine again and see what she has to say about this[end if].";
		otherwise if (dice + bonus) >= [targetnum]:
			say "     You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [targetnum]: ";
			say "As you see signs of arousal on the oni, a growing lust in his eyes and his nipples getting hard, you slip a little closer.  You move sensually to arouse him, but take care not to rush it, lest he realize what is going on.  While it doesn't take but a few moments in reality, it seems so much longer before you manage to move in next to him.  You slide an arm along his strong back and snuggle up beside him, your other hand moving in on your target.";
			say "     You slip your fingers under the tiger-skin fur, reaching for his groin.  But rather than the feel of hard, phallic meat, you're met with hard, blocky metal instead.  Surprised, your subtlety fails you and you start groping at it, trying to understand what you're feeling.  Noticing your activity, he flips up his loincloth, showing that his loins have been girded in some form of chastity device.  It seems quite ancient, a crudely mechanical thing of forged iron with a large lock built into it.  It is held on by a tightened metal band around his waist and there is a block of metal with drainage holes on it placed tightly over his loins.  Another band runs between his legs and his butt cheeks with only a saw-toothed channel cut into it for waste to pass through, but clearly unusable for penetration from the other direction.";
			say "     'As I've said, I've taken steps to ensure that I could not give into my lusts and attack others.  Since I've transformed, I've felt the urges to sate my lusts on those around me.  As I struggled to rein in my monstrous libido, I came across a strange doorway and found myself in a mysterious shop on the other side.  The strange jackal woman who ran the shop gave me this, saying she had it among her relics and that it would help me.  It has been... difficult... at times, but it has helped me to keep my desires in check.  And before you ask, I did not take the key so I could not be tempted to free myself of it.  It would be so good to be allowed some relief though,' he adds shifting uncomfortably.";
			say "     Listening to him, you are surprised by the lengths he's gone to fight his lusts.  Having checked him over thoroughly, you can tell he's been locked up tight.  The device, despite its age, seems surprisingly resilient.  Having gotten your hopes up for a romp with the big, strong oni, you find yourself tempted to find a way to get him out of that so you can have the fun you've been denied.  You'll need to [if Nerminetalk is 0]track down this [bold type]mysterious shop[roman type] and talk to this jackal he mentioned[otherwise]visit Nermine again and see what she has to say about this[end if].";
			say "(Quest and sex content to be added later. - The Mgmt)[line break]";
			now hp of Hayato is 10;
		otherwise:
			say "     You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [targetnum]: ";
			say "You try to be subtle in your approach, wanting to get the red oni turned on without him becoming suspicious.  At first, it seems to be working, but either you move to quickly or say something too obvious and he notices you reaching out to grope him.  He pushes you back firmly, knocking you on your ass.  'You should leave now,' he growls.  'Return when you're able to control yourself better.'";
			say "     Given his mood, you decide to head off for now, planning to return later.  Part of you feels sorry for trying to get him worked up, but the larger part of you hopes you'll be successful next time.  Certainly, he was getting turned on.  Perhaps you'll be able to convince him next time.";
			move player to Rusty Walkways;
	otherwise if hp of Hayato is 10:
		say "     There's little chance of having fun with the muscular oni until the chastity belt is removed.";
		say "(Quest and sex content to be added later. - The Mgmt)[line break]";

Hayato ends here.
