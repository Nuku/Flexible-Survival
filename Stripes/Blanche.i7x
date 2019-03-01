Version 2 of Blanche by Stripes begins here.
[Version 2.2 - Cowgirl scene added + mechanics tweaks + debug data]
"Adds a White Wolf named Blanche to the Flexible Survival game."

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Wolfrape	"Wolfrape"

Wolfrape is a situation. The level of Wolfrape is 16.
The sarea of Wolfrape is "Capitol".
when play begins:
	add Wolfrape to badspots of hermaphrodite;
	add Wolfrape to badspots of girl;
	add Wolfrape to badspots of furry;

Instead of resolving Wolfrape:
	say "     While searching the city, you hear sounds of both ecstasy and agony floating from a nearby alleyway. Cautiously, you approach and peer inside. An anthro white wolf female has been caught and pinned by one of the herm drakes. The demonic features of the reptile herm contrast the clean, pure coloration of the white wolf woman. The wolf's blouse is ripped into tatters as her captor's sharp claws digs into her shoulders to keep her restrained, leaving the wolf woman to only be able to pitifully to be spared as the dragon-creature drills into her from behind.";
	say "     You could try to help the poor wolf, but dare you face such a formidable creature? [if level of player < 10]It seems like a terribly vicious and dangerous beast. [end if]The lustful ebonflame drake continues thrusting, drilling its cock into her painfully, its excitement growing. If you plan to help her, you'd best do it now.";
	say "     [bold type]Shall you intervene?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		now blanchefight is true;
		say "     You charge into the alley, trying to take the large creature by surprise. It growls angrily at being interrupted mid-coitus and pulls painfully out of the wolf-woman. You manage a quick blow to the creature as it kicks its previous prey into the corner to retrieve later. The wolf is stunned for the moment, leaving you to face this monster alone.";
		challenge "Ebonflame Drake";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having defeated the formidable creature and driven it back into hiding, you rush over to the female wolf. She is still quite dazed from her assault, but mumbles some thanks as you help her to her feet. You consider taking her back with you, but are unsure how safe this unknown wolf could turn out to be. You are spared from the decision as she starts indicating directions for you to follow. She leads you to a partially ruined office building just a few blocks away. The entrance is buried in rubble, but there's a concealed back entrance to the five-story building which she unlocks.";
			move player to Office Den;
			now Office Den is known;
			WaitLineBreak;
			project the figure of Blanche2_icon;
			say "     Once safely concealed in the wolf's hidden den, she hugs you tightly and gives you a passionate kiss which surprises both of you. As if suddenly realizing what she's done, she takes a step back, blushing at her ears. 'Oh, I'm sorry. It's this... infection thing. I'm sure you know what it does to you. I am really thankful though for your help.' She brushes her fur nervously and, realizing that she's nude, grabs one of a few spare blouses she has folded on the bookcase. She slides it on, but doesn't bother to do it up after throwing you a quick glance.";
			say "     She grabs a can of ravioli from the shelf as well, pressing it into your hands. 'Please take this. I'd give you more, really, but it's about all I can spare right now. You were really brave to try and help me against that monster. I don't like going out there much because there are so many of them. You could... if you need somewhere safe to hide that is... maybe stay here... with me.' She speaks softly, but with obvious longing in her voice. Perhaps she's lonely and simply wants companionship, though from the way she's looking at you, perhaps she wants more.";
			now HP of Blanche is 1;
			increase carried of food by 1;
			increase score by 20;
			now battleground is "void";
			now Resolution of Wolfrape is 1;	[Saved Blanche]
		else if fightoutcome >= 20 and fightoutcome <= 29:
			say "     After the draconic beast has suitably punished you for the interruption, she heads back to her original prize and pushes her over onto all fours. The female wolf moans weakly, but cannot prevent the drake from mounting her again. The dragon's lustful moaning starts up again, but the wolf's whimpers and moans of pain are soon silenced as the drake clamps the wolf's muzzle shut. Holding her muzzle upwards, the powerful beast kisses and licks at the wolf's face, moaning how lovely she'll look filled with her whelps. The wolf's eyes go wide at this, but she's too overwhelmed by the mix of pain and pleasure from the rough mating to do anything. The dragon creature growls loudly and lustfully as it drives hard into its prey one last time, causing the wolf to yelp then struggle, then become very still. The lizard cock glows from within the wolf's belly and soon you can tell the canine is being filled with molten sperm. The white wolf's belly expands as it is filled, and glows red as its new cargo of life shine through her skin and fur. Once the wolf is full and bloated with the drake's cum, the dark creature pulls out and starts dragging the wolf away with her. When you recover enough to get up, you get away from this spot as quickly as you can.";
			now Resolution of Wolfrape is 2;	[Lost Blanche to Ebonflame Drake]
		else if fightoutcome > 30:
			say "     Unable to stand up to the powerful creature's assault, you turn and run away. The angered drake sends a wave of fire after you, burning the stray trash in the alley before pouncing back on her original prey. You can hear the sounds of lust. The cries of pain start back up again, but they are quickly silenced, probably by a large, clawed hand around the wolf's muzzle. The sounds fade away as you continue further away, though you do hear loud roar of the beast cumming into its prize.";
			now Resolution of Wolfrape is 3;	[Ran and left Blanche to Ebonflame Drake]
	else:
		say "     Deciding not to intervene, you watch as the wolf moans pitifully, an expression of growing rapture on her face as the drake thrusts into her from behind. The dragon growls and slams her prick home causing the wolf to yelp then struggle, then become very still. The lizard cock glows from within the wolf's belly and soon you can tell the canine is being filled with molten sperm. The white wolf's belly expands as it is filled, and glows red as its new cargo of life shine through her skin. Once the wolf's been filled, the drake grabs her, dragging her off somewhere. As quietly as you can, you back away.";
		now Resolution of Wolfrape is 99;	[Did not try to save Blanche]
	now blanchefight is false;
	now wolfrape is resolved;


Section 2 - Office Den

Table of GameRoomIDs (continued)
Object	Name
Office Den	"Office Den"

Office Den is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Office Den is "[officedendesc]".

the scent of Office Den is "[blancheupdate]Unlike the air outside, it's mostly free of the smell of soot and ash. There is a strong, lupine smell in the air from Blanche[if HP of Blanche >= 7] and the others[end if]."

