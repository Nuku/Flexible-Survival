Version 1 of Black Market Items by Luneth begins here.

Section 1 - Medicine Case

Part 1 - Bitch Breaker Gel

Table of Game Objects(continued)
name	desc	weight	object
"bitch breaker gel"	"A small bottle of slimy red goo. The label says that it will grow your cock larger. External use only."	0	bitch breaker gel

bitch breaker gel is a grab object. It is temporary. It is a part of the player.

the usedesc of bitch breaker gel is "[bitch breaker gel use]".

to say bitch breaker gel use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cocks of player: [cocks of player]; Cock Length of player: [cock length of player][line break]";
	if player is male:
		say "     You [SelfStripCrotch], then slowly smear the red goo over your cock[smn] making sure that it is completely coated. After applying the spicy-scented, slime you start to feel your dick[smn] heat up, leaving you feeling hot and aroused, your libido climbing rapidly. ";
		increase cock length of player by a random number from 2 to 4;
		Follow the cock descr rule;
		say "You groan as you gain more male meat, leaving you with [if cocks of player < 2]a[end if] [cock size desc of player] [cock of player] cock[smn].";
		LibidoBoost 10;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cocks of player: [cocks of player]; Cock Length of player: [cock length of player][line break]";
	else:
		say "     You [SelfStripCrotch], then rub the red goo onto your [if player is female]puss[yfn][else]mound[end if]. However, once it is applied, you start to experience intense itching. While you attempt to ease the irritation, you only manage to scratch yourself sore. Thankfully, the sensations begin to fade before much longer, until only a dull ache is left.";
		LibidoLoss 20;

Part 2 - Breeder Serum

Table of Game Objects(continued)
name	desc	weight	object
"breeder serum"	"A small energy drink with a very masculine and pungent odor. The label says that once consumed, it will increase the size of your balls."	0	breeder serum

breeder serum is a grab object. It is temporary. It is a part of the player.

the usedesc of breeder serum is "[breeder serum use]".

to say breeder serum use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cocks of player: [cocks of player]; Cock Width of player: [cock width of player][line break]";
	if player is male:
		say "     You pop open the lid of the energy style drink and begin to chug it. There's a slight bitter taste to it, but you forget that as it quickly gets to work. Soon, you're feeling hot and aroused, your libido climbing rapidly. ";
		increase cock width of player by a random number from 1 to 3;
		Follow the cock descr rule;
		say "You groan as your testicles increase in size, leaving you with [short ball size] balls.";
		LibidoBoost 10;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cocks of player: [cocks of player]; Cock Width of player: [cock width of player][line break]";
	else:
		say "     You pop open the lid of the energy style drink and begin to chug it. There's a slight bitter taste to it, and unfortunately, things start to get much worse. You end up almost falling to your knees due to agonizing pain radiating out from your stomach. It almost feels like your[if player is female] ovaries are imploding[else] insides are imploding[end if]! Eventually, the sensations begin to ease a bit, and after catching your breath you are able to continue on.";
		LibidoLoss 20;

Part 3 - Cock Remover

Table of Game Objects(continued)
name	desc	weight	object
"cock remover"	"A small pill that when consumed, will force a transformation that should remove any male genitalia that you have gained."	0	cock remover

cock remover is a grab object. It is temporary. It is a part of the player.

the usedesc of cock remover is "[cock remover use]".

to say cock remover use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cocks of player: [cocks of player][line break]";
	say "You take the pill and pop it into your mouth... ";
	if player is male:
		say "At first, you don't feel any different, that is until the head of your cock[smn] starts to tingle. You [SelfStripCrotch], inspecting yourself and seeing your dick[smn] begin to shrink and shrivel away until there is no evidence that [if cocks of player > 1]they were[else]it was[end if]it was even there in the first place.";
		now cocks of player is 0;
		LibidoLoss 10;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cocks of player: [cocks of player][line break]";
	else:
		say "     At first, you don't feel any different, that is until you start to cramp up. The shooting pain in your abdomen is almost crippling, but thankfully, after a few moments, it passes.";
		LibidoLoss 20;

