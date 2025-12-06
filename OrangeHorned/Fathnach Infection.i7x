Version 1 of Fathnach Infection by OrangeHorned begins here.

Section 1 - Creature Responses

fathnachdefeatnum is a number that varies.
nofathnachsex is a number that varies.

to say losetofathnach:
	now nofathnachsex is 0;
	let T be 1;
	if Player is submissive, increase T by 1;
	if Player is mpreg_ok, increase T by 1;
	if anallevel is 3, increase T by 1;
	if anallevel is 1, now T is 0;
	say "     Having defeated you, the Fathnach man looms over you, a predatory gleam in his eyes. 'I won, so now it's time to do your Big Bro a favor, you're gonna love it!'";
	if Player is male: [Male]
		say "     With your exhausted and beaten body, you can't resist him as he pulls your clothes off, revealing your [Cock of Player] cock to the cold air. 'You had me pent up from the start of our play session, it's only fair you help me right? After all, you look like you're gonna need a good drink to help you get back up.'";
		if Breast size of Player is 0:
			say "     'Mmmph, after all you need some man-milk to grow big and strong.' He smashes his gigantic moobs into your flat chest, pushing aggressively into your frame.";
		else if Breast size of Player > 4:
			say "     'Looks like you been feeding people like a proper bro, but lemme show you a better way!'";
		else:
			say "     The Fathnach mashes his pecs into your chest, 'My nipples have been eager for a milking~'";
		WaitLineBreak;
		if a random chance of T in 6 succeeds:
			say "     Before you can really understand all that's going on, the beast throws you to the ground; he turns around to straddle you with his rear to your face just so you can see his twitching asshole leak like a pussy. 'See that? You're about to give me a good filling!' You get no say as he consumes your face into his stretchy ass, his musk overpowering your braincells quickly into submission. You never wanted any more than to fuck such a perfect hole.";
			say "     When he sees your [Cock of Player] shaft at full mast, he finally gives you fresh air, your face covered in his lubed-ass juice keeping your cock leaking. He doesn't bother with any foreplay as his hole sucks it in in one go, quickly bouncing away, giving frantic pants of joy from the sensation of a full ass. It doesn't take long from his tight hole squelching greedily to have you churning ropes inside. He doesn't seem to notice as he continues riding you until you pass out from exhaustion; you only come to when he's fully gone, leaving your body a mess from his sweat- which oddly enough fills you with some energy to get back up again even after all of that.";
			CreatureSexAftermath "Fathnach" receives "AssFuck" from "Player";
		else:
			say "     With an excited moo, the Giant-kin rubs his cock, using some sort of magic on his girthy rod to transform it into a slick pussy; you faintly see his eyes under his bangs reveal their crazed nature. His rugged hands rub at your shaft, laying his pussy lips in between his folds. 'Nothin' better in the world than some unprotected breeding, you better bet you're fucking me till I'm swollen with little calves!' With little fanfare, you watch your cock go in their heavily lubricated depths with one go- causing involuntary moans from the both of you.";
			say "     The Firbolg hypnotically rides you, pulling his nipples tightly to make milk go all over the place. Even if you wanted to latch on- the frantic riding of the cow-man keeps you unable to latch on. His tight pussy warmly strangles your cock smashing your balls with every slam of his girthy frame onto yours. 'This is only gonna end when you give big bro a nice warm load, so just cough it up!'";
			say "     He is going to crush you under all that weight; the pleasure hits you hard, your body entirely stiff as you cum huge wads of cum straight into his fertile folds. The Firbolg lets out a long moo as he straddles you for a little longer. Once he is sure you are out of cum, the man stands up, rubbing his battered pussy eagerly. 'Aaaah, that's the stuff...' You can't catch what he mumbles to himself as he walks off into the city.";
			CreatureSexAftermath "Fathnach" receives "PussyFuck" from "Player";
	else if Player is female:
		say "     <Editor's Note: Sorry, this scene is still WIP.>";
	else:
		say "     Pulling your clothes off to see no genitals gets a sound of dissatisfaction from the giant-kin. 'Oh, but how are you gonna have fun without any funstick or fun-flaps? Ah! I know!' He quickly smashes your face into his giant pecs, nursing you like a mother a child as you gulp down the refreshing drink by force. Your entire body tingles with energy as the man chuckles at your body's changes. 'Come find me again when you're ready for more real fun, you need to rest after drinking so much anyway~' He walks away smiling with a dopey faced grin, playing with the tit that has your bite marks on it.";
		PlayerDrink 10;
		if "Iron Stomach" is not listed in feats of Player, infect "Fathnach";

