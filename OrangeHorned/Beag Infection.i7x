Version 1 of Beag Infection by OrangeHorned begins here.

Section 1 - Creature Responses

beagdefeatnum is a number that varies.
nobeagsex is a number that varies.

to say losetobeag:
	now nobeagsex is 0;
	let T be 1;
	if Player is submissive, increase T by 1;
	if Player is mpreg_ok, increase T by 1;
	if anallevel is 3, increase T by 1;
	if anallevel is 1, now T is 0;
	say "     Having defeated you, the beag releases a call of triumph and pushes you down. His cock is pulsating with need, dripping with pre and eager for use.";
	if Player is female:
		if Player is impreg_able and a random chance of 2 in 3 succeeds:
			say "     He roughly turns you over onto all fours and climbs atop you. As he grinds his long appendage against your pussy's wet lips- making you moan to the flared tip- your needy cunt suddenly feels empty after a long fought battle, and he's unfortunately got what you need. With an arrogant snort, the bovine-man taunts you. 'Ooooh I've been waiting for this, when I'm finished you're gonna beg to be one of my brothers!' he says, rubbing a thick hand across your tummy. Before you can respond, he slams his groin into your rear, laying you out onto the ground as he shifts his position enough to get his penis lined up and drives his foot-long erection into you, drawing another moan from your trembling body.";
			say "     As he mates you, he tries muffling his moans and moos into your neck. Your inner walls quiver and your honeyed juices start to flow as your excitement builds. Your vagina squeezes and pulls at his meaty rod and, after several minutes of steady pounding, is rewarded with the hot rush of the beag's semen. As he climaxes with a loud bull's call he loses his rhythm, blasting spurt after spurt of thick semen into you. Once spent, he rubs your belly meaningfully once again before pulling out. 'See you on the flip side doll,' leaving you panting and leaking his tainted seed as he vanishes into the crazed city.";
		else:
			say "     He roughly turns you over onto all fours and climbs atop you, sinking his horse-like dong into your pussy. You moan and quickly grow a desperate need to feel his hot cum. Your inner walls quiver and your honeyed juices start to flow as your excitement builds. After a few minutes of steady pounding, he drives hard into you repeatedly, blasting spurt after spurt of thick semen into you. Even as you're cumming, he pushes you off his spent cock and onto the ground before leaving you splayed out on the ground.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Beag";
	else if a random chance of T in 6 succeeds:
		say "     He roughly turns you over onto all fours and grabs your ass. 'You got no breeding hole, but you'll do nicely, my balls are aching for release,' he says as he climbs atop you, sinking his flared cock into your ass. You groan in discomfort at the sudden penetration, but quickly grow excited as the sweat from his body makes your skin tingle with energy- making every thrust more pleasurable than the last. He grunts into your shoulder, and after a few minutes of steady pounding, he finally loses himself to pleasure- blasting spurt after spurt of thick semen into your ass. Even as you're cumming, he pushes you off his spent cock and onto the ground before sauntering off.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Beag";
	else:
		say "     'Eh, no hole, no goal. Come find me when you get a cunt. Then I'll properly breed you,' he grunts as he walks off in dissatisfaction.";

to say beatthebeag:
	say "     The beag falls on his ass as he takes a few steps back. 'Ok ok you made your point, but help a guy out, my balls are gonna explode if I dont empty them!' He gives you a plea, no longer attempting to force his lust on you.";
	say "     [bold type]If you want to do something, he's listening...[roman type][line break]";
	let Beag_Choices be a list of text;
	if Player is female:
		add "Ride his shaft." to Beag_Choices;
	if Player is male:
		add "Fuck his ass." to Beag_Choices;
	add "Just let him go. Driving him off is enough." to Beag_Choices;
	let Beag_Choice be what the player chooses from Beag_Choices;
	if Beag_Choice is:
		-- "Ride his shaft.":
			LineBreak;
			say "[Ride_Beag]";
		-- "Fuck his ass.":
			LineBreak;
			say "[AssFuck_Beag]";
		-- "Just let him go. Driving him off is enough.":
			LineBreak;
			say "     You tell him to beat it, the cowman whimpering with his ears lowered, walking off into the infected city.";

to say Ride_Beag:
	say "     As you tell the beag that you want to ride his cock, his cocky smirk returns. 'Why didn't you say so earlier? We could have skipped the fighting,' he laughs. That may be, but you don't intend to give him full control of your coupling; you are the victor, after all. 'Fair, fair,' he concedes, sitting down with his back to [one of]a lamp post[or]the side of a building[or]the husk of a truck[at random] and tugging his underwear out of the way. 'Hop on, we can start sharing the love.'";
	say "     You reach down, your hand closing around his throbbing cock. His dickhead pulsates warmly in your palm -a testament to the intensity of this breeder's arousal. Lining the flared tip to your inner folds makes you moan out in desire, gleefully, you ride the bull like there's no tomorrow. Your womb grows full of beag precum- quickly escaping out of the sides as you wetly plap away- his face contorting to try to hold back. With one last slam of your hips, he cums before you, bloating you up with Firbolg seed- making you more awake and alert than ever. You jump a few more times for your own orgasm before you leave, the beag splayed on the ground only making a few quiet grumbles as you walk away.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Beag";

