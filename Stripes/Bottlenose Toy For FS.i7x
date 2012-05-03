Version 2 of Bottlenose Toy For FS by Stripes begins here.
[Version 2 - Toy dolphin version added]
"Adds an Inflatable Dolphin creature to Flexible Survivals Wandering Monsters table"


Section 1 - Monster Responses

dolphinmode is a number that varies.
dolphinflatablefight is a number that varies.

when play begins:
	add { "Bottlenose Toy" } to infections of girl;
	add { "Bottlenose Toy" } to infections of furry;
	add { "Bottlenose Toy" } to infections of tailweapon;

to say losetodolphinflatable:
	now dolphinflatablefight is 2;
	if dolphinmode is 1:		[lose to girl form]
		say "     The bottlenose girl giggles again as she wraps her towel around your neck and wrists.  It squeezes around your forearms, binding them tightly behind your back.  Pushing you to the sandy ground, she climbs atop you, always keeping in contact with the towel, which rebonds to her wherever she's holding it so she always knows her towel is";
		if cocks of player > 0:
			say ".  She settles herself into your lap, rubbing her slit over your cock and moaning softly.  Bound as you are, you cannot really get away, not that you're really thinking about that at this point.  A clear, slick fluid leaks from her plastic pussy, lubricating your shaft before she reaches back and guides it up into her.  She trills in squeaky delight at having your throbbing cock inside her, stretching and resizing herself to take your [cock size desc of player] [cock of player] cock perfectly.  Despite being a PVC pussy, it is quite warm and slick, gripping your cock nicely as the airhead giggles merrily.  As she rides you, there's just something about her cute, innocent nature that really turns you on and you cum hard into her, pumping your seed into her[if daytimer is day].  With the sunlight shining through her, you can see the slightly shaded streaks where your cum has landed on the inside of her vinyl skin[end if].  Finished, the smiling inflatable slides off you, her towel unravels on its own.  She wraps it back around herself and runs into the water to play and splash around some more.";
		otherwise:
			say ".  She settles herself over your head, pressing her damp slit to your face.  There is an arousing scent to her juices beyond the faint plasticky smell.  Bound as you are, you cannot really get away, not that you're really thinking about that at this point.  You start licking and kissing at her wet pussy, making her giggle merrily.  You slide your tongue into her, teasing her smooth inner walls and lapping up her strangely arousing juices.  Despite being a PVC pussy, it is quite warm, slick and tasty, gripping around your tongue.  As she rides your face, there's just something about her cute, innocent nature that really drives you to please her until finally she cums with a trill of squeeky delight, spilling her slick juices across your face.  Finished, the smiling inflatable slides off you, her towel unraveling on its own.  She dons it like a bright red cape and dashes back into the water to splash and play.";
	otherwise:				[lose to toy form]
		if cocks of player > 0:
			say "     The green dolphin giggles again as it wraps its vinyl towel around you, binding your arms to your sides and pulls you into the water with it.  Floating on its back, it bobs in the water with you on top of it.  Bound tightly as you are and with your bonds attached to its fins, you cannot do much to get away.  And as the waves press its wet slit against your groin, you end up not really thinking about getting away at all.  The rubbing teases your cock until you can't help but get hard and slide into its cunt.  It trills happily and bobs on the water with your thrusts as you grow more excited, fucking with the motion of the ocean.  The PVC pussy is pleasantly warm and slick, gripping your cock nicely as it resizes itself to take your [cock size desc of player] [cock of player] cock perfectly.  As you ride the beach toy, there's just something about its soft, pliable body and smooth skin that excites you more the longer you touch it.  It giggles in squeaky delight as you drive your cock hard into it while riding a large wave, pumping your hot seed into it.  Finished, you pant atop the buoyant toy as the waves slowly take you back both to shore.  With a little flick of its fins, the dark green towel releases you from its rubbery grip.  The creature rises upright, splashing backwards over the water on its tail like a dolphin in a show, giving you a show of its creamy cunt leaking your seed[if daytimer is day].  The sunlight through its plastic body lets you see the sticky ropes of cum you've left on the inside of its air-filled body[end if].  It dons its towel oncemore like a scarf and dives into the water to frolic.";
		otherwise:
			say "     The green dolphin giggles again as it wraps its vinyl towel around you, binding your arms to your sides and pulls you to the edge of the water with it.  Laying on your back at the edge of the ocean, it lays itself over your body, pressing its inflated form down over you.  It settles itself over your head, pressing that damp slit to your face.  There is an arousing scent of its juices beyond the faint, plasticky smell.  Bound as you are, you cannot really get away, not that you're really thinking about that once the bottlenose's snout finds your cunt and its tongue sets to work at your pussy.  You start licking and kissing at those rubbery petals, making it trill happily.  You slide your tongue into her, teasing her smooth inner walls and lapping up her strangely arousing juices.  Despite being a PVC pussy, it is quite warm, slick and tasty, gripping around your tongue.  It's tongue, meanwhile, is returning the favour to you.  You shiver a little each time a wave splashes a little higher, sending cool water around your hot pussy, but the beach toy's tongue feels all the warmer and more pleasant after these splashes.  As it rubs down onto your face, there's just something about this cute, playful toy that really drives you to please it until finally it cums with a trill of squeeky delight, spilling her slick juices across your face, pushing its bottlenose snout into your cunt to make you cum as well.  After cumming hard, another big wave hits, making you cum again.  Finished, the smiling inflatable slides off you, its towel unraveling on its own.  it re-dons it like a dark green scarf and dashes back into the water to splash and play, leaving you panting at the water's edge in the afterglow of the strangely erotic toy's visit.";