to say beattheFathnach:
	say "     'Awww I lost,' he sighs, ears hanging low as he kneels to the ground. 'Well, how do you wanna play with your Big Brother?'";
	say "     [bold type]If you want to do something, he's listening...[roman type][line break]";
	let Fathnach_Choices be a list of text;
	if Player is Male or Player is Herm:
		add "Fuck his pussy." to Fathnach_Choices;
		add "Fuck his ass." to Fathnach_Choices;
	add "Make him shoo." to Fathnach_Choices;
	let Fathnach_Choice be what the player chooses from Fathnach_Choices;
	if Fathnach_Choice is:
		-- "Fuck his pussy.":
			LineBreak;
			say "[Plow_Fathnach]";
		-- "Fuck his ass.":
			LineBreak;
			say "[AssFuck_Fathnach]";
		-- "Make him shoo.":
			LineBreak;
			say "     You tell him to beat it, the Fathnach whimpering with his ears lowered, walking off into the infected city.";

to say Plow_Fathnach:
	say "     You tell him to turn his cock once again into a cunt, seeing as he clearly wants to be bred so badly. The infected Giant-kin eagerly shifts his nether regions, showing off his tight lower lips for your pleasure. What follows is a quick session of fucking that involves you smashing your head between his moobs, arms wrapped into his love handles as the squelching of his wet cunt drives you deeper into madness.";
	say "     You completely lose your sense of preservation, licking wildly at his body as his musk overwhelms you. It takes little time before your balls squeeze, filling up your partner with the load he deserves for such an amazing body. 'Hoooh... I'm gonna have strong calves thanks to you... I need to rest here for a bit.' Leaving him on the street, you continue your journey.";
	CreatureSexAftermath "Fathnach" receives "PussyFuck" from "Player";
	infect "Fathnach";

to say AssFuck_Fathnach:
	say "     You make them turn his dumptruck globes around, presenting you with a giant donut of an anus. You give it a few licks before jamming your [Cock of Player] cock inside; the bull-man wildly yelps and throws his body back into yours- the spent energy of the battle having no effect on his constantly hyperactive sex drive. He cums three times into the pavement before you're able to finally reach your climax. You leave the Giant-kin on the floor as you continue your journey.";
	CreatureSexAftermath "Fathnach" receives "AssFuck" from "Player";

Section 2 - Creature Insertion

to say Fathnachdesc:
	say "     You turn a corner in the High Rise and run into a behemoth of an infected, the 10 foot tall Firbolg chuckling as he drools, 'Oh, another brother to play with! Big Bro's in need of help... Come here~' His tone of voice has no ounce of malicious intent, but from the swaying of his tail and his muscles flexing, it's clear he sees you as his next target. Squeezing his pecs in anticipation, he begins his assault!";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Fathnach"	"[PrepCombat_Fathnach]"

to say PrepCombat_Fathnach:
	choose row MonsterID from Table of Random Critters;
	if Player is MalePreferred:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