Part 4 - Sissifier Gel

Table of Game Objects(continued)
name	desc	weight	object
"sissifier gel"	"A small bottle of slimy pink goo. The label says that it will shrink your cock but will not remove it. External use only."	0	sissifier gel

sissifier gel is a grab object. It is temporary. It is a part of the player.

the usedesc of sissifier gel is "[sissifier gel use]".

to say sissifier gel use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cocks of player: [cocks of player]; Cock Length of player: [cock length of player][line break]";
	say "     You [SelfStripCrotch], then slowly smear the pink goo over your cock[smn], making sure that it is completely coated. After applying the bubble-gum scented slime, you start to feel your dick[smn] heat up, leaving you feeling hot and aroused, your libido climbing rapidly. ";
	if player is male:
		if cock length of player is 2:
			decrease cock length of player by 1;
		else if cock length of player > 2:
			decrease cock length of player by 2;
			Follow the cock descr rule;
			say "You groan as your prick[smn] [if cocks of player > 1]decrease in size, leaving you with[else]decreases in size, leaving you with a[end if] [cock size desc of player] [cock of player] cock[smn]";
		else:
			say "Weirdly enough, nothing else seems to happen. Apparently, the gel can't make your prick[smn] any smaller.";
			LibidoBoost 10;
			if debugactive is 1:
				say "DEBUG -> After-Use: Cocks of player: [cocks of player]; Cock Length of player: [cock length of player][line break]";
	else:
		say "     You [SelfStripCrotch], then attempt to rub the pink goo onto your [if player is female]puss[yfn][else]mound[end if]. However, once it is applied, you start to experience intense itching. While you attempt to ease the irritation, you only manage to scratch yourself sore. Thankfully, the sensations begin to fade before much longer, until only a dull ache is left.";
		LibidoLoss 20;

Part 5 - Trap Serum

Table of Game Objects(continued)
name	desc	weight	object
"trap serum"	"A small energy drink with a cotton candy scent. The label says that once consumed, it will decrease the size of your balls, but won't remove them."	0	trap serum

trap serum is a grab object. It is temporary. It is a part of the player.

the usedesc of trap serum is "[trap serum use]".

to say trap serum use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cocks of player: [cocks of player]; Cock Width of player: [cock width of player][line break]";
	say "     You pop open the lid of the energy style drink and begin to chug it. There's a slight sweet taste to it, but you forget that as it quickly gets to work. Soon, you're feeling hot and aroused, your libido climbing rapidly. ";
	if player is male:
		if cock width of player > 2:
			decrease cock width of player by 2;
			Follow the cock descr rule;
			say "You groan as your testicles decrease in size, leaving you with [short ball size] balls.";
		else if cock width of player is 2:
			decrease cock width of player by 1;
			Follow the cock descr rule;
			say "You groan as your testicles decrease in size, leaving you with [short ball size] balls.";
		else:
			say "Weirdly enough, nothing else seems to happen. Apparently, the drink can't make your balls any smaller.";
		LibidoBoost 10;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cocks of player: [cocks of player]; Cock Width of player: [cock width of player][line break]";
	else:
		say "     At first, you don't feel any different, that is until you start to cramp up. The shooting pain in your abdomen is almost crippling, but thankfully, after a few moments, it passes.";
		LibidoLoss 20;

Part 6 - Pussy Spreader Cream

Table of Game Objects(continued)
name	desc	weight	object
"pussy spreader cream"	"A small jar full of a dark-purple cream. The label says that once applied to your vagina, it will begin to stretch wider."	0	pussy spreader cream

pussy spreader cream is a grab object. It is temporary. It is a part of the player.

the usedesc of pussy spreader cream is "[pussy spreader cream use]".

