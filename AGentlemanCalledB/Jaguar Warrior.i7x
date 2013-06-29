Jaguar Warrior by AGentlemanCalledB begins here.

"Adds a Jaguar Warrior creature to Flexible Survivals Wandering Monsters table"
[Version 1 - Base critter + loss sex]


Section 1 - Monster Responses

when play begins:
	add { "Jaguar Warrior" } to infections of girl;
	add { "Jaguar Warrior" } to infections of guy;
	add { "Jaguar Warrior" } to infections of furry;
	add { "Jaguar Warrior" } to infections of Felinelist;

JaguarWarriorVar is a number that varies. [to be replace with npc's HP variable in future versions.]

to say losetoJaguarWarrior:
	say      "[if hp of player > 0]Unable to resist[otherwise]Beaten by[end if] the jaguar warrior, you are helpless as he strips you of your gear. [run paragraph on]";
	if "more anal" is listed in feats of player and a random chance of 1 in 3 succeeds:
		say "[JagWarVic_Anal]";
	otherwise if cunts of player > 0 and a random chance of 2 in 3 succeeds:
		say "[JagWarVic_Vag]";
	otherwise if "less anal" is not listed in feats of player and a random chance of 1 in 4 succeeds:
		say "[JagWarVic_Anal]";
	otherwise:
		say "[JagWarVic_Oral]";

to say beattheJaguarWarrior:
	say "     Just as it seems you're gaining the upper hand on the large jungle cat, he slips past you with an agile maneuver and retreats into the depths of the museum.";

to say JaguarWarriordesc:
	if JaguarWarriorVar is 0 and inasituation is false:
		say "     As you wander the halls of the museum, your attention is drawn to a large broken display case. What remains of the exhibit appears to document a powerful Aztec military unit known as jaguar warriors. As you wonder where the contents of the display case might have ended up you hear a low rumbling growl behind you, turning quickly to face this potential threat you [run paragraph on]";
		now JaguarWarriorVar is 1;
	otherwise if showlocale is true:
		say "     As you wander the halls of the museum [one of]you hear a low rumbling growl behind you, turning quickly to face this potential threat you [or]you turn a corner and [or]you spot a figure moving towards you down the long corridor, once the creature is close enough to make out the details you [at random][run paragraph on]";
	otherwise:
		say "     You [run paragraph on]";
	say "find yourself facing a powerful looking feline warrior, with the distinctive markings of a jaguar. He carriers an ornate feathered shield and a dangerous looking sword crafted from a stick with with several sharp looking black stones embedded in it. Atop the jaguar's head is an elaborate headdress modeled after the large feline now wearing it.";
	say "     As the jaguar readies his weapon and moves forward you see the barbed tip of his feline cock poking free of it's sheath, making his intent clear as he charges forward.";

to say JagWarVic_Vag:
	say "You groan as the powerful jungle cat pushes you to the ground roughly, leaving you starring up at the large cat and his thick feline member as he approaches your supine form. Unceremoniously he kicks your legs apart, exposing your damp [cunt size desc of player] cunt to him as he towers above you.";
	say "     The big kitty rumbles in anticipation as he lowers himself atop you, his barbed member scraping along your thighs as he leans forward to tease your [if breasts of player > 0]nipples[otherwise]neck[end if] with his rough feline tongue. A shiver runs through you as you feel the tip of his feline shaft stroke along your outer folds. After one final playful nip the jaguar finally begins sinking his cock into your damp cunt, rumbling in satisfaction as he does. You can't help but moan as you feel the feline barbs that adorn his shaft sliding across your tender flesh, gently tickling your inner walls. Once his entire length is hilted within you the jaguar leans in close[one of], running a paw along your side[or], licking your cheek[or][at random] before pressing his muzzle to your lips and kissing you deeply.";
	say "     Pain lances through you as he begins withdrawing his length from your body, the sharp feline barbs scraping and tearing your soft inner walls, but your cries are muffled by the muzzle locked to your lips and the rough feline tongue wrestling with your own. Even before you've recovered from his agonizing withdrawl, the jaguar begins thrusting into you again, the pain fading back into pleasure as his thick member once again delves into your depths. Your mind quickly begins to be overwhelmed by the alternating pleasure and pain, with each thrust of the jaguar's barbed cock the two sensations seem to bleed more and more into each other until the constant stimulation pushes you, and your companion, to your limits.";
	say "     With a triumphant roar the jaguar warrior makes one final drive into you, forcing his entire length into your exhausted body before unleashing his thick feline seed into your womb. The sensation of this final thrust and the warm sticky seed spilling into your body pushes you over the edge as well, and you cry out in a yowl of ecstasy as your spasming cunt clamps down around the twitching barbed member buried within you, your feminine juices spilling out around him as your soak both your crotches with womanly nectars.";
	say "     Sated, the jaguar finally pulls his still twitching cock from your body in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. As you lay on the floor still lost in the afterglow of your powerful climax the powerful male stalks off into the museum, leaving you to recover on your own.";

to say JagWarVic_Anal:
	say "You wince as the jaguar warrior grips your shoulder tightly, pressing his sharp claws into your flesh as he forces you to your knees before he begins pacing around you slowly. Soon you feel his large, heavy footpaw pressing against the middle of your back, forcing you forwards to your hands and knees as you feel splatters of his warm pre dripping onto your back.";
	say "     A shiver runs through you as you feel the powerful feline's paws at your hips, his claws once again finding purchase in your flesh as he roughly positions your ass aligned with his thick member. The big kitty rumbles in satisfaction as he traces his barbed cock along your ass, leaving great streaks of his ample pre along your backside before he finally begins sinking his cock into you.You can't help but moan as you feel the feline barbs that adorn his shaft sliding across your tender flesh, gently tickling your inner walls as he pushes deeper into your bowels. However, the almost pleasant sensation is brought to a quick halt when the jaguar finally stops his forward motion, pain lances through you as he begins withdrawing his length from your body, the sharp feline barbs scraping and tearing your soft inner walls, causing you to cry out in pain.";
	say "     Even before you've recovered from his agonizing withdrawl, the jaguar begins thrusting into you again, the pain fading back into pleasure as his thick member once again delves into your depths. Your mind quickly begins to be overwhelmed by the alternating pleasure and pain, with each thrust of the jaguar's barbed cock the two sensations seem to bleed more and more into eachother until the constant stimulation pushes you, and your companion, to your limits.";
	say "     With a triumphant roar the jaguar warrior makes one final drive into you, forcing his entire length into your exhausted body before unleashing his thick feline seed into your bowels[if cocks of player > 0 and cunts of player > 0] while your own seed splatters across the ground and feminine juices soak your thighs[otherwise if cocks of player > 0],  while your own seed splatters across the ground below you[otherwise if cunts of player > 0] while your own climax soaks your thighs in feminine juices[end if].  Sated, the jaguar finally pulls his still twitching cock from your body in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. You slump to the floor as the powerful male releases you, leaving you to recover from the encounter as he stalks off into the museum.";

to say JagWarVic_Oral:
	choose row monster from the table of random critters;
	say "You wince as the jaguar warrior grips your shoulder tightly, pressing his sharp claws into your flesh as he forces you to your knees while taking hold of his thick feline member with his free hand. You soon find yourself level with the jungle cat's impressive member, already erect and dripping with pre after your [if monsterhp < ( hp entry / 3 ) ] drawn out[otherwise if monsterhp < ( hp entry / 2 )][otherwise]brief[end if] struggle. A shiver runs through you as you eye the barbed feline shaft, quickly moving towards your face as the jaguar moves closer.";
	say "     Having no other choice, you open your mouth wide as the jaguar warrior grips the back of your head and pulls you forward, driving his length down your throat roughly. You feel the feline barbs that adorn his shaft slide easily across your flesh until he pauses his forward motion. Ripples of pain lance through you as the jaguar pulls back slowly, the pointed spines of his feline cock scraping agonizingly across your tender flesh as he rumbles in satisfaction. As the tip of his length reaches your lips, you try to pull your mouth away, until you feel the jaguar's grip tighten and the threatening presence of his claws at the back of your skull.";
	say "     When the Jaguar once again drives his length into you, you begin licking and sucking at the engorged length, working through the pain to get the big kitty off so he may finally release you. As the big kitty's rhythmic thrusting begins to increase you begin to lose track of the painful scraping barbs as your attention is focused more and more on pleasing the powerful male. Soon you once again feel his claws at the back of your head, griping you tightly as he makes his final powerful thrusts into your wanton mouth before driving his length into you with a triumphant roar, you [one of]work the barbed shaft between your tongue and palette[or]suck as hard as you can on the barbed intruder[or]tease the large feline's swollen balls while working your tongue over his length[at random] as he drains his balls into you, milking the big kitty for every drop of cream you can get.";
	say "     Sated, the jaguar finally pulls his still twitching cock from your mouth in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. You slump to the floor as the powerful male releases your head, leaving you to recover from the encounter as he stalks off into the museum.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Jaguar Warrior";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The jaguar warrior [one of]raises his shield and charges forward, knocking you off balance as he smashes it into your chest[or]strikes at you with his obsidian edges sword[or]knocks your feet out from under you with a sweeping low kick[or]knocks you off balance with his shield before following up with a quick sword strike[at random]!";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheJaguarWarrior]";				[ Text when monster loses.  Change 'Jaguar' as above. ]
	now victory entry is "[losetoJaguarWarrior]";					[ Text when monster wins.  Change 'Jaguar' as above. ]
	now desc entry is "[JaguarWarriordesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "that of an attractive feline";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "sleek and [if cunts of player > 0]feminine, with the alluring curves of a beautiful jungle cat, and claws to match[otherwise]agile, with the lithe build of a jungle cat, and claws to match[end if]";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "golden yellow fur, with elegant black rosettes and spots covering your";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a tight, sexy bottom, accentuated by your elegant jaguar tail lashing back and forth as you move.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]red[or]barbed[or]spined[or]feline[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "everything goes fuzzy, your senses struggling to keep up as your head shifts to that of of an attractive jungle cat";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it shifts to a feline shape, gaining the sleek, alluring form of a beautiful jungle cat";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "golden yellow fur spreads across your body, adorned by elegant black rosettes and spots";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes tight and sexy. Your balance seems to shift slightly as you gain a long spotted jaguar's tail, which lashes back and forth excitedly even as it helps you maintain a sexy, graceful stride";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it shifts to a feline form, complete with menacing looking barbs";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 17;			[ These are now the creature's stats... ]
	now dex entry is 18;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 95;			[ The monster's starting hit points. ]
	now lev entry is 13;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 15;			[ Monster's average damage when attacking. ]
	now area entry is "Museum";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 3;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 4;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]lithe[or]alluring[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "feline";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


[Section 3 - Endings

when play ends:
	if bodyname of player is "Jaguar":
		if humanity of player is less than 10:
			say "     You succumb to your Jaguar infection.";
		otherwise:
			say "     You survive, but were infected by the Jaguar.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Jaguar Warrior ends here.
