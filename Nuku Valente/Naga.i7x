Version 1 of Naga by Nuku Valente begins here.
[Version 1 -- Taken from Story.ni file and given dedicated file. Commissioned by AsureaSkie.]

"Adds a Naga creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Naga" } to infections of guy;

to say losetonaga:
	say "[first time]The snake laughs, like a dry hiss, tongue flicking as it moves over your defeated form, 'You should go back to where you came from, human, your kind is finished in this city. Remember it or you will be punished fresh.'[only][one of]The snake prods you with its club to ensure the fight has left you before slithering off, seemingly satisfied with its victory.[or]The great naga throws its coils about you in a warm, soft, crushing embrace. Breathing becomes hard as it constricts. Consciousness fades to black. When you awaken, the snake man has departed.[or]With a cruel sounding laugh, the naga grabs you and throws you over a coil, wrenching free your clothes to expose your bottom to it. It coils about you, warm and trapping, as it becomes a he, twice so, two thick human-like shafts sliding free of some internal sheath. Intent on punishment over breeding, he grabs you to pull you back as he thrusts firmly into your back door, lancing you on the thick tool and rocking without concern for your comfort.[line break][line break]Your ass sends guilty pangs of pain and pleasure through you as the snake keeps your wriggling form under control, pounding eagerly at your [skin of player] flesh. The tool within you swells suddenly, then begins to explode, filling your bowels with thick gouts of snake seed. Satisfied, the snake rolls you off of himself to the ground, and slithers away.[mimpregchance][or]The serpentine creature entwines you in its coils, leaving only your head free to gasp for breath.  As its tail tightens around you, its scaley hide rubs across your [bodydesc of player] body.  The naga chuckles darkly at your feeble groaning and moves in closer, showing off its twin human-like cocks, erect and dripping with precum.  Seeing its intent, you close your mouth tightly, but another crushing constriction causes you to cry out, leaving your mouth wide to be stuffed by the twin erections.  The taste of its precum arouses you and you are soon licking and sucking on them despite yourself.  At first, this is rather reluctant, but soon you're going at it eagerly, even enthusiastically, your mouth watering at the taste of the cocks filling your senses.[line break]The throbbing shafts stuffing your mouth soon throb and pulse, releasing the creature's copious, runny semen, filling your mouth to overflowing, unable to swallow because of its crushing coils.  After chuckling at your plight, it relaxes its grip and you gasp for breath, gulping down its musky load.  Dropping you to the ground now that it's done with you, it slithers off, leaving you weak and coughing as you try to recover from the crushing blow job you've been made to endure.[at random]";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Naga";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The snake swipes at you with its pipe with alarming accuracy.[or]With a loud hiss, the snake lashes at you, sinking a few fangs painfully into your [bodydesc of player] body.[or]The snake lashes out with its tail, striking you solidly with the heavy mass.[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[one of]The snake staggers from its many wounds and collapses to the ground, unmoving.[or]Your last blow draws a shuddering hiss before the snake falls to the ground and ceases fighting.[or]Detecting the fight lost, the snake suddenly flees on quick scales, abandoning the struggle.[at random]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetonaga]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "Human and snake blended together in an intimidating mixture. It has [one of]brown and black[or]bright red and yellow[or]grey and tan[at random] scales, fine and soft looking. Two muscular arms are its only limbs, if one discounts the great tail that makes up most of its body. Clenched in its right hand is a pipe. A crude, but likely effective, makeshift weapon. Of course, it also has great jaws that likely contain sharp, possible venomous, teeth. Its human torso is well muscled and sleek, well built all around and lacking in blemish. Its head and face is entirely that of a huge snake, staring unblinkingly and tasting the air with flickering forked tongue.";						[ Description of the creature when you encounter it. ]
	now face entry is "a snake's head, with unblinking eyes and huge venomous fangs. Your [skinname of player] hide is sleek across your majestic hood, flaring wide when excited or worked up, framing your head from behind your face";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "extremely long. You can feel the powerful rings of your muscles drawing you forward quietly across the ground. It almost feels like you're floating along, moving with a sublime confidence in your snake like body";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]scaly[or]softly scaled[or]scaled[at random]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]human[or]normal[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "you feel your [skin of player] skin stretching out as your skull flattens out into a snake-like face. Your eyes blink for the last time before the lids become clear. You find you can now taste the air";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your legs snap together, almost toppling you as they flow together quickly. Strange numbing pleasure radiates down along your torso as you can feel your spine extending down along your fused legs, then beyond, forming a powerful tube-like body that trails along behind you";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft [one of]brown and black[or]bright red and yellow[or]gray and tan[at random] scales begin to spread quickly from your palms. As they settle, soft itching warmth follows, then fades, leaving you with a new hide to admire";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel something settle in your lower torso, but nothing physically changes that you can see";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock becomes achingly erect for a moment before settling down, seemingly unchanged.";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 14;			[ These are now the creature's stats... ]
	now dex entry is 10;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 8;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 25;			[ The monster's starting hit points. ]
	now lev entry is 3;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 6;			[ Monster's average damage when attacking. ]
	now area entry is "Mall";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 2;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 16;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 20;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]serpentine[or]legless[or]altered[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "serpentine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "snakenaga";		[ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Section 3 - Endings

when play ends:
	if humanity of player < 10:
		if bodyname of player is "Naga":
			say "     Losing your mind to the infection, you find yourself slithering down the ruined streets of the city until you make your way to a dilapidated building that's more intact than it first seems.  Making the undamaged basement into your new den, you spend the next few weeks gathering as much food as you can before going out and taking captive one of the soldiers who just so happened to have been prowling around your den.";
			if cocks of player > 0:
				say "     Curling around the other with your long serpentine form, you inject your venom into the struggling male - his whimpers and pleas annoying you to no end - and then breed your increasingly complacent victim for days to come.  Flushing out his humanity with your continuous mating, your find your efforts bearing fruits as, almost a week later, the former soldier's skin begins to harden as his incoming scales push out from hisr once flabby skin.";
				say "     Once the rest of the military comes through the city to clean up, you and your fellow naga make your way from your home to wait for soldiers to leave and then return to reclaim your rightful den once they do[if a random chance of 1 in 2 succeeds].  During your period of hiding, your mate manages to snag a confused soldier left left behind by his unit for the two of you to play with, making a delightful prize to celebrate the return to your den[end if].";
			otherwise if cunts of player > 0:
				say "     It takes a few injections of your venom to subdue the other, but once the soldier has become complacent, you spend the next few weeks getting yourself stuffed full by the punch-drunk male as you constantly force him to fill up your achingly empty vent[if the player is impreg_ok].  It takes time, but soon you find yourself heavy with a large clutch of eggs, but by that time your new naga mate doesn't need any coercion to continue filling you with his seed[otherwise]The soldier's seed never takes, but soon it doesn't matter as you and your new naga mate spend hours into the day curled around each other as he stuffs you full with his thick, serpentine seed[end if].";
				say "     Once the rest of the military comes through the city to clean up, you and your fellow naga make your way from your home to wait for soldiers to leave and then return to reclaim your rightful den once they do[if a random chance of 1 in 2 succeeds].  During your period of hiding, your mate manages to snag a confused soldier left left behind by his unit for the two of you to play with, making a delightful prize to celebrate the return to your den[end if].";
			otherwise:
				say "     Curling around the other with your long serpentine form, you inject your venom into the struggling male - his whimpers and pleas annoying you to no end - and then have your increasingly complacent victim breed your anal vent days to come.  Flushing out his humanity with your continuous contact, your find your efforts bearing fruits as, almost a week later, the former soldier's skin begins to harden as his incoming scales push out from hisr once flabby skin.";
				say "     Once the rest of the military comes through the city to clean up, you and your fellow naga make your way from your home to wait for soldiers to leave and then return to reclaim your rightful den once they do[if a random chance of 1 in 2 succeeds].  During your period of hiding, your mate manages to snag a confused soldier left behind by his unit for the two of you to play with, making a delightful prize to celebrate the return to your den[end if].";

[ Edit this to have the correct creature name as well]

Naga ends here.
