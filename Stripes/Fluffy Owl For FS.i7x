Version 1 of Fluffy Owl For FS by Stripes begins here.

"Adds a Fluffy Owl creature to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Fluffy Owl" } to infections of girl;
	add { "Fluffy Owl" } to infections of furry;

to say losetofluffyowl:
	if hp of player > 0:		[SUBMIT]
		say "     Unable to resist her alluring assets any longer, you surrender to the big-chested bird.  She releases a happy hoot and snuggles you up in her wing arms, burying your face in her bosom.  You moan softly and nuzzle at the soft feathers and warm breasts.  You run your fingers through her down, stroking her breasts and teasing the hidden nipples";
		if cocks of player > 0:
			say ".  While you play with her giant tits, you can feel her taloned hand slip down to your cock and stroke it.  She alternates between brushing her feathers over it and pumping at it until you're hard and leaking precum steadily.";
			say "     She pushes you back and takes a seat in your lap, sinking her wet hole down around your erection.  Being part avian, her pussy feels different around your cock, having become more like a bird's cloaca.  Lost in your arousal, you find this quite pleasurable and enjoy the different ways it seems to grip and slide over your penis.  You fuck her with your face buried in her soft feathers, suckling at a nipple until you cum, pumping your hot seed into her until you're both satisfied and part ways.";
		otherwise:
			say ".  She takes one of your hands and guides it between her legs.  Sliding over the very soft feathers there, you find her wet pussy and run your fingers over it.";
			say "     With a soft hoot, she prompts you to push a few fingers into her and she squirms in pleasure.  Being part avian, her pussy feels different to your touch, having become more like a bird's cloaca.  Lost in your arousal, you find this quite pleasurable and enjoy the different ways it seems to grip and slide over your pumping digits.  You work three fingers into her faster and faster with your face buried in her soft feathers, sucking at a nipple until she cums over your hand and you soak your thighs with your cum as well.  You nibble and suck at her breast as you both enjoy the afterglow before separating and parting ways.";
	otherwise:				[LOSE]
		say "     Your fight with the fluffy bird comes to an end with her grabbing you and stuffing your face between her ample breasts, suffocating you in her soft scent and warm downy fluff.  You try to push away, but you're too worn out and eventually pass out.  When you come to, your crotch is soaked in sticky, feminine juices and the bird is nowhere to be found.  Her soft, lingering scent is quite arousing, making you feel a little more willing to play with one of the lovely birds next time.";
		increase libido of player by 5;


to say beatthefluffyowl:		[WIN]
	say "     With the fluffy bird knocked down, you look over her shapely body, tempted by those huge breasts and that feather-padded bottom.  Shall you play with the captured birdy?";
	if the player consents:
		say "     Grabbing the owl's big hooters, you run your fingers through the soft down and squeeze the warm, soft flesh beneath.  She hoots softly in pleasure and gives into your manhandling readily.  It seems her enlarged breasts are quite sensitive.  Finding those hidden nipples, you start to squeeze and tease them, getting her all the more excited.";
		if cocks of player > 0:
			say "     Pulling her up, you find her surprisingly light and easily lift her over to a nearby bed.  You sit her in your lap with her back to you as you guide her down onto your hard cock.  Her cloacal vent spreads open for you easily and takes your cock in, gripping and twitching around it as you start fucking her while still playing with her large breasts.  Her bird-like pussy feels slightly different around your cock, squeezing and pulling in ways that are different, but equally enjoyable.  She hoots and moans in pleasure as you thrust into her again and again until you finally cum hard and shoot your hot seed into her, bathing her eggs in your semen.  Once your balls are drained, you continue to hold the soft bird against you and play with her sensitive breasts and nipples until you can get her to cum again before you release her and part ways.";
		otherwise:
			say "     Pulling her up, you find her surprisingly light and easily lift her over to a nearby examination table.  You sit her down on it, spreading her legs.  You slide one hand down between her legs while the other continues to fondle her oversized bosom.  Finding her wet slit under those soft feathers, you run your fingers over it before slipping them into her.  Her cloaca-like pussy is wet and shaped a little different from a normal cunt, but quivers with delight all the same as you drive a pair of fingers into her.  The way it feels and the way it grips around your fingers is a little different, but still quite enjoyable, especially as you watch the bird woman moan and squirm in ecstacy when she cums.  Her hot juices soak your fingers and you brush them off onto her fluffy breast before you part ways.";


