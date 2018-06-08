Version 8 of Parasitic Plant by Guest Writers begins here.
[Version 8.5 - Additional player loss scenes - Stripes]
[- Originally Authored By: xeylef -]

"Adds a Parasitic Plant creature to Flexible Survival's Wandering Monsters table, with multiple vaginas!"

Section 1 - Monster Responses


didsubmit is a number that varies.
plantdefeat is a number that varies.
plantwin is a number that varies.

to say plantwin:
	if inasituation is false:
		say "[PlantWinRegular]";
	else: [event]
		say ""; [dealt with at the event source]

to say PlantWinRegular:
	if plantdefeat is 0: [ first time losing to a plant ]
		if didsubmit is 1: [submited check]
			if cunts of player > 0:
				say "     The plant seems to sense your willingness to submit to it and lightly pulls on the vine inside your pussy like a leash, inviting you to walk into the dense bush of vines. Your legs are pulled apart and a second cock headed vine pushes against your ass, soon working its way inside your willing body where its tip expands just as the first had, locking itself inside you. Even if you wanted to get away, the size of the cock vines makes it impossible to remove them. A final vine lifts itself to your mouth as it leaks a musky smelling liquid which it presses to your mouth, allowing you to suckle on it to your heart's content. There is no mistaking that the liquid is cum. The hot, musky fluid seems to be absorbed into your body as you drink it. The plant fills you with the stuff, making you addicted to the cum of all creatures, creating a permanent physical need to drink cum that will stay with you forever.";
				say "     After some time you awaken from your daze due to a sudden pain from your pussy! Looking down, you see a large bulge being forced into you, stretching your pussy out until the seed finally comes to a rest deep in your womb. Your entire body seems to flush with heat as the seed takes root inside of you. The plant lets you go, the vines shrinking in size and finally slipping free from your tender holes. All the cum the plant has fed you seems to have eased your hunger and thirst as well. ";
			else:
				say "     The plant seems to sense your willingness to submit to it and lightly pulls on the vine inside your ass like a leash, inviting you to walk into the dense bush of vines. Even if you wanted to get away the size of the cock vine makes it impossible to remove. A final vine lifts itself to your mouth as it leaks a musky smelling liquid which it presses to your mouth, allowing you to suckle on it to your heart's content. There is no mistaking that the liquid is cum. The hot, musky fluid seems to be absorbed into your body as you drink it. The plant fills you with the stuff, making you addicted to the cum of all creatures, creating a permanent physical need to drink cum that will stay with you forever.";
				say "     After some time you awaken from your daze due to a sudden pain from your ass! Looking down, you see a large bulge forcing its way into your stretched ass as the seed comes to rest deep in your bowels. Your entire body seems to flush with heat as the seed takes root inside of you. The plant lets you go, the vine shrinking in size and finally slipping free from your tender ass. All the cum the plant has fed you seems to have eased your hunger and thirst as well.";
		else:[fought and lost]
			if cunts of player > 0:
				say "     The plant senses you have lost the will to fight and have no choice but to accept your fate. It pulls on the vine inside your pussy like a leash, dragging you into the dense bush of vines. Your legs are forcefully pulled apart and a second cock headed vine thrusts into your ass, working its way deep inside your defeated body where its tip expands painfully large just as the first had, locking itself inside you. Even if you could get away from the bush, the size of the cock vines makes it impossible to remove them. A final vine lifts itself to your mouth as it leaks a foul, musky smelling liquid which it forces into your mouth and then down your throat! There is no mistaking that the liquid is cum. The hot, musky fluid seems to be absorbed into your body as you are forced to drink it. The plant fills you with the stuff, making you addicted to the cum of all creatures, creating a permanent physical need to drink cum that will stay with you forever.";
				say "     After some time you awaken from your daze due to a sudden pain in your pussy! Looking down, you see a large bulge being forced into you, stretching your pussy out until the seed finally comes to a rest deep in your womb. Your entire body seems to flush with heat as the seed takes root inside of you. The plant lets you go, the vines shrink some in size but are left inside you. It takes some pulling, but you are able to dislodge them from your tender holes. All the cum the plant has fed you seems to have eased your hunger and thirst some.";
			else:
				say "     The plant senses you have lost the will to fight and have no choice but to accept your fate. It pulls on the vine inside your ass like a leash, dragging you into the dense bush of vines. Even if you could get away from the bush, the size of the cock vine makes it impossible to remove. Your legs are forcefully pulled apart and a second cock headed vine thrusts into your mouth as it leaks a foul, musky smelling liquid, which it forces into your mouth and then down your throat! There is no mistaking that the liquid is cum. The hot, musky fluid seems to be absorbed into your body as you are forced to drink it. The plant fills you with the stuff, making you addicted to the cum of all creatures, creating a permanent physical need to drink cum that will stay with you forever.";
				say "     After some time, you awaken from your daze due to a sudden pain in your ass! Looking down, you see a large bulge being forced into you, stretching your ass out until the seed finally comes to a rest deep in your bowels. Your entire body seems to flush with heat as the seed takes root inside of you. The plant lets you go, the vine shrinks some in size but is left inside you. It takes some pulling, but you are able to dislodge it from your tender hole. All the cum the plant has fed you seems to have eased your hunger and thirst some.";
	else: [fought them before and lost, seeded already. plant won fight win text here]
		if cunts of player > 0: [has cunt]
			if the remainder after dividing plantdefeat by 3 is 1:
				say "     The seed rooted deep in your body emits warm pleasurable sensations as its roots spread through you, absorbing any cum you have collected in your travels to help it grow faster. The vine spreads through the ground, sending roots in every direction before growing multiple vines up the soil all around you. Hundreds of cock ended vines grow out of the ground all around you, curling and twisting around your [bodyname of player] body! A cock vine is forced into your ass and mouth as they explore your body fully, while the bush of cock vines grows up around you. They thrust slowly into your ass and pussy, leaking that same addiction inducing cum, changing your body to better collect cum from other creatures. Unable to keep up with the plant's unending assault of pleasure, you begin to fade away due to exhaustion.";
				say "     You awaken some time later only to find yourself several feet from the bush, leaking cum out of every orifice. Your pussy is still stretched around the vine that grew from inside of you, and to your horror, you discover that you can feel with the vine as if it were actually a part of your body! There is a slight twinge of pain from the vine as it severs itself about a foot from your pussy, followed by a pulling sensation drawing the foot of vine back into your cunt! It seems to be literally living inside of you, ready to force your cunt open and extend itself whenever it wants to reproduce.";
				say "     All the cum you were forced to drink leaves you less thirsty and less hungry, but also changes you, reinforcing that permanent addiction to drinking cum as well as improving your body so it can obtain more.";
			else if the remainder after dividing plantdefeat by 3 is 2:
				say "     The seed rooted deep inside your [bodydesc of player] body sends warm, pleasurable sensations through you as soaks up any cum you have collected in your travels to help it grow faster. The tendrils spread through the ground around you, rooting you down firmly as the plant germinating inside you prepares to reward you for being its warm home and cum collector. Numerous cock ended vines grow out from the ground all around you, wrapping around you and rubbing against you[if cunts of player > 1]. The main tendrils emerging from your cunts pulse and stroke in and out, making you feel as if you're getting thoroughly fucked by them[else]. The main tendril emerging from your cunt pulses and strokes in and out, making you feel as if you're getting thoroughly fucked by it[end if]. Other vines wrap around your hips and spread your legs wide, leaving your ass open for a thick cock vine to push into your anus. You cry out in a mix of surprise and pleasure at this forceful intrusion, but there is little discomfort as the plant's secretions make it all feel wonderfully erotic. Your moans and panting is muffled when another vine finds its way into your mouth. They thrust into you steadily while the other vines rub against your body and leak their cum-like secretions over your [bodytype of player] body. This addictive cum spreads over you and is pumped into you, changing your body to better collect cum from other creatures. Unable to keep up with the plant's unending assault of pleasure, you begin to fade away due to exhaustion.";
				say "     You awaken some time later only to find yourself several feet from the bush, leaking cum out of every orifice. Your pussy is still stretched around the vine that grew from inside of you, and to your horror, you discover that you can feel with the vine as if it were actually a part of your body! There is a slight twinge of pain from the vine as it severs itself about a foot from your pussy, followed by a pulling sensation drawing the foot of vine back into your cunt! It seems to be literally living inside of you, ready to force your cunt open and extend itself whenever it wants to reproduce.";
				say "     All the cum you were forced to drink leaves you less thirsty and less hungry, but also changes you, reinforcing that permanent addiction to drinking cum as well as improving your body so it can obtain more.";
			else:
				say "     Additional vines grow out from the ground as the plant expands its reach. The plant, now firmly rooted in the soil, pulls you deeper into the expanding bush of vines. There you are cradled by a cluster of undulating vines while your legs are spread apart[if cunts of player > 2]. Now that it's got you held, more slick vines grow forth from your extra pussies with a loud moan from you[else if cunts of player is 2]. Now that it's got you held, another slick vine grow forth from your extra pussy with a loud moan from you[end if]. Another probing vine finds its way to your ass and pushes into it before expanding and locking itself inside you. Even if you wanted to get away, the size of the cock vines makes it impossible to remove them.";
				say "     With you restrained and moaning from your body's uncontrolled reaction to the vine's strangely pleasurable assault, your mouth is open when a vine moves into it to claim it as well. The phallic tendril pushes into your mouth and down your throat, leaking slick goo in the wake of its passage. You lick and suckle at it, gripping some of cock-like vines around you in your hands and stroking them. You are soon rewarded with blasts of the plant's musky cum, soaking you inside and out. As the hot, sticky goo is absorbed into your body, changing you further to make you a better cum-collection host. Eventually, you become exhausted from the continual fucking and fade into unconsciousness.";
				say "     You awaken some time later only to find yourself several feet from the new bush, leaking cum out of every orifice. Your [if cunts of player > 1]pussies are[else]pussy is[end if] still stretched around the vine that grew from inside of you. Sharing some sensation with the green tendril, you feel a twinge of discomfort as it severs itself about a food from your wet folds and draws itself back into you. After a little squirming around inside you as it repositions itself, it settles down to slumber until it's ready to reproduce again.";
				say "     All the cum you were forced to drink leaves you less thirsty and less hungry, but also changes you, reinforcing that permanent addiction to drinking cum as well as improving your body so it can obtain more.";
		else:[no cunt]
			if the remainder after dividing plantdefeat by 3 is 1:
				say "     The seed rooted deep in your body emits warm pleasureful sensations as its roots spread through you, absorbing any cum you have collected in your travels to help it grow faster. The vine spreads through the ground, sending roots in every direction before growing multiple vines up through the soil all around you. Hundreds of cock ended vines grow out of the ground all around you, curling and twisting around your [bodyname of player] body! A cock vine is forced into your mouth as they explore your body fully, while the bush of cock vines grows up around you. They thrust slowly into your ass, leaking that same addiction inducing cum, changing your body to better collect cum from other creatures. Unable to keep up with the plant's unending assault of pleasure, you begin to fade away due to exhaustion.";
				say "     You awaken some time later only to find yourself several feet from the bush, leaking cum out of every orifice. Your ass is still stretched around the vine that grew from inside of you, and to your horror, you discover that you can feel with the vine as if it were actually a part of your body! There is a slight twinge of pain from the vine as it severs itself about a foot from your ass, followed by a pulling sensation drawing the foot of vine back into your bowels! It seems to be literally living inside of you, ready to force your ass open and extend itself whenever it wants to reproduce.";
				say "     All the cum you were forced to drink leaves you less thirsty and less hungry, but also changes you, reinforcing that permanent addiction to drinking cum as well as improving your body so it can obtain more.";
			else if the remainder after dividing plantdefeat by 3 is 2:
				say "     The seed rooted deep inside your [bodydesc of player] body sends warm, pleasurable sensations through you as soaks up any cum you have collected in your travels to help it grow faster. The tendrils spread through the ground around you, rooting you down firmly as the plant germinating inside you prepares to reward you for being its warm home and cum collector. Numerous cock ended vines grow out from the ground all around you, wrapping around you and rubbing against you. The main tendril emerging from your ass pulses and strokes in and out, making you feel as if you're getting thoroughly fucked by it. You cry out in a mix of surprise and pleasure at this forceful intrusion, but there is little discomfort as the plant's secretions make it all feel wonderfully erotic. Your moans and panting is muffled when another vine finds its way into your mouth. They thrust into you steadily while the other vines rub against your body and leak their cum-like secretions over your [bodytype of player] body. This addictive cum spreads over you and is pumped into you, changing your body to better collect cum from other creatures. Unable to keep up with the plant's unending assault of pleasure, you begin to fade away due to exhaustion.";
				say "     You awaken some time later only to find yourself several feet from the bush, leaking cum out of every orifice. Your asshole is still stretched around the vine that grew from inside of you, and to your horror, you discover that you can feel with the vine as if it were actually a part of your body! There is a slight twinge of pain from the vine as it severs itself about a foot from your ass, followed by a pulling sensation drawing the foot of vine back into your rear! It seems to be literally living inside of you, ready to force your ass open and extend itself whenever it wants to reproduce.";
				say "     All the cum you were forced to drink leaves you less thirsty and less hungry, but also changes you, reinforcing that permanent addiction to drinking cum as well as improving your body so it can obtain more.";
			else:
				say "     Additional vines grow out from the ground as the plant expands its reach. The plant, now firmly rooted in the soil, pulls you deeper into the expanding bush of vines. There you are cradled by a cluster of undulating vines while your legs are spread apart. The thick tendril rooted in your ass pulses and throbs in a strangely delightful manner while those around you rub and squeeze your [bodydesc of player] body. Several wrap around your limbs, restricting your movement and able to bind you fully should you resist too hard.";
				say "     With you restrained and moaning from your body's uncontrolled reaction to the vine's strangely pleasurable assault, your mouth is open when a vine moves into it to claim it as well. The phallic tendril pushes into your mouth and down your throat, leaking slick goo in the wake of its passage. You lick and suckle at it, gripping some of cock-like vines around you in your hands and stroking them. You are soon rewarded with blasts of the plant's musky cum, soaking you inside and out. As the hot, sticky goo is absorbed into your body, changing you further to make you a better cum-collection host. Eventually, you become exhausted from the continual fucking and fade into unconsciousness.";
				say "     You awaken some time later only to find yourself several feet from the new bush, leaking cum out of every orifice. Your ass is still stretched around the vine that grew from inside of you. Sharing some sensation with the green tendril, you feel a twinge of discomfort as it severs itself about a food from your wet folds and draws itself back into you. After a little squirming around inside you as it repositions itself, it settles down to slumber until it's ready to reproduce again.";
				say "     All the cum you were forced to drink leaves you less thirsty and less hungry, but also changes you, reinforcing that permanent addiction to drinking cum as well as improving your body so it can obtain more.";
	PlayerEat 15;
	PlayerDrink 15;
	increase plantdefeat by 1;

