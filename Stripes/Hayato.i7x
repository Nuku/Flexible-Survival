Version 3 of Hayato by Stripes begins here.
[Version 3.0 - Step 1 of oni lair assault]
[Version 3.1 - Character relocation - Luneth]
"Adds an Oni NPC named Hayato (Hal) to the Flexible Survival game."

an everyturn rule: [bugfix code to update saves which had the event erroneously resolved]
	if HP of Hayato < 14 and Noh Mask is resolved:
		now Noh Mask is not resolved;


Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Garage Demon	"Garage Demon"

Garage Demon is a situation.
The sarea of Garage Demon is "Capitol".
when play begins:
	add Garage Demon to badspots of guy;
	add Garage Demon to badspots of hellspawn;

Instead of resolving a Garage Demon:
	if debugactive is 1:
		say "DEBUG -> HP of Hayato: [HP of Hayato] <- DEBUG[line break]";
	if HP of Hayato is 0:
		say "     While exploring through the devastated area, you come across an old garage that clearly had seen better days even before recent events. Having only one vehicle bay, the concrete building is quite small. That bay is currently occupied, not by a car, but by a hulking red figure. The muscled giant of a man sits cross-legged in the garage as if it were some kind of cave. He looks like he'd be about ten feet tall when standing and has a very powerful, muscled physique. His face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. He has a thick mane of blonde hair that flows down to his shoulders. His skin is a bright red, covered only at his waist by a tiger-skin loincloth. At his side is a massive club made of metal and covered in spikes that's nearly as tall as he is.";
		say "     Your first reaction to spotting him is to get away before he notices you, but you hesitate when you take note that there are a few boxes of supplies in the garage as well. Looking back and forth between him and them, you ponder if your situation is desperate enough for supplies to risk approaching such a dangerous looking foe";
	else if HP of Hayato <= 5:
		say "     Finding your way back to the old garage occupied by the large, muscled demon of a man, you ponder again approaching him. Talking didn't seem to work out very well before, but you're unsure about attacking such an imposing creature as well";
	else:
		say "ERROR-Hayato-[HP of Hayato]E: This event (Garage Demon) should be closed!";
		now Garage Demon is resolved;
		continue the action;
	say ". Shall you risk approaching to [link]talk (1)[as]1[end link], [link]attack (2)[as]2[end link] while you have the element of surprise or [link]leave (3)[as]3[end link] before you are noticed?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>";
		get a number;
		if calcnumber is 1:
			say "[haleventtalk]";
		else if calcnumber is 2:
			say "[haleventfight]";
		else if calcnumber is 3:
			say "     Deciding that it is not worth the risk of getting too close to his massive club, you slip away quietly. You make a mental note to give the area around here plenty of clearance to avoid accidentally running into him.";
			now Garage Demon is resolved;

to say haleventtalk:
	say "     Approaching the imposing figure[if HP of Hayato > 0] again[end if], you try to intice him to conversation. He gets up with a sigh before growling at you to go away as he reaches for his menacing club. He glares at you with his yellow eyes. You try your best to calm him down.";
	if HP of Hayato < 5:
		let bonus be ( the charisma of the player minus 10 ) divided by 2;
		increase bonus by HP of Hayato;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14: ";
		if (dice + bonus) >= 14:
			now HP of Hayato is 6;
			say "     You continue being friendly, trying to reassure him that you only want to talk (despite whatever other motives you may have). Though unwilling to talk at first, you soon get him to relent. 'Fine. If it'll make you go away. It'd be for your own good; I don't want to hurt you,' he adds, sounding more cautionary than threatening.";
			say "[halhistory]";
			now Resolution of Garage Demon is 1; [Player successfully talked to Hayato first try]
			now Garage Demon is resolved;
		else:
			say "     The muscled creature slams his metal-clad club against the ground, cracking the pavement. 'Shut up and leave. Go away before I hurt you. RArrr!' he growls at the end for good measure, shaking his arms menacingly in the air. Something in his reaction makes you hope that it might all be for show, but he's certainly too worked up right now to talk to. Perhaps you might try at another time.";
			increase HP of Hayato by 1;
	else:
		now HP of Hayato is 6;
		say "     The horned man sighs as you approach again. 'Damn, you're persistent. Very well, we may as well talk for a bit. Just be careful around me; I don't want to hurt you,' he adds, sounding more cautionary than threatening.";
		say "[halhistory]";
		now Resolution of Garage Demon is 2; [Player successfully talked to Hayato second try]
		now Garage Demon is resolved;


to say haleventfight:
	say "     You charge forward, weapon drawn, moving in to attack the horned man. Noticing you at the last moment, he gives a startled growl and stumbles to his feet while grabbing his club. 'Stay back or I'll crush you,' he growls, bashing his into the wall of the garage while attempting to ready it. Pressing your advantage, you move in to strike while he's still trapped inside. His mighty muscles raise the club again, this time putting it through the wall before swinging it wildly. It goes wide and cracks into the other side of the garage door, but you're forced to step back.";
	say "     'I don't want to hurt you, but you leave me no choice,' he growls, raising his club high enough to break a channel through the roof. Rubble falls from the ceiling as he brings the iron club down, cracking the pavement in front of you with his strike. Despite neither of you having struck a blow yet, your overconfidence causes you to only take a few steps back from the devastating swing before pressing forward again.";
	say "     When you continue the charge, the muscled demon does something unexpected and turns to face the back of the garage. He bashes his club right through the back wall, knocking a large hole in it. He then slams himself into the broken wall, the cracks running through it breaking entirely as your fearsome foe barrels right through it. Having broken free of the garage, he just keeps running, fleeing rather than fighting you, much to your surprise. You almost rush after him in pursuit before you realize the garage is coming down and move back. The building collapses in a cloud of concrete dust.";
	WaitLineBreak;
	say "     As you wait for the dust to clear, you think over what just happened, realizing that the demon's blows were all wide. Either he had very poor aim or he wasn't trying to hit you, but instead just looking to scare you off. Regardless, he certainly fled rather than fight you. You ponder what just happened as you attempt to search the rubble for anything that might have survived, but it is difficult work and only yields a small pack of cookies which is intact.";
	increase carried of chips by 1;
	now HP of Hayato is 99;
	unleashredoni;
	now Resolution of Garage Demon is 3; [Tried to fight Hayato]
	now Garage Demon is resolved;


to say halhistory:
	say "     The large figure gestures for you to have a seat on a couple of tires. 'I should perhaps introduce myself. My name is Hayato, though you can call me Hal if you prefer. As you can see, I am now an oni - a Japanese demon ogre,' he growls with a sigh. He pauses for a bit in his introduction, passing you a small pack of cookies, which you [if hunger of player < 30]quietly munch on while he talks[else]quickly scarf down[end if]. 'I am too large to comfortably live in a home, so this,' he gestures to the garage, 'has become my cave.'";
	say "     'During that horrible night, it was chaos. The dwindling survivors ran everywhere, trying in vain to get away from the monsters that seemed to only become more numerous. Soot and smoke filled the air, burning the eyes and making it hard to spot the creatures before they were upon you. My attempt to flee was cut off when an oni broke through the wall of a building. It reveled in the destruction and began to attack and rape the people around it. We tried to get away, but it caught up to us easily, swatting us to the ground with bone-breaking blows from its hand or club. I fell to the street hard, head striking the slick pavement and all became blackness. When I awoke, I found I had landed in a pool of the ogre's cum and had been transformed into a monster like it because of it.'";
	say "     He pauses again, looking down on his strong, meaty hands with their clawed nails and bright red skin. He balls them up into fists before taking a deep breath and relaxing. 'I was thankfully overlooked by the monster. I would not want my first to have been that horrible creature. The others it had attacked were gone, their clothes torn to shreds and demon cum everywhere. I realize now they have probably become more like it, but unable to contend with the dark urges and lusts which took them over.' He shifts uncomfortably on the floor and presses a hand to his tiger-skin loincloth. 'Thankfully, I am menacing enough in appearance that most of them give me a wide berth and do not trouble me.'";
	say "     Despite his fearsome face and gruff voice, there's a sadness to them as well. As you grow used to his appearance and his voice, it becomes a little easier to read the true emotions beneath them. 'You should perhaps go now. I thank you for the company; it is good to speak to someone again. But now I need to meditate.' You consider trying to talk to him longer, but decide to leave as he's requested. Perhaps he'll be feeling more sociable if you return to this [bold type]disused garage[roman type] later.";
	PlayerEat 6;
	now Disused Garage is known;


Section 2 - Location

Table of GameRoomIDs (continued)
Object	Name
Disused Garage	"Disused Garage"

Disused Garage is a room. It is fasttravel. It is private.
The description of Disused Garage is "[disusedgaragedesc]".

the scent of Disused Garage is "There is a lingering scent of oil hanging around the building.".

to say disusedgaragedesc:
	say "     The old, single bay garage is build of cinder blocks and has seen better days. While some of the damage is recent, it's clear that the place had fallen on hard times even before the outbreak. Hayato's cleared out much of the space to make room for him in his makeshift living quarters. Packed against the back wall are some cardboard boxes representing the oni's personal supplies.";

[monkey wrench]

Section 3 - Hayato the Oni

Table of GameCharacterIDs (continued)
object	name
Hayato	"Hayato"

Hayato is a man. Hayato is in Disused Garage.
The description of Hayato is "[halonidesc]".
The icon of Hayato is Figure of Hayato_icon.
The conversation of Hayato is { "Hai!" }.
HayatoHunger is a number that varies.

understand "Hal" as Hayato.

the scent of the Hayato is "There is a strong, masculine scent to your large oni friend.".

the fuckscene of Hayato is "[sexwithHayato]".