to say fluffyowldesc:
	say "     With a soft hoot, a fluffy owl creature comes swooping out at you from a dark corner  She has soft, fluffy looking feathers covering her bre... body.  Her arms are partially wings, but have taloned hands at the end.  Her feet end in large, taloned bird's feet.  Her piercing eyes seem to flash brightly in the dim corridors and her beak looks quite sharp.  As she swoops in close, you can't ignore them any longer.  On her chest are an enormous, simply titanic pair of boobs.  Each the size of a large pumpkin, you have no idea how she can fly with them, let along stand upright and walk.  But somehow she does, moving with a strange lightness and grace despite her ample assets.  She seems to smile at her beak as she notices your gaze and runs her taloned fingers over her huge breasts, jiggling them tantilizingly at you.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Fluffy Owl";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The big-breasted owl grabs you and buries your face in her downy bosom, trying to smother you with them![or]The fluffy owl slashes at you with a taloned hand![or]The stacked avian emits a high-pitched shriek that hurts your ears and makes you wobble unsteadily as it scrambles your inner ear![or]The owl woman makes a gliding swoop around you, then comes in to slash at you with her taloned feet![or]The owl creature presses her soft, fluffy body against yours, rubbing those huge breasts against you, hooting softly with need![or]The bird woman angrily snaps at you with her sharp beak![or]The avian woman grabs her big breasts and shakes them enticingly at you![end if]";
	now defeated entry is "[beatthefluffyowl]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetofluffyowl]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[fluffyowldesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "now the head of a fluffy barn owl with sharp eyes and a sharp beak.  You have a faint trace of lips as well, though they are hard to see at first glance";
	now body entry is "light and slender, but still having strong muscles.  This fitness can mostly be felt in your chest and arms, running to the feathery wings that your arms have become.  Your hands have reshaped themselves into bird-like talons, as have your feet";
	now skin entry is "fluffy, brown and cream feathers cover your";
	now tail entry is "You have a broad, flat tail of brown feathers over your pert bottom.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "slick, hidden";
	now face change entry is "it changes and reshapes itself into that of a barn owl.  Your head has a very rounded face, with a lighter fluff of feathers making it soft and cute.  Your eyes are sharp, as is your small beak";
	now body change entry is "your body becomes light and slender, but still strong and muscled.  You can feel the muscles on your upper body reshaping and tightening around your shoulders before the changes spread to your arms.  As you watch, your arms reshape themselves into wing-like structures covered in soft feathers.  Your hands thankfully remain, though they do change form as well, reshaping into bird-like talons, as do your feet";
	now skin change entry is "you feel goosebumps all over your body which spread to feel like pinpricks all over.  From these countless points, small feathers start to grow in, soon covering your body in soft, fluffy feathers.  Your downy coat is mainly a mix of browns and cream colours, with lighter fluff on your chest";
	now ass change entry is "it reshapes itself into a pert, little bottom covered by a broad tail of long, light brown feathers";
	now cock change entry is "it slips away inside you, becoming hidden within a cloacal vent which forms to house your genitals";
	now str entry is 12;			[ The player's stats will move towards these values through infection. ]
	now dex entry is 16;			[ Only the monster's dexterity has any effect in combat. ]
	now sta entry is 14;			[ These numbers should reflect a fully infected player's stats, not the attacking monster's. ]
	now per entry is 18;
	now int entry is 10;
	now cha entry is 14;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 30;			[ The monster's starting hit points. ]
	now lev entry is 3;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 5;			[ Monster's average damage when attacking. ]
	now area entry is "Hospital";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 15;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 50;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Fluffy Owl":
		if humanity of player is less than 10:
			say "     Losing yourself to your new instincts and a renewed wave of changes because of it, you head out into the city.  You make your way to the roof of a small office building and with only a little trepidation, leap off into the air.  You glide clumsily at first, but somehow manage to fly soon enough.  You soar through the night air, drawn back to the hospital.  There, you join the other fluffy owls in the nest that they have set up in one wing";
			if cocks of player > 0 and cunts of player > 0:
				say ", enjoying a life of mating with the many females and being mated to lay more eggs for the parliment.";
			otherwise if cocks of player > 0:
				say ", enjoying a life of mating with the many females so they may lay more eggs for the parliment.";
			otherwise:
				say ", enjoying a life of being mated by one of the group's few males so you may lay more eggs for the parliment.";
		otherwise:
			say "     You manage to survive your time in the city, but not unchanged by the strange infection.  With your bird-like body, you are quite an unusual sight and it makes your life back in society difficult.  With avian infections being rarer and with your wing-like arms, you stand out all the more.  You do manage to find a career that you can be satisfied with when ";
			if facename of player is "Fluffy Owl" and skinname of player is "Fluffy Owl" and tailname of player is "Fluffy Owl" and cockname of player is "Fluffy Owl" and breast size of player > 5:
				say "you become the mascot for a restaurant change.  You get a rather cushy life of a minor celebrity with appearances and commercials.  Despite your altered appearance, you are a welcome sight at the restaurants and the lovely, big-breasted girls who work there are always fun to see.  And there's always at least one who's willing to sneak off to snuggle up to the cute, fluffy owl and her big, soft breasts.";
			otherwise if facename of player is "Fluffy Owl":
				say "you decide to become a prosecuting attorney.  You are quite effective at questioning people on the stand, as many witnesses aren't prepared to deal with your appearance.  And your habit, when the questioning is reaching its peak, of turning your back on them casually and then slowly twisting your head around backwards to stare at them makes many of the weak-willed criminals snap and make a fatal mistake under your steely, predatory gaze.  In your later years, when you become a judge, you use this technique as well, throwing off witnesses and lawyers alike to get to the real truth of the matter so you can mete out harsh justice.";
				if lastAlexfucked is not 500:
					say "     You remain the friend and occasional lover of Alex, the ferrety lawyer, throughout your life.  He always squirms so cutely when you nip at him with your beak or brush your feathers across his cock.  You do have to keep some distance from him, for professional reasons, and always take care against any conflict on your cases.  But you are able to 'consult' with him from time to time, valuing both his advice and his company at those times.  His more easy-going attitude and advice helps offset your sometimes harsh urges for swift and strong decisions, helping you to reach a more sound and balanced verdict on many cases.";
			otherwise:
				say "you become a pilot, having an instinctual longing to fly, but aren't quite able to do it on your own.  As the pilot, you can remain unseen by the passengers.  The flight crew all soon grow used to your appearance and accept you readily enough.  Your willingness to work the red-eye flights, which are better for your nocturnal body, helps quite a bit too.  You become popular with several of the flight attendants as well[if cocks of player > 0 and cunts of player > 0], both male and female[end if].  You enjoy many an opportunity to renew your membership in the Mile High Club.";

Fluffy Owl For FS ends here.