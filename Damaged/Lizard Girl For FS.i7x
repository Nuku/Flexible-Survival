Version 7 of Lizard Girl For FS by Damaged begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]


"Adds a Lizard Girl to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses


lizgirlmarked is a number that varies;
lizgirlimpreg is a number that varies;
lizgirlinheat is a number that varies;
lizgirlangry is a number that varies;


to say lizgirl herm:
	choose row monster from the table of random critters;	
	now sex entry is "Both";
	now cocks entry is 1;
	now cock length entry is 8;
	now cock width entry is 3;
	infect;
	
to say lizgirl female:
	choose row monster from the table of random critters;
	now sex entry is "Female";
	now cocks entry is 0;
	now cock length entry is 0;
	now cock width entry is 0;
	infect;
	
to say lizgirl mark:
	now lizgirlmarked is 1;
		
to say lizgirl impreg:
	now lizgirlimpreg is 1;
		
to say lizgirl check angry:
	if lizgirlangry is 1:
		if hp of player < 11:
			say "The lizard girl draws away from the fight. [line break][line break]'Useless useless useless, your blood is tainted and weak!' she screams. With a final sigh she regains her composure and paces away.[combat abort]";

		
to say lizgirl attack:
	if lizgirlmarked is 0:
		say "[lizgirl mark]";
		if cocks of player > 1:
			say "'Such a shame to have to come to this, I normally prefer my mates a little more willing. None the less.' she pins you to the ground on your back, leaving you unable to move in your weakened condition. Slowly at first she lowers down onto your member, working herself up and down your rigid length. Just as your release is unavoidable she presses down tightly, engulfing your [cock length of player] inch member deep inside herself. Just as the flow of your seed starts to taper off you feel an incessant pressing at the opening in your rod. Deeper and deeper her tentacle member pushes, down inside you, coming to rest at your balls. 'Now its my turn.' she says, snapping your attention away from her assault on your reproductive system. All of a sudden,  you feel a pressure build all down the your members length as her own seed pours into your body, leaving your balls swollen and tingling.[line break] Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has plans for your future. 'Now be a good dear, and don't fight it any more.' she says over her shoulder as she sashays away.[lizgirl impreg][lizgirl female]";
		otherwise:
			say "'Oh, nothing for me to play with? I have a cure for that.' she says, pushing you to your back and lowering herself between your legs. You would pull away but her reptilian tongue suddenly draws a gasp from you as it attacks your [cunt size desc of player], leaving you paralyzed and unable to resist. Slowly as her ministrations increase you feel a tingling in your groin. She pulls back at last, licking her lips. Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has plans for your future.[lizgirl herm]";
	otherwise:
		if cocks of player is 0:
			if lizgirlimpreg is 0:
				say "'You are already marked as mine! And yet still here you are with nothing for me?' she says angrily, pushing you to your back and lowering herself between your legs. This time, you know whats coming and you spread yourself a little wider for her as she draws a whimper after whimper from you as she takes to your dripping slit. Slowly as her ministrations increase you feel a tingling in your front as your clitoris grows, swelling out into a male shaft, even as a pair of orbs swell into existence below them. She pulls back at last, licking her lips. Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has plans for your future.[lizgirl mark][lizgirl herm]";	
			otherwise:
				if lizgirlinheat is 0:
					say "'Mmm, you carry my seed little one, do not fear, you will be done soon.' the Lizard Girl murmurs close by your head, walking around you [one of]as she runs her clawed hands all over every exposed part[or]lashing out at random with her tongue every so often, leaving tingling little spots all over you[at random].";	
				otherwise:
					say "'Oh, what this? Are we feeling a little tender, a little needy? Oh my poor baby come here.' the lizard girl says, taking you into her arms. For your part, its a welcome relief as she starts to lap at your aching entrance, cleaning the latest stains of your semen that had leaked out. Your orgasm, female in origin, wracks your body, leaving you at peace in the wonderful afterglow. Laying there still, you feel a need for something to taste and before you know what you are doing you have your head buried between the lizard girls thighs, administering pleasure to her slit even as she continues on your own. After what feels like days of pleasure and release you slowly pull apart. 'My wonderful little treasure, you are, without a doubt, perfect.' she says, and you feel that inner glow intensify. Looking down at her thigh, you see another name scrawled there, similar to hers on your own leg. 'She would be proud too.' you say softly, meaning every word of it. Kissing softly, you part ways.";
		otherwise:
			if lizgirlimpreg is 0:
				say "Looking to your thigh, the recognizable Lizard Girl smiles, 'Always wonderful to see my pets blossoming and ready.' she pins you to the ground on your back, leaving you unable to move in your weakened condition. Slowly at first she lowers down onto your [cock size desc of player] rod, working herself up and down your rigid length. Just as your release is unavoidable she presses down tightly, engulfing your [cock length of player] inch member deep inside herself. Just as the flow of your seed starts to taper off you feel an incessant pressing at the opening in your rod. Deeper and deeper her tentacle member pushes, down inside you, coming to rest at your balls. 'Now its my turn.' she says, snapping your attention away from her assault on your reproductive system. All of a sudden,  you feel a pressure build all down the your members length as her own seed pours into your body, leaving your balls swollen and tingling.[line break] 'Now be a good dear, and don't fight it any more.' she says over her shoulder as she sashays away.[lizgirl female][lizgirl impreg]";
			otherwise:
				say "'Oh, who gave you this?' she says, running one claw over your penis delightfully. 'Oh well, it matters not, it simply must go.' she says matter of factly and lowers her snout over your member and begins to take it all into her, sucking, licking and sometimes biting. Your bliss is soon to come and when it does you only feel a dribble actually pass down your rod. With a start you realize your love tunnel is now awash with seed... your seed.[lizgirl female][impregchance]";
	infect;		
						