Part 1 - Description

to say halonidesc:
	if debugactive is 1:
		say "DEBUG -> HP of Hayato: [HP of Hayato] <- DEBUG[line break]";
		say "DEBUG -> lust of Hayato: [lust of Hayato] <- DEBUG[line break]";
		say "DEBUG -> libido of Hayato: [libido of Hayato] <- DEBUG[line break]";
	if HP of Hayato < 6:
		say "ERROR-Hayato-[HP of Hayato]L: You should not be able to see me.";
	else if HP of Hayato < 10:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover himself. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly, if somewhat sad, person beneath his terrible exterior. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";
	else if HP of Hayato < 12:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover the chastity restraint he's put on. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly, if somewhat sad, person beneath his terrible exterior. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";
	else if HP of Hayato < 15:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover the chastity restraint he's put on. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly person beneath his terrible exterior. Your presence seems to have cheered him up a somewhat and also awakened a lustful longing you can see in how he looks at you sometimes. You look forward to being able to sate his unfulfilled lusts once you can get that restraint off him. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";
	else if HP of Hayato is 15:
		say "     Hayato (who also goes by Hal) is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover the chastity restraint he's put on. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly person beneath his terrible exterior. Your presence seems to have cheered him up a somewhat and also awakened a lustful longing you can see in how he looks at you sometimes. You brush your hand across the old iron key you have, smiling inside at the prospect of being able to help him fulfill that longing now. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";
	else:
		say "     Hayato is a hulking red oni roughly ten feet tall. He has a hefty, muscled build with only a tiger-skin loincloth tied with rope to cover himself. A playful peek under the hide shows his semi-hard manhood. It is over a foot long and deliciously thick, with ponderous balls full of cum after his long self-denial. His cockflesh is bright red like the rest of him, only darkening to a near-black at the glans. At first glance, his face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs. Atop his head is a thick mane of blonde hair that flows down to his shoulders, matching nicely with his bright red skin. His voice is rough and deep, fitting for his demon ogre form. Having gotten to know him a little, you know this appearance to be external, with him a friendly person beneath his terrible exterior. Freeing him from the restraint (and the resulting sex) has cheered him up considerably, allowing him to enjoy the increased sexual pleasures of his transformed body. You enjoy the looks of lust he gives you and how he's eager for whatever fun you desire to sate his needs and yours.";
		say "     He seems to have settled in well, having found a comfortable spot at one of the reading desks tucked away on the upper floor of the library. It's a fairly private spot and has enough open space for him to leave a few piles of books he's reading through and his small collection of supplies. He is often resting against a wall reading or casually stroking his impressive manhood. Always nearby is a gigantic spiked club of iron that is nearly as tall as he is.";


Part 2 - Conversation

Instead of conversing the Hayato:
	if HP of Hayato < 6:
		say "ERROR-Hayato-[HP of Hayato]T: You should not be able to talk to me.";
	else if HP of Hayato is 6:
		say "     The red oni gives you a fearsome smile that shows off his large fangs, but seems cheerful enough. 'Welcome back. I hope you have been well. Have a seat,' he says, gesturing to the tire seat. 'How about you tell me your story this time?' he suggests, sitting cross-legged on the garage floor while listening to you give a (mildly edited) account of your adventures in the city. He is attentive and asks few questions of you, seeming pleased to just have some company again for a while. He shifts and fidgets uncomfortably at the mention of some of the more sordid details, though you don't see any stirring in his loincloth even after a few baiting attempts to get a rise out of him. As you mention a few of the tempting creatures you've seen around, he rubs his covered groin. Realizing what he's doing, he growls for you to change the subject. 'I... don't want to hear of such things. Please. I must not give into this demonic lust.'";
		now HP of Hayato is 7;
	else if HP of Hayato < 10:
		say "     [one of]'My grandmother used to tell me tales of the fearsome oni. To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust. Even I've had to... take steps... to keep myself under control.'[or]'I do not wish to become a monster like the rampaging oni I encountered.'[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house. I must now live in this, my oni cave,' he says with a sad sigh.[at random]";
	else if HP of Hayato is 10:
		say "     [one of]'My grandmother used to tell me tales of the fearsome oni. To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust. The chastity device prevents me from giving in. Though I could certainly use some relief,' he adds with a hint of arousal and longing.[or]'I do not wish to become a monster like the rampaging oni I encountered.'[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house. I must now live in this, my oni cave,' he says with a sad sigh.[or]'The shop where I got the medieval chastity belt was quite mysterious. When I stumbled through the doorway, I was out in the city, but upon leaving it, I was inside a shopping mall filled with cheerful rat people.'[or]'The jackal woman running the mysterious shop was quite strange. All she wanted in payment for the chastity belt was some little trinket.'[at random]";
	else if HP of Hayato < 15:
		say "     [one of]'My grandmother used to tell me tales of the fearsome oni. To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust. The chastity device helps keep me from giving into those desires, but the wretched thing also keeps me from getting any relief... or enjoying the company of friends,' he says with a longing, lustful look.[or]'I do not wish to become a monster like the rampaging oni I encountered. Perhaps a little relief would help quell that,' he says, shifting uneasily in his seat.[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house. I must now live in this, my oni cave,' he says with a sad sigh.[or]As you chat with him, the oni gives your body many an appreciative glance as the unfocused arousal he's been trying to contain becomes increasingly focused on you.[or]'The shop where I got the medieval chastity belt was quite mysterious. When I stumbled through the doorway, I was out in the city, but upon leaving it, I was inside a shopping mall filled with cheerful rat people.'[or]'The jackal woman running the mysterious shop was quite strange. All she wanted in payment for the chastity belt was some little trinket.'[at random]";
	else if HP of Hayato is 15:
		say "     [one of]'My grandmother used to tell me tales of the fearsome oni. To be cursed to become such a creature...'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is free to satisfy their needs. Why did I choose this when there are so many fine partners out there?' he says, eyeing you with desire.[or]The chastity device helps keep me from giving into my moments of lust, but the wretched thing also keeps me from getting any relief... or enjoying the company of friends,' he says with a longing, lustful look.[or]'I do not wish to become a monster like the rampaging oni I encountered. Perhaps a little relief would help quell that,' he says, shifting uneasily in his seat.[or]'I must contain my urges, lest I fully become a monster and harm others.'[or]'I am far too big to comfortably live in a house. I must now live in this, my oni cave,' he says with a sad sigh.[or]As you chat with him, the oni gives your body many an appreciative glance as the unfocused arousal he's been trying to contain becomes increasingly focused on you.[or]'The shop where I got the medieval chastity belt was quite mysterious. When I stumbled through the doorway, I was out in the city, but upon leaving it, I was inside a shopping mall filled with cheerful rat people.'[or]'The jackal woman running the mysterious shop was quite strange. All she wanted in payment for the chastity belt was some little trinket.'[at random]";
	else if HP of Hayato is 21 and player is not neuter and a random chance of 1 in 3 succeeds:
		say "     As you chat with Hayato, your thoughts return to the problem of the Oni Lair you discovered.";
		say "     [bold type] Shall you draft him into joining you in dealing with it or shall you wait a while longer before investigating?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     Hoping that you're ready for this, you give the big guy's shoulder a firm shake, telling him to get up. As he starts to rise, he asks you what the rush is and you tell him that you're going back to deal with the oni lair and that he's coming with you. He staggers back at this and starts to protest, but you emphasize that the problem's only going to get worse if something isn't done about it soon. And if he doesn't confront his fear of the oni, he'll also fear himself and never fully feel he's in control of his new self.";
			say "     Reluctantly forced to agree, he takes a deep breath, summons up his courage and heads out with you into the city again, this time returning to the Capitol District where you first found him.";
			say "[onilairassault]";
		else:
			LineBreak;
			say "     Deciding that you have more pressing matters, you put off the problem for another time.";
	else if HP of Hayato is 16 or HP of Hayato is 19 or HP of Hayato is 21 or HP of Hayato is 30:
		say "[one of]'My grandmother used to tell me tales of the fearsome oni. You have made my being cursed to be one less terrible.'[or]'Do you see this club?' he says, holding up the massive, spiked pillar of iron in one hand. 'I have tried to get rid of it many times, but it is always there again when I awake.'[or]'Most everyone in this city is overrun with a mad lust, but it seems it does not have to as I once thought. The chastity device helped me gain control of it, but now it is good to be free of the infernal thing,' he says, a hand rubbing his groin with a lustful grin.[or]'I do not wish to become a monster like the rampaging oni I encountered. I hope you'll continue to help me deal with this transformation,' he says with a lustful grin, loincloth brushed aside to stroke his cock meaningfully.[or]'I was trying so hard to contain my urges when I should have just found someone to help me let them out in a controlled manner.'[or]'I am glad to be away from that [']cave['] of mine. It is easier to feel that some of me is still human in a place like this,' he says, looking around the bookshelves.[or]'That shop where I found the medieval chastity belt is quite mysterious. Be careful what deals you make in there. If what you say is true, I might have ended up sold off to anyone who'd bought the key. Thankfully, you are the one who [']bought['] me,' he says with a playful grin.[or][if ( the number of booked people + number of bunkered people ) is 2]'I prefer staying up here out of the way. That way, I don't upset your friend with my appearance[else if ( the number of booked people + the number of bunkered people ) > 2]'I prefer staying up here out of the way. That way, I don't upset the others with my appearance[else]'I prefer staying up here out of the way. That way I can be out of the way and read in peace[end if]. It also means I'm free to relax and get some relief if I need it,' he adds with a grin and a stroke across his semi-hard cock.[at random]";
	else if HP of Hayato is 17 or HP of Hayato is 18:
		now HP of Hayato is 19;
		say "     Seeing Hayato has reminded you of having seen another red oni running around in the city. Deciding to bring it up, you describe what happened and ask for his opinion. As you relate the events to him, his expression grows increasingly sour - though he sounds more sad than angry when he speaks.";
		say "     'From your description, it doesn't seem to be the one that changed me. That one was even larger and more fearsome than I am now, so you probably met one of its many victims. As I'd said, the oni I encountered that night was rampaging and raping wildly. I expect many of its victims have ended up as demon ogres like myself, though wild and out of control.' He grows silent for a while, pondering the matter. 'The fact that they're only appearing now leads me to believe that they have been in some form of [bold type]oni lair[roman type] from which they've only recently emerged. I expect the larger one, probably their leader now, will be there as well.' He voice grows both angrier and more fearful upon mentioning the monster who caused his transformation.";
		say "     'You should keep an eye out for it and for them, if nothing more than to avoid stumbling into their home while you're exploring the city. I don't think [if level of player >= 18]even [end if]you could deal with them all on your own.' You nod in agreement, silence following as you both ponder the matter. Hayato seems despondent after your conversation, though some sex might cheer him up.";
		now lastfuck of Hayato is turns + 8;
		now Oni Lair is active;
	else if HP of Hayato is 20:
		say "     Seeing Hayato has reminded you that you'd located the oni lair and so you sit down to discuss the matter with him. You describe what you saw, including the rather grisly entrance. He gets quite disturbed by this, momentarily angry enough to smash a nearby chair with his club before reining in his anger.";
		say "     'I am sorry about that,' he says, relinquishing his club and bowing his head in apology. 'It upsets me to think what the oni are doing - and that I could very well have been like them. But I do not know what can be done about them. You should also remember, oni are often depicted as solitary creatures, living in mountain caves or other remote lairs. If they are indeed in those ruins, then the great oni is likely there, ruling over them.' Fear creeps back into his voice, still scared of the monstrous oni that attacked him.";
		if player is neuter:
			say "     Seeing how you lack a gender of your own at present, you find it hard to work up the gumption to go deal with the problem right away, if at all. Perhaps you should do something about your neutered state first.";
			now HP of Hayato is 21;
		else:
			say "     How shall you respond? Shall you prompt him to confront his fear and join you in an [link]assault on the lair (1)[as]1[end link], tell him to [link]wait (2)[as]2[end link] and mentally prepare himself to face his fears or remind him that he's safe now and [link]forget it (3)[as]3[end link].";
			now calcnumber is -1;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>";
				get a number;
			if calcnumber is 1:
				say "     Feeling that you have to strike while the iron's hot, you give the big guy's shoulder a firm shake, telling him to get up. As he starts to rise, he asks you what the rush is and you tell him that you're going back to deal with the oni lair and that he's coming with you. He staggers back at this and starts to protest, but you emphasize that the problem's only going to get worse if something isn't done about it right away. And if he doesn't confront his fear of the oni, he'll also fear himself and never fully feel he's in control of his new self.";
				say "     Reluctantly forced to agree, he takes a deep breath, summons up his courage and heads out with you into the city again, this time returning to the Capitol District where you first found him.";
				say "[onilairassault]";
			else if calcnumber is 2:
				say "     Not wanting to rush out the door right now, but feeling that Hayato should face this at some point, you suggest that he start mentally preparing himself in case an opportunity to deal with the matter arises. You add that the problem will only get worse if something isn't done about it. The oni will continue their rampage and will just grow in numbers if something isn't done about it. He isn't pleased to hear it, but he nods, knowing you're right. He calms himself and tries to meditate, focusing himself for the eventual assault.";
				now HP of Hayato is 21;
			else if calcnumber is 3:
				say "     Wanting to put the big guy at ease, you pat his shoulder and tell him to not worry about it. You remind him that he's safe here and just has to wait for rescue comes. Reassuring him that the military can deal with it when they arrive, you let him know that you'll be avoiding the area as well. Your reassurances help put him at ease. You likely won't have to worry about the matter any further.";
				now HP of Hayato is 30;



