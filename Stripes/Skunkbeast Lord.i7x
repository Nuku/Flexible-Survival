Version 1 of Skunkbeast Lord by Stripes begins here.
[Version 1 - ]
"Adds a quest to defeat the Skunkbeast Lord in the hopes of dealing with the skunkbeasts."

Section 1 - Event

Skunkbeast Battle is a situation. The level of Skunkbeast Battle is 15.
The sarea of Skunkbeast Battle is "Forest".
skunkbeaststatus is a number that varies.
when play begins:
	add Skunkbeast Battle to badspots of guy;
	add Skunkbeast Battle to badspots of girl;
	add Skunkbeast Battle to badspots of furry;

Instead of resolving a Skunkbeast Battle:
	say "     You can hear a great deal of commotion coming from up ahead. You take notice that there's a considerable number of black, gooey patches spread around the area as well as torn remnants of camouflaged clothes. When gunfire breaks out briefly, you duck down and creep forward into the bushes, looking to find out what's happening. Parting some branches at the edge of the next clearing, you can see a raging battle involving numerous of those sexy skunks you've seen around as well as several larger skunk beasts. Looking more carefully, you can see that some of the skunks are actually mostly transformed soldiers, their clothes torn and their bodies being ravaged (much to their increasing delight) by skunkbeasts or teams of the other females. The one still firing the rifle you heard has it torn from her hands by a skunk girl, who tosses it in the nearby creek as two more hold her down to be mounted.";
	say "     But it is the last soldier standing who is the most successful. While still partially a skunk, he (though well on his way to becoming a she now) has a strange, futuristic gun that fires a stream of green energy at the skunks. The blast from this seems to stun the skunkbeasts and, if held on them long enough, causes them to melt away into goo. She turns towards the largest of the skunkbeasts, more than twice the size of the others as it turns to deal with her. That's when you realize her jacket's not military issue, but instead emblazoned with a stylized Z in a circle: Zephyr. She yells incoherently as she's tackled by several of the skunk girls, including some of her former teammates and the gun is sent flying, landing only a few yards away from your hiding spot.";
	say "     You eye the strange weapon and the big beast charging towards it. You have but a moment to decide if you'll face the beast so you can turn the gun on it. It is clearly the one in charge and probably the source of all the others. If you could take it down, you may even permanently solve the skunk problem in the forest. Given how well the trained mercenaries fared and all the other skunks around, this could go very badly for you.";
	say "     [bold type]Shall you risk facing this fearsome beast?[roman type]{{Warning: Success will permanently alter your interactions with the skunks in the game.}}[line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		LineBreak;
		now skunkbeaststatus is 3;
		say "     You jump from the bushes, making a dash for the rifle, but as you're picking it up, the giant beast is there and knocks it from your hands. The enormous skunk growls menacingly and tries to bash you with its paw, but narrowly dodge out of the way. You and the beast end up in a circle of the other skunks, locked in a match to grab or destroy the gun.";
		challenge "Skunkbeast Lord";
		if skunkbeaststatus is 3:		[run away]
			say "     Unable to keep going against the fearsome might of the giant skunk, you fake it out with a final feint towards the gun and then make a break for the loose cordon of skunk creatures which gathered to watch their lord's battle. As you weave between the skunk girls and beast, they cheer to the sounds of those giant paws crushing the gun into rubble. You are disappointed that you weren't able to gain the strange weapon, but are glad to make it out of there alive and intact after facing such a foe.";
		else if skunkbeaststatus is 2:	[defeated]
			say "     You are knocked down by the skunkbeast lord. Pinning you down with one of his massive paws, he slams the other down onto the gun repeatedly, shattering and grinding the hated thing into the ground. With you trapped and defeated, several of the female skunks rush up, laving attention upon the victory, nuzzling and caressing him all over. Special attention is paid to his large, throbbing cock, which they stroke and rub with lustful moans and playful grins at you. That's when you realize that they're keeping the dripping, pulsing meat pointed straight at you and you are awash in a torrent of skunk semen as the giant growls loudly and proudly in triumphant climax.";
			now humanity of player is 0;
			[puts Skunk as lead monster for infection and impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Skunk":
					now monster is y;
					break;
			now tailname of player is "Skunk";
			now facename of player is "Skunk";
			now skinname of player is "Skunk";
			now bodyname of player is "Skunk";
			now cockname of player is "Skunk";
			attributeinfect;
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			if hellHoundLevel is 0:
				follow the sex change rule;
				follow the sex change rule;
				follow the sex change rule;
			WaitLineBreak;
			if libido of player < 75, now libido of player is 75;
			say "     The thick, musky seed soaks into you, flooding your mouth and nose, forcing you to swallow it down as you struggle to breathe. Your body soaks up the infected cum, changing rapidly, gaining a sexy, womanly figure like the skunk girls around you[if cunts of player > 0 and cocks of player > 0]. Your ebon cock is stiff and leaking cum, but it is your hot, dripping pussy that aches for attention[else if cocks of player > 0]. Your ebon, skunk cock is stiff and leaking cum[else if cunts of player > 0]. Your pussy is hot and dripping, aching for attention[end if]. When the skunkbeast moves its paw to release you, your paws move to your groin, playing with yourself lustfully as your flesh becomes the same glossy black of the skunk girls. As your transformation continues, you notice the skunkbeast lord, whom you are starting to identify as your master, still standing over you with his large, throbbing cock. You are up in an instant, licking and kissing at it, lavishing attention upon that wonderful cock. He permits you to service him like this for a few minutes before releasing a soft growl. Obediently you turn and present yourself, raising your tail and letting your new lord and master mount you and mate you as he takes you as his latest fucktoy pet.";
			if skunk kit is tamed:
				say "     You briefly take notice of Peppy running around. He is soon taken into the arms of several of the skunk girls, who nurse him and lavish attention on him. When you look over again later, he has grown considerably, well on his way to becoming a skunkbeast as he fucks one of the buxom skunks. After you're bred several times by your new lord, he pushes you over to the new skunkbeast, allowing you to suck its cock for a tasty load of skunk cum while your lord mounts another of the new girls.";
			wait for any key;
			end the story saying "Having become a fucktoy for the Skunkbeast Lord, you lose yourself to the infection.";
			now battleground is "void";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		else if skunkbeaststatus is 1:		[victory]
			say "     With the skunkbeast lord charging at you, you waste no time in firing the power rifle at the creature. The giant staggers, struggling to keep charging as your weapon sends a stream of green energy that washes over it. Each step it tries to make gets slower as you can see it starting to lose cohesion. You laugh triumphantly as it falls and the deterioration accelerates.";
			say "     But your success is short lived as the mob of skunk creatures, momentarily forgotten in your moment of triumph, swarm over you. You are held down by a mass of squirming, black and white flesh, feeling groping paws, plump breasts, buxom bottoms, throbbing cocks and juicy cunts all over you. Even as you try to point it at them, the rifle is pulled from your arms and you can hear it being shattered despite being too buried to see it. You are briefly worried that they're out for revenge, but they all lavish attention on you, almost fighting one another to get an opportunity to touch you. But the reason for this hardly seems to matter now, the pleasure of all that sexy skunk flesh against yours becoming all you can think about as you start to change, feeling their infection rapidly taking hold.";
			WaitLineBreak;
			say "     When most of them suddenly start to move back, you moan in disappointment, trying to make a grab for one of those black beauties. Still held by a group of them and too overwhelmed by the intensity of your recent contact, you don't resist as they drag you over to the quivering pile of goo that remains of your melting opponent. Its limbs are barely distinguishable from the central mass which was once its body and rivulets of flowing skunk goo stain the grass around it. Even as your body is changing and becoming more skunk-like, you are pressed into the melting mass of the skunkbeast lord.";
			say "     The black mess splatters and gives way as you slam into it, melting and flowing around you. Your body is suddenly awash with lustful excitement, feeling the skunkbeast's gooey flesh bonding with you. Even as most of it continues to melt away, much of it flows into you instead, joining with you and transforming you further. But this change is different than before. You can feel an increased power growing inside you, and along with it, lustful, instinctual urges. When the rest of the fallen skunkbeast lord melts away, you emerge, large and powerful in your new, skunkbeast form.";
			WaitLineBreak;
			[puts Skunk as lead monster for infection and impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Skunk":
					now monster is y;
					break;
			now non-infectious entry is true; [reg. Skunk infection closed]
			[puts Skunkbeast Lord as lead monster for infection and impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Skunkbeast Lord":
					now monster is y;
					break;
			now non-infectious entry is false; [Skunkbeast Lord infection now open]
			decrease humanity of player by 25;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 5;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 5;
			now tailname of player is "Skunkbeast Lord";
			now facename of player is "Skunkbeast Lord";
			now skinname of player is "Skunkbeast Lord";
			now bodyname of player is "Skunkbeast Lord";
			now cockname of player is "Skunkbeast Lord";
			attributeinfect;
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			if "Herm Preferred" is listed in feats of player or "Female Preferred" is listed in feats of player or "Always A Pussy" is listed in feats of player or (isHellhound is true and maleHound is false):	[Forced female]
				if cunts of player is 0, now cunts of player is 1;
				if cunt length of player < cunt length entry, now cunt length of player is cunt length entry;
				if cunt width of player < cunt width entry, now cunt width of player is cunt width entry;
				if breasts of player < breasts entry, now breasts of player is breasts entry;
				if breast size of player < breast size entry, now breast size of player is breast size entry;
			else:
				now cunts of player is 0;
				now cunt length of player is 0;
				now cunt width of player is 0;
				now breasts of player is 0;
				now breast size of player is 0;
			if "Female Preferred" is listed in feats of player or (isHellhound is true and maleHound is false):		[Forced non-male]
				now sex entry is "Female";
				now cocks of player is 0;
				now cock length of player is 0;
				now cock width of player is 0;
			else:
				if cocks of player is 0, now cocks of player is 1;
				if cock length of player < cock length entry, now cock length of player is cock length entry;
				if cock width of player < cock length entry, now cock width of player is cock width entry;
			if "Herm Preferred" is listed in feats of player:
				now sex entry is "Both";
			now the strain of skunk goo is "Skunkbeast Lord";
			WaitLineBreak;
			if libido of player < 75, now libido of player is 75;
			if skrp is 1:
				say "     As you look over your new, bestial body, you notice that your lusty skunk co-inhabitant has returned, turning you into an even bigger skunkbeast taur creature. She tilts her head and turns her eyes as best she can, trying to feel out the new, powerful body you share even as you look it over for yourself. You have a large upper torso covered in thick, black and white fur. It is mostly humanoid in form, though has paw-like hands. You run these over your face, feeling the bestial, skunk-like muzzle and sharp teeth, your head more like that of the skunkbeasts than the girls. Your lower body is that of a large skunkbeast, on its own bigger than the others around you and ending in a big, floofy skunk's tail. Your skunkbeast body isn't as large as the fallen lord, but your tauric form helps make up for much of that.";
				say "     Perhaps it is just the infection, but you cannot help but be pleased with your new appearance. Your second head is also quite pleased, saying '[if cocks of player > 0 and cunts of player > 0]Sweet! We've got a nice, big cock for all those girls and a juicy muff for all those sexy beasts. Let's have some fun[else if cocks of player > 0]Wow! We're really hung! Let's put this big boy to use[else]Oooh! That hot, juicy cunt of ours feels so nice! Let's get those sexy beasts to fill us up right[end if]!' You are in full agreement with her, beckoning your beautiful, sexy skunks to service their new skunkbeast lord.";
			else:
				say "     As you look over your new, bestial body, you can see that you've become similar to the skunkbeast creatures, though much larger than any of them, as you've beaten and taken the place of their fallen lord. You aren't as big as he was, but you are certainly a huge and impressive beast. Running one of your large, clawed paws over your new face, you can feel the bestial, skunk-like muzzle and sharp teeth. Your head has become more feral, more like that of the skunkbeasts than the girls. Your body is covered in thick, black and white fur and ends in a large, floofy skunk's tail. Perhaps it is the infection, but you cannot help but be pleased with your appearance, having become a fine master for the other skunks. Reminded of the other beautiful skunks around you, you motion for them to approach you and service their new skunkbeast lord.";
			if cocks of player > 0:
				say "     Several of the skunk girls move in to lavish attention upon you, grooming your fur, stroking your face, fondling your balls and stroking your pulsing cock[if skrp is 1]. The skunk head at your waist shares sexy kisses with the skunk girls as well and even has one of them press her pussy to her muzzle to be eaten out[end if][if breasts of player > 0]. Several of the busty girls take turns suckling from your breasts, drawing out your milk[end if]. Spotting the one you believe to be the rifle's original wielder, you get her to present her curvy bottom for you, raising her tail to expose her wet muff. You move atop her and the other girls jealously guide your penis into her and you start to fuck her senseless. She moans and cries out in ecstasy as your large shaft stuffs her so full of skunk meat. The others continue to run their paws over you as you ride your fucktoy.";
				if cunts of player > 0:
					say "     As you're riding her, you raise your own tail and give it a swish enticingly to the waiting skunkbeasts. They start to growl and scuffle playfully, vying for the right to mount you. Eventually a winner is chosen and you moan loudly as his cock is pressed into your heated folds. The others aren't left unsatisfied, with many other girls around eager to get their share of skunkbeast cock. They mate loudly and wildly all around you, providing a lovely show that fills you with pride.";
				else:
					say "     As you're riding her, you watch as the other skunkbeasts pick girls from the group, dragging them off (with squeals of delight) to be fucked by the feral creatures. They mate loudly and wildly all around you, providing a lovely show that fills you with pride.";
				say "     You fuck her, and several others, over the course of the wild orgy of skunk sex that's broken out to celebrate their victory over the mercenaries and the coronation of their new skunkbeast lord. Eventually, the lustful fucking comes to an end and the skunks, satisfied (and in the case of all the girls, stuffed to overflowing with cum) disperse back into the woods.";
			else:
				say "     Several of the skunk girls move in to lavish attention upon you, grooming your fur, stroking your face, licking your dripping pussy and teasing your clit[if skrp is 1]. The skunk head at your waist shares sexy kisses with the skunk girls as well and even has one of them press her pussy to her muzzle to be eaten out[end if]. Several of the busty girls take turns suckling from your breasts, drawing out your milk. Once they get you well and truly aching for it, you raise your tail and give it an enticing swish towards the waiting skunkbeasts. They start to growl and scuffle playfully, vying for the right to mount you. Eventually a winner is chosen and you moan loudly as his cock is pressed into your heated folds. The others aren't left unsatisfied, with many other girls around eager to get their share of skunkbeast cock. They mate loudly and wildly all around you, providing a lovely show that fills you with pride.";
				say "     You get fucked good and hard by him, and several others, over the course of the wild orgy of skunk sex that's broken out to celebrate their victory over the mercenaries and the coronation of their new skunkbeast lady. Eventually, the lustful fucking comes to an end and the skunks, satisfied (and in the case of all the girls, stuffed to overflowing with cum) disperse back into the woods.[impregchance]";
			if humanity of player < 10:
				wait for any key;
				end the story saying "Having become the new Skunkbeast Lord, you lose yourself to the infection.";
				now battleground is "void";
				wait for any key;
				follow the turnpass rule;
				stop the action;
	else:
		LineBreak;
		say "     You slink further into the bushes, catching a glimpse of the skunkbeast lord slamming his two large forepaws down onto the advanced rifle, reducing it to advanced rubble. It vehemently strikes it several more times, grinding the pieces into the ground before turning around and approaching his collection of new busty skunk girls who, having given into their infection, start lavishing attention upon him and vying for his cock to fill them. You watch him fuck one of them while the others settle for the few remaining skunkbeasts, all lustfully screaming as they're fucked and bred by their bestial lovers.";
	now Skunkbeast Battle is resolved;


Section 2 - Monster Responses

when play begins:
	add { "Skunkbeast Lord" } to infections of furry;
	add { "Skunkbeast Lord" } to infections of guy;
	add { "Skunkbeast Lord" } to infections of girl;
	add { "Skunkbeast Lord" } to infections of tailweapon;

to say sbldesc:
	setmongender 3; [creature is male]
	choose row monster from table of random critters;
	let debit be 0;
	if hardmode is true and level of player > 15, let debit be level of player - 15;
	say "     This skunkbeast is much larger than the others you've seen in the forest. While it mostly resembles a normal skunk, it is massive and almost the size of a small elephant. It has large paws with elongated claws and large, pointed teeth filling its giant muzzle. Under its belly, you can see its huge, black cock which leaks precum that is rich with the arousing scent of the skunk creatures. Several of the other skunks and skunkbeasts move in around you both but don't interfere as this battle begins. The skunkbeast lord's dark eyes are fixed on you with an animalistic intent, though it is cunning enough to keep you from reaching the gun. You will have to try your best to fight off the creature in the hopes of reaching the weapon if you want any hope of winning this battle.";
	now HP entry is 120 + ( debit * 6 ); [- How many HP has the monster got? -]
	now monsterHP is 120 + ( debit * 6 );
	now wdam entry is 16 + ( ( 2 * debit ) / 5 ); [-Amount of Damage monster Does when attacking.-]

to say beatthesbl:
	now skunkbeaststatus is 1;
	say "     Your final blow causes the skunkbeast to stagger back a few steps. It roars angrily and pulls itself back to its feet, far from defeated, but you take advantage of the opportunity to secure the strange rifle and train it on the skunkbeast lord.";

to say losetosbl:
	now skunkbeaststatus is 2;
	if HP of player > 0:
		say "     The alluring scent and powerful, masculine might of this creature become too tempting for you and you drop to your knees before it, unwilling to keep resisting it.";
	else:
		say "     Feeling worn down by the skunkbeast's attack, you make a final rush for the rifle. But just as you're about to put your hand on it, a big paw comes swinging in, knocking you to the ground with the rifle just out of reach.";


Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Skunkbeast Lord"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The enormous skunkbeast bats you aside with one of its large paws as you make a rush for the gun![or]Those vicious teeth dig into you![or]The skunkbeast's paw slams atop you, trying to crush you with its massive bulk![or]The skunkbeast lord slashes at you with its claws![or]As you make a move towards the gun, the beast moves quickly and knocks you aside with its charge![or]You attempt a feint and then rush for the gun, but the beast continues to turn, bringing its huge tail to block your path and push you back. As you are tossed back, you take in a heavy whiff of its strong, masculine scent and your will to keep resisting its bestial might erodes further![at random]"; [Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthesbl]"; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetosbl]"; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[sbldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a very bestial skunk";
	now body entry is "[if skrp is 1]that of a large, tauric skunk. Your upper body is humanoid and your lower body is that of a large skunk beast. At the groin where these two join you have a second head, that of the lusty skunk girl you've melded with. She seems quite pleased with the new, powerful body she shares with you, often encouraging you to make full use of it[else]large and very animalistic in form, preferring to move on all fours than on two feet. You resemble the skunk beasts you've seen around, but are somewhat larger than them. You have a very stocky, strong body with powerful arms and legs ending in big, clawed paws[end if]";
	now skin entry is "[if looknow is 1]dark black fur contrasting with pure white down your front and a matching stripe down your back, completely covering your[else]black and white furred[end if]";
	now tail entry is "A thick, black mass of fur blossoms from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip. A pair of white stripes travel up its length, completing the effect.";
	now cock entry is "[one of]black[or]ebon[or]sheathed[at random]";
	now face change entry is "your head flows and shifts, reforming into that of a feral skunk"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your latent skunkbeast nature is renewed through contact with skunk-infected nanites, transforming you once again into a [if skrp is 1]large skunkbeast taur[else]large skunkbeast[end if]";
	now skin change entry is "black fur moves over your head like a hood, leaving a muzzle that's white on the bottom with a head that's all black, all completed by the pair of rounded ears sitting atop it and a white stripe from the tip of your nose to your back. This then spreads over the whole of your body, covering you in skunk fur";
	now ass change entry is "there is a shifting inside you as your skunkbeast nature comes out again, bursting forth as a large, fluffy skunk's tail";
	now cock change entry is "it turns a midnight black and becomes mostly human in form, but slightly more pointed and with a furry sheath to cover it";
	now str entry is 20; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 8;
	now cha entry is 6;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 120; [ The monster's starting HP. ]
	now lev entry is 15; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 16; [ Monster's average damage when attacking. ]
	now area entry is "nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 24; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 16; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 6; [ Number of breasts the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 24; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 75; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if skrp is 1][one of]tauric[or]bestial[at random][else][one of]bestial[or]animalistic[or]feral[at random][end if]";
	now type entry is "[one of][if skrp is 1]skunktaur[else]skunk[end if][or]mephit[or]skunkbeast[at random]";
	now magic entry is false;
	now resbypass entry is true;
	now non-infectious entry is true;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "forestskunk"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 5 - Infection Controls

to sblinfect:
	[puts Skunkbeast Lord as lead monster]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Skunkbeast Lord":
			now monster is y;
			break;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	infect;


Section 6 - Endings for all Skunks

when play ends:
	if skunkbeaststatus is 2:		[defeated by skunkbeast lord and made into slut slave]
		say "     Having lost your battle of dominance with the skunkbeast lord, you are reduced to a near-mindless skunk fucktoy[if cunts of player > 0]. You are a buxom skunk babe like the others, but part of the lord's special harem (along with several of the other mercs from that fight). You are all fucked often, keeping you subdued and pregnant with more skunk girls to populate the forest[else]. You are a slender, feminine boytoy and hold a special place in your lord's harem (along with several of the other mercs from that fight). And while you don't have a cunt for him to breed, you are fucked as often as the others, keeping you subdued and stuffed with skunk cum[end if]. On occasion, your master will even share you with some of the other skunkbeasts as a special reward[if skunk kit is tamed and cunts of player > 0]. Among them, there's one in particular who seems to particularly enjoy mounting and filling you with his kits[else if skunk kit is tamed]. Among them, there's one in particular who seems to particularly enjoy mounting and filling you with his seed[end if]. With your mind reduced to that of a horny slut, it is never an outcome you ever regret.";
		if hellhoundlevel > 0:
			say "     Lost in the lustful decadence of being the skunkbeast lord's mindless fucktoy, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream. But he does not forget. Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
			say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave skunk to the countless foul hellhounds who guard the gates of Hell. Your experience as a fucktoy has served you well in preparing you for this unending task as the lustful slave to the demonic hounds. Your body is used in every foul, deviant act imaginable and responds lustfully to their every dark need or twisted whim[if cunts of player > 0]. The fel beasts breed you incessantly, filling your womb with litters of their spawn. Your pups are skunk-striped and capable of blasting noxious, sulfurous clouds, but otherwise pure hellspawn like their brethren in Hell's dark forces. They nurse from your breasts and grow strong, eventually joining the others in mating you until the ends of time[else if cocks of player > 0]. You are made to breed with many of the females, filling them with litters of tainted pups. These are skunk-striped and capable of blasting noxious, sulfurous clouds, but are otherwise pure hellspawn like their brethren in Hell's dark forces[end if].";
		stop the action;
	else if skunkbeaststatus is 1 and bodyname of player is "Skunkbeast Lord":
		if humanity of player < 10:		[SUCCUMB]
			say "     As your identity fades away as your skunkbeast instincts start to take over, you start to become the new lord over the skunks of the forest. As their powerful master, attention is lavished upon you by the numerous skunk girls and the other, subservient skunkbeasts. Over time you grow larger, eventually becoming even bigger than the one you deposed. You hardly remember such times, simply envisioning your new self in a bestial battle with it.";
			if skrp is 1:
				say "     While your mind is reduced mostly to a bestial state, the second head on your skunktaur body remains and continues to speak. She is very pleased with the new life you both share as the masters of the skunks and is always eager to have you make the most of your new position. Her cunning plans and lustful, kinky ideas are a great asset to you in your new position.";
			if cocks of player > 0 and cunts of player is 0:	[MALE]
				say "     You mount and breed your slutty skunks often, pumping them full until they're bloated from it. For while the skunkbeasts can sire more skunk girls, you can sire more skunkbeasts. Your numbers grow even further when the military try to move through the city. Your might is capable of dealing with anything they throw at you and you always enjoy the spoils of your victories, creating many more sexy skunks from (and in) their fallen soldiers. As overpopulation starts to become an issue, some of the other skunkbeasts break off with their harems of girls to leave the city and spread the glories of skunkdom to the rest of the world.";
				if ( franksex > 2 or frankmalesex > 2 ) and frankmalesex > franksex:
					say "     Having vague memories of another skunk you once knew in the city, you form a plan to capture him. Coupling your bestial cunning with what you remember of his habits, you and several skunk girls lay a trap for him using soda and comics. Once ensnared, the girls are eager to complete their work of turning him into another skunk girl, but you have other plans. Following your instincts, you manage to transform him into a large, pudgy skunkbeast, who eagerly pounces and mates the buxom sluts. He becomes your lieutenant and loyal guard, ensuring you maintain a long rule. Acting on your lingering memories, you let this pudgy skunk mount you on occasion, though you'll often do the same to him as well. He is the only one you'll allow this distinction and he never seeks to supplant your position during these moments.";
				else if ( franksex > 2 or frankmalesex > 2 ) and franksex >= frankmalesex:
					say "     Having vague memories of another skunk you once knew in the city, you form a plan to capture him. Coupling your bestial cunning with what you remember of his habits, you and several skunk girls lay a trap for him using soda and comics. Once ensnared, the girls eagerly complete their work of turning him into another skunk girl for your harem. Becoming a large, Rubenesque skunk, she is the best breeder in your harem, birthing larger litters and more often than any other. Francine's mind does not fade away completely, but embraces her new life as a breeder slut. Being too bloated to move from pregnancy most of the time, she spends most of her free time reading the comics you have the others collect for your favorite breeder.";
			else if cocks of player > 0 and cunts of player > 0:	[HERM]
				say "     You mount and breed your slutty skunks often, pumping them full until they're bloated from it. For while the skunkbeasts can sire more skunk girls, you can sire more skunkbeasts. Your womb also births fresh skunkbeasts, greatly adding to your forces. Your numbers grow even further when the military try to move through the city. Your might is capable of dealing with anything they throw at you and you always enjoy the spoils of your victories, creating many more sexy skunks from (and in) their fallen soldiers. As overpopulation starts to become an issue, some of the other skunkbeasts break off with their harems of girls to leave the city and spread the glories of skunkdom to the rest of the world.";
				if ( franksex > 2 or frankmalesex > 2 ) and frankmalesex >= franksex:
					say "     Having vague memories of another skunk you once knew in the city, you form a plan to capture him. Coupling your bestial cunning with what you remember of his habits, you and several skunk girls lay a trap for him using soda and comics. Once ensnared, the girls are eager to complete their work of turning him into another skunk girl, but you have other plans. Following your instincts, you manage to transform him into a large, pudgy skunkbeast, who eagerly pounces and mates the buxom sluts. He becomes your lieutenant and loyal mate, ensuring you maintain a long rule. Among the skunkbeasts, the plump fellow is your favorite, allowing him to fill your womb with his hot seed often to breed more skunkbeasts.";
				else if ( franksex > 2 or frankmalesex > 2 ) and franksex > frankmalesex:
					say "     Having vague memories of another skunk you once knew in the city, you form a plan to capture him. Coupling your bestial cunning with what you remember of his habits, you and several skunk girls lay a trap for him using soda and comics. Once ensnared, the girls eagerly complete their work of turning him into another skunk girl for your harem. Becoming a large, Rubenesque skunk, she is the best breeder in your harem, birthing larger litters and more often than any other. Francine's mind does not fade away completely, but embraces her new life as a breeder slut. Being too bloated to move from pregnancy most of the time, she spends most of her free time reading the comics you have the others collect for your favorite breeder.";
			else if cocks of player is 0 and cunts of player > 0:	[FEMALE]
				say "     Being a giant, female skunkbeast, you allow the other skunkbeasts to compete for your affections and mount you. Unlike when they breed the skunk girls to sire more of the buxom sluts, your womb breeds more skunkbeasts. Your numbers grow even further when the military try to move through the city. Your might is capable of dealing with anything they throw at you and you always enjoy the spoils of your victories, creating many more sexy skunks from their fallen soldiers. As overpopulation starts to become an issue, some of the other skunkbeasts break off with their harems of girls to leave the city and spread the glories of skunkdom to the rest of the world.";
				if franksex > 2 or frankmalesex > 2:
					say "     Having vague memories of another skunk you once knew in the city, you form a plan to capture him. Coupling your bestial cunning with what you remember of his habits, you and several skunk girls lay a trap for him using soda and comics. Once ensnared, the girls are eager to complete their work of turning him into another skunk girl, but you have other plans. Following your instincts, you manage to transform him into a large, pudgy skunkbeast, who eagerly pounces and mates the buxom sluts. He becomes your lieutenant and loyal mate, ensuring you maintain a long rule. Among the skunkbeasts, the plump fellow is your favorite, allowing him to fill your womb with his hot seed often to breed more skunkbeasts.";
			else:		[NEUTER]
				say "     Being a genderless skunkbeast lord, you act as guardian for the other skunkbeasts as they work to expand your numbers. Following some hidden instincts, you are able to transform some of your favorites among the female sluts into new skunkbeasts. Your numbers grow even further when the military try to move through the city. Your might is capable of dealing with anything they throw at you and you always enjoy the spoils of your victories, creating many more sexy skunks from their fallen soldiers. As overpopulation starts to become an issue, some of the other skunkbeasts break off with their harems of girls to leave the city and spread the glories of skunkdom to the rest of the world.";
				if franksex > 2 or frankmalesex > 2:
					say "     Having vague memories of another skunk you once knew in the city, you form a plan to capture him. Coupling your bestial cunning with what you remember of his habits, you and several skunk girls lay a trap for him using soda and comics. Once ensnared, the girls are eager to complete their work of turning him into another skunk girl, but you have other plans. Following your instincts, you manage to transform him into a large, pudgy skunkbeast, who eagerly pounces and mates the buxom sluts. He becomes your lieutenant and eventually a skunkbeast lord like yourself. Unlike the others, he does not leave, taking over the duties of breeding more skunkbeasts in the skunk girls while you both work as a team to defend the first and greatest of the skunk harems[if frankmalesex > 2]. You do take on a more submissive role to him, raising your tail for the virile male and letting him mount you as well[end if].";
			if skunk kit is tamed:
				say "     Peppy accompanies you into your new life, quickly growing and maturing into a large skunkbeast[if skrp is 1] taur[end if] like yourself. Large and virile, he quickly becomes one of the most powerful among the group. As the military cordon begins to fall apart, he is the first to set off to become a skunkbeast lord in his new domain, taking many of the soldiers he personally defeated and turned into skunk breeders with him.";
		else:					[SURVIVE]
			say "     When the military comes through to rescue those survivors stranded in the city, your large, skunkbeast [if skrp is 1]taur [end if]body is met with some concern. Eventually, a larger transport helicopter is called in so you can be extracted. As you are airlifted out, you find yourself looking longingly towards the wild forest deep inside it, feeling some regret for leaving the other skunks behind. You shake your head, clearing away these instinctual urges and refocusing on your remaining humanity. You, like the others are examined by the scientists, who take some interest in you as you seem to be the only sane skunkbeast they're aware of[if skrp is 1], and a double-tauric one at that[end if]. You keep your special nature as the skunkbeast [if cunts of player > 0 and cocks of player is 0]lady[else]lord[end if] from them, worried what the military would do if they were aware of this.";
			say "     During your extended time at the military's facilities, you get to know the many others with skunk infections in detention as they're drawn to you, almost all having become skunk girls[if skrp is 1]. Your lower head is very adept at this, always having a glib word or a playful remark to pique their interest[end if]. While there is little opportunity to enjoy some private time with them, you do get contact information for them. After your release, you make contact with them and soon have an extensive harem and network of lovers to breed new skunkbeasts with[if skrp is 1]. Your lower head is a font of kinky ideas, always ensuring these orgies are wild and passionate[end if]. Your skunkbeast infection, too strong to be suppressed by the military's treatment, reactivates it in the others as well, allowing them to discretely spread their mephit nature to others as well outside the military's cordon.";
			say "     The skunk infection spreads through society, becoming the most prominent form in several areas[if cocks of player > 0] by the time the first litters of skunkbeasts are born from your original harem[else] and you transform several from your original harem into skunkbeasts to take charge of and breed these packs of skunk girls[end if]. While the skunk girls are still eager breeding sluts, they otherwise retain their minds, allowing them to hold their place in society. Over the years, they simply become more and more common, largely unnoticed as a threat. As you watch this happen over the decades, you sometimes muse that your skunk nature has overcome your human side, but that doesn't seem to matter. They'll be better off as sexy skunks anyhow.";
			if franksex > 2 or frankmalesex > 2:
				say "     When you were extracted, you made sure to provide them with information on Frank's hideout in the comic store. He is reluctant to leave his comic store, but is drawn to come along with you. He is not kept with your group at the military facility, so you don't get to see much. You task him with collecting more contact information for the skunks he meets until your release. Once out, you both meet up with a collection of the girls and celebrate your reunion long into the night.";
				if cocks of player > 0 and cunts of player is 0:		[MALE]
					if frankmalesex > franksex:
						say "     Over the course of the next few days of breeding, Frank gains a more feral skunk form. While not fully a skunkbeast, he does pick up several of their traits and becomes a rather pudgy skunkbeast man. Between rounds of fucking the girls, you take turns mounting each other. Frank stays by your side, becoming a much desired lover for the skunk girls who come visit. These girls soon learn to bring gifts of comics for the plump skunkbeast to earn his affections and Frank's new comic collect swells.";
					else:
						say "     Over the course of the next few days of breeding, Frank gains a more curvy figure, turning into a Rubenesque female skunk. As you mount her virgin pussy, Francine lustfully accepts her new life as your favorite breeder. She is by far the best breeder in your harem, birthing larger litters and more often than any other skunk girl in your harem. As your special lover, she is also a much desired playmate for the skunk girls who come visit. These girls soon learn to bring gifts of comics for the curvy skunk to earn her affections and Francine's new comic collection swells, as does her pregnant belly. Your servants always make sure she's got an ample supply to enjoy at those times she's too full of kits to move.";
					if skunk kit is tamed:
						say "     As Peppy matures into a skunkbeast, you mount it repeatedly, turning it into a female skunkbeast for you to breed. You keep your skunkbeast pet well bred, filling her womb with fresh skunkbeast kits as often as you can. The skunk girls adore her as well, loving to nurse milk from her large breasts while the other skunkbeasts fuck them.";
				else if cocks of player > 0 and cunts of player > 0:	[HERM]
					if frankmalesex >= franksex:
						say "     Over the course of the next few days of breeding, Frank gains a more feral skunk form. While not fully a skunkbeast, he does pick up several of their traits and becomes a rather pudgy skunkbeast man. Between rounds of fucking the girls, you have him mount you and breed you with more skunkbeasts in your womb. Frank stays by your side, becoming a much desired lover for the skunk girls who come visit. These girls soon learn to bring gifts of comics for the plump skunkbeast to earn his affections and Frank's new comic collect swells.";
					else:
						say "     Over the course of the next few days of breeding, Frank gains a more curvy figure, turning into a Rubenesque herm skunk. As you mount her virgin pussy, Francine lustfully accepts her new life as your favorite breeder. She is by far the best breeder in your harem, birthing larger litters and more often than any other skunk girl in your harem. Being a herm, she is also a much desired lover for the skunk girls who come visit. These girls soon learn to bring gifts of comics for the curvy skunk to earn her affections and Francine's new comic collection swells, as does her pregnant belly. Your servants always make sure she's got an ample supply to enjoy at those times she's too full of kits to move.";
					if skunk kit is tamed:
						say "     As Peppy matures into a skunkbeast, you mount it repeatedly, turning it into a female skunkbeast for you to breed. You keep your skunkbeast pet well bred, filling her womb with fresh skunkbeast kits as often as you can. The skunk girls adore her as well, loving to nurse milk from her large breasts while the other skunkbeasts fuck them.";
				else if cocks of player is 0 and cunts of player > 0:	[FEMALE]
					if franksex > 2 or frankmalesex > 2:
						say "     Over the course of the next few days of breeding, Frank gains a more feral skunk form. While not fully a skunkbeast, he does pick up several of their traits and becomes a rather pudgy skunkbeast man. Between rounds of fucking the girls, you have him mount you and breed you with more skunkbeasts in your womb. Frank stays by your side, becoming a much desired lover for the skunk girls who come visit. These girls soon learn to bring gifts of comics for the plump skunkbeast to earn his affections and Frank's new comic collect swells.";
					if skunk kit is tamed:
						say "     As Peppy matures into a skunkbeast, you allow it repeatedly, pumping you full of its hot seed and breeding more skunkbeasts in you. The skunk girls adore it as well and he is among the most desirable of the skunkbeasts to be had.";
				else:		[NEUTER]
					if franksex > 2 or frankmalesex > 2:
						say "     Over the course of the next few days of breeding, Frank gains a more feral skunk form. While not fully a skunkbeast, he does pick up several of their traits and becomes a rather pudgy skunkbeast man. Being a genderless skunkbeast lord, you have Frank breed the next wave of skunkbeasts in them. Frank stays by your side, becoming a much desired lover for the skunk girls who come visit. These girls soon learn to bring gifts of comics for the plump skunkbeast to earn his affections and Frank's new comic collect swells.";
					if skunk kit is tamed:
						say "     As Peppy matures into a skunkbeast, you make sure it has plenty of girls to mount and fill with kits. The skunk girls adore it as well and he is among the most desirable of the skunkbeasts to be had.";
	else if cunts of player > 0 and ( franksex > 2 or frankmalesex > 2 ) and ( bodyname of player is "Skunk" or bodyname of player is "Skunk Taur" ):
		let skunknumber be 1; [Skunk]
		if bodyname of player is "Skunk Taur", now skunknumber is 2;
		if humanity of player < 10:
			say "     Surrendering to your infection, your skunk instincts lead you back to that talkative skunk you met in the city. Drawn back to his comic shop, you are let in when you call up. Noticing the change in you, he cuddles you close and strokes your skunk body, chirring happily that you've still come back to him. Soon, you grow excited and are soon frolicking with the large male. You moan and giggle underneath him as he mates with you. You move in with him, having become an affectionate and lusty [if skunknumber is 1]skunk girl[else if skunknumber is 2]skunktaur[end if][if skunk kit is tamed]. He cares for you and Peppy. As your little kit matures, he grows and changes, gradually becoming a hefty anthro skunk like his adoptive father[end if].";
			say "     As a [if skunknumber is 1]lusty skunk girl, you tantalize your big lover often into pouncing and mating you, soon filling you with a litter of kits[end if][if skunknumber is 2]skunk taur, your conjoined partner is a wonderful font of kinky ideas, which you always agree to, as they are so much fun. You spend a lot of time under your big lover and are soon rewarded with a litter of kits. Some are anthro skunks like their father and others are conjoined skunk taurs like their mother[end if]. The girls are sexy and beautiful like their mother while the boys are strong and hefty like their father. Frank is very proud of them and reads to them constantly, making sure they are properly versed in all the classics - from the Golden Age to modern works, from Superman to Fables and everything in between.";
			say "     As they grow up, he leads them on searches through the city, scavenging stores and homes for more comics to add to the store's collection. Mostly passed over by the hordes of lustful creatures, there are plenty to find and the young ones seem to have a talent for sniffing them out. Particular effort is made to find more adult comics, increasing the stock of those shelves greatly, as they are in high demand by the city's new inhabitants. A few, brave explorers of the city act as couriers, bringing outside comics and new releases in trade for the other goods found during these searches.";
		else:
			say "     When the military comes through to rescue you, you provide them with information on Frank's hideout in the comic store. He is reluctant to leave his comic store behind, but comes along to be with you. He is not kept with your group at the military facility, so you don't get to see much of him until your release. Once out, you both meet up and celebrate your reunion long into the night.";
			If bodyname of player is "Skunk Taur":
				say "     At the military base, there was much interest in you and your conjoined partner among the military scientists. Your lower half was quite playful with them, often making teasing remarks or lewd suggestions. You found yourself always having to act cool and stay collected to try and keep them from thinking you'd succumb and were a threat somehow. Your unusual body prompted them to keep you longer than usual, but eventually they had to release you to deal with more pressing problems. After all that, it is refreshing to be back together with Frank, who lovingly cares for you and your special body-partner. Your conjoined partner is a wonderful font of kinky ideas, often adding to the excitement of your lovemaking with your sexy lover.";
			say "     You move into a place together with the hefty skunk and enjoy a lustful relationship with the talkative skunk. His passions for comics and roleplaying grow on you over time and you learn enough to join into his conversations and give opinions of your own. When he starts to make forays back into the city to retrieve the contents of his store, you support his decision, knowing the depths of his passion. While sometimes it is hard waiting and worrying for him, he always manages to make it back home safely with another load of backpacks full of books. The celebratory sex after having built up his arousal in the lustful city is always the best: rambunctious, loud and oh so satisfying. These trips also provide the big male with lots of exercise, and while he never loses his cute, pudgy body, he becomes much stronger and a more vigorous lover.";
			say "     [If skunk kit is tamed]Peppy grows and matures as you care for him, changing as he grows until he becomes a young anthro skunk like his adopted father. [end if]Frank sires several litters of skunk kits with you[if skunknumber is 2]. Some are anthro skunks like their father and others are conjoined skunk taurs like yourself[end if]. The girls are sexy and beautiful like their mother while the boys are strong and hefty like their father. Growing up on comics, they all become avid comic and sci-fi fans, many of them taking their passion into their adulthood and having successful careers in the comic, movie and television industries.";
	else if cunts of player is 0 and frankmalesex > 2 and ( bodyname of player is "Skunk" or bodyname of player is "Skunk Taur" ):
		let skunknumber be 1; [Skunk]
		if bodyname of player is "Skunk Taur", now skunknumber is 2;
		if humanity of player < 10:
			say "     Surrendering to your infection, your skunk instincts lead you back to that talkative skunk you met in the city. Drawn back to his comic shop, you are let in when you call up. Noticing the change in you, he cuddles you close and strokes your skunk body, chirring happily that you've still come back to him. Soon, you grow excited and are soon frolicking with the large male. You moan and giggle underneath him as he mates with you. You move in with him, having become an affectionate and lusty [if skunknumber is 1]skunk boytoy[else if skunknumber is 2]skunktaur lover[end if][if skunk kit is tamed]. He cares for you and Peppy. As your little kit matures, he grows and changes, gradually becoming a hefty anthro skunk like his adoptive father and they both take turns pounding you[end if].";
			say "     As a [if skunknumber is 1]girly skunk boytoy, you tantalize your big lover often into pouncing and mating you, soon filling you with creamy seed often[end if][if skunknumber is 2]submissive skunk taur, your conjoined partner is a wonderful font of kinky ideas, which you always agree to, as they are so much fun. You spend a lot of time under your big lover and are filled with his creamy seed often[end if]. His initial reluctance long gone, he'll have a gay, wild romp with you whenever you desire it, even managing to pull his nose from his precious comics some times for a good, hard fuck.";
			say "     When a wayward skunkgirl is found unconscious in the city and brought back, she's taken in and becomes another lover and mate for Frank. You are a little jealous at first, but as he makes love to you as wonderfully and as often as before, you soon get over it. Soon enough, she's filled with kits and your home becomes much more lively. The girls are sexy and beautiful like their mother while the boys are strong and hefty like their father. Frank is very proud of them and reads to them constantly, making sure they are properly versed in all the classics - from the Golden Age to modern works, from Superman to Fables and everything in between.";
			say "     As they grow up, he leads them on searches through the city, scavenging stores and homes for more comics to add to the store's collection. Mostly passed over by the hordes of lustful creatures, there are plenty to find and the young ones seem to have a talent for sniffing them out. Particular effort is made to find more adult comics, increasing the stock of those shelves greatly, as they are in high demand by the city's new inhabitants. A few, brave explorers of the city act as couriers, bringing outside comics and new releases in trade for the other goods found during these searches.";
		else:
			say "     When the military comes through to rescue you, you provide them with information on Frank's hideout in the comic store. He is reluctant to leave his comic store behind, but comes along to be with you. He is not kept with your group at the military facility, so you don't get to see much of him until your release. Once out, you both meet up and celebrate your reunion long into the night.";
			If bodyname of player is "Skunk Taur":
				say "     At the military base, there was much interest in you and your conjoined partner among the military scientists. Your lower half was quite playful with them, often making teasing remarks or lewd suggestions. You found yourself always having to act cool and stay collected to try and keep them from thinking you'd succumb and were a threat somehow. Your unusual body prompted them to keep you longer than usual, but eventually they had to release you to deal with more pressing problems. After all that, it is refreshing to be back together with Frank, who lovingly cares for you and your special body-partner. Your conjoined partner is a wonderful font of kinky ideas, often adding to the excitement of your lovemaking with your sexy lover.";
			say "     You move into a place together with the hefty skunk and enjoy a lustful relationship with the talkative skunk. His passions for comics and roleplaying grow on you over time and you learn enough to join into his conversations and give opinions of your own. When he starts to make forays back into the city to retrieve the contents of his store, you support his decision, knowing the depths of his passion. While sometimes it is hard waiting and worrying for him, he always manages to make it back home safely with another load of backpacks full of books. The celebratory sex after having built up his arousal in the lustful city is always the best: rambunctious, loud and oh so satisfying. These trips also provide the big male with lots of exercise, and while he never loses his cute, pudgy body, he becomes much stronger and a more vigorous lover.";
			If skunk kit is tamed:
				say "     Peppy grows and matures as you care for him, changing as he grows until he becomes a young anthro skunk like his adopted father. Taking after Frank, he'll happily pound your sexy ass while your mate is off on his collection runs. He keeps you filled and satisfied until then, making the time apart more bearable for you. But the times they share you back and forth are the best, taking turns fucking and filling you over and over again until you're so sore and stuffed that you can hardly move for hours, lost in a haze of blissful afterglow.";
	else if skunk kit is tamed:
		if bodyname of player is "Skunk":
			if humanity of player < 10:
				if cunts of player > 0:
					say "     Surrendering to the infection, you make an even better mother to Peppy, as you soon give your first little skunk child several siblings to play with. Still, the first little skunk you rescued always has a special place in your skunky heart. And once he has grown up enough, he also proves to be a fine skunk mate for you in your new life, and you bear him even more wonderful skunk kits for you to raise.";
				else:
					say "     Surrendering to the infection, you make an even better parent to Peppy, as you soon shift and transform into a large, male skunkbeast. You capture and mate several soldiers, turning them into sexy femme skunks for you to mate. They become mothers to your first little kit and his many coming siblings. As he grows and matures into a big skunkbeast like his father, you teach him to hunt and fuck his prey to create his own harem of mates.";
			else:
				if cunts of player > 0:
					say "     After your rescue, you manage to smuggle Peppy out of the city with you. His presence a constant comfort to you as you settle into your new life outside the city. Eventually though like all kits will, he grows larger and stronger, and you have to work harder to hide it as you try to live life in the outside world. Eventually though, when his size is close to that of the skunk beasts in the city, you realize his presence seems to be triggering something within you. Where before his presence triggered strong protective impulses, now his presence only serves to excite your body, a fact that seems to interest him more and more, until one day you find yourself panting in need when you catch his scent, and realize his presence has triggered your body to go into heat. Seeing the skunk you raised in an entirely new manner, you crawl before him, and he sates himself on your eager body, instinct guiding him in how best to dominate you. As you moan underneath the new skunkbeast, you know the roles have changed in your life for good now, and you are now the pet, while he is the master. While at first no one can tell the difference, you soon buy yourself a proper collar to show your new status, and begin to plan ways to help your new master acquire more pets. You just know they will love bearing skunk kittens just like you will...";
				else:
					say "     After your rescue, you manage to smuggle Peppy out of the city with you. His presence a constant comfort to you as you settle into your new life outside the city. Eventually though like all kits will, he grows larger and stronger, and you have to work harder to hide it as you try to live life in the outside world. Eventually though, when his size is close to that of the skunk beasts in the city, you realize his presence seems to be triggering something within you. Where before his presence triggered strong protective impulses, now his presence serves to excite your body with dark urges. This is a fact that seems to interest him more and more, until one day you find yourself panting in need when you catch his scent and you get onto your knees beneath him, licking and sucking his impressive cock. Seeing the skunk you raised in an entirely new manner, you crawl before him and he sates himself on your eager body, instinct guiding him in how best to dominate you. As you moan underneath the new skunkbeast, you know the roles have changed in your life for good now, and you are now the pet, while he is the master. You are his special male skunk bitch. While at first no one can tell the difference, you soon buy yourself a proper collar to show your new status and begin to plan ways to help your new master acquire more pets. Your strangely enticing scent lures in others who you bring home for him to mount and change into sexy skunk femmes to breed. He occasionally even rewards your success by letting you mount one of them.";
		else if bodyname of player is "Skunk Taur":
			if humanity of player < 10:
				if cunts of player > 0:
					say "     Surrendering to the infection, your conjoined partner urges you to nurse feed Peppy and you give in to her suggestion. You do whatever she wants actually, as she always has such wonderfully kinky ideas. Feeding your little one, he grows and matures quickly, becoming a skunkbeast like those in the forest. You are soon raising your tail and letting your beastly new master mount your skunktaur body and mate you, filling you with new kits.";
				else:
					say "     Surrendering to the infection, your conjoined partner urges you to raise Peppy as your own and you give in to her suggestion. You do whatever she wants actually, as she always has such wonderfully kinky ideas. At her urging, you capture and mate several soldiers, turning them into sexy femme skunks for you to mate. As you shift into a large, male skunkbeast taur, they become mothers to your first little kit and his many coming siblings. As he grows and matures into a big skunkbeast taur like his father, you teach him to hunt and fuck his prey to create his own harem of mates.";
			else:
				say "     After your rescue, you manage to smuggle Peppy out of the city with you. Your conjoined partner is wholeheartedly on board with this plan and helps you distract the military with her unusual nature, but refrains from too much sexual urging to keep them from worrying you're too infected to leave. Your unusual body does prompt them to keep you for study longer than most, but eventually they have to release you to deal with more pressing problems.";
				say "     Your lower half is quite lustful when you are finally free and you both celebrate with a long string of sexual escapades. She always has such wonderfully kinky ideas for you both to try. Finding playmates can be difficult at times, as your unusual dual nature puts many off, though some are intrigued enough to discover the myriad pleasures you both can provide.";
				if cunts of player > 0:
					say "     Outside of your lustful romps out of the house, your lustful partner urges you on several occasions to nurse feed Peppy. When you eventually give it a try while feeling particularly naughty, you are filled with erotic pleasure as the little fellow feeds and you take to doing it regularly. He grows quickly, maturing into a skunkbeast taur. As he gets bigger and your heat arrives, you need no prompting from your lower half to offer your tail to him and let him take you as his mate, filling you with his virile seed. While at first no one can tell the difference, you soon buy yourself a proper collar to show your new status, and begin to plan ways to help your new master acquire more pets. You both just know they will love bearing skunk kittens just like you will...";
				else:
					say "     Outside of your lustful romps out of the house, your lustful partner reminds you on several occasions to snuggle with your little kit, not wanting to neglect your favorite pet. He continues to grow larger over time, becoming more difficult to hide, but you both always seem to manage. Two heads are better than one, after all.";
					say "     Eventually though like all kits will, it grows larger and stronger, and you have to work harder to hide it as you try to live life in the outside world. Eventually though, when its size is close to that of the skunk beasts in the city, you realize its presence seems to be triggering something within you. Where before its presence triggered strong protective impulses, now its presence serves to excite your body with dark urges. This is a fact that your skunk half urges you to act on and soon enough, you are panting in need when you catch his scent and you get onto your knees beneath him, licking and sucking his impressive cock. You both take turns licking, kissing and sucking his large shaft. Seeing the skunk you raised in an entirely new manner, you crawl before him and he sates himself on your eager body, instinct guiding him in how best to dominate your skunktaur body.";
					say "     As you moan underneath the new skunkbeast, you can feel him changing and becoming a skunkbeast taur. With this change in form, you both know the roles have changed in your life for good now, and you are now the pet, while he is the master. You are his special male skunk bitch. While at first no one can tell the difference, you soon buy yourself a proper collar to show your new status and your conjoined partner is always urging you to bring your outside lovers home now to introduce them to your sexy master so they can be changed into sexy skunk femmes to breed. He occasionally even rewards your success by letting you mount one of them.";
		else:
			if humanity of player < 10:
				say "     Peppy whines at you pathetically as you surrender to the infection fully, still obviously attached to you even now. You manage to bring yourself to care for it for a bit longer, but as it grows larger and stronger and more like a regular skunkbeast, you find yourself less and less able to tolerate his presence. Eventually you drive the skunkbeast out into the wild on its own, the beast more than able to take care of itself now, and let you get back to your own cares.";
			else:
				say "     After your rescue, you manage to smuggle Peppy out of the city with you. Its presence a constant comfort to you as you settle into your new life outside the city. Eventually though like all kits will, it grows larger and stronger, and you have to work harder to hide it as you try to live life in the outside world. Soon the skunk kit has grown almost as large as those you fought in the city, this doesn't cause any problems until at one point he tries to mount you in your sleep. While you wake up in time to stop the action, his scent filling the room makes you almost want to let him continue. Unable to ignore the problem you try to make the skunk understand it has to be careful, only to have the now instinct driven beast set out on its own to find mates to fill in this new area. You try to find him for quite a while, and turn up no clues at all, although you hear later about a new explosion of skunkmorphs in the region...";
	else if bodyname of player is "Skunk":		[Skunk player w/o kit]
		if humanity of player < 10:
			if cunts of player > 0:
				say "     Surrendering to the infection, you are drawn back to the forest by the alluring scent of the skunkbeasts on the wind. Finding one, you are rutted repeatedly and made into one of his many mates, bred full of beautiful skunk kits[if cocks of player > 0]. You do occasionally sneak off to grab one of the busty females and slake your male needs on them, siring a few kits of your own behind your master's back[end if].";
			else:
				say "[one of]     Surrendering to the infection, you are drawn back to the forest by the alluring scent of the female skunks on the wind. Finding one, you pounce her and screw her repeatedly. As you do, you grow larger and more feral in form, much to her delight. Soon enough, you are a skunkbeast like the others roaming the forest and you set off to collect or infect new skunk femmes to be your harem of mates.[or]     Surrendering to the infection, you are drawn back to the forest by the alluring scent of the skunkbeasts on the wind. Finding one, you submit to him and are rutted repeatedly. You become his sexy male skunk bitch, tending to his needs when his females are not in heat.[at random]";
		else:
			if cunts of player > 0 and cocks of player > 0:
				say "     You are rescued from the infected city by the military forces as they move through. At the base, you are subject to a series of tests, but aside for your dual-gendered nature, you are a skunk girl like many they have already seen and arouse little scientific interest. Eventually they must be satisfied that you haven't given into your infection, for you are released. You live a quiet life for a while, needing a break after the excitement of the city. But you wake up one morning with a burning in your loins and an erection that won't go away. You have gone into heat.";
				say "     Drawn by a strange impulse, you go to [one of]several pets stores until you find one with a pet skunk you can buy. You buy the little fellow as well as several accessories. Nursing him on your milk helps slake your lust and you are able to rest. But when you awaken, your pet has grown considerably, now a smaller version of the skunkbeasts from the city. And he's in the process of trying to mount you. As his cock sinks into you, you moan with satisfaction and give in to your new master, becoming his pet and breedtoy. After a long breeding and milking session completes his growth and transformation as well as your impregnation, you head out into the city to find more needy skunk girls to bring back so they can be properly bred by a skunkbeast like they were meant to be[or]a couple of clubs and bars until you find one with a skunk girl among the clientele. You buy the lovely femme some drinks before inviting her back to your place. There you pounce her and rut her like an animal, much to her delight. You satisfy her instinctual needs as well as your own as you breed her while becoming more and more like the feral skunkbeasts of the woods. She becomes the first of your new mates and lures in others for you to mate and add to your harem. You take equal pleasures in rutting your new victims or having them pushed into your ample womb to be transformed[at random].";
			else if cunts of player > 0:
				say "     You are rescued from the infected city by the military forces as they move through. At the base, you are subject to a series of tests, but you are a skunk girl like many others they have seen and so you arouse no scientific interest. Eventually they must be satisfied that you haven't given into your infection, for you are released. You live a quiet life for a while, needing a break after the excitement of the city. But you wake up one morning with a burning in your loins that won't go away. You have gone into heat.";
				say "     Drawn by a strange impulse, you go to several pets stores until you find one with a pet skunk you can buy. You buy the little fellow as well as several accessories. Nursing him on your milk helps slake your lust and you are able to rest. But when you awaken, your pet has grown considerably, now a smaller version of the skunkbeasts from the city. And he's in the process of trying to mount you. As his cock sinks into you, you moan with satisfaction and give in to your new master, becoming his pet and breedtoy. After a long breeding and milking session completes his growth and transformation as well as your impregnation, you head out into the city to find more needy skunk girls to bring back so they can be properly bred by a skunkbeast like they were meant to be.";
			else:
				say "     You are rescued from the infected city by the military forces as they move through. At the base, you are subject to a series of tests. Your nature as a male skunk arouses some scientific interest, but you are a skunk like so many others they've rescued and there are much higher priorities than an anomaly like you. Eventually they must be satisfied that you haven't given into your infection, for you are released. You live a quiet life for a while, needing a break after the excitement of the city. But you wake up one morning with an erection that won't go away. You feel the urge, no, the need to mate.";
				say "     Drawn by a strange impulse, you go to a couple of clubs and bars until you find one with a skunk girl among the clientele. You buy the lovely femme some drinks before inviting her back to your place. There you pounce her and rut her like an animal, much to her delight. You satisfy her instinctual needs as well as your own as you breed her while becoming more and more like the feral skunkbeasts of the woods. She becomes the first of your new mates and lures in others for you to fuck and transform.";
	else if bodyname of player is "Skunk Taur":
		if humanity of player < 10:
			if cunts of player > 0:
				say "     Surrendering to the infection, you are drawn back to the forest by the alluring scent of the skunkbeasts on the wind. Your lower half urges you on incessantly as you find yourself in a lustful heat. Finding one of the big males, you are rutted repeatedly and made into one of his many mates, bred full of beautiful skunk kits. Being such a large mate, you are his favorite, best able to take his massive cock and bear him large litters[if cocks of player > 0]. Your skunk partner coaxes you often to sneak off to grab one of the busty females and slake your male needs on them, siring a few kits of your own behind your master's back[end if].";
			else:
				say "     Surrendering to the infection, you are drawn back to the forest by the alluring scent of the [one of]female skunks on the wind. Your lower half urges you on incessantly as your throbbing cock stands erect and ready. Finding one of the needy females, you pounce her and screw her repeatedly. As you do, you grow larger and more feral in form, much to her delight. Soon enough, you are a skunkbeast taur. You are like fully skunk now like the others roaming the woods, but in taur form. You and your pleased partner set off to collect or infect new skunk femmes to be your harem of mates[or]alluring scent of the skunkbeasts on the wind. Your lower half urges you on incessantly as your combined body longs to submit to them. Finding one, you submit to the large male and are rutted repeatedly. You become his sexy male skunktaur bitch, tending to his needs when his females are not in heat[at random].";
		else:
			say "     After your rescue, you and your conjoined partner are the subject of much interest by the military scientists. Your lower half is quite playful with them, often making teasing remarks or lewd suggestions. You find yourself often acting cool and collected to try and keep them from thinking you've succumb and are a threat somehow. Your unusual body does prompt them to keep you for study longer than most, but eventually they have to release you to deal with more pressing problems.";
			say "     Your lower half is quite lustful when you are finally free and you both celebrate with a long string of sexual escapades. She always has such wonderfully kinky ideas for you both to try. Finding playmates can be difficult at times, as your unusual dual nature puts many off, though some are intrigued enough to discover the myriad pleasures you both can provide.";
			say "     Remaining in contact with one of the scientists, you often talk to him about your strange dual-natured life and he listens attentively while continuing his tests. You explain the oddness of the sensations you get from your skunk body, the partial sensations of taste and feeling as she uses her mouth on someone. A particular pleasure you relate is that of kissing someone while your lower half sucks their cock or eats out their pussy. Or one of you eating pussy while the other sucks cock. There are so many pleasures you would not be able to experience without her.";
			say "     Your lower partner, whom you end up referring to as [']Skunk['] or [']Slut['] if you want to be particularly teasing about her lustful suggestions, makes increasingly forward suggestions to him while you try to talk seriously with him. That is the nature of your relationship, with her being increasingly lewd and lustful while you play the straight man to her slut. Deep down, you are both quite the slut, but the roles you play is fun and lets her make sexual offers you otherwise couldn't.";
			say "     One day you are surprised when she manages to wear down your scientist friend. All the talk of kinky sex has gotten to the man, appealing to his hidden perversions. After a lustful romp in his lab, Slut suggest he bring in one of the skunk girls he's also been testing for some added fun next time. He schedules your testing together with a particular girl he likes and soon Slut is coaxing her into some French kissing while you wait. When you go in, you push her into the doctor's arms and you are all soon rutting lustfully.";
			if cunts of player > 0 and cocks of player > 0:
				say "     While the doctor is pounding away at her, releasing his pent-up desires for the lusty creature and she yowls with delight beneath him, Slut whispers for you to do it, to give in to your urges, that you know what to do. Acting on instinct, you move your taur body atop them and grind your throbbing cock and dripping pussy over their body. As you cum, you spray sticky fluid onto them, like the skunk goo you encountered long ago in the city. They moan and writhe, thrusting into one another hard as they start to meld and become a skunktaur like yourself, another herm, a perfect mate for you both. The scientist is briefly surprised by the unexpected change, but as you thrust into her new pussy, all objections disappear as you breed her hard and fast, much to their mutual delight.";
			else if cunts of player > 0:
				say "     While the doctor is pounding away at her, releasing his pent-up desires for the lusty creature and she yowls with delight beneath him, Slut whispers for you to do it, to give in to your urges, that you know what to do. Acting on instinct, you move your taur body atop them and grind your dripping pussy over their body. As you cum, you spray sticky fluid onto them, like the skunk goo you encountered long ago in the city. They moan and writhe, thrusting into one another hard as they start to meld and become a skunktaur like yourself, but male, a perfect mate for you both. You present yourself to the new taur and moan in delight as you receive the most satisfying fuck you've had since leaving the city as the new pair breed you, much to their mutual delight.";
			else:
				say "     While the doctor is pounding away at her, releasing his pent-up desires for the lusty creature and she yowls with delight beneath him, Slut whispers for you to do it, to give in to your urges, that you know what to do. Acting on instinct, you move your taur body atop them and grind your throbbing cock over their body. As you cum, you spray sticky fluid onto them, like the skunk goo you encountered long ago in the city. They moan and writhe, thrusting into one another hard as they start to meld and become a skunktaur like yourself, but female, a perfect mate for you both. The scientist is briefly concerned about the loss of his cock, but as you thrust into her new pussy, all objections disappear as you breed her hard and fast, much to their mutual delight.";

[ Skunkbeast Lord  ]
[ skunkbeaststatus ]
[ 0 = inactive     ]
[ 1 = victorious - now Skunkbeast Lord ]
[ 2 = lost - turned into skunk plaything ]
[ 3 = fled - encounter over ]

[ Double-Skunk / Skunk-Taur ]
[ skrp ]
[ -1 = not encountered ]
[ 0 = warning accepted ]
[ 1 = double-skunked   ]

Skunkbeast Lord ends here.
