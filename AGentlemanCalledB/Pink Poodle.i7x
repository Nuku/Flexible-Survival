Version 1 of Pink Poodle by AGentlemanCalledB begins here.
[Version 1.2 - Victory: Beta-capture for Dom - Stripes]
"Adds a Pink Poodle creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Pink Poodle" } to infections of girl;
	add { "Pink Poodle" } to infections of furry;
	add { "Pink Poodle" } to infections of Caninelist;		[list of canine infections]
	add { "Pink Poodle" } to infections of Knotlist;		[list of cock infections with a knot]

HeatedPoodle is a number that varies.
nopoodlesex is a number that varies.
poodleapproved is a number that varies.

to say PinkPoodledesc:
	setmongender 4;      [creature is female]
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	if bodyname of player is listed in infections of Caninelist or facename of player is listed in infections of Caninelist or skinname of player is listed in infections of Caninelist or cockname of player is listed in infections of Caninelist or tailname of player is listed in infections of Caninelist:
		now poodleapproved is 1;
	else:
		now poodleapproved is 0;
	say "     As you wander through the high rise district, a figure steps out of a [one of]designer clothing store[or]high end shop[or]salon[at random] into view just ahead of you. She is an elegant-looking poodle girl with bright pink fur. The pink fluff does little to conceal the presence of her ample breasts, and her shaven lower half exposes her shapely torso and wet canine cunt. Her fashionable appearance is completed by large fluffy pompons covering your forearms and calves as well as the tip of her tail.[run paragraph on]";
	if poodleapproved is 1:
		say " As she returns your inspection, a sultry smile creeps across her muzzle. [one of]'Your place or mine?' she says with a refined French accent before striding forward confidently. 'How about right here?'[or]'Ah, mon cher,' she says with a refined French accent before striding forward confidently. 'Looking for some company?'[or]'Ah, my lonely one,' she says with a refined French accent before striding forward confidently. 'You look like you could use some company.'[at random]";
	else:
		say " As she returns your inspection she scoffs, turning up her nose at you. [one of]'Such riff-raff you find around here these days!'[or]'Another uncouth beast,'[or]'Such a boorish creature!'[at random] she says with a refined French accent before striding forward confidently. 'I suppose I shall have to deal with you before you put my clients off.'";

to say losetoPinkPoodle:
	now nopoodlesex is 0;
	if poodleapproved is 0:
		say "     Unable to fend off the aggressive pink poodle, she knocks you to the ground roughly, giving you a disdainful scowl as she stands over your beaten form. 'Either come back as a proper [one of]pooch[or]chienne[at random], or do not come back at all,' she says in her heavy french accent, giving you one last firm kick before turning and striding away.";
	else:
		if HP of player > 0:
			say "     Unable or unwilling to resist the pretty pink poodle any longer, you raise your hands and signal your submission. ";
			say "     'I knew you would come around, darling. Now let's get down to business,' she says in her refined french accent as she gently pushes you to the ground.";
			if cocks of player > 0 and a random chance of 2 in 3 succeeds:
				say "[pinkpoodledefeatsex]";
			else if cunts of player > 0 and a random chance of 2 in 3 succeeds:
				say "[pinkpoodledefeat69]";
			else:
				say "[pinkpoodledefeatoral]";
		else:
			say "     Unable to fend off the aggressive pink poodle, you stumble and fall to the ground. ";
			say "     'Mmm, so you like to play rough? Usually that costs extra darling, but I suppose you could make up for it some other way,' she says in her refined french accent as she steps over your supine form.";
			if cocks of player > 0 and a random chance of 2 in 3 succeeds:
				say "[pinkpoodledefeatsex]";
			else:
				say "[pinkpoodledefeatoral]";