Part 3 - I Can Haz Sexy Oni?

to say sexwithHayato:
	if HP of Hayato < 6:
		say "ERROR-Hayato-[HP of Hayato]F: You shouldn't be able to find me.";
	else if HP of Hayato is 6:
		say "     You should probably try talking to him some more first.";
	else if HP of Hayato < 10:
		say "     Deciding to make a move on the muscular oni, you recall his uneasiness with the prospect of sex. You can tell he wants it too, but he's worried he'll be like the rampaging oni. You figure you'll need to get rather hands on if you want to overcome his reluctance, but you will need to do so without him catching on too early. You start to chat him up, trying to be subtly seductive as you gradually move closer and closer.";
		WaitLineBreak;
		let bonus be ( the charisma of the player minus 10 ) divided by 2;
		let targetnum be 20;
		decrease targetnum by HP of Hayato;
		increase HP of Hayato by 1;
		let dice be a random number from 1 to 20;
		if HP of Hayato is 10:
			say "     Tempted by your continued advances, Hayato makes no attempt to stop you this time. There's visible signs of arousal on the oni, a growing lust in his eyes and his nipples getting hard. You move sensually to arouse him, but take care not to rush it, lest he realize what is going on. You move in beside him, resting your body gently against his. You slide an arm along his strong back and snuggle up beside him, your other hand moving in on your target.";
			say "     You slip your fingers under the tiger-skin fur, reaching for his groin. But rather than the feel of hard, phallic meat, you're met with hard, blocky metal instead. Surprised, your subtlety fails you and you start groping at it, trying to understand what you're feeling. Noticing your activity, he flips up his loincloth, showing that his loins have been girded in some form of chastity device. It seems quite ancient, a crudely mechanical thing of forged iron with a large lock built into it. It is held on by a tightened metal band around his waist and there is a block of metal with drainage holes on it placed tightly over his loins. Another band runs between his legs and his butt cheeks with only a saw-toothed channel cut into it for waste to pass through, but clearly unusable for penetration from the other direction.";
			say "     'As I've said, I've taken steps to ensure that I could not give into my lusts and attack others. Since I've transformed, I've felt the urges to sate my lusts on those around me. As I struggled to rein in my monstrous libido, I came across a strange doorway and found myself in a mysterious shop on the other side. The strange jackal woman who ran the shop gave me this, saying she had it among her relics and that it would help me. It has been... difficult... at times, but it has helped me to keep my desires in check. And before you ask, I did not take the key so I could not be tempted to free myself of it. It would be so good to be allowed some relief though,' he adds shifting uncomfortably.";
			say "     Listening to him, you are surprised by the lengths he's gone to fight his lusts. Having checked him over thoroughly, you can tell he's been locked up tight. The device, despite its age, seems surprisingly resilient. Having gotten your hopes up for a romp with the big, strong oni, you find yourself tempted to find a way to get him out of that so you can have the fun you've been denied. You'll need to [if Nerminetalk is 0]track down this [bold type]mysterious shop[roman type] and talk to this jackal he mentioned[else]visit Nermine again and see what she has to say about this[end if].";
		else if (dice + bonus) >= targetnum:
			say "     You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [targetnum]: ";
			say "As you see signs of arousal on the oni, a growing lust in his eyes and his nipples getting hard, you slip a little closer. You move sensually to arouse him, but take care not to rush it, lest he realize what is going on. While it doesn't take but a few moments in reality, it seems so much longer before you manage to move in next to him. You slide an arm along his strong back and snuggle up beside him, your other hand moving in on your target.";
			say "     You slip your fingers under the tiger-skin fur, reaching for his groin. But rather than the feel of hard, phallic meat, you're met with hard, blocky metal instead. Surprised, your subtlety fails you and you start groping at it, trying to understand what you're feeling. Noticing your activity, he flips up his loincloth, showing that his loins have been girded in some form of chastity device. It seems quite ancient, a crudely mechanical thing of forged iron with a large lock built into it. It is held on by a tightened metal band around his waist and there is a block of metal with drainage holes on it placed tightly over his loins. Another band runs between his legs and his butt cheeks with only a saw-toothed channel cut into it for waste to pass through, but clearly unusable for penetration from the other direction.";
			say "     'As I've said, I've taken steps to ensure that I could not give into my lusts and attack others. Since I've transformed, I've felt the urges to sate my lusts on those around me. As I struggled to rein in my monstrous libido, I came across a strange doorway and found myself in a mysterious shop on the other side. The strange jackal woman who ran the shop gave me this, saying she had it among her relics and that it would help me. It has been... difficult... at times, but it has helped me to keep my desires in check. And before you ask, I did not take the key so I could not be tempted to free myself of it. It would be so good to be allowed some relief though,' he adds shifting uncomfortably.";
			say "     Listening to him, you are surprised by the lengths he's gone to fight his lusts. Having checked him over thoroughly, you can tell he's been locked up tight. The device, despite its age, seems surprisingly resilient. Having gotten your hopes up for a romp with the big, strong oni, you find yourself tempted to find a way to get him out of that so you can have the fun you've been denied. You'll need to [if Nerminetalk is 0]track down this [bold type]mysterious shop[roman type] and talk to this jackal he mentioned[else]visit Nermine again and see what she has to say about this[end if].";
			now HP of Hayato is 10;
		else:
			say "     You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [targetnum]: ";
			say "You try to be subtle in your approach, wanting to get the red oni turned on without him becoming suspicious. At first, it seems to be working, but either you move too quickly or say something too obvious and he notices you reaching out to grope him. He pushes you back firmly, knocking you on your ass. 'You should leave now,' he growls. 'Return when you're able to control yourself better.'";
			say "     Given his mood, you decide to head off for now, planning to return later. Part of you feels sorry for trying to get him worked up, but the larger part of you hopes you'll be successful next time. Certainly, he was getting turned on. Perhaps you'll be able to convince him next time.";
			move player to Rusty Walkways;
	else if HP of Hayato is 10:
		say "     You eye Hayato and his strong, muscular body, but there's little chance of having fun with him until the chastity belt is removed. You should [if Nerminetalk is 0]search for this [bold type]mysterious shop[roman type] where he got the[else]talk to Nermine and see what she has to say about this[end if] restraint if you want to help the poor fellow out of it.";
	else if HP of Hayato is 11 or HP of Hayato is 12 or HP of Hayato is 13:
		say "     You take in Hayato's muscular form, your longing to do more than look growing. Unfortunately, until you retrieve the [bold type]noh mask[roman type] that Nermine wants, you won't be able to get at the red-skinned hunk's locked-up junk. You'll need to head over to the College Campus and [if HP of Hayato is 11]try to locate it[else]deal with the creatures in your way[end if].";
	else if HP of Hayato is 14:
		say "     You imagine for a moment all the fun you'll be able to have with the demon ogre once you've removed that chastity belt. Thinking about it starts to get you rather excited. You'd best get that mask to Nermine so you can get the key and get down and dirty with him.";
	else if HP of Hayato is 15:
		setmonster "Red Oni";
		choose row monster from the Table of Random Critters;
		say "     Having gotten the key this time, you move in on Hayato again. Longing for company, he remained seated as you slide in beside him. You take it slow at first, a few casual touches and an arm around his waist. He moans softly as you brush your fingertips across one of his red nipples, his need for stimulation building as his unsatiated arousal grows. Pressing your chest to his[if breast size of player > 0], rubbing your bosom against his firm abs[end if], you suck on one of his nipples while sliding a hand down to his covered crotch.";
		say "     'Oh, I really wish I'd kept that key right now,' he moans, running a hand down your back as the other steadies himself on a metal pipe. You grin up at him and reveal the key to him, smiling wider at his gasp and look of longing. He starts to mutter a halfhearted objection, so you silence it with a passionate kiss while your fingers work the key into the lock.";
		say "     Despite its obvious age, it turns easily and the gears in the mechanism run smoothly. The bands around his waist and between his legs steps out further with each turn of the key until they finally release. And that's not all that is released. Free from its bonds, his crimson cock surges to full erection, sending the unlatched metal clattering across the ground.";
		say "     Now free from their containment, you're not even sure how his large equipment could even fit within the restraint. The oni's transformed manhood is a thick pillar of red flesh, hard and throbbing with need. While shaped like a man's cock, it is considerably larger and thicker with throbbing veins. It is a little over a foot in length and leaks precum steadily. Like the rest of him, it is a bright red in color, only darkening to a near-black shade of red at the glans. Below it hangs his ponderous ballsack, containing his large, firm testes. The feel of them in your hand and the knowledge that they are heavy with his pent-up semen - virgin semen at that - practically makes your mouth water.";
		WaitLineBreak;
		say "     Lowering yourself down between his legs, you bring your mouth to his erection and start licking over it. It twitches and unleashes a healthy gush of precum, which you lap up eagerly. The oni pants, his yellow eyes rolling back in his head as you work your mouth over his virgin shaft and start sucking on it. You guzzle down several rich mouthfuls of his precum before pulling off again, taking delight at his groan of disappointment. As much as you'd like to keep on sucking him, you worked too hard to get this to blow his first time on a blow job.";
		if player is female:
			say "     Moving back up, you pull yourself into his lap, [if scalevalue of player < 3]hugging your arms around as much of his broad chest as your small body can hold[else if scalevalue of player is 3]wrapping your arms around the larger fellow's broad chest[else]draping your arms around his shoulders and neck while you kiss him[end if]. You grind your pussy down onto that pulsing rod of his and shift your hips to lower yourself down onto it. You watch as his gruff face is overcome with ecstasy as you push your cunt down around his cock, taking the transformed man's virginity. With that thick rod inside you, you take it slow at first, mainly for the sake of making the pent-up oni last a little longer. Despite your efforts, it ends up being a little short, but you are treated to such a thick geyser of cum while the demon ogre cries out in lustful release after his self-imposed abstinence that it is well worth it. The feel of those seemingly unending pulses of his spurting rod as his tainted seed stuffs you full and overflows from your cunt sends you into orgasm as well, your needy vagina milking the oni for more and more until he finally collapses backwards in a daze. You grin and pull off of him slowly, smiling smugly at the messy pool of cum covering his lower body and the garage floor between his legs. Your womb sloshes with his semen, stuffed full and hot with his demonic load.[fimpregchance][fimpregchance]";
		else:
			say "     Moving back up, you pull yourself into his lap, [if scalevalue of player < 3]hugging your arms around as much of his broad chest as your small body can hold[else if scalevalue of player is 3]wrapping your arms around the larger fellow's broad chest[else]draping your arms around his shoulders and neck while you kiss him[end if]. You grind your ass down onto that pulsing rod of his and shift your hips to lower yourself down onto it. You watch as his gruff face is overcome with ecstasy as you stretch your anus down around his cock, taking the transformed man's virginity. With that thick rod inside you, you take it slow at first, mainly for the sake of making the pent-up oni last a little longer. Despite your efforts, it ends up being a little short, but you are treated to such a thick geyser of cum while the demon ogre cries out in lustful release after his self-imposed abstinence that it is well worth it. The feel of those seemingly unending pulses of his spurting rod as his tainted seed stuffs you full and overflows from your asshole sends you into orgasm as well, your needy hole milking the oni for more and more until he finally collapses backwards in a daze. You grin and pull off of him slowly, smiling smugly at the messy pool of cum covering his lower body and the garage floor between his legs. Your belly sloshes with his semen, stuffed full and hot with his demonic load.[mimpregchance][mimpregchance]";
		say "     After he recovers, Hayato smiles up at you from the floor and releases a long, satisfied sigh of relief. 'Oh, that feels so much better. I was starting to ache so badly down there. I do hope you'll come and visit my dingy cave again soon,' he says with a bit of worry in his voice. Given how he's not gone crazy with lust after his release, you decide to invite him back to your safe haven. He seems a little surprised and very eager at the prospect of this to guess by the twitch his cock gives, his only concern one about whether he'll even fit inside. Helping him up, you grin and pat his shoulder, telling him you can probably squeeze him in somewhere.";
		move Hayato to Darkened Alcove;
		move player to Darkened Alcove;
		now HP of Hayato is 16;
		increase score by 25;
		unleashredoni;
	else if HP of Hayato >= 16:	[***]
		say "[hayatosexmenu]";

