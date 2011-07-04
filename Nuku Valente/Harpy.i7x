Harpy by Nuku Valente begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Harpy to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Harpydefeat is a number that varies.
Harpyconsent is a number that varies.
to say Harpy attack:
	if hp of player is greater than 0:
		say "When you stop struggling, the Harpys squeal with joy, pressing in warmly from all directions and holding you in their loving, if lecherous, arms. You are passed from one Harpy to the next, sniffed at and licked across the face and chest along the way. Only when you[apostrophe]ve been passed to each in turn do they push you into the center, all smiling, and move to begin play in earnest.";
		now Harpyconsent is 1;
		wait for any key;
	if a random chance of 1 in 2 succeeds:
		say "An Harpy swims up behind you and grabs you at the sides, pulling you back against a stiff shaft. He nuzzles into your left ear, then right, as he snuggles up against your back and works the pointed tip of his bestial member into your back door, slowly working it into your body as his friends bark and cheer their encouragement. He pulls you back firmly, sinking several inches more of himself into you, the pain giving way to nanite induced pleasure that echoes outwards from where he stretches you lustfully.";
		wait for any key;
	if a random chance of 1 in 2 succeeds and cunts of player is greater than 0:
		say "An Harpy nuzzles into your throat as he presses himself against your front a moment. He grabs for your hips, then leans back, pressing his eager pointed tool against your nethers, easing it into you with a few sharp thrusts. He begins to piston against you like a machine, eyes closed and chest heaving with heavy gulps of air as he makes wild love. The rough loving is painful only for the first moment, giving way to erotic waves of tingling pleasure that run up and down your belly, centered on your ecstatic cunt, trembling tightly around the penetrating pole of that eager creature.[impregchance]";
		wait for any key;
	if a random chance of 1 in 2 succeeds:
		if a random chance of 1 in 2 succeeds:
			say "An Harpy suddenly clambers up on top of you, somehow avoiding plunging you into the waves as it settles down on your head and perches. It turns out to be a she, the heated scent of her arroused cunt close to your nose as she curls to look down at you from above, grinning.";
		otherwise:
			say "Soft pricks are felt as Harpy paws grab you and pull you down. Narrowly avoiding plunging you, an Harpy scales you and perches on your head with a happy bark, his balls draping over your face to obscure your vision a moment before he laughs and moves a bit.";
		say "The Harpy on your head leans back a little, balancing quite well as they begin to pleasure themselves with throaty groans and loud barks, sharing in the pleasure of the moment.";
		wait for any key;
	if a random chance of 1 in 2 succeeds and cocks of player is greater than 0:
		if cock length of player is greater than 12:
			say "Too large for her to ride the traditional way, she goes for the alternative, grabbing at its huge length and grinding her entire front along it, stroking it with her slender breasts and thick waterproofed hide. Her arms warp around it as she works you closer to climax.";
			if cocks of player is greater than 1:
				say "Not to let your other organs go to waste, her tail snags around another, loosely stroking at it in time with her energetic body massage against your primary dick, coaxing you towards a wild release.";
		otherwise:
			say "A sleek female Harpy moves up against you, grabbing for your [cock of player] dick and squeezing lightly as she looks into your eyes. She slips in closer, guiding your cock into her needy sex, sinking wetly into the snug passage as she presses her groin down to consume it entirely. She thrusts in rapid little motions that thrashes the water with bubbles swirling around you in the motions. Strange warmth builds in your cock as it plunges deeper and deeper into her willing passage, pleasure building in your body in the motions.";
			if cocks of player is greater than 1:
				say "Noticing you have extra male meat, another female swims up, one to a cock. It becomes quite crowded as they all press in tight to work your cocks deep into their sopping wet cunts, but they seem up for the challenge as they pile in together to work at you and bleed you of every drop of cum you can produce.";
			wait for any key;
		say "Time is lost as the Harpys have their way with you. Frantic acts of filling and being filled eventually spill over to all members of the raft have their turn reaching their complete satisfaction, taking you along for the ride. By the time it is over, you are soaked in sweat and several other fluids, and are left on the sandy beach to recover, sore, but still buzzing with a wicked afterglow.";
		wait for any key;

