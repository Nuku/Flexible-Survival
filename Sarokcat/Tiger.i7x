Tiger by Sarokcat begins here.
[Version 1.1 - MPreg endings]

"Adds a Tiger to Flexible Survival's Tiger Den, with impreg chance."

Section 1 - Monster Responses

to say Tiger attack:
	say "'This is not the fighting monster you are looking for.'";
	wait for any key;
	if player is female:
		say "No text here!";
		infect "Tiger";
	else:
		say "You see nothing";
		infect "Tiger";

To say Tiger loss:
	say "You are superior to the nonexistent random tiger!.'";

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Tiger";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of][at random]";
	now defeated entry is "[Tiger loss]";
	now victory entry is "[Tiger attack]";
	now desc entry is "you encountered a tiger? Or did you?";
	now face entry is "that of a beautiful tiger-like appearance, its short muzzle and feline eyes giving your features an exotic predatory cast, and your slightly rounded tiger ears complete the look, making it seem like almost the perfect blend of tiger features and human features"; [You have a (your text) face."]
	now body entry is "lean and lined with corded muscle, giving you a somewhat exotic look, as you balance easily on your digitigrade tiger paws, your human-like hands with their tiger-like claws tipping your fingers complete the look"; [Your Body is (your text)"]
	now skin entry is "[one of]tiger striped[or]tiger furred[or]soft furred[or]orange and black striped[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a long, tiger-like tail extending from just above your ass, lashing back and forth in excitement with every movement."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feline[or]Tiger[or]barbed[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "a pleasurable stretching sensation comes over your face, as your teeth begin to sharpen and length, and your jaw extends outward and the muscles rearrange themselves into the powerful configuration of a tiger. Your nose twitching as it flattens out, newly discovered scents washing over you as it merges into your new muzzle, the comforting scents of the numerous other tigers in the den, and the slightly arousing scent of the male tiger who changed you distract you from your eyes narrowing into slitted cat-like pupils, and your ears finishing their adjustment to their new place on top of your head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles tighten underneath your skin, twisting and cording and arranging themselves in a more feline manner. You stumble as your legs shift underneath you, your ankles stretching upwards as your feet expand and change, shifting your balance to the balls of your new paw-like feet, and the rest of the leg rearranges itself into a partially digitigrade stance, causing you to lean forward slightly"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it shudders and seems to shift on its own, thick orange and black tiger fur pushing out in soft pleasurable waves of change all over your body"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your ass grows powerfully muscled, and a long sleek tiger tail erupts outwards from your tailbone, soon it is lashing around behind you in long natural motions, almost feeling as if it had always been a part of you"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it shifts and tapers to a soft point, short barbs slowly sprouting along its length, as the skin of your belly stretches out to pull it up close to your body, and wraps it in a proper furry tiger's sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 22;
	now sta entry is 16;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80;
	now lev entry is 7;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Tiger Den";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 9;  [ Length infection will make cock grow to if cocks]
	now cock width entry is 4;  [ Size of balls ]
	now breasts entry is 6;  [ Number of Breasts infection will give you. ]
	now breast size entry is 6;  [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9;
	now cunt width entry is 4;
	now libido entry is 30;  [ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";  [ Loot monster drops, ]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]exotic[at random]";
	now type entry is "[one of]feline[or]tigrine[at random]";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

when play ends:
	if bodyname of player is "Tiger":
		if humanity of player < 10:
			if player is female:
				say "     Finally giving in completely to your new instincts, you find yourself returning automatically to the tiger den, when you return, you find several of the other tigers eyeing you hopefully, but you have eyes only for Chase, something deep within you burning hot with need at the sight of the tiger who changed you, his scent still marking your body as his. You find yourself stalking up to the surprised looking tiger male, he quickly gets the idea when you reach out and start stroking his cock as you rub your furred tiger body up against him. Soon he hauls you off to one of the small pallets in the room, and your lustful cries fill the den as he fulfills his role as your newly chosen mate, filling your eager body with his seed and marking you as his. Eventually sated, you lie next to your strong and handsome mate while he whispers words to you, he seems glad you decided to embrace your true nature and give yourself over to him and being his tigress, and he promises to take care of your needs and see you are always well bred and full of his little tiger cubs. While it is hard to make much sense of his words, you catch the gist of your mates comments, and rumble in happy satisfaction at being the chosen mate of such a big and strong tiger, and you look forward to giving him many big and strong cubs...";
			else if player is mpreg_ok and lust of Chase > 0:
				say "     Finally giving in completely to your new instincts, you find yourself returning automatically to the tiger den, when you return, you find several of the other tigers eyeing you hopefully, but you have eyes only for Chase, something deep within you burning hot with need at the sight of the tiger who changed you, his scent still marking your body as his. You find yourself stalking up to the surprised looking tiger male, he quickly gets the idea when you reach out and start stroking his cock as you rub your furred tiger body up against him. Soon he hauls you off to one of the small pallets in the room, and your lustful cries fill the den as he fulfills his role as your newly chosen mate, filling your eager body with his seed and marking you as his.";
				say "     Eventually sated, you lie next to your strong and handsome mate while he whispers words to you, he seems glad you decided to embrace your true nature and give yourself over to him. And while not quite the tigress he'd hoped for, he finds you alluring as his tiger slut and is more than happy to breed cubs in your special womb. He promises to take care of your needs and see you are always well bred and full of his little tiger cubs. This pleases you greatly and you submit yourself to your feline stud repeatedly, much to the envy of several of the other tigers and tigresses who'd rather have you as theirs. You rumble in happy satisfaction at being the chosen mate of such a big and strong tiger, and you look forward to giving him many big and strong cubs...";
			else:
				say "     Finally giving in to the infection and your baser desires, you find yourself becoming increasingly more interested in finding a way to get rid of much of the tiger competition so you can have your pick of the mates. Finally your lust crazed mind hits on what you think is the perfect scheme, and you hunt down a small group of those tigertaurs, and manage to tease them into chasing you. You lead the horny beasts right through the traps and down to the entrance of the Tiger Den, before ducking inside and taking cover as they burst into the room. Several of the other tiger men try to stop the horny beasts, but their susceptibility to the group of tigertaurs['] strong musk soon has new limbs exploding from their bodies as they switch sides. You yourself go and try to pick out a few of the prime females to escape with, and start to try to slip past the growing tigertaur orgy with them, only to find another small group of tigertaurs just now coming down the stairs. They spot you instantly, and before you can react they are upon you and your small group of handpicked mates, causing you to moan and pant in joy as your body shifts underneath them. You can see out of the corner of your eye your potential mates also succumbing to their changes as they moan in desire, and you realize you chose mates well. Because you realize as you give yourself over fully to the changes, soon they and you will both be very good mates indeed for the lusty tigertaurs, as you moan underneath the strong tigertaur that begins to mount your changed form, and eventually once you have all borne the litters your new mates are so eager to give you, maybe you will actually get to mate them as well your self, or even better, maybe they will mate you!";
		else:
			if player is female:
				say "     Finally rescued from the city by the military, you make sure to lead them to where the rest of the tigers are hiding in the den. The soldiers are completely surprised to find so many infected in one place that seem to be relatively sane, and even more surprised that they all seem to be tigers. They happily help you out of the city, where several of their scientists spend several weeks poking and prodding everyone to see what it is about being a tiger that makes you so resistant to the mental deterioration, finally they give up though and let all of you go, having bigger issues to deal with in the city. Glad to be free, you and the rest of the tigers from the den promise to keep in touch as you spread out to contact old friends and family members, and rebuild new lives. You yourself try several different things as you try to work your way back into society, but nothing seems to make you truly happy for long. Chase stays close to you though, providing companionship and is one of the few tigers that is around you at all times, finally you wake up one day and realize what he was waiting for, as your body burns with need and arousal, your heat shooting through you and making you desperate for companionship. Smelling your heat Chase soon has you underneath him teasing your body and making you beg in need for him to fill you again and again, which he does several times over the next few days and nights of your heat. His body claiming yours in the most primal of ways, you realize just what you were missing in your life, a strong dominant mate to take care of you and see to your carnal needs. When your heat is finally over, and you know his seed has caught, he finds it all too easy to convince you to move in with him, and become his mate on a more permanent basis. Soon you are happier than you ever thought possible, as you work hard to please your mate, and to prepare for the cubs that are sure to come soon, and hopefully many more of his strong tiger cubs after that...";
			else if player is mpreg_ok and lust of Chase > 0:
				say "     Finally rescued from the city by the military, you make sure to lead them to where the rest of the tigers are hiding in the den. The soldiers are completely surprised to find so many infected in one place that seem to be relatively sane, and even more surprised that they all seem to be tigers. They happily help you out of the city, where several of their scientists spend several weeks poking and prodding everyone to see what it is about being a tiger that makes you so resistant to the mental deterioration, finally they give up though and let all of you go, having bigger issues to deal with in the city.";
				say "Glad to be free, you and the rest of the tigers from the den promise to keep in touch as you spread out to contact old friends and family members, and rebuild new lives. You yourself try several different things as you try to work your way back into society, but nothing seems to make you truly happy for long. Chase stays close to you though, providing companionship and is one of the few tigers that is around you at all times, finally you wake up one day and realize what he was waiting for, as your body burns with need and arousal. Wanting to share yourself with your friend, you raise your tail and let the tiger mount you, drilling his cock into you and pumping his hot seed into your hidden womb to breed you. Excited by the virile male atop you, you beg in need for him to fill you again and again, which he does several times over the next few days and nights of your heat. His body claiming yours in the most primal of ways, you realize just what you were missing in your life, a strong dominant mate to take care of you and see to your carnal needs.";
				say "When your belly starts to swell and you know his seed has caught, he finds it all too easy to convince you to move in with him, and become his tiger slut on a more permanent basis. Soon you are happier than you ever thought possible, as you work hard to please your mate, and to prepare for the cubs that are sure to come soon, and hopefully many more of his strong tiger cubs after that...";
			else:
				say "     Finally rescued from the city by the military, you make sure to lead them to where the rest of the tigers are hiding in the den. The soldiers are completely surprised to find so many infected in one place that seem to be relatively sane, and even more surprised that they all seem to be tigers. They happily help you out of the city, where several of their scientists spend several weeks poking and prodding everyone to see what it is about being a tiger that makes you so resistant to the mental deterioration, finally they give up though and let all of you go, having bigger issues to deal with in the city. With everyone rescued as well, you feel rather happy at managing to get so many of your fellow tigers out of the city both alive and sane, and they seem to feel the same, and while many of them reconnect with old friends and contacts, they all continue to keep in touch with each other as well. Many of you continue to visit, and work together, though you and Chase seem to form a special bond, based on your help while in the city, and the two of you spend more and more time together. Eventually you end up traveling and working together as partners and friends, though you sometimes feel something is missing from your partnership, you enjoy your time together, visiting many different areas around the world as you work to educate people about the wonder that is the greatest of the great cats, the tiger.";

Tiger ends here.