to say hayatosexmenu:
	setmonster "Red Oni";
	choose row monster from the Table of Random Critters;
	say "     Looking over the oni's large, muscular form gets you aroused. In the mood for some fun, you approach him with a smile which he readily returns. Moving next to him, you press your body to his and slip a hand under his striped loincloth, grabbing his erecting maleness. The fearsome ogre gives you a tender kiss. Having got the compliant oni by the horn, you consider what you'd like to do for fun with him.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Give fellatio";
	now sortorder entry is 1;
	now description entry is "suck him off";
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Vaginal";
		now sortorder entry is 3;
		now description entry is "have him fuck your cunt";
	else:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 4;
		now description entry is "have him fuck your ass";
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Receive fellatio";
		now sortorder entry is 2;
		now description entry is "fuck his face";
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 5;
		now description entry is "take your turn on top";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "Do you want to [description entry]?";
			if player consents:
				let num be sortorder entry;
				now sextablerun is 1;
				if num is 1:
					say "[hayatosex1]";
				if num is 2:
					say "[hayatosex2]";
				if num is 3:
					say "[hayatosex3]";
				if num is 4:
					say "[hayatosex4]";
				if num is 5:
					say "[hayatosex5]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Hayato is turns;
	WaitLineBreak;
	clear the screen and hyperlink list;


to say hayatosex1:
	say "     Deciding you want a taste [if HP of Hayato is 16]this time [end if]of his heavy payload, you move between Hayato's legs and raise up his loincloth, giving you free access to him impressive manhood. With it hard and throbbing in your hand, you bring your mouth in and start licking and kissing at it, enjoying the soft moans of the buff demon ogre. 'Oh, that feels so good. Mmm...' You play your tongue across his red shaft and up to his darkened glans several times, lapping up the copious amounts of precum he's leaking.";
	say "     [one of]After nuzzling down to his balls and licking his pendulous sac[or]While rolling his hefty, orange-sized balls around in your hand[or]After a few teasing nibbles along his throbbing member[at random], you bring your lips to his glans, open wide and guide it into your mouth. The sexy oni releases a long groan of pleasure and strokes one of his strong hands over your head and across your shoulders. You work your lips slowly down over his cock, taking his thick meat down your throat while your tongue plays along it. It is slow going at first given its size, but you manage to get it all in somehow. After taking a moment to enjoy the fullness in your mouth and throat, you start bobbing over his manhood while sucking that pulsing rod.";
	say "     [if HP of Hayato is 16]Showing more endurance than his first time, you[else]You[end if] are able to take your good, sweet time with him, lavishing attention upon his leaking rod. You find having your way with the oni's shaft very pleasurable; his big, virile cock so delightfully responsive. And having the strong, muscled oni moaning loudly as you take what you want from him makes it all the better.";
	say "     And speaking of taking what you want, as you [one of]give his balls a firm squeeze[or]plunge his cock fully down your throat again[or]fellate your tongue wildly across his glans[at random], he groans deeply and blasts thick bursts of cum from his throbbing manhood. You suck it down as best you can, his heavy flow easily filling your mouth and flowing down into your belly. Even gulping it down as quickly as you can, some overflows from your lips, staining his red flesh with streaks of white. His cum has a strong taste, but is delicious nonetheless, its musky flavor speaking of its rich, virile nature. And certainly there's plenty of it as well, allowing you to enjoy a tasty meal of oni semen that fills your belly with sloshing, hot cum. Once his long climax comes to an end, you release his softening shaft, lick your messy lips and give him a creamy kiss before leaving the dazed, grinning oni to recover his wits.";