[ [Harpy loss] ]
To say Harpy loss:
	say "Defeated, the group of Harpys backs away from you with sad expressions. '[one of]We just wanted to play.[or]Don[apostrophe]t be so stuck up. We could have so much fun together![or]Come back when you change your mind, we[apostrophe]ll save you some fish![at random]'";
	
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	add "harpy" to infections of girl;
	Choose a blank row from Table of random critters;
	now name entry is "harpy"; [Name of your new Monster]
	now attack entry is "[one of]An Harpy grabs you around the midsection, his long cock poking between your cheeks as he hauls you underwater for a moment of panic.[or]An Harpy leaps from the water just to land on you, plunging you into the depths. You learn that it is as she as her slender breasts press against you even as you struggle for breath.[or]Two Harpys grab either of your hands  and play tug o war with you, arguing over who gets to play first.[or]Even as you try to defend yourself, you feel something warm descend on your groin, lapping at you eagerly and unexpectedly. You squeak in surprise, but hands grab at you and pull you beneath the waves.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Harpy loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Harpy attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "An athletic looking young woman with feathery wings attached to her arms like fins and great talons for hands and feet. Her legs are also covered in feathers, and she has a fan of feathers over her butt. She has light, flawless, flesh where exposed on her front and chubby, elfin, face. She would be cute if she wasn't scary.";[ Description of the creature when you encounter it.]
	now face entry is "young woman with large, elfin, ears and unruly red hair that barely reaches your shoulders. While a little chubby, it could pass as a human";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "built slightly, with slender curves that remind of a teenaged female and an exposed belly button on your [skin of player] front. Feathers spread over your shoulders and back, light brown in color. Your thighs are covered in downy looking feathers, but shins fade into tough looking bird talons that grip the ground securely. Your arms have wings like fins, with powerful flight feathers ready.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "smooth and flawless";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "Above your pert ass is a fan of brown feathers curved upwards. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "human";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "a soft warmth flows through your head as it dwindles and rounds to nymph like appeal. Your ears stretch a little to the sides as hair shifts in hue."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "light brown feathers spread rapidly, covering your shoulders and back. Brown feathers spread over your legs, from the hips down towards your shin where it fades towards yellow scaley skin. Your feet become powerful looking bird talons with wicked claws. Even as you consider reaching to touch, wing fins burst from your arms with new feathers."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your skin evens out its blemishes, becoming youthful and smooth."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "you feel your [skin of player] rump rounding as feathers burst free and form a tail fin, upturned and in a fan spread."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it thrums with an alien pleasure."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 16;					
	now per entry is 14;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 50;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 10;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 60;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Fish";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "harpy":
		if humanity of player is less than 10:
			if Harpyconsent is 1:
				say "You return to the raft of Harpys that dominates your throats, throwing yourself into the water and swimming out into their eager grasps. Without further worry for the world, you live with them, fucking, being fucked, hunting for tasty fishes and clams. You find you have little complaint over your new, simple, life.";
			otherwise:
				say "You feel an overwhelming desire to enter water, but try to resist against it. You end up at the mall, shivering and cold. The rats take you inside, and feed you, but as soon as you spot their fountain, you dive in. You become something of a permanent fixture there, but they don't really seem to mind your presence. You become a sort of mascot for them, not to mention a desperation date whenever a rat is feeling particularly lonely.";
		otherwise:
			if Harpyconsent is 1:
				say "As the rescue arrives, you direct the military back out to the beach. With eager waves, you coax your friends up and all get rescued together, despite some initial misgivings by your raft mates. In time, the Harpys grow accostomed to civilized living, mostly, working as life guards for a wide strip of beach. After hours, you fill the waves with the sounds of lust and love.";
			otherwise:
				say "You are taken back to civilization, but find that, as an Harpy, you have a base need to be around water. You secure a job working at a city pool, where your aquatic skills come in handy, for rescues and training. You become a swim instructor for the city and remain so for the rest of your days, eagerly pressing your smooth form through the water.";

			


[ Edit this to have the correct Name as wall]
Harpy ends here.