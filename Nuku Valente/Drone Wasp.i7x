Version 2 of Drone Wasp by Nuku Valente begins here.
[ Version 1.0 - Initial content - Asani                                       ]
[ Version 2.0 - Moved from story.ni file to Nuku Valente folder - Blue Bishop ]
[ Version 2.1 - General writing cleanup - Song                                ]

"Adds a Drone Wasp creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Drone Wasp" } to infections of girl;

dronevict is a number that varies.

to say beatthedrone:
	if dronevict > 2 and libido of player > 33 and a random chance of dronevict in 5 succeeds and ( player is not neuter ):
		say "     Having knocked down the wasp girl, you make a grab for her before she can get away. Now that you've caught this cute little thing, you need to decide what you'll do with her. Shall you put her honeyed lips to work or just let her go?";
		if player consents:
			if player is male:
				say "     Pulling out your stiffening cock, you bring her head forward. While she was worried at first, she grins at the sight of your [cock of player] erection and brings her soft lips to kiss and suck at it[if cock length of player > 17]. The girlish wasp has trouble dealing with your [cock size desc of player] member, contenting herself with stroking, licking and kissing at it until you cum all over her face. She swallows down as much of your load as she can before fluttering off with[else]. The girlish wasp strokes, kisses and licks at your [cock size desc of player] cock before sliding her sweet lips down over it. She sucks it greedily until you cum, shooting your load down her throat. After getting your tasty treat, she flutters off with[end if] [if cock width of player > 15]her tummy so bloated with your excessive semen that she can hardly fly[else]a full tummy[end if].";
				increase libido of player by 8;
				decrease dronevict by 1;
			else:
				say "     Rubbing your hand over your wet pussy, you bring her head forward. While she was worried at first, she smiles at the sight of your juicy flower and brings her soft lips to lick and kiss at it. The girlish wasp lavishes attention on you, clearly having had lots of practice with her hive sisters. You stroke her hair and enjoy the delightful attention before finally cumming, soaking her face and your thighs in your juices. She laps as much of your feminine cum as she can get before fluttering off with a happy buzz.";
				increase libido of player by 8;
				decrease dronevict by 1;
		else:
			say "     Deciding it'd be best to send the little pest on her way, you lift her wasp-like abdomen, give her a spank on the ass and send her fluttering off. She sniffles like a punished little girl as she buzzes away.";
			now dronevict is 0;
	else:
		say "[one of]The drone flutters off with a tattered wing, crying as she flies away, leaving you with a slight sense of guilt.[or]The drone falls to the ground and begins to cry. Hearing buzzing nearby, you quickly run away before another wasp catches wind of you.[at random]";
		if dronevict < 5, increase dronevict by 1;

Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Drone Wasp"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The drone attacks with its small claws, leaving tiny furrows that sting slightly.[or]The drone dive bombs through the air with its stinger at the ready, spreading its venom into your body, causing you to shudder in pain and lust.[or]The drone flies in close and hugs you, not harming you but seeming to gaze longingly into your eyes.[at random]";
	now defeated entry is "[beatthedrone]";
	now victory entry is "[one of]The drone slips her lips onto yours, kissing deeply as she lets a small amount of honey in her mouth slip into your own.[or]The drone flies around happily before fluttering off to brag to her sisters.[or]The drone pins you down to the ground and grins, forcing your lips against her sex as she rubs her small mound against you. She moans softly as you're forced to pleasure her, lapping along her slick honeypot until she finally cums. Satisfied, the wasp giggles to herself and flies off as quickly as she came.[at random]";
	now desc entry is "[mongendernum 4]A small, shy of four feet, wasp-like girl with delicate, buzzing wings on her back. Her skin is yellow with brown markings and a short, soft layer of fuzz. Her hands have only three fingers and small claws at the end of each digit. Out of her rear extends her wasp-like abdomen with a small stinger on the end. Her face is mostly human with cute, short, brown/blond hair. She looks at you with a soft smile on her lips, buzzing left and right.";
	now face entry is "charmingly human"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "largely human, except for the new abdomen protruding from your rump, sporting a new stinger. You are also a lot shorter, shy of four feet at best"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "black and brown striped"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "normal"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "your face tingles softly, but not much physically changes from the human norm, except that it is now cute and female looking"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "you feel a bulging from your bottom that expands out to a whole new segment of body, a stinger slipping free"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your skin changes color, changing to yellow and brown, the striped markings covering your body"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you feel something internal shifting around"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "you feel something internal shifting around"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10;
	now dex entry is 10; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 20;
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Park"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 6; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]exotic[or]feminine[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]insectoid[or]wasp[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;



Section 3 - Endings

when play ends:
	if bodyname of player is "Drone Wasp":
		if humanity of player < 10:
			if bee girl is tamed:
				say "     Hearing a faint buzzing in your mind, you are drawn back to the park, followed at a distance by a worried Honey. There you meet up with several others from the wasp nest and join them. When Honey is spotted in the bushes nearby, the other drones charge in to attack to kill the rival insect, but you stop them. Still sensing a faint connection in your failing mind, you are able to coax the scared bee girl into your arms and, with the help of the others, help her to become a lovely wasp like yourselves. She moans in ecstasy, climaxing repeatedly as a new, permanent stinger grows in to replace her lost one, becomes a strong and beautiful member of the wasp nest and a lifelong companion to you.";
			else:
				say "     Hearing a faint buzzing in your mind, you are drawn back to the park. There you meet up with several others from the wasp nest and join them, lustfully giving yourself over to the pleasure of your insectile bodies. You go along with them, following the buzzing sound you're sensing back to the nest which has been set up in one of the park maintenance buildings. There you enjoy a pleasant life of work and sex with the other beautiful wasps.";
		else:
			say "     Your unusual body is analyzed by the military scientists, but you are given little concern. You do happen to befriend a helicopter pilot, chatting with him while you're in a waiting area, and he's come in with reports after another extraction. He chats with you for a while and even visits you a few times at the compound where you're being held with a large group of others";
			if player is female:
				say ". Claiming that you've been called over for consulting on some of the areas you witnessed in the city, he manages to get some alone time with you in his chopper one evening. There he makes sweet love to you, a wonderfully exciting time with the risk of being caught looming over you to make it all the more invigorating.";
				say "     But at the moment of climax, you instinctively sting him. You apologize profusely, and after his initial anger wears off, he kisses you and promises he'll not tell anyone. He quickly makes up a plan to claim he'd gotten stung on his next mission. Keeping his helmet on over his growing antennae and his fatigues over the chitin covering his legs, he returns you to the compound.";
				say "     When he does not return from his next mission, fallen prey to the drone wasps drawn to his altered body, you are heartbroken. The only solace you can find is that he joined the wasps he found so sexy and is probably very happy with them. To assuage your guilt, you join the military's air force, training to be a helicopter pilot to replace the one you cost them through your foolishness. You are much more cautious in the future, and even after being rendered non-infectious, you make sure to get regular treatments to prevent it from ever happening again. The child he gave you that one night grows up to become a lovely wasp girl who turns the heads of all the boys at the military academy.";
			else:
				say ". You become fast friends and he convinces you to join the military. Becoming a gunner, you join his helicopter crew, helping to defend your friend on his missions into infected zones.";

Drone Wasp ends here.