to say pussy spreader cream use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cunts of player: [cunts of player]; Cunt Width of player: [cunt width of player][line break]";
	if player is female:
		say "     You [SelfStripCrotch], then slowly smear the purple cream over your puss[yfn], making sure that [if cunts of player > 1]they[else]it[end if] is completely coated. After applying the lavender-scented goop, you start to feel your cunt[sfn] heat up, leaving you feeling hot and aroused, your libido climbing rapidly. ";
		increase cunt width of player by a random number from 2 to 4;
		Follow the cunt descr rule;
		say "You groan as your [if cunts of player > 1]vaginas spread open, leaving you with[else]vagina spreads open, leaving you with a[end if] [cunt size desc of player] puss[yfn].";
		LibidoBoost 10;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cunts of player: [cunts of player]; Cunt Width of player: [cunt width of player][line break]";
	else:
		say "     You [SelfStripCrotch], then rub the purple cream onto your [if player is male]cock[smn][else]mound[end if]. However, once it is applied, you start to experience intense itching. While you attempt to ease the irritation, you only manage to scratch yourself sore. Thankfully, the sensations begin to fade before much longer, until only a dull ache is left.";
		LibidoLoss 20;

Part 7 - Cock Holster Upgrade

Table of Game Objects(continued)
name	desc	weight	object
"cock holster upgrade"	"A small cylinder that is meant to be placed inside of your vagina. The label says that once inserted, the device will release an expanding gel that, after filling your pussy to capacity, will begin to stretch it even deeper."	0	cock holster upgrade

cock holster upgrade is a grab object. It is temporary. It is a part of the player.

the usedesc of cock holster upgrade is "[cock holster upgrade use]".

to say cock holster upgrade use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cunts of player: [cunts of player]; Cunt Length of player: [cunt length of player][line break]";
	if player is female:
		say "     You [SelfStripCrotch], then pop the tip off of the device and ready yourself to use it. Spreading your legs slightly, you stick the cylinder inside of your vagina, but then not really sure what to do next. Apparently, the small device has some sort of timer since it starts to spew out the gel inside of your body, filling you to capacity. ";
		increase cunt length of player by a random number from 2 to 4;
		Follow the cunt descr rule;
		say "You groan as your cunt grows deeper, leaving you with a [cunt size desc of player] pussy.";
		LibidoBoost 10;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cunts of player: [cunts of player]; Cunt Length of player: [cunt length of player][line break]";
	else:
		say "     You [SelfStripCrotch], then pop the tip off of the device and ready yourself to use it. But of course, as you are not a female, you don't exactly have a pussy to insert the cylinder into. While still trying to decide if sticking it up your ass would be a good idea, the small device activates, spewing out gel and covering the ground beneath with it. You can't help but feel frustrated over the wasted purchase.";
		LibidoLoss 20;

Part 8 - Cunt Remover

Table of Game Objects(continued)
name	desc	weight	object
"cunt remover"	"A small pill that when consumed, will force a transformation that should remove all female genitalia that you have gained."	0	cunt remover

cunt remover is a grab object. It is temporary. It is a part of the player.

the usedesc of cunt remover is "[cunt remover use]".

to say cunt remover use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cunts of player: [cunts of player][line break]";
	say "     You take the pill and pop it into your mouth. ";
	if player is female:
		say "At first, you don't feel any different, that is until the folds of your [if cunts of player > 1]pussies start[else]pussy starts[end if] to tingle. You [SelfStripCrotch], inspecting yourself and seeing your labia[sfn] begin to shrink and shrivel inwards. Soon, there is no evidence that there [if cunts of player > 1]were any vaginas[else]was a vagina[end if] there in the first place.";
		now cunts of player is 0;
		LibidoLoss 10;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cunts of player: [cunts of player][line break]";
	else:
		say "     At first, you don't feel any different, that is until you start to cramp up. The shooting pain in your abdomen is almost crippling, but thankfully, after a few moments, it passes.";
		LibidoLoss 20;

Part 9 - RightNTight Cream

Table of Game Objects(continued)
name	desc	weight	object
"rightntight cream"	"A small jar full of a pure-white cream. The label say that once applied to your vagina, it will make it tighten up."	0	rightntight cream