to say hayatosex2:
	say "     Wanting some relief, you look over at the docile oni and grin. Noticing you pulling out your [cock size desc of player] cock, his own manhood stirs. Offering it to the sitting fellow, he licks his thick lips with his bright red tongue, but hesitates. Running a hand through his coarse hair, you tell him that you know he wants it and to just be a good cockslut and get to work. The next pass of his tongue has it slide across your glans before he assents and opens his mouth to take it in[if cock length of player > 36]. It takes quite a bit of effort even for the muscular oni to push his maw and throat over your massive meat, but he continues with growing enthusiasm until he's managed to stretch himself around it all[else if cock length of player > 24]. It takes him some effort to him to get your enlarged meat into his maw and down his throat, but he does so with growing enthusiasm until he's succeeded[else if cock length of player > 12]. He works the full length of your meat into his maw and throat with growing enthusiasm until it's all in there[else]. He takes the full length of your meat into his maw with a growing enthusiasm[end if].";
	say "     While working his mouth and tongue over your [cock of player] shaft, the red oni [one of]pants and moans around your cock while busily pumping his own hard and fast[or][if cockname of player is not listed in infections of internallist]eagerly rubs your [ball size] in his strong hand[else if player is female]stuffs a thick finger into your cunny and works it in and out[else if anallevel is 3]teases a finger at your anus before stuffing it into your tight hole[else]kneads your ass with his strong hand[end if][or]grabs your ass and moans, clearly wanting you to fuck his face[or]has an expression of lustful delight on his otherwise fearsome face[at random]. You rub your hands through his rough hair and over those horns of his. When your own excitement crests, you grab onto those horns and pull him into each thrust you make, having your way with the muscular demon ogre's mouth until you cum a [cum load size of player] load of gooey semen down his throat. As he's swallowing down your seed, he pumps his own red pillar until his jizz splatters everywhere. Sated now, you push his head away and leave the big guy in an orgasmic daze while some of your excess seed leaks from the corner of his mouth.";

to say hayatosex3:
	setmonster "Red Oni";
	choose row monster from the Table of Random Critters;
	if lust of hayato is even:
		say "     Deciding you want another ride on the oni's thick pole, you climb up into his lap facing him and pull his loincloth up, giving you free access to his impressive manhood. With it hard and throbbing between your legs, you [if scalevalue of player < 3]nuzzle at the oni's manly chest[else if scalevalue of player is 3]nuzzle at his strong shoulders and neck[else]press your [bodydesc of player] body against his mighty chest and kiss his fearsome face[end if], enjoying the soft moan he gives as you do. 'Oh, I want you so bad. Please, let me fuck you,' he pants. His cock pulses with obvious need as it dribbles precum against your ass as you grind against it.";
		say "     [one of]After some more teasing grinding against his cock that has him clawing at the floor and begging you to be let in[or]After tantalizing him with several passes of your pussy along his shaft[or]After faking changing your mind and moving to pull away[at random], you guide his cock to your dripping folds and ease yourself down onto it. You work your pussy lips slowly down over his cock, taking his thick meat into your vagina gradually[if cunt width of player < 8 or cunt length of player < 13]. It is slow going at first given its size, but you eventually manage to get it all stuffed into you somehow[else]. Your [cunt size desc of player] cunt is able to take his impressive shaft with relative ease, leaving you free to enjoy taking it inch by inch[end if]. Your slow progress turns the muscled oni into putty in your hands, the buff guy moaning and panting as his red rocket throbs and spurts precum into you.";
		say "     You ride up and down in his lap, pushing yourself down onto his cock with increasing gusto. The feel of that thick pillar of red meat pulsing inside you as it slides in and out sending waves of delight through you. You find having your way with the oni's shaft very pleasurable; his big, virile cock so delightfully responsive. And having the strong, muscled oni moaning loudly as you take what you want from him makes it all the better.";
		say "     And speaking of taking what you want, as you [one of]give his balls a firm squeeze[or]plunge fully down onto his cock again[or]gyrate your hips and squeeze your inner walls around his cock[at random], he groans deeply and blasts thick bursts of cum from his throbbing manhood. You can feel each large blast shoot inside you, splattering against your cervix before being forced inside by the pressure of the next blast. His heavy flow easily fills your vagina to the brim and flows into your womb, working to fill it with his virile seed, though a considerable amount overflows around his shaft as well, staining his red flesh with streaks of white. His cum is quite thick, likely a result of his long build-up. And certainly there's plenty of it as well, allowing you to enjoy a womb-filling load of sloshing, hot cum. Once his long climax comes to an end, you rise off his softening shaft, a heavy flow of his seed running down your legs. You make a show of bending over, giving the dazed, grinning oni a clear view of your well-fucked hole before leaving him to recover his wits.[impregchance]";
	else:
		say "     Feeling a need to be filled, you push aside some books on the nearby reading desk and hop up onto it. With your legs raised, you give Hayato a wanton gaze, telling him to get to work. Holding your legs wide, your wet pussy is on tempting display for the muscular oni. Between the teasing and the tantalizing offer, he cannot refuse and moves into position.";
		say "     Taking his cock in hand again, you get him lined up and tell him to stick it in you. Having gotten yourself quite worked up for it, when he starts slow, you don't want to wait. Giving his large length a tug while pulling him forward with your legs around his strong sides, you growl that you told him to stick it in you. Obediently, he doesn't hold back and thrusts firmly into you, driving a good portion of his impressive manhood into you. You cry out in delight and grind over his red rod, demanding more - a request he's eager to fulfill, pumping until it all is filling you full.";
		say "     Each thrust of that mighty cock has you [one of]moan[or]groan[or]whimper[or]cry out[at random], your inner walls squeezing around it in over-stretched ecstasy. He has an expression of lustful delight that you can clearly read upon his fearsome face - and you can't help but feel a swell of pride[if player is male] (and of your cock[smn])[end if] at the knowledge that you introduced him to such pleasures. These thoughts drive you to push him to orgasm by working your hips and wet hole around his crimson rod while pulling him harder into every thrust.";
		say "     When it all becomes too much for the [if lust of Hayato + libido of Hayato < 5]inexperienced [end if]oni, he grabs the desk with his claws hands. You can hear the scrape of his claws and the cracking of cheap wood along with his climactic growl as he unleashes his hot seed into your stuffed pussy. Liquid heat pours into your cunt and floods your womb as his hefty balls deliver their heavy load unto you. The constant pulsing throbs of his spurting shaft and the hot flow of his semen sends you over the edge and you cum as well, soaking your crotches with your sticky juices. By the time he's drained, your belly feels full and warm with his load. You run a hand over your [if scalevalue of player < 4]stretched[else]full[end if] tummy as you unlock your legs and let your spent lover stumble to the ground with a sigh of sexual satisfaction. You reach down and lightly stroke his thick rod, telling him what a fine job he did.[impregchance]";
	increase lust of hayato by 1;

