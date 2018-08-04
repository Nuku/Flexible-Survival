Version 1 of Black Market Items by Luneth begins here.

Section 1 - Bitch Breaker Gel

Table of Game Objects(continued)
name	desc	weight	object
"bitch breaker gel"	"A small bottle of slimy red goo. The label says that it will grow your cock larger. External use only."	0	bitch breaker gel

bitch breaker gel is a grab object. It is temporary. It is a part of the player.

the usedesc of bitch breaker gel is "[bitch breaker gel use]".

to say bitch breaker gel use:
	if player is male:
		say "     You [SelfStripCrotch], then slowly smear the red goo over your cock[smn] making sure that it is completely coated. After applying the spicy-scented, slime you start to feel your dick[smn] heat up, leaving you feeling hot and aroused, your libido climbing rapidly. ";
		increase cock length of player by a random number from 2 to 4;
		Follow the cock descr rule;
		say "You groan as you gain more male meat, leaving you with [if cocks of player < 2]a[end if] [cock size desc of player] [cock of player] cock[smn].";
		LibidoBoost 10;
	else:
		say "     You [SelfStripCrotch], then rub the red goo onto your [if player is female]puss[yfn][else]mound[end if]. However, once it is applied, you start to experience intense itching. While you attempt to ease the irritation, you only manage to scratch yourself sore. Thankfully, the sensations begin to fade before much longer, until only a dull ache is left.";
		LibidoLoss 20;

Section 2 - Breeder Serum

Table of Game Objects(continued)
name	desc	weight	object
"breeder serum"	"A small energy drink with a very masculine and pungent odor. The label says that once consumed, it will increase the size of your balls."	0	breeder serum

breeder serum is a grab object. It is temporary. It is a part of the player.

the usedesc of breeder serum is "[breeder serum use]".

to say breeder serum use:
	if player is male:
		say "     You pop open the lid of the energy style drink and begin to chug it. There's a slight bitter taste to it, but you forget that as it quickly gets to work. Soon, you're feeling hot and aroused, your libido climbing rapidly. ";
		increase cock width of player by a random number from 1 to 3;
		Follow the cock descr rule;
		say "You groan as your testicles increase in size, leaving you with [short ball size] balls.";
		LibidoBoost 10;
	else:
		say "     You pop open the lid of the energy style drink and begin to chug it. There's a slight bitter taste to it, and unfortunately, things start to get much worse. You end up almost falling to your knees due to agonizing pain radiating out from your stomach. It almost feels like your[if player is female] ovaries are imploding[else] insides are imploding[end if]! Eventually, the sensations begin to ease a bit, and after catching your breath you are able to continue on.";
		LibidoLoss 20;

Section 3 - Cock Remover

Table of Game Objects(continued)
name	desc	weight	object
"cock remover"	"A small pill that when consumed, will force a transformation that should remove any male genitalia that you have gained."	0	cock remover

cock remover is a grab object. It is temporary. It is a part of the player.

the usedesc of cock remover is "[cock remover use]".

to say cock remover use:
	say "You take the pill and pop it into your mouth... ";
	if player is male:
		say "At first, you don't feel any different, that is until the head of your cock[smn] starts to tingle. You [SelfStripCrotch], inspecting yourself and seeing your dick[smn] begin to shrink and shrivel away until there is no evidence that [if cocks of player > 1]they were[else]it was[end if]it was even there in the first place.";
		now cocks of player is 0;
		LibidoLoss 10;
	else:
		say "     At first, you don't feel any different, that is until you start to cramp up. The shooting pain in your abdomen is almost crippling, but thankfully, after a few moments, it passes.";
		LibidoLoss 20;

Section 4 - Sissifier Gel

Table of Game Objects(continued)
name	desc	weight	object
"sissifier gel"	"A small bottle of slimy pink goo. The label says that it will shrink your cock but will not remove it. External use only."	0	sissifier gel

sissifier gel is a grab object. It is temporary. It is a part of the player.

the usedesc of sissifier gel is "[sissifier gel use]".

to say sissifier gel use:
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
	else:
		say "     You [SelfStripCrotch], then attempt to rub the pink goo onto your [if player is female]puss[yfn][else]mound[end if]. However, once it is applied, you start to experience intense itching. While you attempt to ease the irritation, you only manage to scratch yourself sore. Thankfully, the sensations begin to fade before much longer, until only a dull ache is left.";
		LibidoLoss 20;

Section 5 - Trap Serum

Table of Game Objects(continued)
name	desc	weight	object
"trap serum"	"A small energy drink with a cotton candy scent. The label says that once consumed, it will decrease the size of your balls, but won't remove them."	0	trap serum

trap serum is a grab object. It is temporary. It is a part of the player.

the usedesc of trap serum is "[trap serum use]".