rightntight cream is a grab object. It is temporary. It is a part of the player.

the usedesc of rightntight cream is "[rightntight cream use]".

to say rightntight cream use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cunts of player: [cunts of player]; Cunt Width of player: [cunt width of player][line break]";
	if player is female:
		say "     You [SelfStripCrotch], then slowly smear the white cream over your puss[yfn], making sure that it is completely coated. After applying the vanilla-scented goop, you start to feel your cunt[sfn] heat up, leaving you feeling hot and aroused, your libido climbing rapidly. ";
		if cunt width of player > 2:
			decrease cunt width of player by 1;
		else:
			decrease cunt width of player by 2;
		Follow the cunt descr rule;
		say "You groan as your [if cunts of player > 1]vaginas tighten up, leaving you with[else]vagina tightens up, leaving you with a[end if] [cunt size desc of player] puss[yfn].";
		LibidoBoost 20;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cunts of player: [cunts of player]; Cunt Width of player: [cunt width of player][line break]";
	else:
		say "     You rub the white cream onto your [if player is male]cock[smn][else]mound[end if], however once it is applied, you start to experience intense itching. While you attempt to ease the irritation, you only manage to make your flesh sore, but eventually, the reaction to your body seems to die down.";
		LibidoLoss 10;

Part 10 - Cervix Smasher Upgrade

Table of Game Objects(continued)
name	desc	weight	object
"cervix smasher upgrade"	"A small cylinder that is meant to be placed inside of your vagina. The label says that once inserted, the device will release a tightening gel, that after filling your puss[yfn], will begin to make the overall size of your pussy smaller and shallower."	0	cervix smasher upgrade

cervix smasher upgrade is a grab object. It is temporary. It is a part of the player.

the usedesc of cervix smasher upgrade is "[cervix smasher upgrade use]".

to say cervix smasher upgrade use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Cunts of player: [cunts of player]; Cunt Length of player: [cunt length of player][line break]";
	if player is female:
		say "     You [SelfStripCrotch], then pop the tip off of the device and ready yourself to use it. Spreading your legs slightly, you stick the cylinder inside of your vagina, but you're not really sure what to do next, so you just wait. Apparently, the small device has some sort of timer since it starts to spew out the gel inside of your body, filling you to capacity. ";
		if cunt length of player > 2:
			decrease cunt length of player by 1;
		else:
			decrease cunt length of player by 2;
		Follow the cunt descr rule;
		say "You groan as your cunt becomes more shallow, leaving you with a [cunt size desc of player] pussy.";
		LibidoBoost 20;
		if debugactive is 1:
			say "DEBUG -> After-Use: Cunts of player: [cunts of player]; Cunt Length of player: [cunt length of player][line break]";
	else:
		say "     You [SelfStripCrotch], then pop the tip off of the device and ready yourself to use it. Seeing as you're not a female, you don't exactly have a pussy to insert the cylinder into. Apparently, the small device has some sort of timer since it starts to spew out the gel onto the ground. You can't help but feel extremely frustrated over the wasted purchase.";
		LibidoLoss 10;

Part 11 - Tits Inflator Pump

Table of Game Objects(continued)
name	desc	weight	object
"tits inflator pump"	"A small canister with large suction cups. The label on the side of the canister says to place the suction cups over your nipples and then press the button on the top to cause breast growth."	0	tits inflator pump

tits inflator pump is a grab object. It is temporary. It is a part of the player.

the usedesc of tits inflator pump is "[tits inflator pump use]".

to say tits inflator pump use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Breast Size of player: [breast size of player][line break]";
	say "     You [SelfStripChest], and attach the suction cups over your nipples and then press the button on top of the cannister. A sudden spray of liquid comes out of the suction cups, covering your nipples and the area around them. Other than a slight tingling sensation, you don't really notice any big differences at first, that is until you realize that the fluid is being absorbed into your tits, making them grow larger.";
	increase breast size of player by 1;
	LibidoBoost 10;
	if debugactive is 1:
		say "DEBUG -> After-Use: Breast Size of player: [breast size of player][line break]";

