Version 1 of Werewolf Costume For FS by Stripes begins here.
[Version 1.1 - Male player victory sex w/no-sex option.]
"Adds a Werewolf Costume creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

werewolfcostumenosex is a number that varies.

when play begins:
	add { "Werewolf Costume" } to infections of guy;
	add { "Werewolf Costume" } to infections of furry;


to say losetomonstercostume:
	now werewolfcostumenosex is 0;
	if bodyname of player is "Werewolf Costume":
		say "     With your resistance to the strange creature broken, it wraps its floppy arms around your costume body. It drags you to one of the carnival booths. A pair of those strange carnival creatures are running the booth and the costume werewolf throws you over one of them before jumping on the other. Your body, acting on its own, wraps itself around the struggling figure and pulls it in through your hidden zipper, forcing it to wear you. The costume werewolf, similarly worn now, growls and pounces you.";
		if cunts of player > 0:
			say "     You can feel the trapped creature inside you squirming, rubbing himself against your sensitive inner body. This stimulation excites you further and when the costume creature drives its cock into you, you growl in pleasure. Its cock slides into your dripping cunt, sliding up into your padded form and it pounds at you hard and fast. You can sense the victim inside you sharing in the sensations of your mating and that excites you further. You mate with the creature atop you like a pair of wild beasts until finally its hot seed blasts into you, flowing up into the womb inside your tummy padding. Your trapped victim cums as they share in the sensations coming from you. You can feel his hot seed soaking your sensitive inner lining even as the werewolf costume breeds you. With your mating complete, you both release those trapped inside you and head your separate ways.[impregchance]";
		else:
			say "     You can feel the trapped creature inside you squirming, rubbing himself against your sensitive inner body. This stimulation excites you further and when the costume creature drives its cock into you, you growl in pleasure. Its cock slides into your plush bottom, sliding up into your padded form and it pounds at you hard and fast. You can sense the victim inside you sharing in the sensations of your fucking and that excites you further. You push back into the thrusts of the creature atop you as your rut like a pair of wild beasts until finally its hot seed blasts into you, flowing up into the tight passage inside your padded rear. Your trapped victim cums as he share in the sensations coming from you. You can feel his hot seed soaking your sensitive inner lining even as the werewolf costume fills you with his load. With your rutting complete, you both release those trapped inside you and head your separate ways.[impregchance]";
	else:
		say "     The monstrous costume tosses aside your clothes and pack as it runs its limp limbs over you. The creature wraps itself over you and starts pulling you into its empty body through the concealed zipper at the back. Soon, it is wrapped all over you, forcing you to wear it and shifting its size and shape to fit you like a glove. Now filled, it moves around much more easily, taking over your body. As it moves, it rubs itself [if cocks of player > 1]against your cocks[else if cocks of player is 1]against your cock[else]against your wet pussy[end if]. It's soft insides caress against your sensitive flesh, exciting you despite yourself. As it runs around, acting like a haunted house werewolf, you find yourself getting into the role.";
		if girl is not banned:
			say "     When it pounces one of the strange carnival creatures and drives its cock into her, you share in the sensation of it mating. Like a wild beast, it pounds away at her, driving its hard, knotted shaft into her wet pussy. The pleasure of its rough fucking can be felt in your [if cocks of player > 1]cocks trapped inside the costume[else if cocks of player is 1]cock trapped inside the costume[else]pussy, which is an unusually arousing mix of sensations[end if]. The victim quickly gets into the [']scene['], pushing into each thrust while being ravaged by a horrifying werewolf. As the costume cums into her, you cum as well, soaking the insides of the suit with your [if cocks of player > 0]seed[else]juices[end if]. Sated, the haunted house creature pops its deflating knot free and wanders back to where it found you before disgorging you from its zippered back, your usefulness at an end.";
		else:
			say "     When it pounces one of the strange carnival creatures and drives its cock into his mouth, you share in the sensation of its forceful blowjob. Like a wild beast, it pounds away at him, driving its hard, knotted shaft into his mouth. The pleasure of its rough fucking can be felt in your [if cocks of player > 1]cocks trapped inside the costume[else if cocks of player is 1]cock trapped inside the costume[else]pussy, which is an unusually arousing mix of sensations[end if]. The victim quickly gets into the [']scene['], licking and sucking at the cock while being ravaged by a horrifying werewolf. As the costume cums into him, you cum as well, soaking the insides of the suit with your [if cocks of player > 0]seed[else]juices[end if]. Sated, the haunted house creature pops pulls its spent shaft free and wanders back to where it found you before disgorging you from its zippered back, your usefulness at an end.";


