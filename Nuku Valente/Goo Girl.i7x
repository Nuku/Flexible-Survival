Version 1 of Goo Girl by Nuku Valente begins here.
[Version 1 -- Taken from Story.ni file and given dedicated file]

"Adds a Goo Girl creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Goo Girl" } to infections of girl;

To say gootemp: [Can happen during player loss or victory]
	if a random number from 1 to 100 is less than the libido of the player:
		if a random number from 1 to 2 is 1: [ give it]
			if cocks of player is greater than 0:
				if cock length of player is greater than 20:
					say "Following the brain in your [cock size desc of player] [cock of player] lower head instead of the one above, you march up to the prone jelly lady and lower the huge tool to her exposed lips. Some resistance is felt, but you press more firmly, and she begins to spread out around the tool. You push further, deeper, marveling at the deliciously tight, snug, fit her body offers to your sensitive body. Rearing back, she cries out, lifted entirely from the ground, impaled on your [cock size desc of player] pole.[line break][line break]Your throbbing tool has stretched her round, making her look like a coloured condom more than a girl, though her assets do jiggle quite nicely against your raging tool. You grab for them and start to caress, jerking off yourself while teasing the goo girl, you can feel yourself rising rapidly toward release. As cum billows up your spear, you can see the huge gobs running along before exploding into her, making her mouth bulge, then spew out of her, running down her front in a messy drizzle of your fertile seed. Her entire form goes murky with the volume of seed you inject into her. She squirms on your great pole before she melts free of it, becoming a limp pool on the ground before you, worn out from the session.";
				otherwise:
					say "Your [cock size desc of player] [cock of player] shaft swells in your clothes uncomfortably at the sight. You consider leaving it alone, but your libido gets the best of you and you move over towards her, your cock throbbing anxiously. You expose yourself eagerly as you move in over the girl. Your mouth finds a translucent nipple and you find a [one of]strawberry[or]grape[or]cherry[at random] flavor dancing across your tongue as you suckle firmly. She awakens with a soft moan that raises in pitch as you start to ease your firm [cock of player] tool into her quivering passage.[line break][line break]She rocks up against you, her hands grabbing at your sides, pulling you closer as you thrust faster, harder, her body able to take you with scarcely any effort at all. She trembles as hot honey runs down your length, climaxing powerfully against you. The taste in your mouth seems to grow more intense and the passage holding your cock firmly ripples delightfully. You can feel yourself tensing, then exploding into the jellied female, staining her pristine flesh with blasts of milky grey.[line break][line break] As you come down from your high, she kisses you on either cheek, then melts into the ground, gone.";
			otherwise if cunts of player is greater than 0:
				say "You feel flush with lust and swiftly approach the prone goo girl. Your cunt is hungry and you intend to solve that problem. You reach for her form and grab a hand, rubbing it between your own before pressing it between your thighs. The contact seems to rouse the girl, who blinks open her largely featureless eyes. As if understanding your intent, she smiles all the more and presses up into you. Her warm, thick, hand surges up, spreading you and exploring into your welcoming [cunt size desc of player] hole.";
				if cunt length of player is greater than 12:
					say "She gives a delighted giggle when she notices just how big your passage is, and surges forth. She seems to melt before you as her entire form flows warm and rippling into your waiting body. She fills your trembling folds even as she leaks and penetrates your innermost womb, making your belly become round with her presence. The sensation of being fucked from the inside grows stronger by the moment as your body rocks, your [breast size desc of player] breasts shuddering as you grab at your now full belly, moaning and almost senseless in the overload of it all.[line break][line break]When you regain consciousness, you feel the sensation, but subtly different. Opening your eyes shows the goo girl over you, rocking into you with a gooey shaft, rutting you with wild abandon. Your awakening startles you, however, and she suddenly goes red as if caught in the act. She flows away rapidly.";
				otherwise:
					say "She fills up your tight sex to the brim, then pushes harder. The feel of her undulating flesh inside of you sends wild spikes of pleasure through your body even as she works at stretching you with every crashing wave she sends against your cervix and along your over stimulated walls. You're soon on the ground under the gooey creature as she works you over. As it becomes too much, she draws from you, reforming to her usual human like shape. She leans over to kiss your cheek, a soft peck, and she flows away swiftly.";
					increase cunt length of player by 2;
					increase cunt width of player by 2;
			otherwise:
				say "Falling victim to a sudden urge of lusting, you approach the fallen goo girl. Having no penis or vagina, you settle for molestation. You crouch down beside the female creature and set your hands on her jiggly breasts, kneading them firmly, sure that your caresses will do little harm to the pliable flesh.[line break][line break]She comes to with a soft moan, looking up at you with those featureless eyes and reaching for your hands as they wander her front. She guides one down to her winking vulva and presses it firmly. You gently brush along the sensitive flesh, feeling it shudder and jiggle beneath your fingers as you slowly part it and slip a finger into her depths, rubbing your [skin of player] flesh against her. She arches her back and cries out in delight, pressing your hand closer, a second finger slipping in.[line break][line break]Emboldened, you press your fist in easily, her sex gobbling it up, then your forearm, thrusting it into the depths of the jellied girl to her obvious satisfaction. You lose track of yourself, fascinated with her capacity as you shove in the rest of your arm, the area filled with loud squelching sounds.[line break][line break]Her wail almost hurts your ears as she seems to have a full body earthquake of an orgasm, your arm and torso drenched in her fluids before she melts beneath you, passing out with that smile on her face, lost to the intense climax.";
		otherwise: [take it]
			if cunts of player is greater than 0:
				say "You feel flush with lust and swiftly approach the prone goo girl. Your cunt is hungry and you intend to solve that problem. You reach for her form and grab a hand, rubbing it between your own before pressing it between your thighs. The contact seems to rouse the girl, who blinks open her largely featureless eyes. As if understanding your intent, she smiles all the more and presses up into you. Her warm, thick, hand surges up, spreading you and exploring into your welcoming [cunt size desc of player] hole.";
				if cunt length of player is greater than 12:
					say "She gives a delighted giggle when she notices just how big your passage is, and surges forth. She seems to melt before you as her entire form flows warm and rippling into your waiting body. She fills your trembling folds even as she leaks and penetrates your innermost womb, making your belly become round with her presence. The sensation of being fucked from the inside grows stronger by the moment as your body rocks, your [breast size desc of player] breasts shuddering as you grab at your now full belly, moaning and almost senseless in the overload of it all.[line break][line break]When you regain consciousness, you feel the sensation, but subtly different. Opening your eyes shows the goo girl over you, rocking into you with a gooey shaft, rutting you with wild abandon.[impregchance] Your awakening startles you, however, and she suddenly goes red as if caught in the act. She flows away rapidly.";
				otherwise:
					say "She fills up your tight sex to the brim, then pushes harder. The feel of her undulating flesh inside of you sends wild spikes of pleasure through your body even as she works at stretching you with every crashing wave she sends against your cervix and along your over stimulated walls. You're soon on the ground under the gooey creature as she works you over. As it becomes too much, she draws from you, reforming to her usual human like shape. She leans over to kiss your cheek, a soft peck, and she flows away swiftly.";
					increase cunt length of player by 2;
					increase cunt width of player by 2;
			otherwise if cocks of player is greater than 0:
				if cock length of player is greater than 20:
					say "Following the brain in your [cock size desc of player] [cock of player] lower head instead of the one above, you march up to the prone jelly lady and lower the huge tool to her exposed lips. Some resistance is felt, but you press more firmly, and she begins to spread out around the tool. You push further, deeper, marveling at the deliciously tight, snug, fit her body offers to your sensitive body. Rearing back, she cries out, lifted entirely from the ground, impaled on your [cock size desc of player] pole.[line break][line break]Your throbbing tool has stretched her round, making her look like a coloured condom more than a girl, though her assets do jiggle quite nicely against your raging tool. You grab for them and start to caress, jerking off yourself while teasing the goo girl, you can feel yourself rising rapidly toward release. As cum billows up your spear, you can see the huge gobs running along before exploding into her, making her mouth bulge, then spew out of her, running down her front in a messy drizzle of your fertile seed. Her entire form goes murky with the volume of seed you inject into her. She squirms on your great pole before she melts free of it, becoming a limp pool on the ground before you, worn out from the session.";
				otherwise:
					say "Your [cock size desc of player] [cock of player] shaft swells in your clothes uncomfortably at the sight. You consider leaving it alone, but your libido gets the best of you and you move over towards her, your cock throbbing anxiously. You expose yourself eagerly as you move in over the girl. Your mouth finds a translucent nipple and you find a [one of]strawberry[or]grape[or]cherry[at random] flavor dancing across your tongue as you suckle firmly. She awakens with a soft moan that raises in pitch as you start to ease your firm [cock of player] tool into her quivering passage.[line break][line break]She rocks up against you, her hands grabbing at your sides, pulling you closer as you thrust faster, harder, her body able to take you with scarcely any effort at all. She trembles as hot honey runs down your length, climaxing powerfully against you. The taste in your mouth seems to grow more intense and the passage holding your cock firmly ripples delightfully. You can feel yourself tensing, then exploding into the jellied female, staining her pristine flesh with blasts of milky grey.[line break][line break] As you come down from your high, she kisses you on either cheek, then melts into the ground, gone.";
			otherwise:
				say "Falling victim to a sudden urge of lusting, you approach the fallen goo girl. Having no penis or vagina, you settle for molestation. You crouch down beside the female creature and set your hands on her jiggly breasts, kneading them firmly, sure that your caresses will do little harm to the pliable flesh.[line break][line break]She comes to with a soft moan, looking up at you with those featureless eyes and reaching for your hands as they wander her front. She guides one down to her winking vulva and presses it firmly. You gently brush along the sensitive flesh, feeling it shudder and jiggle beneath your fingers as you slowly part it and slip a finger into her depths, rubbing your [skin of player] flesh against her. She arches her back and cries out in delight, pressing your hand closer, a second finger slipping in.[line break][line break]Emboldened, you press your fist in easily, her sex gobbling it up, then your forearm, thrusting it into the depths of the jellied girl to her obvious satisfaction. You lose track of yourself, fascinated with her capacity as you shove in the rest of your arm, the area filled with loud squelching sounds.[line break][line break]Her wail almost hurts your ears as she seems to have a full body earthquake of an orgasm, your arm and torso drenched in her fluids before she melts beneath you, passing out with that smile on her face, lost to the intense climax.";
		infect;
		decrease libido of player by 10;
		say "Playing around with that goo girl seems to have helped reign in some of your lustful urges.";
	otherwise:
		say "You resist the urge to act on the situation.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Goo Girl";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of][if cocks of player is greater than 0]With a swipe of a flexible hand she bypasses your clothes, slithering under them to grab at your [cock size desc of player] [cock of player] shaft and starts squeezing, causing pain and pleasure in equal parts.[otherwise if cunts of player is greater than 0 and cunt length of player is less than 12]She surges towards you and grabs at your crotch. Her fluid body flows through creases and cracks, finding your [cunt size desc of player] pussy and diving into it with great zeal, stretching and buzzing harshly, almost making you dizzy with forced pleasure.[otherwise if cunts of player is greater than 0 and cunt length of player is greater than 11]The goo girl grabs at your crotch, and suddenly seems to be shrinking. Your [cunt size desc of player] cunt suddenly sings in pleasure as she flows into you rapidly, making your belly bloat wide for a moment as she fully inhabits your womb before she spills back out in a great warm rush of thick fluids.[otherwise]She swats at you with a flexible hand, bruising you between the legs.[end if][or]She hugs you into her soft bosom. It would be kind of nice if you could breathe![or]A thousand tiny tendrils suddenly spread from her body, slapping at you wildly. It's fortunate they are not too hard.[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[one of]The gooey girl falls back onto her bottom, panting, or just quivering, it's hard to tell. Her thighs are parted, exposing her gently undulating folds to your eyes. [gootemp][or]The girl loses cohesion with a gurgling cry of dismay, becoming a pool of unmoving ichor at your feet.[or]The goo girl suddenly dives for a nearby liquid and vanishes into it instantly, gone.[at random]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[one of]The girl laughs in soft bubbles at your defeat, but takes mercy on you, leaving you to peace.[or]The goo girl moves up to you and hugs you suddenly, drawing you into a firm embrace against her soft body. She shakes her head silently, then spreads her semi solid nethers before your eyes, leaning back and offering herself. [gootemp][or]Victorious, the goo creature lashes you a few times with a whip like hand for good measure, then loses interest.[at random]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "A jiggling girl of [one of]blue[or]green[or]purple[at random] colour. You can see through her, mostly, her gelatin like flesh tinting the area behind her with its lustrous shade. Her upper torso is well defined, with large breasts somehow jiggling just a little more noticeably than the rest of her. Her lower body seems to meld into a grand base of goop just past her thighs, her legs permanently held together. She seems to notice you and turns to you. With soft slurping sounds, she propels herself at you like an incoming wave, hands outstretched for you with an unwavering smile.";						[ Description of the creature when you encounter it. ]
	now face entry is "curiously disquieting smile on a pretty human face";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "melded together just at your thighs, flowing together into a large and bulbous base of [skin of player] flesh";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]jellied[or]gelatin like[or]translucent[at random] [one of]blue[or]red[or]purple[sticky random]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "you can feel your face reshaping into rather pretty proportions. An urge overtakes you and you smile, and never stop";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "you feel your feet drawn to one another as strange throbbing builds in your shins. Your lower legs flow into one another, creating a [skin of player] base of flesh that goes up to your lower thighs";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "a ripple of tingles rushes through your entire body as you sink towards the ground, then rise again, wobbling along the way. A glance at a hand shows that you can see right through your now jello-like flesh";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you get an odd feeling, but see no change";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your [cock size desc of player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former colour drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 8;			[ These are now the creature's stats... ]
	now dex entry is 10;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10;			[ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 10;
	now cha entry is 5;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 30;			[ The monster's starting hit points. ]
	now lev entry is 2;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "Mall";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 20;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 20;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40;			[ Target libido the infection will rise towards. ]
	now loot entry is "glob of goo";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 100;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]flowing[or]altered[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "gelatinous";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Section 3 - Endings

when play ends:
	if bodyname of player is "Goo Girl":
		if humanity of player < 10:
			say "With a body of jello, your prospects of benevolent rescue are slim, not that you feel much urge for that anymore anyway. You descend into the darkness and [']greet['] those foolish enough to follow. Your undulating form and increasingly skillful teases draw a few more curious souls to your bosom than might otherwise be tempted to go looking.";
			if cunt length of player is greater than 20:
				say "One day you capture a woman poking around. You wrestle her to the ground and draw her up into your greedy form. The experience is like one extended orgasm, and her every struggling motion is a spike of sensation. You keep her inside for a month before you release her, but by then the damage was done. What emerged was another goo creature like yourself, and she no longer wished to leave. You grew to enjoy the company.";
		otherwise:
			say "Your jello like form proves to be quite a curiosity, especially seeing how it seems immune to the usual signs of aging. You discover that those you absorb for a few hours can be renewed within your undulating form, and offer the service out to the wealthy, who enjoy a false second youth. They don't live any longer, but they do it as a fit and healthy twenty something year old body.";

[ Edit this to have the correct creature name as well]
Goo Girl ends here.
