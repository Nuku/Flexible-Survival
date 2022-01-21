Version 2 of Gazelle by Sarokcat begins here.
[Version 2.2 - Victory ride sex adjusted M/H - Stripes]

"Adds a gazelle to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

gazellesbeaten is a number that varies.

to say gazelle attack:
	project the Figure of Gazelle_hard_icon;
	say "     The gazelle-like human knocks you to the ground, and then stares down at your defeated form, almost seeming surprised at their victory. 'Well you aren't so dangerous after all,' the beast says, and you can see its cock growing erect and its pussy moistening as it savors its victory. 'Maybe we didn't have to panic after all... then again,' the gazelle says with a speculative look at your prone form. 'Just maybe deep down you wanted me to win after all, hmm.' She considers you for a minute as she tries to catch her breath before deciding something. 'I think I see something I like in you,' she says with a sharp nod, her horns bobbing as she lowers herself over you. 'Maybe we should have some fun...'";
	WaitLineBreak;
	if Player is female:
		say "     Reaching down, she spreads your legs further apart as she takes a good long look at your body, before running her hoof-like fingers along the outside of your soft cunt. 'Yes I definitely see something I like,' she says with a grin as she pumps her cock with her other hand. Not waiting for your reaction, she quickly grabs your legs in her hands and spreads them wide as she moves between them, her cock probing at your feminine passage. Finding the right angle she wastes no time thrusting herself into you fully, making you cry out at the sudden invasion, soon though you find the feeling of being penetrated by her hard maleness becomes completely pleasurable. Her animalistic member spearing into you again and again as she leans over you, her hoof-like hands on her hips as she thrusts in, you find your own hands gripping her horns as she hovers over you, gripping her in an effort to get her to thrust harder, and faster. She soon complies to your demands, and you buck and writhe underneath her as your orgasm shoots through you, causing her to orgasm as well, her strong member filling you up to the brink. Slowly she withdraws as you collapse bonelessly, a mixture of your juices leaking out of your passage as she sets you down, causing you to moan at the erotic feeling. 'Yes I definitely see something here I like,' she says with a grin as she brushes herself off. 'Hopefully you will come by soon so I can see it again,' she says before bounding off down the zoo pathways to rejoin her herd, leaving you lying there helplessly, her warm seed still leaking out of you.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Gazelle";
		infect "Gazelle";
	else:
		say "     Reaching down she wraps her slightly hoof-like fingers around your cock, pumping it once or twice with a grin as she watches your reaction. 'Yes I definitely see something I like here,' she says as she wastes no time lowering herself onto you. You buck in pleasure as she sinks onto your cock, and then moan as she starts to ride you, one hand bracing herself up on your chest, while the other strokes her own erect cock where it stands out from her body. You gasp in pleasure as she fucks you hard, her strong leg muscles lifting her up and down on your cock until you finally can't take it anymore. You cry out as you orgasm, shooting yourself into her hot opening, causing her to cry out above you as your release causes her to orgasm as well, her cunt shuddering around your cock as it milks it, and her own cock shooting its seed all over your chest some of it even spattering your face with its powerful release. Spent you lie there as she shudders over you, she recovers first and pulls herself off of you, standing up and brushing herself off, she looks down at your spent form, covered in her juices and her seed. 'Yes I definitely see something I like there...' she says with a grin. 'Hopefully you will come by soon so I can see it again,' she finishes, before bounding off down the zoo pathways to rejoin her herd, leaving you lying there, covered in her seed.";
		CreatureSexAftermath "Gazelle" receives "PussyFuck" from "Player";
		infect "Gazelle";