to say beatthedolphinflatable:
	now dolphinflatablefight is 1;
	if dolphinmode is 1:		[defeat girl form]
		if libido of player > 45 and cocks of player > 0 and a random chance of 2 in 3 succeeds:
			say "     Having beaten the inflatable toy, you decide you want to have a little fun with her.  Taking her own towel, you wind it around her wrists and push her onto the sandy beach.  She squirms as if trying to get away, all while raising her tail and bubble bottom and trying to stifle her playful giggles.  As she's so willing to play along, you climb atop her and line up your stiff cock with her leaking pussy.  She moans softly as you sink it into her.  She trills in squeaky delight as you mount her.  Her PVC pussy is quite nice and warm, and resizes itself to be a perfect fit for your [cock size desc of player] [cock of player] cock.  You hold the playfully squirming pooltoy down as you pound away at her, her inflated body shifting and deforming a little under your weight while support you softly.  There's just something about her cute, innocent nature that really turns you on and you fuck her hard and fast, knowing you can't hurt her stretchy body.  After a nice, satisfying ride atop her smooth body, you push into her one last time and unleash your hot load, spilling a pool of your hot cum inside her[if daytimer is day].  Under the bright sun, you can see the darker streaks and pool your semen makes against her inner skin[end if].  Finished, you get up and the bottlenose girl easily unwinds her towel and runs back off into the water.  She gives you a farewell wave to you before getting back to splashing around, wearing her towel now as a cute, red bonnet.";
		otherwise if libido of player > 30 and cocks of player > 0 and a random chance of 3 in 4 succeeds:
			say "     The inflatable dolphin girl giggles playfully as you pin her down on the sandy beach, smiling happily up at you.  Looking over her strange body, you can't help but find her cute and adorable.  Feeling yourself get hard, you decide to listen to your cock and move to line it up with her wet slit.  She moans softly and helps you guide it into her, eager to keep playing with you.  She trills in squeaky delight as you mount her.  Her PVC pussy is quite nice and warm, resizing itself to best fit your [cock size desc of player] [cock of player] cock.  As you thrust into her slick, lubricated hole, you let your hands wander across her body, running along the seams of her unusual skin, then to her breasts.  They are like firm balloons, yielding to your touch as your squeezes make her giggle happily.  But when you start playing with her nozzle nipples, she starts panting and moaning, drawing in fresh air to replace what you release as you tease them.  Leaning forward, you blow into one, making her breast swell temporarily and that sets the bottlenose girl off, cumming hard around your cock and soaking your crotch in her slick juices.  You cum as well, blasting your hot load into her, painting her inner skin with your semen.  After you're finished, you let her back up[if daytimer is day], the sunlight showing the sticky streaks of your cum clinging to the inside of her skin,[end if] and watch her bound her way back into the water to play in the waves with her towel now around her waist like a skirt.";
		otherwise if cunts of player > 45 and a random chance of 2 in 3 succeeds:
			say "     Having beaten the inflatable toy, you decide to have a little fun with her.  Taking a hold of her yielding head, you pull her face to your pussy.  Giggling happily, she nuzzles at your groin and starts licking.  Her tongue is slick and plasticky like the rest of her, sliding smoothly along your sensitive folds and slipping into your cunt.  You stroke her smooth head encouragingly and she licks all the more eagerly, pressing her dolphin nose all the more firmly against your pussy as she tries to please you.  You moan in sudden surprise as the inflatable snout pushes into you, filling you like a dildo as she seeks to lick deeper inside you.  She giggles happily at your reaction and runs her fin-like hands over your hips, licking and bobbing his head until you cum.  Satisfied by the strange bit of fun with the toy, you let her get back up and she bounds her way happily back to the water, folding her towel and wrapping it around herself like a long, red scarf.";
		otherwise:
			say "     Having beaten the inflatable toy, you give her a swat on the ass and send her giggling back to the water to play in the waves.";
	otherwise:				[defeat toy form]
		if libido of player > 45:
			say "     Beaten, the inflatable dolphin sags slowly back towards the ground like a balloon low on helium.  As it drifts down, it rolls over one last time, giving you a view of its wet, womanly slit.  In your aroused state, you find yourself considering playing with the toy creature.  Will you play with the toy before continuing on your way?";
			if the player consents:
				if cocks of player > 0:
					say "     Climbing atop the toy, you pin it on its back on the sandy beach beneath you and rub your body against it, grinding your maleness along its smooth, plastic skin.  As your cock stiffens, it giggles happily that you've decided to play with it after all.  Pressing yourself down onto its inflatable body, you deform it slightly as you drive your throbbing shaft between those slick folds.  It trills in squeaky delight as you mount it.  Its PVC pussy is pleasantly warm and slick with lubricant, resizing itself to grip your [cock size desc of player] [cock of player] cock perfectly.  You hold the playfully squirming pooltoy down by its handles as you pound into it, the creature's inflated body shifting and deforming a little under your weight while supporting you softly.  There's just something about its smooth skin and pliable body that excites you more the longer you touch it.  Knowing you can't hurt its stretchy body, you pound away at it good and hard, making the green dolphin squeak and trill in delight.  After a nice, satisfying ride atop its smooth body, you push into the dolphin toy one last time and unleash your hot load, spilling a pool of your hot cum inside it[if daytimer is day].  Under the bright sun, you can see the darker streaks and the puddle your semen makes against her inner skin[end if].  Finished, you get up and the inflatable toy back up and it floats slowly back up into the air, weighed down a little by the tiring fight and your load.  It slips its dark green towel back on and dives into the water to frolic and play in the waves.";
				otherwise:
					say "     Pulling the toy over to the water by its handle, you float it on its back and climb atop the buoyant, green dolphin.  Gripping its handles for support, you rub yourself against its wet slit, letting its PVC pussy glide against yours.  The dolphin trills, happy that you've decided to play with it after all.  Floating on its back, it bobs in the water with you on top of it as the waves press its wet slit against yours.  You rub yourself against its smooth, pliable body, something about the feel of it making you more and more aroused as the motion of the ocean helps you rock against one another until finally you cum hard while riding a large wave, soaking your groins in a mix of feminine juices and slick lubricant.  Finished, you pant atop the buoyant toy as the waves slowly take you back both to shore.  You climb off the green toy, help it get righted and send it on its way to play in the waves with a soft slap.  It does a little spin to pull its towel back into a scarf, flashing its pussy at you one last time before frolicking in the water.";
			otherwise:
				say "    Resisting the impulse, you quickly grab the dolphin toy by the holding handles and toss it into the waves, letting it swim around in the water to amuse itself away from you before you reconsider playing with the strange being.";
		otherwise:
			say "     Beaten, the inflatable dolphin sags slowly back towards the ground like a balloon low on helium.  As it drifts down, you grab it by one of the handles and pull it over to the water, tossing it into the waves.  You leave it there to frolic and play in the waves out of your way.";


