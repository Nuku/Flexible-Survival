Arctic fox by Sarokcat begins here.

"Adds a Arctic fox to Flexible Survival's Wandering Monsters table"


Section 1 - Monster Responses


to say Arctic fox attack:
	if cunts of player is greater than 0:
		say "tease-.[line break]";
		say ".'";
		infect "Arctic fox";
	else:
		say ".[line break]";
		say "ment...";
		infect "Arctic fox";


To say Arctic fox loss:
	say "she loses! The horror!.'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Arctic fox";
	now attack entry is "[one of]She darts forward quickly, sideswiping you with her body.[or]Swiftly racing forward and to the side, she slashes at you as she passes.[or]Her front paw flashes out faster then the eye can follow, leaving a painful set of claw marks on you.[or]Lashing her tail in anticipation, the Arctic fox purrs as she stares deep into your eyes, her sinuous movements almost hypnotically appealing.[or]Charging forward with no warning whatsoever, she pounces and knocks you to the ground![or]She bunches her powerful hind legs up, and leaps directly at you![or]She grins at you, baring her sharp feline teeth, before leaping forward snapping them at you.[at random]";
	now defeated entry is "[Arctic fox loss]";
	now victory entry is "[Arctic fox attack]";
	now desc entry is "As you wander around the deserted paths of the zoo, you spot of blur for a second, and turning towards it you find yourself staring straight into the eyes of an almost feral like Arctic fox, her long lean body resting on her narrow paws and her long cheetah tail lashing behind her as she focuses her gaze directly on you, '[one of]Why don't you run, I love the chase.[or]Hmmm, not a gazelle but you look almost as fun[or]Oooo something to chase![or]Oh good, I was feeling bored.[or]I was feeling kind of lonely here, maybe you can help.[or]Finally someone to pounce![at random]' She says with a soft grin, her pert breasts standing out from her body as she takes a deep breath in anticipation, and slips into a runners stance, her eyes locked on her newest prey... you.";
	now face entry is "sexy vulpine face, your slim narrow muzzle and bright eyes look perfectly suited to your body, and your pointed canine ears twitch idly at every sound even as you find yourself grinning happily, enjoying the feeling of your new sexy";[ Face description, format as the text "You have a (your text) face."]
	now body entry is "sexy and lithe, with small vulpine paws, and rather dainty claw-tipped hands, your rather sexy new vulpine form seems to burn with energy and arousal";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]pure white[or]white furred[or]Arctic fox[or]soft furred[or]thick white fur covered[at random]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a beautiful white vulpine tail that stretches out behind you, its soft fur rubbing against your body pleasantly as you swish it from side to side with amusement.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canine[or]vulpine[or]knotted[or]pointed[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your mouth pushes out into a slim muzzle, your ears tapering to points and seeming to stretch out above your head as your face begins to reshape itself into the narrow sexy visage of an fox, your slim new muzzle full of sharp teeth and your bright shining eyes seeing the world around you in an entirely new, and more sexual light"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you find yourself falling to the floor, your muscles twitching as your body reshapes into a slimmer and more streamlined form. Your feet shift and compress into small dainty vulpine paws, even as your hands seem to narrow and your fingers grow closer together as soft claws push their way out of your new slightly paw-like hands"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a strange warmth begins to spread across your body, and a soft downy layer of pure white fur begins to push out of your skin, longer thicker fur beginning to grow in even as you begin to stroke your soft white undercoat, until you have a full pelt full of soft layered arctic fox fur"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your rear seems to tighten, and a soft tail begins to push its way out of your body, you find yourself moaning with pleasure as your new appendage stretches out behind you, and you swish it experimentally as soft puffy white fur covers your new vulpine brushtail"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it tapers to a soft point, your skin distending slightly at the base as a sheath begins to form around your increasingly canine cock, and you find yourself groaning slightly as the base of your cock bulges out as a knot forms, then slips into its new waiting sheath"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 12;
	now dex entry is 19;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 15;
	now cha entry is 25;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 40;
	now lev entry is 3;  [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 4;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "None";  [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;  [ Length infection will make cock grow to if cocks]
	now cock width entry is 4;  [ Size of balls ]
	now breasts entry is 0;  [ Number of Breasts infection will give you. ]
	now breast size entry is 0;  [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 50;  [ Amount player Libido will go up if defeated ]
	now loot entry is "";  [ Loot monster drops, ]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]alluring[or]sultry[at random]";
	now type entry is "vulpine";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	blank out the nocturnal entry;  [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]




when play ends:
	if bodyname of player is "Arctic fox":
		if humanity of player is less than 10:
			if cocks of player is greater than 0:
				say "'Giving in to your more feral instincts, you return to the palomino and your sexy vixen mate. Janice seems rather surprised at first at your intensity, but soon is moaning just as wantonly as you sheath yourself in her body again and again until she is as lost to the pleasure of her new body as you are. After you have recovered, you find you enjoy spending time at the club, the two of you occasionally teasing other club goers to give in and join you as sexy slutty arctic foxes. When the military arrives you find you have even more opportunity for fun, as they prove particularly susceptible to your sexy mates teasing looks, although you are always the one to mate them and make them proper vixens. Before long there are several vixens on stage at any time, though you settle in and make one of the private rooms into your fox den, the other club goers seeming only slightly interested in your actions, perhaps because many of them have started adapting similar habits. Eventually though the club comes under attack from the military, and you and your mates are forced out into the streets to help deal with the problem, the hunt proving surprisingly fun as you and Janice enjoy tricking, and trapping the military, together with your other vulpine converts. Before long you have broken out of the military containment area as a large group, and you only pause for a minute to get your bearings, before you all split up and begin to head north. You grin ferally as you imagine the military trying to chase all your nice pregnant vixen mates down, and snicker knowing there is no way they can catch even a quarter of your clever foxy mates before you all escape to the north. Though you certainly hope they come look for you and your fellow arctic foxes up in the snowy north once you get there... you could always use some new converts after all...";
			else:
				say "Giving in to your more feral instincts, you return to the palomino and your sexy vixen sister. Janice seems rather surprised at first at your intense changes, but after a while she comes to embrace and enjoy her new instincts just as fully, having already fallen in love with her new sexy form. Before long you and Janice are often found up on stage, as she shows you how to move your body to your best advantage, the cheers of the crowd as you tease them all with your sexy vixen body makes you hot, and you often invite several of them back to your private nook for you and Janice to play with together. The eventual military arrival is a big deal however, as you and Janice finally manage to get a sexy new male fox to play with as one of the soldiers joins you on a more permanent basis in the club, and several new vixen sisters end up joining soon afterwards as well. You find yourself smiling happily as you feel your mate's young begin to grow in your belly, enjoying the feeling as much as you know Janice is, already nice and eager to breed more little sexy fox kits for your mate after this litter... and you just can't wait for your next breeding season together![line break]";
				say "Y...";
		else:
			if cocks of player is greater than 0:
				say "When the military finally arrive at the club, they find you and Janice more than happy to return to their base with them, although many other club members decide to stay behind in their newly found home. At the military camp, it is easy enough for the two of you to manipulate manners in your favor, and soon with a few phone calls to some old acquaintances in the modeling community, the two of you are released from military custody. You find yourself grinning with amusement at how eager people are not to piss your lovely new mate off, her contacts proving exceptionally useful as she reestablishes her identity and reclaims her bank accounts. Soon you are settling in to a nice comfy new den, which you celebrate by enjoying each other on every surface possible. Before long you find yourself feeling mildly restless as your mates heat begins to fade, and you take to wandering around your new property a bit. You are thus surprised one day to return to find several of your mates female contacts waiting nervously nearby, and your mate with a sexy twinkle in her eye. It doesn't take long to figure out Janice's plan, and before long you have seduced them all, and sent them off to transfer their money and get their affairs in order so they can become sexy little vixens as well. The thought of have a nice little harem of your own warms your heart, and before long you have a nice full house full of vixens, many of them with connections to the movies or modeling industries. It seems almost inevitable you would find yourself on screen soon enough, your lithe form and cavalier attitude capturing the imagination and making you rather popular, and your sexy mates acquire more than a bit of a following as well. Though you find yourself staying at home with your mates as much as possible as they slowly swell with your virile seed, and you can't wait to have a bunch of little fox kits running around the house. The thought makes you smile even as you relax in a warm pile of fur and hold your first, and favorite mate close, looking forward to a long and eventful foxy life.[line break]";
			else:
				say "When the military finally arrive at the club, they find you and Janice more than happy to return to their base with them, although many other club members decide to stay behind in their newly found home. At the military camp, it is easy enough for the two of you to manipulate manners in your favor, and soon with a few phone calls to some old acquaintances in the modeling community, the two of you are released from military custody. You find yourself grinning with amusement at how eager people are not to piss your lovely new sister off, her contacts proving exceptionally useful as she reestablishes her identity and reclaims her bank accounts. Before long you are both living quite comfortably together, and you enjoy exploring your bodies together as often as possible. Still Janice has that mischievous twinkle in her eye again soon enough, and before long she is talking about taking up modeling and showmanship again, though with an entirely new twist this time.[line break]";
				say "Listening to her plan, you find yourself grinning with amusement as you nod eagerly, and soon the two of you are carefully recruiting a not so small group of women who are interested in both foxes, fur and modeling. Soon your den is full of recently changed foxy women, all of them happy and enthusiastic about their new condition, and you and Janice begin spending some time in training them how to move and act properly, and even more time having fun with your new denmates. When you are finally ready, Janice contacts several of her old friends again, and you take the fashion world by storm as you model several of the hottest outfits, and strut your stuff both on the catwalk and off. The money rolls in, though you find the cheers and adoration of the crowds, and their rapt attention to your new sexy body, to be almost more of a reward than any amount of money could be. Soon however the movie offers and advertising contracts start rolling in for you and your fellow foxes, though from the mischievous look in Janice's eye again, you can tell she is planning something. When you notice her watching the handsome male star of your first movie with that look, you find yourself grinning with anticipation as well, it will be nice to have a sexy male fox around the den after all, and you just can't wait to see how he turns out...";


Arctic fox ends here.