to say trap serum use:
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
	else:
		say "     At first, you don't feel any different, that is until you start to cramp up. The shooting pain in your abdomen is almost crippling, but thankfully, after a few moments, it passes.";
		LibidoLoss 20;

Section 6 - Pussy Spreader Cream

Table of Game Objects(continued)
name	desc	weight	object
"pussy spreader cream"	"A small jar full of a dark-purple cream. The label says that once applied to your vagina, it will begin to stretch wider."	0	pussy spreader cream

pussy spreader cream is a grab object. It is temporary. It is a part of the player.

the usedesc of pussy spreader cream is "[pussy spreader cream use]".

to say pussy spreader cream use:
	if player is female:
		say "     You [SelfStripCrotch], then slowly smear the purple cream over your puss[yfn], making sure that [if cunts of player > 1]they[else]it[end if] is completely coated. After applying the lavender-scented goop, you start to feel your cunt[sfn] heat up, leaving you feeling hot and aroused, your libido climbing rapidly. ";
		increase cunt width of player by a random number from 2 to 4;
		Follow the cunt descr rule;
		say "You groan as your [if cunts of player > 1]vaginas spread open, leaving you with[else]vagina spreads open, leaving you with a[end if] [cunt size desc of player] puss[yfn].";
		LibidoBoost 10;
	else:
		say "     You [SelfStripCrotch], then rub the purple cream onto your [if player is male]cock[smn][else]mound[end if]. However, once it is applied, you start to experience intense itching. While you attempt to ease the irritation, you only manage to scratch yourself sore. Thankfully, the sensations begin to fade before much longer, until only a dull ache is left.";
		LibidoLoss 20;

Section 7 - Cock Holster Upgrade

Table of Game Objects(continued)
name	desc	weight	object
"cock holster upgrade"	"A small cylinder that is meant to be placed inside of your vagina. The label says that once inserted, the device will release a expanding gel that, after filling your pussy to capacity, will begin to stretch it even deeper."	0	cock holster upgrade

cock holster upgrade is a grab object. It is temporary. It is a part of the player.

the usedesc of cock holster upgrade is "[cock holster upgrade use]".

to say cock holster upgrade use:
	if player is female:
		say "     You [SelfStripCrotch], then pop the tip off of the device and ready yourself to use it. Spreading your legs slightly, you stick the cylinder inside of your vagina, but then not really sure what to do next. Apparently, the small device has some sort of timer since it starts to spew out the gel inside of your body, filling you to capacity. ";
		increase cunt length of player by a random number from 2 to 4;
		Follow the cunt descr rule;
		say "You groan as your cunt grows deeper, leaving you with a [cunt size desc of player] pussy.";
		LibidoBoost 10;
	else:
		say "     You [SelfStripCrotch], then pop the tip off of the device and ready yourself to use it. But of course, as you are not a female, you don't exactly have a pussy to insert the cylinder into. While still trying to decide if sticking it up your ass would be a good idea, the small device activates, spewing out gel and covering the ground beneath with it. You can't help but feel frustrated over the wasted purchase.";
		LibidoLoss 20;

Section 8 - Cunt Remover

Table of Game Objects(continued)
name	desc	weight	object
"cunt remover"	"A small pill that when consumed, will force a transformation that should remove all female genitalia that you have gained."	0	cunt remover

cunt remover is a grab object. It is temporary. It is a part of the player.

the usedesc of cunt remover is "[cunt remover use]".

to say cunt remover use:
	say "     You take the pill and pop it into your mouth. ";
	if player is female:
		say "At first, you don't feel any different, that is until the folds of your [if cunts of player > 1]pussies start[else]pussy starts[end if] to tingle. You [SelfStripCrotch], inspecting yourself and seeing your labia[sfn] begin to shrink and shrivel inwards. Soon, there is no evidence that there [if cunts of player > 1]were any vaginas[else]was a vagina[end if] there in the first place.";
		now cunts of player is 0;
		LibidoLoss 10;
	else:
		say "     At first, you don't feel any different, that is until you start to cramp up. The shooting pain in your abdomen is almost crippling, but thankfully, after a few moments, it passes.";
		LibidoLoss 20;

Section 9 - RightNTight Cream

Table of Game Objects(continued)
name	desc	weight	object
"rightntight cream"	"A small jar full of a pure-white cream. The label say that once applied to your vagina, it will make it tighten up."	0	rightntight cream

rightntight cream is a grab object. It is temporary. It is a part of the player.

the usedesc of rightntight cream is "[rightntight cream use]".

