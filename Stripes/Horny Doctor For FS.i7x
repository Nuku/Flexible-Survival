Version 1 of Horny Doctor For FS by Stripes begins here.

"Adds a Horny Doctor creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

hdmode is a number that varies.
hdform is a number that varies.
hdformname is a text that varies.

when play begins:
	add { "Horny Doctor" } to infections of furry;
	add { "Horny Doctor" } to infections of Caninelist;		[list of canine infections]
	add { "Horny Doctor" } to infections of Knotlist;		[list of cock infections with a knot]

to say losetohornydoc:
	if hdmode is 1:
		say "[losetohdmale]";
	otherwise if hdmode is 2:
		say "[losetohdfemale]";

to say losetohdmale:
	say "     The horny doctor eagerly pushes you down over a stray gurney and runs his paws roughly over you.  '[if hp of player > 0]Now that's much better.  Now take your medicine like a good patient.  I've got it nice and hot right here,' he chuckles, grinding his throbbing cock against your hip as he does[otherwise]Such a troublesome patient you're being.  You don't want me to call an orderly to help me with you, do you?' he chuckles, grinding his throbbing cock against your hip as he does[end if].  No longer resisting his advances, he licks your neck and gives your crotch a probing caress, a quick examination of what fun he might have with his new patient.  You can't help but moan in response, your lustful urges rapidly overpowering your good sense.";
	if inheat is true and ( ( cunts of player > 0 and heatform is 0 ) or ( heatform is 1 ) ):
		say "     While fondling your [if cunts of player > 0 and heatform is 0]juicy cunt[otherwise]crinkled hole[end if], the canine doctor sniffs excitedly, catching your scent in the air.  'Oh, my poor patient is in heat.  I have the cure for that right here,' he says, grinding his cock against your ass harder in emphasis.  In your heat-addled state, you can't help but moan and raise your ass to him, allowing him to get his doggy dong lined up with your wanton hole.  'Mmm... it's malpractice time, my dear,' he says with a grin and a lick just before thrusting firmly into your [if cunts of player > 0 and heatform is 0]needy cunt[otherwise]needy back door[end if] with intent to breed you out of your heat.";
		if cunts of player > 0 and heatform is 0:
			say "[hdmale_sex01]";
		otherwise:
			say "[hdmale_sex02]";
	otherwise if cunts of player > 0 and a random chance of 2 in 3 succeeds:
		say "     While playing with your pussy, he pants excitedly.  '[one of]I've got the cure for what ails you right here[or]Trust me, I'm a doctor[or]I diagnose you as 'sexy'[or]Oh, for a case like yours, I'm going to have to prescribe a hot meat injection[or]Let's get started on your treatment, my sexy patient[or]The prognosis isn't good.  You need some hard doggy fucking stat[at random],' he says, grinding his cock against your ass harder in emphasis.  Under the horny [hdform][']s skillful teasing, you find yourself growing quite eager for his advances as he gets his doggy dong lined up with your waiting pussy.  'Mmm... [one of]med school was totally worth it for this[or]let's begin your treatment[or]nothing like fucking your patient to make a doctor's day[or]doctor-patient sex is the best sex[at random],' he says with a grin and a lick just before thrusting firmly into your wet cunt.";
		say "[hdmale_sex01]";
	otherwise if cunts of player is 0 and a random chance of anallevel in 5 succeeds:
		say "     While playing with your asshole, he pants excitedly.  '[one of]I've got the cure for what ails you right here[or]Trust me, I'm a doctor[or]I diagnose you as 'sexy'[or]Oh, for a case like yours, I'm going to have to prescribe a dog cum enema[or]Let's get started on your treatment, my sexy patient[or]The prognosis isn't good.  You need some hard doggy fucking stat[or]Here, lemme check your temperature.  I've got my thermometer right here[at random],' he says, grinding his cock against your ass harder in emphasis.  Under the horny [hdform][']s skillful teasing, you find yourself growing quite eager for his advances as he gets his doggy dong lined up with your waiting anus.  'Mmm... [one of]med school was totally worth it for this[or]let's begin your treatment[or]nothing like fucking your patient to make a doctor's day[or]doctor-patient sex is the best sex[at random],' he says with a grin and a lick just before thrusting firmly into your tight rectum.";
		say "[hdmale_sex02]";
	otherwise:
		say "     After humping your leg while playing with your [if cunts of player > 0 and cocks of player > 0]cock[smn] and puss[yfn] and squeezing your [otherwise if cunts of player > 0]puss[yfn] and squeezing your [otherwise if cocks of player > 0]cock[smn] and squeezing your [end if]ass for a couple of minutes, the [hdform] doctor moves around in front of you.  '[one of]Nine out of ten doctors agree that sucking dog cock will help clear up lingering symptoms of humanity[or]Time for your tasty medicine, my dear[or]Here, lemme take your temperature.  I've got my thermometer right here[or]My diagnosis is a lack of doggy protein.  We need to give you a fresh dose right away[or]Open wide and say 'Ahhhh', my sexy patient[or]The prognosis isn't good.  You need some creamy dog cum stat[or]You were such a good [if cunts of player > 0]girl[otherwise]boy[end if] during your examination that you get a special lollipop[at random],' he says, presenting his doggy dong to you.  He smears some precum across your lips, and you, already excited by his earlier teasing to the point of lustful eagerness, open your mouth and welcome it in.  'Mmmm... [one of]med school was totally worth it for this[or]let's begin your treatment[or]nothing like a cock-sucking patient to make a doctor's day[or]I've got a nice, big dose of creamy medicine for you, my slutty patient[or]patient suck cock the best[at random],' he says with a grin as he rubs a paw over your head just before thrusting firmly into your mouth.";
		say "[hdmale_sex03]";

