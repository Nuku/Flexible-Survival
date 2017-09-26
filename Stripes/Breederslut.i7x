Version 1 of Breederslut by Stripes begins here.
[ Version 1.1 - Heat scene w/Dominick added ]

"Adds a Breederslut infection for use with Dominick."

Section 1 - Monster Responses

when play begins:
	add { "Breederslut" } to infections of furry;
	add { "Breederslut" } to infections of Caninelist; [list of canine infections]
	add { "Breederslut" } to infections of Knotlist; [list of cock infections with a knot]

to say breederslutdesc:
	say "ERROR-Breederslut - You should not be able to encounter them.";

to say losetobreederslut:
	say "ERROR-Breederslut - You should not be able to encounter them.";

to say beatthebreederslut:
	say "ERROR-Breederslut - You should not be able to encounter them.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Breederslut";
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]";
	now defeated entry is "[beatthebreederslut]";
	now victory entry is "[losetobreederslut]";
	now desc entry is "[breederslutdesc]";
	now face entry is "that of a cute doggy with a mid-length muzzle, pointed ears and a happy if vapid expression";
	now body entry is "quite short, not even five feet tall, and with a cute, feminine build. As a Shiba Inu, you've got an overall canine frame and, while bipedal, are quite comfortable moving down onto all fours (for presenting yourself). You limbs are short and end in partially paw-like hands. Just above your crotch, you have the word [']fucktoy['] tattooed there, always showing through any fur or scales you might have";
	now skin entry is "golden brown and snowy white fur now covers your";
	now tail entry is "You have a short, fluffy tail that curls up cutely.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "pleasant tingles spread across your face. Your mouth distorts, forming a cute little muzzle with a happy doggy smile on it. Your eyes shift position and your ears become short and pointed. By the time the transition is over, you're left with the head of a very cute Shiba Inu atop your shoulders";
	now body change entry is "you start to transform. Shivers of pleasure run through you as your body is changed, becoming small and canine. By the time it's done, you've become an cute and feminine Shiba Inu anthro. After a momentary pause, fresh pinpricks can be felt just above your crotch. Looking down, you can see a tattoo-like marking saying [']fucktoy['] appear there";
	now skin change entry is "pinpricks spread across your skin. From these points, a fluffy coat of fur forms. It's a lovely shade of golden brown across your limbs, shoulders and back, and a snowy white across your chest and neck and chin";
	now ass change entry is "your lower spine tingles. A short, fluffy tail forms above your ass, curling up cutely so as to never hide your cute tush";
	now cock change entry is "takes on a markedly canine shape. It keeps a soft, pinkish flesh tone while gaining a sheath as well. And while it strangely appealing to you, you feel no immediate desire to put your new doggy dong to the test";
	now str entry is 8;
	now dex entry is 8;
	now sta entry is 8;
	now per entry is 8;
	now int entry is 8;
	now cha entry is 16;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 15; [ The monster's starting hit points. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 12; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 16;
	now cunt width entry is 12;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "cute";
	now type entry is "[one of]canine[or]doggy[or]doge[or]pedigree[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Breederslut"	400	400	"[bsheat_trigger]"	"puffy and dripping doggy mound"	"[bsheat_start]"	"[bsheat_end]"	"[bsheat]"	true	false	""

to say bsheat_trigger:
	say "     You feel a growing warmth in your lower belly that makes you moan. As it grows stronger, you drop to your knees, feeling your pussy quiver and clench. Your crotch grows damp with pussy juices[if cunt length of player < 8 or cunt width of player < 6] as it stretches and swells wider[end if] with a desire to breed. Thoughts of [if hp of Dominick > 0]Dominick[otherwise]some studly canine you can't quite picture[end if] pounding you full of puppies fill your idle thoughts as you go into heat.";
	if cunt length of player < 8, increase cunt length of player by 1;
	if cunt width of player < 6, increase cunt width of player by 1;

to say bsheat_start:
	if libido of player < 45, now libido of player is ( 45 + ( libido of player * 3 ) ) / 4;

to say bsheat_end:
	if libido of player > 20:
		decrease libido of player by 10;
		if libido of player < 20, now libido of player is 20;

to say bsheat:
	increase libido of player by 3;
	if Dominick is visible and ( lastfuck of Dominick - turns ) >= 8 and a random chance of libido of player in 150 succeeds:
		setmonster "Breederslut";
		choose row monster from the table of random critters;
		LineBreak;
		say "     Looking over at Dominick, you feel another tremble of excitement strike your loins. You start to pant, suddenly feeling very hot - especially between your legs. The sexy husky's nose sniffs the air, turning towards you with a confident grin. His cock twitches and dribbles a strand of pre onto the floor. With your eyes drawn to that meaty red pole, your insides flutter again with heated desire.";
		say "     'Come here, you horny thing,' Dom says, getting up from his seat. 'I know you want it.' His canine shaft, now fully erect, stands proud and ready for you. With the heat only growing stronger in your loins, you obey and head over to him. Moving onto all fours, you present yourself to him with a needy whine.";
		WaitLineBreak;
		say "     Dom places his paws on your rump and gives your ass a squeeze. 'That's a good [if cocks of player > 0]wannabe-[end if]bitch,' he says, kneeling down to sniff your puffy dog-cunt. His hot, wet breath fans across your hot, wet folds moments before he gives your dripping cunt a nice, long lick. 'Oh, how I love that taste. Nothing like a bitch in heat to get a stud hard. So hot and ready for a belly full of my puppies. You'd like that, wouldn't you?' he pants in your ear even as he mounts you and sinks his canine cock into your trembling tunnel. All you can do in moan in response, your heat-addled mind loving the thought of your belly getting filled by a litter of his pups.";
		say "     He pounds your juicy cunt with considerable zeal, his cock throbbing inside you all the while. You imagine his doggy dick is drooling precum laced with sperm, a chance to become pregnant even now. Not that you want it to stop; your body simply aches for a thorough fucking. You push back into his thrusts, whining and panting like the bitch in heat you are. He takes the nape of your neck in his jaws and growls his dominance and ownership of you.";
		WaitLineBreak;
		say "     He ruts you like what feels like a long time, having pushed you to several short orgasms. But now a big one is building even as his panting grows heavier. His knot bulges larger, tying the two of you together, ensuring there will be no escape from your deliciously decadent fate. Knowing he's getting close as well turns you on all the more, your overheated womb demanding his gooey load to put out the fiery need burning inside it by this point. And when it does come, it is a powerful blast of cum after another, painting your vagina and leaking into your womb to claim your pups.";
		say "     As his orgasm wanes, his big knot leaves you tied to him and keeping his hot semen inside you. But rather than stop there, he only pauses briefly before resuming his thrusting, pumping that tightly held cock of his inside the clutching grip of your sloppy cunt. You start to moan and pant, your need and pleasure growing again as he fucks you again. And again. And again. You end up breed several more times before he's finally done and allows himself to stop and let his knot go down enough to pull out of you. A cascade of excess canine cum flows from your stretched and well-used cunny, pooling on the floor as you lay in the warm, sticky mess with an expression of dazed contentment on your face.";
		impregnate with "Breederslut";
		now libido of player is libido of player / 2;
		now lastfuck of Dominick is turns;


Section 8 - Definitions

Definition: a person is breederslutfaced:
	if the facename of the player is "Breederslut", yes;
	no;

Definition: a person is breederslutskinned:
	if the skinname of the player is "Breederslut", yes;
	no;

Definition: a person is breederslutbodied:
	if the bodyname of the player is "Breederslut", yes;
	no;

Definition: a person is breederslutcocked:
	if the cockname of the player is "Breederslut", yes;
	no;

Definition: a person is breedersluttailed:
	if the tailname of the player is "Breederslut", yes;
	no;


Section 9 - Endings

[
when play ends:
	if bodyname of player is "Breederslut":
		if humanity of player is less than 10:
			if hp of Dominick is 0:
				say "***never met Dominick.";
			else:
				say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Breederslut ends here.
