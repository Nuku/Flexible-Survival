Version 1 of Bird of Paradise for FS by Stripes begins here.
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Bird of Paradise to Flexible Survival."

when play begins:
	add { "Bird of Paradise" } to infections of girl;
	add { "Bird of Paradise" } to infections of furry;

nobirdofparadisesex is a number that varies.
bopseen is a truth state that varies.  bopseen is normally false.

to say losetobirdofparadise:
	say "     The rather rambunctious mating dance over with, the bird woman takes a deep breath and starts to sing.  The very notion sounds silly at first, but as the music begins to flow and ebb around you, you suddenly find your will to fight on rapidly draining.  Surrounded by song, you're content to stand motionless with your mouth agape as the bird of paradise steps forward, her talons clicking against the ground in time with her music.  Those eyes, that glassy stare, they seem to grow to fill the entire world as your surroundings melt away, leaving nothing but the clear light blue of the avian's gaze and the music - oh god, the music, you're sure that Bird of Paradise hasn't so much as touched you and yet against all logic, you feel warm and good all over and there's a dull heat pulsing down below and the song, its everywhere, EVERYWHERE!";
	say "     You can't take it anymore; throbbing in time to bird of paradise's mesmerizing singing, you barely feel your [if cocks of player > 0]balls empty themselves as she sinks her cunt down over your pulsing shaft and your [end if][if cunts of player > 1]cunts explode in oozing wetness and[otherwise if cunts of player is 1]cunt explode in oozing wetness and your[end if] spine tingles as shivers run down its length.  Unable and unwilling to fight back, you can only lie exhausted on the ground, squirming with the last of your strength as the unearthly beauty of bird of paradise's music completely overwhelms you, and darkness slowly falls.";
	now libido of player is libido of player / 2;


to say beatthebirdofparadise:
	say "     Having beaten the colourful bird woman, she shrieks angrily and takes flight, leaving you in search of a more cooperative mate.  As the bird leaves, your arousal decreases a little once the temptation is out of sight.";
	now libido of player is ( libido of player * 4 ) / 5;


to say birdofparadisedesc:
	if bopseen is true:
		say "     Another of the beautifully colourful avians lands in front of you and begins her mating dance.  Her exotic motions and vibrant plumage are alluring, drawing your eyes to her lovely breasts and tantalizing pussy.  The slender, curvaceous bird uses her lovely call and sexy motions to try and entice you.  You find yourself wanting to move with her, to touch those lovely feathers of hers.  She swishes her long, colourful tail and you shake your head, trying to pull yourself together before you're drawn in by those large and lovely eyes of hers again.";
	otherwise:
		say "     A beautifully colourful avian being comes soaring out of the air and lands in front of you.  Making several exotic poses that show off her feminine curves and bright plumage, the bird woman gives a musical song as she dancing towards you.  Her slender body is covered in long, stunning feathers of all imaginable colours and hues, making her look like a living rainbow, or perhaps a well-stocked artist's palette.  Some of the feathers are exceptionally long and curl upwards at the ends, giving her the appearance of wearing an exquisite technicolour cloak.  Her head is crowned with a large, almost unwieldy crest of fluffy feathers that curve forward in a range of autumn colours. Two glassy, translucent eyes peer out from above a thick, curved beak - they're so wide and empty that you feel you could easily lose yourself in the bird of paradise's rather hypnotic gaze.  Her body is warm and inviting, with a definite sense of the approachable and perhaps even huggable to her.  A lovely pair of wings sprouts from the bird's back, bands upon bands of soft, melding colours forming a living rainbow.  She has a pair of grand breasts upon her chest, fluffy and soft with a coat of downy feathers.  Her arms are long, slender and firm beneath the colourful array of feathers covering her upper arms and the sheen of golden scales that cover her forearms and hands.  Her hands end in long, dexterous fingers, each one tipped with small, pointy talons that look as if they were designed for getting a good grip on various small objects.  Her legs are solid and look as if they've some muscle definition to them, which is quite reasonable considering the heavy-looking claws she has on her scaled feet.  Her tailfeathers are so long that they sweep the ground as she walks, yet somehow still manage to remain spotless despite that.  The feathers themselves are large and broad, starting from a deep violet from within their shafts and gradually warming through all the colours of the rainbow up to the edges.  Through glimpses you catch as she does her exotic dance towards you, you catch side of her large, tantalizing pussy with its soft cushion of bright feathers around it.";
		now bopseen is true;

