Version 2 of Naughty Nurse by Stripes begins here.
[Version 2.2 - Special ending]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Naughty Nurse Vixen creature to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

vixgender is a number that varies.

when play begins:
	add { "Vixen Nurse" } to infections of girl;
	add { "Vixen Nurse" } to infections of furry;

to say losetovixennurse:
	if vixgender is 0:
		If cocks of player > 0:
			say "     The vixen nurse pushes you down as you stop struggling.  Climbing over you, her paws go to your crotch and grab your cock.  With an adept paw, she gets you fully hard before moving to line it up with her wet slit.  She sinks herself slowly down over your cock and moans.  She kneads her paws over your chest as her bubble butt bounces in your lap.  While she rides you, her silvery body and her white and black outfit become your entire, monochrome word of ecstacy.  That one spot of red on her cap is the only colour in your vision until finally you climax.  Your vision is then awash in a blur of colours as you pump your hot seed into her before finally sagging back onto the floor with a sigh of pleasure.  She smiles down at her happy patient and leaves you there.";
		otherwise:
			say "     The vixen nurse pushes you down at you stop struggling.  She takes you in her arms and holds you close as she unbuttons the front of her shirt enough to bare one of her breasts.  'Time to take your medicine, my dear,' she purrrs softly.  You consider resisting only briefly, for once your lips touch that nipple and taste the traces of her warm milk on it, you start nursing right away.  As you drink down her milk, she slips a paw between your legs to play with your pussy.  She teases your wet folds, then slips a finger into you.  She works it in and out quickly until you finally have a very fulfilling orgasm that makes your head spin and colours dance in your eyes.  As you try to recover from this, she lowers you to the floor and leaves her patient there, still licking your lips.";
	if vixgender is 1:
		if cunts of player > 0:
			say "     The vixen nurse pushes you down to the ground, getting you onto all fours.  The herm vixen is on you moments later, driving her large cock into your pussy, making you moan.  She nips at your ears and growls playfully as she pumps her hard shaft into you again and again.  You find yourself growing increasingly aroused and as soon pushing back into her thrusts.  She gives you a few slaps on the rear with her clipboard, then drives her big cock deep inside you, unleashing her hot seed.";
			say "     [impregchance]";
			say "     Having nicely seeded your womb, she pulls out and wipes her shaft clean on your rear end before getting up and leaving you there, slowly leaking out her plentiful cum onto the floor.";
		if cocks of player > 0:
			say "     The vixen nurse pushes you down to the ground, getting you onto all fours.  The herm vixen is on you moments later, driving her large cock into your ass, making you groan in pain.  She nips at your ears and growls playfully as she pumps her hard shaft into you again and again.  You find yourself growing increasingly aroused and start to submit to her as it becomes more and more pleasurable.  You are soon pushing back into her thrusts.  She gives you a few slaps on the rear with her clipboard, then drives her big cock deep inside you, unleashing her hot seed.";
			say "     Having nicely seeded your ass, she pulls out and wipes her shaft clean on your rear end before getting up and leaving you there, slowly leaking out her plentiful cum onto the floor.";
	[value reset]
	choose row monster from the table of random critters;
	now lev entry is 4;