to say dolphinflatableattack:
	if dolphinmode is 1:
		say "[one of]The playful dolphin girl wraps her towel firmly around your arm, giving a firm squeeze before you can pull free![or]The vinyl towel whips out, stinging you in the ass!  The inflatable dolphin giggles as you jump![or]The inflatable giggles as she whips you with her towel![or]The towel smacks you in the face and the dolphin giggles and apologizes.  'That went a little high.  Sorry!'[or]The pooltoy girl moves in close and rubs one of her hands over your groin, squeezing lightly![or]The pink bottlenose giggles 'Come on.  Let's play!' and turns, raising her inflatable tail to give you a peek at her bubble bottom, plastic pucker and leaking slit![or]The dolphin toy turns and slaps her inflatable tail against your side![at random]";
	otherwise:
		say "[one of]The playful dolphin does a flip in the air, smacking you with its rubbery tail![or]The vinyl towel whips out, stinging you in the ass!  The inflatable dolphin giggles as you jump![or]The inflatable giggles as she whips you with its towel![or]The large pooltoy gets its towel entangled around your ankle and pulls you over before you can squirm free![or]The inflatable toy swims through the air and bumps its nose firmly against your groin for your continued resistance to its playing![or]The green bottlenose giggles 'Come on.  Play with me!' and raises itself upright and batting its tail in imitations of a dolphin standing out of the water.  This gives you another view of this inflatable creature's slick, womanly folds![or]The toy dolphin leaps over you and swats your ass with its tail![or]The large toy manages to get its dark green towel around your wrist.  Swimming quickly around you, it spins you around dizzily while giving a clicking, dolphin-like laugh![at random]";

