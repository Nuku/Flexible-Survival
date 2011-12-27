Version 7 of Wyvern For FS by Damaged begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Wyvern to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

Section 2 - Monster Insertion

Wyvern_initialattack is a number that varies.
wyvern_annoyed is a number that varies.
Wyvern_eat is a number that varies.

to say infect:
	infect;
	
to say wyvern goop:
	add "Wyvern Goop" to invent of player;

to say wyvern attack:
	if Wyvern_initialattack is 0:
		say "The wyvern arcs back and opens its great maw, spitting a thick yellow-white fluid at you.[one of] It sticks to your torso, causing you to weaken just with its touch.[or] Adhering to any bit of skin the goop seems to thicken and cling to you.[at random] You do your best to free yourself of it, hoping that by freeing yourself you can escape and hide in a building.";
		now Wyvern_initialattack is 1;
	otherwise:
		say "[one of]Again the beast sprays you, slowly building up more and more layers of the goop.[or]More of the adhesive, thickening stuff hits you, you can barely stand as the weight starts to drag you down.[at random]";

to say wyvern defeat:
	say "With one last rip and heave you manage to get the last of the hindering bulk of goop off of you, with quick thinking you race to the nearest building and make your way to the basement. While in there you hear the beast demolish the building above you in its anger.";
	say "You notice you have some of the goop the creature was spitting at you, you wrap it up in an old cloth that is laying around, sure you will find a use for it later.[wyvern goop]";

to say wyvern vict:
	if Wyvern_annoyed is 1:
		say "Just as you can't fight any more, your arms and legs trapped in the growing mass, you hear a sound like a hurricane and manage to look up and see the great beast sniffing at you. With a disgusted snort the creature screams into the air and takes off, leaving you to tear your way free of the gunk and find shelter as best you can.[combat abort]";
	otherwise:
		say "Again and again it spits at you, encasing your arms and legs in the jelly like sticky mess. Slowly you feel your muscles contract of their own will, pulling you into a ball. Your last glimpse of the Wyvern is it spraying another kind of goop over you, one that seems to harden as you watch it. Suddenly sealed in, you fear suffocation, but something seems to burrow into your stomach even as you feel your last fitful breath pull in the sticky muck. Drowsiness begins to claim you as you suddenly feel calm, safe, protected. Darkness surrounds you just before your eyes close.";
		infect;
		say "Waking, you feel renewed and happy, but you realize you need to break out of the shell covering you. It takes all your strength to tear out as, gasping for breath, you sit there, watching as your new 'mother' is capturing another person. As you watch, she coats them again and again, forming an ovoid shape, finally sealing the casing with the hard shell. As you watch the beast, you realize it is pushing the 'egg' closer and closer to its tail, where a slitted opening forms. Pushing with her blunt muzzle you watch as she stuffs the egg into her giant depths. Deep down inside, you can't help but be proud of and feel love for your new mother.";
		say "[wyvern goop][wyvern goop]";
to say wyvern desc:
	if "Female Preferred" is listed in feats of player:
		now Wyvern_annoyed is 1;
	otherwise:
		if "Sterile" is listed in feats of player:
			now Wyvern_annoyed is 1;
	say "A monstrous Wyvern swoops out of the sky, forcing you to drop to the ground or be crushed. You look up at the thing, it is as big as a truck, looking like nothing save a eighty foot long snake with wings and a set of talons. Surely you can't fight that!";
	
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Wyvern"; [Name of your new Monster]
	now attack entry is "[wyvern attack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[wyvern defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[wyvern vict]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[wyvern desc]";[ Description of the creature when you encounter it.]
	now face entry is "drawn into a long muzzle, filled with sharp teeth. Your ears are no longer to be seen, but you admire the large crest of scaled bone that brackets your head when you get annoyed";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "long and serpentine, a large pair of wings have sprouted from your spine but, after testing them, you find them unable to support your weight yet. Your arms are now a large pair of taloned claws, still able, barely, to manipulate things as normal. Your legs are no longer in evidence at all, drawn into your body and lost to the infection";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "[if looknow is 1]scaled[otherwise]mottled like a snake's scales, you can't help but admire your[end if]";[ skin Description, format as the text "You have (your text) skin."] 
	now tail entry is "Long, muscular, covered in a scaled pattern, your tail has large spines near the end of it, it stretches out at least twice as long as your body is tall.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "slightly scaled, very reptilian";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "pressure builds all over, forcing bones to shift and pull, teeth to reconfigure and a reptilian muzzle to form"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it loses all human definition, your hips pull into a smooth line, legs absorb into your body and the mass from them seem to lengthen you to the point you look quite serpentine. None of the changes prepare you for your wings breaking free and forming a large canopy above your head. You churr happily at the sight"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "all your hair falls out at once as a cascade of muted colored scales pours over you, marking you as a very large reptile"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "at draws into a longish tail, about half as long again as you are. With a start you check under it and find a curious pair of slits, one seems to be your breeding equipment the other for waste clearing"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "burning heat encapsulates your member as it pulls back into your body along with your balls. You can still feel them, how big they are, what they feel like, but they are hidden from view"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 17;
	now dex entry is 12;
	now sta entry is 17;					
	now per entry is 13;
	now int entry is 12;
	now cha entry is 9;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 35;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 6;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 19;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 3;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 0;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname is "Wyvern":
		say "Your wings finally strong enough, you take to the air and leave behind the city, your old life. Over the following year your body grows more and more, eventually leaving you massive, but not nearly as massive as your majestic mate. She is around half as big again as you are, almost ninety feet long, and you mate again and again with her, no heat driving you, just both your raw lust for each other. Eventually raising clutch after clutch of eggs, your children teach man a new fear of flying.";
	otherwise:
		if Wyvern_eat is 1:
			say "Despite other changes, your eyes never did change to anything else. Slitted, the outer part is a light blue bordering on sky blue, the slitted pupil is a dark black. Every time you look in the mirror you think of that majestic creature, a part of you wanting to be with her, another part wanting to be her child.";

			
[ +++++ ]

Table of Game Objects(continued)
name	desc	weight	object
"Wyvern Goop"	"Thick, white and yellow, it seems to almost pulse with the ability to sustain life."	1	wyvern goop


To say wyvern goop use:
	say "Eating the goop you feel all your needs sated, calm and relaxed you could almost sleep, but not before you churr happily to yourself as you drift off and do just that.";
	now hunger of player is 0;
	now thirst of player is 0;
	now libido of player is 0;
	decrease humanity of player by 10;
	decrease score by 15;
	follow the turnpass rule;
	follow the turnpass rule;	
	say "You wake up, looking around, something feels different. With a start you realize, as you catch your reflection in some broken glass, that your eyes are slitted like a reptiles.";
	now Wyvern_eat is 1;
	
Wyvern Goop is a grab object;
Wyvern Goop has a usedesc "[wyvern goop use]";

[ +++++ ]	
[ Edit this to have the correct Name as wall]
Wyvern For FS ends here.