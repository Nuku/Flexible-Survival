Version 2 of Squid for FS by Stripes begins here.
[Version 2.2 - Tweaked Anime Babe vulnerability]

[Adaptation of Squid Girl for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds a female Squid creature to Flexible Survival."

Section 1 - Monster Responses

squidcolour is a number that varies.

when play begins:
	add { "Squid" } to infections of girl;
	add { "Squid" } to infections of tailweapon;

to say squiddesc:
	setmongender 4; [creature is female]
	if a random chance of 1 in 2 succeeds:
		say "     Rising from the waters is a female squid creature. Her sleek and smooth body, made for gliding through the water with ease, is covered in wet-looking yellow flesh. Her head is almost human, except for having an elongated crown and large, dark eyes. The squid girl's chest is a slightly lighter colour than the rest of her body and has a pair of small, flat breasts. Her arms are long tentacles lined with rows of suckers and ending in pad-like hands. Her legs are a collection of tentacles, eight in number, that twist and roll as she moves around. Her ass is small and compact, barely disturbing the silhouette of her body. Beneath the shifting tentacles, you spot her wet pussy, quivering with need.";
	else:
		say "     You are suddenly accosted by what looks to be a strange squid-girl. Sleek and smooth in form, her streamlined build gives an almost fey appearance. Seemingly gliding towards you, she exposes her glistening yellow flesh. Head human-like, it is exaggerated by an elongated crown and large, dark eyes. Further informing you of her lithe body, the creature's chest is a slightly paler facet, adorned with a pair of small, flat breasts. Her arms long tentacle-like appendages, they are lined with rows of suckers and ending in pad-like hands. Pretty much everything below the waist is obscured by a writhing mass of tentacles, twisting and rolling as she moves to attack you, strangely determined in spite of her seemingly frail appearance.";
	if bodyname of player is "Anime Babe":
		say "     Your anime girl body, particularly vulnerable to tentacle attack, has trouble resisting the squid's swaying tentacles. You moan and squeal in barely suppressed pleasure as those tentacles squirm around you, quickly draining your resistance.";
		decrease plfleebonus by 3;
		decrease pldodgebonus by 3;
		decrease plmindbonus by 3;
		now hp of player is ( 2 * hp of player ) / 3;
		now libido of player is ( 100 + libido of player + libido of player ) / 3;

to say losetosquid:
	if hp of player > 0:
		say "     You stand down and throw your hands up in submission against the tentacled lady. Cautiously, she advances upon you, and once sufficiently satisfied with your compliance she starts to gently relinquish you of your attire before having her fun.";
	else:
		say "     Quickly moving, you find you're too weak to react before her suctioned tendrils grab hold of you and throw you to the ground, getting a faceful of sand. She then roughly exonerates your clothing from its beleaguered owner, its lewd intent made transparent to your vulnerable form.";
	if cocks of player > 0:
		say "     Partially engulfed in a writhing mass of tentacles, the girl descends her torso upon your crotch, the soft and affection caress of these appendages quickly influencing you into arousal, and though you cannot see past the mess of flesh you doubtlessly feel your [cock size desc of player] rod engulfed in the folds of the slinky creature's tight cunt[if cocks of player > 2]. In addition to the assault on your single organ, she's not one to let your additional equipment go neglected, and proceeds to let a couple tentacles attend to these tools, her proceeding kneads and strokes exasperated by the suctioned surface of such dextrous limbs[else if cocks of player is 2]. In addition to the assault on your single organ, she's not one to let your second rod go neglected, and proceeds to let a tentacle wrap around its length, her proceeding kneads and strokes exasperated by the suctioned surface of such a dextrous limb[end if].";
	if cunts of player > 0:
		say "     [If cunts of player > 2]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades one of your exposed cunts, more tentacles invading your additional feminine holes one by one. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[else if cunts of player is 2]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades one of your exposed cunts, followed by another in your second female passage. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[else]Subject to her tentacle's irreverent embrace, her deceptively gentle appearance exasperates the abrupt feeling of one of her appendages as it invades your exposed cunt. The wriggling organ illustrates the creature's aptitude for pleasure as it attends to your inner confines with amazing precision[end if].";
	if breasts of player > 1 and breast size of player > 0:
		say "[If breasts of player > 4]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of player] breasts, occasionally switching between the numerous sets. The audible noise of her suckers as they a pulled from your vulnerable flesh makes you twitch and jerk about, much to her amusement[else if breasts of player is 4]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of player] breasts, switching between the main set and the second on occasion. The audible noise of her suckers as they a pulled from your vulnerable flesh makes you twitch and jerk about, much to her amusement[else]She bears down upon you, her suctioned 'hands' affectionately kneading your [breast size desc of player] breasts, the audible noise of her suckers as they a pulled from your vulnerable flesh making you twitch and jerk about, much to her amusement[end if][if scalevalue of player > 3]. It's a little awkward for her to overpower a creature substantially larger than herself, but it's transparent that she enjoys the unique challenge of abusing such a sizeable beast[end if].";
	else:
		say "     She bears down upon you, her suctioned 'hands' affectionately kneading your [bodydesc of player] chest, the audible noise of her suckers as they a pulled from your vulnerable flesh making you twitch and jerk about, much to her amusement[if scalevalue of player > 3]. It's a little awkward for her to overpower a creature substantially larger than her, but it's transparent that she enjoys the unique challenge of abusing such a sizeable beast[end if].";
	if "More Anal" is listed in feats of player:
		say "     Her pleasurable amusement certainly lacking in restraint, you're jolted with the immediate sensation of one of her numerous tendrils teasing at your exposed ass. The slick and smooth organ slowly worms its way into these confines, causing you to moan. She giggles merrily, your subsequent protests a source of mirthful amusement to the diminutive creature, her tentacle wriggling its way deeper into your bowels, forcing you to contend with its irreverent stimulation.";
	If cocks of player > 0:
		say "     With such extensive perversion imposed upon you, it's not long before you orgasm against the creature's ministrations, her own climax matching yours as your ejaculate into her hidden depths[if cocks of player > 2]. Your additional organs aimed at you, they too explode against her tendril's affection, dousing you with your own fluids[else if cocks of player is 2]. Your second organ aimed at you, it too explodes against her tendril's affection, dousing you with your own fluids[end if][if cunts of player > 1]. Further exacerbating your release, your abused cunts tighten against the small creature's intrusions[else if cunts of player > 0]. Further exacerbating your release, your abused cunt tightens against the small creature's intrusion[end if]. Satisfied, she slowly pries her limbs from your beleaguered form, departing with a merry giggle and a gentle kiss.";
	else if cunts of player > 0:
		say "     With such extensive perversion imposed upon you, it's not long before you orgasm against the creature's ministrations, [if cunts of player > 1]your abused cunts tightening against the small creature's intrusions[else if cunts of player > 0]your abused cunt tightening against the small creature's intrusion[end if]. Satisfied, she slowly pries her limbs from your beleaguered form, departing with a merry giggle and a gentle kiss.";
	else:
		say "     She watched you as you writhe against her perverse affections, very much amused by your protests as she arouses you, lacking any sexual outlet to sate her relentless assault. You're about to pass out from exhaustion before she finally relents, slowly prying her limbs from your beleaguered form, and departing with a merry giggle and a gentle kiss.";
	say "     'Come back soon,' she whispers to you, 'I'll be waiting,' before she descends back into the depths of the coast. Regardless of how you feel about the circumstances which unfurled before you, you have to admit that it's a little embarrassing to be covered in all these welts from the abuse of the squid girl's suckers.";


to say beatthesquid:
	say "     You strike the aquatic creature down, and--seeing this as a losing fight--she quickly tumbles back into the depths of the waters from whence she came, releasing a cloud of ink to hide her escape.";


to say squidskinchange:
	let tempnum be squidcolour;
	now squidcolour is a random number between 0 and 3;
	if squidcolour is tempnum, increase squidcolour by 1;
	if squidcolour is 4, now squidcolour is 0;
	say "a sensation like cold, rushing water flooding through your veins as your skin sheds away revealing slick smooth red flesh below. As you admire your new skin with wonder, it suddenly shifts to blue. Your surprise brings on a yellow hue. With a bit of practice, you settle on a colour that suits you";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Squid";
	now attack entry is "[one of]The squid girl whips her tentacles at you, slapping you around with her numerous tentacles![or]The female cephalopod turns and squids ink at you, temporarily blinding you and letting her strike at you with her tentacles![or]The squid girl wraps her tentacles around you and squeezes, trying to crush the fight out of you![or]The squid's tentacle arms manage to latch onto you, pulling you into her embrace for a cold, wet kiss![or]The squid girls tentacles grab you, groping you all over![at random]";
	now defeated entry is "[beatthesquid]";
	now victory entry is "[losetosquid]";
	now desc entry is "[squiddesc]";
	now face entry is "almost human-like, except for the soft-fleshed, elongated crown and large dark eyes";
	now body entry is "sleek and smooth, made for gliding through the water with ease. Your chest is a slightly lighter colour than the rest of your body. Your arms are long tentacles, lined with rows of suckers and ending in pad-like hands. Your legs are a collection of tentacles, eight in number, that twist and roll as you move around";
	now skin entry is "wet-looking [if squidcolour is 1]red[else if squidcolour is 2]blue[else if squidcolour is 3]yellow[else if squidcolour is 0]purple[end if]";
	now tail entry is "Your ass is small and compact, barely disturbing the silhouette of your body.";
	now cock entry is "bulb-headed tentacle";
	now face change entry is "your previous features seem to melt away as your face returns to your normal, human shape. Your elation (or disappointment) is soon interrupted as you feel a strange pull at the top of your head. Your skull lengthens and tapers to a gentle point of soft flesh. The world shimmers, like you're looking through a pool of water, as your eyes swell and grow. You look around and see the world in a new clarity";
	now body change entry is "your body swells and then suddenly contracts into a smooth streamlined shape. You feel a second and third heartbeat grow in your chest, your new hearts flooding your body with strength and energy. Arms! Like! Noodles! Your arms fall uselessly to your sides and your hands droop as your bones dissolve into your flesh. A trail of small suckers run down your floppy limbs and spread over your flat paddle-shaped hands. As your arms swell with fluid, you're slowly able to regain control. After a few fumbles, you're able to adapt to using them and being able to pick up items with ease, and maybe even play the piano. Your legs quiver, ripple, and give way as everything from your femurs on down are reabsorbed into your body. You collapse to the ground with a heavy thud and fight to stay calm as your each legs split into a quartet of tentacles that fuse into your hips. After a bit of stumbling and unceremonious flopping about, you're able to right yourself. Once you get the hang of it, it's not that bad";
	now skin change entry is "[squidskinchange]";
	now ass change entry is "your ass shrinks and tightens, almost disappearing into the natural contours of your body";
	now cock change entry is "your cock starts to wiggle and squirm almost like it has a mind of its own. A large tapered bulb grows at the end while your shaft gains a rough, ridged texture. It wiggles around, almost like it's waving hello. Not wanting to be rude, you wave back";
	now str entry is 12;
	now dex entry is 15;
	now sta entry is 12;
	now per entry is 15;
	now int entry is 16;
	now cha entry is 10;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 32; [ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4; [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Beach"; [ Current options are 'Outside' and 'Mall' Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 1; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;
	now cunt width entry is 5;
	now libido entry is 33; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]soft[or]flexible[or]boneless[at random]";
	now type entry is "[one of]cephalopod[or]squid-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Squid":
		if humanity of player is less than 10:
			say "     With thoughts of the cool waters of the ocean, you head back to the beach area as your infection starts rewriting your mind. Discarding you pack, you slide your sleek body into the water and swim out to find the other squids. You join their underwater school, frolicking and fondling one another happily under the waves[if cocks of player > 0]. Having a cock, you are quite popular with the cute girls[end if].";
		else:
			say "     Being partially aquatic now, the military keep you in a special holding facility for those with aquatic transformations. There is some interest in you and the others and they get several marine biologists to study your group. Several members of the military speak to you as well. While several of the others are swayed and recruited by the military, you have little interests in their offers and are happy just to swim around and enjoy your sensitive, new form. You do make friends with one of the marine biologists though, and she helps you make contact to join a marine park's staff after your release. Given your extensive transformation, you are given work as part of the cleaning staff. Able to clean the tanks and scrub the walls from within while filled, that is your primary task. You don't mind though, as it lets you [']make friends['] with all the lovely whales and dolphins after hours.";

Squid for FS ends here.