Part 12 - Tits Deflator Pump

Table of Game Objects(continued)
name	desc	weight	object
"tits deflator pump"	"A small canister with a two large suction cups. The label on the side of the canister says to place the suction cups over your nipples and then press the button on the top to shrink the size of your breasts."	0	tits deflator pump

tits deflator pump is a grab object. It is temporary. It is a part of the player.

the usedesc of tits deflator pump is "[tits deflator pump use]".

to say tits deflator pump use:
	if breast size of player > 0:
		say "     You [SelfStripChest], and attach the suction cups over your nipples and then press the button on top of the cannister. A sudden spray of liquid comes out of the suction cups, covering your nipples and the area around them. Other than a slight tingling sensation, you don't really notice any big differences at first, that is until you realize that the fluid is being absorbed into your tits, making them shrink down and become smaller.";
		decrease breast size of player by 1;
		LibidoLoss 10;
	else:
		say "     You [SelfStripChest], and attach the suction cups over your nipples and then press the button on top of the cannister. A sudden spray of liquid comes out of the suction cups, covering your nipples and the area around them. Other than a slight tingling sensation, you don't really notice any big differences at first, that is until you realize that the fluid is being absorbed into your tits. Unfortunately, since your chest is completely flat, the skin tightens too far, leaving you in pain as your flesh stretches. After a few moments, your chest returns to its normal elasticity.";
		LibidoLoss 20;

Part 13 - Tits Multiplier Injection

Table of Game Objects(continued)
name	desc	weight	object
"Tits Multiplier Injection"	"A jar of clear liquid with two syringes coming out of the sides. On the jar itself is a huge red plus sign. The label on the back says to place the jar between where you wish for more breasts to grow and then inject the chemical into the area. Once all of the clear fluid is gone, a new pair of breasts will grow in place."	0	tits multiplier injection

tits multiplier injection is a grab object. It is temporary. It is a part of the player.

the usedesc of tits multiplier injection is "[tits multiplier injection use]".

to say tits multiplier injection use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Tit Count = breasts of player: [breasts of player][line break]";
	if breasts of player is 0:
		say "     You [SelfStripChest], and hold the jar to the middle of your chest, approximately where you feel that your breasts should be. Slowly, you inject the needle into the flesh there, and the clear fluid starts being pumped into your chest. At first, you feel a bit lightheaded, and you search for something to steady yourself while at the same time making sure not to remove the needles. Finally once the liquid is gone, you remove the item and inspect yourself, only to find that nothing has happened. At first, you are disappointed, but then you feel an itchiness on your chest. Looking down, you see small protrusions start to swell up, their color slowly darkening and forming into two new nipples. You now have gained your first row of breasts. You are so excited that you can't help but want to go show them off to anyone you can!";
		increase breasts of player by 2;
		LibidoBoost 20;
	else if breasts of player < 8:
		say "     You [SelfStripChest], and hold the jar to the middle of your chest, right beneath the breasts that you already have. Slowly, you inject the needle into the flesh there, and the clear fluid starts being pumped into your chest. At first, you feel a bit lightheaded, and you search for something to steady yourself while at the same time making sure not to remove the needles. Finally once the liquid is gone, you remove the item and inspect yourself, only to find that nothing has happened. At first you are disappointed, but then you feel an itchiness on your chest. Looking down, you see small protrusions start to swell up, their color slowly darkening and forming into two new nipples. You now have an extra row of breasts. You are so excited that you can't help but want to go show them off to anyone you can!";
		increase breasts of player by 2;
		LibidoBoost 10;
	else:
		say "     You [SelfStripChest], and hold the jar to the middle of your chest, right beneath the breasts you already have. Slowly you inject the needle into the flesh there, the clear fluid starts being injected into your chest. At first you feel a bit lightheaded, searching out something to steady yourself while at the same time making sure not to remove the needles. Finally once the liquid is gone, you remove the item and inspect yourself, only to find nothing has happened. At first you au see small protrusions start to well up, their color slowly darkening and forming into two new nipples. However, your excitement quickly turns to pain as your nipples look as if they are attempting to fight for dominance. It almost appears as if a small war is taking place on your chest jure disappointed, but then you feel an itchiness where you injected yourself. Looking down, yost under the skin. While the pain is excruciating, it thankfully doesn't last very long. You can't help but think that at least for the time being, eight nipples may be the most that you can possess.";
		LibidoLoss 20;