to say hdmale_sex01:
	say "     With the doctor's canine bone buried inside you, he starts thrusting while panting in your ear.  His tongue plays across your neck and ears as he pounds away at you, humping you wildly like the dog he is[if breast size of player > 0].  His paws reach around to fondle your tits, playing with your nipples in what's certainly more than a normal breast exam[end if].  You start to pant and bark alongside him as he fucks you, his canine cock and swelling knot feeling great inside [if inheat is true]your heat-stricken hole[otherwise]you[end if].  This goes on for several minutes before he finally pops that knot of his fully into you and ties inside your cunt.  A few locked thrusts are all he has left before his semen starts spurting into you, filling your needy hole[if inheat is true] in an attempt to breed you[end if].  You feel spurt after spurt of canine cum filling your womb as you cry out in climactic bliss yourself, soaking the edge of the gurney with your [if cocks of player > 0]cum and [end if]juices.  Once the doctor's done with your [']treatment['], he slips his shrinking knot from your cunt with a wet pop and sends you on your way.  Still in a bit of a daze after the hard fucking, you stumble off, canine cum running down your legs.";

to say hdmale_sex02:
	say "     With the doctor's canine bone buried inside you, he starts thrusting while panting in your ear.  His tongue plays across your neck and ears as he pounds away at you, humping you wildly like the dog he is[if breast size of player > 0].  His paws reach around to fondle your tits, playing with your nipples in what's certainly more than a normal breast exam[end if].  You start to pant and bark alongside him as he fucks you, his canine cock and swelling knot feeling great inside [if inheat is true]your heat-stricken hole[otherwise]you[end if].  This goes on for several minutes before he finally pops that knot of his fully into your ass and ties inside you.  A few locked thrusts are all he has left before his semen starts spurting into you, filling your needy hole[if inheat is true] in an attempt to breed you[end if].  You feel spurt after spurt of canine cum filling your rectum as you cry out in climactic bliss yourself[if cocks of player > 0], soaking the edge of the gurney with your cum[end if].  Once the doctor's done with your [']treatment['], he slips his shrinking knot from your anus with a wet pop and sends you on your way.  Still in a bit of a daze after the hard fucking, you stumble off, canine cum running down your legs.";

to say hdmale_sex03:
	say "     With the doctor's canine bone stuffed in your mouth, he starts thrusting eagerly while holding your head.  His tongue lolls out of the side of his [if hdform is 5 or hdform is 6]short [end if]muzzle as the [hdform] goes to town humping your face like the dog he is.  You start to moan and pant between breaths as you lick and suck on that throbbing, knotted cock.  In your lustful haze, you lick eagerly over the infected doctor's shaft, eager for that hot load of doggy cum.  With his knot swelling behind your lips and his glans pushing down your throat, he ends up locked in your mouth and can only give a few final tugs before his semen starts spurting down into your belly.  You feel spurt after spurt of canine cum filling your tummy as some of the heavy flow splashes back into your mouth, giving you a taste of his musky seed.  Once the doctor's done giving you your [']medicine['], he slips his shrinking knot from your mouth and gets you to finish licking him clean before sending you on your way.  Still in a bit of a daze after all that, you stumble off while enjoying a [one of]red[or]blue[or]green[or]pink[or]yellow[at random] sucker he gave you.";