to say beatthemonstercostume:
	say "     Your final blow knocks the stuffing out of the costume creature, as it were, and it collapses to the ground in a heap. ";
	if werewolfcostumenosex > 2:
		say "     As with the others of its kind, you leave it alone now that you've taken the fight out of it.";
	else if cocks of player > 0 and libido of player > 25 and werewolfcostumenosex < 3:
		say "     Feeling a little worked up after your fight, you glance down at the costume creature. It moans softly, struggling to rise again. Despite its costume nature, that head of its does have a mouth you might be able to make use of, if you were so inclined. Shall you go ahead with this plan?";
		if the player consents:
			now werewolfcostumenosex is 0;
			say "     Grabbing the costume creature by the head, you press its muzzle to your groin and thrust your hard cock into is open mouth. It goes a weak moan and flops its limp arms, but is too weak to stop you from taking advantage of it. You pound your hips against its padded muzzle, grinning as it starts to respond by licking and sucking at your [cock of player] manmeat. As you continue, you can feel its soft paws slide up your legs, but they're no longer struggling, instead rubbing your thighs and gripping your ass so it can better pull its head into your thrusts.";
			if a random chance of 3 in 5 succeeds:
				say "     When you cum, you thrust fully into the costume creature, letting your cock pulse as it sends your hot seed into its empty insides[if cock width of player > 40]. Your prodigious output leaves the werewolf suit considerably fuller. It makes wet, sloshing sounds as it shifts around, trying to drag its cum-stuffed body away[else if cock width of player > 20]. Your considerable output leaves the werewolf suit looking somewhat fuller and more padded than before. It makes wet sounds as it slinks off[else]. You pump your load down at the creature's padded throat before pushing it aside[end if].";
			else:
				say "     Moments before you cum, you push the strange creature's head back and pump your meat frantically, spraying your [if cock width of player > 40]excessive[else if cock width of player > 20]large[else]sticky[end if] load across its muzzle. It holds its mouth wide open and slathers its tongue across its muzzle, trying to lap up as much of it as it can get. Once you're done cumming, you wipe your dick across its furry side and toss it aside. The messy costume creature slinks off, wiping and licking itself as it goes.";
		else:
			increase werewolfcostumenosex by 1;
			say "     Certain you can find a better way to sate your lusts in this wacky city, you leave the strange beast behind.";