To say gazelle loss:
	project the Figure of Gazelle_hard_icon;
	increase gazellesbeaten by 1;
	if the remainder after dividing gazellesbeaten by 3 is 0:
		say "     As the gazelle cries out in pain from your last blow, you manage to knock her down. As she starts to scramble away, having bought time for the rest of the herd to flee, you grab this one before she can get away. Feeling a predatory rush of excitement, you look her over, trying to decide what you'd like to do with this gazelle person";
		if Libido of Player > 75:		[no choice]
			if Player is male:
				say ". In your highly aroused state, you decide right away to give her a good, hard fucking.";
				say "[gazellefuck]";
			else:
				say ". In your highly aroused state, you decide right away to get her cock inside you.";
				say "[gazelleride]";
			now Libido of Player is ( Libido of Player + Libido of Player + 30 ) / 3;
		else:
			if Player is male:
				say ". Drawn to her dual-gendered groin, you wonder if you should fuck her [link](1)[as]1[end link], get her cock inside you [link](2)[as]2[end link] or just let her go [link](3)[as]3[end link].";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to fuck her, [link]2[end link] to ride her cock or [link]3[end link] to let her go.";
				if calcnumber is 1:
					say "[gazellefuck]";
				else if calcnumber is 2:
					say "[gazelleride]";
				else:
					say "     Still upset with the gazelle person for attacking you, you give her a hard smack on her rear, making her tail twitch, as you send her on her way.";
			else:
				say ". You consider getting a ride on that cock of hers (Y) or just letting her go (N).";
				if Player consents:
					say "[gazelleride]";
				else:
					say "     Still upset with the gazelle person for attacking you, you give her a hard smack on her rear, making her tail twitch, as you send her on her way.";
	else:
		say "     Crying out in pain at your last blow, the gazelle quickly glances around, and you realize while you were engaged with this opponent, the other gazelle have completely vanished. Seemingly satisfied at the success of its distraction, the gazelle shoots you one last smug grin, before darting off itself, its legs pumping as it bounds quickly through the bushes before you can follow.";


to say gazellefuck:
	say "     Moving atop the strange person, you grab the weakened gazelle's arms and push her onto all fours. Freeing your cock, you bring it into position under her flagging tail, making her release a moaning bleat as you brush it against her wet pussy. She starts to calm down a little, perhaps realizing you're not going to eat her. Her fearful panting is replaced by lustful moaning as you continue to fuck her, driving your cock into her again and again. Pretty confident that she's not going to make a run for it now, you move your hands to her chest, fondling her cute breasts and teasing her nipples. When you feel your orgasm approaching, you move your hands up to her horns and grip them tightly as you slam into her quickly as you drain your balls into the creature. [if Ball Size of Player > 5]Your massive load leaves the poor creature full and bloated with your seed as she weakly staggers away[else if Ball Size of Player > 3]Your large load leaves a noticeable bump in her tummy as she heads off[else]Some of your cum leaks from the creature's pussy as she heads off[end if] in search of the rest of her herd.";
	CreatureSexAftermath "Gazelle" receives "PussyFuck" from "Player";

to say gazelleride:
	say "     Moving atop the strange person, you grab the weakened gazelle's arms and push her onto her back. Slipping off your pack and any obstructing clothes, you grind your [if Player is female]wet pussy[else]ass[end if] onto her crotch, making her release a moaning bleat as you brush it against her stiffening cock. She starts to calm down a little, perhaps realizing you're not going to eat her. Her fearful panting is replaced by lustful moaning as you continue to ride her erection, driving her cock into you again and again. Pretty confident that she's not going to struggle to get away now that she's bucking into you, you move your hands to her chest, fondling her cute breasts and teasing her nipples. Feeling your climax approaching, you ride her harder, squeezing your [if Player is female]cunt[else]asshole[end if] down around her cock until you get her to drain her balls into you. [if Player is female and Cunt Depth of Player < 5]You weren't able to get much of her elongated, animalistic penis into you, but you still cum hard as her seed fills your womb[else if Player is female and Cunt Depth of Player > 15]Even though her elongated, animalistic penis was not enough to fill your deep pussy, you still cum hard as her seed fills the depths of your vagina[else if Player is female]You cum hard as you ride up and down as her elongated, animalistic penis pulses inside you, sending her hot seed into your womb[else if Player is male]You cum hard as you ride up and down as her elongated, animalistic penis pulses inside you, sending her hot seed into your bowels[else]You moan in satisfaction as you ride up and down as her elongated, animalistic penis pulses inside you, sending her hot seed into your bowels[end if]. After she'd been drained of her seed[if Player is not neuter] and your orgasm subsides[end if], you release her and watch her rush off in search of the rest of her herd.";
	CreatureSexAftermath "Player" receives "[if player is female]PussyFuck[else]AssFuck[end if]" from "Gazelle";