to say losetohdfemale:
	say "***defeated msg";
	if cocks of player > 0 and a random chance of 2 in 3 succeeds:
		say "***vag";
	otherwise:
		say "***cunnilingus";


to say beatthehornydoc:
	say "     Having enough of the fight, the doctor stumbles back a few feet.  There, he growls and shakes his paw at you.  'Just you wait until you get my bill.  Then I'll have the last laugh!'  And with that, he turns and dashes off into the dark depths of the hospital.";
[	if hdmode is 1:
		say "[beatthehdmale]";
	otherwise if hdmode is 2:
		say "[beatthehdfemale]";	]

to say beatthehdmale:
	say "***";

to say beatthehdfemale:
	say "***";

to say hornydocdesc:
	choose row monster from the table of random critters;
	if a random chance of 1 in 2 succeeds:
		now loot entry is "libido suppressant";
	otherwise:
		now loot entry is "healing booster";
[	now hdmode is a random number between 1 and 2;	]
	now hdmode is 1;
	now hdform is a random number between 0 and 6;
	if hdform is 0, now hdformname is "mutt";
	if hdform is 1, now hdformname is "beagle";
	if hdform is 2, now hdformname is "rottweiler";
	if hdform is 3, now hdformname is "samoyed";
	if hdform is 4, now hdformname is "malamute";
	if hdform is 5, now hdformname is "boxer";
	if hdform is 6, now hdformname is "bulldog";
[	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     A dog in a doctor's coat passes by you in the hall, barely looking up from his chart.  He looks you over briefly, gives you a quick sniff.  'The healthcare plan you've selected will not allow you to see a doctor here.  You should consider not using banning so much and get a new provider.'  And with that cryptic comment, the canine continues on his way.  It seems they won't have any interest in you for some reason.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now hdmode is 0;
	otherwise if guy is banned:
		now hdmode is 2;
	otherwise if girl is banned:
		now hdmode is 1;
	otherwise if guy is warded and girl is warded:
		now hdmode is a random number between 1 and 2;
	otherwise if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option] 
		if guy is warded and a random chance of 1 in 3 succeeds:
			now hdmode is 2;
		otherwise if girl is warded and a random chance of 1 in 3 succeeds:
			now hdmode is 1;
	otherwise if ishunting is false:
		if guy is warded:
			now hdmode is 2;
		otherwise if girl is warded:
			now hdmode is 1;		]
	if hdmode is 1:				[male]
		say "     You find yourself confronted by one of the denizens of the hospital, a canine doctor.  Wearing a doctor's coat, stethoscope and little else, this male [hdformname] is of normal human stature, though adjusted somewhat [if hdform is 0]by his canine nature[otherwise]to suit his breed[end if].  With his coat hanging open, his [if hdform is 0]scruffy[otherwise if hdform is 1]brown- and black-patched white[otherwise if hdform is 2]black[otherwise if hdform is 3]white[otherwise if hdform is 4]thick black and white[otherwise if hdform is 5]brown[otherwise if hdform is 6]tan[end if] fur can plainly be seen covering his whole body.  This also gives you a clear view of his plump sheath and the pointed tip of the canine cock poking from it.  Upon noticing you, his ears perk up and his [if hdform is 2 or hdform is 6]short [otherwise if hdform is 3 or hdform is 4]fluffy [end if]tail wags and he moves to approach you.  '[one of]Ooo!  A patient.  Let's start the examination[or]Oh my!  You seem quite ill.  Come over here so I can give you some proper treatment[or]Oh, for a case like yours, I'm going to have to prescribe a hot meat injection[or]I've got the cure for what ails you right here[or]Here for your full physical exam?  Now be a good patient and bend over.  I promise I'll even warm up my hands first[or]Hmm... this looks serious.  Please bend over so I can check out that [if cunts of player > 0]hot pussy[otherwise]tight ass[end if] of yours[or]There you are.  Bend over, cause I've got your 50 cc's of puppy batter right here[or]I've got your medicine right here.  Now open up and say 'Ahhhh'[at random],' he barks excitedly.  You can see the dog's penis rising from his exposed sheath as he talks to you.  Clearly he's interested in more than your typical doctor-patient relationship.";
		now altcombat entry is "hump";
	otherwise if hdmode is 2:		[female]
		say "     You find yourself confronted by one of the denizens of the hospital, a canine doctor.  Wearing a doctor's coat, stethoscope and little else, this female [hdformname] is of normal human stature, though adjusted somewhat [if hdform is 0]by her canine nature[otherwise]to suit her breed[end if].  With her coat hanging open, her [if hdform is 0]scruffy[otherwise if hdform is 1]brown- and black-patched white[otherwise if hdform is 2]black[otherwise if hdform is 3]white[otherwise if hdform is 4]thick black and white[otherwise if hdform is 5]brown[otherwise if hdform is 6]tan[end if] fur can plainly be seen covering her whole body.  This also gives you a clear view of her shapely breasts and the damp muff between her legs.  Upon noticing you, her ears perk up and her [if hdform is 2 or hdform is 6]short [otherwise if hdform is 3 or hdform is 4]fluffy [end if]tail wags and she moves to approach you.  '[one of]Ooo!  A patient.  Let's start the examination[or]Oh my!  You seem quite ill.  Come over here so I can give you some proper treatment[or][if cocks of player > 0]Oh, for a case of swelling like that, I'm going to have to prescribe a hot, juicy fucking[otherwise if cunts of player > 0]Oh, you seem to be seeping juices badly.  Come here and I'll kiss it to make it all better[otherwise]Oh my!  It seems you've misplaced your genitals.  Don't worry, you can lick mine until you're all better[end if][or]I've got the cure for what ails you right here[or]Here for your full physical exam?  Now be a good patient and bend over.  I promise I'll even warm up my hands first[or]I've got your medicine right here[at random],' she barks excitedly.  You can see the dog's pussy start to drip with her juices as she talks to you.  Clearly she's interested in more than your typical doctor-patient relationship.";
		now altcombat entry is "default";
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if hdmode is 1:
		now sex entry is "Female";
	otherwise:
		now sex entry is "Male";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Horny Doctor";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The [one of]dog[or]canine doctor[or]doggy doctor[or]infected doctor[or]horny hound[or][hdformname][at random] 