to say monstercostumedesc:
	setmongender 3; [creature is male]
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     A strange, wobbly creature approaches you. It seems like the werewolf from a cheap horror movie or a haunted house, but deflated and empty inside. It is like an empty costume moving on its own. The limbs flop around some as it moves, the padded, oversized feet dragging against the ground. The sculpted werewolf face is well-moulded and would be quite frightening if it leaped out at you. But having more life than a mere costume, the expression changes as it snarls at you, moving in to strike at you.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Werewolf Costume"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The werewolf costume flails at you with its arms, hard claws scraping you![or]The costume creature throws itself onto you, trying to smother you with its empty body![or]The werewolf mask bites at you![or]The animate costume rubs itself against your groin while its empty limbs wrap around you![at random]"; [Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthemonstercostume]";
	now victory entry is "[losetomonstercostume]";
	now desc entry is "[monstercostumedesc]";
	now face entry is "like that of a horror movie werewolf. But despite having a fake look, it can move and change expression somewhat as if alive";
	now body entry is "quite empty and hollow, with floppy and boneless limbs. Your body is padded and shaped to give a powerful form, or it would if it were filled. Even your head feels roomy inside. Your eyes change subtly to allow them to be looked through. As it is, you sag and wobble as you move around. Your hands have become gloves with gnarled fingers ending in sharp claws. Your feet are large, padded costume feet with claws as well. The empty feeling in your body is strange, but you are still able to animate yourself despite your lack of internal content, all your muscles and organs shifting into the padded sections that give your costume body its fearsome shape";
	now skin entry is "a layer of coarse, dark fur covers your";
	now tail entry is "You have a thick, fluffy wolf's tail of gray, fake fur.";
	now cock entry is "[one of]red, knotted[or]red, lupine[or]lupine[or]canine[at random]";
	now face change entry is "you grow a long, beastly muzzle with sharp fangs. Despite having a bit of an artificial look to it when you examine it closely, it does move and change expression somewhat as if alive";
	now body change entry is "the sensation of change sinks deep inside your body. You can feel your bones fading away and your inner organs shifting and pressing outwards as a large cavity grows inside you. As this empty feeling spreads, your body becomes less solid and sags as you try to move. Your hands become gnarled, clawed gloves and your feet form into empty paws. With some effort and concentration you soon gain control of your altered body, allowing you to move";
	now skin change entry is "a coating of black and grey fur spreads across your body. The coarse fur seems a little artificial under closer examination, but feels real enough";
	now ass change entry is "grow a furry wolf's tail. The dark fur looks a little artificial despite feeling quite real as it grows in over your changing tail";
	now cock change entry is "it shifts and becomes a red, knotted organ with a definite lupine shape to it";
	now str entry is 10;
	now dex entry is 14;
	now sta entry is 12;
	now per entry is 14;
	now int entry is 6;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 30; [ The monster's starting HP. ]
	now lev entry is 4; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Midway"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]empty[or]padded[or]costume[at random]";
	now type entry is "[one of]werewolf-like[or]lupine[or]fursuit[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Werewolf Costume":
		if humanity of player < 10:
			say "     With the infection leaving your mind nearly as empty as your head now is, you wander off into the city and find your way back to the State Fair. You find your way to one of the many haunted houses and join the other varied costume monsters shambling around within. There are monsters, werewolves, ghosts, zombies and many other varieties of costume creatures there. You have an great time living with them, roaming the park and hijacking the bodies of the other creatures of the midway to allow you to sate your needs.";
			say "     Coming back from one of these, you run into a soldier and can hear many others coming up. He stiffens and glances back, then whips off his backpack and tosses it to you. 'Quick! Get in!' he whispers. You catch a hint of gasoline and smoke in the air and you can see several black columns of smoke rising from the way you were headed. Scared, but knowing your thin, costume-like body would not survive a flamethrower, you nod. After dumping the contents behind a booth, you crawl into the pack and deflate yourself as much as you can. It is a little cramped, but you manage it.";
			say "     When he rejoins the others, you can hear several of them laughing about how easy this detail is, nothing but stuffed bears and toys to deal with. You seethe in anger, but remain quiet, and your rescuer only gives a token chuckle before getting back to guarding the flamers. Once he gets you back to base, he gets a short moment to whisper to you that he couldn't stand seeing them burning down those creatures and just had to help you. Besides, you're just a cute costume; there are much more dangerous things out there than you. He manages to slip you some rations and a few treats from time to time, keeping you hidden in a footlocker until he can be discharged. He, like many others, are released from service after the disturbing events in the city.";
			say "     You live with him in his small home, taking care not to be seen. He tries to be nice to you, but is rather nervous and ill at ease. But eventually one cool autumn night, while resting on the couch in front of the TV, you slide over to drape your soft body atop him. He stiffens for a moment, then relaxes and strokes his hand over you. Soon, you're cuddling and taking him into you. You wrap your beloved rescuer up in your body and hold him close. Your time together is very passionate and more fulfilling than any of the times at the fairgrounds.";
			say "     You and he share in one another when united, joining into one being during this time before finally releasing him. Physically, he doesn't change very much, though he does become a little wilder and much better hung and knotted to boot. After a few times wearing you, you head out together and find someone to vent your monstrous lusts upon. You take her back to your den and have a night of wild, animal sex with her, eventually making her into another costume creature. You return her like that to her home so she can join with her mate and become another bonded pair like you and your wearer.";
			say "     You continue this, finding people to infect into costumes and getting them to bond more fully with their mates into another werewolf pair. Your numbers grow steadily in secret until most of the town has been infected as either a costume or a wearer. Several of the pairs move to other towns to continue spreading in secret while the rest of you deal with the last few people in an orgy of lustful breeding.";
		else:
			say "     When the soldiers come through, your unusual body surprises them, but you are able to convince them to help you back to the base. You are examined for a time, but are more of an anomaly than anything of true interest. Several tests, MRI and CT scans later, you are pretty much told what you already know: you have no skeleton, your organs have moved and shifted to spread across your lining, and your muscles are a part of that as well. After your treatment and release from the military camp, you try to settle down, but have difficulty making a normal life for yourself with your unusual body.";
			if facename of player is "Werewolf Costume" and skinname of player is "Werewolf Costume" and tailname of player is "Werewolf Costume":
				if cunts of player > 0:
					say "     Working through an agency, you manage to land a gig to act as the werewolf in a cheap horror movie. The actress wearing you makes a good partner and is a competent character actress on her own, but working together, you make an excellent team. The movie, despite its cheesiness, does well because of the monster scenes and a series of sequels are made. Some are even an improvement on the first. While she was nervous with you at first, after a few days of shooting, she becomes good friends and your relationship lasts for years to come. She even starts to accept your sexual needs, consenting to wearing you for sex. Together, you make out with your regular lovers, several of the cast and even some fans who want to [']get to know the monster better.[']. These romps are quite enjoyable for you both[if cocks of player > 0], and she confesses one day that the sensation of your dick fucking the girls excites her greatly[else] and she cums hard in your suit, soaking your insides with her juices[end if]. You stick together as a couple after your movie series finally ends and even get a few roles in bigger budget movies to supplement your royalties from the franchise.";
				else:
					say "     Working through an agency, you manage to land a gig to act as the werewolf in a cheap horror movie. The actor wearing you makes a good partner and is a competent character actor on his own, but working together, you make an excellent team. The movie, despite its cheesiness, does well because of the monster scenes and a series of sequels are made. Some are even an improvement on the first. While he was nervous with you at first, after a few days of shooting, he becomes good friends and your relationship lasts for years to come. He even starts to accept your sexual needs, consenting to wearing you for sex. Together, you make out with your regular lovers, several of the cast and even some fans who want to [']get to know the monster better[']. These romps are quite enjoyable for you both and he cums hard in your suit, soaking your insides with his semen. You stick together as a couple after your movie series finally ends and even get a few roles in bigger budget movies to supplement your royalties from the franchise.";
			else:
				say "     You manage to get some work at a fetish sex club, renting yourself out to patrons who want to wear you while having sex. You have a variety of clients, both males and females, who want to enjoy the sensations your altered body provides them. The opportunity you give for them to enjoy sex in a different body ends up coaxing several of them to seek to become infected as well, often ending up working at the club. While your usual pay is alright and provides for your body's meager needs, the [']finder's fee['] your boss provides for these new employees is always welcome, as is the opportunity to sate your lusts on their new body.";

Werewolf Costume For FS ends here.