to say beattheplant:
	if inasituation is false:
		say "You finally manage to break the vine that [if plantdefeat > 0]grew out of you. Getting as far away as you can from the area, you begin attempting to remove the vine that grew from inside you. It seems almost like it were attached to something deep in your body, but with one final tug it comes free with a loud *POP*. Unfortunately, the seed it grew from didn't come with it, and is still rooted deep inside your body[else]forced its way inside of you. Getting far away from the vine-like bushes, you begin attempting to remove the vine that still dangles from between your legs. The inflated cock end of the plant makes it very difficult to remove, forcing you to stretch around it painfully as you pull on the vine. With one final tug, it comes free with a loud *POP*[end if].";
	else:
		say ""; [dealt with in the event]


to say PlantOrSeed:
	if inasituation is false:
		say "[PlantOrSeedRegular]";
	else: [event]
		say ""; [dealt with at the event source]

to say PlantOrSeedRegular:
	setmongender 5; [creature is herm]		[***maybe???]
	choose row monster from the table of random critters;
	say "[submitcheck]";
	let debit be 0;
	if peachtreefight is 3:
		if hardmode is true and level of player > 7, let debit be level of player - 7;
		now dex entry is 16 + ( debit + 2 / 5 );
		now HP entry is 60 + ( debit * 5 );
		now monsterHP is 60 + ( debit * 5 );
		now lev entry is 7 + debit;
		now wdam entry is 7 + ( ( 2 * debit ) / 5 );
		say "     This strange plant has spread its vines through the branches of the peach tree and bonded itself to it. You, as many others probably been before, were lured in by the temptation presented by the juicy fruit. The sweet scent of peaches accompanies the dribbling juices that leak from the tips of the vines. The tendril inside you pulses and throbs as those in the tree come down to restrain you so it may complete its tentacular assault upon you. You'll need to break free of the vine locked inside you if you are to escape.";
	else: [regular park plant]
		if hardmode is true and level of player > 4, let debit be level of player - 4;
		now dex entry is 16 + ( ( debit + 4 ) / 5 );
		now HP entry is 40 + ( debit * 4 );
		now monsterHP is 40 + ( debit * 4 );
		now lev entry is 4 + debit;
		now wdam entry is 6 + ( debit / 3 );
		if plantdefeat is 0: [encounter yet to fight it]
			if cunts of player > 0:	[cunt yes, bush]
				say "     You happen upon some very odd looking vegetation. It seems to be some kind of bush or mass of vines, but what makes it stand out is the definite cock-like shape to the end of each vine. They seem to be immobile and unmoving, thankfully, as it seems even plant life is not immune to the infection spreading through the area. All the sexual activity in the area probably caused the plant to come up with new ways to spread its pollen or seed. Not wanting to find first hand, you start to back away. Unfortunately your decision wasn't soon enough! A vine somehow managed to sneak up to your pussy as you were distracted looking at the bushes! The thin slimy vine strikes suddenly, forcing itself into your cunt! You grab at it and pull, only to find the cock-like tip swelling inside of you like a knot. It is soon so large you can't dislodge the vine without a fight, or a good running start might let you break the vine if you try to flee! Other vines are moving in, intent on further violating you.";
			else:	[cunt no, bush]
				say "     You happen upon some very odd looking vegetation. It seems to be some kind of bush or mass of vines, but what makes it stand out is the definite cock-like shape to the end of each vine. They seem to be immobile and unmoving, thankfully, as it seems even plant life is not immune to the infection spreading through the area. All the sexual activity in the area probably caused the plant to come up with new ways to spread its pollen or seed. Not wanting to find first hand, you start to back away. Unfortunately your decision wasn't soon enough! A hidden vine somehow managed to sneak up to your ass as you were distracted looking at the bushes! The thin slimy vine strikes suddenly, forcing itself into your ass! You grab at it and pull, only to find the cock like tip swelling inside of you like a knot. It is soon so large you can't dislodge the vine without a fight, or a good running start might let you break the vine if you try to flee! Other vines are moving in, intent on further violating you.";
		else:[seed]
			if cunts of player > 0:	[cunt yes, seed]
				say "     A pain from your womb suddenly forces you to the ground. It almost feels like you are giving birth but whatever it is feels more like a long cock pushing at the inside of your pussy! Looking down, you see a large vine-like root slide out of your pussy, growing longer and longer. It soon reaches the ground and burrows into the earth, seemingly taking root. The pain ends but you're still in trouble: the vine is very strong and no matter how much you pull or tug the vine refuses to pull free from the ground or from inside of you. The vine keeps growing longer for a few moments until there is a good 10 feet of vine between your pussy and the ground, allowing you to move around some, but other vines are emerging from the soil. It's going to be a fight trying to break the strong root, or a good running start might allow you to break the root if you flee.";
			else:	[cunt no, seed]
				say "     A pain from your gut suddenly forces you to the ground. It almost feels like you are giving birth from your ass but whatever it is feels more like a long cock pushing at the inside of your ass! Looking down, you see a large vine-like root slide out of your anus, growing longer and longer. It soon reaches the ground and burrows into the earth, seemingly taking root. The pain ends but you're still in trouble: the vine is very strong and no matter how much you pull or tug the vine refuses to pull free from the ground or from inside of you. The vine keeps growing longer for a few moments until there is a good 10 feet of vine between your pussy and the ground, allowing you room to move around some, but other vines are emerging from the soil. It's going to be a fight trying to break the strong root, or a good running start might allow you to break the root if you flee.";
	if bodyname of player is "Anime Babe":
		say "     Your anime girl body, particularly vulnerable to tentacle attack, has trouble resisting the plant's vines. You moan and squeal in barely suppressed pleasure as those vines squirm inside you, quickly draining your resistance.";
		decrease plfleebonus by 3;
		decrease pldodgebonus by 3;
		decrease plmindbonus by 3;
		now HP of player is ( 2 * HP of player ) / 3;
		now libido of player is ( 100 + libido of player + libido of player ) / 3;