to say dolphinflatabledesc:
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Female";
	if dolphinflatablefight is 3:			[event pre-set to girl mode]
		now dolphinmode is 1;
	otherwise if dolphinflatablefight is 4:	[event pre-set to toy mode]
		now dolphinmode is 2;
	otherwise if ( hardmode is false and level of player < ( 5 - levelwindow ) ) or a random chance of 3 in 4 succeeds:	[girl only at low level]
		now dolphinmode is 1;
	otherwise:																			[25% of toy mode]
		now dolphinmode is 2;
	if dolphinmode is 1:
		if hardmode is true and level of player > 1, let debit be level of player - 1;
		now hp entry is 18 + ( debit * 3 );
		now monsterhp is 18 + ( debit * 3 );
		now wdam entry is 3 + ( debit / 4 );
		now lev entry is 1 + debit;
		now dex entry is 15 + ( lev entry / 5 );
		say "     As you walk along the beach, you encounter another of the unusual creatures that have come into being.  Rising from her playing in the water is an anthropomorphic dolphin girl, but what makes her strange is that she seems completely inflatable.  Her skin is a bright pink and glossy white, with visible seams and everything.  As she removes her red towel from around her waist, you can see that there are inflation nozzles where her nipples should be and another wet [']seam['] between her legs, showing her to be ready for more than innocent waterfront playing.  There is a strange glisten to the towel's appearance, letting you realize that it is made of a living vinyl and has now bonded to her fin-like hand.  She spins it into a rat-tail with a grin and moves in with a playful giggle.";
	otherwise:
		if hardmode is true and level of player > 5, let debit be level of player - 5;
		now hp entry is 38 + ( debit * 4 );
		now monsterhp is 38 + ( debit * 4 );
		now lev entry is 5 + debit;
		now wdam entry is 3 + ( lev entry / 3 );
		now dex entry is 16 + ( lev entry / 5 );
		say "     Resting peacefully on the beach is what looks at first to be a normal, child's inflatable beach toy.  Aside from being a bigger model than most, nearly a man's height in length from nose to tail, it seems like others you've seen before.  It is a bright green dolphin with a white underbelly and a cartoony grin on its bottlenose face.  There is a darker section of textured rubber designed like a big scarf to provide better grip as well as a pair of small handles at its side for a child to hold.   It seems innocent enough, until it starts to move on its own.  With an airy giggle, it floats up into the air and does a playful backwards flip.  This flip lets you see there's a slick slit towards the rear its underbelly, showing that this is no pure, children's toy but another of the unusual creatures that have come into being.  As it playful swims through the air past you, you try to push it away, finding the inflated creature's skin surprisingly durable for a beach toy.  Turning around, it pulls its scarf off, fusing it to the tip of its fin and spins it in the air like a large, green towel to strike at you.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bottlenose Toy";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[dolphinflatableattack]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthedolphinflatable]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetodolphinflatable]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[dolphinflatabledesc]";						[ Description of the creature when you encounter it. ]
   now face entry is "the cute face of a cartoonishly rounded dolphin, like some kind of inflatable pool toy.  You have big, flat eyes and a wide grin drawn on your bottlenose snout.  Both your eyes and mouth seem to work fine and your head feels hollow and empty, bending like a balloon when you touch it";
   now body entry is "that of an anthropomorphic dolphin, strangely somehow empty and filled with air.  There is even a flappy little inflated fin at your back that you have press to one side when wearing your backpack.  Your body is covered in a PVC imitation of [skinname of player] flesh, complete with seams.  Your body is able to bend and reshape itself to move instead of having any actual bones or muscles.  The scent of fresh plastic lingers around you.  Your nipples have been replaced with small inflation nozzles, but are just as sensitive as normal nipples, if not more";
	now skin entry is "shiny PVC plastic of smooth [if cocks of player > 0 and cunts of player > 0]royal purple[otherwise if cocks of player > 0]sky blue[otherwise]bright pink[end if] and glossy white";
	now tail entry is "You have an inflated, balloon-like dolphin tail attached just over your bubble-butt rear end.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]inflatable[or]PVC[or]vinyl[at random]";
	now face change entry is "your head bulges and swells as you take a deep breath.  But the air is not drawn into your lungs, but instead into your head, filling it with air.  Your head reforms into that of a cartoonish dolphin with a smooth exterior.  Your eyes water momentarily before they flatten and become large, flat drawing on your surface of your face.  Your mouth soon follows the same fate, turning into a cartoonish grin on your bottlenose snout";
	now body change entry is "a strange lightness suffuses through your body.  You start panting heavily, but only drawing in air, never exhaling.  But your body doesn't swell up either, instead the air seems to be replacing the contents of your body.  Your skin becomes smooth and plasticky, becoming an imitation of [skinname of player] flesh with seams between the sections and airbrushed markings and shading.  Your body reforms into a smooth, slender shape with fin-like hands and feet, as well as an inflated dorsal fin on your back";
	now skin change entry is "your skin becomes shiny and smooth, turning into flexible vinyl.  Your front and inner thighs become a smooth, glossy white while the rest is a [if cocks of player > 0 and cunts of player > 0]royal purple[otherwise if cocks of player > 0]sky blue[otherwise]bright pink[end if]";
	now ass change entry is "you feel a pressure building before releasing with a soft squeak.  For a moment you think you farted, but the squeaking sound continues as a plump dolphin tail grows from your ass.  But it is not made of flesh, but is made of plastic and is inflated with air, yet moves all the same";
	now cock change entry is "feels like its swelling and growing wildly.  A quick look shows that it's not growing, but instead filling with air and becoming an inflatable cock, but still sensitive and fully functional, leaking a slick lubricant from its tip";
	now str entry is 8;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 15;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 10;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 18;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "Beach";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 9;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 4;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 24;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 10;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 60;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