to say officedendesc:
	say "[blancheupdate]";
	if HP of Blanche < 7:
		say "     While the main floor is charred and ravaged, a service door leads to an undamaged basement office area. While half of the basement holds the maintenance area for the small office building, the other half was converted into office space. It looks like a couple of the desks and filing cabinets which were once here have been removed, making space for Blanche to set up her hidden living area. There's some motivational posters and rather bland pieces of business art which the white wolf hasn't bothered to remove, or has left in an attempt to keep her spirits up. She's set up a small mat she's found as her bed and stored her few supplies on a shelf. While somewhat modest, at least it's secure and well camouflaged.";
	else if HP of Blanche is 7:
		say "[blanche_pups_intro]";
	else if HP of Blanche < 11:
		say "     While half of the basement holds the maintenance area for the small office building, the other half was converted into office space. It looks like a couple of the desks and filing cabinets which were once here have been removed, making space for Blanche and the other wolves to set up their hidden living area. There's some motivational posters and rather bland pieces of business art which have remained on the walls. In addition, some mattresses and sleeping mats have been laid out on the floor, the largest of which is for Blanche. Some supplies have been laid out on a nearby shelf, there being more than before.";
		say "     Along with the wolfess, there's another three wolves milling about and then the fourth large one standing guard at the upstairs door. While they seem respectful to you and don't give you any trouble, it is their mother that they clearly follow.";
	else:
		say "     While half of the basement holds the maintenance area for the small office building, the other half was converted into office space. It looks like a couple of the desks and filing cabinets which were once here have been removed, making space for Blanche and the other wolves to set up their hidden living area. There's some motivational posters and rather bland pieces of business art which have remained on the walls, though some new items seem to have appeared as well. In addition, some mattresses and sleeping mats have been laid out on the floor, including an actual small bed set up for Blanche. The nearby shelf is well-stocked with supplies gathered by the industrious wolves[if blanche is pregnant] for their alpha mother[end if].";
		say "     The ground floor is not exempt from these changes either, the wolves having done some work to clean it up inside and make it more livable. From the exterior, it seems in as bad shape as before, but concealed fortifications and barriers have been added inside as well as more hidden guards. With their growing numbers, some of the wolves now reside upstairs.";
		say "     In addition to Blanche and Sturm (the eldest male and the primary on guard), there seems to be at least ten or so other wolves around here at any given time. You can't be certain of their exact numbers at this point, since you do notice some occasionally coming and going from the place. Some are certainly older and others are from the most recent litters.";


Section 2 - Blanche the Wolf

Table of GameCharacterIDs (continued)
object	name
Blanche	"Blanche"

Blanche is a woman. Blanche is in Office Den.
The description of Blanche is "[blanchedesc]".
The conversation of Blanche is { "Thanks." }.
the fuckscene of Blanche is "[sexwithBlanche]".
the scent of Blanche is "[blancheupdate]She smells of wolf and half-hidden arousal."
The icon of blanche is Figure of Blanche1_icon.

libido of Blanche is usually 255.
lust of Blanche is usually 255.
blanchetalk1 is a truth state that varies. blanchetalk1 is usually false.
blanchetalk2 is a truth state that varies. blanchetalk2 is usually false.
blanchetalk3 is a truth state that varies. blanchetalk3 is usually false.



to say blanchedesc:
	say "[blancheupdate]";
	if HP of Blanche < 3:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She has a [if turns / 8 is even]pastel blue blouse[else]pink blouse[end if] draped over her shoulders which she hasn't bothered to button up.";
	else if HP of Blanche < 5:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, letting her sexy body be on display for you, a tantalizing sight that makes you look forward to playing with her some more.";
	else if HP of Blanche is 5:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. Her belly has a little added roundness to it, showing that you've knocked up the wolfess. She seems quite pleased about this turn of events, gently caressing her tummy from time to time. She doesn't bother to wear anything now, letting her sexy body be on display for you.";
	else if HP of Blanche is 6:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. Her belly has added considerable roundness to it, clear signs of an advancing pregnancy showing you've knocked up the wolfess. She seems quite pleased about this turn of events, gently caressing her tummy from time to time. She doesn't bother to wear anything now, letting her sexy body be on display for you. Rather than struggle to move around much in her gravid state, she typically remains resting on her sleeping mat.";
	else if HP of Blanche is 7:
		say "     Having stepped out for a while to do a quick patrol around the area at Blanche's behest, you return to find considerably more activity than when you'd left her.";
		say "[blanche_pups_intro]";
	else if HP of Blanche is 8 or HP of Blanche is 11 or HP of Blanche is 14:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While she has gotten a little fuller-figured after having had [if HP of Blanche is 7 or HP of Blanche is 8]her litter[else if HP of Blanche is 11]a couple of litters[else]several litters[end if], she's just as sexy and has become quite the MILF. She also seems much happier and less frightened now that she has her loyal pack to keep her company and protect her. The white-furred wolf usually lounges around while [if HP of Blanche is 7 or HP of Blanche is 8]directing the others as to[else]teaching the younger pups about[end if] hunting and supply gathering.";
	else if HP of Blanche is 9 or HP of Blanche is 10:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While she has gotten a little fuller-figured after having had her litter, [if HP of Blanche is 9]you can still tell she's got another on the way thanks to the swell in her tummy[else if HP of Blanche is 10]her belly is once again round and heavy with a rapidly-advancing pregnancy[end if]. She seems quite happy these days, especially with another litter of pups on the way and with her loyal pack to keep her company and to protect her. The white-furred wolf usually lounges on her mattress while directing the others as to hunting and supply gathering.";
	else:
		say "     Blanche is an anthropomorphic female wolf with white fur. She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail. She doesn't bother to wear anything now, not caring to wear clothes anymore. While gained a little weight after having had a few litters, she's still quite hot and has become quite the MILF of a wolf. And with another litter [if HP of Blanche is 13]well [end if]on its way, as can be seen from the [if HP of Blanche is 13]large [end if]swell to her tummy, she couldn't be happier to add to the loyal pack keeping her company and protecting her. These days, the white-furred wolf usually lounges on her bed while teaching the younger pups about hunting and supply gathering.";


