Jaguar Warrior by AGentlemanCalledB begins here.

"Adds a Jaguar Warrior creature to Flexible Survival's Wandering Monsters table"
[Version 2.3 - Base sex scenes, interaction with select bunker-able NPCs, Snow finished]

Section 1 - Monster Responses

when play begins:
	add { "Jaguar Warrior" } to infections of girl;
	add { "Jaguar Warrior" } to infections of guy;
	add { "Jaguar Warrior" } to infections of furry;
	add { "Jaguar Warrior" } to infections of Felinelist;

hoodequipped is a number that varies.

to say losetoJaguarWarrior:
	say      "[if hp of player > 0]Unable to resist[otherwise]Beaten by[end if] the jaguar warrior, you are helpless as he strips you of your gear. [run paragraph on]";
	if "more anal" is listed in feats of player and a random chance of 1 in 3 succeeds:
		say "[JagWarVic_Anal][mimpregchance]";
	otherwise if cunts of player > 0 and a random chance of 2 in 3 succeeds:
		say "[JagWarVic_Vag][impregchance]";
	otherwise if "less anal" is not listed in feats of player and a random chance of 1 in 4 succeeds:
		say "[JagWarVic_Anal][mimpregchance]";
	otherwise:
		say "[JagWarVic_Oral]";

to say beattheJaguarWarrior:
	if hp of Tehuantl is 1:
		say "     Just as it seems you're gaining the upper hand on the large jungle cat, he slips past you with an agile maneuver and retreats into the depths of the museum.";
		now hp of Tehuantl is 2;
	otherwise if hp of Tehuantl is 2:
		say "     As you're once again gaining the upper hand over the feline warrior, he tries to slip away once again, but you're ready for it this time. You attempt to block his path, but he manages to slip by you when he [one of]knocks you off balance with his shield[or]surprises you by leaping over your head[or]slides under your grasp[at random].";
		if a random chance of 1 in 3 succeeds:
			now hp of Tehuantl is 3;
	otherwise if hp of Tehuantl is 3:
		say "     As you're once again gaining the upper hand over the feline warrior, he tries to slip away once again, but you're ready for it this time. Cutting him off as he attempts to escape, you make a diving tackle towards him, the jaguar stumbles and falls as you nearly catch him, grabbing the back of his shawl as he makes his escape. He quickly scrambles to his feet and rolls away. He looks back at you holding his headdress for a moment, as if considering trying to get it back, but with a shake of his head he turns and slips back into the twisting museum corridors.";
		now hp of Tehuantl is 4;
		now carried of Jaguar Headdress is 1;
	otherwise if hp of Tehuantl is 4:
		if hoodequipped is 1:
			say "[JaguarWarriorCaptured]";
		otherwise:
			say "     Beaten, the jaguar warrior is sent reeling with your final blow, stumbling backwards and falling to the ground. With one last nervous glance, he rolls over to his hands and feet, scrambling upright before retreating back into the twisting museum corridors. As you watch him once again slip away, you are reminded of the strange headdress you managed to take from him before...";
	otherwise:
		say "Error! hp of Tehuantl = [hp of Tehuantl], You shouldn't be able to encounter me right now! Please report this on the forums.";

to say JaguarWarriordesc:
	if hp of Tehuantl is 0 and inasituation is false:
		say "     As you wander the halls of the museum, your attention is drawn to a large broken display case. What remains of the exhibit appears to document a powerful Aztec military unit known as jaguar warriors. As you wonder where the contents of the display case might have ended up you hear a low rumbling growl behind you, turning quickly to face this potential threat you [run paragraph on]";
		now hp of Tehuantl is 1;
	otherwise if showlocale is true:
		say "     As you wander the halls of the museum [one of]you hear a low rumbling growl behind you, turning quickly to face this potential threat you [or]you turn a corner and [or]you spot a figure moving towards you down the long corridor, once the creature is close enough to make out the details you [at random][run paragraph on]";
	otherwise:
		say "     You [run paragraph on]";
	say "find yourself facing a powerful looking feline warrior, with the distinctive markings of a jaguar. He carriers an ornate feathered shield and a dangerous looking sword crafted from a stick with several sharp looking black stones embedded in it. [if hp of Tehuantl < 4] Atop the jaguar's head is an elaborate headdress modeled after the large feline now wearing it[end if][if hoodequipped is 1]Spotting the jaguar headdress you're wearing, the warrior shifts slightly, his stance becoming slightly more defensive as if intimidated by your garb[end if].";
	say "     As the jaguar readies his weapon and moves forward you see the barbed tip of his feline cock poking free of its sheath, making his intent clear as he charges forward.";

to say JagWarVic_Vag:
	say "You groan as the powerful jungle cat pushes you to the ground roughly, leaving you staring up at the large cat and his thick feline member as he approaches your supine form. Unceremoniously he kicks your legs apart, exposing your damp [cunt size desc of player] cunt to him as he towers above you.";
	say "     The big kitty rumbles in anticipation as he lowers himself atop you, his barbed member scraping along your thighs as he leans forward to tease your [if breasts of player > 0]nipples[otherwise]neck[end if] with his rough feline tongue. A shiver runs through you as you feel the tip of his feline shaft stroke along your outer folds. After one final playful nip the jaguar finally begins sinking his cock into your damp cunt, rumbling in satisfaction as he does. You can't help but moan as you feel the feline barbs that adorn his shaft sliding across your tender flesh, gently tickling your inner walls. Once his entire length is hilted within you the jaguar leans in close[one of], running a paw along your side[or], licking your cheek[or][at random] before pressing his muzzle to your lips and kissing you deeply.";
	say "     Pain lances through you as he begins withdrawing his length from your body, the sharp feline barbs scraping and tearing your soft inner walls, but your cries are muffled by the muzzle locked to your lips and the rough feline tongue wrestling with your own. Even before you've recovered from his agonizing withdrawal, the jaguar begins thrusting into you again, the pain fading back into pleasure as his thick member once again delves into your depths. Your mind quickly begins to be overwhelmed by the alternating pleasure and pain, with each thrust of the jaguar's barbed cock the two sensations seem to bleed more and more into each other until the constant stimulation pushes you, and your companion, to your limits.";
	say "     With a triumphant roar the jaguar warrior makes one final drive into you, forcing his entire length into your exhausted body before unleashing his thick feline seed into your womb. The sensation of this final thrust and the warm sticky seed spilling into your body pushes you over the edge as well, and you cry out in a yowl of ecstasy as your spasming cunt clamps down around the twitching barbed member buried within you, your feminine juices spilling out around him as your soak both your crotches with womanly nectars.";
	say "     Sated, the jaguar finally pulls his still twitching cock from your body in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. As you lay on the floor still lost in the afterglow of your powerful climax the powerful male stalks off into the museum, leaving you to recover on your own.";

to say JagWarVic_Anal:
	say "You wince as the jaguar warrior grips your shoulder tightly, pressing his sharp claws into your flesh as he forces you to your knees before he begins pacing around you slowly. Soon you feel his large, heavy footpaw pressing against the middle of your back, forcing you forwards to your hands and knees as you feel splatters of his warm pre dripping onto your back.";
	say "     A shiver runs through you as you feel the powerful feline's paws at your hips, his claws once again finding purchase in your flesh as he roughly positions your ass aligned with his thick member. The big kitty rumbles in satisfaction as he traces his barbed cock along your ass, leaving great streaks of his ample pre along your backside before he finally begins sinking his cock into you.You can't help but moan as you feel the feline barbs that adorn his shaft sliding across your tender flesh, gently tickling your inner walls as he pushes deeper into your bowels. However, the almost pleasant sensation is brought to a quick halt when the jaguar finally stops his forward motion, pain lances through you as he begins withdrawing his length from your body, the sharp feline barbs scraping and tearing your soft inner walls, causing you to cry out in pain.";
	say "     Even before you've recovered from his agonizing withdrawal, the jaguar begins thrusting into you again, the pain fading back into pleasure as his thick member once again delves into your depths. Your mind quickly begins to be overwhelmed by the alternating pleasure and pain, with each thrust of the jaguar's barbed cock the two sensations seem to bleed more and more into each other until the constant stimulation pushes you, and your companion, to your limits.";
	say "     With a triumphant roar the jaguar warrior makes one final drive into you, forcing his entire length into your exhausted body before unleashing his thick feline seed into your bowels[if cocks of player > 0 and cunts of player > 0] while your own seed splatters across the ground and feminine juices soak your thighs[otherwise if cocks of player > 0],  while your own seed splatters across the ground below you[otherwise if cunts of player > 0] while your own climax soaks your thighs in feminine juices[end if].  Sated, the jaguar finally pulls his still twitching cock from your body in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. You slump to the floor as the powerful male releases you, leaving you to recover from the encounter as he stalks off into the museum.";