Part 14 - Tits Divider Injection

Table of Game Objects(continued)
name	desc	weight	object
"Tits Divider injection"	"A jar of clear liquid with two syringes coming out of the sides. On the jar itself is a huge blue minus sign. The label on the back says to place the jar between your breasts and then inject the chemical into your tits. Once all of the clear fluid is gone, the row of breasts that you injected will shrink until they disappear."	0	tits divider injection

tits divider injection is a grab object. It is temporary. It is a part of the player.

the usedesc of tits divider injection is "[tits divider injection use]".

to say tits divider injection use:
	if debugactive is 1:
		say "DEBUG -> Pre-Use: Tit Count = breasts of player: [breasts of player][line break]";
	if breasts of player is 0:
		say "     You [SelfStripChest], and hold the jar tp the middle of your chest, you don't have any breasts, so you attempt to place the syringe as close as possible to where it should be. Slowly you inject the needle into the flesh there, the clear fluid starts being injected into your chest. At first you feel a bit lightheaded, searching out something to steady yourself while at the same time making sure not to remove the needles. Finally once the liquid is gone, you remove the item and inspect yourself, only to find nothing has happened. At first you are disappointed, but then you feel an itchiness on your chest. Looking down, you still see nothing, but a feeling like fire begins just under your skin. Falling to your knees, you hold your chest, waiting to see if the pain will die down. Thankfully, slowly but surely, it begins to recede, allowing you to stand on your feet once more. Apparently, these injections are not meant to be used on someone with no breasts to speak of, and it would probably be a bad idea to attempt this again, unless you have breasts to actually remove.";
		LibidoLoss 20;
	else if breasts of player < 3:
		say "     You [SelfStripChest], and hold the jar tp the middle of your chest, over the only row of breasts you have. Slowly you inject the needle into the flesh there, the clear fluid starts being injected into your chest. At first you feel a bit lightheaded, searching out something to steady yourself while at the same time making sure not to remove the needles. Finally once the liquid is gone, you remove the item and inspect yourself, only to find nothing has happened. At first you are disappointed, but then you feel an itchiness on your chest. Looking down, you see your nipples slowly retracting, almost like they are being swallowed up by your body, eventually spreading to the tits themselves until they disappear as well. You now have lost the only breasts you had. You aren't sure how to feel about this at the moment, but what's done is done, so you decide to think about later rather than now.";
		now breasts of player is 0;
		LibidoLoss 10;
	else:
		say "     You [SelfStripChest], and hold the jar tp the middle of your chest, over a row of breasts you already have. Slowly you inject the needle into the flesh there, the clear fluid starts being injected into your chest. At first you feel a bit lightheaded, searching out something to steady yourself while at the same time making sure not to remove the needles. Finally once the liquid is gone, you remove the item and inspect yourself, only to find nothing has happened. At first you are disappointed, but then you feel an itchiness on your chest. Looking down, you see your nipples slowly retracting, almost like they are being swallowed up by your body, eventually this spreads to the tits themselves until they disappear as well. You now have lost an extra row of breasts. You are so thankful that you can't help but want to give the creator of this medicine a great big hug!";
		decrease breasts of player by 2;
		LibidoLoss 10;