[one of]presses [if hdmode is 1]his[otherwise]her[end if] stethoscope against your groin.  BRrr!  That's cold![or]gropes you lustfully while grinding [if hdmode is 1]his[otherwise]her[end if] crotch against your leg[or]strikes your hard on the temple, making your ear ring.[or]seems to know just where to grab and grope you to turn you on.[or]gives you a hard punch to the solar plexus.[or]manages to slip behind you and grab your ass with one paw while fondling you with the other.[at random]";
	now defeated entry is "[beatthehornydoc]";				[ Text when monster loses.  Change 'hornydoc' as above. ]
	now victory entry is "[losetohornydoc]";					[ Text when monster wins.  Change 'hornydoc' as above. ]
	now desc entry is "[hornydocdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "quite canine, with a muzzle and doggy ears.  Resembling a samoyed, your head is covered in fluffy white fur contrasted by dark eyes, lips and nose";
	now body entry is "that of a dog person, with paw-like hands that long to grab and grope others";
	now skin entry is "floofy white fur covering your";
	now tail entry is "Your got a poofy white tail that naturally curls upwards";
	now cock entry is "[one of]canine[or]doggy[or]knotted[at random]";
	now face change entry is "your skull bones crackle and snap as they stretch and shift.  Your colour vision fades somewhat, but smells become much more vibrant.  You just want to bury your new doggy muzzle in someone's crotch or sniff their ass";
	now body change entry is "your joints all tighten up in advance of your body reshaping itself.  You become rather dog-like, with paws for hands and feet.  You feel a growing eagerness to [']play doctor['] with someone and perform a rather naughty exam of their privates";
	now skin change entry is "you gain a fluffy coat of white fur";
	now ass change entry is "a floofy white tail forms, curling upwards and wagging happily";
	now cock change entry is "it becomes a throbbing dog dick, complete with knot.  Looking at it, you find yourself eager to bury your bone in a tight, hot hole";
	now str entry is 14;			[ These are now the creature's stats... ]
	now dex entry is 18;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 17;
	now cha entry is 14;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 85;			[ The monster's starting hit points. ]
	now lev entry is 10;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 10;			[ Monster's average damage when attacking. ]
	now area entry is "Hospital";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 3;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 7;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "libido suppressant";		[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 18;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]altered[or]animalistic[at random]";
	now type entry is "[one of]canine[or]samoyed[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump";		[ Row used to designate any special combat features, "default" for standard combat. ]

[
Section 3 - Endings

when play ends:
	if bodyname of player is "Horny Doctor":
		if humanity of player is less than 10:
			say "     You succumb to your hornydoc infection.";
		otherwise:
			say "     You survive, but were infected by the hornydoc.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Horny Doctor For FS ends here.