to say GazelleDesc:
	project the Figure of Gazelle_soft_icon;
	setmongender 5;
	say "     Wandering down the zoo paths, you come across a small group of rather human-like gazelles. Their short muzzles and sharp horns move happily as they graze on the topiary with thin cocks sprouting from between their legs, above their obviously female openings, with soft pert breasts resting on their chests. Spotting you they immediately freeze. Before you can even open your mouth to speak, most of them bolt in different directions, although one of them charges right at you, intent on protecting the rest of the herd! You have no choice but to brace yourself for battle!";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Gazelle"; [name of the overall species of the infection, used for children, ...]
	add "Gazelle" to infections of BovineList;
	add "Gazelle" to infections of FurryList;
	add "Gazelle" to infections of NatureList;
	add "Gazelle" to infections of HermList;
	add "Gazelle" to infections of BluntCockList;
	add "Gazelle" to infections of SheathedCockList;
	add "Gazelle" to infections of BipedalList;
	add "Gazelle" to infections of TailList;
	now Name entry is "Gazelle";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]She leaps forward, slamming into you roughly[or]Lowering her head, she points her sharp horns at you as she charges.[or]Leaping up she lashes out at you with her hoof-like feet![or]Dancing forward she lashes out with her hoof like hand.[or]Springing forward, she slams her body into you, knocking you down.[at random]";
	now defeated entry is "[gazelle loss]";
	now victory entry is "[gazelle attack]";
	now desc entry is "[GazelleDesc]";
	now face entry is "a short gazelle-like muzzle, it being a blend of gazelle and human features, with large bright eyes and sharp backwards pointing horns rising above your head"; [ Face description, format as "Your face is (your text)."]
	now body entry is "lean and lithe, your legs are well built for leaping and jumping as you balance on your hoof-like feet, your arms narrow and slender and the tips of your fingers covered in hoof-like nails"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]brown and white patterned[or]spotted[or]soft furred[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a small, fluffy tail sticking out from your backside, its shape helping to pull your ass up slightly, giving your backside a happy, perky appearance."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]gazelle[or]sheathed[or]bovine[as decreasingly likely outcomes]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it pushes forward into a short narrow muzzle, filling up with thick herbivore teeth. Sharp pressure shoots through your skull as two new gazelle like horns slowly press out of your skull, adding some weight to your head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it seems to grow more lithe and lean, your feet changing into sharp hooves, as your legs shift and change to help you balance better on your new hooves. Your hands grow slightly shorter as your fingernails cover the tips, giving them a slightly hoof-like appearance, and your form becomes better suited to swift fast movements and leaps"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft brown and white patterned fur covers your body, your skin itching slightly as it settles into place"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your ass tightens to for better running and jumping, as a soft gazelle tail sprouts behind you"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it draws up tighter between your legs, becoming wrapped in a proper gazelle-like sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 3;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Zoo";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 9;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 9;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 20;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "lucky horseshoe";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]lean[or]slender[at random]";
	now type entry is "gazelle";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Gazelle Infection"	"Infection"	""	Gazelle Infection rule	1000	false

This is the Gazelle Infection rule:
	if Player has a body of "Gazelle":
		trigger ending "Gazelle Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is female:
				if Player is male:
					say "Unable to fight your need to belong any longer, you quickly search out the gazelle herd, you encountered several times before. Unlike before though, this time instead of scattering at your approach, they open ranks and are completely accepting of your presence here, making you feel as if you belong as they close ranks around you to keep an eye out for dangers. You soon find yourself being greeted by a familiar looking gazelle as she nuzzles you happily. 'I knew I saw something I liked in you,' she mutters as she runs her hands along your sides. 'I'd be happy to welcome you to the herd properly...' she says with a grin. You shudder and find yourself nodding, happy to belong and happy to have found your place as she slowly runs her stiff cock along your thighs, before thrusting into you. You enjoy the mating, while several other gazelles watch both you and for any threats, their presences seeming almost comforting as the two of you put on a show for them, soon she cums into you, making you happy, and pulling out she turns and presents herself for your stiff cock. You happily find yourself returning the favor, thrusting into her eager body as she welcomes you fully into the herd.";
					say "Finally feeling like a true part of the herd, you help focus on surviving in a rough and changed city, the challenges of daily life are both exciting and dangerous, yet easily met with a group by your side. Eventually though the military moves to retake the city, and things get even more dangerous, as the groups within the city fight it out with the military, your small herd and several other herds take advantage of the confusion to flee, slipping out into the countryside while everyone else's attention is focused elsewhere. Feeling totally free finally of the constant fighting, you still don't relax your vigilance, as the world is still a dangerous place for a group of gazelles. Your herd moves south while others take other paths, eventually finding some nice mostly unoccupied plains in which to settle and build up your numbers, in several years people will start hearing reports of large groups of wild gazelle wandering the area again, and several nearby towns will mysteriously be missing all their people...";
				else:
					say "Unable to fight your need to belong any longer, you quickly search out the gazelle herd, you encountered several times before. Unlike before though, this time instead of scattering at your approach, they open ranks and are completely accepting of your presence here, making you feel as if you belong as they close ranks around you to keep an eye out for dangers. You soon find yourself being greeted by a familiar looking gazelle as she nuzzles you happily. 'I knew I saw something I liked in you,' she mutters as she runs her hands along your sides. 'I'd be happy to welcome you to the herd properly...' she says with a grin. You shudder and find yourself nodding, happy to belong and happy to have found your place as she slowly runs her stiff cock along your thighs, before thrusting into you. You enjoy the mating, while several other gazelles watch both you and for any threats, their presences seeming almost comforting as the two of you put on a show for them, soon she cums into you, making you happy, and truly making you feel like you belong here.";
					say "Finally feeling like a true part of the herd, you help focus on surviving in a rough and changed city, the challenges of daily life are both exciting and dangerous, yet easily met with a group by your side. Eventually though the military moves to retake the city, and things get even more dangerous, as the groups within the city fight it out with the military, your small herd and several other herds take advantage of the confusion to flee, slipping out into the countryside while everyone else's attention is focused elsewhere. Feeling totally free finally of the constant fighting, you still don't relax your vigilance, as the world is still a dangerous place for a group of gazelles. Your herd moves south while others take other paths, eventually finding some nice mostly unoccupied plains in which to settle and build up your numbers, in several years people will start hearing reports of large groups of wild gazelle wandering the area again, and several nearby towns will mysteriously be missing all their people...";
			else:
				say "Unable to fight your need to belong any longer, you quickly search out the gazelle herd, you encountered several times before. Unlike before though, this time instead of scattering at your approach, they open ranks and are completely accepting of your presence here, making you feel as if you belong as they close ranks around you to keep an eye out for dangers. You soon find yourself being greeted by a familiar looking gazelle as she nuzzles you happily. 'I knew I saw something I liked in you,' she mutters as she runs her hands along your sides. 'I'd be happy to welcome you to the herd properly...' she says with a grin. You shudder and find yourself nodding, happy to belong and happy to have found your place as she slowly rubs her body against you, your cock stiffening at her teasing touches, turning she presents her wet cut to you, and you happily find yourself thrusting into her eager body. You enjoy the mating, while several other gazelles watch both you and for any threats, their presences seeming almost comforting as the two of you put on a show for them, soon you shoot yourself into her, making you both happy as you become a true member of the herd, helping to ensure the next generation.";
				say "Finally feeling like a true part of the herd, you help focus on surviving in a rough and changed city, the challenges of daily life are both exciting and dangerous, yet easily met with a group by your side. Eventually though the military moves to retake the city, and things get even more dangerous, as the groups within the city fight it out with the military, your small herd and several other herds take advantage of the confusion to flee, slipping out into the countryside while everyone else's attention is focused elsewhere. Feeling totally free finally of the constant fighting, you still don't relax your vigilance, as the world is still a dangerous place for a group of gazelles. Your herd moves south while others take other paths, eventually finding some nice mostly unoccupied plains in which to settle and build up your numbers, in several years people will start hearing reports of large groups of wild gazelle wandering the area again, and several nearby towns will mysteriously be missing all their people...";
		else:
			say "Rescued from the city before you can completely lose your mind to the infection, the military releases you after only the most cursory inspection, your inoffensive looking form not seeming half as important as those of the larger predatory creatures they have to deal with. Left out and on your own, you feel somewhat nervous and skittish without anyone you can trust around, people shying away from your changed body. Deciding to make the best of things, you soon begin looking for any kind of work that is available, eventually finding a job at [one of]an accounting firm as a secretary[or]a factory working with others on the floor[or]a school teaching children[or]a law firm, as a champion of changed rights[or]a dance studio, eventually taking part in several musical productions[or]a construction firm as a coordinator[at random]. Your instinctive ability to work as part of a team proving to be a great asset in your career, though you always feel as if something is missing. Eventually at the height of your success, you decide to cash you and go looking for the partner you need, wandering the world looking for a place to belong and a partner to run with... maybe you will try Africa next...";

Gazelle ends here.
