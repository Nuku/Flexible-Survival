Version 1 of Albino Mouse by Stripes begins here.
[Version 1.1 - Hard Mode Variant added]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds Dr Mouse the Albino Mouse opponent to Flexible Survival's Monsters table"


Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

when play begins:
	add { "Albino Mouse" } to infections of furry;
	add { "Albino Mouse" } to infections of guy;
	add { "Albino Mouse" } to infections of Rodentlist;

to say drmouseattack:
	if hospfight is 1:
		say "[one of]Dr Mouse swings his fists in wild punches, managing a few glancing blows![or]The maddened mouse manages to bite your wrist with his sharp teeth.[or]The doctor starts tossing random glassware from his worktable at you![or]Dr Mouse shoves one of the stools into your path, causing you to stumble. He punches you in the jaw while you're off balance![or]The mad doctor manages to punch you in the groin with one of his wild punches. He's not very strong, but it still hurts![at random]";
	if hospfight is 2:
		say "[one of]The mouse monster punches your head with one of his bony fists, making the room spin for a moment![or]Dr Mouse's vicious claws slash across your body, opening bloody gashes![or]That twisted head manages to snap its fangorious jaws onto your shoulder![or]The transformed mouse jabs your arm with one of its horns as you try to swing at him. It stabs into your bicep and your blood flows down your arm![or]Dr Mouse grabs one of the wooden stools and proceeds to beat you with it, only stopping when it shatters against one of the worktables![or]The monstrous mouse hisses at you and releases a spray of stinging mist into your face, momentarily blinding you. As you try to stumble back while wiping your eyes, you get slammed by a powerful backhand and sent flying back several feet![or]Dr Mouse chuckles madly as he grabs your shoulder with one clawed hand and gets your arm in the other. He pulls and twists your arm, smiling as you scream in pain. Luckily, you manage to break free before he pulls it completely free of its socket, but your shoulder burns with pain![or]The monstrous creature charges, slamming his shoulder into you before sending you flying over one of the worktables![or]The transformed doctor clubs you several times with his powerful fists, laughing in mad delight as he does![at random]";

to say losetodrmouse:
	now fightstatus is 2;
	say "     Unable to continue fighting, you collapse to your knees. Dr Mouse chuckles and grabs a bottle from one of the tables. He splashes some of the liquid onto a cloth, then covers your mouth and nose with it. 'Does this smell like chloroform?' he asks with a mad titter. The room goes hazy and you pass out.";


to say beatdrmouse:
	now fightstatus is 1;
	if hospfight is 1:
		say "     Your blows leave the weak little mouse bruised and bloodied. He staggers and leans heavily against one of the work tables, panting for breath as he's no longer able to fight you.";
	if hospfight is 2:
		say "     Your final blow strikes and causes the monstrous creature to stumble back. He reaches for one of the stools to hurl at you, but you grab one and send it flying into his head first. He staggers back a few more steps, slips in a puddle and collapses at one side of the room.";


to say drmousedesc:
	choose row monster from the table of random critters;
	let debit be 0;
	setmongender 3;
	if hospfight is 1:
		say "     Dr Mouse, barely four feet tall, intends to fight you. With his white fur disheveled, his blood red eyes and sharp, rodent teeth, the albino lab mouse would be quite threatening were he not so small and weak. But the musine doctor snarls angrily and charges at you, tiny paws clenched into fists. You ready to strike, prepared to deal with the mad doctor once and for all.";
		if hardmode is true and level of player > 4, let debit be level of player - 4;
		now hp entry is 30 + ( debit * 2 );
		now monsterhp is 30 + ( debit * 2 );
		now wdam entry is 3 + ( debit / 8 );
		now lev entry is 4 + ( debit / 2 );
		now libido entry is 20;
		now str entry is 8;
		now dex entry is 12 + ( lev entry / 6 );
		now sta entry is 12;
		now scale entry is 1;
	if hospfight is 2:
		say "     The now monstrous mouse is attacking you. His altered body is huge, almost nine feet tall and bristling with sharp claws, teeth, horns and spikes. He has managed to give himself a powerful physique and seems to have retained his twisted mind. His hide is toughened, making it much harder to harm the mutated hybrid he's become.";
		let debit be 0;
		if hardmode is true and level of player > 12, let debit be level of player - 12;
		now hp entry is 150 + ( debit * 6 );
		now monsterhp is 150 + ( debit * 6 );
		now wdam entry is 10;
		if hardmode is true, now wdam entry is 12 + ( ( 2 * debit ) / 5 );
		now lev entry is 12 + debit;
		now libido entry is 100;
		now str entry is 20;
		now dex entry is 24 + ( ( debit + 2 ) / 5 );
		now sta entry is 20;
		now scale entry is 4;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Albino Mouse"; [Name of your new Monster]
	now attack entry is "[drmouseattack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beatdrmouse]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[losetodrmouse]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[drmousedesc]"; [ Description of the creature when you encounter it.]
	now face entry is "mouse-like head with large ears and cute whiskers on your muzzle"; [ Face description, format as the text "Your face is (your text)."]
	now body entry is "small and mouse-like, with pink paws for hands and feet"; [ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "pure white fur over your"; [ skin Description, format as the text "your body is covered in (your text) skin."]
	now tail entry is "You have a long, musine tail."; [ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "pink"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it deforms and reshapes itself into something more rodent-like. You gain large ears and whiskers around your muzzle. Your eyes turn a blood-red"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes that of an anthropomorphic mouse. At only about four feet tall, your stature matches your species. Your hands are replaced with pink paws with nimble digits"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "soft, white fur covers you"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "long, thin tail forms. It is rodent-like and has pale white fur covering it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it turns a soft pink in colour. It is nearly human in shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 8;
	now dex entry is 12;
	now sta entry is 12;
	now per entry is 16;
	now int entry is 24;
	now cha entry is 20;
	now sex entry is "Female";
	now hp entry is 30;				[ How many HP has the monster got? ]
	now lev entry is 4;				[ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
	now wdam entry is 3;				[Amount of Damage monster Does when attacking.]
	now area entry is "nowhere";			[ Location of monster, in this case nowhere]
	now cocks entry is 1;				[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;			[ Length infection will make cock grow to if cocks]
	now cock width entry is 4;			[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;				[ Number of Breasts infection will give you. ]
	now breast size entry is 3;			[Size of breasts infection will try to attain ]
	now male breast size entry is 0;		[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;				[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;			[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 5;			[ Width of female sex  infection will try and give you ]
	now libido entry is 20;				[ Set to zero in this monster to control elsewhere ]
	now loot entry is "";				[ Dropped item. Key will be used later ]
	now lootchance entry is 0;			[ Chance of loot dropping 0-100 ]
	now scale entry is 1;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "slender";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"Use [one of] to vary ]
	now type entry is "musine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

Albino Mouse ends here.
