Version 1 of Squid for FS by Stripes begins here.

[Adaptation of Squid Girl for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes.  All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds a female Squid creature to Flexible Survival."

Section 1 - Monster Responses

squidcolour is a number that varies.

when play begins:
	add { "Squid" } to infections of girl;
	add ( "Squid" ) to infections of tailweapon;

to say losetosquid:
	say "     The squid girl moves over your defeated form and smoothly settles in above you.  Her tentacles effortlessly shed your clothes and caress your flesh[if cocks of player > 0].  She moans and slides her pussy over your cock and you shiver at her cold, wet embrace[end if][if cunts of player > 1].  A wriggling tentacle slides inside each of your pussies and starts stroking your insides with amazing precision[otherwise if cunts of player is 1].  One of her tentacles slides inside you and starts stroking your insides with amazing precision[end if][if breasts of player > 0].  Her arms wrap around your tits and start to knead and milk them gently[end if].  Her remaining limbs settle in over the rest of your body, their suckers pulling at your flesh here and there like the kisses of a hundred lovers.  Soon, you're both crying out in bliss as she brings you both to orgasm.  As her tentacles slowly pull away, she leans down to give you a gentle kiss. 'Come back soon,' she whispers.  'I'll be waiting.'  The tips of her tentacles slide slowly off of you, as it drawing out the contact as long as possible as she starts to swim off.";

to say beatthesquid:
	say "     The squid girl swims back with a loud squeal and turns.  There is a burst of ink and when you can see again, she is gone.";

to say squidskinchange:
	let tempnum be squidcolour;
	now squidcolour is a random number between 0 and 3;
	if squidcolour is tempnum, increase squidcolour by 1;
	if squidcolour is 4, now squidcolour is 0;
	say "a sensation like cold, rushing water flooding through your veins as your skin sheds away revealing slick smooth red flesh below.  As you admire your new skin with wonder, it suddenly shifts to blue.  Your surprise brings on a yellow hue.  With a bit of practice, you settle on a color that suits you";

to say squiddesc:
	say "     Rising from the waters is a female squid creature.  Her sleek and smooth body, made for gliding through the water with ease, is covered in wet-looking yellow flesh.  Her head is almost human, except for having an elongated crown and large, dark eyes.  The squid girl's chest is a slightly lighter colour than the rest of her body and has a pair of small, flat breasts.  Her arms are long tentacles lined with rows of suckers and ending in pad-like hands.  Her legs are a collection of tentacles, eight in number, that twist and roll as she moves around.  Her ass is small and compact, barely disturbing the silhouette of her body.  Beneath the shifting tentacles, you spot her wet pussy, quivering with need.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Squid";
	now attack entry is "[one of]The squid girl whips her tentacles at you, slapping you around with her numerous tentacles![or]The female cephalopod turns and squids ink at you, temporarily blinding you and letting her strike at you with her tentacles![or]The squid girl wraps her tentacles around you and squeezes, trying to crush the fight out of you![or]The squid's tentacle arms manage to latch onto you, pulling you into her embrace for a cold, wet kiss![or]The squid girls tentacles grab you, groping you all over![at random]";
	now defeated entry is "[beatthesquid]";
	now victory entry is  "[losetosquid]";
	now desc entry is "[squiddesc]";
	now face entry is "almost human-like, except for the soft-fleshed, elongated crown and large dark eyes";
	now body entry is "sleek and smooth, made for gliding through the water with ease. Your chest is a slightly lighter color than the rest of your body.  Your arms are long tentacles, lined with rows of suckers and ending in pad-like hands.  Your legs are a collection of tentacles, eight in number, that twist and roll as you move around";
	now skin entry is "wet-looking [if squidcolour is 1]red[otherwise if squidcolour is 2]blue[otherwise if squidcolour is 3]yellow[otherwise if squidcolour is 0]purple[end if]";
	now tail entry is "Your ass is small and compact, barely disturbing the silhouette of your body.";
	now cock entry is "bulb-headed tentacle";
	now face change entry is "your previous features seem to melt away as your face returns to your normal, human shape. Your elation (or disappointment) is soon interrupted as you feel a strange pull at the top of your head. Your skull lengthens and tapers to a gentle point of soft flesh. The world shimmers, like you're looking through a pool of water, as your eyes swell and grow. You look around and see the world in a new clarity";
	now body change entry is "your body swells and then suddenly contracts into a smooth streamlined shape. You feel a second and third heartbeat grow in your chest, your new hearts flooding your body with strength and energy. Arms! Like! Noodles! Your arms fall uselessly to your sides and your hands droop as your bones dissolve into your flesh. A trail of small suckers run down your floppy limbs and spread over your flat paddle-shaped hands. As your arms swell with fluid, you're slowly able to regain control. After a few fumbles, you're able to adapt to using them and being able to pick up items with ease, and maybe even play the piano. Your legs quiver, ripple, and give way as everything from your femurs on down are reabsorbed into your body. You collapse to the ground with a heavy thud and fight to stay calm as your each legs split into a quartet of tentacles that fuse into your hips. After a bit of stumbling and unceremonious flopping about, you're able to right yourself. Once you get the hang of it, it's not that bad";
	now skin change entry is "[squidskinchange]";
	now ass change entry is "your ass shrinks and tightens, almost disappearing into the natural contours of your body";
	now cock change entry is "your cock starts to wiggle and squirm almost like it has a mind of its own.  A large tapered bulb grows at the end while your shaft gains a rough, ridged texture.  It wiggles around, almost like it's waving hello.  Not wanting to be rude, you wave back";
	now str entry is 12;
	now dex entry is 15;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 16;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 32;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 6;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Beach";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 1;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 5;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 33;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Squid":
		if humanity of player is less than 10:
			say "     With thoughts of the cool waters of the ocean, you head back to the beach area as your infection starts rewriting your mind.  Discarding you pack, you slide your sleek body into the water and swim out to find the other squids.  You join their underwater school, frolicking and fondling one another happily under the waves[if cocks of player > 0].  Having a cock, you are quite popular with the cute girls[end if].";
		otherwise:
			say "     Being partially aquatic now, the military keep you in a special holding facility for those with aquatic transformations.  There is some interest in you and the others and they get several marine biologists to study your group.  Several members of the military speak to you as well.  While several of the others are swayed and recruited by the military, you have little interests in their offers and are happy just to swim around and enjoy your sensitive, new form.  You do make friends with one of the marine biologists though, and she helps you make contact to join a marine park's staff after your release.  Given your extensive transformation, you are given work as part of the cleaning staff.  Able to clean the tanks and scrub the walls from within while filled, that is your primary task.  You don't mind though, as it lets you [']make friends['] with all the lovely whales and dolphins after hours.";


Squid for FS ends here. 