to say pinkpoodledefeatsex:
	say "     The poodle girl hums softly as her delicate paws roam your body, teasing and groping you as she quickly strips off your gear. After stripping you down, the attractive canine kneels down between your legs, taking your [cock size desc of player] [cock of player] member in one paw as her other gently cups your [ball size]. With an expert touch, she teases your shaft to attention before she leans forward and wraps her muzzle around your shaft, gently sucking as her tongue plays along your length. Combined with her paw still massaging your testes, the effect is quite arousing, but the obviously well-practiced canine call girl is careful to not let you reach climax too soon.";
	say "     Releasing your shaft with one final kiss, she raises herself up off her knees, positioning her wet canine spade over your [cock of player] cock before lowering herself down onto you. The feeling of her slick doggy cunt enveloping your flesh is delightful, and even as she bounces up and down your shaft, she reaches beneath herself to resume fondling your aching balls. The pleasure seems to go on forever as the canine call girl pushes you towards climax again and again, but each time letting off just before you peak to draw you the experience as long as possible. Eventually you can take no more, and as if sensing your orgasm the poodle girl makes one final thrust, [if cockname of player is listed in infections of Knotlist]forcing your swollen knot into her body[else]hilting your entire length in herself[end if]. She howls in pleasure when you climax powerfully, blasting your [cum load size of player] load into her as your own howling joins hers.";
	say "     The pink poodle collapses atop you, panting happily as [if cockname of player is listed in infections of Knotlist]she waits for your knot to go down[else]her feminine juices leak out around your still-pulsing shaft[end if]. She cuddles up against your exhausted form for some time, whispering sweet French nothings in your ear as you both recover for the intense lovemaking. When she is finally able to, the poodle pulls herself off you with a wet slurp before giving you a quick kiss on the cheek and telling you to come back and see her again sometime. She sashays off down the street, stopping only to turn and blow you a kiss before she disappears from sight.";

to say pinkpoodledefeat69:
	say "     The poodle girl hums softly as her delicate paws roam your body, teasing and groping you as she quickly strips off your gear. After stripping you down the attractive canine steps over you, positioning her wet canine spade above your head. As she kneels down over you her paws and tongue tease your body, stroking and fondling you as she descends down your form towards your [cunt size desc of player] pussy. You gasp as her cool wet nose presses into your womanly folds, leading the way for her long canine tongue. As she works her muzzle and tongue, she lowers her own dripping cunt to your face, grinding it against your nose as you moan in delight. Soon you are licking and sucking at the pink poodle's cunt in return, trying your best to mimic her talented tonguework as she pushes you towards climax again and again, but each letting off just before you peak to draw you the experience as long as possible. Eventually you can take no more and you howl in pleasure as your crashing orgasm hits you, soaking the pink poodle's muzzle as she continues her work to draw out your climax as long as possible.";
	say "     When your orgasm finally comes to an end, the pink poodle lifts herself up and turns to face you, sitting squarely on your chest with her legs on either side of your head. As you lay there, basking in your afterglow, she begins working a pair of fingers into her own drooling pussy to finish the job you started, frigging herself to a powerful climax that soaks you in her nectars. Satisfied with a job well down, the canine call girl gives you a quick kiss on the cheek and reminds you to come back and see her again sometime before sashaying off down the street, stopping only to turn and blow you a kiss before she disappears from sight.";

to say pinkpoodledefeatoral:
	say "     The poodle girl smiles down at you as she positions herself above your face, panting eagerly as she lowers her wet canine cunt to your face. Her thighs grip tightly around your head as she presses her pussy to your lips, the musky fluids leaking into your mouth as she strokes and teases her clit with one padded paw. With your head awash in her arousing scent and taste, it's not long before you're digging into the delightful canine folds before you, working your tongue as best as you can from your confined position. The poodle girl moans happily, one paw still working her clit while the other rubs your head gently, occasionally slipping into her cunt alongside your tongue to further stimulate her before returning to petting you, smearing her delectable fluids across your face.";
	say "     The pink poodle draws it out as long as she can, but your combined efforts soon push her to her limits, and she howls in pleasure as she orgasms above you, soaking you in her nectars as her cunt spasms around your tongue. Sated, the canine rolls off you slowly, panting happily as she lays on the ground next to you. Eventually she recovers enough from her powerful climax to climb to her feet. She gives you a quick kiss on the cheek and reminds you to come back and see her again sometime before sashaying off down the street, stopping only to turn and blow you a kiss before she disappears from sight.";