to say JagWarVic_Oral:
	choose row monster from the table of random critters;
	say "You wince as the jaguar warrior grips your shoulder tightly, pressing his sharp claws into your flesh as he forces you to your knees while taking hold of his thick feline member with his free hand. You soon find yourself level with the jungle cat's impressive member, already erect and dripping with pre after your [if monsterhp < ( hp entry / 3 ) ] drawn out[otherwise if monsterhp < ( hp entry / 2 )][otherwise]brief[end if] struggle. A shiver runs through you as you eye the barbed feline shaft, quickly moving towards your face as the jaguar moves closer.";
	say "     Having no other choice, you open your mouth wide as the jaguar warrior grips the back of your head and pulls you forward, driving his length down your throat roughly. You feel the feline barbs that adorn his shaft slide easily across your flesh until he pauses his forward motion. Ripples of pain lance through you as the jaguar pulls back slowly, the pointed spines of his feline cock scraping agonizingly across your tender flesh as he rumbles in satisfaction. As the tip of his length reaches your lips, you try to pull your mouth away, until you feel the jaguar's grip tighten and the threatening presence of his claws at the back of your skull.";
	say "     When the Jaguar once again drives his length into you, you begin licking and sucking at the engorged length, working through the pain to get the big kitty off so he may finally release you. As the big kitty's rhythmic thrusting begins to increase you begin to lose track of the painful scraping barbs as your attention is focused more and more on pleasing the powerful male. Soon you once again feel his claws at the back of your head, griping you tightly as he makes his final powerful thrusts into your wanton mouth before driving his length into you with a triumphant roar, you [one of]work the barbed shaft between your tongue and palette[or]suck as hard as you can on the barbed intruder[or]tease the large feline's swollen balls while working your tongue over his length[at random] as he drains his balls into you, milking the big kitty for every drop of cream you can get.";
	say "     Sated, the jaguar finally pulls his still twitching cock from your mouth in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. You slump to the floor as the powerful male releases your head, leaving you to recover from the encounter as he stalks off into the museum.";

to say JaguarWarriorCaptured:
	say "     The jaguar's weapon and shield clatter to the floor as your last blow sends him reeling. He stumbles backwards, barely managing to catch himself on a nearby display case, Trembling slightly, the large feline looks you in the eyes for a moment before his head drops in submission. You feel a surge of energy rush through you as the jaguar warrior finally acknowledges you as his better and you step forward to claim your hard earned prize.";
	if cocks of player > 0:
		say "     You knock the jaguar's arm away from the display case he's supporting himself with, and watch with satisfaction as he falls to one knee. With a low rumble emanating from somewhere inside you, you step around the beaten feline and press your foot against the middle of his back, pushing him to his hands and knees. Taking hold of his spotted tail, you pull it towards his hip, exposing his tight ass to you. Even as you release it to grip his body, his tail stays cocked to the side, and you relish in the submissive gesture.";
		say "     The jaguar makes no attempt to resist as you position your [cock size desc of player] [cock of player] cock at his rear, merely releasing a whimpering mewl as you tease his outer ring with the tip of your member. You groan in pleasure as you begin pushing into his tight opening, slowly driving your entire length into the whimpering kitty beneath you. As your hips meet his ass you lean forward over your plaything, reaching around his body to grasp his cock, hard and ready despite his current situation. As you gently stroke his cock you feel the feline barbs adorning it, finding them strangely soft and pliant. After teasing the beaten kitty for a short while you begin giving him a proper fucking, gripping his hips tightly as you pound into his tight bottom relentlessly[if cockname of player is listed in infections of BarbedCocklist], delighting in his yowls of pleasure and pain as your barbed shaft pistons in and out of his tight hole[end if]. You roar in pleasure as you rapidly push yourself to climax holding the jaguar's ass tightly to your body as you unleash your [cum load size of player] load into his bowels while his own seed splatters onto the museum floor beneath him. As your climax begins to subside [if cockname of player is listed in infections of BarbedCocklist]the jaguar releases one last weak whimper as pull yourself from the his tight ass, your barbs scraping along his inner walls one last time before you allow him to fall to the floor.[otherwise]you pull yourself from the jaguar's tight ass and allow him to fall to the floor.[end if]";
		say "     You watch with curious interest as the shivering feline rolls to his back, his thick white seed still spilling from his spasming shaft. His cock is now noticeably smaller than it was when you held it in your hand. As the final spurts of his male cum drip from its tip, you watch his once virile balls pull tightly against his body before slipping inside him with an unsettling slurp, leaving behind a dripping feline cunt. The jaguar moans in pleasure as you slip a finger into the wet new opening, almost effortlessly pushing her to her first female climax as what remains of her cock shrinks away to a tiny nub at the top of her pussy.";
		say "     Eager to make use of this inviting new opening you lower yourself over the whimpering kitty, aligning your shaft with her new cunt and driving into her before her last orgasm has even subsided. You rumble happily as you pound into the newly minted female feline, taking it slowly this time as you watch the changes ripple outwards from her crotch. Her hips and ass plump out to an attractive new shape, clearly built for childbirth. Her form becomes slim and delicate as the masculine features seem to melt away, extra mass rolling up and across her body to gather at her chest. You tweak and tease her swollen puffy nipples as they swell outward, into large sumptuous breasts. The jaguar mewls up at you plaintively as the changes shift to her face, the once strong masculine features becoming gentle and feminine while long locks of dark hair flow from her head. As the changes come to their end the jaguar yowls out in ecstasy beneath you, her cunt clamping around you tightly as she reaches orgasm once again, driving you to mark her new womb with another powerful climax.";
		say "     As you roll off her exhausted form, the rumbling kitty snuggles up against you, staring up at you with a look of adoration as she slips out of consciousness. Clearly very little of the once dominant feline remains in this docile new creature and without a second thought you pull her into your arms as you rise to your feet. Your new pet nuzzles against your chest as you make your way back to the bunker.";
		if hp of Tehuantl < 8:
			say "[TameTehuantl]";
	otherwise if cunts of player > 0:
		say "     You knock the jaguar's arm away from the display case he's supporting himself with, and watch with satisfaction as he falls to one knee. With a low rumble emanating from somewhere inside you, you grip his shoulders tightly and push him to the ground, lowering yourself down on top of him in the process. Even with you nearly sitting on his chest and pinning his shoulders to the ground the jaguar looks away, unable to make eye contact, and you relish in the submissive gesture.";
		say "     When you release his shoulders as you rise to reposition yourself, the jaguar makes no attempt to escape, merely releasing a whimpering mewl as you take hold of his feline shaft, hard and ready despite his current situation. As you gently stroke his cock, your feel the feline barbs adorning it, strangely soft and pliant despite their sharp appearance. Satisfied that your plaything is ready for some fun, you position his cock just outside your [cunt size desc of player] cunt and slowly lower yourself down onto it with another rumble of delight, the feeling of his soft barbs gently teasing your inner walls only adding to the pleasant sensation. As the jaguar's entire length is hilted inside you, you lean forward once again gripping his shoulders tightly as you begin to ride his shaft roughly.";
		say "     You moan and gasp in pleasure as you rise and fall along the stimulating barbed shaft while the jaguar groans and mewls beneath you. You roar in pleasure as you rapidly push yourself to your first climax, your pussy clamping down tight around the feline member as your orgasm strikes, pushing the jaguar to climax as well. His entire form shudders beneath you as his warm load pulses into your body and you feel a strange shifting of his shaft within you. Even as your climax begins to subside, and you begin rocking your body against the shivering jaguar once again his pulsing member continues to fire spurt after spurt of his feline cum into you. Intent on riding him to a second climax you continue driving his length into your body but with each thrust you feel less and less of that intense stimulation. Fearing your plaything may be going soft on you, you slow to a stop and growl down at him, but notice something very different about the once large feline beneath you. His broad, powerful torso has slimmed to a shapely female form, as your eyes follow his body down to where your crotch meets his, you are shocked by the wide birthing hips the feline now possesses. Releasing his shoulders, you trace a finger down his slim, delicate chest to the swollen, puffy nipples cupping them gently as they swell into large sumptuous breasts before your eyes. The jaguar mewls up at you plaintively as the changes shift to his face, the once strong masculine features becoming gentle and feminine while long locks of dark hair flow from his head.";
		say "     Realizing there is only one sign of the jaguar warrior's previous male self left you slowly lift yourself from his cock, now noticeable smaller as you you once again hold it in your hand. As the final spurts of his male cum drip from it tip, you watch his once virile balls pull tightly against his body before slipping inside him with an unsettling slurp, leaving behind a dripping feline cunt. The jaguar moans in pleasure as you slip a finger into the wet new opening, almost effortlessly pushing her to her first female climax as what remains of her cock shrinks away to a tiny nub at the top of her pussy.";
		say "     The exhausted kitty rumbles at she stares up at your with adoration, clearly very little of the once dominant feline remains in this docile new creature and without a second thought your reach down for her. Your new pet nuzzles against your chest as you lift her into your arms, cradling her gently against you as you make your way back to the bunker.";
		if hp of Tehuantl < 8:
			say "[TameTehuantl]";
	otherwise:
		say "     Were you better equipped, you could probably catch the beaten feline with ease this time, but since you lack a gender of your own you allow the jaguar to collect his scattered gear and retreat back into the museum halls.";