to say AssFuck_Beag:
	say "     You tell the beag to bend over and show you your prize, causing him to chuckle a bit as he obeys. 'I hope you've got the size to properly satisfy me. My [']brothers['] have given me high expectations,' he warns you good-naturedly. Part of you wants to tell him that that isn't your problem, but he does seem rather desperate, not to mention how soft and warm his ass looks. The beag finds a suitable spot and bends over, arching his back to better show off his backside for you. 'I'm waiting, oh mighty victor,' he teases you invitingly- tail swaying above his muscled cheeks to taunt your nature.";
	say "     Carefully, you use the beag's intense body sweat to lube up your [Cock of Player] cock before carefully planting yourself in his backdoor. He grinds himself into the floor as his hyper member churns up cum onto his chest and face a few times as you lose yourself in his tight rear. It doesn't take long for your tryst to come to an end as you lose tempo- quickly filling his hole with hot spunk, he moans whorishly to this new experience you've given him; hopefully he remembers for next time.";
	CreatureSexAftermath "Beag" receives "AssFuck" from "Player";



Section 2 - Creature Insertion

to say Beagdesc:
	say "     Your searching is interrupted by a large figure, a naked cowman with a human face and a large horse appendage standing in your way. [one of]'Oho, looks like I found fresh meat,'[or]'Fuck I'm too pent up to care where I stuff my cock,'[or]'C'mere, lemme show you a fun time,'[at random] he says as he swats his tail around.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Beag"	"[PrepCombat_Beag]"

to say PrepCombat_Beag:
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
	now Species Name entry is "Beag"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Beag" to infections of OtherworldlyList;
	add "Beag" to infections of NatureList;
	add "Beag" to infections of MaleList;
	add "Beag" to infections of BluntCockList;
	add "Beag" to infections of HumanList;
	add "Beag" to infections of BipedalList;
	add "Beag" to infections of MagicalList;
	add "Beag" to infections of AlwaysRutList;
	now Name entry is "Beag"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "Beag"; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The beag slams into you and pins you to the ground for a moment, with your face in his sweaty crotch![or]The beag grips you tightly before slamming you into the ground![or]The beag slams his body into you, grinding his crotch fervently into your body before you're able to recover, leaving you smelling like him![at random]";
	now defeated entry is "[beattheBeag]"; [ Text when monster loses. This plays when you win the fight!]
	now victory entry is "[losetoBeag]"; [ Text when monster wins. This plays when you lose or submit.]
	now desc entry is "[Beagdesc]"; [ Description of the creature when you encounter it. This plays before you start a fight.]
	now face entry is "that of a beag; you look quite masculine as it is human- you lack any bovine features your 'big brothers' have"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "that of an Olympic sprinter, your muscled body is packed with dense muscle, yet you're no bodybuilder to really capitalize on your new endurance"; [ Body description, format as "Your body is [Body of Player]." ]
	now skin entry is "blue-colored and rugged"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your backside is a dense behind that you can slap multiple times and watch as it barely shakes, it's completely dense enough to catch a bullet... though you wouldn't want to find out if that thought is true."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]bovine-ish[or]flared 'horse-like' shaft[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it stretches and warps, growing and pulling forward into a short ursine mouth. Your teeth sharpen into points and your lips develop a little bit of give, all the better for baring your teeth. Two fluffy rounded ears sprout from the top of your head, twitching at the slightest noise"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it becomes hulking and weighty, yet cut and muscular. Your broad shoulders and strong muscles peter off in a V-shape toward your waist, where a six pack sits. Your fingers grow claws, and the tips of them sport soft pads. Your feet become wider, with sharp nails and spread paws to support your weight"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your skin grows slightly damp, as though you're prone to sweating, and grows a thick layer of fluffy fur that soaks up the scents and moisture from it"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes rounded and bouncy, with just enough muscle to maintain its shape, topped with a nub of a tail that sits at the apex"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it takes on a distinctly bovine shape. It has a distinct funky smell that pours off of it no matter what you do, like you've been at the gym for hours without a shower"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 17; [These stats affect the creature's combat potential when you encounter it as a monster.]
	now dex entry is 12; [Try not to make the values substantially high.]
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
	now loot entry is "Beag fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 42; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "Beag milk"; [Item given when using the "milk yourself" command in game.]
	now CumItem entry is "Beag cum"; [Item given when using the "Jerk Off" command in game.]
	now TrophyFunction entry is "[GenerateTrophyList_Beag]"; [Points to a list of items you can get whe the creature is defeated.]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]beefy[or]muscular[at random]";
	now type entry is "Beag"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true; [Whether the creature is magical or not.]
	now resbypass entry is false; [Determines whether the creature can infect while ignoring the researcher feat. Usually false.]
	now non-infectious entry is false; [A switch to determine whether the creature infects players who have sex with them.]
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [Alternative combat. New writers should not mess with this. Leave it default.]
	now BannedStatus entry is false; [Leave on false. The game will ban the character based on player choices.]

Table of Game Objects (continued)
name	desc	weight	object
"beag fur"	"A tuft of fur that looks like it has been pulled out of the coat of a beag. It's nicely soft."	0	beag fur

beag fur is a grab object.
Usedesc of beag fur is "[BeagFurUse]".
It is temporary.

to say BeagFurUse:
	say "     Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Beag";

instead of sniffing beag fur:
	say "     The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"beag cum"	"A plastic bottle containing some slimy white fluid. It bears the label 'Beag Cum'."	0	beag cum

beag cum is a grab object.
beag cum is cum.
beag cum is infectious.
Strain of beag cum is "Beag".
Usedesc of beag cum is "[beag cum use]".

to say beag cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

to say GenerateTrophyList_Beag: [The list of item drops available to players after defeating the creature! You can make things as rare or as common as you like. Items must have an entry to drop, so don't make things up randomly without creating the item first!]
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "beag fur" to CombatTrophyList;
	if a random chance of (40 + LootBonus) in 100 succeeds:
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Beag Infection ends here.
