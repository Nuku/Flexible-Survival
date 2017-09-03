Version 1 of Quilled Tousky for FS by Stripes begins here.
[Version 1.1 - Random chance of player loss sex.]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Quilled Tousky to Flexible Survival."

when play begins:
	add { "Quilled Tousky" } to infections of guy;
	add { "Quilled Tousky" } to infections of furry;
	add { "Quilled Tousky" } to infections of humorous;
	add { "Quilled Tousky" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Quilled Tousky" } to infections of Caninelist;		[list of canine infections]
	add { "Quilled Tousky" } to infections of Knotlist;		[list of cock infections with a knot]


to say quilledtouskydesc:
	setmongender 3;		[creature is male]
	say "     Before you is a strange, mish-mash creature that seems to have been cobbled together by some exceptionally confused nanites. The quilled tousky's body is covered in feathery-quilled flesh. His head is large, mostly resembling that of a husky, with a long, broad, colourful beak instead of a muzzle, big enough to take up most of his face. His canine body is solidly-built, with just a bit of adorable chubbiness to him. A cute pair of black-feathered wings (which appear far too small to support him in flight) flutters upon his back. His arms are somewhat short and pudgy, with harmless-looking claws on the tips of his paws. His legs are digitigrade, puppy-like in proportion to the rest of his body, and ending in bird claws where paws might be on a more sensibly-assembled creature. He has what looks like a cheerfully-wagging canine tail, covered in an alarming blend of long quills and feathers instead of fur. At his crotch, he has a large perky canine maleness, measuring 8 inches and a small set of balls.";
	say "     He looks at you and tilts his head to the side. 'Marp?' it inquires before rushing towards you with a silly grin on its odd face.";


to say losetoquilledtousky:
	if cunts of player > 0 and a random chance of 1 in 3 succeeds:
		say "     The quilled tousky bounds over to your prone form, and attempts to lick your face. His ungainly beak interferes, and he simply winds up affectionately clonking you upside the head with it. 'Marp!' he joyfully exclaims, as if clumsily smacking his beak into you is an event worthy of triumphant celebration. As he's doing this, he ends up grinding his sheath against you, coaxing his stiffening cock out. He starts to his feet, as if surprised to have this pulsing red rod of canine cock protruding from himself. He leans in and grinds against you further, tongue lolling out.";
		say "     When this confusing creature's cock bumps against your pussy, he ends up inadvertently sinking it into you. He gives a long, moaning 'marrrrpppp' and starts humping you in earnest. You moan and even marp back to him as he pounds into you. Pleased with this new game you're showing him, he tries to lick your face some more, resulting in several more bonks from his beak and splatters of drool from his canine tongue. Clearly not getting this kind of fun too often, the strange hybrid doesn't last long and pumps his hot load into your cunt. Panting, he pulls out, dribbling the last of his seed across your thigh.[ovichance]";
		say "     He bounces in a circle around you for a bit before hearing something in the distance and running off towards it, tripping over his own paws as he starts running while mid-bounce. What an odd creature.";
	else:
		say "     The quilled tousky bounds over to your prone form, and attempts to lick your face. His ungainly beak interferes, and he simply winds up affectionately clonking you upside the head with it. 'Marp!' he joyfully exclaims, as if clumsily smacking his beak into you is an event worthy of triumphant celebration. He gives you an inquisitive look, then abruptly bounds away, [one of]taking a running leap from the top of a nearby mound of junk. The creature's wings flutter frantically as he hangs suspended in the air for a brief second, and then with a dismayed and puzzled 'marp?' he drops like a rock. You wince at the heavy thump that follows... but a few moments later, you hear another determined 'marp' from below, some more frantic fluttering, and, inevitably, another thud from farther away in the junkyard[or]smacking right into a nearby mound of junk. 'Marp,' he says, giving the pile an annoyed look. The creature takes a deep breath, and with an expression of keen concentration leaps at the mound again, bouncing off with a confused and dismayed 'marp?' and collapsing in a heap on the ground. He looks over at you, as if asking you to explain to the junk that it's being entirely unreasonable here[or]toward a small boulder of rubble. With an excited 'marp!' he slaps the stone with his tail, its quills making a noisy clattering sound, and then scampers away a few yards. After a moment, he looks back toward it, exasperated, and repeats the process, with the same result. He shakes his head in disappointment, muttering 'marp,' and goes to find a less grumpy rock to play tag with[or]wandering off around a scrapped car. After coming back around it, he spots you and releases a 'Marp!' of surprise, apparently already having forgotten you were here. He runs over to you excitedly and pounces atop you. His quills are a little scratchy at your skin as he pushes his cock to your face. You [if hp of player > 0]willingly[otherwise]are too weak to resist and[end if] open your mouth, accepting his throbbing shaft into your mouth. He rubs his paws over your head and thrusts into your mouth, cumming rather quickly. His release isn't that large, but is surprisingly tasty and you swallow it all down and suck the last drops from his shaft. He gives another happy 'marp' and runs off, this time heading in the other direction[at random]. What an odd creature.";


to say beatthequilledtousky:
	say "     The strange creature, as if the idea of playing with you has been knocked out of its head, staggers off in search of a new source of amusement.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Quilled Tousky"; [Name of your new Monster]
	now attack entry is "[one of]The quilled tousky smacks you with its quilled tail. After the initial pain, you feel oddly euphoric.[or]The quilled tousky headbutts you with a happy 'Marp!'[or]The odd creature grabs you with its taloned feet and climbs all over you, marping happily as it sits on your head like an odd, pointy hat.[or]The hybrid creature flails its paws at you, slapping at you wildly.[at random]";
	now defeated entry is "[beatthequilledtousky]";
	now victory entry is "[losetoquilledtousky]";
	now desc entry is "[quilledtouskydesc]";
	now face entry is "large, mostly resembling that of a husky, with a long, broad, colourful beak instead of a muzzle, big enough to take up most of your face";
	now body entry is "[qtbodydesc]";
	now skin entry is "feathery-quilled-fur";
	now tail entry is "You have what looks like a cheerfully-wagging canine tail, covered in an alarming blend of long quills and feathers instead of fur.";
	now cock entry is "[one of]perky[or]canine[at random]";
	now face change entry is "your head changes shape rapidly, as if your nanites are rummaging through a bin of spare mutations. Once things mostly settle down, you find yourself with a happy husky head, a long, broad toucan beak, and an array of vividly-coloured hedgehog quills spanning from your forehead to the back of your neck. You feel good about this change! You announce this fact to the world with an odd noise that sounds like 'Marp!'";
	now body change entry is "your torso changes, becoming a bit fuller and more dense with just a bit of puppy-pudge. An exuberant, gleeful energy wells up within you. Let's go do something! Dunno what. Something! It'll be fun! Your arms cycle through a few different shapes and textures, eventually settling on something mostly dog-like. You scratch yourself behind the ears. Good [if cocks of player > 0 and cunts of player > 0]boygirl[else if cocks of player > 0]boy[else if cunts of player > 0]girl[otherwise]... thing[end if]! Your legs do something weird, and you lose your balance. Hrmm, the ground's not great. You'd rather find something to perch on. Maybe a stick. Ooh, a stick! Is someone going to throw it for you?";
	now skin change entry is "a strange, frantic tingle ripples over your body as sharp quills, colourful feathers, and soft fur all vie for control of your hide. Eventually, you settle into a bizarre equilibrium between the three.";
	now ass change entry is "there is a sudden 'Poof!' A fluffy husky tail sprouts from your rear, wagging happily. Another poof, as colourful feathers pop out over its surface! Poof, ow! Long, sharp porcupine quills the size of knitting needles sprout from your tail! Better be careful where you wag that thing...";
	now cock change entry is "your cock throbs and pulses. You curl yourself down and lick at it a bit. Happy little doggy cock. Nope, looks and tastes just fine. What were you doing again?";
	now str entry is 14;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 5;
	now cha entry is 8;
	now sex entry is "Male";	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 40;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 6;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Junkyard";	[ Current options are 'Outside' and 'Mall' Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 3;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ]
	now libido entry is 10;			[ Amount player Libido will go up if defeated ]
	now loot entry is "tousky quill";			[ Loot monster drops, ]
	now lootchance entry is 25;		[ Chance of loot dropping 0-100 ]
	now scale entry is 2;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]chubby[or]mish-mashed[or]short[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"  Use [one of] to vary ]
	now type entry is "[one of]hybrid[or]canine[or]puppy[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

to say qtbodydesc:
	say "solidly-built, with just a bit of adorable chubbiness to it. A cute pair of black-feathered wings (which appear far too small to support you in flight) flutters upon your back";
	if skinname of player is "Quilled Tousky":
		say ", seeming to have trouble coming to rest comfortably against your sharp-quilled hide";
	say ". Your arms are somewhat short and pudgy, with harmless-looking claws on the tips of your paws. Your legs are digitigrade, puppy-like in proportion to the rest of your body, and ending in bird claws where paws might be on a more sensibly-assembled creature";

Table of Game Objects (continued)
name	desc	weight	object
"tousky quill"	"Exactly what it sounds like."	0	tousky quill

tousky quill is a grab object. It is a part of the player. tousky quill is infectious. The strain of tousky quill is "Quilled Tousky".

The usedesc of tousky quill is "[usetouskyquill]";

to say usetouskyquill:
	say "     You fiddle briefly with the large tousky quill and end up pricking yourself with it. Ouch! Dropping it, you suck on your poked finger. Your mind becomes clouded, making you muddle-headed and giddy about everything.";
	increase morale of player by 1;

the scent of tousky quill is "The colourful quill's scent muddles your mind, making you feel stupid and giddy.".

[
when play ends:
	if bodyname of player is "Template":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]


Quilled Tousky for FS ends here.