To say beatthePinkPoodle:
	if nopoodlesex > 2 and ( the remainder after dividing nopoodlesex by 5 is not 0 ):
		say "     Defeated, the [if poodleapproved is 1]alluring[else]haughty[end if] poodle falls to her hands and knees with a whimper. As she whines up at you with pleading puppy dog eyes, you realize you could have some fun with the beaten dog, but decide to leave her be as you have with her kind in the past.";
		increase nopoodlesex by 1;
	else if HP of Dominick >= 60 and HP of Dominick < 100 and cunts of player > 0 and ( bodyname of player is "Breederslut" or facename of player is "Breederslut" ) and inasituation is false:
		say "     Defeated, the [if poodleapproved is 1]alluring[else]haughty[end if] poodle falls to her hands and knees with a whimper. As she whines up at you with pleading puppy dog eyes, you realize you could have some fun with the beaten dog.";
		if player is male:
			say "     Looking over the pink poodle, you feel an urge to [link]send her to Dominick (1)[as]1[end link] to breed, though you're also tempted to [link]fuck her (2)[as]2[end link] yourself or [link]have her suck you off (3)[as]3[end link] instead. You could also control your urges and [link]leave her be (0)[as]0[end link]?";
			now calcnumber is -1;
			if calcnumber is 1:
				say "[pinkpoodle_dom]";
			else if calcnumber is 2:
				say "[pinkpoodlesex]";
			else if calcnumber is 3:
				say "[pinkpoodleoral]";
			else if calcnumber is 0:
				say "     Deciding against taking advantage of the whining poodle, you leave her where she is.";
				increase nopoodlesex by 1;
		else:
			say "     Looking over the pink poodle, you feel an urge to [link]send her to Dominick (1)[as]1[end link] to breed, though you're also tempted to have her [link]eat you out (2)[as]2[end link] instead. You could also control your urges and [link]leave her be (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[pinkpoodle_dom]";
			else if calcnumber is 2:
				say "[pinkpoodleoral]";
			else if calcnumber is 0:
				say "     Deciding against taking advantage of the whining poodle, you leave her where she is.";
				increase nopoodlesex by 1;
	else if player is not neuter:
		say "     Defeated, the [if poodleapproved is 1]alluring[else]haughty[end if] poodle falls to her hands and knees with a whimper. As she whines up at you with pleading puppy dog eyes, you realize you could have some fun with the beaten dog.";
		if player is male:
			say "     Would you like to [link]fuck the pink poodle (1)[as]1[end link], [link]have her suck you off (2)[as]2[end link] or [link]leave her be (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[pinkpoodlesex]";
			else if calcnumber is 2:
				say "[pinkpoodleoral]";
			else if calcnumber is 0:
				say "     Deciding against taking advantage of the whining poodle, you leave her where she is.";
				increase nopoodlesex by 1;
		else:
			say "     Would you like to have her [link]eat you out (y)[as]y[end link] or [link]leave her be (n)[as]n[end link]?";
			if the player consents:
				say "[pinkpoodleoral]";
			else:
				say "	 Deciding against taking advantage of the whining poodle, you leave her where she is.";
				increase nopoodlesex by 1;
	else:
		say "     Defeated, the [if poodleapproved is 1]alluring[else]haughty[end if] poodle falls to her hands and knees with a whimper. As she whines up at you with pleading puppy dog eyes, you realize you could have some fun with the beaten dog, but since you lack any gender of your own, you leave her be and continue on your way.";
	now poodleapproved is 0;