to say hayatosex4:
	setmonster "Red Oni";
	choose row monster from the Table of Random Critters;
	if libido of hayato is even:
		say "     Deciding you want another ride on the oni's thick pole, you climb up into his lap facing him and pull his loincloth up, giving you free access to his impressive manhood. With it hard and throbbing between your legs, you [if scalevalue of player < 3]nuzzle at the oni's manly chest[else if scalevalue of player is 3]nuzzle at his strong shoulders and neck[else]press your [bodydesc of player] body against his mighty chest and kiss his fearsome face[end if], enjoying the soft moan he gives as you do. 'Oh, I want you so bad. Please, let me fuck you,' he pants. His cock pulses with obvious need as it dribbles precum against your ass as you grind against it.";
		say "     [one of]After some more teasing grinding against his cock that has him clawing at the floor and begging you to be let in[or]After tantalizing him with several passes of your pucker across his tip[or]After faking changing your mind and moving to pull away[at random], you guide his cock to your crinkled hole and ease yourself down onto it. You work your asshole slowly down over his cock, taking his thick meat into your back passage gradually[if scalevalue of player < 4 and the player is not twistcapped]. It is slow going at first given its size, but you eventually manage to get it all stuffed into you somehow[else if player is twistcapped]. Your stretchable insides are able to take his impressive shaft with relative ease, leaving you free to enjoy taking it inch by inch[else]. Your enlarged body is able to take his impressive shaft with relative ease, leaving you free to enjoy taking it inch by inch[end if]. Your slow progress turns the muscled oni into putty in your hands, the buff guy moaning and panting as his red rocket throbs and spurts precum into you.";
		say "     You ride up and down in his lap, pushing yourself down onto his cock with increasing gusto. The feel of that thick pillar of red meat pulsing inside you as it slides in and out sending waves of delight through you. You find having your way with the oni's shaft very pleasurable; his big, virile cock so delightfully responsive. And having the strong, muscled oni moaning loudly as you take what you want from him makes it all the better.";
		say "     And speaking of taking what you want, as you [one of]give his balls a firm squeeze[or]plunge fully down onto his cock again[or]gyrate your hips and squeeze your inner walls around his cock[at random], he groans deeply and blasts thick bursts of cum from his throbbing manhood. You can feel each large blast shoot inside you, splattering hard against your prostate before being forced deep inside by the pressure of the next blast. His heavy flow easily fills your bowels to the brim, filling you with his virile seed, though a considerable amount overflows around his shaft as well, staining his red flesh with streaks of white. His cum is quite thick, likely a result of his long build-up. And certainly there's plenty of it as well, allowing you to enjoy a belly-stuffing load of sloshing, hot cum. Once his long climax comes to an end, you rise off his softening shaft, a heavy flow of his seed running down your legs. You make a show of bending over, giving the dazed, grinning oni a clear view of your well-fucked hole before leaving him to recover his wits.[mimpregchance]";
	else:
		say "     Feeling a need to be filled, you push aside some books on the nearby reading desk and hop up onto it. With your legs raised, you give Hayato a wanton gaze, telling him to get to work. Holding your cheeks spread, your tight ass is on tempting display for the muscular oni. Between the teasing and the tantalizing offer, he cannot refuse and moves into position.";
		say "     Taking his cock in hand again, you get him lined up and tell him to stick it in you. Having gotten yourself quite worked up for it, when he starts slow, you don't want to wait. Giving his large length a tug while pulling him forward with your legs around his strong sides, you growl that you told him to stick it in you. Obediently, he doesn't hold back and thrusts firmly into you, driving a good portion of his impressive manhood into you. You cry out in delight and grind over his red rod, demanding more - a request he's eager to fulfill, pumping until it all is filling you full.";
		say "     Each thrust of that mighty cock has you [one of]moan[or]groan[or]whimper[or]cry out[at random], your inner walls squeezing around it in over-stretched ecstasy. He has an expression of lustful delight that you can clearly read upon his fearsome face - and you can't help but feel a swell of pride[if player is male] (and of your cock[smn])[end if] at the knowledge that you introduced him to such pleasures. These thoughts drive you to push him to orgasm by working your hips and wet hole around his crimson rod while pulling him harder into every thrust.";
		say "     When it all becomes too much for the [if lust of Hayato + libido of Hayato < 5]inexperienced [end if]oni, he grabs the desk with his claws hands. You can hear the scrape of his claws and the cracking of cheap wood along with his climactic growl as he unleashes his hot seed into your stuffed asshole. Liquid heat pours into your rectum and floods your bowels as his hefty balls deliver their heavy load unto you. The constant pulsing throbs of his spurting shaft and the hot flow of his semen [if player is male]sends you over the edge and you cum as well, spraying your gooey [cum load size of player] load across your front[else]has you moaning and squirming in delight[end if]. By the time he's drained, your belly feels full and warm with his load. You run a hand over your [if scalevalue of player < 4]stretched[else]full[end if] tummy as you unlock your legs and let your spent lover stumble to the ground with a sigh of sexual satisfaction. You reach down and lightly stroke his thick rod, telling him what a fine job he did.[mimpregchance]";
	increase libido of Hayato by 1;

to say hayatosex5:
	if HayatoHunger is 0:
		say "     Deciding it's time for you to take your turn atop the docile oni, you keep stroking his cock as you gently guide him over onto all fours. It is not until you're moving your own erection against his ass that he realizes your intent and shifts to get back up. Giving his cock a firm squeeze, you tell him that you'd let him be on top the first time, so it's only fair that you get a turn. Whether it's his good nature or lingering effects of the chastity belt is unclear, but he relents and accepts taking a turn on bottom when you tease his manhood a little longer.";
	else:
		say "     In the mood to have another go at the docile oni's ass, you continue playing with his cock while guiding him over onto all fours. He shows little reluctance this time, accepting your unspoken request by raising his red-skinned bottom and bracing his strong body. You smile at this and caress his enlarged cock, [one of]telling him that you appreciate the view[or]teasing about what a fine bottom he's becoming[or]causing him to moan with need[or][if anallevel is 3]slipping a lubed finger into his anus to spread him open[else]teasing his crinkled hole[end if][or]tantalizing him with your shaft between those muscled cheeks until he begs for it[in random order].";
	say "     You press your cock against his back door, taking your time to coax it open slowly[if HayatoHunger is 0] for his first time[end if]. You're quite hard and throbbing as you ease [if cock length of player > 2]inch after inch[else]your small shaft[end if] into him, letting your pre get his hole slick. He whimpers [if cock length of player < 12]a little[else]momentarily[end if] at first while balling his clawed hands into fists as he grows used to the penetration, but pushes back onto your manhood all the same. Keeping a grip on his cock the whole time, you continue stroking him, further encouraging him to press on. And from how rock hard it's gotten, you can tell he's enjoying it quite a lot.";
	say "     [if cock length of player > 36]After managing to sink fully into him, even his large, muscular torso's been stretched somewhat by your massive manhood[else if cock length of player > 24]After managing to sink fully into him, you can feel a roundness pressing his strong abs outwards as they're stretched outwards by your hefty manhood[else]With your manhood sunk fully into him, you can feel his tight hole squeezing down around you[end if][one of]. Draping yourself across his back and gripping your free arm around his chest, you throw yourself into action and start pounding away at that ass of his. Taking delight in how he moans, growls and pants with excitement, you [if scalevalue of player > 3]lick and nibble at his ear[else if scalevalue of player is 3]nuzzle and kiss along his neck and shoulders[else]nuzzle against his back[end if][or]. Gripping his meaty rear, you knead the firm buttock as you slowly build up the speed of your thrusts. You ease him from thrusts that are frustratingly slow that have him longing for more, up through a steady and enjoyable rhythm until you're pounding him hard and fast near the end[or]. Placing your other hand on his heavy ballsack, you rub and caress them while you thrust into him with a good, steady rhythm that soon has him panting with excitement[if cockname of player is not listed in infections of internallist]. You even rub his scrotum against your own, teasingly making the balls touch to get him to blush a deeper crimson[end if][in random order]. Your continued pumping of his pre-drooling penis is finally rewarded when he growls and blasts thick streams of gooey seed across the floor. As he climaxes, Hayato's rectum spasms and clenches like a vice around your cock, driving you to paint his insides with your [cum load size of player] load. Left sticky and panting, he flops onto the floor when you pull out of him, the scary demon ogre reduced to orgasmic bliss by the ass-fucking he's received.";
	if HayatoHunger is 0, now HayatoHunger is 1;


Section 4 - Events

Table of GameEventIDs (continued)
Object	Name
Noh Mask	"Noh Mask"

Noh Mask is a situation. Noh Mask is inactive. The level of Noh Mask is 9.
The sarea of Noh Mask is "Campus".
when play begins:
	add Noh Mask to badspots of furry;
	add Noh Mask to badspots of guy;
	add Noh Mask to badspots of girl;