to say beatthevixennurse:
	if libido of player > 33:
		say "     Your last blow to the nurse sends her staggering back.  She waves her clipboard intently at you.  'Oh, you are in big tr... eep!' she starts to say before you reach out and grab her by the wrist, pulling the weakened vixen into your arms.  She moans softly, trying half-heartedly to struggle, but you've taken the fight out of her.  Do you want to have a little fun with the naughty nurse?";
		if the player consents:
			if cocks of player > 0:
				say "     Not wanting to waste such a fine prize, you shove her forward and force her to bend over one of the patient's beds.  You run a hand over her skirted bottom, giving it a squeeze before pulling it up to reveal her tight rump[if vixgender is 1], her dripping puss and her ballsac[otherwise] and her dripping puss[end if] to you.  Keeping one on her back to keep her in place, you slide the other over her rear, then between her legs to tease her wet slit.  She moans and wiggles her rear invitingly.";
				say "     Being the offer you were waiting for, you get your hard cock lined up with her slit and sink it slowly into her.  Her moaning and yipping is deliciously cute as you start pounding away at her.  She pushes her hips back, eager now for you to take her.  You reach around to fondle her breasts, teasing her nipples.  The naughty nurse makes for a very enjoyable fuck, tight and wet around your cock.";
				say "     After giving her the good dicking she so richly deserves, you push into her one last time and unleash your hot seed into her quivering puss.  Her orgasm makes her pussy shudder around you for a long time, extending your own orgasm to give her as much as you can give.  Once you're finally done, you pull out, wipe your cock with her bushy tail and leave her skirt up to show anyone who comes by what you did to the passed out silver vixen.";
				decrease libido of player by 5;
			otherwise:
				say "     Not wanting to waste such a fine prize, you shove her forward and force her to bend over one of the patient's beds.  You run a hand over her skirted bottom, giving it a squeeze before pulling it up to reveal her tight rump[if vixgender is 1], her dripping puss and her ballsac[otherwise] and her dripping puss[end if] to you.  Keeping one on her back to keep her in place, you slide the other over her rear, then between her legs to tease her wet slit.  She moans and wiggles her rear invitingly.";
				say "     You push a pair of fingers into her slit, making her release a deliciously cute set of moans and yips.  You pump those fingers into her again and again and she starts pushing back to meet them[if vixgender is 1].  You place your other hand on her cock, stroking over the herm's shaft, making her drip on the floor[end if].  Taking your time, you move your fingers over her sensitive flesh, teasing and caressing her.";
				say "     You keep it up for quite some time, getting her good and riled up until finally she is driven over the edge.  Her pussy clamps down around your fingers and her inner walls quiver as her juices soak your hand and her thighs[if vixgender is 1].  Her cock throbs in your hand, unleashing its load onto the floor as you stroke her off[otherwise].  Your free hand is meanwhile rubbing her tail between your legs, teasing your female slit until cum as well and soak the soft fur in your juices[end if].  Quite pleased with yourself when you finish, you leave her passed out with her skirt up, showing any who pass what a state you've left the silver vixen in.";
				decrease libido of player by 5;
		otherwise:
			say "     Not quite in the mood romp with the nurse, you decide you still can't let her go so easily.  Shoving her forward, you force her to bend over one of the patient's beds and hold her there.  You flip up the back of her dress, baring her tight rump[if vixgender is 1], her dripping puss and her ballsac[otherwise] and her dripping puss[end if] to you.  Taking her clipboard in hand, you start to spank her rump, making her moan.  A good dozen slaps later and her hips quiver as she cums, soaking her thighs[if vixgender is 1] and spraying onto the floor[end if].  With a smile, you drop the dress back down and walk away.  You find yourself looking forward to the next opportunity to play with one of these frisky foxes.";
			increase libido of player by a random number between 4 and 10;
	otherwise:
		say "     Your last blow to the nurse sends her staggering back.  She waves her clipboard intently at you.  'Oh, you are in big trouble now.  I'm going to have to send the orderlies down here to deal with you.'  With that, she turns and runs away.";
	[value reset]
	choose row monster from the table of random critters;
	now lev entry is 4;