to say lizgirl defeat:
	if lizgirlimpreg is 0:
		if lizgirlangry is 0:
			say "She looks up at you mournfully, 'Oh what I could have done with you...' she says softly before collapsing.";
		otherwise:
			say "Looking at you one last time, she sheds a tear. 'Such a wonderful fighter. How can such a flawed being be so grand?' before dieing.";
	otherwise:
		if lizgirlmarked is 1:
			say "'Why did you not want this? Was the canvas too flawed?' she murmurs before losing consciousness.";
		otherwise:
			say "With a whine she says, 'I only wanted what was best for you, now another artist must finish my work' before collapsing.";

to say lizgirl desc:
	if "Male Preferred" is listed in feats of player:	
		say "A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace. She sniffs the air, and leaps at you without warning, slicing you on the arm. Leaning in close, not touching you with any part of herself, her slender forked tongue dances out, above the small trail of blood. Pulling back with a stricken look on her muzzle she cries out, 'This clay is useless!' she seems angry as all hell now, and comes at you with claws flashing.";
		now lizgirlangry is 1;
	otherwise:
		if "Female Preferred" is listed in feats of player:		
			say "A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace. She sniffs the air, and leaps at you without warning, slicing you on the arm. Leaning in close, not touching you with any part of herself, her slender forked tongue dances out, above the small trail of blood. Pulling back with a stricken look on her muzzle she cries out, 'This clay is useless!' she seems angry as all hell now, and comes at you with claws flashing.";
			now lizgirlangry is 1;
		otherwise:
			if "Sterile" is listed in feats of player:
				say "A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace. She sniffs the air, and leaps at you without warning, slicing you on the arm. Leaning in close, not touching you with any part of herself, her slender forked tongue dances out, above the small trail of blood. Pulling back with a stricken look on her muzzle she cries out, 'This clay is useless!' she seems angry as all hell now, and comes at you with claws flashing.";
				now lizgirlangry is 1;
			otherwise:
				if "One Way" is listed in feats of player:	
					say "A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace. She sniffs the air, and leaps at you without warning, slicing you on the arm. Leaning in close, not touching you with any part of herself, her slender forked tongue dances out, above the small trail of blood. Pulling back with a stricken look on her muzzle she cries out, 'This clay is useless!' she seems angry as all hell now, and comes at you with claws flashing.";
					now lizgirlangry is 1;
				otherwise:
					say "A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace, a half smile across her short muzzle. You can't help feel that to her, you are nothing more than an art piece awaiting her masterful expertise.";
			
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "lizard girl"; [Name of your new Monster]
	now attack entry is "[one of]She rakes you with her sharp claws.[or]A spinning scaled form precludes the tail that smacks into your face, knocking you down.[or]Laughing the reptile lances her head forward to bite you on the arm[at random][line break][lizgirl check angry]"; [Text used when the monster makes an Attack]
	now defeated entry is "[lizgirl defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[lizgirl attack]"; 
	now desc entry is "[lizgirl desc]";	[ Description of the creature when you encounter it.]
	now face entry is "longer and thinner as soft dark colored scales cover your short muzzle, lending your ear less features a very reptilian air";	[ Face description, format as the text "Your face is (your text)."]
	now body entry is "compact and solid, yet showing off every curve to perfection, heavy compact muscles belay strength despite their small representation";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "beautiful reptilian scaled";	[ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "Long and plump, your lizard-like tail is solid mass of muscle.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human shaped";[ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it draws forward a little, a reptilian muzzle forming as your teeth reshape into delicate sharp points"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you can feel the tingling radiate outwards, muscles, bones and organs shifting and rearranging"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a wave of scales of seemingly random colors pours over you. Yet as they thicken and interlock, you notice a strangely beautiful pattern emerge"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your cheeks are pulled in and tight"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it feels wrong, as though She had meant it just as a means to an end"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 10;						  
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";	  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 32;				[ How many HP has the monster got? ]
	now lev entry is 3;				[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 5;				[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	 [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;				[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		  [ Length infection will make cock grow to if cocks]
	now cock width entry is 3;		  [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;				[ Number of Breasts infection will give you. ]
	now breast size entry is 1;		  [Size of breasts infection will try to attain ]
	now male breast size entry is 0;	 [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;				[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		  [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		  [ Width of female sex  infection will try and give you ]
	now libido entry is 2;				[ Amount player Libido will go up if defeated ]
	now loot entry is "";				[ Loot monster drops, ]
	now lootchance entry is 0;		  [ Chance of loot dropping 0-100 ]


Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

to say liz impreg:
	repeat with Z running from 1 to number of rows in table of random critters:
		choose row Z from the table of random critters;
		if name entry matches the text "lizard girl":
			break;
	if lizgirlimpreg is 1:
		if cocks of player is 0:
			say "With a gasp you feel something you thought long lost to you, a male orgasm, but it feels odd, as it should since you have no member, but it feels like you are still ejaculating. A growing fullness in your feminine depths reveals the true purpose of the Lizard Girls earlier actions, she has reworked your reproductive system quite amazingly. As you look down in wonder, the glow of release still holding you immobile, you notice a small trail of cum leaking from your pussy lips.[impregchance]";
		otherwise:
			say "With a gasp you feel a male orgasm, but it feels odd, you cannot see any of your seed leaking out of your member, but it feels like you are still ejaculating. A growing fullness in your feminine depths reveals the true purpose of the Lizard Girls earlier actions, she has reworked your reproductive system quite amazingly. As you look down in wonder, the glow of release still holding you immobile, you notice a small trail of cum leaking from your pussy lips.[impregchance]";

to say toggle heat flag:
	now lizgirlinheat is 1 minus lizgirlinheat;

		
When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "lizard girl";	
	now heat cycle entry is 2;				
	now heat duration entry is 2;					
	now heat start entry is "You feel a warming in your belly, the same tingling as when the lizard gave you her seed seems to begin and intensify, leaving you almost panting for breath.[toggle heat flag]"; 
	now heat end entry is "The heat, the ache, all fades slowly, leaving you relieved.[toggle heat flag]";	
	now trigger text entry is "";
	now description text entry is "";	
	now inheat entry is "[liz impreg]";			[The lizard girls seed effectively internalised the male organs, leaving the poor character impregnating themselves every heat cycle. This will be much more 'fun' once repeated births are in :3 ]
	
	
[ Edit this to have the correct Name as wall]
Lizard Girl For FS ends here.
