Version 1 of Margay by Stripes begins here.
[Version 1.3 - Unlocking 'Big Momma Megakitty']

[Adaptation for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Margay to Flexible Survival."

margaydancecount is a number that varies.
margayubed is a number that varies.
margaymet is a number that varies.

when play begins:
	add { "Margay" } to infections of furry;
	add { "Margay" } to infections of girl;


Section 1 - Monster Responses

to say margaydesc:
	setmongender 4; [creature is female]
	increase margaymet by 1;
	now margaydancecount is 0; [reset alt attack counter]
	say "     It seems like one of the fair's more hefty attendees has picked up some feline traits. Looking over the margay, her Rubenesque body is covered in a soft coat of golden fur speckled by leopard-like spots. The pattern changes on her head where it becomes a pair of stripes that run down the middle of her face, brushing past the eyes and passing both sides of the nose to stop at the end of said nose. The whole is decorated with cute little spots. Her head is a small feline head with large feline eyes and small pointed feline ears. From the way she moves and stretches, her large body is both quite large and VERY elastic in the belly. Over her plump belly is three rows of breasts, all fairly small and decreasing slightly in size. Her arms are motherly feline arms with human-style hands featuring retractable claws. Her legs are plantigrade legs with plenty of jiggle and firmly toned muscles. Her legs end with nearly human feet which have clawed toes and whose undersides consist of thick black skin pads. She has wide hips that look big enough to swallow or birth people whole, easily capable of giving painless and effortless births. Your eyes drawn to there, you can see she has a pair of large, wet vaginas, gaping a little as if in need to be filled. You can see a fresh trickle of juices from them as her feline eyes stare at you with a hungry desire.";


to say losetomargay:
	if UBlevel is 1 or a random chance of 1 in 4 succeeds:
		say "     The female margay looms over you, purring happily at her new prize. You are grabbed by the ample feline and your face pressed to her bosom. With your lips at her large nipple, you can't help but taste the dribbles of milk coming from it and that first taste is enough to set you to nursing. As you drink it down, it becomes all you can focus on.";
		say "     'Oh, such a good [if player is female]girl[else]boy[end if]. Drink it all down for your new mama,' she purrs while running her paws over your [bodydesc of player] body.";
		say "     She holds you even closer and runs her paws along your back, reaching down to grab your ass in a most un-motherly way. With a paw kneading your rear and the other [if player is male]stroking your cock[else if player is female]fingering your pussy[else if anallevel > 1]fingering your asshole[else]rubbing your bare crotch[end if], you can't help but moan and mewl softly and suckle all the harder[if player is not neuter]. You're pushed to climax just as you're emptying her plentiful milkjugs of the last few drops[else]. You're snuggled and caressed until you've emptied her plentiful milkjugs of every last drop[end if]. With your belly full of her warm milk, you end up drifting off in the big kitty's arms, only to awaken some time later [one of]in a large, open-topped box left in a secluded corner behind some rides[or]under a shut down ride[or]in the corner of a looted concession stand[or]on some torn costumes behind the carnival sideshow[at random]. And you feel different too, changed a little by your intimate meal. You stagger to your feet and leave the private spot where your feline mother left you to be safely hid until you awoke and soon find your way back to where you were.";
		SanLoss 5;
		PlayerDrink 6;
	else if margayubed is not 0 and margayubed is even:
		say "     The female margay looms over you, purring happily at her new prize. You are grabbed by the ample feline and your face pressed to her bosom. With your lips at her large nipple, you can't help but taste the dribbles of milk coming from it and that first taste is enough to set you to nursing. As you drink it down, it becomes all you can focus on.";
		say "     'Oh, such a good [if player is female]girl[else]boy[end if]. Drink it all down for your new mama,' she purrs while running her paws over your [bodydesc of player] body.";
		say "     She holds you even closer and runs her paws down your legs, guiding your feet to her gaping pussy before sliding them in with a happy moan. This goes largely unnoticed by you as you nurse past the increasingly warm and pleasurable feelings spreading up your legs and then to your hips. Her wet folds ripple over your [if cocks of player > 1]throbbing [cock size desc of player] [cock of player] cocks[else if cocks of player is 1]throbbing [cock size desc of player] [cock of player] cock[else if player is female]juicy [cunt size desc of player] petals[else]bare groin[end if].";
		say "     Holding your arms to your sides, she takes your hands in as well. But it's only when you're pulled away from that dribbling nipple by the constant peristaltic motion of her vaginal walls that you realize what's happening. Though your main reaction to this is to mewl in disappointment and smack your lips for more of that tasty milk. The Rubenesque feline only chuckles at this and rubs her paws over your head, pushing you further into her swollen body. ";
		if UBlevel > 1 and margaymet > 2 and MKunleashed is false:
			let tempmon be monster;
			setmonster "Megakitty";
			choose row monster from the table of random critters;
			if name entry is "Megakitty":
				now MKunleashed is true;
				now area entry is "Midway";
			say "     'I can't wait to tell Big Momma about you. The Megakitty so loves to meet the new kitties in our family,' she purrs, caressing your head tenderly before pushing you in further.";
			say "     While not quite understanding her meaning, her words do please you and you wriggle gently in her rippling cunny, adding to her pleasure";
		say "     Soon enough, you're fully encapsulated in her womb, feeling content and sleepy from the warmth and the milk. You feel quite happy as her uterine wall forms a placenta and an umbilical cord snakes its way down to connect to your navel, bonding you to your beautiful and loving feline mother. Feeling her paws rubbing over her full belly, you drift into a peaceful slumber, knowing she'll take care of you.";
		say "     When you come to, you're curled up [one of]in a large, open-topped box left in a secluded corner behind some rides[or]under a shut down ride[or]in the corner of a looted concession stand[or]on some torn costumes behind the carnival sideshow[at random]. And you feel different too, changed a little by your unusual experience. You stagger to your feet and leave the private spot where your feline mother left you safely hidden while you napped and soon find your way back to where you were.";
		increase margayubed by 1;
		decrease humanity of player by 10;
		increase libido of player by 5;
		PlayerDrink 6;
	else:
		say "     The female margay looms over you, purring happily at her new prize. You [if margayubed > 2]are almost looking forward to it as[else]aren't prepared for what happens next as[end if] the feline turns around and flashes her two vaginas in your face. 'Oh you'll make a FINE member of my family,' she purrs before squatting on your head, pressing her large body down atop you.";
		say "     [if margayubed > 2]You raise your head into position and lick at her wet folds as she kisses them to your face[else]You're too paralyzed to move[end if], her posterior cunt easily stretching around your head and swallowing you up as her bulk forces her down over you. Within moments you feel the rest of your body getting sucked up into her second yet very warm uterus[if player is male]. As your cock[smn] [isfv] pressed between your body and[else]. As your puss[yfn] grind[sfv] against[end if] her rippling vaginal walls, you cannot help but climax, cumming hard from the stimulation and the arousing taste and scent of female juices surrounding you. You are fully forced into her womb and are pressed into a fetal position as you struggle to remain conscious. Your captor's walls grow a placenta and an umbilical cord snakes its way down to your navel area to connect with a warm tingling that is somehow pleasant. Feeling her paws rubbing over her full belly, your struggles grow weaker until you pass out.";
		say "     When you come to, you're curled up [one of]in a large, open-topped box left in a secluded corner behind some rides[or]under a shut down ride[or]in the corner of a looted concession stand[or]on some torn costumes behind the carnival sideshow[at random]. And you feel different too, changed a little by your unusual experience. You stagger to your feet and leave the private spot where your feline mother left you safely hidden while you napped and soon find your way back to where you were.";
		increase margayubed by 1;
		SanLoss 5;
		increase libido of player by 5;


to say beatthemargay:
	if ( bodyname of player is "Margay" or facename of player is "Margay" ) and ( libido of player > 25 or humanity of player < 67 ):
		say "     As you look down at your defeated foe, you eye those large, wet slits of hers, feeling drawn to them. You lick your lips and, seeing your interest, she mewls softly and spreads her legs further, showing off her gaping, twitching pussies to you. The full-figured female runs her furry hands over her large belly, then down to her thighs to spread her wet holes open, releasing another mewl of need. 'Mmm... dive in, kitty. I know you want to.' Your new instincts are telling you to dive on in and eat out those delicious cunts.";
		say "     [bold type]Shall you do so?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Eat her out.";
		say "     ([link]N[as]n[end link]) - Leave.";
		if player consents:
			say "     You crawl between her legs and start nuzzling and licking at your large, luscious lips. Her pussies are quite huge, easily able to take much more than your arm with ease, as you prove by soon fisting her to get her mewling and even more. Your tongue travels all along those plump lips before diving into lick deeper. As you continue licking, you are urged to push deeper and delve further with your tongue, pressing your head into her to lick along those deliciously wet vaginal walls. ";
			if UBlevel > 1 and margaymet > 2 and MKunleashed is false:
				let tempmon be monster;
				setmonster "Megakitty";
				choose row monster from the table of random critters;
				if name entry is "Megakitty":
					now MKunleashed is true;
					now area entry is "Midway";
				say "     As you're starting to push your way into her welcoming cunny, she caresses you tenderly. 'Mmm... you'll make a fine, loving kitty. I can't wait to let Big Momma know. The Megakitty will be looking forward to meeting you.'";
				say "     With your head sliding into her, you find it difficult to focus on her words, but feel quite pleased to have made her happy";
			say "     As this continues, you soon have your whole head into her and you're being drawn even deeper, your altered instincts urge you to accept this and you barely struggle. Your body slides further and further into her as her vagina and belly stretch with ease to accommodate you. As your hips are slid over, [if player is male]your rock-hard cock[smn] [ismv] pressed[else]your dripping puss[yfn] slide[sfv][end if] against those warm, rippling walls and you cum hard, much to the feline's delight.";
			say "     You slide fully into her warm, welcoming womb and curl up into a fetal ball, purring softly as the warmth of your new mother surrounds you. Her uterine wall grows a placenta which attaches an umbilical cord to your belly with a pleasant sensation of union. Feeling her paws rubbing over her full belly, you drift off into a happy slumber, dreaming of full-figured felines with full, pregnant bellies snuggled all around you.";
			say "     When you awaken, you find yourself hidden [one of]in a bundle of rags in an abandoned shop[or]in a large, cardboard box on a pile of plush margay toys[or]under a ride undergoing maintenance[or]behind the changing room for a haunted house attraction[at random]. And you feel different too, changed by your enjoyable, if unusual, experience. You stagger to your feet and leave the private spot where your feline mother left you safely hidden and soon find your way back to known territory.";
			decrease humanity of player by 5;
			increase libido of player by 5;
			infect "Margay";
		else:
			say "[margayoral]";
	else:
		say "[margayoral]";


to say margayoral:
	if player is male:
		say "     You run a hand over your throbbing cock as you look down at the moaning feline you've defeated and decide to put that lovely muzzle of hers to work. Walking up to her, you grab her head and guide her to your groin. Soon enough, she mewls softly and starts nuzzling against your cock before taking it into her muzzle. She licks and sucks at your cock tenderly, purring and moaning happily as she bobs her muzzle over your shaft hungrily. You run your hands through her soft fur, rubbing those feline ears and scritching the underside of her muzzle, getting her to purr all the more. Which adds a very enjoyable rumble to the sensations you're receiving by the eager feline. When your climax comes, you drive your cock down her throat, which stretches easily to accommodate it, and pump shot after shot of your hot seed down her throat. When your balls are drained, you pull your cock out and leave her there, moaning and mewling in her need, fingering her gaping pussy with nothing to fill it.";
	else:
		say "     You run a fingers over your wet pussy as you look down at the moaning feline you've defeated and decide to put that lovely muzzle of hers to work. Walking up to her, you grab her head and guide her to your groin. Soon enough, she mewls softly and starts nuzzling against your cunt before diving her raspy tongue into it to lap at your clit. She licks and kisses at it tenderly, purring and moaning happily as she laps up your juices. You run your hands through her soft fur, rubbing those feline ears and scritching the underside of her muzzle, getting her to purr all the more. Which adds a very enjoyable rumble to the sensations you're receiving by the eager feline. When your climax comes, you grab her head firmly and press her against your lips and she nuzzles hard against your pussy as if trying to bury her muzzle into it to lick as deep as she can. After a series of very fulfilling orgasms that leave the kitty's muzzle soaked, you push her away and leave her there, moaning and mewling in her need, fingering her gaping pussy with nothing to fill it.";
	if UBlevel > 1 and margaymet > 2 and MKunleashed is false:
		let tempmon be monster;
		setmonster "Megakitty";
		choose row monster from the table of random critters;
		if name entry is "Megakitty":
			now MKunleashed is true;
			now area entry is "Midway";
		say "     'If you're not going to be a good little kitty and play with me properly, I think we'll need to send Big Momma after you. The Megakitty will make sure you're brought up right as a sexy kitty,' she calls out at you as you walk off. You're not quite sure what all that means, but it could be trouble.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Margay"; [Name of your new Monster]
	now attack entry is "[one of]The large feline slashes at you with her rending claws![or]The Rubenesque beauty grabs you in her strong arms and grinds her large pussies against you![or]The tropical cat mrowls as she grabs one arm with a clawed paw and keeps the other velveted as she gropes you firmly![or]In a surprising feat of flexibility for one so large, the margay kicks you firmly in the gut, causing you to stumble back![or]The full-figured margay pulls you in close for a warm, tender hug that saps some of your will to resist her increasing tempting body![or]The large feline slams into you and pushes you down, trying to smother you under her ample figure![at random]";
	now defeated entry is "[beatthemargay]";
	now victory entry is "[losetomargay]";
	now desc entry is "[margaydesc]";
	now face entry is "a small feline head with large feline eyes and small pointed feline ears"; [ Face description, format as "Your face is (your text)."]
	now body entry is "quite large and VERY elastic in the belly, allowing you to move freely despite your size. Your body feels quite stretchable, and almost eager to take something large and filling inside you. Your arms are motherly feline arms with human-style hands featuring retractable claws. Your legs are plantigrade legs with plenty of jiggle and firmly toned muscles. They end with nearly human feet which have clawed toes and whose undersides consist of thick black skin pads";
	now skin entry is "a lovely, spotted patterned coat of fur over your";
	now tail entry is "You have very wide hips and a very full, plump behind. It's completed by a thick and leg-length feline tail covered in golden brown fur with black markings.";
	now cock entry is "barbed feline";
	now face change entry is "the infection hits your head, making your eyes grow bigger and your head a little smaller. Your ears turn triangular and move to the top of your head while your face grows a short muzzle like that of a wild jungle cat";
	now body change entry is "the infection seeps into you, flowing into your body. Your torso then starts growing bigger and taller, developing extra space that makes you feel like you could smuggle a washing machine in your belly. Your arms burn with an itchy fire as the infection spreads through them. Your hands crack and grow a little smaller while new claws take form in your fingers. The itchy fire hits your legs as the Margay infection takes hold in them, forcing your toes to grow claws and plumping them up with extra muscles to carry your increased weight, and even more for short periods of time";
	now skin change entry is "the Margay infection strikes your skin, soaking into it and making your entire body itch. Your body hair starts to grow in thicker and in heavier density thanks to new follicles growing in your skin. The new fur then shifts into gold and black patterns before your eyes";
	now ass change entry is "your hips immediately start to widen to fit a very large frame, gaining wide, birthing hips and a very plush bottom. Above this bootilicious behind, you grow a new tail that lengthens until it brushes the ground with its tip";
	now cock change entry is "its pulses with need, priming to explode in orgasm. There is a burning need growing in your loins, changing the way it looks. Your cock becomes more feline in shape and twitches with need. You can feel a growing need inside you as well, a longing to be filled, stuffed more full than you've ever been before";
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 55; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 7; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Midway"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 6; [ Number of Breasts infection will give you. ]
	now breast size entry is 4; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 2; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 25;
	now cunt width entry is 17;
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is "margay milk";
	now lootchance entry is 36; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plump[or]tubby[or]fat[at random]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "margay"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat - Sensual Dance

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"margay"	margaydance rule	--	--	--	--	--	--	--	--	--

this is the margaydance rule:
	choose row monster from the table of random critters;
	increase margaydancecount by 1;
	if margaydancecount is even and a random chance of 2 in 5 succeeds and peppereyes is 0:	[40% of the time on any even round]
		say "The big kitty performs an erotic dance that is quite tantalizing, seeking to entice you into giving into her rough advances. She runs her paws over her ample figure, her numerous breasts and then down to her wet cunts, fingering them with a moan of desire.";
		let playernum be 150 + humanity of player + ( level of player * 2 ) + charisma of player + ( plmindbonus * 3 ) - libido of player;
		let margaynum be 200 + ( lev entry * 2 ) + cha entry + ( monmindbonus * 3 );
		if bodyname of player is "Margay":
			decrease playernum by 12;
		else if bodyname of player is listed in infections of Felinelist:
			decrease playernum by 6;
		if facename of player is "Margay":
			decrease playernum by 12;
		else if facename of player is listed in Infections of Felinelist:
			decrease playernum by 6;
[		say "TEST: [playernum] vs [margaynum]:[line break]";]
		now playernum is a random number between 1 and playernum;
		let margaynum be a random number between 1 and margaynum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][margaynum][roman type]: ";
		if playernum >= margaynum:
			say "As captivating and tantalizing as the large feline's movements may be, you manage to avert your eyes and regain your senses.";
		else:
			let xx be ( lev entry + 10 ) / 10; [ xx=1 unless hard mode or otherwise boosted]
			let rangenum be ( 80 - ( peppereyes * 4 ) );
			let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
			increase libido of player by a random number between 5 and 10;
			if bodyname of player is "Margay":						[Margays take more dmg]
				increase dam by a random number between 0 and xx;
			if facename of player is "Margay":
				increase dam by a random number between 0 and xx;
			if bodyname of player is listed in infections of Felinelist:	[all felines more aroused]
				increase libido of player by a random number between 0 and 2;
			if facename of player is listed in Infections of Felinelist:
				increase libido of player by a random number between 0 and 2;
			say "[if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]Your feline nature is particularly captivated by the suddenly alluring cat before you and you mrowl longingly as you watch her move. [end if]Unable to look away from the [one of]feline[or]margay[purely at random]'s sensual and erotic motions, your feel an increasing need to [one of]be with her[or]snuggle up against that plump body of hers[or]bury your face in her wet crotch[or]curl up in her motherly arms[purely at random]. The entire display drains some of your resistance, arousing you further and tempting you to give in and play with the plump feline! You take [special-style-2][dam][roman type] damage!";
			decrease HP of the player by dam;
			follow the player injury rule;
			say "You are [descr].";
		now peppereyes is 0; [pepperspray wears off]
		if HP of the player > 0 and libido of player < 110:
			wait for any key;
		else:
			if HP of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			Lose;
		rule succeeds;
	else:
		retaliate;