instead of resolving Noh Mask:
	if HP of Hayato is 11:
		say "     Recalling Nermine's mention of the noh mask she wants, you search around some likely possibilities for where it may be. You fortunately find it hanging on the wall of the Japanese Language professor's office. Unfortunately though, that office is busily occupied by a trio of felines in ninja outfits with a humanoid female pinned to the desk beneath them. The woman's clothing is torn, exposing much of her exaggeratedly proportioned body. Her eyes are very large and visible through her overhanging bangs of blue hair. As the ninjas run their greedy paws over her smooth skin and grope her breasts, she moans and squirms. 'Ecchi! No, bad kitties!' she says before breaking down into a long moan as one of them slips a pair of fingers into her wet pussy.";
		say "     It looks like they'll be here for a while, so you'll have to deal with them if you want to get the mask.";
		say "     [bold type] Shall you attack the ninjas?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "[nohmaskninja]";
		else:
			say "     You decide to postpone getting the mask, at least for now. Hayato will have to wait a little longer.";
			now HP of Hayato is 12; [didn't fight]
	else if HP of Hayato is 12: [lost or didn't fight]
		say "     Returning in search of the Japanese noh mask, you find them still going at it with the anime babe. She's pinned down onto the desk by one of them as he pounds into her. The others are [one of]groping her large boobs[or]taking turns getting blow jobs[or]recovering after fucking her[at random].";
		say "     It looks like they'll be here for a while, so you'll have to deal with them if you want to get the mask.";
		say "     [bold type]Shall you attack the ninjas?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "[nohmaskninja]";
		else:
			say "     You decide to postpone getting the mask, at least for now. Hayato will have to wait a little longer.";
			now HP of Hayato is 13;
	else if HP of Hayato is 13:
		say "     Returning in search of the Japanese noh mask, you find the anime babe sitting on the office desk. She's flipped up her short skirt and is fingering herself wildly. 'Oh, there you are!' she exclaims upon spotting you. 'Reconsidered helping me with that scene, have you?' she asks with a naughty grin. 'I could really go for it right now.' And with that, she's off the desk and advancing towards you.";
		say "[nohmaskanimebabe]";
	else:
		say "ERROR-Hayato-[HP of Hayato]E: This event (Noh Mask) should not be available.";
		now Noh Mask is resolved;


to say nohmaskninja:
	say "     As you advance of the group, one of the ninjas notices you with a flick of his ear, turning quickly to face you. The others continue to molest the pinned woman, leaving you to their comrade while they rape the squirming, moaning female.";
	challenge "Ninja Cat";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Dispatching the first of the ninjas, you advance. The second one breaks off, moving to intercept you.";
		challenge "Ninja Cat";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the second feline dealt with, you press onwards. The last of them is forced to release the anime hottie. When he turns to face you and slips a paw into his robes, you expect another volley of shuriken to come, but what comes out instead is a smoke bomb. Smashing it at the tabby's tabied feet, he is envelopped in a cloud of smoke and then is gone. You spin around, making sure he isn't going to jump you from behind, but it's soon clear that you've driven them off. You relax and move to the desk to help the poor woman.";
			WaitLineBreak;
			say "     [bold type]SMACK![roman type]";
			say "     You tumble comically into a corner of the room, sent for a loop by the woman you just [']rescued['] with a big paper fan. 'Baka! You ruined my big scene. Being raped by ninjas is really big this season. And just when it was getting good too... though maybe we've got enough budget left for you and I to have some fun climax.' And with that said, she rushes at you with giggling glee.";
			say "[nohmaskanimebabe]";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After your defeat by the shadowy feline, you are driven from the office so they can focus on enjoying their main prize. As you leave, you can hear the giggling cries of the anime babe. 'Oh no! Please don't touch me there. Yes, just like that.' You decide it would be best to try again later.";
		if HP of Hayato < 12:
			now HP of Hayato is 12; [lost]
	else if fightoutcome >= 30:
		say "     Fleeing from the shadowy feline, you dash back down the hall. As you run, you can hear the giggling cries of the anime babe. 'Oh no! Please don't touch me there. Yes, just like that.' You decide it would be best to try again later.";
		if HP of Hayato < 12:
			now HP of Hayato is 12; [lost]


to say nohmaskanimebabe:
	challenge "Anime Babe";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having beaten and dealt with the anime babe, you head over to the wall behind the desk and pluck the noh mask off the wall. It is a porcelain mask depicting the stylized face of a geisha girl. The expression is one of faint amusement or coy playfulness. Grabbing some paper from the waste bin, you bundle some padding around it and pack it away safely. Hopefully Nermine will be satisfied with this and you'll be able to get the key. From thinking of the key, your mind drifts to Hayato and his muscly figure, looking forward to enjoying some fun with him once you can get him out of the restraint.";
		now HP of Hayato is 14;
		now Resolution of Noh Mask is 1; [Defeated Anime Babe, Got Mask]
		now Noh Mask is resolved;
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After the anime babe's had her fun with you, she splays out across the desk and gives a satisfied moan. 'Oh, that was a wonderful scene. Certainly a fine replacement for the ninja one. Now, was that all you came here looking for?' Still recovering from the raw, lustful sex, you point up to the mask, saying that you need it. She smiles says that you can take it as payment for such a good adult-action episode.";
		say "     Under the effects of your recent contact with her, that makes more sense to you than perhaps it ought to. But regardless, you get up and take the noh mask from the wall. It is a porcelain mask depicting the stylized face of a geisha girl. The expression is one of faint amusement or coy playfulness. Grabbing some paper from the waste bin, you bundle some padding around it and pack it away safely. Hopefully Nermine will be satisfied with this and you'll be able to get the key. From thinking of the key, your mind drifts to Hayato and his muscly figure, looking forward to enjoying some fun with him once you can get him out of the restraint.";
		now HP of Hayato is 14;
		now Resolution of Noh Mask is 2; [Lost to Anime Babe, Got Mask]
		now Noh Mask is resolved;
	else:
		say "     Fleeing from the buxom woman, you dash back down the hall. As you run, you can hear the pouting. 'Oh, who am I going to have my big finale scene with now?' If you're to get the noh mask you wanted, you'll have to try again later.";
		now HP of Hayato is 13;
	now fightoutcome is 0;

Table of GameEventIDs (continued)
Object	Name
Oni Lair	"Oni Lair"

Oni Lair is a situation. Oni Lair is inactive. The level of Oni Lair is 9.
The sarea of Oni Lair is "Capitol".
when play begins:
	add Oni Lair to badspots of guy;
	add Oni Lair to badspots of hellspawn;

instead of resolving Oni Lair:
	if debugactive is 1:
		say "DEBUG -> HP of Hayato: [HP of Hayato] <- DEBUG[line break]";
	if HP of Hayato is 19:
		say "     As your exploration takes you towards a collapsed office tower, you notice several odd things about it. The building has fallen onto its side and is largely ruin, having taken out several other buildings during its fall. This isn't too strange in and of itself, as several skyscrapers in this area were similarly knocked down during the eruption and quake, but the first few floor are mostly intact... you think. It is difficult to be certain, as it appears that concrete rubble has been piled up in front of the windows. Whether this was done to fortify the building or to block outside scrutiny is unclear, but it definitely would have taken an exceptional feat of strength to do so.";
		say "     Since the building fell forward, the front entrance is blocked and buried by the tower's rubble. Knowing there has to be a way in since it's sealed up from the inside, you start to circle around the building in search of it. As you move around the back, a disturbing sight comes into view. The parking garage ramp has been converted into a gruesome entrance, lined with skulls (human and otherwise) on poles and littered with scraps of bones and cloth. The yawning mouth into darkness is like the cave of some monster's lair. Realizing what you've found is probably the lair of the oni creatures, you start to back away quickly, hoping you can get away unnoticed.";
		WaitLineBreak;
		let bonus be (( perception of player minus 10 ) divided by 2 );
		let fbonus be 0;
		if "Bad Luck" is listed in feats of player, decrease fbonus by 2;
		if "Curious" is listed in feats of player, decrease fbonus by 1;
		if "Wary Watcher" is listed in feats of player, increase fbonus by 1;
		if "Stealthy" is listed in feats of player, increase fbonus by 1;
		if "Experienced Scout" is listed in feats of player, increase fbonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]+[fbonus]: [dice + bonus + fbonus]: ";
		if bonus + dice > 15:
			say "     As you're slipping away from the building, your suspicions are confirmed when you look behind you to see one of the red ogres emerging from an alleyway. Taking cover among the rubble, you wait for it to move past and descend into its lair before making your escape.";
			increase score by 10;
			increase morale of player by 1;
		else:
			say "     As you're slipping away from the building, you are too focused on the cavernous entrance. You end up moving into full view of a red oni emerging from an alleyway on its way back to the lair. The demon ogre grins evilly at the prospect of one last victim before returning to its cave-like lair.";
		challenge "Red Oni";
		if fightoutcome >= 10 and fightoutcome <= 19:				[WIN]
			say "     Defeating the oni sends it back into its lair, snarling angrily. Knowing this will bring the wrath of its brethren upon you, you make haste to get away from here as quickly as possible. Now that you know where their lair is, you should probably talk to Hayato about it.";
		else if fightoutcome >= 20 and fightoutcome <= 29:		[LOSE]
			say "     After the red oni is done with you, he drags you to the entrance of the lair. At first, you fear (anticipate?) being dragged inside and assaulted by the whole of oni tribe, but are instead tied up to a large piece of rubble just outside. Your sticky, messy body is left there for its brethren to use as they return and as a warning to others who get too curious about the ruins. Once your captor is out of sight inside, you struggle against your bonds and are thankfully able to free yourself before any more of those creatures come home and find you there.";
		else:													[FLEE]
			say "     You manage to slip past the red oni and make a break for it. It snarls angrily at you, but rather than pursue you, it turns and rushes towards the ruins. It calls for its brethren to take up the hunt as you reach the alley and push yourself all the harder to get away. You don't stop running until you get all the way back to the area around those rusty walkways.";
			move player to Rusty Walkways;
		now HP of Hayato is 20;
	else:
		say "ERROR-Hayato-[HP of Hayato]E: This event (Oni Lair) should be closed at this time!";
	now Oni Lair is resolved;


Section 5 - Assaulting the Oni Lair

to say onilairassault:
	now inasituation is true;
	say "     Your journey back to the devastated area around the Capitol building is thankfully peaceful, probably having the formidable oni by your side has encouraged the other creatures to keep their distance. As you walk with Hayato, you try to talk with him to encourage him along, but he remains nervous. It is clear that he's still worried about his self-control. Knowing that he will need to be braver if this is to succeed, you tell him to man up and just draw strength from his new body. Continuing to hide from it won't help him now and that he'll need to fight them - oni to oni. He grumbles a little at this, but nods. With further encouragement, he does his best to stand tall by your side as you march up to the gates of the oni lair.";
	say "     The entrance to the oni lair is foreboding, with the grisly signs of the creature's warning totems on display before it. But added to that are a pair of muscled oni just inside. Clearly standing guard, they snarl and march out as you both arrive. They growl and laugh roughly as they emerge.";
	WaitLineBreak;
	say "     'What is this, another of our kind come to join the Great Oni's clan? You are right to come here. The clan grows strong and soon we will spread and crush the gnats of this city,' he laughs, speaking to Hayato.";
	say "     'Yes, they are right to fear our wrath and shall fall before us. Join us and share in the spoils,' the other adds.";
	say "     'And you bring an offering for us - a toy to play with.'";
	say "     'Or perhaps a meal,' the second suggests, eyeing you with a more mundane and deadly hunger.";
	say "     Hearing you threatened, something snaps in Hayato and he growls. 'No, this is my friend. You will not harm [if player is female]her[else]him[end if], or anyone!' And with that, he's charging forward, club raised. You rush to join him in battle, each taking on one of the guards.";
	[***]
	say "     'It's too bad the Great Oni and the rest of the clan are out on a picnic. Still, we can more than kick your asses.' 'Yeah!'";
	say "[bracket]Full version of Oni Lair to come later. Enjoy step 1 for now. - the Mgmt[close bracket][line break]";
	WaitLineBreak;
	now HP of Hayato is 97;
	challenge "Red Oni";
	if fightoutcome >= 10 and fightoutcome <= 19:				[WIN]
		say "     Your final blow causes your foe to stumble back, slumping against one of the boulders of rubble. Knocking its head against the concrete, it falls unconscious. Looking over to check on your companion, you find Hayato having already beaten his foe. Not stopping there, Hayato has the defeated oni pinned with his face to the ground and his meaty ass in the air. He's giving the guard a thorough plowing, driving his throbbing rod into his ass again and again. The creature growls angrily, but he's also quite hard and panting as that thick, crimson cock fucks him hard.";
		say "     Seeing you done with your foe, your companion slaps the oni's ass. 'Nggg. Get over here and [if player is male]stuff this fool's mouth[else]put this fool's mouth to use[end if].' The sight of Hayato allowing himself to let loose and take a dominant role is quite arousing.";
		say "     [bold type]Shall you join him in teaching this brute a hard lesson?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			if player is male:
				LineBreak;
				say "     Seeing how this is the one who threatened to eat you, you feel it only fitting that he be force-fed your [cock of player] cock. Grabbing him by the horns, you pull his face to your crotch. When a particularly hard thrust from Hayato has him cry out, you thrust your [cock size desc of player] shaft into his mouth[if cock length of player > 9] and down his throat. Your would-be assailant sets himself to licking and sucking your [cock of player] rod right away, though he continues to growl and struggle. And from the way he's hard and drooling precum steadily, it's clear the creature is more upset about having lost than about the fucking itself.";
				say "     'Show some respect to your betters and ride that cock like I know you want it, you slut,' Hayato growls as he reaches around to pump at the demon ogre's drooling erection. 'I want to see you sucking harder.' Between the assault on both fronts and that hand stroking him off, the oni's struggles cease quickly and his hips press all the harder against Hayato's, welcoming each thrust from the increasingly dominant oni.";
				say "     This release of Hayato's inner oni leads to quite the powerful release from the big guy, his oversized balls pulsating as they unleash blast after blast of thick semen into his foe. When this causes the oni between you to cum as well (his load barely half what Hayato can produce), Hayato mocks him again for being a weak slut before grabbing your head and pulling your face forward into a forceful kiss. His tongue delves into your mouth and this last thing is enough to push you over the edge into orgasm, feeding your hot [cum load size of player] load down the demon ogre's throat. When you're all finished, the oni beneath you is left too worn out from his struggles and the buggering and passes out.";
			else:
				LineBreak;
				say "     Seeing how this is the one who threatened to eat you, you feel it only fitting that he be forced to eat out your [cunt size desc of player] cunt. Grabbing him by the horns, you pull his face to your crotch. When a particularly hard thrust from Hayato has him cry out, you grind your pussy against his face, leaking your juices onto his tongue. Your would-be assailant sets himself to licking and sucking your juicy snatch right away, though he continues to growl and struggle. And from the way he's hard and drooling precum steadily, it's clear the creature is more upset about having lost than about the fucking itself.";
				say "     'Show some respect to your betters and ride that cock like I know you want it, you slut,' Hayato growls as he reaches around to pump at the demon ogre's drooling erection. 'I want to see you licking faster.' Between the assault on both fronts and that hand stroking him off, the oni's struggles cease quickly and his hips press all the harder against Hayato's, welcoming each thrust from the increasingly dominant oni.";
				say "     This release of Hayato's inner oni leads to quite the powerful release from the big guy, his oversized balls pulsating as they unleash blast after blast of thick semen into his foe. When this causes the oni between you to cum as well (his load barely half what Hayato can produce), Hayato mocks him again for being a weak slut before grabbing your head and pulling your face forward into a forceful kiss. His tongue delves into your mouth and this last thing is enough to push you over the edge into orgasm, soaking the other demon ogre's face in your juices. When you're all finished, the oni beneath you is left too worn out from his struggles and the buggering and passes out.";
		else:
			LineBreak;
			say "     Hayato gives a bit of a growl when you don't come over to join him and focuses his disappointment into fucking him fallen foe all the harder. Grabbing him by one of the horns, the demon ogre's made to look at you. 'You see that, scum. [if player is female]She[else]He[end if] doesn't even want to have anything to do with a wretch like you.' The defeated guard growls and snarls back even as he's buggered roughly by the more powerful oni. And from the way he's hard and drooling precum steadily, it's clear the creature is more upset about having lost than about the fucking itself.";
			say "     'Show some respect to your better and ride that cock like I know you want it, you slut,' Hayato growls as he reaches around to pump at the demon ogre's drooling erection. Between being fucked by Hayato and that hand stroking him off, the oni's struggles cease quickly and his hips press all the harder against Hayato's, welcoming each thrust from the increasingly dominant oni.";
			say "     This release of Hayato's inner oni leads to quite the powerful release from the big guy, his oversized balls pulsating as they unleash blast after blast of thick semen into his foe. When this causes the oni between you to cum as well (his load barely half what Hayato can produce), Hayato mocks him again for being a weak slut before grabbing your around the waist and pulling you into a forceful kiss. His tongue delves into your mouth even as he floods his foe's ass with his hot load. Once the victorious oni's done and pulled his cock free, the oni beneath him is left too worn out from his struggles and the buggering and passes out.";
[		***beat them, adventure continues.";]
		WaitLineBreak;
		say "     When you and Hayato venture inside, you find that the two guards were indeed telling the truth. It seems the rest of the oni aren't here right now. There's the remains of sandwich fixing, open packets of drink mix and the plastic wrapper for a picnic basket. You're strangely disappointed at having missed them, but relieved as well. Certainly Hayato's seeming much more confident for having gone face to face with his infection. You gather up the remaining supplies you can salvage from the mess and head back to the bunker together.";
		[*** say "     Upon your return, Hayato pulls you into his arms and gives you another forceful kiss. 'Mmm... I'm feeling so much better after all that. That felt so good to take charge like that and take what I wanted.' He gives your ass a firm squeeze and grinds his crotch against your side, throbbing with growing need. 'From now on, we'll do things my way,' he adds with a lustful growl.";***]
		say "     Upon your return, Hayato pulls you into his arms and gives you another lustful kiss. 'Mmm... I feel much better for that. It felt so good to take charge like that and take what I wanted for a change.' He gives your ass a pat and grinds his crotch against your side with a smile. 'Perhaps I might try it again sometime soon.'";
		say "[bracket]Dominant Hayato content to come later. Please enjoy the normal scenes for now. - the Mgmt[close bracket][line break]";
		increase carried of food by 2;
		increase score by 20;
		now lastfuck of Hayato is turns + 8;
[		now HP of Hayato is 50;***]
		now HP of Hayato is 30;
[	***temporarily resetting from 30 to 20 during save word - remove that once fully live ]
	else if fightoutcome >= 20 and fightoutcome <= 29:		[LOSE]
		say "     While Hayato was winning his fight against the one oni, getting double-teamed after you've gone down becomes too much for him and he's forced to the ground. You're pulled over beside him and the two guards take turns fucking you both. After that, you and Hayato are made to fuck each other for the amusement of the other two guards. By this point, you've both lost your senses, becoming more and more into monstrous oni like the two big, sexy ogres spraying their seed across your rutting bodies.";
		say "[onilairlost1]";
	else:													[FLEE]
		say "     You turn to make your escape and head as quickly as you can away from the oni lair. Glancing back, you see Hayato look at you in surprise as you flee. Taking advantage of the opportunity, his weakened foe leaps atop him and they start wrestling on the ground. The third oni, having lost his opponent, joins in with a growl. Taking one last look from the alleyway, you watch as the fight concludes and turns into a roughhousing threesome. You're no longer able to tell which of them is which. Regardless, it's clear that Hayato's lost himself to the infection.";
		now HP of Hayato is 98;
		now Hayato is nowhere;
		move player to Rusty Walkways;
	now inasituation is false;


to say onilairlost1:
	now HP of Hayato is 96;
	setmonster "Red Oni";
	choose row monster in Table of Random Critters;
	now tailname of player is "Red Oni";
	now facename of player is "Red Oni";
	now skinname of player is "Red Oni";
	now bodyname of player is "Red Oni";
	now cockname of player is "Red Oni";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	if libido of player < libido entry, now libido of player is libido entry;
	WaitLineBreak;
	end the story saying "Reduced to wild oni, you join the Great Oni's clan.";
	now battleground is "void";
	WaitLineBreak;
	now skipturnblocker is 1;
	follow the turnpass rule;
	stop the action;

to unleashredoni:
	setmonster "Red Oni";
	choose row monster from the Table of Random Critters;
	if name entry is "Red Oni":
		now area entry is "Capitol";
		now non-infectious entry is false;

[ HP of Hayato                ]
[ 0 = Not met                 ]
[ 1-5 = Not yet friendly      ]
[ 6 = Introduced              ]
[ 7-9 = Seduction attempts    ]
[ 10 = Chastity belt revealed ]
[ 11 = Talked to Nermine      ]
[ 12 = Ninjas incomplete      ]
[ 13 = Anime Babe incomplete  ]
[ 14 = Noh mask obtained      ]
[ 15 = Chastity key obtained  ]
[ 16 = Unlocked and library   ]
[ 17 = Red Oni w/Hayato saved ]
[ 18 = 2nd reminder           ]
[ 19 = Discussed Red Oni      ]
[ 20 = Found Oni Lair         ]
[ 21 = Discussed Oni Lair     ]
[...]
[ 30 = No to assault          ]
[...]
[ 50 = Dominant Hayato        ]
[...]
[ 96 = Defeated @ Oni Lair    ]
[ 97 = @ Red Oni Lair         ]
[ 98 = Hayato abandoned       ]
[ 99 = Hayato attacked        ]
[ 100 = Red Oni w/o Hayato    ]

[ lust of Hayato              ]
[ # player rec'd vaginal      ]

[ libido of Hayato            ]
[ # player rec'd anal         ]

[ HayatoHunger            ]
[ 0 = anal virgin             ]
[ 1 = had anal                ]

Hayato ends here.