to say submitcheck:
	now didsubmit is 1;

to say didnotsubmit:
	now didsubmit is 0;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Parasitic Plant"; [Name of your new Monster]
	now attack entry is "[didnotsubmit][one of]With a sudden pull, the vine gives a mighty tug, forcing you to fall to the ground with a thud.[or]The vine lifts up into the air, taking you with it and causing you to hang painfully from the tendril before it drops you.[or]One of the vines constricts around your waist like a boa, trying to squeeze the resistance out of you.[or]One of the vines manages to get around your neck, choking you until you can pull it off and gasp for air.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beattheplant]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[plantwin]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[PlantOrSeed]";[ Description of the creature when you encounter it.]
	now face entry is "beautiful, feminine face with vine-like hair and a vertical slit, looking much like a very wet pussy, replacing your mouth";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "undeniably feminine with root-like legs, your needy cunt exuding a musky substance meant to attract males";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]green plant-like[or]beautiful plant-like[at random]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "A very moist vagina replaced your anus, concealed by a dress made of long petals which extend down to the floor.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[if looknow is 1]tentacle[else][one of]vine-like[or]tentacle[or]green tendril[at random][end if]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is " as long tendrils covered with leaves sprout like long green hair. A strange sensation spreads through your mouth as it seals up and your teeth disappear. A new slit forms just below your nose, ending at your chin, leaving you with a vagina for a mouth. It feels moist and fills your mind with an unending need for cum! At the same time, your face becomes rounder, and more feminine"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "a sudden surge of vines and roots spread like an infection through your body from a seed hidden inside of you. Your legs become root-like vines that dig into the ground if you stay in one place for too long, while the rest of your body shifts, leaving you much shorter, with feminine curves and a gorgeous body. Your pussy starts drooling a musky substance which arouses you"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "thin vines suddenly force their way out of your ass spreading outward over your skin from some unseen seed inside your body. They cover every inch and work their way into any orifice of your body before sinking into your skin turning your entire body a dark plant-like green color!"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a very strange sensation spreads around your waist and your anus seems to stretch almost painfully! Reaching back you find it is now shaped like a pussy. It feels so empty, practically begging you to fill it with a nice, hard cock! Around your waist, long petals sprout like a dress extending down to the floor"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is " followed by a sudden pain at your groin! Your cock seems to swell into an odd bulb-like shape and turn a green plant-like color, while small green tendrils spread over your groin like roots."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 14;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 40;
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking.]
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 4; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 20; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 8; [Size of breasts infection will try to attain ]
	now male breast size entry is 0;[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 3; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 5; [ Width of female sex infection will try and give you ]
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "musky cock flower";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "feminine";
	now type entry is "plant";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "parplant"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

ppatt is a truth state that varies.

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"parplant"	retaliation rule	--	--	ppattack rule	100	--	--	ppmiss rule	--	ppstrike rule

this is the ppstrike rule: [possible sonic attack and sets upcoming strike]
	if a random chance of 3 in 4 succeeds:	[performs regular attacks 75% of the time]
		now ppatt is true;
		standardstrike;
	else:
		choose row monster from the table of random critters;
		now ppatt is false;
		let the defense bonus be stamina of the player + ( level of player * 2 ) - 10;
		if gascloud > 0, decrease gascloud by 1;
		let the attack bonus be sta entry + ( lev entry * 2 ) - 10;
		let the combat bonus be attack bonus minus defense bonus;
		if hardmode is true:
			if the combat bonus > 19:
				now combat bonus is 19;
			else if the combat bonus < -22:
				now combat bonus is -22;
		else:
			if the combat bonus > 16:
				now combat bonus is 16;
			else if the combat bonus < -25:
				now combat bonus is -25;
		if autoattackmode is 3 and combat bonus < -15, now combat bonus is -15; [***if autopass, min. 25% chance to hit]
		let the roll be a random number from 1 to 50;
		say "[name entry] rolls 1d50([roll])+[combat bonus] -- [roll plus combat bonus]: ";
		if the roll plus the combat bonus > 20:
			now monsterhit is true;
		else:
			now monsterhit is false;

this is the ppattack rule:
	choose row monster from table of random critters;
	if ppatt is true:
		standardhit;
	else:
		let dam be ( ( wdam entry times a random number from 80 to ( 120 + lev entry ) ) / 100 );
		if hardmode is true and a random chance of 1 in 10 succeeds:
			now dam is (dam * 150) divided by 100;
			say "The plant pulses and writhes energetically - Critical Hit![line break]";
		say "[didnotsubmit][one of]The bulb inside of you inflates suddenly, causing your belly to expand due to its size[or]The vine inside you wriggles and squirms in an arousing manner[or]The knot inside you pulses as the plant spurts a mind numbing fluid that makes you more aroused[at random]! You take [special-style-2][dam][roman type] damage and grow more aroused!";
		now damagein is dam;
		say "[noarmorabsorbancy]"; [natural defense only]
		now absorb is ( absorb + 1 ) / 2; [total defense value halved]
		if absorb > dam:
			now absorb is dam;
		if absorb > 0:
			say "You prevent [special-style-1][absorb][roman type] damage!";
		decrease HP of the player by dam;
		increase HP of player by absorb;
		let libinc be a random number between 1 and dam;
		if "Horny Bastard" is listed in feats of player, increase libinc by 1;
		if "Cold Fish" is listed in feats of player, decrease libinc by 1;
		if libinc > 8, now libinc is 8;
		increase libido of player by libinc;
		follow the player injury rule;
		say "You are [descr].";

this is the ppmiss rule:
	if ppatt is false:
		now missskip is 1;
		say "The vine inside you squirms with activity, but you manage to resist.";

Section 4 - musky cock flower

Table of Game Objects (continued)
name	desc	weight	object
"musky cock flower"	"You see a large flower with a green cock jutting out from the center of it. It smells strongly of cum and male musk."	1	musky cock flower

musky cock flower is a grab object.
musky cock flower has a usedesc "[facerape use]".
musky cock flower is infectious. The strain of musky cock flower is "Parasitic Plant".

instead of sniffing musky cock flower:
	say "The strange blossom smells strongly of cum and male musk.";

to say facerape use:
	say "You begin to suck on the cock in the center of the flower. It surprises you as the flower part closes, taking hold of your face and gripping impossibly tight! It thrusts in and out, raping you for a while before pumping a load of cum-like liquid down your throat!";
	PlayerEat 5;
	increase libido of player by 20;
	if libido of player > 100, now libido of player is 100;


Section 5 - Heat

timetillrampage is a number that varies. timetillrampage is usually 0.
addedlibido is a number that varies. addedlibido is usually 0.
keepskin is a number that varies. keepskin is usually 0.
keepface is a number that varies. keepface is usually 0.
keeptail is a number that varies. keeptail is usually 0.
keepbody is a number that varies. keepbody is usually 0.
keepcock is a number that varies. keepcock is usually 0.


Table of infection heat(continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Parasitic Plant"	400	400	"[parasiticluststart]"	"dripping wet cunts "	--	--	"[parasiticlust]"	true	true	"[parasiticluststart]"

to say parasiticluststart:
	if plantdefeat > 0:
		say "You feel a torrent of carnal lust washing over you, seemingly coming from the seed embedded deep in your belly. ";
		if heatform is 0: [female heat]
			increase addedlibido by 2;
			if cunts of player is 1:
				say "Your vagina begins to drool juices abundantly, which start to run down your legs. You try to relieve some sexual need with your hand, but you already know it won't be enough for long. You need a cock in it. Preferably one able to cum gallons. Your eyes open wide as you realize this last thought wasn't yours! It is using your body for its own ends![run paragraph on]";
			else if cunts of player > 1:
				say "Your vaginas begin to drool juices abundantly, which start to run down your legs. You try to relieve some sexual need with your hand, but you already know it won't be enough. You need cocks in them. Preferably cocks able to cum gallons. Your eyes open wide as you realize this last thought wasn't yours! It is using your body for its own ends![run paragraph on]";
			if tailname of player is "Parasitic Plant":
				say "     The same sensation comes from your ass-cunt, which seems just as aroused.[run paragraph on]";
			if player is mpreg_able, increase addedlibido by 2;
			if facename of player is "Parasitic Plant":
				say "     Your mouth-cunt also starts to produce a very musky substance that starts to trickle into your throat. It tastes like pure sex, adding to your lust.[run paragraph on]";
			LineBreak;
		else: [mpreg heat]
			if tailname of player is "Parasitic Plant":
				say "Your vaginal anus begins to drool juices abundantly, which start to run down your legs. You try to relieve some sexual need with your hand, but you already know it's not going to be enough. You need a cock in it. Preferably one able to cum gallons. Your eyes open wide as you realize this last thought wasn't yours! It is using your body for its own ends![run paragraph on]";
			else:
				say "Your anus begins to clench and quiver with a growing longing. You try to relieve some sexual longing with your hand, but you already know it's not going to be enough. You need a cock in it. Preferably one able to cum gallons. Your eyes open wide as you realize this last thought wasn't yours! It is using your body for its own ends![run paragraph on]";
			if facename of player is "Parasitic Plant":
				say "     Your mouth-cunt also starts to produce a very musky substance that starts to trickle into your throat. It tastes like pure sex, adding to your lust.[run paragraph on]";
			LineBreak;
		say "[calcpplibido]";

to say calcpplibido:
	now addedlibido is 4;
	increase addedlibido by cunts of player * 2;
	if player is planttailed, increase addedlibido by 2;
	if player is mpreg_able, increase addedlibido by 2;
	if player is plantfaced, increase addedlibido by 4;

to say parasiticlust:
	say "[calcpplibido]";
	if plantdefeat > 0:
		increase libido of player by addedlibido;
		if libido of player > 99, now libido of player is 99;
		if (libido of player > 90) and (location of player is fasttravel) and (timetillrampage > 3):
			if heatform is 0:
				say "As you pant and feverishly massage your clit, trying to suppress the need for sex caused by the seed, you suddenly smell male pheromones and your mind snaps. You rush to its source and fuck it frantically, not caring about what or who the cock belongs to. As your needy nethers obtain at last the cum they so craved, you smell another cock, and proceed to fuck it as well, lost in mad lust. You enter a sex rampage.";
			else:
				say "As you pant and feverishly finger your [if player is planttailed]vaginal [end if]asshole, trying to suppress the need for sex caused by the seed, you suddenly smell male pheromones and your mind snaps. You rush to its source and fuck it frantically, not caring about what or who the cock belongs to. As your needy nethers obtain at last the cum they so craved, you smell another cock, and proceed to fuck it as well, lost in mad lust. You enter a sex rampage.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if skinname of player is "Parasitic Plant", now keepskin is 1;
			if facename of player is "Parasitic Plant", now keepface is 1;
			if tailname of player is "Parasitic Plant", now keeptail is 1;
			if bodyname of player is "Parasitic Plant", now keepbody is 1;
			if cockname of player is "Parasitic Plant", now keepcock is 1;
			now timetillrampage is 0;
			let hmonlist be a list of numbers;
			repeat with X running from 1 to number of filled rows in table of random critters:	[ Loop through and select all monsters that appear in the current area or Outside ]
				choose row X from the table of random critters;
				if there is no area entry, next;
				if area entry matches the text battleground:
					add X to hmonlist;
				else if area entry is "Outside":
					add X to hmonlist;
			repeat with Y running from 1 to a random number from 3 to 10:
				sort hmonlist in random order;
				repeat with Z running through hmonlist:		[Pick one of the monsters at random]
					now monster is Z;
					break;
				choose row monster from the table of random critters;
				say "[line break][line break]";
				say "[one of]Your lustful urges lead you to a [name entry]. Immediately upon seeing the infected monster, you offer yourself to it in the hopes of satisfying some of your seed's hunger.[or]An enticing scent leads to a [name entry]. Hoping to slake your thirst for sexual juices, you immediately submit in the hopes of satisfying your body's carnal hungers.[or]A [name entry] encounters you while you wander in your lustful haze. You submit to it with no reservations, needing to satisfy your deep, internal hunger.[or]A [name entry] crosses your wandering path as you seek out the scents to slake your inner needs. You offer yourself to it, lustful for any sexual satisfaction you may get from it.[or]When your lustful meandering leads to a [name entry], you submit and offer yourself to it.[or]Wandering through the city with no aim greater than lustful self-satisfaction, you come across a [name entry] and give in to it immediately.[in random order]";
				follow the cock descr rule;
				follow the cunt descr rule;
				follow the breast descr rule;
				now didsubmit is 1;
				say "[victory entry]";
				infect;
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "[line break][line break]";
			say "The sex rampage finally ends and you regain control of your urges. You are filled with a copious amount of cum, thick streams of cum are oozing from all your fuckable holes. You can feel the seed deep inside you throb as your plant-like infection reasserts itself as it soaks up the sexual juices it so desired. It seeps through your infected body, reclaiming your altered flesh and spreading further.[line break]";
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Parasitic Plant":
					now monster is y;
					break;
			choose row monster from table of random critters;
			if keepskin is 1:
				now skinname of player is "Parasitic Plant";
				now skin of player is skin entry;
			if keepface is 1:
				now facename of player is "Parasitic Plant";
				now face of player is face entry;
			if keeptail is 1:
				now tailname of player is "Parasitic Plant";
				now tail of player is tail entry;
			if keepbody is 1:
				now bodyname of player is "Parasitic Plant";
				now body of player is body entry;
				attributeinfect;
			if keepcock is 1:
				now cockname of player is "Parasitic Plant";
				now cock of player is cock entry;
			infect;
			decrease the score by 3;
			if player is kinky:
				say "With your deep, lustful hunger sated for the moment, you massage your abused holes and lick your cum-covered lips. Now that was a good fucking session!";
				increase the morale of the player by 5;
				now libido of player is (libido of player) / 2;
			else:
				say "Your deep, lustful hunger sated for the moment, you feel ashamed and depressed for what you have done.";
				decrease the morale of the player by a random number from 5 to 10;
				now libido of player is 0;
		else if libido of player > 90:
			increase timetillrampage by 1;
			say "The sexual urges caused by the seed are harder and harder to suppress.[line break]";
		else:
			now timetillrampage is 0;


Section 6 - Endings

when play ends:
	if vinetrapped is 0:
		if bodyname of player is "Parasitic Plant":
			if humanity of player < 10:			[succumb]
				if HP of Joanna > 0 and HP of Joanna < 90:			[Joanna saved]
					say "     As your plant-like urges take the fore, you sink into a passive state. You are a peaceful, bliss-filled plant creature, wandering the city in search of sex. You feel a thirst, a hunger for the sexual fluids of others and give yourself to them whenever you can. Many are quite willing to indulge your needs, sometimes repeatedly, filling you with cum or soaking you in their juices until you are briefly satisfied. You experience a life of varied lust, seeking out as many different creatures as you can.";
					say "     You are always drawn back to the flowery garden of the kinkajou, who welcomes you with open arms and tendrils[if plantdefeat > 0]. Having removed the plant seed within you on your first visit, the fluids you've been collecting are all hers to enjoy[else]. The collected semen and juices you've been collecting are all hers to enjoy[end if]. Her tongue and fresh vines delve into you, drawing the nourishing fluids from you to help satisfy her cravings. You are her lustful servant plant, going out into the city to gather so many different and delicious delights for her to later lap from you like nectar with her sensual tongue.";
					if cunts of player > 0:
						say "     In time, she plants a special seed of her own within your womb. Aside from doubling your lustful thirst, it grows and matures into a full pregnancy inside you. When finally fully swollen from the juices it's absorbed, you push it out in an orgasmic release and it splits open to reveal another lovely plant kinkajou. She fills you with steadily with seeds, giving you both many lovely green children. As they mature, they head out in teams, wresting parks and gardens from the tendril plants and take them over for themselves, working to spread themselves while pushing back the other group.";
					else:
						say "     One day, she tells you that she has a special duty for you and rubs your hands across her tummy, telling you there's a seed there waiting for you. Needing no further encouragement, you have a long and lustful fucking with her, pumping your hot semen into her again and again, fertilizing and feeding her seed. Aside from doubling her lustful thirst, it grows and matures into a full pregnancy inside the plant herm. When finally fully swollen from the juices it's absorbed, she pushes it out in an orgasmic release. It splits open to reveal another lovely plant kinkajou. She develops these seeds rapidly, giving you both many lovely green children. As they mature, they head out in teams, wresting parks and gardens from the parasitic tendril plants and take them over for themselves, working to spread themselves while pushing back the other group.";
				else if plantdefeat > 0:	[plant seeded]
					say "     As your plant-like urges take the fore, you sink into a passive state. You are a peaceful, bliss-filled plant creature, wandering the city in search of sex. You feel a thirst, a hunger for the sexual fluids of others and give yourself to them whenever you can. Many are quite willing to indulge your needs, sometimes repeatedly, filling you with cum or soaking you in their juices until you are briefly satisfied. You experience a life of varied lust, seeking out as many different creatures as you can. On occasion, the seed within you stirs while you're mating and shares its tentacles with your lover, bestowing some plant-like qualities into them. When eventually released, they end up wandering off to find a mature plant to fulfill the growing need inside them for a seed of their own.";
					say "     At times, the seed within you stirs and sinks its roots into the soil while rewarding you with its many tendrils. You accept this loving attention from your precious charge, glad to be its fertile soil to grow in. In time, it matures and exits you, taking root in a small parkette that needs a tendril plant to help fill it with lustful growth. After it has burrowed into the ground, your strange offspring takes you into its tendrils and fucks you repeatedly with them before finally sliding a new seed into your belly for you to care for, starting the cycle of life over again.";
				else:
					say "     As your plant-like urges take the fore, you sink into a passive state. You are a peaceful, bliss-filled plant creature, wandering the city in search of sex. You feel a thirst, a hunger for the sexual fluids of others and give yourself to them whenever you can. Many are quite willing to indulge your needs, sometimes repeatedly, filling you with cum or soaking you in their juices until you are briefly satisfied. But there is an emptiness inside you as well which soon draws you to the city's park. There, following a sweet scent in the air, you find a plant with tendrils and vines to fill you. It fucks you repeatedly, culminating in depositing a seed within you. Feeling whole now, you return to your wandering, seeking semen and sexual juices to nurture it. You experience a life of varied lust, seeking out as many different creatures as you can to satisfy it. On occasion, the seed within you stirs while you're mating and shares its tentacles with your lover, bestowing some plant-like qualities into them. When eventually released, they end up wandering off to find a mature plant to fulfill the growing need inside them for a seed of their own.";
					say "     At times, the seed within you stirs and sinks its roots into the soil while rewarding you with its many tendrils. You accept this loving attention from your precious charge, glad to be its fertile soil to grow in. In time, it matures and exits you, taking root in a small parkette that needs a tendril plant to help fill it with lustful growth. After it has burrowed into the ground, your strange offspring takes you into its tendrils and fucks you repeatedly with them before finally sliding a new seed into your belly for you to care for, starting the cycle of life over again.";
			else if humanity of player < 40 and plantdefeat > 0:		[survive w/low humanity + seed]
				say "     When the military arrives for rescue, they are a little wary of your plant-like body, but you peaceably inform them that you are still quite sane and safe. It takes a little convincing, this group having done a tour in the park, but they bring you to one of their processing camps, keeping an eye on you the whole time. You are subjected to some testing, but as they've had a few plant types already, you don't receive much scrutiny.";
				say "     Which is good, you feel, rubbing your belly, sensing the hidden seed resting inside you. You can feel it stir at times, urging you to satisfy your lusts, but manage to hold it in until you're released. Once you're free, you celebrate with a fine orgy with several of the others released at the same time as you. Your body soaks up their sexual fluids as they cum in and over you repeatedly. This goes a long way in satisfying your seed after the long drought and shortly before dawn you slip out of the motel room, leaving your slumbering lovers. You drive out to a secluded patch of woodland and greet the sunrise in a clearing as the seed's tendrils burst out, rewarding you with another long and fulfilling session of lovemaking.";
				say "     These orgies become a weekly affair for you and the others, releasing your pent up lusts after a long week of living normal, respectable lives. You get employ as a gardener, planning and tending to several small parks in your new city. It is a pleasant life for a plant like you, but you still crave the release of the week-end. You also leave them the next morning to greet the sun with your growing plant inside you.";
				say "     One morning, one of the girls notices you leaving and tags along, curious as always about where you disappear to. Sensing a special change in the seed, you bring her with you and when the plant bursts free, she is lustfully greeted by its tendrils. Fully mature now, the plant takes root in the glade and thoroughly fucks you both, planting a fresh seed in each of you. From that point on, you bring one of your orgy mates along every time until they are all seed carriers as well, helping to nurture and spread the wondrous plants.";
			else:
				if plantdefeat > 0:			[plant seeded]
					say "     When the military arrives for rescue, they are a little wary of your plant-like body, but you peaceably inform them that you are still quite sane and safe. It takes a little convincing, this group having done a tour in the park, but they bring you to one of their processing camps, keeping an eye on you the whole time. You are subjected to some testing and are quite intrigued when you inform them about the seed growing inside you. After some debate among the scientists, they manage to operate and extract it, freeing you from its influence. Your body is still quite lustful in its longing for sexual fluids, but it is more easily controlled.";
					say "     Your manage to restrain your lustful urges until you're released. Once you're free, you celebrate with a fine orgy with several of the others released at the same time as you. Your body soaks up their sexual fluids as they cum in and over you repeatedly, revitalizing you. These orgies become a regular affair for you and the others of that group, a special thing you share with them once a month.";
					say "     You get work as a gardener for the city, tending to several small parks. It is a pleasant life for a plant like you. The work comes naturally, knowing what the plants need and doing your best to provide for them, making the parks flourish, earning you several awards and a job as a gardener at a lavish private estate.";
				else:					[plant w/o seed]
					say "     When the military arrives for rescue, they are a little wary of your plant-like body, but you peaceably inform them that you are still quite sane and safe. It takes a little convincing, this group having done a tour in the park, but they bring you to one of their processing camps, keeping an eye on you the whole time. You are subjected to some testing, but as they've had a few plant types already, you don't receive much scrutiny.";
					say "     Your manage to restrain your lustful urges until you're released. Once you're free, you celebrate with a fine orgy with several of the others released at the same time as you. Your body soaks up their sexual fluids as they cum in and over you repeatedly, revitalizing you. These orgies become a regular affair for you and the others of that group, a special thing you share with them once a month.";
					say "     You get work as a gardener for the city, tending to several small parks. It is a pleasant life for a plant like you. The work comes naturally, knowing what the plants need and doing your best to provide for them, making the parks flourish, earning you several awards and a job as a gardener at a lavish private estate.";
					say "     Your monthly orgies continue and while several of the attendees offer to become mates with you, you prefer sharing yourself with all of them. They are all precious to you and you could never be happy picking one over another even if your open group is always open to sharing.";
		else if plantdefeat > 0 and HP of Joanna >= 7 and HP of Joanna < 90:
			if humanity of player >= 10:
				say "     When rescue arrives, you decide to hide the existence of Joanna's seed resting within you, deciding that it is now a part of what you are. You live a rather normal life, except for the very, very frequent sex, of course. Nymphomania is not really high on the list of mental illnesses you get locked up for and it's certainly a lot more common these days.";
		else if plantdefeat > 0 and cockname of player is "Parasitic Plant":	[non-plant, but plant groin w/seed]
			if humanity of the player < 40 and humanity of player >= 10:
				say "     When rescue arrives, you decide to hide the existence of the plant seed resting within you, deciding that it is now a part of what you are. You live a rather normal life, except for the very, very frequent sex, of course. Nymphomania is not really high on the list of mental illnesses you get locked up for and it's certainly a lot more common these days.";
			else:
				say "     When rescue arrives, you have the seed removed from your belly, glad to have the lust-inducing parasite removed.";

Parasitic Plant ends here.