Section 4 - Margay Milk

Table of Game Objects (continued)
name	desc	weight	object
"margay milk"	"Milk from a hefty feline."	1	margay milk

margay milk is a grab object. It is a part of the player. margay milk is infectious. margay milk is milky. The strain of margay milk is "Margay".

The usedesc of margay milk is "[drinkmargaymilk]";

to say drinkmargaymilk:
	say "     Feeling suddenly thirsty for the feline milk, you drink it down, releasing a soft purring soft as you do.";
	PlayerDrink 6;


Section 5 - Endings

when play ends:
	if bodyname of player is "Margay":
		if humanity of player < 10:
			if player is female:							[FEMALE/HERM]
				say "     As your mind collapses, you succumb to the strange, feline urges that fill you. Or more accurately, that demand that you be filled. You strike out into the city. As you travel, you can feel your infection spreading and reaching completion, growing something deep inside you. Coupled with your new instincts, you make your way to the park, drawn by the scent of felines there. You are soon confronted by one of the many small feline girls that inhabit this territory. She seeks to latch onto your bosom and nurse from you as if you were her mother, but your instincts urge you to make her your child in a different manner. One much more fulfilling. Wrapping your motherly arms around the youthful kitty, you hug her tenderly before pressing her muzzle to your wet, gaping pussy. You give the struggling feline a little push and your cunt stretches with ease to take her in, drawing her head into your vagina. Your inner muscles, designed for just such an act, stroke and pull at the cute kitty, pulling her further and further into your large body, drawing her up into your [if cunts of player > 1]second[else]special[end if] womb. You can feel her curling up inside you and drifting into a soft slumber.";
				say "     You find your way into a small, maintenance building and rest there. After a few hours, you feel your womb shift and you mrowl in delight as your womb slowly, but painlessly, releases your new daughter. The feline girl is now well on her way to becoming a sexy margay like yourself. Together, you leave your den in the maintenance building to find more new daughters to feed to your loving womb again and again until they're fully mature and ready to capture prey of their own.";
			else:									[MALE]
				say "     As your mind collapses, you succumb to the strange, feline urges that fill you. Or more accurately, that demand that you be filled. You strike out into the city and as you travel, you can feel your infection spreading and struggling to reach completion. But somehow lacking the proper equipment, the changes become corrupted, altering another part of your body instead. You find your way back to the fairgrounds after your meandering through the city. Once there, you soon come across one of the large and sexy margay felines and snuggle up to her. After a brief mating session, she pulls you into her roomy cunt and into her womb. You enjoy the pleasure of snuggling up inside several of the plump felines, but always loving the first motherly kitty who welcomed you into her the most.";
				say "     When the first teams of soldiers come to the state fairgrounds to clear it out, you feel that strange urge rise within you again. The females, eager for real, flesh and blood playmates, as the toylike creatures of the fair are unsuitable for their needs, are quick to strike at them in great numbers, overpowering them. Even as your many mothers are bearing the intruders down under their weight, you help them strip the soldiers of clothes even as they're pulling them into their warm wombs.";
				say "     As one soldier struggles with you while the margay females are occupied, you pin him down and grind your cock against him. Your penis swells and grows very large and, following your corrupted instincts, you start stuffing his feet into your cumslit. The pleasure of this is intense and soon your pulling the struggling, screaming and fully hard man down into your cock, stuffing him into your ballsack. Once he's fully in, you moan in delight and struggle over, a little unbalanced in the groin, to grab another defeated soldier and repeat the process with him, this time face first. With one stuffed into each ball, you rumble in pleasure and rub your overfull orbs, feeling them squirming weakly inside. Once your favorite mother releases the partially changed margay from her womb, you drag your hefty ballsack over to her and mount her lustfully. You pound away at her with your oversized cock, stuffing her well with your gigantic meat until finally you cum hard and pump out one of the soldiers into her transforming womb to be her next kitten. Seeing this, another female pulls you to her arms and you release the other soldier into her after another good, hard fuck. Soon enough, you're repeating this to as many soldiers as you can get, feeling the unique joy of stuffing them into your balls, then pumping them out directly into a female margay's womb. Any men you do this to emerge from their new mothers fully transformed and are soon ready to join the others in the conversion of prey.";
		else:
			say "     After your rescue by the soldiers and treatment at the camp, you are released into the world. You have a difficult time initially, as an infected person and a rather plump person, your appearance makes it hard to find work for a while. But in time, you get a temporary placement through an agency for infected people and get employment doing office work. You settle into your work easily enough, with everyone soon becoming used to your unusual appearance. You do well enough there, able to get by on the mediocre income.";
			if player is female:							[FEMALE/HERM]
				say "     A cute delivery boy catches your eye, having picked up a partial feline infection when a leopard-like creature escaped the city and ran through his home town before being caught. You start to create opportunities to see the young man, arranging for deliveries and shipments to bring him in. You eye him appreciatively, smiling as you continue to sweet talk to the young man, enjoying how his feline urges increasingly respond to you. And then one day, you smear some of your pussy juices onto his nose and lick his ear, telling him to come back after hours to see you. He can't help but agree as your heat-laced scent fires up his feline instincts.";
				say "     You make up an excuse as the others leave, feigning having work to catch up on, then let the young man in when he returns. Soon enough, your kissing and groping one another as you pull off each other's clothes. He is an inexperienced lover, but you adore even that about him, for he is so earnest and eager. ";
				if humanity of player < 33:
					say "     From somewhere deep inside, you feel a longing to be filled, needing more from your young lover. You guide him down to your wet, dripping puss[yfn], which he quickly buries his face into. As he licks and kisses at your dripping folds, your pussy spreads wider and wider, soon pulling him into you. He never struggles or resists, only licking along your vaginal walls all the more eagerly. After a series of orgasms around his disappearing body, you feel him curl up in your overstuffed womb.";
					say "     After a long nap right there on the floor, your womb quivers and after a few pleasant minutes, the process reverses itself and you release your lover from your womb. He snuggles up to you, nursing from your breast and running his furry hands over his new mother's body. The process has made him a little more feline and added a little more. Tucked under his ballsack is a wet and waiting pussy that grows and matures further each time you take him over the next several months. With your infection only partially active, he gradually becomes more of a margay than a leopard, though few would recognize the differences. He doesn't gain breasts or the added weight, letting him hide his new gender to surprise unsuspecting playmates. You are always his favorite though and eagerly returns to your womb again and again.";
				else:
					say "     You have him mount you and mate you repeatedly, pumping his feline seed into you until, after several hours of hot, feline sex, he has no more to give. You snuggle up with your cute lover and purr happily, stroking your plump belly, happy in the knowledge it will soon swell with kittens to fill your empty womb. You play with him repeatedly, even after he's left his delivery job for bigger and better things, enjoying seeing him grow up and become a better lover under your mature guidance.";
			else:									[MALE]
				say "     You get to know the staff at the diner near your office over the years and playfully flirt with them. They smile and put up with it, knowing it's all in good fun. Or so you think until one day an address is written on your bill, asking that you come by that evening. You purr and add an extra tip, heading out with a smile to the waitress. After having an enjoyable, if unproductive, afternoon at the office, you go to her place in the evening. Invited in, the human woman's hands are soon roaming all over your body, telling you how lovely you are, how much she's wanted you for so long. You know she's always had a fondness for cats and liked you, but you never knew she lusted for you this much. Having never been with a transformee, you have a long, wild romp with her, far surpassing her previous human lovers in your stamina and number of orgasms. You pump her full of your feline seed again and again until finally you both pass out for the night.";
				say "     You move in together soon enough and you take care of her as her belly swells with new life. The waitress does not transform, your treatment managing to hold your infection from spreading to her. When your children are born, they are lovely margay kittens with a pair of pussies, much to your delight. Your partner is pleased as well, cherishing her twin girls and already talking about you breeding her again.";

Margay ends here.