when play ends:
	if bodyname of player is "Bottlenose Toy":
		if humanity of player is less than 10:
			say "     As your infection progresses, you become nothing but an inflatable creature, inside and out.  With nothing more than thoughts of playing in the water, you bounce your way back to the waterfront.  There you join several other inflatable dolphins and frolic in the water and play on the beach.  While most are dolphin girls, there are a few shaped like regular dolphins as well to play with the pink girls";
			if cocks of player > 0:
				say ".  Having a cock to play with as well, the girls have a lot of fun rubbing their squeaky bodies against yours.  Fucking is nothing more than another of the many games you play, mindlessly whiling away the time without a care in the world or a thought in your empty head past your eternal playtime.";
			otherwise:
				say ".  You and the other pink girls have plenty of fun together rubbing your squeaky bodies together or licking at the pleasant slit between your legs.  You have many a pleasant ride on the dolphin toys as well.  But when a blue male toy joins your group, having him fuck you with his cock is a whole new game to play.  You and the others mindlessly while away the time without a care in the world or a thought in your empty heads past your eternal playtime.";
		otherwise:
			say "     Your unusual body causes quite a bit of consternation for the scientists analyzing the various strains found in the infected city.  Being an inflatable creature with no internal structure at all, they don't understand how you can be alive at all.  They have some theories and ideas, but you can hardly follow it.  Something about your transformation has made you not care about such complicated thoughts, preferring to live in the moment.  While some would call you an airhead, you have retained enough of your humanity to still think.  You just don't bother most of the time.";
			say "     Because of your body's strange nature, you decide to get a job as a lifeguard and swimming instructor at a local pool.  The kids particularly like your cute, inflatable body and merry antics in the water.  And there are always a student or two from your older classes who enjoys your pooltoy form in another way.";
			if cocks of player > 0:
				say "     You grow quite close to one student, an older woman who's now found herself in the body of a youthful seal.  Looking in her early twenties, she's ready to live life again.  But her aquatic body is at odds with her phobia of the water.  You work with her slowly over several months, having many after hours sessions with her, some for swimming and some for lovemaking.  In time, you coax her to become more relaxed and eventually a great swimmer.  She even starts to slowly change over time from all the exposure to you, gradually becoming an inflatable seal toy and your mate.  You share long lives, ever youthful in your artificial bodies.";
			otherwise:
				say "     You grow quite close to the parent of one batch of students.  The single father and his two girls have become otters since the outbreak.  The girls become great swimmers almost naturally and love visiting the pool.  Their father loves visiting the pool to visit with you and will often join you in the break room for some private sex.  In time from the constant exposure, he becomes an inflatable otter toy and your mate.  His girls slowly change as well, becoming inflatables also.  You love your new family and enjoy a long, happy life of swimming and playtime.";

[ Edit this to have the correct creature name as well]
Bottlenose Toy For FS ends here.