[Part 15 - Mama Milkshake

Table of Game Objects(continued)
name	desc	weight	object
"mama milkshake"	"lactation object"	0	mama milkshake

mama milkshake is a grab object. It is temporary. It is a part of the player.

the usedesc of mama milkshake is "[mama milkshake use]".

to say mama milkshake use:
	say "     ";

Part 16 - Wide Receiver

Table of Game Objects(continued)
name	desc	weight	object
"Wide Receiver"	"increases size of players ass"	0	wide receiver

wide receiver is a grab object. It is temporary. It is a part of the player.

the usedesc of wide receiver is "[wide receiver use]".

to say wide receiver use:
	say "     ";

Part 17 - Tight End

Table of Game Objects(continued)
name	desc	weight	object
"Tight End"	"decreases size of players ass"	0	tight end

tight end is a grab object. It is temporary. It is a part of the player.

the usedesc of tight end is "[tight end use]".

to say tight end use:
	say "     ";]

Section 2 - Outfitters Rack

Part 1 - Zephyr Riot Helmet

Table of Game Objects (continued)
name	desc	weight	object
"zephyr riot helmet"	"A helmet that zephyr has its security team use when dealing with emergencies."	3	zephyr riot helmet

zephyr riot helmet is a grab object.
zephyr riot helmet is equipment.
It is not temporary.
The plural of zephyr riot helmet is false.
The taur-compatible of zephyr riot helmet is true.
The size of zephyr riot helmet is 3.
The AC of zephyr riot helmet is 30.
The effectiveness of zephyr riot helmet is 60.
The placement of zephyr riot helmet is "head".
The descmod of zephyr riot helmet is "A jet black helmet with the zephyr logo on it rests atop your head.".
The slot of zephyr riot helmet is "head".
the scent of zephyr riot helmet is "The riot gear smells of metal and plastic.".

Part 2 - Zephyr Riot Chest Piece

Table of Game Objects (continued)
name	desc	weight	object
"zephyr riot chest piece"	"A chest piece that zephyr has its security team use when dealing with emergencies."	6	zephyr riot chest piece

zephyr riot chest piece is a grab object.
zephyr riot chest piece is equipment.
It is not temporary.
The plural of zephyr riot chest piece is false.
The taur-compatible of zephyr riot chest piece is true.
The size of zephyr riot chest piece is 3.
The AC of zephyr riot chest piece is 40.
The effectiveness of zephyr riot chest piece is 70.
The placement of zephyr riot chest piece is "body".
The descmod of zephyr riot chest piece is "A jet black chest piece encases your torso with the zephyr logo on it.".
The slot of zephyr riot chest piece is "body".
the scent of zephyr riot chest piece is "The riot gear smells of metal and plastic.".

Part 3 - Zephyr Riot Arm Guards

Table of Game Objects (continued)
name	desc	weight	object
"zephyr riot arm guards"	"A set of arm guards that cover the back of your hands all the way up to your shoulders. Zephyr has its security team use these when dealing with emergencies."	3	zephyr riot arm guards

zephyr riot arm guards is a grab object.
zephyr riot arm guards is equipment.
It is not temporary.
The plural of zephyr riot arm guards is false.
The taur-compatible of zephyr riot arm guards is true.
The size of zephyr riot arm guards is 3.
The AC of zephyr riot arm guards is 30.
The effectiveness of zephyr riot arm guards is 60.
The placement of zephyr riot arm guards is "arms".
The descmod of zephyr riot arm guards is "A set of jet black arm guards that encase your arms with the zephyr logo on it.".
The slot of zephyr riot arm guards is "arms".
the scent of zephyr riot arm guards is "The riot gear smells of metal and plastic.".

Part 4 - Zephyr Riot Shin Guards

Table of Game Objects (continued)
name	desc	weight	object
"zephyr riot shin guards"	"A set of shin guards that cover your legs from your feet up to your thighs. Zephyr has its security team use these when dealing with emergencies."	4	zephyr riot shin guards