to say rightntight cream use:
	if player is female:
		say "     You [SelfStripCrotch], then slowly smear the white cream over your puss[yfn], making sure that it is completely coated. After applying the vanilla-scented goop, you start to feel your cunt[sfn] heat up, leaving you feeling hot and aroused, your libido climbing rapidly. ";
		if cunt width of player > 2:
			decrease cunt width of player by 1;
		else:
			decrease cunt width of player by 2;
		Follow the cunt descr rule;
		say "You groan as your [if cunts of player > 1]vaginas tighten up, leaving you with[else]vagina tightens up, leaving you with a[end if] [cunt size desc of player] puss[yfn].";
		LibidoBoost 20;
	else:
		say "     You rub the white cream onto your [if player is male]cock[smn][else]mound[end if], however once it is applied, you start to experience intense itching. While you attempt to ease the irritation, you only manage to make your flesh sore, but eventually, the reaction to your body seems to die down.";
		LibidoLoss 10;

Section 10 - Cervix Smasher Upgrade

Table of Game Objects(continued)
name	desc	weight	object
"cervix smasher upgrade"	"A small cylinder that is meant to be placed inside of your vagina. The label says that once inserted, the device will release a tightening gel, that after filling your puss[yfn], will begin to make the overall size of your pussy smaller and shallower."	0	cervix smasher upgrade

cervix smasher upgrade is a grab object. It is temporary. It is a part of the player.

the usedesc of cervix smasher upgrade is "[cervix smasher upgrade use]".

to say cervix smasher upgrade use:
	if player is female:
		say "     You [SelfStripCrotch], then pop the tip off of the device and ready yourself to use it. Spreading your legs slightly, you stick the cylinder inside of your vagina, but you're not really sure what to do next, so you just wait. Apparently, the small device has some sort of timer since it starts to spew out the gel inside of your body, filling you to capacity. ";
		if cunt length of player > 2:
			decrease cunt length of player by 1;
		else:
			decrease cunt length of player by 2;
		Follow the cunt descr rule;
		say "You groan as your cunt becomes more shallow, leaving you with a [cunt size desc of player] pussy.";
		LibidoBoost 20;
	else:
		say "     You [SelfStripCrotch], then pop the tip off of the device and ready yourself to use it. Seeing as your not a female, you don't exactly have a pussy to insert the cylinder into. Apparently, the small device has some sort of timer since it starts to spew out the gel onto the ground. You can't help but feel extremely frustrated over the wasted purchase.";
		LibidoLoss 10;

Section 11 - Tits Inflator Pump

Table of Game Objects(continued)
name	desc	weight	object
"tits inflator pump"	"A small canister with large suction cups. The label on the side of the canister says to place the suction cups over your nipples and then press the button on the top to cause breast growth."	0	tits inflator pump

tits inflator pump is a grab object. It is temporary. It is a part of the player.

the usedesc of tits inflator pump is "[tits inflator pump use]".

to say tits inflator pump use:
	say "     You attach the suction cups over your nipples and then press the button on top of the cannister. A sudden spray of liquid comes out of the suction cups, covering your nipples and the area around them. Other than a slight tingling sensation, you don't really notice any big differences at first, that is until you realize that the fluid is being absorbed into your tits, making them grow larger.";
	increase breast size of player by 1;
	LibidoBoost 10;

Section 12 - Tits Deflator Pump

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

[Section 13 - Mama Milkshake

Table of Game Objects(continued)
name	desc	weight	object
"mama milkshake"	"lactation object"	0	mama milkshake

mama milkshake is a grab object. It is temporary. It is a part of the player.

the usedesc of mama milkshake is "[mama milkshake use]".

to say mama milkshake use:
	say "     ";

Section 15 - Wide Receiver

Table of Game Objects(continued)
name	desc	weight	object
"Wide Receiver"	"increases size of players ass"	0	wide receiver

wide receiver is a grab object. It is temporary. It is a part of the player.

the usedesc of wide receiver is "[wide receiver use]".

to say wide receiver use:
	say "     ";

Section 16 - Tight End

Table of Game Objects(continued)
name	desc	weight	object
"Tight End"	"decreases size of players ass"	0	tight end

tight end is a grab object. It is temporary. It is a part of the player.

the usedesc of tight end is "[tight end use]".

to say tight end use:
	say "     ";

Section 18 - Tits Multiplier

Table of Game Objects(continued)
name	desc	weight	object
"Tits Multiplier"	"add another row of breasts to player"	0	tits multiplier

tits multiplier is a grab object. It is temporary. It is a part of the player.

the usedesc of tits multiplier is "[tits multiplier use]".

to say tits multiplier use:
	say "     ";

Section 19 - Tits Divider

Table of Game Objects(continued)
name	desc	weight	object
"Tits Divider"	"removes a row of breasts from player"	0	tits divider

tits divider is a grab object. It is temporary. It is a part of the player.

the usedesc of tits divider is "[tits divider use]".

to say tits divider use:
	say "     ";]


Black Market Items ends here.