Section 2 - Monster Insertion
 
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
 
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bird of Paradise"; [Name of your new Monster]
	now attack entry is "The lovely bird continues to sing and dance, draining your will to fight, tempting you with her vibrant body.";
	now defeated entry is "[beatthebirdofparadise]";
	now victory entry is "[losetobirdofparadise]";
	now desc entry is "[birdofparadisedesc]";
	now face entry is "[if player is bopskinned]crowned with a large, almost unwieldy crest of fluffy feathers that curve forward in a range of autumn colours, vaguely resembling a feathery mohawk[otherwise]smooth and rounded all around, looking rather bare and like it's missing something[end if].  Two glassy, translucent eyes peer out from above a thick, curved beak - they're so wide and empty that one could easily lose themselves in their hypnotic gaze";
	now body entry is "warm and inviting, [if player is bopskinned] with feathers forming a well-groomed layer over[otherwise]showing off[end if] [if cunts of player > 0]your generous, feminine curves[otherwise if cocks of player > 0]your strong, powerful chest[otherwise]your avian torso[end if][if player is bopskinned]. As you continue to look over yourself, you feel a strong impulse to run your fingers through your soft, colourful plumage and its rainbow mix of warm and cool colours[end if]. A lovely pair of wings sprouts from your back, bands upon bands of soft, melding colours forming a living rainbow across them.  Your arms are long, slender and firm beneath the [if player is bopskinned]coat of soft and fluffy feathers[otherwise]sheen of golden scales[end if] that cover much of your shoulders and forearms.  Your hands end in long, dexterous fingers, each one tipped with small, pointy talons that look as if they were designed for getting a good grip on various small objects.  Your legs are solid and look as if they've some muscle definition to them, which is quite reasonable considering the heavy-looking claws on your scaled feet";
	now skin entry is "multicoloured, feathered";
	now tail entry is "[if player is bopskinned]Your tailfeathers are so long that they sweep the ground as you walk, yet somehow still manage to remain spotless despite that.  The feathers themselves are large and broad, starting from a deep violet from within their shafts and gradually warming through all the colours of the rainbow up to the edges[otherwise]Your ass is firm and muscular, the sort of thing you only find on magazine covers, but there seems to be something missing about it despite its perfection[end if].";
	now cock entry is "[one of]warm[or]enticing[or]inviting[at random]";
	now face change entry is "your field of vision widens as your eyes become inhumanly large and glassy, pupils practically vanishing from sight[if player is bopskinned].  A new weight on your head prompts you to look up, and you notice the tip of a feathered crest in your vision even as your new beak grows in[otherwise].  A sharp pain pricks at the front of your face, intensifying steadily until a new beak emerges from where your mouth one was[end if]";
	now body change entry is "your ribs crack and shift as your torso firms up and thrusts outward to accommodate the changes taking place within, [if player is bopskinned]feathers growing to cover you even as [end if]a pair of opulent, long-edged wings [if player is bopskinned]unfold[otherwise]unfolding[end if] from your back.  You take a deep breath instinctively, and let it out with a gasp - that's a rather impressive set of lungs you've got now.  With a soft squelching sound, your hands turn into talons, flesh melting away and skin hardening over your fingers as the change begins to sweep upwards, [if player is bopskinned]covering your arms in soft, fine feathers in every colour of the rainbow[otherwise]golden scales forming on your skin all the way up to your shoulders[end if].  Your feet shift and twist, flesh migrating upwards from your toes to your thighs, leaving your lower legs looking rather bare.  Huge, hooked talons push their way out of your toes, forcing you to drag them about as you walk.  Seems like everyone's going to be blaming you for the scuff marks on their floors now";
	now skin change entry is "a queer tingling creeps its way across your skin, and you gasp aloud as long, flowing feathers of every conceivable colour blossom forth, making you feel warm and good all over.  It's possible that some others might think you look silly for looking as if someone dumped a paint store over you, but who cares what they think, eh?  You're beautiful and you know it";
	now ass change entry is "a powerful warmth gathers in your rear, followed quickly by [if player is bopskinned]a strange weight that turns out to be an exquisite fan of tailfeathers, each one already as long as you're tall and still growing by the moment.  Thankfully, the growth eventually slows, but not before you're sporting the kind of rear plumage one usually only finds in the presence of royalty[otherwise]your ass shaping up and firming out into something worthy of a supermodel.  Despite how good it looks though, you still feel slightly unbalanced and bare, as if there should be something more that just isn't present.  You can't help but wonder at what you're missing as you rub your sexy ass[end if]";
	now cock change entry is "a strangely sensual sensation wells up in your groin, and when you peer down for a look, you find that your [if cocks of player > 0]shafts have[otherwise]shaft has[end if] turned extremely sensitive, a sheen of clear fluid glistening off [if cocks of player > 1]their lengths[otherwise]its length[end if] even as the slightest touch of any sort sends shivers running up your spine.  Oh, this is going to be pleasantly awkward";
	now str entry is 10;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 9;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 8;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Zoo";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 6;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 7;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
 	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]sexy[or]alluring[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "avian";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "boparadise";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"boparadise"	bopsong rule	--	--	--	--	--	--	--	--	--	

bopsongcount is a number that varies.

this is the bopsong rule:
	choose row monster from the table of random critters;
	say "The exotic bird's sexy dancing and singing is quite tantalizing, seeking to entice you into giving into her advances.  She flashes her breasts and juicy cunt at you, singing softly, alluring as she does.";
	let playernum be 150 + humanity of player - libido of player + ( level of player * 2 ) + cha entry;
	let bopnum be 200 + ( lev entry * 2 ) + cha entry * 2;
	if peppereyes > 0, decrease bopnum by 100;
	if bodyname of player is "Bird of Paradise":
		decrease playernum by 12;
	otherwise if bodyname of player is listed in Infections of Avianlist:
		decrease playernum by 6;
	if facename of player is "Bird of Paradise":
		decrease playernum by 12;
	otherwise if facename of player is listed in Infections of Avianlist:
		decrease playernum by 6;
[	say "TEST: [playernum] vs [bopnum]:[line break]";		]
	now playernum is a random number between 1 and playernum;
	let bopnum be a random number between 1 and bopnum;
	say "[special-style-1][playernum][roman type] vs [special-style-2][bopnum][roman type]: ";
	if playernum >= bopnum:
		say "As captivating and tantalizing as the large birds song and mating dance may be, you manage to avert your eyes and regain your senses.";
	otherwise:
		let xx be ( lev entry + 10 ) / 10;			[ xx=1 unless hard mode or otherwise boosted]
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
		increase libido of player by a random number between 5 and 10;
		if bodyname of player is "Bird of Paradise":
			increase dam by a random number between 0 and xx;
		if facename of player is "Bird of Paradise":
			increase dam by a random number between 0 and xx;
		if bodyname of player is listed in Infections of Avianlist:			[all avians more aroused]
			increase libido of player by a random number between 0 and 2;
		if facename of player is listed in Infections of Avianlist:
			increase libido of player by a random number between 0 and 2;
		say "[if bodyname of player is listed in infections of Avianlist or facename of player is listed in infections of Avianlist]Your avian nature is particularly captivated by the exotically captivating [one of]bird[or]female[at random] before you and you start to sing back to her, starting to move in time with her dancing[end if]Unable to look away from the [one of]sexy[or]exotic[or]alluring[or]vibrant[or]colourful[at random] [one of]bird woman[or]avian[or]bird of paradise[purely at random]'s sensual and erotic motions, your feel an increasing need to [one of]be with her[or]join in her dance[or]stop and listen to her song[or]simply enjoy the musical song[purely at random].  The entire display drains some of your resistance, arousing you further and tempting you to give in and join in the bird's mating dance!  You take [special-style-2][dam][roman type] damage!";
		decrease hp of the player by dam;
		follow the player injury rule;
		say "You are [descr][if hp of player > 0 and libido of player < 110] and it takes an effort of will to refocus your mind and break your gaze away from those deep eyes of hers[end if].";
		now peppereyes is 0;										[pepperspray wears off]
		if hp of the player is greater than 0 and libido of player < 110:
			wait for any key;
		otherwise:
			if hp of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			Lose;
		rule succeeds;


Section 4 - Definitions

Definition: a person is bopfaced:
	if the facename of the player is "Bird of Paradise", yes;
	no;

Definition: a person is bopskinned:
	if the skinname of the player is "Bird of Paradise", yes;
	no;

Definition: a person is bopbodied:
	if the bodyname of the player is "Bird of Paradise", yes;
	no;

Definition: a person is bopcocked:
	if the cockname of the player is "Bird of Paradise", yes;
	no;

Definition: a person is boptailed:
	if the tailname of the player is "Bird of Paradise", yes;
	no;

Section 5 - Endings

[
when play ends:
	if bodyname of player is "Template":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Bird of Paradise for FS ends here. 