to say pinkpoodlesex:
	say "     Since she's already on all fours, you decide to use the beaten canine like the bitch she is. Dropping your gear as you move behind her, you grip the poodle's ample, shaved hips, causing her tail to wag softly as you caress them. You can't help but grin as you watch the large pink pompon swaying back and forth before you as you align your [cock size desc of player] [cock of player] cock to her needy pussy, stroking your tip across her outer lips gently before pushing in slowly.";
	say "     As [if cockname of player is listed in infections of Knotlist]your knot begins rubbing against the pink girl's outer folds[else]you hilt your entire length in the pink girl's needy cunt[end if] she moans in pleasure beneath you, pressing her bottom back against you, nearly knocking you over as you lean forwards onto her back. Locking your arms around her torso and resting your head on the thick pink fur covering her shoulders, you begin humping the canine in earnest, quickly building to an energetic rhythm as you fuck her like an animal.";
	say "     The pink poodle barks and yips beneath you, pressing her body back against you[if cockname of player is listed in infections of Knotlist], trying to force your knot into her body with each thrust[else] and squeezing her cunt tightly around your shaft[end if]. As your combined arousal begin to peak, you make one final powerful thrust, driving your [if cockname of player is listed in infections of Knotlist]knot[else]shaft[end if] into the pretty poodle as you both howl in climax. Her cunt spasms and convulses around your shaft, milking your twitching member for all it can as you fill her with your [cum load size of player] load[if cockname of player is listed in infections of Knotlist], none of which escapes thanks to her tight grip around your knot[else] even as her own juices leak out around your shaft[end if].";
	say "     [run paragraph on]";
	if cockname of player is listed in infections of Knotlist:
		say "As you lay atop her, the well-fucked poodle pants happily, happily tugging and pulling at your knot to draw out her own pleasure as you wait for it to go down. [run paragraph on]";
	say "When you finally pull out the pink poodle falls to her side, rubbing her belly contentedly as she rests on the ground, leaving you free to gather your things and continue on your way.";

to say pinkpoodleoral:
	say "     Since she's already on her knees, you decide to have the beaten canine help you blow off some steam. Dropping you gear as you approach her, you grip her thickly furred shoulder gently and push her to a kneeling position. With your [if player is male][cock size desc of player] [cock of player] cock[smn][else if player is female]juicy puss[yfn][end if] on display before her, she looks up at you tentatively and licks her lips. When you finally give her permission, she dives in eagerly, [if player is male]wrapping her muzzle around your shaft[else]pressing her muzzle into your needy cunt[end if].";
	say "     [if player is male]Her long canine tongue teases along your length, sending shivers of delight through you while she sucks and slurps pleasantly[else]Her long canine tongue send shivers of delight through you as it presses into your tender folds, eagerly lapping across and into your netherlips as her paw slips up to rub and tease your clit[end if]. The combined effect is quite arousing, but the obviously well-practiced canine call girl is careful to not left you reach climax too soon, teasing you through a roller coaster of pleasure as she alternates between bouts of intense stimulation and gentle massaging.";
	say "     Eventually it all becomes too much and you climax powerfully, [if player is male]blasting your [cum load size of player] load into her muzzle[else]soaking her muzzle in your feminine juices[end if] as orgasm wracks your body. Steadying yourself with a hand on the panting canine's shoulder, you gently stroke her softly furred head with your free hand while you bask in the afterglow of the poodle's expert handiwork. When you've finally recovered enough to gather your things and continue on your way, the pink poodle rises to her feet, giving you a quick [if poodleapproved is 1]kiss on the cheek[else]scowl[end if] before heading in the opposite direction.";