zephyr riot shin guards is a grab object.
zephyr riot shin guards is equipment.
It is not temporary.
The plural of zephyr riot shin guards is false.
The taur-compatible of zephyr riot shin guards is true.
The size of zephyr riot shin guards is 3.
The AC of zephyr riot shin guards is 30.
The effectiveness of zephyr riot shin guards is 60.
The placement of zephyr riot shin guards is "legs".
The descmod of zephyr riot shin guards is "A set of jet black shin guards that encase your legs with the zephyr logo on it.".
The slot of zephyr riot shin guards is "legs".
the scent of zephyr riot shin guards is "The riot gear smells of metal and plastic.".

Part 5 - Zephyr Armored Lab Coat

Table of Game Objects (continued)
name	desc	weight	object
"zephyr armored lab coat"	"A Lab coat specifically modified by zephyr for their researchers out in the field. It has underpadding and a sheet of bendable plastic woven inside the fabric."	4	zephyr armored lab coat

zephyr armored lab coat is a grab object.
zephyr armored lab coat is equipment.
It is not temporary.
The plural of zephyr armored lab coat is false.
The taur-compatible of zephyr armored lab coat is true.
The size of zephyr armored lab coat is 3.
The AC of zephyr armored lab coat is 50.
The effectiveness of zephyr armored lab coat is 35.
The placement of zephyr armored lab coat is "body".
The descmod of zephyr armored lab coat is "A white and black lab coat rests upon your shoulders with the zephyr logo embroidered over your shoulder blades.".
The slot of zephyr armored lab coat is "chest".
the scent of zephyr armored lab coat is "The lab coat smells of chemicals and synthetic fibers.".

Part 6 - Zephyr Armored Lab Gloves

Table of Game Objects (continued)
name	desc	weight	object
"zephyr armored lab gloves"	"A set of lab gloves specifically modified by zephyr for their researchers out in the field. It has a sheet of bendable plastic woven inside the rubber."	1	zephyr armored lab gloves

zephyr armored lab gloves is a grab object.
zephyr armored lab gloves is equipment.
It is not temporary.
The plural of zephyr armored lab gloves is false.
The taur-compatible of zephyr armored lab gloves is true.
The size of zephyr armored lab gloves is 3.
The AC of zephyr armored lab gloves is 20.
The effectiveness of zephyr armored lab gloves is 15.
The placement of zephyr armored lab gloves is "hands".
The descmod of zephyr armored lab gloves is "A pair of white rubber lab gloves are fitted over your hands with the zephyr logo patched over the back of your hand.".
The slot of zephyr armored lab gloves is "hands".
the scent of zephyr armored lab gloves is "The lab gloves smells of chemicals and rubber.".

Part 7 - Zephyr Armored Lab Boots

Table of Game Objects (continued)
name	desc	weight	object
"zephyr armored lab boots"	"A pair of lab boots specifically modified by zephyr for their researchers out in the field. It has a sheet of bendable plastic woven inside the rubber."	1	zephyr armored lab boots

zephyr armored lab boots is a grab object.
zephyr armored lab boots is equipment.
It is not temporary.
The plural of zephyr armored lab boots is false.
The taur-compatible of zephyr armored lab boots is true.
The size of zephyr armored lab boots is 3.
The AC of zephyr armored lab boots is 20.
The effectiveness of zephyr armored lab boots is 15.
The placement of zephyr armored lab boots is "feet".
The descmod of zephyr armored lab boots is "A pair of black rubber lab boots are fitted over your feet with the zephyr logo patched over the toes.".
The slot of zephyr armored lab boots is "feet".
the scent of zephyr armored lab boots is "The lab boots smells of chemicals and rubber.".

Part 8 - Zephyr Riot Shield

Table of Game Objects (continued)
name	desc	weight	object
"zephyr riot shield"	"A black shield that zephyr's riot security use to suppress threats."	4	zephyr riot shield

zephyr riot shield is an armament. It is part of the player. It has a weapon "[one of]your metal shield[or]your suppressive shield[or]your black shield[at random]". The weapon damage of zephyr riot shield is 8. The weapon type of zephyr riot shield is "Melee". It is not temporary.

the scent of the zephyr riot shield is "     The zephyr riot shield smells faintly of suppressive authority.".


Black Market Items ends here.