to say TameTehuantl:
	now battleground is "void";
	increase score by 20;
	move Tehuantl to Grey Abbey 2F;
	now hp of Tehuantl is 10;
	move player to Grey Abbey 2F;
	setmonster "Jaguar Warrior";
	choose row monster from the table of random critters;
	now area entry is "nowhere";
	now TehuantlTimer is turns;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Jaguar Warrior";                   [ The creature's name as displayed and used in naming descriptions]
	now attack entry is "The jaguar warrior [one of]raises his shield and charges forward, knocking you off balance as he smashes it into your chest[or]strikes at you with his obsidian edged sword[or]knocks your feet out from under you with a sweeping low kick[or]knocks you off balance with his shield before following up with a quick sword strike[at random]!";                      [ Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheJaguarWarrior]";       [ Text when monster loses.  Change 'Jaguar' as above. ]
	now victory entry is "[losetoJaguarWarrior]";         [ Text when monster wins.  Change 'Jaguar' as above. ]
	now desc entry is "[JaguarWarriordesc]";              [ Description of the creature when you encounter it. ]
	now face entry is "that of an attractive feline";     [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "[JagBodyDesc]";                    [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "golden yellow fur, with elegant black rosettes and spots covering your";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a tight, sexy bottom, accentuated by your elegant jaguar tail lashing back and forth as you move.";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]red[or]barbed[or]spined[or]feline[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "everything goes fuzzy, your senses struggling to keep up as your head shifts to that of an attractive jungle cat";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "[JagBodyTF]";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "golden yellow fur spreads across your body, adorned by elegant black rosettes and spots";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes tight and sexy. Your balance seems to shift slightly as you gain a long spotted jaguar's tail, which lashes back and forth excitedly even as it helps you maintain a sexy, graceful stride";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it shifts to a feline form, complete with menacing looking barbs";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 17;                  [ These are now the creature's stats... ]
	now dex entry is 18;                  [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;                  [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";            [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 95;                   [ The monster's starting hit points. ]
	now lev entry is 13;                  [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 15;                 [ Monster's average damage when attacking. ]
	now area entry is "Museum";           [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;                 [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6;           [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 3;            [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;               [ Number of breasts the infection will give a player. ]
	now breast size entry is 4;           [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                 [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10;          [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;            [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;               [ Target libido the infection will rise towards. ]
	now loot entry is "";                 [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;            [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]lithe[or]alluring[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "feline";           [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;             [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;         [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;    [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;        [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";     [ Row used to designate any special combat features, "default" for standard combat. ]

to say JagBodyDesc:
	if hoodequipped is 0:
		say "sleek and [if cunts of player > 0]feminine, with the alluring curves of a beautiful jungle cat, and claws to match[otherwise]agile, with the lithe build of a jungle cat, and claws to match[end if]";
	otherwise:
		say "sleek and agile, with the build of a powerful jungle predator. Your feline form is that of a seasoned warrior, fit and toned [if cunts of player > 0]while still carrying the alluring feminine curves of an exotic[otherwise]with the striking physique of a dangerous[end if] jungle cat";

to say JagBodyTF:
	if hoodequipped is 0:
		say "it shifts to a feline shape, gaining the sleek, alluring form of a beautiful jungle cat";
	otherwise:
		say "it shifts to a feline shape, surging with power as you gain the physique of a seasoned warrior, a sleek and agile jungle predator";

Section 3 - Jaguar Headdress

Table of Game Objects(continued)
name	desc	weight	object
"Jaguar Headdress"	"A golden yellow hood and shawl, covered in the exotic rosettes and spots of a Jaguar."	4	Jaguar Headdress

Jaguar Headdress is equipment. 
It is not temporary. 
The AC of Jaguar Headdress is 12.
The effectiveness of Jaguar Headdress is 35.
The placement of Jaguar Headdress is "face". 
The descmod of Jaguar Headdress is "A golden yellow furred hood and shawl with black rosettes and spots is draped over your head.".
The slot of Jaguar Headdress is "head". 
The damagebonus of Jaguar Headdress is 1.
The dodgebonus of Jaguar Headdress is 1.

An everyturn rule:
	if Jaguar Headdress is equipped:
		if hoodequipped is 0:
			if bodyname of player is "Jaguar Warrior":
				say "     You drop to a knee as you feel a surge of heat roll through you, your feline physique shifting as the power of the jaguar headdress you're wearing ripples through your feline body. Remaking you into a powerful jungle predator.";
			setmonster "Jaguar Warrior";
			choose row monster from the table of random critters;
			if "Female Preferred" is not listed in feats of player:
				now sex entry is "Male";
			now hoodequipped is 1;
		infect "Jaguar Warrior";
	otherwise if hoodequipped is 1:
		if bodyname of player is "Jaguar Warrior":
			say "     No longer under the influence of the jaguar headdress, you feel your warrior's physique burning away, leaving your feline form lithe and more delicate as the last of its power drains out of you.";
		now hoodequipped is 0;
		setmonster "Jaguar Warrior";
		choose row monster from the table of random critters;
		if "Male Preferred" is not listed in feats of player:
			now sex entry is "Female";

Section 4 - Tehuantl

Tehuantl is a person.
The description of Tehuantl is "[Tehuantldesc]".
The conversation of Tehuantl is { "Me-ow!" }.
the fuckscene of Tehuantl is "[Tehuantlsex]".
the scent of Tehuantl is "Tehuantl has an exotic earthy aroma which reminds you of the wilds.".

to say Tehuantldesc:
	say "     Tehuantl is an exotic looking female jaguar, with wide hips, long legs and an alluring figure. Her long dark hair, which match the black rosettes in her golden yellow fur, is tied up in a long ponytail which reaches down to the middle of her back.";

Instead of conversing the Tehuantl:
	if hp of Tehuantl is 11:
		say "[TehuantlHeatIntro]";
		now hp of Tehuantl is 12;
		now Feline Relief is unresolved;
	otherwise if hp of Tehuantl is 14:
		say "     As you approach Tehuantl you drop your bag and dig out the toys you've collected for her, as well as her extra surprise. When she spots you she rushes over, nearly knocking you down as she hugs you tightly, causing the rubbery sex toys to slip from your grasp and bounce across the floor. 'Oh master, you are so kind!' She rumbles as she surveys the colourful toys scattered around her before she kisses you lightly on the cheek. As Tehuantl gets on her hands and knees to gather and inspect the things you've brought her, you quickly scan the floor for the thin red collar and quickly move to pick it up before she spots it as well.";
		say "     Quietly sneaking up behind her as she admires a particularly large pink dildo, you carefully unclasp the collar and move to place it around her neck. Tehuantl gives a curious meow as she hears the bell jingle above her head, looking back to see you holding the collar just above her. She smiles as you reach down to place it around her neck, purring happily as you fasten it snugly around her throat. She bats the bell softly several times, delighting in the cute jingle as you gentle pet her for a short while before you get back to what you were doing, leaving her to get back to inspecting the toys you've brought her.";
		now TehuantlStatus is 1;
		now hp of Tehuantl is 15;
		now TehuantlTimer is turns;
	otherwise if TehuantlStatus is 2:
		say "     [one of]Tehuantl mewls at you plaintively as she stares up from her spot on the floor, furiously working [if hp of Tehuantl > 14]a large dildo[otherwise]several fingers[end if] into her needy cunt[or]'Oh master, I need you...'[or]Too busy licking and sucking at her own groin as she mewls in pleasure, Tehuantl doesn't even notice you approach[or]'Please, fill me master'[at random]";
	otherwise:
		say "[one of]Tehuantl runs her paws down your chest as she nuzzles up against you, purring softly as her hands slide down towards you groin[or]'My big strong warrior, I hope you're here to use your pussycat again.'[or]'I look forward to being beneath you again soon, master.'[or]'How can I serve - or service - you, my master?'[or]Tehuantl rumbles softly as she grooms herself on one of the padded chairs, slowly working towards her moist cunt.[at random]";

to say Tehuantlsex:
	if hp of Tehuantl is 11:
		try conversing the Tehuantl;
	otherwise if cocks of player < 1 and cunts of player < 1:
		say "     As eager as you are to have some fun with your feline pet, you find yourself ill equipped to have any fun with her at the moment. ";
	otherwise if lastfuck of Tehuantl - turns < 6:
		say "     'Mmm, as much as I would love my big warrior to make use of [if cocks of player > 0]his[otherwise if cunts of player > 0]her[end if] pussycat again, I think it would be nicer for both of us if we took a break.";
	otherwise:
		say "     Spotting your feline pet [one of]stretching suggestively[or]bathing herself, paying particular attention to her groin[or]lounging around the library[at random] you consider having some fun with her.";
		say "[TehuantlSexMenu]";
		now lastfuck of Tehuantl is turns;

to say TehuantlSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "Make use of your pussy's pussy";
	if cocks of player > 0 and TehuantlStatus is 2:
		choose a blank row in table of fucking options;
		now title entry is "Soothe her heat";
		now sortorder entry is 2;
		now description entry is "Give your heat stricken pet some special attention";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Blow Job";
		now sortorder entry is 3;
		now description entry is "Have Tehuantl suck your cock";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "Put your kitty's rough tongue to use";
	if cunts of player > 0 and TehuantlStatus is 2:
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 5;
		now description entry is "share in some mutual pleasure with Tehuantl";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number (1-[number of filled rows in table of fucking options])> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			choose row calcnumber in table of fucking options;
			say "Confirmation: Would you like to [description entry]?";
			if player consents:
				now sextablerun is 1;
				if title entry is "Fuck her":
					say "[TehuantlSex_vag]";
				otherwise if title entry is "Soothe her heat":
					say "[TehuantlSex_vag_Inheat]";
				otherwise if title entry is "Blow Job":
					say "[TehuantlSex_BJ]";
				otherwise if title entry is "Cunnilingus":
					say "[TehuantlSex_cunni]";
				otherwise if title entry is "69":
					say "[TehuantlSex_69wtoy]";
		otherwise:
			say "Invalid Option.";

to say TehuantlSex_vag:
	say "     Deciding to make use of your pussy's enticing pussy, you drop your gear and approach Tehuantl. She mrowls lustfully as you move closer[if cockname of player is listed in infections of BarbedCocklist], licking her lips as she eyes your barbed cock[end if] before taking your hand as you lead her off to a secluded corner of the loft. Tehuantl moans teasingly as you push her to the floor, her tail flicking with excitement as she rolls onto her back and spreads her legs before you. 'Mmm, my big strong warrior, here to put me in my place again,' she rumbles as her paws drift down her body, caressing her delicate form as they move towards her spread thighs. With the feline's needy cunt on display for you, you waste no more time with foreplay, and pounce on your eager plaything, pinning her to the ground as you aligning your [cock size desc of player] [cock of player] cock with her wet folds.";
	if cockname of player is listed in infections of BarbedCocklist:
		say "     Tehuantl moans in pleasure as you begin sinking your barbed shaft into her, obviously delighting in the pleasant sensation of your spines scrape softly along her inner walls. She bites her lip in anticipation as your forward movement slows to a stop, and you feel her entire form tense up slightly as you prepare to withdraw your length. Tehuantl yowls in ecstasy as you begin to pull back, her entire form shivering beneath you as your pointed barbs scrape and tear at her tender flesh, driving her to her first climax before you've ever pulled back completely. Tehuantl's moaning and yowling continues as you pound away at the needy kitty, the feeling of her tight cunt gripping your member so she can be further stimulated by your feline barbs only intensifying your own pleasure with each thrust. You roar in orgasm as your climax strikes, driving your length into her as you grip her body tightly, ensuring she stays firmly impaled by your shaft as you blast shot after shot of your [cum load size of player] load into her spasming cunt.";
		say "     Spent, you roll off your well fucked kitty, eliciting one more groan from her as your barbs pull out of her body one final time. As you lay there basking in your afterglow Tehuantl snuggles up beside you, resting her head on your chest as she pulls your arm around herself, rumbling happily as she nuzzles against you.";
	otherwise:
		say "     Tehuantl rumbles happily as you begin sinking your member into her, her tight cunt grips your shaft delightfully, squeezing your cock even as you begin slowly pulling back. She mewls lustfully as you begin pounding into her eager body, her paws drift up to tease her firm nipples as the rough fucking continues. Soon the pleasant sensations of her tight, squeezing tunnel begin to overwhelm you, and you roar in orgasm as your climax strikes, driving your length into her as you grip her body tightly, ensuring she stays firmly impaled by your shaft as you blast shot after shot of your [cum load size of player] load into her spasming cunt.";
		say "     Spent, you roll off your well fucked kitty, panting happily as you stretch out on the floor beside her. As you lay there basking in your afterglow Tehuantl snuggles up to you, resting her head on your chest as she pulls your arm around herself, rumbling happily as she nuzzles against you.";

to say TehuantlSex_vag_Inheat:
	say "     With Tehuantl's powerful scent filling the air, you decide to try and give her a little something extra to help her take the edge off. She mewls needfully as you drop your gear and approach her, spreading her legs wide to put her needy pussy on display for you. You push Tehuantl back to lay on the couch and tease her wet pussy with a pair of fingers, stroking her outer folds and clit before pressing deeper into her body. Tehuantl moans in delight as you continue frigging her, groping her breasts and tweaking her nipples as you do.";
	say "     The feline pussy grips your fingers tightly, already milking and squeezing your fingers like a cock if an effort to cool her heat. As your play continues, you spot one of the rubber sex toys your brought back for Tehuantl to help her with her heat, and reach for the bright pink cock. Toy in hand, you spread Tehuantl's netherlips apart with the fingers already inside her and begin pushing the tip of the toy into her. Tehuantl's moans of pleasure become more frequent and much louder as your drive the thick rubber cock into her, freeing your sticky fingers to softly massage her clit as well.";
	say "     It doesn't take long for your efforts to pay off, and Tehuantl is soon yowling in release. Her musky waters gush out around the rubber toy and soak your hand. Leaving the toy buried in Tehuantl's cunt, you softly rub and scratch her belly, slowly working up towards her breasts as you lean closer to her. You eagerly climb on the couch over the shivering feline as your hand drifts over her breasts and caresses her muzzle, finally pulling the pink dildo from her cunt as you line up your own shaft with her well prepared opening.";
	say "     You both groan in delight as you begin sinking your [cock size desc of player] [cock of player] cock into her, and Tehuantl's insatiable body still grips your shaft tightly despite her recent climax[if cockname of player is listed in infections of BarbedCocklist], pulling at your barbs delightfully[end if]. By the time you Tehuantl begin vigorously fucking the jaguar's needy body she's fully recovered from her first climax, and is bucking her hips enthusiastically in time with your thrusts. [if cockname of player is listed in infections of BarbedCocklist]With each withdrawal, your sharp barbs catch and pull at Tehuantl's soft inner flesh, adding extra stimulation for both of you before you drive your shaft back into her.[end if] Soon the wonderful feeling of her tight, squeezing tunnel gets to be too much, and with a few final powerful thrusts, you climax with a roar of ecstasy, gripping her tightly as you blast your [cum load size of player] load deep into her body. Tehuantl's feline yowl of release joins your own roar as you cum, signaling her own powerful climax.";
	attempttowait;
	say "     With your twitching member still buried in Tehuantl's quivering tunnel you lay atop her soft furred form, she rumbles happily as your fingers trace and tickle her delicate form. You lay together with Tehuantl cuddling for some time, simply enjoying your pet's company for a while before you finally lift yourself from the couch[if cockname of player is listed in infections of BarbedCocklist], sending one last ripple of pleasure through both of you as your barbs make one final rough withdrawal[end if].";

to say TehuantlSex_cunni:
	say "     Deciding to put Tehuantl's rough feline tongue to use, you drop your gear and approach her slowly while letting one hand wander down between your things. She mrowls lustfully as you approach, licking her lips as she watches your fingers slowly part your pussy lips. Taking a seat on one of the padded chairs, you spread your legs for Tehuantl as she approaches on her hands and knees.";
	say "     Her padded paws tease your inner thighs gently as she positions herself between them, rumbling happily as she begins teasing your glistening folds. You run your hands through her long dark hair as the feeling of her rough tongue making long slow passes across your outer lips sends shivers of delight run through you. Tehuantl's paws drift closer to your drooling pussy as her tongue begins pressing further into you, her soft paw pads rubbing your clit delightfully as her other paw spreads your cunt apart to give her further access to your needy depths. Soon you are moaning in pleasure as your thirsty feline pet pushes her master to a powerful climax, drinking up every drop of your feminine fluids as her talented tongue and paws draw out your orgasm as long as they can.";
	say "     After lapping up all the sweet juices she can Tehuantl lays back on the floor before you, her paws tenderly playing down her body towards her own dripping snatch. She puts on quite a show for you, mrowling lustfully as she works her fingers into her wet cunt while teasing her nipples and groping her breasts with her free paw, driving herself to several yowling climaxes as you recover from your own.";

to say TehuantlSex_69wtoy:
	say "     With Tehuantl's powerful scent filling the air, you decide to try and give her a little something extra to help her take the edge off. She mewls needfully as you drop your gear and approach her, spreading her legs wide to put her needy pussy on display for you. You push Tehuantl back to lay on the couch and tease her wet pussy with a pair of fingers, stroking her outer folds and clit before pressing deeper into her body. Tehuantl moans in delight as you continue frigging her, groping her breasts and tweaking her nipples as you do.";
	say "     The feline pussy grips your fingers tightly, already milking and squeezing your fingers like a cock if an effort to cool her heat. As your play continues, you spot one of the rubber sex toys your brought back for Tehuantl to help her with her heat, and reach for the bright pink cock. Toy in hand, you spread Tehuantl's netherlips apart with the fingers already inside her and begin pushing the tip of the toy into her. Tehuantl's moans of pleasure become more frequent and much louder as your drive the thick rubber cock into her, freeing your sticky fingers to softly massage her clit as well. It doesn't take long for your efforts to pay off, and Tehuantl is soon yowling in release. Her musky waters gush out around the rubber toy and soak your hand. ";
	attempttowait;
	say "     With Tehuantl still shivering in delight after her climax, you climb up on the couch with her, positioning yourself above her in a 69 position. After pulling the slick pink dildo from Tehuantl's cunt, you begin lapping at her wet pussy with long, slow motions, meanwhile the rubbery sextoy has found it's way into Tehuantl's paws, and it is soon probing the outer folds of your own moist nethers. You can't help but moan out loud as Tehuantl sinks the toy into your body, momentarily distracting your from her wet pussy. The two of you go at it for what feels like hours, taking turns playing and teasing each other to near orgasm before backing off and letting the other take over, but eventually the delightful feeling becomes too much for [one of]Tehuantl, and she soaks your face in her nectars with a yowl of release. Even in the throes of orgasm, the insatiable feline drives her rubber sex toy into you while massaging your clit with her padded paw to until you climax as well before she finally stops[or]you, and you soak Tehuantl in your nectars with a cry of release. Despite the debilitation pleasure, you manage to focus enough to drive a pair of fingers into Tehuantl and frig her to orgasm as well before you finally let the bliss wash over you[at random].";
	attempttowait;
	say "     You lay together with Tehuantl cuddling for some time, simply enjoying your pet's company for a while before you finally lift yourself from the couch.";

to say TehuantlSex_BJ:
	say "     Deciding to put Tehuantl's rough feline tongue to use, you drop your gear and approach her slowly while letting one hand wander down to stroke your [cock size desc of player] [cock of player] cock. She mrowls lustfully as you approach, licking her lips as she watches your pre drip from the tip of your shaft. Taking a seat on one of the padded chairs, you spread your legs for Tehuantl, still stroking yourself as she approaches on her hands and knees.";
	say "     Tehuantl rumbles eagerly as she takes hold of your cock with one paw, her soft pads gripping your tightly as her other paw moves to fondle your [ball size]. With a smile she leans forward, her feline tongue slipping from her mouth to slowly lick across your glans, [if cockname of player is listed in infections of BarbedCocklist]it's rough surface catching slightly on your pointed barbs [end if]sending shivers of pleasure through your body. Slowly her muzzle descends down your length, her tongue licking and teasing you the entire time as she wraps her lips around your cock.";
	say "     Tehuantl's eager rumbling only intensifies as she begins bobbing her head up and down your cock[if cockname of player is listed in infections of BarbedCocklist], even as she moans somewhere between pleasure and pain as your barbed shaft scrapes and tears at her soft flesh[end if]. Between her tight oral grip or your cock, her hungry sucking and the pleasant sensation of her rough tongue sliding across your length Tehuantl quickly pushes you towards your peak. You grip her head tightly as you make a few firm thrusts into her mouth before your entire form tenses up and you blast your think [cum load size of player] load down her throat with a roar of pleasure.";
	say "     As you slump back in your seat Tehuantl slowly releases your spent shaft, cleaning up the last few stray drops of cum before kissing your glans tenderly and laying back on the floor before you. Her paws drifting down her body towards her own dripping snatch. She puts on quite a show for you, mrowling lustfully as she works her fingers into her wet cunt while teasing her nipples and groping her breasts with her free paw, driving herself to several yowling climaxes as you recover from your own.";

to say TehuantlandSven:
	say "     As you make your way into the library, you hear the heavy bunker door creak open on the far side of the room. Ducking out of sight for a moment, you watch with curious interest as Sven quietly slips out and makes his way towards the stairs to the library's upper level with his nose high in the air. Taking a breath yourself, you realize the scent of Tehuantl's heat still permeates the room.";
	say "     Seeing how distracted he seems, you could probably follow Sven upstairs and see what happens without him noticing pretty easily (y), or you could leave it be (n).";
	if the player consents:
		say "     As Sven's long snow-leopard tail disappears upstairs, you slowly make your way over to the steps quietly to see what your feline pets are up to. Peeking over the top of the stairs, you see Sven lurking down one the aisles of books, wringing his tail nervously as he peers at Tehuantl from between the volumes. Tehuantl meanwhile, apparently well aware of the hidden kitty, is lounging on the couch near the balcony teasing her wet, swollen cunt as she watches the shy snowmeow spying on her.";
		say "     Finally tired of waiting, Tehuantl rises from her seat and makes her way over to where Sven is lurking. Realizing she's approaching, he quickly tries to make himself look busy, shuffling through the books in front of him as if he's looking for a specific title. With a predatory glint in her eye, Tehuantl pads up beside Sven, rumbling softly as she steps in close to him.";
		attempttowait;
		say "     'And what bring you up here, cutie?' Tehuantl rumbles as she leans in close to the nervous snow leopard, gently placing a paw between his shoulders, 'I'm sure I could help you find [italic type]whatever[roman type] you're looking for.";
		say "     Sven shudders as Tehuantl's paw slowly descends down his back, settling at the base of his tail. Sven attempts to explain that he's looking for a particular book, but with the powerful scent of Tehuantl's arousal so close and her distracting touch, he manages only to fumble and stutter over his words until she places a finger over his lips. With her paw now scritching Sven's lower back, his tail slips from his grasp revealing his [if hp of Sven >= 10 and lust of sven is 1]baby blue[otherwise if hp of sven >= 10 and lust of sven is 2]yellow[otherwise]grey[end if] member, hard with arousal. Tehuantl licks her lips slowly as she eyes Sven's ready cock before looking back into the nervous kitty's face. Her paw slides down from Sven's mouth, scritching his chin for a moment before tilting his head upward slightly so she can plant a quick kiss on the end of his muzzle.";
		say "     'I think I know just what you need; I happen to be looking for the same thing. I'm sure we can help each other out cutie.' Sven can only mewl sheepishly in response before Tehuantl gives him a light push, smirking mischievously as Sven stumbles backwards, tripping over his own tail and landing his back. Without hesitation Tehuantl steps over the supine snowmeow, she positions her dripping cunt over Sven's groin and pins his shoulders to the ground before lowering herself onto his shaft.";
		attempttowait;
		say "     Both felines groan in pleasure as Sven's shaft spreads Tehuantl's opening apart, pressing into her depths as she descends down his length. With a lustful growl, Tehuantl rides up and down Sven's [if hp of sven > 10 and lust of sven is 1]baby blue[otherwise if hp of sven > 10 and lust of sven is 2]yellow[otherwise]grey[end if] cock, yowling in pleasure as she drives him into her eager cunt and soon any show of resistance from Sven is gone as he thrusts his hips forward to match her descent. Tehuantl grabs the other kitty's paws and presses them to her breasts, prompting him to play with them. The bell on the jaguar's collar jingles merrily as she rides the snowmeow's shaft.";
		say "     [if cocks of player > 0 or cunts of player > 0]As you watch the show, you can't help but let your own hands drift down towards your excited groin and begin playing with yourself as you watch the feline intercourse. [end if]Before long Tehuantl's rough fucking has her approaching a powerful climax and with a yowl of ecstasy she drives herself down Sven's length, soaking his fur with her juices as she orgasms. Meanwhile, Tehuantl's wild orgasm is enough to push Sven over the edge as well, and you watch as his entire body tenses up, knowing his seed is being unloaded deep inside Tehuantl's body.";
		say "     As the two begin to come down from their respective climaxes Tehuantl stares down at the exhausted snowmeow beneath her, licking her lips as she releases a shoulder to scratch his chin gently. Then, without another word she begins her motion again, clearly intent on riding the submissive snow leopard to another orgasm before she'll be satisfied. Sven is a far less active participant in this second fucking, struggling to keep in time with Tehuantl's eager bouncing. By the time Tehuantl reaches her second climax, Sven can do little more then moan beneath her. With another yowl Tehuantl soaks both their crotches in a fresh wave of her feminine juices, shivering in delight as orgasm rolls through her.";
		say "     Finally sated, the lustful jaguar rolls off the exhausted snowmeow, licking and nuzzling his face as she lays beside him for a short time before getting to her feet and strutting back towards her favorite seat by the balcony, their combined juices dripping from her swollen cunt the entire way. As Sven begins stumbling to his unsteady feet, you decide it best to [if cocks of player > 0 or cunts of player > 0]clean up your own mess and[end if] slip back downstairs before you're seen.";
	otherwise:
		say "     Deciding to leave your feline pets be, you try to put the thought out of your mind as Sven disappears upstairs. Soon after you hear the jingling of Tehuantl's belled collar and some hushed conversation upstairs before you turn your attention to other things.";

to say TehuantlandSnow:
	if TehuantlSnowStatus is 0:
		say "     Once you finally arrive in the relative safety of the library you stop and relax for a moment, taking a short break from the trials of the city outside. From your seat at one of the library's large study tables, you notice some movement at the staircase leading up to the abbey's second floor. You watch with curious interest as Tehuantl stealthily descends from the upper floor, her tail flicking with excitement as she peers across the library in snow's direction.";
		say "     Snow meanwhile seems to be unaware of the feline slinking towards her, distracted with some small project she's tinkering with at the table she's claimed as a workbench, though based on the way she is idly rubbing her groin with a free paw while she works, it seems the arousing scent of Tehuantl's feline heat filling the room is still having an effect on her.";
		say "     As Tehuantl reaches the bottom of the stairs, she spots you looking at her and realizes she hasn't gone unnoticed. Glancing back at snow, then towards you once again, she waits patiently at base of the steps as if waiting for your reaction to her apparent interest. Will you let your feline pet try and entice the unsuspecting squirrel into some fun?";
		if the player consents:
			say "     With a knowing grin you nod at Tehuantl, who gives you a naughty smirk in return before resuming her silent approach. You settle down into your seat, getting comfortable for what promises to be quite a show as she stalks across the library towards Snow.";
			say "     Even from across the room, you hear Snow chitter in surprise as the alluring jaguar taps her on the shoulder and she abruptly spins around to face the feline, revealing the painfully large erection straining her pants. Snow fidgets uncomfortably as she and Tehuantl make small talk for a while, obviously distracted by the pretty kitty's attractive assets and arousing scent. Tehuantl seems to take a perverse delight in watching the poor squirrel squirm, drawing out the awkward introduction for some time before she finally leans in close to the busty squirrel and whispers something in her ear. Snow's expression lightens instantly and she quickly sets about clearing a space at her workbench.";
			say "     Tehuantl Pulls snow into a tight embrace, dragging her towards the now cleared table before slowly descending down her squirrine form towards her groin. Her deft paws work quickly to remove snow's tight pants, finally allowing her engorged pink member to spring free. Marveling at Snow's massive cock, Tehuantl takes a hold of it with one paw, stroking it gently as her rough tongue plays teasingly across her glans.";
			attempttowait;
			say "     When Tehuantl finally rises back to her feet, Snow eagerly grabs her shoulders and pushes her back against the counter, stroking her impressive member across Tehuantl's moist nethers before pressing her hips forward, driving into the feline's needy body with a grunt. Snow's swollen breasts and nuts slap lewdly against Tehuantl's furred form with each thrust as the two settle into a steady rhythm, moaning lustfully as their paws roam across each other's form, adding to their building arousal.";
			say "     With a screeching chitter and a feline yowl, the two finally reach mutual climax as Snow makes a final thrust home, pushing Tehuantl back to lay across the table as she puts all her weight into the final motion before emptying her grapefruit sized balls into the moaning feline.";
			attempttowait;
			say "     The two lay locked together on the table for a few moments before Tehuantl pushes the limp squirrel off onto the table beside her, pulling Snow's cock free with a noticeable pop. With Snow's ample load still leaking down her furred thigh, Tehuantl ascends back up to her favorite spot upstairs, only stopping momentarily at the bottom of the stairs to look back at you, winking playfully while spreading her stuffed pussy lips apart for you to see before continuing upstairs.";
			now TehuantlSnowStatus is 1;
		Otherwise:
			say "     Deciding against letting the needy feline prey on the unsuspecting squirrel, you shake your head sternly at her, motioning her back upstairs. Clearly disappointed, the obedient kitty slowly turns, and makes her way back to her favorite spot upstairs, only pausing at the top of the steps to look back at you one last time before moving out of sight.";
			now TehuantlSnowStatus is 99;
	otherwise if TehuantlSnowStatus is 1:
		if cocks of player > 0 or cunts of player > 0:
			say "     Once again taking a moment to relax in the relative safety of the library, you spot Tehuantl slinking down the stairs once more,  with her eyes set on Snow. As she reaches the bottom of the stairs you consider following her to join in on the fun this time.";
			if the player consents:
				if cocks of player > 0:
					say "     Tehuantl gives you another naughty smirk as she sees you rising from your seat, making sure to swish her tail wide as you follow behind her, giving you a clear view of her tight bottom. While Tehuantl is once again warming up Snow, you stop to consider how you want to proceed; you could mount snow as she screws the kitty (Y), or get some attention from that rough feline tongue(N).";
					if the player consents: [ male mounting Snow]
						say "     The three of you slip away to a more secluded corner of the library, leaving your clothes and gear strewn along the isle as you make your way to an open reading space. Once you've found a comfortable spot, Tehuantl is quickly on her hands and knees, shaking her ass and tail invitingly as Snow moves in behind her. Tehuantl groans as Snow's thick member begins to press into her needy cunt and eager to get in one the fun, you slip in behind snow with your own [cock size desc of player] [cock of player] cock in hand. They both gasp as you press Snow forward to lay across Tehuantl's back and sink your own shaft into Snow's exposed cunny.";
						say "     it takes a little while before the three of you find a good rhythm, but once you do it proves to be a delightful fuck. Snow's tight hole is especially pleasant thanks to her increased arousal from the sensation of both her genders being tended too, and based on her loud feline cries of pleasure Tehuantl is more then enjoying Snow's impressive breeding tool. Snow is the first to reach climax, and cries out loud as she fills the pretty jaguar with her ample seed, tipping Tehuantl over the edge to her own powerful orgasm. Simultaneously, Snow's cunt clamps down tightly around your cock as female orgasm rolls through her as well, causing you to add to their cries with a climax of your own.";
					otherwise: [male oral]
						say "     The three of you slip away to a more secluded corner of the library, leaving your clothes and gear strewn along the isle as you make your way to an open reading space. Once you've found a comfortable spot, Tehuantl is quickly on her hands and knees, shaking her ass and tail invitingly as Snow moves in behind her. Tehuantl groans as Snow's thick member begins to press into her needy cunt and eager to get in one the fun, you slip in on the ground in front of Tehuantl, bringing your shaft into position in front of her muzzle.";
						say "     With the eager squirrel furiously fucking her, Tehuantl's blow job is a little rougher then usual, but is delightful nonetheless. The rocking motion of Snow's thrusting causes Tehuantl's head to bob up and down your length with extra vigor, with her sometimes merely teasing your glans with that rough feline tongue, or with her nose rubbing against your groin and your cock buried in her throat at other times. You ride a roller-coaster of pleasure as the feeling of this pushes you ever closer to climax, and based on the increasing frequency of her moans and mewls around your member, Tehuantl isn't far off either.";
						say "     With a muffled yowl and an excited chitter, Tehuantl and Snow both reach climax at nearly the same time and you feel their combined juices gushing out around Snow's cock onto your feet. Snow's final firm thrusts drive Tehuantl forward onto your cock as the fills the feline with her seed, prompting you to grip her head tightly and make a few final thrusts into her wanton mouth to push yourself to orgasm as well. Your groans join the other cries of release as you fill the needy kitty with your [cum load size of player] load, and she sucks your shaft eagerly to get all the cream she can.";
				otherwise: [female oral]
					say "     The three of you slip away to a more secluded corner of the library, leaving your clothes and gear strewn along the isle as you make your way to an open reading space. Once you've found a comfortable spot, Tehuantl is quickly on her hands and knees, shaking her ass and tail invitingly as Snow moves in behind her. Tehuantl groans as Snow's thick member begins to press into her needy cunt and eager to get in one the fun, you slip in on the ground in front of Tehuantl, bringing your wet cunt into position in front of her muzzle.";
					say "     With the eager squirrel furiously fucking her, Tehuantl's cunnilingus is a little rougher then usual, but is delightful nonetheless. The rocking motion of Snow's thrusting causes Tehuantl's muzzle to press roughly into your sopping pussy with each motion, letting her delightful rough tongue delves further into your body each time. You run you hands through her hair and press your hips up onto her muzzle each time Snow drives into the needy feline, driving you closer to climax each time and based on the increasing frequency of her moans and mewls Tehuantl isn't far off either.";
					say "     With a muffled yowl and an excited chitter, Tehuantl and Snow both reach climax at nearly the same time and you feel their combined juices gushing out around Snow's cock onto your feet. Snow's final firm thrusts drive Tehuantl forward into your groin, pressing her muzzle against your clit as her tongue presses forward into your depths until she finally drives you to orgasm as well. Even as the others cries of delight begin to die down, Tehuantl continues licking and sucking at your spasming cunt, drawing out out climax as she laps up as much of the sweet nectar as she can.";
				say "     The three of you lay there together in a temporarily sated pile as you bask in the afterglow of your release. Tehuantl is the first to get up and leave, giving you both a quick grope before she struts back up to her favorite spot upstairs, leaving you and snow to collect your things and get back to your earlier tasks.";
			otherwise:
				say "     Tehuantl gives you another naughty smirk as she passes by, obviously pleased that you're not stopping her from returning to the well hung squirrel. The small talk is much quicker this time, and soon Tehuantl is sitting up on the counter before Snow with her legs spread wide. As Snow steps closer, her paws quickly working to strip off her pants, Tehuantl pulls her in to a tight embrace before pushing her downward. With no further instruction, Snow's quickly dives into Tehuantl's needy muff, kissing those needy swollen folds tenderly with one paw massaging the feline's clit and the other stroking her own sizable member.";
				say "     Snow's long, deliberate work at the feline's crotch soon have her moaning and mewling in delight, pushing her towards climax with surprising ease. Before long Snow's swollen breasts and nuts slap lewdly against Tehuantl's furred form with each thrust as the two settle into a steady rhythm release a feline yowl of ecstasy and soaks the squirrel's muzzle with her powerful smelling juices.";
				attempttowait;
				say "     Satisfied that the feline is sufficiently warmed up, Snow aligns her impressive tool with Tehuantl's sopping opening and begins to slowly sink it into her. With the aftermath of her first climax subsiding, Tehuantl wraps her legs around the busty squirrel, pulling more of that thick pink cock into her body  with a shiver of delight. Snow's swollen breasts and nuts slap lewdly against Tehuantl's furred form with each thrust as the two once again find their rhythm, playfully teasing each other between to further add to their building arousal.";
				say "     With another feline yowl, Tehuantl climaxes for the second time, forcefully pulling Snow forward as a fresh flow of her juices soaks their crotches. Soon after Snow finally reaches her own peak, nearly tipping the table over as her last powerful thrusts once again fill the feline with her ample seed.";
				attempttowait;
				say "     The two lay together on the table for a while longer this time, paws roaming each other's body as they bask in their mutual afterglow for a while. Eventually Tehuantl finally pushes the spent squirrel off onto the table beside her and begins making her way back upstairs.";
		otherwise: [neuter]
			say "     Unfortunately, since you currently lack the appropriate equipment to join in, you're relegated to watching once again, if you want.";
			if the player consents:
				say "     Tehuantl gives you another naughty smirk as she passes by, obviously pleased that you're not stopping her from returning to the well hung squirrel. The small talk is much quicker this time, and soon Tehuantl is sitting up on the counter before Snow with her legs spread wide. As Snow steps closer, her paws quickly working to strip off her pants, Tehuantl pulls her in to a tight embrace before pushing her downward. With no further instruction, Snow's quickly dives into Tehuantl's needy muff, kissing those needy swollen folds tenderly with one paw massaging the feline's clit and the other stroking her own sizable member.";
				say "     Snow's long, deliberate work at the feline's crotch soon have her moaning and mewling in delight, pushing her towards climax with surprising ease. Before long Snow's swollen breasts and nuts slap lewdly against Tehuantl's furred form with each thrust as the two settle into a steady rhythm release a feline yowl of ecstasy and soaks the squirrel's muzzle with her powerful smelling juices.";
				attempttowait;
				say "     Satisfied that the feline is sufficiently warmed up, Snow aligns her impressive tool with Tehuantl's sopping opening and begins to slowly sink it into her. With the aftermath of her first climax subsiding, Tehuantl wraps her legs around the busty squirrel, pulling more of that thick pink cock into her body  with a shiver of delight. Snow's swollen breasts and nuts slap lewdly against Tehuantl's furred form with each thrust as the two once again find their rhythm, playfully teasing each other between to further add to their building arousal.";
				say "     With another feline yowl, Tehuantl climaxes for the second time, forcefully pulling Snow forward as a fresh flow of her juices soaks their crotches. Soon after Snow finally reaches her own peak, nearly tipping the table over as her last powerful thrusts once again fill the feline with her ample seed.";
				attempttowait;
				say "     The two lay together on the table for a while longer this time, paws roaming each other's body as they bask in their mutual afterglow for a while. Eventually Tehuantl finally pushes the spent squirrel off onto the table beside her and begins making her way back upstairs.";
			otherwise:
				say "     Deciding now isn't a good time, you shake your head at Tehuantl as she reaches the bottom of the stairs, motioning her to go back up and leaving the well hung squirrel alone for now.";

to say TehuantlandFelinoid:
	say "     You hear a low lusty growl as you walk into the library. Turning towards the noise, you see the end of your felinoid companion's tail as he vanishes up the stairs a bit to your right. A quick sniff of the air in here makes clear what's up - the scent of Tehuantl's heat just wafts down from above. Looks like the big cat went to follow his natural urges.";
	say "     Do you want to follow the felinoid upstairs and see what happens (Y), or do you just leave them be (N).";
	if the player consents:
		say "     Hurrying up the stairs so you don't miss anything, you see Tehuantl lying on the ground, several fingers buried in her pussy as she strokes herself. Meanwhile, the felinoid pads over to her and lowers his head, taking a deep sniff of her crotch before starting to lick her there. You can see the big cat's spined shaft dangling under his body, already fully hard and twitching in anticipation.";
		say "     Your felinoid keeps using his tongue on the jaguar-woman's pussy for a minute or two, making her writhe on the ground in lust, then he nuzzles the side of her hip. Tehuantl immediately understands what the large cat wants to say by rubbing his furry cheeks against her and lifts herself up from the ground. Panting in need, she takes position on all fours, presenting herself to be mounted. With a very satisfied roar, the felinoid does just that, moving his large form to cover her smaller body and bending his legs a bit to thrust his hard shaft into Tehuantl's dripping cunt.";
		say "     [WaitLineBreak]";
		say "     Both felines groan in pleasure as the felinoid's shaft spreads Tehuantl's opening apart, pressing into her depths as he sinks himself into her waiting pussy. Soon he's all the way in, then starts to pull back and thrust in again, the spines on his shaft rubbing against her insides each time. Accompanied by a lustful growl, Tehuantl's claws dig into the carpeted floor, holding on tight as the virile male fucks her, even rocking back to meet his thrusts. Her obvious eagerness animates the felinoid to speed up more and more, making the bell on the jaguar's collar jingle merrily as he pounds against her ass.";
		say "     [if cocks of player > 0 or cunts of player > 0]As you watch the show, you can't help but let your own hands drift down towards your excited groin and begin playing with yourself as you watch the feline intercourse. [end if]Before long, the rough fuck he's giving Tehuantl has the felinoid rapidly approaching his climax. He opens his muzzle in a short roar, then softly bites into her neck, just enough to hold her into position and not break the skin. One, two, three more thrusts and he suddenly holds still, his legs bent as he holds himself balls-deep in the female jaguar, depositing spurt after spurt of his feline seed straight into her womb. Meanwhile, the neck-bite and feeling his cum pulse into her was enough to drive Tehuantl over the edge of her own orgasm, making her whole body shiver and her pussy get drippingly wet around the felinoid's shaft.";
		say "     [WaitLineBreak]";
		say "     As the two begin to come down from their respective climaxes, Tehuantl exhaustedly sinks down on the ground, the felinoid's shaft sliding out of her with a small wet plop. He turns to look at you and gives a deep, rather self-satisfied purr, then throws himself on the ground against the freshly-bred jaguar-woman. His furry side pressed against her, he nuzzles her face, making Tehuantl giggle and give him a good scritch on the neck and behind his ears. They stay together like that on the floor, soon dozing off. You decide it best to [if cocks of player > 0 or cunts of player > 0]clean up your own mess and[end if] slip back downstairs and leave them to get some rest.";
	otherwise:
		say "     Deciding to leave your feline pets to take care of each other, you try to put the thought out of your mind as you hear the jingling of Tehuantl's belled collar, followed by a growl and a gasped yowl. That must have been when he entered her. Suppressing the urge to go back on your earlier decision and hurry up the stairs after them, you turn your attention to other things...";



Section 5 - Heat, pregnancy and assorted gimmicks

TehuantlStatus is a number that varies. [1 normal, 2 in heat, 3 pregnant]
TehuantlTimer is a number that varies.
TehuantlSnowStatus is a number that varies.

an everyturn rule:
	if HP of Tehuantl > 14:
		if TehuantlStatus is 1:
			if TehuantlTimer - turns > 39:
				now TehuantlStatus is 2;
				now TehuantlTimer is turns;
		otherwise if TehuantlStatus is 2:
			if TehuantlTimer - turns > 39:
				now TehuantlStatus is 1;
				now TehuantlTimer is turns;
[		otherwise if TehuantlStatus is 3:
			decrease TehuantlTimer by 1;
			if TehuantlTimer is 0:
				if player is in Grey Abbey Library or bunker or grey Abbey 2f:
					say "     You hear Tehuantl moaning []upstairs[or]outside[end if] and rush to check on her.";
					say "     Tehuantl gives birth scene!";
				otherwise:
					say "     Somehow you know a child has been born.";
				now TehuantlStatus is 1;
				now TehuantlTimer is turns;
				increment Tehuantl children variables]

after navigating Grey Abbey Library:
	if hp of Tehuantl is 10:
		if TehuantlTimer - turns > 16:
			now HP of Tehuantl is 11;
			say "     As you enter the library, you you are hit with an overwhelming scent of feline arousal and you hear mewling and moaning coming from the library's second floor. You can't help but wonder if everything is alright with your pretty pet kitty upstairs.";
	otherwise if hp of Tehuantl is 11:
		say "     The air is still thick with the powerful scent of feline arousal, and while she seems to have quieted up, you wonder if you should go up and check on Tehuantl anyway.";
	otherwise if hp of Tehuantl is 12 or hp of Tehuantl is 13 or hp of Tehuantl is 14:
		say "     The air is still thick with the powerful scent of feline arousal. It would seem Tehuantl is still in heat, you can't help but wonder about finding something to the poor [bold type]feline[roman type] find some [bold type]relief[roman type].";
	otherwise if hp of Tehuantl > 14:
		if TehuantlStatus is 2:
			if a random chance of ( lastfuck of Tehuantl - turns ) in 20 succeeds:
				say "[TehuantlBunkerScenes]";
			otherwise:
				say "     The air is  thick with the powerful scent of feline arousal. It would seem Tehuantl is still in heat once again.";

to say TehuantlBunkerScenes:
	let TehuantlList be a list of numbers;
	if hp of Sven is 8 or (hp of Sven >= 10 and hp of Sven <= 49):
		add 1 to TehuantlList;
	if Snow is booked and TehuantlSnowStatus is not 99:
		add 2 to TehuantlList;
	if Felinoid Companion is tamed:
		add 3 to TehuantlList;
	sort TehuantlList in random order;
	if entry one of TehuantlList is 1:
		say "[TehuantlandSven]";
		decrease lastfuck of Tehuantl by a random number between 1 and 4;
	otherwise if entry one of TehuantlList is 2:
		say "[TehuantlandSnow]";
		decrease lastfuck of Tehuantl by a random number between 1 and 4;
	otherwise if entry one of TehuantlList is 3:
		say "[TehuantlandFelinoid]";
		decrease lastfuck of Tehuantl by a random number between 1 and 4;
	otherwise if TehuantlList is empty:
		say "     The air is thick with the powerful scent of feline arousal. It would seem Tehuantl is still in heat once again.";

to say TehuantlHeatIntro:
	say "     Tehuantl is laying on the ground as you approach her, mrowling and mewling as she furiously works several fingers in and out of her swollen cunt. By the look of the large wet spot on the carpet below her, and overwhelming scent of her feminine juices, it seems she been at this for a while.";
	say "     Tehuantl squeaks in surprise as you reach down and place a hand on her shoulder. She releases a sigh of relief as she turns and sees you standing over her, quickly rising to her knees and wrapping her arms tightly around your leg. 'Oh master, please use me. My entire body aches to be filled. I've been trying to sooth the need myself, but it's just not enough...please.' As you look down upon the begging kitty you realize she must be in heat, and she doesn't seem to be handling it so well, perhaps due to her previous male form.";
	if cocks of player is 0 and cunts of player is 0:
		say "     Lacking any gender of your own, you remain quiet as you watch Tehuantl's fingers sink back into her slick opening. As her moans and mewls begin again she seems to forget you're even there, losing herself once again in her powerful lusts. Taking the opportunity to quietly slip away you carefully make your way back downstairs, leaving the lusty kitty alone for now. As you reach the main floor of the library once again, you find yourself wondering if there may be something out in the city to help the poor [bold type]feline[roman type] find some [bold type]relief[roman type].";
	otherwise:
		say "     Even as her paws start to stray back to her groin Tehuantl continues to whimper up at you, begging for some relief, will you try to help sate the kitties lusts? ";
		if the player consents:
			if cocks of player > 0:
				say "     Deciding to try and help your pet out, you start stripping off your gear as she starts fingering herself again. The moaning feline hardly notices as you step over her, until you you pull her furiously working paw from her sopping cunt. She mewls up at you with need as your run you free hand along her thigh, teasing the needy kitty for a moment before your you sink a pair of your own fingers into her. Tehuantl's eager cunt grips your fingers tightly as you frig her needy hole until reaches a yowling climax, soaking your hand in her juices.";
				say "     Even in the throes of her climax, Tehuantl moans in disappointment as you pull you fingers from her dripping cunt, and still eager from relief her own paws quickly drift back to her groin to replace yours. Surprised by your pet's seemingly insatiable need you once again stay her eager paw as you reposition yourself to bring your [cock size desc of player] [cock of player] cock into position outside her ready pussy. With one firm motion you drive into Tehuantl's body, and delight in the feeling of her needy tunnel tightly gripping your shaft[if cockname of player is listed in infections of BarbedCocklist], despite your sharp barbs[end if]. Tehuantl moans and yowls as you fuck her needy body, obviously enjoying finally being filled properly just as much as you're enjoying filling her. You do your best to draw it out as long as possible for your needy pet, but the firm grip and rippling milking sensation of her hungry cunt around your [cock of player] cock is soon too much, and with one final drive you fill her ready body with your [cum load size of player] load with a groan of ecstasy. Tehuantl climaxes at the same time with a roar of pleasure, soaking your groin in her juices as her cunt spasms around you, drawing out every drop of cum she can in an attempt to extinguish the fire of her heat.";
			otherwise:
				say "     Deciding to try and help your pet out, you start stripping off your gear as she starts fingering herself again. The moaning feline hardly notices as you step over her, until you you pull her furiously working paw from her sopping cunt. She mewls up at you with need as your run you free hand along her thigh, teasing the needy kitty for a moment before your you sink a pair of your own fingers into her. Tehuantl's eager cunt grips your fingers tightly as you frig her needy hole until reaches a yowling climax, soaking your hand in her juices.";
				say "     Even in the throes of her climax, Tehuantl moans in disappointment as you pull you fingers from her dripping cunt, and still eager from relief her own paws quickly drift back to her groin to replace yours. Surprised by your pet's seemingly insatiable need, you quickly adjust your position to bring your own cunt, dripping with anticipation, before Tehuantl's muzzle. Before you've even lowered yourself down toward Tehuantl's groin her rough feline tongue is lapping and teasing at your [cunt size desc of player] pussy, sending shivers of delight through your body as she works deeper into your tender folds. You're already having difficulty focusing by the time your tongue reaches Tehuantl's swollen, needy cunt. Already drooling with arousal you set about tending to her aching need, licking, sucking and kissing her as your hands caress her furred thighs. Tehuantl's climax strikes with surprising speed, and she soaks your face with a feline yowl of ecstasy, but even as orgasm rolls through her, her feline tongue continues working your needy cunt, further fueling your arousal as you dive back into the jaguar's still spasming cunt.";
				say "     Tehuantl's whiskers tickle your outer lips as she works her muzzle deeper into you, spreading you open with one hand to allow her further access to your trembling tunnel, even as her other paw rubs gently at your clit. Soon you reach a climax of your own, soaking Tehuantl's furred face in your nectars as you moan in pleasure, drawing your attention away from the kitty's pussy as she continues working to draw out your orgasm as long as possible.";
			say "     Spent, you roll off your feline companion, laying beside her as the afterglow of your climax washes over you, but even in your hazy afterglow, you can't help but notice Tehuantl continuing to pleasure herself, frigging herself to several more crashing peaks while you recover. Eventually your sense return to you enough to lift yourself from the library floor, Tehuantl doesn't even notice you quietly moving away, far too lost in sating her seemingly endless arousal.  Taking the opportunity to quietly slip away you carefully make your way back downstairs, leaving the lusty kitty alone for now. As you reach the main floor of the library once again, you find yourself wondering if there may be something out in the city to help the poor [bold type]feline[roman type] find some [bold type]relief[roman type].";
		otherwise:
			say "Deciding to leave her be for now, you remain quiet as you watch Tehuantl's fingers sink back into her slick opening. As her moans and mewls begin again she seems to forget you're even there, losing herself once again in her powerful lusts. Taking the opportunity to quietly slip away you carefully make your way back downstairs, leaving the lusty kitty alone for now. As you reach the main floor of the library once again, you find yourself wondering if there may be something out in the city to help the poor [bold type]feline[roman type] find some [bold type]relief[roman type].";

Section 7 - Event

Feline Relief is a situation. Feline Relief is resolved.
The sarea of Feline Relief is "Red".

instead of resolving Feline Relief:
	if hp of Tehuantl is 12:
		say "     As you wander through the red light district, you happen across a surprisingly intact looking shop, the windows are blackened, preventing you from seeing inside, but the large sign above the door with three simple red Xs leaves little doubt in your mind as to what might be inside. as you stand outside the store, your mind wanders back to your poor heat afflicted kitty back at the library, and you wonder if there might be some 'toys' left inside that could help her take the edge off. Deciding there's no harm in checking, you slowly step up to the door, gripping the handle tightly and slowly pulling it open a crack. Peering inside you see the small shop if filled with various pieces of BDSM equipment, and is surprisingly well kept despite the state of the city around it. Not seeing anyone inside the room, you carefully push the door open and step inside. The majority of the wares in the store seems to be bondage equipment, but you do manage to find a couple colourful sex toys your poor kitty may be interested in.";
		say "     Once you've given the storefront a through search, you quickly glance around the room for a box or bag for the few toys you've selected, it is then that you spot the display of cute leather collars above the store's till. Quickly hopping over the counter, you browse the collection of collars, picking out a nice red one with a cute bell for your pet kitty to go with her new toys. After grabbing a bag from under the counter, you start packing it and prepare to depart.";
		say "     Just as you're getting ready to leave you notice shadows moving past the window outside, you hope for a second that it's just some creature wandering past, but those hopes are quickly dashed as the shop door swings open. Much to your chagrin, three of the latex covered women you've seen wandering around the city step into the small shop, each carrying another handful toys and fetish equipment. As They spot you, all three dump their cargo and turn their attention to you, two of them stepping forward to engage you while the third steps back to block the door.";
		challenge "Latex Mistress";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the first latex mistress dealt with, you quickly turn your attention to the second.";
			challenge "Latex Mistress";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     After dispatching the second latex mistress, you have only a moment to ready yourself before the third abandons her post at the door to engage you.";
				challenge "Latex Mistress";
		if fightoutcome >= 20 and fightoutcome <= 29: [player defeated]
			say "     As the latex mistress finishes with you, she steps back to reveal the other two wearing matching dark smiles, each equipped with a brightly coloured strap on dildo. You moan as you are roughly dragged over to the large rack in the center of the room and dumped face down on top of it. You struggle weakly, but are unable to resist as the latex women bind your arms and legs to the legs with the device's built in restraints, leaving  you helpless as the two strap-on equipped women approach you from either end. You gasp as the one behind you starts sinking her rubber cock into your ass, and the one in front of you takes the opportunity to drive her shaft into your open mouth. As the two latex dominatrixes pound into you, you feel you resistance draining away, your mind slipping further and further with each thrust of those rubber shafts.";
			say "     As the brutal fucking continues, you feel your body shifting and changing, your mouth and anus being molded around those rubber cocks as they thrust into you. Cool thick liquid rubber begins leaking out  from around the strap on cocks, slowly spreading across your body with each thrust. As the last of your mind begins to fade away the liquid latex begins sealing seamlessly around your body, squeezing tightly around you as it molds you into an only vaguely human shape.";
			say "     By the time the latex mistresses finally withdraw from you, there is very little 'you' left, replaced by a placid living rubber sex doll, another toy for their collection. You are slightly disappointed when the latex women untie you from the counter, tossing your limp rubber form into the pile with all their other playthings before they head back out into the city, but you know if you wait patiently like a good toy, your mistresses will return to play with you again.";
			now HP of Tehuantl is 255;
			now bodyname of player is "Rubber Sex Doll";
			now facename of player is "Rubber Sex Doll";
			now skinname of player is "Rubber Sex Doll";
			now tailname of player is "Rubber Sex Doll";
			now cockname of player is "Rubber Sex Doll";
			now humanity of player is 0;
			end the story saying "You are transformed into a Rubber Sex Doll by the latex mistresses.";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19: [player defeats all three mistresses]
			say "     With the three latex women dispatched, you quickly gather up the toys you had set aside, and a couple of the new additions the rubber girls brought back with them before quickly departing the store.";
			now HP of Tehuantl is 14;
			now Feline Relief is resolved;
		otherwise: [player fled]
			say "     Unable to fend off the latex covered women, you decide it best to make a break for it, leaving the bag of toys behind as you duck and weave around the store, drawing your assailants away from the door before you make a break for it, escaping back into the city streets.";
			say "     It looks like you'll have to return another time to get those toys, hopefully without being disturbed next time.";
			now HP of Tehuantl is 13;
	otherwise if hp of Tehuantl is 13:
		say "     As you wander through the red light district, you once again find yourself outside the BDSM shop you were chased out of by those latex clad dominatrixes. Taking a deep breath, you once again pull the door open a crack and peer inside. Seeing the coast is clear once again you quickly step inside and make a b-line for the back counter. Finding the bag of toys and collar right where you left them, you quickly stuff them into your backpack before you rush back outside, making your escape before the latex mistresses return again.";
		now HP of Tehuantl is 14;
		now Feline Relief is resolved;

[Section 7 - Endings

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
				say "     Additional text for a female survivor who cannot become preggers.";]

[
TehuantlCheating is an action applying to one topic.
understand "TehuantlTest" as TehuantlCheating.

carry out TehuantlCheating:
	say "[TameTehuantl]";

TehuantlStating is an action applying to one topic.
understand "TehuantlStat" as TehuantlStating.

carry out TehuantlStating:
	say "hp of Tehuantl:[hp of Tehuantl][line break]";
	say "TehuantlTimer:[TehuantlTimer][line break]";
	say "TehuantlStatus:[TehuantlStatus][line break]";
]

[HP values of Tehuantl]
[1-9 Jaguar Warrior creature in Museum]
[10 Just brought Tehuantl home]
[11 First heat started]
[12 searching for toys for Tehuantl]
[13 fled BDSM shop]
[14toys found]
[15 toys given to Tehuantl, standard heat cycle begins here]
[255 lost during toy hunt event]

Jaguar Warrior ends here.
