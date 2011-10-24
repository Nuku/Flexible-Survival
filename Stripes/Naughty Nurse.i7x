Version 1 of Naughty Nurse by Stripes begins here.
[Version 1]
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
	now hp entry is 36;
	now lev entry is 4;
	now wdam entry is 5;
	now dex entry is 14;

to say beatthevixennurse:
	say "     Your last blow to the nurse sends her staggering back.  She waves her clipboard intently at you.  'Oh, you are in big trouble now.  I'm going to have to send the orderlies down here to deal with you.'  With that, she turns and runs away.";
	[value reset]
	choose row monster from the table of random critters;
	now hp entry is 36;
	now lev entry is 4;
	now wdam entry is 5;
	now dex entry is 14;


to say vixennursedesc:
	choose row monster from the table of random critters;
	now vixgender is 0;
	if hermaphrodite is banned:			[always female if herm banned]
		now vixgender is 0;
	otherwise if hospquest > 5:
		if a random chance of 2 in 5 succeeds:
			now vixgender is 1;		[now a herm]
	if vixgender is 0:
		say "[line break]     You find yourself face to face with a sensually curved vixen in a tight, little nurse's outfit.  She has a short cut, white apron with a black top under it.  There's even a traditional, white nurse's cap with a red cross on it on the vixen's head.  She has lustrous, gray fur, indicating that her infection originated from a silver fox.  Glancing down those long, slender legs you see they end in digitigrade paws.  To her ample chest, she holds a large clipboard.  You can still see the bumps that the perky nipples on her four breasts make in the fabric, unblocked by the clipboard.  She looks you over quickly and tut-tuts, saying '[one of]It looks like one patient[']s gotten out of bed[or]Bend over, sweety.  It[']s time to take your temperature[or]You look like you need a little TLC[or]Please return to the waiting area.  The doctor will see you shortly.  Until then, let me take care of you[at random].'  She raises her clipboard, seemingly intent on clubbing you with it.";
		now hp entry is 36;
		now monsterhp is 36;
		now lev entry is 4;
		now wdam entry is 5;
		now dex entry is 14;
	otherwise:
		say "[line break]     You find yourself face to face with one of those sensually curved vixen in the tight, little nurse's outfit.  She has lustrous, gray fur, indicating that her infection originated from a silver fox.  She has a traditional, white nurse's cap with a red cross on it on the vixen's head.  She is wearing a short cut, white apron with a black top under it.";
		say "     And there your eyes stop, finding that something is amiss with this naughty nurse.  Her tight dress has a rather sizeable bulge in it and it is growing larger as you watch.  It's a trap!  Grinning, she rubs the firm lump and says, '[one of]It looks like one patient[']s gotten out of bed.  I'll tuck you in good and tight[or]Bend over, sweety.  Mmm... I want to take your temperature[or]You look like you a dose of my medicine[or]Let me give you a thorough examination, my pretty patient[at random].'  She rubs her four breasts and moans lustfully before charging at you.";
		now hp entry is 72;
		now monsterhp is 72;
		now lev entry is 7;
		now wdam entry is 8;
		now dex entry is 18;

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
   now face entry is "vulpine head with a long muzzle and teeth.  You have steely-grey eyes and silver fur covers your"; [ Face description, format as the text "You have a (your text) face."]
   now body entry is "seductively curved, with a tight, bubble butt.  Your hands have hard, black claws at their fingertips and your feet are digitigrade paws now."; [ Body Description, format as the text "Your Body is (your text)"]
   now skin entry is "smooth, silver-coloured fur over your"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "From the base of your spine, you have a silver fox's luxurious tail."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "steely-gray vulpine"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it shifts and stretches, gaining a long, slender muzzle which ends in a black nose and whiskers.  Silvery fur covers his muzzle as your ears move upwards and grow into pointed, vulpine ears."; [ face change text. format as "Your face feels funny as (your text)" ]
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


when play ends:
	if bodyname of player is "Vixen Nurse":
		if humanity of player is less than 10:
			say "     Succumbed as naughty nurse.";
		otherwise:
			say "     Survive as naughty nurse.";



[ Edit this to have the correct Name as well]
Naughty Nurse ends here.