Instead of conversing the Blanche:
	say "[blancheupdate]";
	if HP of Blanche is 0:
		say "ERROR-Blanche-0T: Attempting to correct.";
		now HP of Blanche is 1;
		now Wolfrape is resolved;
		now Office Den is known;
	else if HP of Blanche is 1:
		say "     'I was here working late with a few others on a big project late into the night. At first, we hadn't noticed something was going on, but suddenly the radio station's broadcast was cut off with a strange announcement about some kind of emergency and how everyone should stay hidden in their homes until rescue arrived. We were really confused and went outside to see what was going on.'";
		say "     Blanche pauses for a moment before continuing. 'And that's when it all went crazy. The ground started to shake and a few moments later, there was a blast of fire and noise as a huge cloud blocked out the night sky. Buildings started to crumble around us. Luckily, we'd stepped far enough from the entrance to not be caught under it when the awning collapsed. Fire started to fall from the sky, wrecking more buildings. And that's when we started to see the creatures running around in fear. All of it was just too much and we freaked out. I tried to get the others to head back inside, but they wanted to get home and find their families. Some of them promised to come back, but they never did. I knew it wasn't safe out there. I've been hiding out here ever since.'";
		say "     She moves a little closer to you, pressing herself to your side. 'I'm really glad you found me when you did. It's been getting more difficult dealing with these... well, it's been getting more difficult around here. It's just much better having a friendly face around. Someone to keep me company.' She blushes a little at her ears as she says this, but her body rubs against you all the more. You can smell the scent of her arousal stronger in the air.";
		now HP of Blanche is 2;
	else if HP of Blanche is 2:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things. After I came back from one of those trips, I started to feel funny. It started slowly at first, but soon I was a wolf. I was a little scared before, but I'm not really sure why. I think my new body's much prettier.'[or]She slides up beside you. 'Will you stay for a while and keep me company?' she asks softly, but with a longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	else if HP of Blanche is 3:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things. After I came back from one of those trips, I started to feel funny. It started slowly at first, but soon I was a wolf. I was a little scared before, but I'm not really sure why. I think my new body's much prettier.'[or]She slides up beside you. 'It was really nice to snuggle up to you, hon. Mmm... I do still need a nice cock to stuff me, but it certainly did help,' she says with a moan of longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	else if HP of Blanche is 4:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things. After I came back from one of those trips, I started to feel funny. It started slowly at first, but soon I was a wolf. I was a little scared before, but I'm not really sure why. I think my new body's much prettier.'[or]She slides up beside you. 'It felt so nice to finally have someone fuck me properly. You should breed me again soon,' she moans with longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	else if HP of Blanche is 5 or HP of Blanche is 6:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'll glad for the company once my pups are here,' she says, caressing her [if Blanche is gravid]rounded [end if]tummy.[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I'm glad I gathered those supplies earlier. I'd rather not have to go outside with pups on the way.'[or]She runs a paw sensually along her body. 'Look at what you've done, you sexy stud. Knocked up the poor wolf girl,' she teases.[or]She runs a paw over her [if Blanche is gravid]heavily [end if]rounded tummy. 'It's a little strange knowing a new person growing in here. It feels kind of nice though,' she adds with a contented sigh.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	else if HP of Blanche is 7:
		say "     Having stepped out for a while to do a quick patrol around the area at Blanche's behest, you return to find considerably more activity than when you'd left her.";
		say "[blanche_pups_intro]";
	else if HP of Blanche is 8:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad I've got you and my lovely pups to keep me company.'[or]'With my cubs here, there's a lot more to do. Thankfully, they're strong and willing to help their mommy out. This place should be much more livable in no time.'[or]'Since we've got extra mouths to feed, my pups are working hard to hunt and scavenge for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]She slides up beside you. 'Being pregnant was such a thrill. Having pups growing inside me just felt right. You should breed me again soon,' she moans with longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[or]'Being a mother makes me feel so fulfilled.'[or]'You gave me such brave, strong pups. I hope you'll help me make a few more,' she says coyly.[at random]";
	else if HP of Blanche >= 8 and blanchetalk1 is false and a random chance of 1 in 3 succeeds:
		say "     'I feel so much safer with my pups here to protect me,' Blanche says, reaching over to give a nearby on a scritch on the ears. He pants happily, telling his mother he's very happy to help her out.";
		now blanchetalk1 is true;
	else if HP of Blanche >= 9 and blanchetalk2 is false and a random chance of 1 in 3 succeeds:
		say "     One of the other wolves comes down the stairs with additional supplies in a cardboard box. After dutifully storing them on the shelf, he's given a loving hug from his [if HP of Blanche > 10]pack [end if]mother.";
		now blanchetalk2 is true;
	else if HP of Blanche is 9 or HP of Blanche is 10:
		say "     [one of]'I was starting to get really lonely hiding here all alone. I'm glad I've got you and my lovely pups to keep me company.'[or]'With my cubs here, there's a lot more to do - especially since I've got more pups on the way,' she adds, caressing her [if Blanche is gravid]rounded [end if]belly. 'Thankfully, they're strong and willing to help their mommy out. This place should be much more livable in no time.'[or]'Since there will be extra mouths to feed, my pups are working hard to hunt and scavenge for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]'Being pregnant is such a thrill. Just knowing those pups are growing inside me just feels right.'[or]She runs a paw sensually along her body. 'Look at what you've done, you sexy stud. Knocked up the poor wolf girl again,' she teases.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[or]'Being a mother makes me feel so fulfilled.'[or]'I'm so proud of these brave, strong pups you gave me.'[at random]";
	else if HP of Blanche is 11:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again.'[or]'Things are looking much better hew now that I've got all these willing pups to help their mommy by fixing it up. This place is getting much more livable for all of us now.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]She slides up beside you. 'It felt so good to be pregnant again. Just knowing I've got more lovely cubs growing in me felt good. You should breed me again soon so I can enjoy that feeling again,' she moans with longing in her voice.[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'You gave me such brave, strong pups. I hope you'll help me make a lots more,' she says coyly.[at random]";
	else if HP of Blanche >= 12 and blanchetalk3 is false and blanchetalk1 is true and blanchetalk2 is true and a random chance of 1 in 3 succeeds:
		say "     You comment to Blanche about the number of different wolves you've been seeing around the place lately and how you've been having trouble keeping track of them all. 'Oh, they're not _all_ mind. Just most of them. My pups have come across a few other survivors while out on patrol or on scavenging runs. Since it's much safer here with us, they've come and joined us as members of the pack. We lose a few pups when they go out, so it all balances out.'";
		now blanchetalk3 is true;
	else if HP of Blanche is 12 or HP of Blanche is 13:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again.'[or]'With my cubs here, there's always a lot to do - especially with more pups on the way,' she adds, caressing her [if Blanche is gravid]rounded [end if]belly. 'Thankfully, they're strong and willing to help their mommy by fixing it up. This place is getting much more livable for all of us now.'[or]'Some of the wolves are working on cleaning things upstairs to make sure there's plenty of room for everyone in our growing pack.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]'Being pregnant is such a thrill. Just knowing those pups were growing inside me just feels right.'[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'I'm so proud of these brave, strong pups. Thanks for helping me start this pack-family of mine.'[at random]";
	else:
		say "     [one of]'I have plenty of lovely cubs now to help keep me company. Now I won't be lonely ever again.'[or]'This place is getting much more livable thanks to all these hardworking wolves. They're all such good pups.'[or]'Some of the wolves are working on cleaning things upstairs to make sure there's plenty of room for everyone in our growing pack.'[or]'Since we've got extra mouths to feed, several of my pups are out hunting and scavenging for our little pack.'[or]'I feel much safer now that I've got my big, strong pups here to help.'[or]She slides up beside you. 'It felt so good to be pregnant again. Just knowing I've got more lovely cubs growing in me felt good. You should breed me again soon so I can enjoy that feeling again,' she moans with longing in her voice.[or]'Being a mother for so many lovely pups is really fulfilling.'[or]'You gave me such brave, strong pups. I hope you'll help me make a lots more,' she says coyly.[at random]";


to say blanche_pups_intro:
	say "     You are met by a large, intimidating white wolf standing inside the rear foyer to the office building, standing just inside the back door. He stands with his thick arms crossed and gives you a cold glare as he blocks the entrance briefly before stepping aside and letting you enter. Concerned for Blanche, you rush down the stairs.";
	say "     You find three more new white wolves in the basement office area, though not as big and burly as the one upstairs in the basement office area. Blanche is there as well and seems safe and sound. If anything, she's happier and more relaxed than ever. She busy directing the other wolves around, getting them to reorganize some of the furniture to make more space, when she notices you.";
	say "     'My darling. You're back! Come meet my lovely pups. You met Sturm already. He's the one on guard duty. Such a big, brave boy. Mamma's favorite.' Blanche is quite cheerful and introduces the three other pups to you. They nod respectfully to you, but they clearly defer to their mother.";
	now HP of Blanche is 8;
	if debugactive is 1:
		say "DEBUG| Post-intro values:[line break]";
		say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";


to say sexwithBlanche:
	say "[blancheupdate]";
	if HP of Blanche is 0:
		say "ERROR-Blanche-0T: Attempting to correct.";
		now HP of Blanche is 1;
		now Wolfrape is resolved;
		now Office Den is known;
	else if HP of Blanche is 1:
		say "     That's awfully forward of you. Perhaps you should talk to her a little first.";
	else if lastfuck of Blanche - turns < 6:
		say "     'I need a little more time to recover, hon.'";
	else if player is neuter:
		say "     You're ill-equipped to play with the white wolf right now.";
	else if HP of Blanche < 7:
		now lastfuck of Blanche is turns;
		if HP of Blanche is 2:
			say "     Blanche blushes a little at your offer, but presses herself to you, kissing you passionately. 'Oh, I was so hoping you'd stay to [if player is male]breed me[else]keep me company[end if]. My body's been needing it so bad lately. I think that's how that beast found me.' She hugs you tighter, shuddering a little. 'But now you're here to help me with [if player is male]my heat[else]it[end if].'";
		else if HP of Blanche > 2:
			say "     Blanche smiles and kisses you passionately, clearly eager for more fun. 'I'm so glad you've come back for more. I just need it so bad,' she moans, running her paws over your body. She nuzzles along your neck, licking and nibbling softly.";
		if player is male:
			if HP of Blanche < 4 or a random chance of 2 in 3 succeeds:
				say "[sexwithBlanche01]"; [vaginal]
				if HP of Blanche < 4, now HP of Blanche is 4;
			else:
				say "[sexwithBlanche03]"; [blow job]
		else:
			if a random chance of 1 in 2 succeeds:
				say "[sexwithBlanche05]"; [F/F 69]
			else:
				say "[sexwithBlanche06]"; [F/F fingering]
			if HP of Blanche < 3, now HP of Blanche is 3;
		if debugactive is 1:
			say "DEBUG| Post-sex values:[line break]";
			say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";
	else if HP of Blanche is 7:
		say "     Having stepped out for a while to do a quick patrol around the area at Blanche's behest, you return to find considerably more activity than when you'd left her.";
		say "[blanche_pups_intro]";
	else:
		say "     Approaching the sexy white wolf, you run a hand along her side and down to her rear. She smiles at you and wags her tail a little in response. She knows you're looking for some intimate fun and the [if Blanche is pregnant]pregnant[else]lovely[end if] MILF is more than happy to provide.";
		blanchesexmenu;


to blanchesexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if player is male and Blanche is not gravid:
		choose a blank row in table of fucking options;
		now title entry is "Missionary position";
		now sortorder entry is 1;
		now description entry is "screw the sexy wolfess";
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Doggy style position";
		now sortorder entry is 2;
		now description entry is "mount the sexy wolfess";
		if HP of Blanche >= 11:
			choose a blank row in table of fucking options;
			now title entry is "Cowgirl position";
			now sortorder entry is 3;
			now description entry is "mount the sexy wolfess";
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 5;
		now description entry is "receive a blow job";
		choose a blank row in table of fucking options;
		now title entry is "Titty fuck";
		now sortorder entry is 6;
		now description entry is "nestle your cock between those ivory tits and have fun";
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Mutual cunnilingus";
		now sortorder entry is 7;
		now description entry is "enjoy a lesbian 69";
		choose a blank row in table of fucking options;
		now title entry is "Mutual fingering";
		now sortorder entry is 8;
		now description entry is "finger one another to orgasm";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Missionary position":
					say "[sexwithBlanche01]";
				else if nam is "Doggy style position":
					say "[sexwithBlanche02]";
				else if nam is "Blow job":
					say "[sexwithBlanche03]";
				else if nam is "Titty fuck":
					say "[sexwithBlanche04]";
				else if nam is "Mutual cunnilingus":
					say "[sexwithBlanche05]";
				else if nam is "Mutual fingering":
					say "[sexwithBlanche06]";
				else if nam is "Cowgirl position":
					say "[sexwithBlanche07]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Blanche is turns;
	if debugactive is 1:
		say "DEBUG| Post-sex values:[line break]";
		say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";
	wait for any key;
	clear the screen and hyperlink list;


to say sexwithBlanche01:
	say "     The wolf femme leads you quickly over to her [if HP of Blanche < 7]sleeping mat[else if HP of Blanche < 11]mattress[else]small bed[end if], slipping your pack and clothes off before stretching out on it. She spreads her legs and runs her paws down her [if HP of Blanche > 7]MILFy [end if]body, playing with her tits before stroking her wet pussy in a rather wanton display[if HP of Blanche is 2]. 'Oh, I've been holding back for so long, but I've needed a good fuck ever since I changed.' She blushes a bit at her words, but spreads her precious flower open while eyeing your stiff erection[else if HP of Blanche is 3]. 'Oh, did you get that for me?' she moans as she eyes your new cock. 'I've been holding back for so long, but I've needed a good fuck ever since I changed.' She blushes a bit at her words, but spreads her precious flower open[else]. 'I want you to fill me again. My hot hole needs to be fucked again.' She smiles and licks her lips, driving a pair of fingers into her cunt in lustful anticipation[end if]. 'Mmm... come claim your prize bitch[if HP of Blanche > 7] again[end if], my sexy hero.'";
	say "     Needing no more invitation, you hop onto the mat and move atop the wanton wolf, running your hands over her body and breasts as she takes hold of your [cock size desc of player] [cock of player] [one of]erection[or]shaft[or]rod[purely at random] and guides it towards her dripping cunt[if cock length of player >= 36]. Given your huge girth, you take it very slow at first, pushing gently to slowly spread her vagina open. The lustful wolf howls in pleasure as you start sliding your enormous cock into her as her needy cunt stretches wide to take you in. Soon her belly is bulging more and more as you feed your cock into her. She rubs her paws over it, moaning in delight at being so full[else if cock length of player >= 24]. Given your huge girth, you take it slow at first, pushing gently to slowly spread her vagina open. The lustful wolf howls in pleasure as you start sliding your giant cock into her as her needy cunt stretches wide to take you in. She rubs her paws over the cute bump in her belly that your big cock stretches out[else if cock length of player >= 12]. Given your large size, you go slow at first, pushing into her gently to slowly spread her vagina open. The lustful wolf moans in pleasure as you start sliding your big cock into her as her needy cunt stretches to accommodate you. Soon you're buried in her hot, dripping hole and she's rubbing over her lower abdomen, feeling the firmness of your big cock buried inside her[else]. You ease yourself into her as her paws stroke your [cock size desc of player] cock and balls. The lustful wolf moans in pleasure as you bury your throbbing meat inside her hot, dripping hole. She rubs over her lower abdomen, enjoying the pleasure of having a sexy cock buried inside her[end if]. You move your hands up to her bosom, caressing her breasts and teasing her nipples as you begin thrusting steadily into your lupine lover, to her very obvious delight.";
	say "     Her paws move from her belly to your sides, caressing your hips before sliding lower to fondle your [short ball size] balls, moaning in pleasure[if cock width of player >= 12]. She pants and licks her lips in anticipation of the ample load you've got for her[end if]. Her inner walls pull and squeeze at your cock in such delightful ways as you fuck her. Leaning forward, you kiss the sexy wolf, inviting her long tongue to dive into your mouth and play against yours[if cock length of player >= 36]. Her paws return to the exposed length of your huge cock, stroking and caressing it to further please you, even urging you to push more into her, stretching her body out further around your massive meat[else]. Reaching behind you, she grabs your ass and squeezes, pulling you towards her[end if]. At her obvious urging, you start thrusting harder and faster, pounding away as the lustful wolf tilts her head back and howls in pleasure again and again as she orgasms. It soon becomes too much for you and you cum hard into her as well, [if cock width of player >= 12]flooding her womb with your hot seed[else]pumping your hot seed into her womb[end if].";
	say "     After you're spent, you slowly ease your shaft from her, making her moan softly[run paragraph on]";
	if cock width of player >= 20 and ( HP of Blanche < 5 or HP of Blanche is 8 or HP of Blanche is 11 or HP of Blanche is 14 ):
		say ". She rubs her paws over her tummy, bloated with your ample seed and smiles happily. 'Mmm... that feels so good. It's like I'm already full of pups,' she moans softly[run paragraph on]";
	else if cock width of player >= 20:
		say ". She rubs her paws over her tummy, bloated with your ample seed and smiles happily. 'Mmm... if I didn't already have pups on the way, that'd have knocked me up for sure,' she moans softly[run paragraph on]";
	else:
		say ". She rubs a paw over her sticky folds, spreading around the semen that's leaking out of her. 'Mmm... that's just what I needed,' she moans softly[run paragraph on]";
	say ". She gives you a big hug and an even bigger kiss before stretching out on her [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if]. 'Be sure to come back and breed me like that again soon,' she rumbles.";
	if HP of Blanche is 4 or ( HP of Blanche > 7 and Blanche is not pregnant and a random chance of 2 in 3 succeeds ):
		say "     Blanche remains resting on her [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if] for a while, smiling happily as she caresses her belly. You think nothing of it at first, but after a while you realize that [if cock width of player >= 20]the bulge from your semen's not fully disappeared[else]her tummy's showing a small bulge now[end if]. You've knocked up the white wolf[if HP of Blanche > 4] again[end if]!";
		if HP of Blanche is 14:
			now HP of Blanche is 12;
		else:
			increase HP of Blanche by 1;
		now libido of Blanche is turns;
		now lust of Blanche is turns;

to say sexwithBlanche02:
	say "     After some affectionate kisses and playful groping, Blanche moves onto all fours, presenting herself for you[if Blanche is gravid]. She places some pillows beneath herself to help support her gravid belly[end if]. Her wet pussy makes for a tantalizing sight as she raises her tail and wags it invitingly. Unable to resist such an offer, you place your hands on her round hips and slide your cock into her hot cunt. She releases a pleasured moan and grinds back onto you while her wet tunnel grips your meat[if cock length of player >= 36]. Given your huge girth, the penetration is very slow at first, but motherhood has allowed her vagina to spread more easily. The white wolf howls with lustful enthusiasm as your enormous cock pushes deeper into her, making her feel so wonderfully full as it bulges her belly[else if cock length of player >= 24]. Given your huge size, the penetration is slow at first, but motherhood has allowed her vagina to spread more easily. The white wolf howls with lustful enthusiasm as your enormous cock pushes deeper into her, making her feel so wonderfully full[else if cock length of player >= 12]. Given your large size, the penetration starts slowly, but motherhood has allowed her vagina to spread more easily. The white wolf moans happily as your large cock pushes deep into her, stuffing her so wonderfully full[else]. The penetration is smooth and easy, motherhood having allowed her vagina to spread easily for you before gripping around you once you're in[end if].";
	say "     You take a few preliminary thrusts into the [if Blanche is pregnant]pregnant female[else]wolfy MILF[end if] before adjusting your position to better pound her needy pussy. She gives another rumble of delight at this and moans for more. The wolf paws at her [if HP of Blanche > 11]silk [end if]sheets as you fuck her[if Blanche is pregnant]. In light of her pregnancy, you do hold back somewhat, though you do still pound her good and hard[else]. As you go at it, you find yourself pounding her harder and faster, wild urges driving you to breed this fecund female[end if]. Much to her delight as well. Her motherly breasts sway beneath her as she's rocked by your thrusting[if Blanche is gravid], slapping gently against her furred belly[end if].";
	say "     As you fuck the lovely wolf, you run your hands over her sexy rear and through the soft fun on her sides and hips. After a while though, you move your hands to each side of her as you go to all fours and start fucking her doggy style. There's something primally satisfying about fucking the sexy wolf woman like this, rutting like horny beasts[if Blanche is not pregnant] in an effort to breed[end if]. Your cock slams into her over and over while her wet cunny clutches and squeezes around it. You grab one of her swaying tits and fondle it, rubbing her nipple with your thumb. She tilts her head back and licks your cheek before kissing you.";
	say "     The two of you continue to rut like animals, panting and kissing one another. As you feel your climax approaching, you [if bodyname of player is listed in infections of caninelist or facename of player is listed in infections of caninelist]bite down onto the back of her neck and [end if]drive yourself fully into her. Your [cock of player] cock throbs and pulses as you fire shot after shot of gooey seed into her [if Blanche is not pregnant]waiting womb[else]quivering cunt[end if]. She howls in orgasmic release, adding her feminine juices to the slick mess squishing around your cock and leaking down both your thighs[if Blanche is not pregnant]. You breed her for all you're worth, eager to see her grow heavy with more of your pups[else]. Despite her already being pregnant, you pump as much semen as you can into her, further testament to your virility[end if]. Once you're spent and pull out, Blanche rolls over onto her side, panting heavily with a canine smile plastered across her muzzle. 'Oh, that's just what I needed. You're great.'";
	if HP of Blanche is 4 or ( HP of Blanche > 7 and Blanche is not pregnant and a random chance of 2 in 3 succeeds ):
		say "     Blanche remains resting on her [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if] for a while, smiling happily as she caresses her belly. You think nothing of it at first, but after a while you realize that [if cock width of player >= 20]the bulge from your semen's not fully disappeared[else]her tummy's showing a small bulge now[end if]. You've knocked up the white wolf[if HP of Blanche > 4] again[end if]!";
		if HP of Blanche is 14:
			now HP of Blanche is 12;
		else:
			increase HP of Blanche by 1;
		now libido of Blanche is turns;
		now lust of Blanche is turns;

to say sexwithBlanche03:
	say "     Blanche leads you over to the desk and has you sit on the corner of it while she gets on her knees before you. The white wolf nuzzles at your groin and breathes in your heady scent of her hero, lover and mate. She runs her paws over your thighs and caresses your hips before moving on to stroking your [cock size desc of player] [cock of player] penis. She leans in and, glancing playfully up at you, slowly runs her lupine tongue across the length of your meat, eliciting a moan from you. Clearly pleased with the taste of your meat, she leans forward and slides your shaft into her muzzle[if cock length of player >= 24]. Given your massive size, it takes her considerable effort, but her lust overcomes the physical difficulty and her mouth and throat stretch open to take your [cock size desc of player] cock. The outline of your bulging member is clearly visible against her outstretched throat[else if cock length of player >= 16]. Given your considerable size, she has to go slow at first, but soon enough you're thrusting into her muzzle and throat with a visible bulge from your [cock size desc of player] cock[else if cock length of player >= 10]. Her lupine muzzle slides down over your erection and the tip of your [cock size desc of player] cock slides into the wolf's throat[else]. Her lupine muzzle slides down over your erection, taking it fully into her muzzle[end if]. As her muzzle[if cock length of player >= 10], throat[end if] and tongue slide across your shaft, her paws move to rub and caress your balls, hungry for the treat they hold.";
	if a random chance of 1 in 2 succeeds:
		say "     Pleased with the wolf's attention, you rub her ears and stroke her muzzle, telling her what a fine job she's doing and how happy you are to have met her. At your words of praise, she sucks you all the more eagerly[if HP of Blanche < 9 or HP of Blanche is 11 or HP of Blanche is 14]. Her[else]. The pregnant wolf's[end if] long tongue and warm muzzle work tirelessly to get you off. As she bobs her head faster, your precum dribbles onto her tongue and down her throat, giving her a taste of what's fast approaching. Cupping your nuts, she moans softly and sucks down hard, finally pushing you over the edge. You blast shot after shot of thick seed down her throat, filling her with your warm, hot cum. As she swallows this down, [if HP of Blanche < 8]she[else]the horny MILF[end if] jams a paw between her legs and stuffs several fingers into her cunny, pumping herself to an orgasm that has her groan in delight around her muzzleful of meaty cock[if cock width of player >= 20]. Your excessive load leaves the sexy wolf with a tummy so full it's bloated with your semen by the time you're finished and she releases your spent cock[else]. She keeps going until your balls are drained before releasing your spent cock[end if]. She smiles up at you, licking her muzzle and looking very satisfied. Looking lower, you can see her crotch soaked with her own juices and the floor below wet with a puddle of them as well.";
	else:
		say "     Pleased with the wolf's attention, you rub her ears and stroke her muzzle, telling her what a fine job she's doing and how happy you are to have met her. At your words of praise, she sucks you all the more eagerly[if HP of Blanche < 9 or HP of Blanche is 11 or HP of Blanche is 14]. Her[else]. The pregnant wolf's[end if] long tongue and warm muzzle work tirelessly to get you off. As she bobs her head faster, your precum dribbles onto her tongue and down her throat, giving her a taste of what's fast approaching. Cupping your nuts, she slides her muzzle off your cock and starts stroking and licking at your cock emphatically, finally pushing you over the edge. You blast shot after shot of your seed all over her face and body[if cock width of player >= 20], practically coating her ivory fur in your white cum[end if]. Marked [if cock width of player >= 20]thoroughly [end if]as yours, she starts licking your semen from her muzzle and one paw while the other dives between her thighs to frig herself to a howling climax of her own[if HP of Blanche < 8]. She[else]. The sated MILF[end if] smiles up at you, sucking some of her juices from her paw and looking very satisfied. Looking lower, you can see her crotch soaked with her own juices and the floor below wet with a puddle of them as well.";

to say sexwithBlanche04:
	say "     Eyeing those lovely breasts of hers, you run a hand over them and whisper in her ear how you'd love to see your cock nestled between those furry globes. She smiles and licks your cheek, saying she'd love that as well. Laying back on the [if HP of Blanche < 7]sleeping mat[else if HP of Blanche < 11]mattress[else]small bed[end if], she smiles up at you while running her paws over her breasts. You move into position atop her and let her guide your cock into the soft embrace of her bountiful bosom[if blanche is gravid]. As well, you can feel the pregnant MILFs rounded belly behind you[end if].";
	say "     [if cock length of player > 20]Blanche leans her head forward and takes several licks along your long shaft[else if cock length of player >= 6]Blanche leans her head forward and takes several licks across your glans[else]Blanche mmms softly[end if] as you start rocking your manhood between those white breasts. She continues to play with her breasts, making quite the show about teasing and tweaking her nipples. The sight of this is very arousing and excites you further. And her as well, as can be seen by how she pants and moans softly while doing so. This gets all the more pronounced as some of her motherly milk starts leaking from her perky nips as they're pinched.";
	say "     The feel of her soft fur and warm breasts around shaft is wonderful. You enjoy the titty-fuck for quite a while, your excitement slowly building until eventually it can no longer be held back[if a random chance of 1 in 2 succeeds]. Removing your [cock of player] cock from between her breasts, you stroke it vigorously. With a long groan, you spray your [cum load size of player] load across her bosom and open muzzle[else]. Thrusting faster, you pump your meat between those breasts until you cum, shooting your [cum load size of player] load while nestled into that beautiful bosom of hers[end if]. She moans happily and plays excitedly with her tits while you drain your balls and she makes a show of licking up streaks of your seed using her fingers.";


to say sexwithBlanche05:
	say "     The wolf femme [if Blanche is gravid]beckons you[else]leads you quickly[end if] over to her [if HP of Blanche < 7]sleeping mat[else if HP of Blanche < 11]mattress[else]small bed[end if], slipping your pack and clothes off before stretching out on it. She spreads her legs and runs her paws down her body, playing with her tits before stroking her wet pussy in a rather wanton display[if HP of Blanche is 2]. 'Oh, I've been feeling so horny ever since I changed. I just need some relief.' She blushes a bit at her words, but fingers herself while eyeing you lustfully[else]. 'I've been feeling so horny again lately. I just need some relief again.' She smiles and licks her lips, driving a pair of fingers into her cunt in lustful anticipation[end if]. 'Mmm... come claim your prize bitch, my sexy hero.'";
	say "     Needing no more invitation, you hop onto the [if HP of Blanche < 7]mat[else if HP of Blanche < 11]mattress[else]bed[end if] and move alongside the wanton wolf in a 69 position, running your hands over her hips and thighs as you nuzzle and kiss between them[if Blanche is gravid]. Her large belly presses against you and you have to bend a bit to get past it to the juicy prize you desire[end if]. She brings her lupine muzzle to your hot pussy as well and takes in your scent with a soft moan before lapping her long tongue across your sensitive folds. After this brief foreplay, you get right to it, diving your tongues into one another and eating each other out. Lips kiss, tongues slide, fingers tease and juices flow as the scent of your combined arousal grows thick in the air. You lavish attention on the [if HP of Blanche > 7]MILF's needy[else]needy, heat-filled[end if] pussy before you with increasingly loud moans of lustful pleasure as you are treated in kind by her long, lupine tongue[if player is male]. She licks and sucks at your cock[smn] as well, but her attention is primarily on eating out your dripping snatch[end if]. When you reach your peak and cum, Blanche is not far behind and you are both left panting and soaked at the crotch with your release, your faces covered in delicious pussy juices.";
	say "     After your orgasms, you lie back on the [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if] side by side, panting softly in the afterglow of your release. Taking your hand in hers, she smiles. 'Mmm... thank you for that. I really needed to let off some relief[if HP of Blanche < 11]. My body just wants a proper fucking so bad[end if].' She rubs her other paw over her sticky folds.";

to say sexwithBlanche06:
	say "     The wolf femme [if Blanche is gravid]beckons you[else]leads you quickly[end if] over to her [if HP of Blanche < 7]sleeping mat[else if HP of Blanche < 11]mattress[else]small bed[end if], slipping your pack and clothes off before stretching out on it. She spreads her legs and runs her paws down her body, playing with her tits before stroking her wet pussy in a rather wanton display[if HP of Blanche is 2]. 'Oh, I've been feeling so horny ever since I changed. I just need some relief.' She blushes a bit at her words, but fingers herself while eyeing you lustfully[else]. 'I've been feeling so horny again lately. I just need some relief again.' She smiles and licks her lips, driving a pair of fingers into her cunt in lustful anticipation[end if]. 'Mmm... come claim your prize bitch, my sexy hero.'";
	say "     Needing no more invitation, you hop onto the [if HP of Blanche < 7]mat[else if HP of Blanche < 11]mattress[else]bed[end if] and move atop the wanton wolf, running your hands over her body and breasts as she wrap her arms around your waist and hugs you close. You kiss one another as your bodies rub together, hands and paws drifting between thighs to caress the wet folds found there[if Blanche is gravid]. You caress her pregnant belly before reaching around it to get at the precious prize you desire[end if]. You slide a couple of fingers into [if HP of Blanche > 7]the MILFy wolf's[else]her[end if] juicy cunt as she does the same for you. You lick, kiss and finger one another with increasingly loud moans of lustful pleasure[if player is male]. She plays with your cock[smn] briefly as well, but her focus is on satisfying your dripping snatch[end if]. The air in the room grows thick with the scent of your combined arousal. When you reach your peak and cum, Blanche is not far behind and you are both left panting and soaked at the crotch with your release.";
	say "     After your orgasms, you lie back on the [if HP of Blanche is 4]mat[else if HP of Blanche is 8]mattress[else]bed[end if] side by side, panting softly in the afterglow of your release. Taking your hand in hers, she smiles. 'Mmm... thank you for that. I really needed to let off some relief[if HP of Blanche < 11]. My body just wants a proper fucking so bad[end if].' She rubs her other paw over her sticky folds.";


to say sexwithBlanche07:	[cowgirl position]
	say "     In the mood for a change of pace, you suggest the [if Blanche is pregnant]pregnant [end if]wolf ride you cowgirl style, which she's quite down with. You stretch out on her [if HP of Blanche is 11]bed[else]bed's silken sheets[end if] and take her by the paw as she moves atop you[if Blanche is gravid]. You assist her with your other hand on her rounded belly, giving it a gentle caress as you help support it into position[end if]. Reaching from behind, she guides your cock up and into her juicy cunt as she lowers herself down with a happy sigh. Her paws then move to your chest, rubbing over it.";
	say "     Once she's had a [if cock length of player >= 24]minute to adjust to your oversized meat[else if cock length of player >= 12]chance to adjust to your large size[else]moment to settle into position[end if], she raises herself up slowly[if blanche is gravid]. Mostly rocking forward to keep her pregnant tummy partly resting on you, she[else]. She[end if] slides gradually back up your pole until only the tip remains in before going down again. The first few are like this as she savors the feel of you moving in and out under her control all with a happy expression on her lupine face.";
	say "     After these initial bounces, she picks up speed and is soon riding you at a good pace. Her juicy cunt slides up and down your slick pole, her inner walls quivering and squeezing tight each time she slams down fully onto you. Your hands move up to her breasts, cupping the MILF's mammaries and playing with her nipples. She moans softly at this, growing louder as you tease her nipples and some of her motherly milk leaks out to wet her snowy fur[if breasts of player > 0 and breast size of player > 0]. Her paws find their way to your tits and, with a grin, she gives your hard nips the same treatment[end if].";
	say "     As her excitement builds, you can see her getting close to climax. She releases a hungry, needy growl and starts riding you faster, grinding that round butt of hers down onto your lap. Your cock throbs and pulses inside her, your balls feeling heavy with seed for the [if Blanche is pregnant]pregnant[else]fecund[end if] wolfess. Her growling gets louder until she finally throws her head back in a howl of climactic release. Feeling the grip of her fluttering vagina and the hot rush of flesh juices, you move your hands to grab her ass as push your hips up. Your [short ball size] balls release their [cum load size of player] load and your hot seed shoot into her[if blanche is not pregnant] waiting womb[end if]. Once you're both done riding out this powerful orgasm, she slides herself slowly off your softening member and you let her have the bed to rest after giving her a tender kiss.";
	if Blanche is not pregnant and a random chance of 2 in 3 succeeds:
		say "     Blanche remains resting on her bed for a while, smiling happily as she caresses her belly. You think nothing of it at first, but after a while you realize that [if cock width of player >= 20]the bulge from your semen's not fully disappeared[else]her tummy's showing a small bulge now[end if]. You've knocked up the white wolf again!";
		if HP of Blanche is 14:
			now HP of Blanche is 12;
		now libido of Blanche is turns;
		now lust of Blanche is turns;

to say blancheupdate:
	if debugactive is 1:
		say "DEBUG| Current turn number: [turns]  - Pre-update values:[line break]";
		say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";
		say "DEBUG| Updating Blanche now.";
	if libido of Blanche is not 255:
		now tempnum is 0;
		if HP of Blanche is 5 and libido of Blanche - turns >= 12:
			increase HP of Blanche by 1;
		if HP of Blanche is 6 and libido of Blanche - turns >= 24:
			increase HP of Blanche by 1;
			now thirst of Blanche is 3; [+three pups in first litter]
			now libido of Blanche is 254;
[			move Sturm to Office Den;]
		if HP of Blanche is 9 and libido of Blanche - turns >= 12:
			increase HP of Blanche by 1;
		if HP of Blanche is 10 and libido of Blanche - turns >= 24:
			increase HP of Blanche by 1;
			now thirst of Blanche is 7; [+4 pups in second litter]
			now libido of Blanche is 254;
		while HP of Blanche >= 11 and lust of Blanche - turns >= 40 and tempnum is 0:		[extra cycles if the player's been away a long time]
			now tempnum is 1;
			if ( HP of Blanche is 11 or HP of Blanche is 14 ) and lust of Blanche - turns >= 48:
				now HP of Blanche is 12;
				now libido of Blanche is lust of Blanche - 40;
				now lust of Blanche is lust of Blanche - 40;
				now tempnum is 0;
			if HP of Blanche is 12 and libido of Blanche - turns >= 12:
				increase HP of Blanche by 1;
				now tempnum is 0;
			if HP of Blanche is 13 and libido of Blanche - turns >= 24:
				increase HP of Blanche by 1;
				if thirst of Blanche < 10:
					now thirst of Blanche is 10;
				else:
					increase thirst of Blanche by a random number between 2 and 4;
				now libido of Blanche is 254;
				now tempnum is 0;
		if HP of Blanche is 12 and libido of Blanche - turns >= 12:
			increase HP of Blanche by 1;
		if HP of Blanche is 13 and libido of Blanche - turns >= 24:
			increase HP of Blanche by 1;
			if thirst of Blanche < 10:
				now thirst of Blanche is 10;
			else:
				increase thirst of Blanche by a random number between 2 and 4;
			now libido of Blanche is 254;
	if debugactive is 1:
		say "DEBUG| Post-update values:[line break]";
		say "DEBUG| HP: [HP of blanche]   /   Lastfuck: [lastfuck of blanche]   /   Libido: [libido of blanche]   /   Lust: [lust of blanche]   /   Thirst: [thirst of blanche][line break]";


Definition: Blanche is pregnant:
	if HP of Blanche is 5 or HP of Blanche is 6 or HP of Blanche is 9 or HP of Blanche is 10 or HP of Blanche is 12 or HP of Blanche is 13, yes;
	no;

Definition: Blanche is gravid:
	if HP of Blanche is 6 or HP of Blanche is 10 or HP of Blanche is 13, yes;
	no;

[	HP of Blanche		]
[ 0 - not saved			]
[ 1 - saved				][sleeping mat]
[ 2 - talked to her		]
[ 3 - sex (F/F)			]
[ 4 - sex (M/F)			]
[ 5 - knocked up		]
[ 6 - advanced preg		]
[ 7 - first litter		][mattress]
[ 8 - talked post-pups	]
[ 9 - knocked up again	]
[10 - advanced preg		]
[11 - another litter	][small bed]
[12 - cycling knocked up	][silk sheets]
[13 - cycling adv preg	]
[14 - cycling litters	]

[	libido of Blanche = turn knocked up		]

[	lust of Blanche = last time knocked up	]

[	thirst of Blanche = pup count	]


Section 3 - Endings
[to come later]

Blanche ends here.
