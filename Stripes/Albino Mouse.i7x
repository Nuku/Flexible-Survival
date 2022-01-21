Version 1 of Albino Mouse by Stripes begins here.
[Version 1.1 - Hard Mode Variant added]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds Dr Mouse the Albino Mouse opponent to Flexible Survival's Monsters table"


Section 1 - Creature Responses

to say drmouseattack:
	if hospfight is 1:
		say "[one of]Dr Mouse swings his fists in wild punches, managing a few glancing blows![or]The maddened mouse manages to bite your wrist with his sharp teeth.[or]The doctor starts tossing random glassware from his worktable at you![or]Dr Mouse shoves one of the stools into your path, causing you to stumble. He punches you in the jaw while you're off balance![or]The mad doctor manages to punch you in the groin with one of his wild punches. He's not very strong, but it still hurts![at random]";
	if hospfight is 2:
		say "[one of]The mouse monster punches your head with one of his bony fists, making the room spin for a moment![or]Dr Mouse's vicious claws slash across your body, opening bloody gashes![or]That twisted head manages to snap its fangorious jaws onto your shoulder![or]The transformed mouse jabs your arm with one of its horns as you try to swing at him. It stabs into your bicep and your blood flows down your arm![or]Dr Mouse grabs one of the wooden stools and proceeds to beat you with it, only stopping when it shatters against one of the worktables![or]The monstrous mouse hisses at you and releases a spray of stinging mist into your face, momentarily blinding you. As you try to stumble back while wiping your eyes, you get slammed by a powerful backhand and sent flying back several feet![or]Dr Mouse chuckles madly as he grabs your shoulder with one clawed hand and gets your arm in the other. He pulls and twists your arm, smiling as you scream in pain. Luckily, you manage to break free before he pulls it completely free of its socket, but your shoulder burns with pain![or]The monstrous creature charges, slamming his shoulder into you before sending you flying over one of the worktables![or]The transformed doctor clubs you several times with his powerful fists, laughing in mad delight as he does![at random]";

to say losetodrmouse:
	say "     Unable to continue fighting, you collapse to your knees. Dr Mouse chuckles and grabs a bottle from one of the tables. He splashes some of the liquid onto a cloth, then covers your mouth and nose with it. 'Does this smell like chloroform?' he asks with a mad titter. The room goes hazy and you pass out.";

to say beatdrmouse:
	if hospfight is 1:
		say "     Your blows leave the weak little mouse bruised and bloodied. He staggers and leans heavily against one of the work tables, panting for breath as he's no longer able to fight you.";
	if hospfight is 2:
		say "     Your final blow strikes and causes the monstrous creature to stumble back. He reaches for one of the stools to hurl at you, but you grab one and send it flying into his head first. He staggers back a few more steps, slips in a puddle and collapses at one side of the room.";

to say drmousedesc:
	choose row MonsterID from the Table of Random Critters;
	let debit be 0;
	setmongender 3;
	if hospfight is 1:
		say "     Dr Mouse, barely four feet tall, intends to fight you. With his white fur disheveled, his blood red eyes and sharp, rodent teeth, the albino lab mouse would be quite threatening were he not so small and weak. But the murine doctor snarls angrily and charges at you, tiny paws clenched into fists. You ready to strike, prepared to deal with the mad doctor once and for all.";
		if HardMode is true and level of Player > 4, let debit be level of Player - 4;
		now HP entry is 30 + ( debit * 2 );
		now monsterHP is 30 + ( debit * 2 );
		now wdam entry is 3 + ( debit / 8 );
		now lev entry is 4 + ( debit / 2 );
		now libido entry is 30;
		now str entry is 8;
		now dex entry is 12 + ( lev entry / 6 );
		now sta entry is 12;
		now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 1;
	if hospfight is 2:
		say "     The now monstrous mouse is attacking you. His altered body is huge, almost nine feet tall and bristling with sharp claws, teeth, horns and spikes. He has managed to give himself a powerful physique and seems to have retained his twisted mind. His hide is toughened, making it much harder to harm the mutated hybrid he's become.";
		let debit be 0;
		if HardMode is true and level of Player > 12, let debit be level of Player - 12;
		now HP entry is 150 + ( debit * 6 );
		now monsterHP is 150 + ( debit * 6 );
		now wdam entry is 10;
		if HardMode is true, now wdam entry is 12 + ( ( 2 * debit ) / 5 );
		now lev entry is 12 + debit;
		now libido entry is 10;
		now str entry is 20;
		now dex entry is 24 + ( ( debit + 2 ) / 5 );
		now sta entry is 20;
		now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Mouse"; [name of the overall species of the infection, used for children, ...]
	add "Albino Mouse" to infections of RodentList;
	add "Albino Mouse" to infections of FurryList;
	add "Albino Mouse" to infections of NatureList;
	add "Albino Mouse" to infections of MaleList;
	add "Albino Mouse" to infections of TaperedCockList;
	add "Albino Mouse" to infections of BipedalList;
	add "Albino Mouse" to infections of TailList;
	now Name entry is "Albino Mouse"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[drmouseattack]";
	now defeated entry is "[beatdrmouse]";
	now victory entry is "[losetodrmouse]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[drmousedesc]"; [ Description of the creature when you encounter it.]
	now face entry is "mouse-like head with large ears and cute whiskers on your muzzle"; [ Face description, format as "Your face is (your text)."]
	now body entry is "small and mouse-like, with pink paws for hands and feet"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "pure white fur over your"; [ skin Description, format as "your body is covered in (your text) skin."]
	now tail entry is "You have a long, murine tail."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "pink"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it deforms and reshapes itself into something more rodent-like. You gain large ears and whiskers around your muzzle. Your eyes turn a blood-red"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes that of an anthropomorphic mouse. At only about four feet tall, your stature matches your species. Your hands are replaced with pink paws with nimble digits"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft, white fur covers you"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "long, thin tail forms. It is rodent-like and has pale white fur covering it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it turns a soft pink in color. It is nearly human in shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 8;
	now dex entry is 12;
	now sta entry is 12;
	now per entry is 16;
	now int entry is 24;
	now cha entry is 20;
	now sex entry is "Female";
	now HP entry is 30;
	now lev entry is 4; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 3; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Location of monster, in this case nowhere]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 5;
	now SeductionImmune entry is false;
	now libido entry is 20; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender" Use [one of] to vary ]
	now type entry is "murine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




Albino Mouse ends here.