to say pinkpoodle_dom:
	say "     Knowing the pretty poodle would make a lovely addition to Dom's harem, you pin her from behind and set your [if player is breederslutbodied]paws[else]fingers[end if] to tantalizing her. You start by simply teasing her breasts and folds while complimenting her beauty. The [one of]permed[or]primped[or]overly groomed[or]alluring[at random] canine responds easily to your flattery and to your touch. Your canine master's scent, still clinging to you, seeps into her nose to arouse her further.";
	say "     Over time, you intensify your fingerwork with sensual touches to her shapely body, bosom and increasingly wet folds. You continue to praise the vain femme's beauty, adding how she should have a [one of]mate[or]lover[at random] as handsome as she is lovely. You weave these words in discretely at first, but have little need for subtlety after a few quick orgasms have her really worked up. Reaching the point you've got a pair of digits pumping into her hot, pink tunnel, you tell her of the perfect stud who'll pound her far better than your fingers can provide.";
	WaitLineBreak;
	say "     From that point, your words shift to focusing on Dominick as the ideal stud - handsome, virile and deliciously well-hung. You pepper this with comments on how he'd be the perfect lover for one as beautiful and well-bred as she. With a nibble on her fuzzy ear, you add how he'd give her perfect puppies while caressing a [if player is breederslutbodied]paw[else]hand[end if] rubs her slender waist while the other continues to fingerfuck her as she grinds her hips hard into it. He is a top-ranked breeder, after all.";
	say "     By this point, she's panting on the edge of a powerful release, she practically begs you to tell her where to find this perfect stud. As you drive her to a yipping orgasm, you give her directions to Dom's kennel home and tell her to go to him. You reiterate one last time how a beauty such as she deserves the perfect breeding stud and that Dominick is that handsome hunk for her. By the time her extended climax has finally waned, she's lost in an afterglow daze filled with only thoughts of seeking out this ideal lover. Releasing her, you feel quite pleased with yourself in knowing you've provided your master with another lovely breeder pet.";
	now libido of Dominick is 3;
	increase XP of Dominick by 1


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Pink Poodle";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The pink poodle [one of]strikes you sharply across the face with an open paw[or]squeezes her large breasts together tantalizingly, distracting you just long enough to get in a quick hit[or]scratches you with her well-manicured claws[or]teases you playfully as she strikes a sultry pose[at random]!";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthePinkPoodle]";				[ Text when monster loses. Change 'Pink Poodle' as above. ]
	now victory entry is "[losetoPinkPoodle]";					[ Text when monster wins. Change 'Pink Poodle' as above. ]
	now desc entry is "[PinkPoodledesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "a slim and attractive canine muzzle, tipped with a bright pink nose, but the most striking feature is the puffy pink bouffant atop your canine head, which blends into your long, fluffy poodle ears";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "elegant and well proportioned, with an attractive canine figure and sharp features. Your paw-like hands and feet are accentuated by pink paw pads and short matching claws";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "thick curly pink fur, styled neatly around your shoulders and chest, as well as large fluffy pompons on your forearms and lower legs that create an appearance not unlike thick-furred high fashion boots and arm warmers. The rest of your body is almost hairless as if recently shaven, exposing your pale";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a thin shaven poodle tail, with a large pink pompon at its tip.";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]bright pink[or]knotted[or]canine[or]pointed[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "a bout of dizziness comes over you. You try to shake your head clear but quickly stop when something pink and fluffy strikes you in the face. As you gently stroke your new pink poodle ears, you watch a slim canine muzzle form before your eyes, while the thick pink fur spreads from your ears up your head, forming a large bouffant hairstyle";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "changes begin to roll through you. You watch with fascination as your hand shifts to a dainty, paw-like form, with bright pink paw pads and matching claws. As the changes move up your limbs and into your body, you develop an elegant and well-proportioned canine figure.";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "your chest grows tight. A thick coat of curly pink fur forms over your shoulders and chest, forming a large puff-ball over your upper torso. Meanwhile similar tufts of fur form on your arms and legs, leaving you with large, fashionable pompons covering your forearms and calves";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel a pulling sensation at your spine. Doing your best to see what's going on behind you, you watch as a short, hairless canine tail forms, wagging expressively as a large pink pompon forms at its tip";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "as it shifts to a knotted canine form with a bright pink hue[ppheatreset]";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 16;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 13;			[ These values may be used as part of alternate combat.]
	now per entry is 13;
	now int entry is 12;
	now cha entry is 17;
	now sex entry is "Female";		[ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60;			[ The monster's starting HP. ]
	now lev entry is 9;			[ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8;			[ Monster's average damage when attacking. ]
	now area entry is "High";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 10;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 7;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 80;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slim[or]elegant[or]well proportioned[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Pink Poodle";
	now heat cycle entry is 15;
	now heat duration entry is 10;
	now trigger text entry is "     A subtle warmth fills your body as a dampness builds between your legs. Nested between your thighs your canine spade begins to puff up and swell while shifting to a light pink, making your body's heat-fueled need for a canine companion clear.";
	now description text entry is "";
	now heat start entry is "[pinkpoodleheatstart]";		[Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[pinkpoodleheatend]";		[Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[pinkpoodleheat]";		[This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "     A subtle warmth fills your body as you get an empty feeling in the rear. Your anus quivers and puffs out pinkly as the scent of heated pheromones drift from it. You feel a growing want for canine companionship to fill that void inside you.";

to say ppheatreset:
	now HeatedPoodle is 0;

to say pinkpoodleheatstart:
	if heatform is 0:	[female heat has added effects]
		now HeatedPoodle is 0;
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Pink Poodle":
				now monster is y;
				break;
		increase cunt width of player by 1;
		increase cunt length of player by 1;
		if cunt width of player < cunt width entry, increase cunt width of player by 1;
		if cunt length of player < cunt length entry, increase cunt length of player by 1;

to say pinkpoodleheatend:
	if HeatedPoodle is 0 and player is impreg_able:
		say "[PoodleHeatSuccumb]";
	say "     As your heat passes, your needy canine cunt becomes a little less prominent and swollen.";
	if heatform is 0:	[restoration after female heat]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Pink Poodle":
				now monster is y;
				break;
		if cunt width of player > cunt width entry, decrease cunt width of player by 1;
		if cunt length of player > cunt length entry, decrease cunt length of player by 1;
	decrease slutfucked by 2;
	if slutfucked < 0, now slutfucked is 0;
	if slutfucked > 4, now slutfucked is 4;
	now HeatedPoodle is 0;

to say pinkpoodleheat:
	increase libido of player by 5;
	if libido of player > 99, now libido of player is 99;
	if (libido of player > 90) and (location of player is fasttravel or there is a dangerous door in location of player) and (slutfucked > 5):
		say "[PoodleHeatSuccumb]";
	else if libido of player > 90:
		increase slutfucked by 1;

to say PoodleHeatSuccumb:
	now HeatedPoodle is 1;
	say "     Unable to resist the lustful urges of your poodle infection, you lose yourself in need for canine companionship and bound off into the city in search of a mate.";
	now slutfucked is 0;
	let hmonlist be a list of numbers;
	let heatzone be "Outside";
	let zz be a random visible dangerous door;
	if zz is not nothing, now heatzone is the marea of zz;
	repeat with X running from 1 to number of filled rows in table of random critters:	[ Loop through and select all monsters that appear nearby (Outside by default) ]
		choose row X from the table of random critters;
		if there is no area entry, next;
		if area entry is heatzone and name entry is listed in infections of Caninelist:
			add X to hmonlist;
	if hmonlist is empty and heatzone is not "Outside":		[If none valid found, default back to Outside]
		repeat with X running from 1 to number of filled rows in table of random critters:	[ Loop through and select all monsters that appear nearby (Outside by default) ]
			choose row X from the table of random critters;
			if there is no area entry, next;
			if area entry is "Outside" and name entry is listed in infections of Caninelist:
				add X to hmonlist;
	sort hmonlist in random order;
	now monster is entry 1 of hmonlist;
	choose row monster from the table of random critters;
	say "     Your lust-fueled search eventually leads you an attractive [name entry], who you immediately submit to, offering yourself freely in the hopes of satisfying your body's lustful, heat-fueled needs.";
	wait for any key;
	follow the cock descr rule;
	follow the cunt descr rule;
	follow the breast descr rule;
	say "[victory entry]";
	infect "Pink Poodle";
	decrease the score by 5;
	decrease the morale of the player by 3;
	if player is kinky, increase the morale of the player by 6;

Section 4 - Endings

when play ends:
	if bodyname of player is "Pink Poodle":
		if humanity of player < 10:
			say "     As you begin to lose yourself to the pink poodle infection, you find yourself drawn back to the high rise district and all its high class stores - and denizens. Soon you are working the district's streets as another high class call girl, servicing only the highest class of creatures roaming the district.";
		else:
			say "     When the military arrives to start evacuating survivors from the city, you are among the first to be rescued. You are processed through the quarantine relatively quickly, alongside many of the other common domestic infections so the military forces can focus their efforts on the more dangerous creatures. Life outside the city is difficult at first, but you soon find that even the infected still want to look good, and you discover you have quite a knack for helping them with that. Soon you're operating a very successful salon just outside the city, helping those who are so inclined to look their best in exchange for the day to day supplies you need.";


Pink Poodle ends here.