to say vixennursedesc:
	choose row monster from the table of random critters;
	let debit be 0;
	now vixgender is 0;
	if hermaphrodite is banned:			[always female if herm banned]
		now vixgender is 0;
	otherwise if hospquest > 5:
		if a random chance of 2 in 5 succeeds:
			now vixgender is 1;		[now a herm]
	if vixgender is 0:
		say "     You find yourself face to face with a sensually curved vixen in a tight, little nurse's outfit.  She has a short cut, white apron with a black top under it.  There's even a traditional, white nurse's cap with a red cross on it on the vixen's head.  She has lustrous, gray fur, indicating that her infection originated from a silver fox.  Glancing down those long, slender legs you see they end in digitigrade paws.  To her ample chest, she holds a large clipboard.  You can still see the bumps that the perky nipples on her four breasts make in the fabric, unblocked by the clipboard.  She looks you over quickly and tut-tuts, saying '[one of]It looks like one patient[']s gotten out of bed[or]Bend over, sweety.  It[']s time to take your temperature[or]You look like you need a little TLC[or]Please return to the waiting area.  The doctor will see you shortly.  Until then, let me take care of you[at random].'  She raises her clipboard, seemingly intent on clubbing you with it.";
		if hardmode is true and level of player > 4, let debit be level of player - 4;
		now hp entry is 36 + ( debit * 4 );
		now monsterhp is 36 + ( debit * 4 );
		now lev entry is 4 + debit;
		now wdam entry is 5 + ( debit / 3 );
		now dex entry is 14 + ( lev entry / 5 );
	otherwise:
		say "     You find yourself face to face with one of those sensually curved vixen in the tight, little nurse's outfit.  She has lustrous, gray fur, indicating that her infection originated from a silver fox.  She has a traditional, white nurse's cap with a red cross on it on the vixen's head.  She is wearing a short cut, white apron with a black top under it.";
		say "     And there your eyes stop, finding that something is amiss with this naughty nurse.  Her tight dress has a rather sizeable bulge in it and it is growing larger as you watch.  It's a trap!  Grinning, she rubs the firm lump and says, '[one of]It looks like one patient[']s gotten out of bed.  I'll tuck you in good and tight[or]Bend over, sweety.  Mmm... I want to take your temperature[or]You look like you need a dose of my medicine[or]Let me give you a thorough examination, my pretty patient[at random].'  She rubs her four breasts and moans lustfully before charging at you.";
		if hardmode is true and level of player > 6, let debit be level of player - 6;
		now hp entry is 72 + ( debit * 4 );
		now monsterhp is 72 + ( debit * 4 );
		if hardmode is true and debit > 0:
			now lev entry is 6 + debit;
		otherwise:
			now lev entry is 7;
		now wdam entry is 8 + ( debit / 3 );
		now dex entry is 18 + ( ( lev entry - 7 ) / 5 );

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Vixen Nurse"; [Name of your new Monster]
   now attack entry is "[one of]The naughty nurse gives you a hard slap![or]The vixen bonks you on the head with the clipboard she's carrying![or]The silver vixen gives you a scratch with her claws![or]The vixen nurse stomps her footpaw down onto the top of your foot![or]Lunging at you, the nurse tries to smother you in her ample cleavage![or]The vixen nurse knees you in the side![or]The silver-furred nurse strikes you firmly at the temple, making your ear ring![or]The nurse moves in quick and grinds her body against you as she gives you a steaming kiss![or]The vixen swings wildly, managing to bop you on the nose with her clipboard![or]She sidesteps you as she grabs your upper arm in one paw and spanks you repeatedly with her clipboard![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthevixennurse]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetovixennurse]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[vixennursedesc]"; [ Description of the creature when you encounter it.]
   now face entry is "a vulpine head with a long muzzle and teeth.  You have steely-grey eyes and silver fur covers your face"; [ Face description, format as the text "Your face is (your text)."]
   now body entry is "seductively curved, with a tight, bubble butt.  Your hands have hard, black claws at their fingertips and your feet are digitigrade paws now"; [ Body Description, format as the text "Your body is (your text)."]
   now skin entry is "smooth, silver-coloured fur over your"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "From the base of your spine, you have a silver fox's luxurious tail."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "steely-gray vulpine"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it shifts and stretches, gaining a long, slender muzzle which ends in a black nose and whiskers.  Silvery fur covers his muzzle as your ears move upwards and grow into pointed, vulpine ears"; [ face change text. format as "Your face feels funny as (your text)." ]
   now body change entry is "it becomes a slender and seductively curved one.  You can feel your butt shift as it becomes a taut bubble butt, ripe for mounting.  Your hands become paw-like, with little black claws at the tips of your fingers.  You can hear cracks and pops as your ankle and foot changes, becoming digitigrade paws"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "it grows a soft, fluffy layer of silvery fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "a floofy fox tail extends from your spine.  It is covered in soft, silvery fur"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it takes on a steely-gray colour.  Changing shape, it becomes pointed at the glans with a knot at its base"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 12;
   now dex entry is 14;
   now sta entry is 10;                    
   now per entry is 12;
   now int entry is 15;
   now cha entry is 18;
   now sex entry is "Female";     [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now hp entry is 36;            [ How many HP has the monster got? ]
   now lev entry is 4;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 5;            [Amount of Damage monster Does when attacking.]
   now area entry is "Hospital";    [ Location of monster, in this case the City Hospital]
   now cocks entry is 0;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 0;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 0;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 4;            [ Number of Breasts infection will give you. ]
   now breast size entry is 4;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 5;        [ Width of female sex  infection will try and give you ]
   now libido entry is 66;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "healing booster";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 20;        [ Chance of loot dropping 0-100 ]


Table of Game Objects (continued)
name	desc	weight	object
"healing booster"	"A small syringe filled with a clear, blue fluid."	1	healing booster

healing booster is a grab object. It is a part of the player. It is fast. It is not temporary.

instead of sniffing the healing booster:
	say "The healing booster smells of chemicals and medicine.";

when play ends:
	if bodyname of player is "Vixen Nurse":
		if humanity of player is less than 10:
			say "     Falling to the instincts and reprogramming of the infection, you drift off into the city and eventual come to the city hospital.  There you are taken in by the silvery vixen nurses of the hospital staff, feeling the urge to work alongside them.  They welcome you happily, and lustfully, as do the other denizens of the large medical facility.";
			if hospquest < 2:
				if "Sterile" is not listed in feats of player and cunts of player > 0:
					say "     After a particularly energetic romp with one of the jaguar orderlies, you become pregnant and are transferred to the maternity ward.  There you tend to the hospital's cubs, adding your own litter to them and feeding the cute cubs from your bosom.";
				otherwise if cocks of player > 0:
					say "     Being a rare vulpine in their midst with a cock, you are quite popular with the female vixens and mate with many of them, adding many more cubs to the maternity ward to grow and add to the hospital's population.";
				otherwise:
					say "     Between the strange, medical duties you and the others perform, you enjoy many an evening with the muscled jaguars that populate the hospital, never tiring of the feel of their cocks pounding into your hyper-sexualized body.";
			otherwise if hospquest < 13:
				say "     Drawn by your instincts as a member of the hospital staff, you report back to Dr Mouse.  While you only vaguely remember him, he greets you with a smile and happily adds you to his hospital's staff.  He puts you in charge of one of his exploratory teams, letting you order around the jaguar orderlies as they capture new [']volunteers['] for his experiments.";
				if cunts of player > 0:
					say "     On a trip to the beach, you are ambushed by a crew of pirate sharks after the helicopter.  Successfully boarding the craft, they disable the pirate and manage to deal with the orderlies only by sheer numbers.  They are all dumped overboard into the sea while you are kept as booty.  The sharks celebrate that evening with drink, song and sex, all eager to take a turn with you.  Being treated by the good doctor for your duties, you resist physically transforming to become another shark, but your mind unravels again.  You are remade into a vixen pirate, lover to this band of air pirates.";
				otherwise:
					say "     During a mission to an old hotel on the outskirts of the red light district, your team is assaulted by a herd of powerful equines.  The ferocious orderlies manage to hold their own, but you are dragged off.  The horses spend many weeks trying to turn you into another equine slave for their brothel, but the treatment given to you by the mouse doctor holds enough to keep your body intact.  But your mind does not fare as well and succumbs to the constant training they give you, turning you into a slutty, silver fox.  You act as their medical staff, helping them with their conversions when needed and the rare injuries that are too much for the nanites.  When not performing these infrequent duties, you are there to provide a change of pace to anyone looking for something a little different from the otherwise equine whorehouse.";
			otherwise if hospquest is 13 and hp of doctor mouse is 1:
				say "     Driven by your new instincts as a member of the hospital staff, you report back to Dr Mouse.  While you only vaguely remember the experiences that lead you to know him, he somehow recognizes you readily and is cruelly pleased with your fate.  Fully subservient to him now, he takes delight in ordering you around and using you for any twisted experiment he wants.  Your body is changed over and over again in countless ways over the years and you are often used to mate with any new test subjects he captures for his amusement";
				if "Sterile" is not listed in feats of player and cunts of player > 0:
					say ".  You birth many bizarre, hybrid creatures from these matings";
				say ".  You do all this for him gladly, though never understanding why he is so mean to you, his loyal follower";
				if cunts of player > 0:
					say ".  It hurts you the most any time he takes you as a lover to slake his lust upon you.  He is particularly cruel at these times, but you want it so badly from him and love it so much when your master fills you with his seed";
				say ".";
			otherwise if hospquest is 13 and hp of doctor mouse is 2:
				say "     The hospital is in disarray when you arrive, more like a stirred up hornets nest than the orderly bee hive you feel it should be.  The various factions strike out at each other at times, but cooperate at others.  The maternity ward still runs, but the cafeteria is often host to in-fighting over mates.";
				if intelligence of player >= 20 and charisma of player >= 15 and "Expert Medic" is listed in feats of player:
					say "     It is only with the coming of the military that control is restored.  The united threat of military action unifies the factions, at least temporarily.  And you would see that order remain and start taking charge of the groups.  Feeling the need to have someone in charge, the other groups begin to respond to your commands, beginning to rely on you to fill that void.  Your familiarity and experience in the city helps counter the military incursion.  You use your knowledge of the safe paths through the city and its havens to hide to command the medical staff into position over the radio.  Using medical and anatomical terminology for your code, the staff understand it intrinsically and can act upon it instantly while the military codebreakers labour over it.  The strikes are made with surgical precision, excising key elements from the military supply and support chain within the city until the point that they're driven back from the hospital.  With the hospital left alone and a new collection of test subjects, you leave the remaining military forces largely alone.";
					say "     Taking over as the head of the hospital from that point comes naturally.  The groups fall into line and order is restored to you hospital.  While lacking the extensive medical training and experience Dr. Mouse had, you learn quickly by studying the numerous medical books and journals throughout the hospital.  You even start up some experiments of your own, enjoying converting the captured soldiers into more staff or using them for perverse, sexual cross-breeding with sample creatures.  While perhaps not as ambitious as the mouse's experiments, you also have no urge to leave the hospital like he did, content with your orderly medical center and your collection of cross-breed test subjects to satisfy your myriad sexual hungers.";
					increase score by 50;
				otherwise:
					say "     It is only with the coming of the military that control is restored.  The united threat of military action unites the factions, at least temporarily.  And you would see that unity remain and enact a plan that percolates in the back of your mind.  Feeling the need to have someone in charge, you break from the defence and slip past the military lines.  You find a small veterinarian hospital and spot some activity inside.  Armed with a syringe filled with tranquilizers and a need to to what must be done for the good of the hospital, you slip in and attack the panther taur vet.  Unprepared for the injection, she moved in close, letting you knock her out with it.";
					say "     You relay your success over the radio to the hospital, but it takes them some time to get a team past the military and out to you.  Thankfully the veterinary clinic still has supplies and you're able to keep her under until you can get her back to the hospital.  One of the female jaguars is allowed to welcome the panther herm to the hospital, bonding her into the staff as your new leader.  The taur doctor fills her position well, maintaining the unity of the hospital staff after the military is repulsed.  The hospital's medical work slacks off, but several of the staff are sent out to capture many animal creatures from the city.  These are converted into more staff for an expanding new wing for sexual veterinary medicine.";
			otherwise:
				say "     Drawn by your instincts as a member of the hospital staff, you report back to Dr Mouse.  While you only vaguely remember him, he greets you with a smile and happily adds you to his hospital's staff.  He puts you in charge of monitoring his test subjects with a pair of jaguars to act as your muscle.  Obediently, you follow the mad doctor's orders, watching his [']volunteers['] and often using them as playtoys when he's done with them before sending them downstairs to the hospital proper to be assimilated into the staff[if susan is in hidden lab].  Susan, as his assistant, is there with him to help you and reward you with lustful sex[end if].";
				say "     When the time comes to leave the city, Dr Mouse takes you[if susan is in hidden lab], Susan[end if] and several other of the staff to escape through the service tunnels under the hospital.  Meanwhile the main body of the staff hold the hospital against the army with the helicopter running as an added diversion.  You all escape out of the city and Dr Mouse sets up a new lab in secret.  He begins selling off the fruits of his research to foreign powers and the growing factions of transformed creatures that form.  He has you continue to monitor his test subjects for his ongoing experiments";
				if cunts of player > 0:
					say ".  You also are honoured with being the little mouse's personal sextoy when he needs to unwind after a particularly exciting procedure";
					if "Sterile" is not listed in feats of player:
						say ".  You are very proud when your belly grows full, swelling with his young";
				say ".";
		otherwise:
			if hospquest > 13:
				say "     When you are rescued from the infected city by the military, they take you to a base they've set up for the testing and processing of the infected.  While you are being examined, you have to resist your urges to play with doctors like the naughty nurse you are.  You can't afford to draw too much attention to yourself.  Using your innate medical knowledge and your sensual body, you avoid receiving the treatment to render you non-infectious and fudge the results.  When cleared, you travel to a new city and insinuate yourself into a small clinic, infecting the staff there and setting up a nice little den of silver foxes to be your mates.";
			otherwise:
				say "     When you are rescued from the infected city by the military, they take you to a base they've set up for testing and processing of the infected.  While you are being examined, you chat up the doctors.  At first, they are clinical and unresponsive to your playful antics, but eventually begin to warm up to you as you prove clever and knowledgeable about their medical examinations.  At your behest, one of them gets a nurse's outfit for you and join their staff.  Receiving the treatment to render you non-infectious, they also start giving in to your playful banter and sneaking off with you for a little fun to help relieve their stress after a particularly alluring patient gets them riled up.";


[ Edit this to have the correct Name as well]
Naughty Nurse ends here.