Version 1 of Skunkbeast Lord by Stripes begins here.
[Version 1 - ]
"Adds a quest to defeat the Skunkbeast Lord in the hopes of dealing with the skunkbeasts."

Section 1 - Event

Skunkbeast Battle is a situation.  The level of Skunkbeast Battle is 15.
The sarea of Skunkbeast Battle is "Park";
skunkbeaststatus is a number that varies;
when play begins:
	add Skunkbeast Battle to badspots of guy;
	add Skunkbeast Battle to badspots of girl;
	add Skunkbeast Battle to badspots of furry;

Instead of resolving a Skunkbeast Battle:
	say "     You can hear a great deal of commotion coming from up ahead.  You take notice that there's a considerable number of black, gooey patches spread around the area as well as torn remnants of camoflaged clothes.  When gunfire breaks out briefly, you duck down and creep forward into the bushes, looking to find out what's happening.  Parting some branches at the edge of the next clearing, you can see a raging battle involving numerous of those sexy skunks you've seen around as well as several larger skunk beasts.  Looking more carefully, you can see that some of the skunks are actually mostly transformed soldiers, their clothes torn and their bodies being ravaged (much to their increasing delight) by skunkbeasts or teams of the other females.  The one still firing the rifle you heard has it torn from her hands by a skunk girl, who tosses it in the nearby creek as two more hold her down to be mounted.";
	say "     But it is the last soldier standing who is the most successful.  While still partially a skunk, he (though well on his way to becoming a she now) has a strange, futuristic gun that fires a stream of green energy at the skunks.  The blast from this seems to stun the skunkbeasts and, if held on them long enough, causes them to melt away into goo.  She turns towards the largest of the skunkbeasts, more than twice the size of the others as it turns to deal with her.  That's when you realize her jacket's not military issue, but instead emblazoned with the a stylized Z in a circle: Zephyr.  She yells incoherently as she's tackled by several of the skunk girls, including some of her former teammates and the gun is sent flying, landing only a few yards away from your hiding spot.";
	say "     You eye the strange weapon and the big beast charging towards it.  You have but a moment to decide if you'll face the beast so you can turn the gun on it.  It is clearly the one in charge and probably the source of all the others.  If you could take it down, you may even permanently solve the skunk problem in the park.  Given how well the trained mercenaries fared and all the other skunks around, this could go very badly for you.  Shall you risk facing this fearsome beast?";
	say "{{Warning: Success will permamently alter your interactions with the skunks in the game. :) }}";
	if the player consents:
		now skunkbeaststatus is 3;	[run away]
		say "     You jump from the bushes, making a dash for the rifle, but as you're picking it up, the giant beast is there and knocks it from your hands.  The enormous skunk growls menacingly and tries to bash you with its paw, but narrowly dodge out of the way.  You and the beast end up in a circle of the other skunks, locked in a match to grab or destroy the gun.";
		challenge "Skunkbeast Lord";
		if skunkbeaststatus is 3:
			say "     Unable to keep going against the fearsome might of the giant skunk, you fake it out with a final feint towards the gun and then make a break for the loose cordon of skunk creatures which gathered to watch their lord's battle.  As you weave between the skunk girls and beast, they cheer to the sounds of those giant paws crushing the gun into rubble.  You are disappointed that you weren't able to gain the strange weapon, but are glad to make it out of there alive and intact after facing such a foe.";
		otherwise if skunkbeaststatus is 2:	[defeated]
			say "     You are knocked down by the skunkbeast lord.  Pinning you down with one of his massive paws, he slams the other down onto the gun repeatedly, shattering and grinding the hated thing into the ground.  With you trapped and defeated, several of the female skunks rush up, laving attention upon the victory, nuzzling and caressing him all over.  Special attention is paid to his large, throbbing cock, which they stroke and rub with lustful moans and playful grins at you.  That's when you realize that they're keeping the dripping, pulsing meat pointed straight at you and you are awash in a torrent of skunk semen as the giant growls loudly and proudly in triumphant climax.";
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
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			if libido of player < 75, now libido of player is 75;
			say "     The thick, musky seed soaks into you, flooding your mouth and nose, forcing you to swallow it down as you struggle to breathe.  Your body soaks up the infected cum, changing rapidly, gaining a sexy, womanly figure like the skunk girls around you[if cunts of player > 0 and cocks of player > 0].  Your ebon cock is stiff and leaking cum, but it is your hot, dripping pussy that aches for attention[otherwise if cocks of player > 0].  Your ebon, skunk cock is stiff and leaking cum[otherwise if cunts of player > 0].  Your pussy is hot and dripping, aching for attention[end if].  When the skunkbeast moves its paw to release you, your paws move to your groin, playing with yourself lustfully as your flesh becomes the same glossy black of the skunk girls.  As your transformation continues, you notice the skunkbeast lord, whom you are starting to identify as your master, still standing over you with his large, throbbing cock.  You are up in an instant, licking and kissing at it, lavishing attention upon that wonderful cock.  He permits you to service him like this for a few minutes before releasing a soft growl.  Obediently you turn and present yourself, raising your tail and letting your new lord and master mount you and mate you as he takes you as his latest fucktoy pet.";
			end the game saying "Having become a fucktoy for the Skunkbeast Lord, you lose yourself to the infection.";
			now battleground is "void";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		otherwise if skunkbeaststatus is 1:		[victory]
			say "     With the skunkbeast lord charging at you, you waste no time in firing the power rifle at the creature.  The giant staggers, struggling to keep charging as your weapon sends a stream of green energy that washes over it.  Each step it tries to make gets slower as you can see it starting to lose cohesion.  You laugh triumphantly as it falls and the deterioration accelerates.";
			say "     But your success is short lived as the mob of skunk creatures, momentarily forgotten in your moment of triumph, swarm over you.  You are held down by a mass of squirming, black and white flesh, feeling groping paws, plump breasts, buxom bottoms, throbbing cocks and juicy cunts all over you.  Even as you try to point it at them, the rifle is pulled from your arms and you can hear it being shattered despite being too buiried to see it.  You are briefly worried that they're out for revenge, but they all lavish attention on you, almost fighting one another to get an opportunity to touch you.  But the reason for this hardly seems to matter now, the pleasure of all that sexy skunk flesh against yours becoming all you can think about as you start to change, feeling their infection rapidly taking hold.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "     When most of them suddenly start to move back, you moan in disappointment, trying to make a grab for one of those black beauties.  Still held by a group of them and too overwhelmed by the intensity of your recent contact, you don't resist as they drag you over to the quivering pile of goo that remains of your melting opponent.  Its limbs are barely distinguishable from the central mass which was once its body and rivulets of flowing skunk goo stain the grass around it.  Even as your body is changing and becoming more skunk-like, you are pressed into the melting mass of the skunkbeast lord.";
			say "     The black mess splatters and gives way as you slam into it, melting and flowing around you.  Your body is suddenly awash with lustful excitement, feeling the skunkbeast's gooey flesh bonding with you.  Even as most of it continues to melt away, much of it flows into you instead, joining with you and transforming you further.  But this change is different than before.  You can feel an increased power growing inside you, and along with it, lustful, instinctual urges.  When the rest of the fallen skunkbeast lord melts away, you emerge, large and powerful in your new, skunkbeast form.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			[puts Skunk as lead monster for infection and impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Skunk":
					now monster is y;
					break;
			now non-infectious entry is true;		[reg. Skunk infection closed]
			[puts Skunkbeast Lord as lead monster for infection and impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Skunkbeast Lord":
					now monster is y;
					break;
			now non-infectious entry is false;		[Skunkbeast Lord infection now open]
			decrease humanity of player by 25;
			if "Pure" is listed in feats of player, increase humanity of player by 5;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 5;
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
			if "Herm Perferred" is listed in feats of player or "Female Preferred" is listed in feats of player or (isHellhound is true and maleHound is false):	[Forced female]
				if cunts of player is 0, now cunts of player is 1;
				if cunt length of player < cunt length entry, now cunt length of player is cunt length entry;
				if cunt width of player < cunt length entry, now cunt width of player is cunt width entry;
				if breasts of player < breasts entry, now breasts of player is breasts entry;
				if breast size of player < breast size entry, now breast size of player is breast size entry;
			otherwise:
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
			otherwise:
				if cocks of player is 0, now cocks of player is 1;
				if cock length of player < cock length entry, now cock length of player is cock length entry;
				if cock width of player < cock length entry, now cock width of player is cock width entry;
			if "Herm Preferred" is listed in feats of player:
				now sex entry is "Both";
			now the strain of skunk goo is "Skunkbeast Lord";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			if libido of player < 75, now libido of player is 75;
			if skrp is 1:
				say "     As you look over your new, beastial body, you notice that your lusty skunk co-inhabitant has returned, turning you into an even bigger skunkbeast taur creature.  She tilts her head and turns her eyes as best she can, trying to feel out the new, powerful body you share even as you look it over for yourself.  You have a large upper torso covered in thick, black and white fur.  It is mostly humanoid in form, though has paw-like hands.  You run these over your face, feeling the beastial, skunk-like muzzle and sharp teeth, your head more like that of the skunkbeasts than the girls.  Your lower body is that of a large skunkbeast, on its own bigger than the others around you and ending in a big, floofy skunk's tail.  Your skunkbeast body isn't as large as the fallen lord, but you're tauric form helps make up for much of that.";
				say "     Perhaps it is just the infection, but you cannot help but be pleased with your new appearance.  Your second head is also quite pleased, saying '[if cocks of player > 0 and cunts of player > 0]Sweet!  We've got a nice, big cock for all those girls and a juicy muff for all those sexy beasts.  Let's have some fun![otherwise if cocks of player > 0]Wow!  We're really hung!  Let's put this big boy to use![otherwise]Oooh!  That hot, juicy cunt of ours feels so nice!  Let's get those sexy beasts to fill us up right![end if]'  You are in full agreement with her, beckoning your beautiful, sexy skunks to service their new skunkbeast lord.";
			otherwise:
				say "     As you look over your new, beastial body, you can see that you've become similar to the skunkbeast creatures, though much larger than any of them, as you've beaten and taken the place of their fallen lord.  You aren't as big as he was, but you are certainly a huge and impressive beast.  Running one of your large, clawed paws over your new face, you can feel the beastial, skunk-like muzzle and sharp teeth.  Your head has become more feral, more like that of the skunkbeasts than the girls.  Your body is covered in thick, black and white fur and ends in a large, floofy skunk's tail.  Perhpas it is the infection, but you cannot help but be plased with your appearance, having become a fine master for the other skunks.  Reminded of the other beautiful skunks around you, you motion for them to approach you and service their new skunkbeast lord.";
			if cocks of player > 0:
				say "     Several of the skunk girls move in to lavish attention upon you, grooming your fur, stroking your face, fondling your balls and stroking your pulsing cock[if skrp is 1].  The skunk head at your waist shares sexy kisses with the skunk girls as well and even has one of  them press her pussy to her muzzle to be eaten out[end if][if breasts of player > 0].  Several of the busty girls take turns suckling from your breasts, drawing out your milk[end if].  Spotting the one you believe to be the rifle's original wielder, you get her to present her curvy bottom for you, raising her tail to expose her wet muff.  You move atop her and the other girls jealously guide your penis into her and you start to fuck her senseless.  She moans and cries out in ecstasy as your large shaft stuffs her so full of skunk meat.  The others continue to run their paws over you as you ride your fucktoy.";
				if cunts of player > 0:
					say "     As you're riding her, you raise your own tail and give it a swish enticingly to the waiting skunkbeasts.  They start to growl and scuffle playfully, vying for the right to mount you.  Eventually a winner is chosen and you moan loudly as his cock is pressed into your heated folds.  The others aren't left unsatisfied, with many other girls around eager to get their share of skunkbeast cock.  They mate loudly and wildly all around you, providing a lovely show that fills you with pride.";
				otherwise:
					say "     As you're riding her, you watch as the other skunkbeasts pick girls from the group, dragging them off (with squeals of delight) to be fucked by the feral creatures.  They mate loudly and wildly all around you, providing a lovely show that fills you with pride.";
				say "     You fuck her, and several others, over the course of the wild orgy of skunk sex that's broken out to celebrate their victory over the mercenaries and the coronation of their new skunkbeast lord.  Eventually, the lustful fucking comes to an end and the skunks, satisfied (and in the case of all the girls, stuffed to overflowing with cum) disperse back into the park.";
			otherwise:
				say "     Several of the skunk girls move in to lavish attention upon you, grooming your fur, stroking your face, licking your dripping pussy and teasing your clit[if skrp is 1].  The skunk head at your waist shares sexy kisses with the skunk girls as well and even has one of  them press her pussy to her muzzle to be eaten out[end if].  Several of the busty girls take turns suckling from your breasts, drawing out your milk.  Once they get you well and truly aching for it, you raise your tail and give it an enticing swish towards the waiting skunkbeasts.  They start to growl and scuffle playfully, vying for the right to mount you.  Eventually a winner is chosen and you moan loudly as his cock is pressed into your heated folds.  The others aren't left unsatisfied, with many other girls around eager to get their share of skunkbeast cock.  They mate loudly and wildly all around you, providing a lovely show that fills you with pride.";
				say "     You get fucked good and hard by him, and several others, over the course of the wild orgy of skunk sex that's broken out to celebrate their victory over the mercenaries and the coronation of their new skunkbeast lady.  Eventually, the lustful fucking comes to an end and the skunks, satisfied (and in the case of all the girls, stuffed to overflowing with cum) disperse back into the park.";
			if humanity of player < 10:
				end the game saying "Having become the new Skunkbeast Lord, you lose yourself to the infection.";
				now battleground is "void";
				wait for any key;
				follow the turnpass rule;
				stop the action;
	otherwise:
		say "     You slink further into the bushes, catching a glimpse of the skunkbeast lord slamming his two large forepaws down onto the advanced rifle, reducing it to advanced rubble.  It vehemently strikes it several more times, grinding the pieces into the ground before turning around and approaching his collection of new busty skunk girls who, having given into their infection, start lavishing attention upon him and vying for his cock to fill them.  You watch him fuck one of them while the others settle for the few remaining skunkbeasts, all lustfully screaming as they're fucked and bred by their beastial lovers.";
	now Skunkbeast Battle is resolved;


Section 2 - Monster Responses

when play begins:
	add { "Skunkbeast Lord" } to infections of furry;
	add { "Skunkbeast Lord" } to infections of guy;
	add { "Skunkbeast Lord" } to infections of girl;
	add { "Skunkbeast Lord" } to infections of tailweapon;

to say beatthesbl:
	now skunkbeaststatus is 1;
	say "     Your final blow causes the skunkbeast to stagger back a few steps.  It roars angrily and pulls itself back to its feet, far from defeated, but you take advantage of the opportunity to secure the strange rifle and train it on the skunkbeast lord.";

to say losetosbl:
	now skunkbeaststatus is 2;
	if hp of player > 0:
		say "     The alluring scent and powerful, masculine might of this creature become too tempting for you and you drop to your kneees before it, unwilling to keep resisting it.";
	otherwise:
		say "     Feeling worn down by the skunkbeast's attack, you make a final rush for the rifle.  But just as you're about to put your hand on it, a big paw comes swinging in, knocking you to the ground with the rifle just out of reach.";

to say sbldesc:
	choose row monster from table of random critters;
	let debit be 0;
	if hardmode is true and level of player > 15, let debit be level of player - 15;
	say "     This skunkbeast is much larger than the others you've seen in the park.  While it mostly resembles a normal skunk, it is massive and almost the size of a small elephant.  It has large paws with elongated claws and large, pointed teeth filling its giant muzzle.  Under its belly, you can see its huge, black cock which leaks precum that is rich with the arousing scent of the skunk creatures.  Several of the other skunks and skunkbeasts move in around you both but don't interfere as this battle begins.  The skunkbeast lord's dark eyes are fixed on you with an animalistic intent, though it is cunning enough to keep you from reaching the gun.  You will have to try your best to fight off the creature in the hopes of reaching the weapon if you want any hope of winning this battle.";
	now hp entry is 120 + ( debit * 6 );			[- How many HP has the monster got? -]
	now monsterhp is 120 + ( debit * 6 );
	now wdam entry is 16 + ( ( 2 * debit ) / 5 );		[-Amount of Damage monster Does when attacking.-]


Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Skunkbeast Lord";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The enormous skunkbeast bats you aside with one of its large paws as you make a rush for the gun![or]Those vicious teeth dig into you![or]The skunkbeast's paw slams atop you, trying to crush you with its massive bulk![or]The skunkbeast lord slashes at you with its claws![or]As you make a move towards the gun, the beast moves quickly and knocks you aside with its charge![or]You attempt a feint and then rush for the gun, but the beast continues to turn, bringing its huge tail to block your path and push you back.  As you are tossed back, you take in a heavy wiff of it's strong, masculine scent and your will to keep resisting its beastial might erodes further![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthesbl]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetosbl]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[sbldesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "that of a very beastial skunk";
	now body entry is "[if skrp is 1]that of a large, tauric skunk.  Your upper body is humanoid and your lower body is that of a large skunk beast.  At the groin where these two join you have a second head, that of the lusty skunk girl you've melded with.  She seems quite pleased with the new, powerful body she shares with you, often encouraging you to make full use of it[otherwise]large and very animalistic in form, preferring to move on all fours than on two feet.  You resemble the skunk beasts you've seen around, but are somewhat larger than them.  You have a very stocky, strong body with powerful arms and legs ending in big, clawed paws[end if]";
	now skin entry is "[if looknow is 1]dark black fur contrasting with pure white down your front and a matching stripe down your back, completely covering your[otherwise]black and white furred[end if]";
	now tail entry is "A thick, black mass of fur blossoms from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip.  A pair of white stripes travel up its length, completing the effect.";
	now cock entry is "[one of]black[or]ebon[or]sheathed[at random]";
	now face change entry is "your head flows and shifts, reforming into that of a feral skunk";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your latent skunkbeast nature is renewed through contact with skunk-infected nanites, transforming you once again into a [if skrp is 1]large skunkbeast taur[otherwise]large skunkbeast[end if]";
	now skin change entry is "black fur moves over your head like a hood, leaving a muzzle that's white on the bottom with a head that's all black, all completed by the pair of rounded ears sitting atop it and a white stripe from the tip of your nose to your back.  This then spreads over over the whole of your body, covering you in skunk fur";
	now ass change entry is "there is a shifting inside you as your skunkbeast nature comes out again, bursting forth as a large, fluffy skunk's tail";
	now cock change entry is "it turns a midnight black and becomes mostly human in form, but slightly more pointed and with a furry sheath to cover it";
	now str entry is 20;			[ These are now the creature's stats... ]
	now dex entry is 14;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 8;
	now cha entry is 6;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 120;			[ The monster's starting hit points. ]
	now lev entry is 15;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 16;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 24;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 16;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 6;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 5;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 24;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 75;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if skrp is 1][one of]tauric[or]beastial[at random][otherwise][one of]beastial[or]animalistic[or]feral[at random][end if]";
	now type entry is "[one of][if skrp is 1]skunktaur[otherwise]skunk[end if][or]mephit[or]skunkbeast[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is true;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "parkskunk";		[ Row used to designate any special combat features, "default" for standard combat. ]


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
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	infect;


Section 6 - Endings

when play ends:
	if skunkbeaststatus is 2:		[defeated by skunkbeast lord and made into slut slave]
		say "     Having lost your battle of dominance with the skunkbeast lord, you are reduced to a near-mindless skunk fucktoy[if cunts of player > 0].  You are a buxom skunk babe like the others, but part of the lord's special harem (along with several of the other mercs from that fight).  You are all fucked often, keeping you subdued and pregnant with more skunk girls to populate the park[otherwise].  You are a slender, feminine boytoy and hold a special place in your lord's harem (along with several of the other merccs from that fight).  And while you don't have a cunt for him to breed, you are fucked as often as the others, keeping you subdued and stuffed with skunk cum[end if].  On occasion, your master will even share you with some of the other skunkbeasts as a special reward.  With your mind reduced to that of a horny slut, it is never an outcome you ever regret.";
		if hellhoundlevel > 0:
			say "***Hellhound add-on. (Coming soon)";
		stop the action;


Skunkbeast Lord ends here.