[The entire section on line 98-100 here creates a table entry for an infection to "live" in. Without it, the game will glitch. Never forget to add it for each infection! There's always a single empty line between the line of --s and the "choose" line below.]

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false; [This should always say False. You don't need to know why, just remember it!]
	now Species Name entry is "Fathnach"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Fathnach" to infections of BipedalList;
	add "Fathnach" to infections of OtherworldlyList;
	add "Fathnach" to infections of MaleList;
	add "Fathnach" to infections of TransList;
	add "Fathnach" to infections of AlwaysLacList;
	add "Fathnach" to infections of AlwaysHeatList;
	add "Fathnach" to infections of Birthlist;
	add "Fathnach" to infections of MpregList;
	now Name entry is "Fathnach"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "Fathnach"; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The Fathnach slams into you and pins you to the ground for a moment smooshing you into his sweaty crotch![or]The Fathnach pulls you into a bone crushing hug![or]The Fathnach slams his body into you, grinding his crotch fervently into your body before you're able to recover, leaving you smelling like him![at random]";
	now defeated entry is "[beattheFathnach]"; [ Text when monster loses. This plays when you win the fight!]
	now victory entry is "[losetoFathnach]"; [ Text when monster wins. This plays when you lose or submit.]
	now desc entry is "[Fathnachdesc]"; [ Description of the creature when you encounter it. This plays before you start a fight.]
	now face entry is "that of a Fathnach, a very bulky face with slight stubble to complement a more masculine body type"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "now one of blueish green skin that makes you look like that of the mountainous forests, your giant pecs and ass bubble from your giant body that could feed an entire family of people. Your arms and legs jiggle until you flex them to become a iron wall of defense";  [Body description, format as "Your body is [Body of Player.]"]
	now skin entry is "fur like that of a Fathnach, soft to the touch; if time wasn't an ongoing issue, you could run your fingers over your body for hours exploring your new"; [ Skin. Format as Your skin is [Skin of Player.]" ]
	now tail entry is "Your large behind was designed to milk the cocks of those in the city and leave their balls completely empty; your hole itself puckers as you marvel at your mounds, with the cute little bovine tail wagging from your amusement."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]bulky[or]drooling[or]thick[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it stretches and warps, growing and pulling forward into a short ursine mouth. Your teeth sharpen into points and your lips develop a little bit of give, all the better for baring your teeth. Two fluffy rounded ears sprout from the top of your head, twitching at the slightest noise"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it becomes hulking and weighty, yet cut and muscular. Your broad shoulders and strong muscles peter off in a V-shape toward your waist, where a six pack sits. Your fingers grow claws, and the tips of them sport soft pads. Your feet become wider, with sharp nails and spread paws to support your weight"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "it grows slightly damp, as though you're prone to sweating, and grows a thick layer of fluffy fur that soaks up the scents and moisture from it"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes rounded and bouncy, with just enough muscle to maintain its shape, topped with a nub of a tail that sits at the apex"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it takes on a distinctly bovine shape. It has a distinct funky smell that pours off of it no matter what you do, like you've been at the gym for hours without a shower"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 25; [These stats affect the creature's combat potential when you encounter it as a monster.]
	now dex entry is 10; [Try not to make the values substantially high.]
	now sta entry is 22; [If you make them too high, the fight becomes far too hard.]
	now per entry is 10; [Bonus points if they match the creature's personality!]
	now int entry is 6;	[Like this setup would be a strong, medium fast himbo with a lot of stamina and bad people skills.]
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the Player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 77; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "High"; [ "Outside" "Mall" "Park" "Beach" etc... This determines where the creature will appear as an enemy. "Nowhere" means they can't be "hunted" and won't show up during "explore" commands.]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 8; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a Player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a Player. ]
	now SeductionImmune entry is false; [Whether or not the creature is immune to the the "tease" command.]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "Fathnach Tuft"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 42; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "Fathnach Milk"; [Item given when using the "milk yourself" command in game.]
	now CumItem entry is "Fathnach Cum Pollen"; [Item given when using the "Jerk Off" command in game.]
	now TrophyFunction entry is "[GenerateTrophyList_Fathnach]"; [Points to a list of items you can get whe the creature is defeated.]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]beefy[or]muscular[at random]";
	now type entry is "Fathnach"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true; [Whether the creature is magical or not.]
	now non-infectious entry is false; [A switch to determine whether the creature infects players who have sex with them.]
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [Alternative combat. New writers should not mess with this. Leave it default.]
	now BannedStatus entry is false; [Leave on false. The game will ban the character based on player choices.]

Table of Game Objects (continued)
name	desc	weight	object
"fathnach tuft"	"A tuft of fur that looks like it has been pulled out of the coat of a Fathnach. It's nicely soft."	0	fathnach tuft

fathnach tuft is a grab object.
Usedesc of fathnach tuft is "[FathnachTuftUse]".
It is temporary.

to say FathnachTuftUse:
	say "     Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Fathnach";

instead of sniffing Fathnach Tuft:
	say "     The fur has a very strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"Fathnach Cum Pollen"	"A plastic bottle containing cum with bits of yellow pollen orbs inside, labeled 'Fathnach Cum Pollen'."	0	Fathnach Cum Pollen

Fathnach Cum Pollen is a grab object.
Fathnach Cum Pollen is infectious.
Strain of Fathnach Cum Pollen is "Fathnach".
Usedesc of Fathnach Cum Pollen is "[FathnachCumPollenuse]".

to say FathnachCumPollenuse:
	say "Lifting the plastic bottle to your mouth may have not been the best idea, but it sure tastes like it. A sweet tasting honeydew with a hint of floral notes spreads into your body, you feel yourself tingling all over with excitement- almost with a thirst for more. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;


to say GenerateTrophyList_Fathnach: [The list of item drops available to players after defeating the creature! You can make things as rare or as common as you like. Items must have an entry to drop, so don't make things up randomly without creating the item first!]
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "Fathnach Tuft" to CombatTrophyList;
	if a random chance of (40 + LootBonus) in 100 succeeds:
		add "Fathnach Cum Pollen" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Fathnach Infection ends here.
