Version 1 of Corota for FS by Stripes begins here.
[Version 1.1 - Promoted to lvl 11 (swapped spots with Impala)]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Corota to Flexible Survival."

Section 1 - Monster Responses

[ Use 'to say xxxxx' for overlong text boxes or complex situations, using '[xxxxx]' (in square brackets) within a say statement to execute them. Typically, these are needed if there are a lot of cock/species/cunt checks. ]

when play begins:
	add { "Corota" } to infections of girl;
	add { "Corota" } to infections of furry;
	add { "Corota" } to infections of Tailweapon; [usable for Tail Strike feat]
	add { "Corota" } to infections of Reptilelist; [list of reptile infections]

to say corotadesc:
	setmongender 4; [creature is female]
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     This strange, serpentine creature is covered in ocher, darkly veined flesh. Her head is snakelike, set above a long neck. Two vicious horns jut through her brow, while her fangs are longer than expected for a snake her size. Most notable is her ability to split her head down its center, forming two crude but functioning half heads each with their own neck half. Her body is lean and has a pair of leathery wings spread from her back, golden brown dust hazing around her. She has two petite breasts on her chest. Her arms are human in shape, but she is gifted with two too many. Her legs are leonine, intimidating in shape. Her tight, rump-less ass is hidden beneath a pair of tails. Each limb looks to be prehensile, nearly as long as she is tall and ending in a spiked knob. Beneath those tails is a wide, female cleft of ocher flesh.";
	say "     As it approaches you, it waves its wings, sending a wave of that dust at you. It fills the air and stings your eyes and lungs, making it difficult to breathe. Coughing a little, you prepare to fight it off. Periodically, the creature waves its wings again, ensuring the dusty cloud remains.";


to say losetocorota:
	choose row monster from the table of random critters;
	if a random chance of 3 in 5 succeeds:
		if cocks of player > 0:
			say "     The corota brings you to the ground with a rough sweep of their tail, staring down at your broken and bruised form. Sniffing at the air with nose and tongue, the serpent creature smiles down at you in a way only a feral can. 'Yes, strong mate. Deserving mate,' she hisses, going between your legs and working your length with her forked tongue. Whether it turns you on or you merely struggle, suddenly there is a painful sensation in the base of your cock as the corota appears to have bitten into you with their fangs. Bringing their head up to smile at you, again with that feral look, you can see a venom of a different colour than normal dripping from their fangs.";
			say "     You don't have long to consider what they did before your length explodes to full, veins bulging as it's forced to be ready for the serpent creature. Too weak to crawl away, too tired to push them off, you're forced to watch as they spread their lower lips before spearing themselves on your cock[if cock length of player > 12], your head forced rapidly past their cervix into their waiting womb[end if]. Bouncing up and down on you pole, 'poison' no longer necessary to keep you readied, you are stuck for some time with nothing but the wet squelching noises and the corota's impassioned hisses to distract you.";
			say "     Eventually, body's betrayal complete, you give the corota their much desired seed, balls swollen by the venom forcing them into crazed overproduction along with your regular load amount. The milking goes on for almost five minutes, and you don't want to consider how much of your mass was [']recycled['] for their pleasure while you watch their belly slowly bloat wider and wider. When the flow finally comes to a halt, you feel more spent than you have ever felt before. The corota doesn't even seem to give you a cursory look as they waddle off, their footfalls followed by the sound of an occasional wet impact as thick wads of spunk fall between their legs.";
			increase thirst of player by 5;
			infect;
		else if cunts of player > 0:
			say "     The corota brings you to the ground with a rough sweep of their tail, staring down at your broken and bruised form. Sniffing at the air with nose and tongue, the serpent creature smiles down at you in a way only a feral can. 'Thirsty from fight,' they hiss, diving between your legs greedily. In seconds, your labia and hips are covered in a mass of nonvenomous bites, the corota's many hands slapping at your hips as they seem to forget that you aren't a giant jug of fluid. Whether they beat you until terrified beyond control, or the rough abuse is one of your special buttons, you eventually give the corota their much desired drink. Not even bothering to give so much as a 'Thanks,' the serpent creature stomps away from you to slake the rest of their thirst elsewhere.";
		else:
			say "     The corota brings you to the ground with a rough sweep of their tail, staring down at your broken and bruised form. Failing to see anything that catches their interest, the corota gives a snarl and turns around, raising both their tails high to bring down on you. Raising your arms to shield your face, you barely have the time to sigh in relief as each miss your arms and head by scant inches. You were so weak, for it to be seemingly beneath the serpent creature to even bother to make sure they've finished the job. The corota flaps their large wings to take to the skies, leaving you coated in a small layer of their dust.";
	else if a random chance of 1 in 4 succeeds:
		say "     Mind muddled trying to stay focused on the battle, you fail to catch the sweep of the tail until almost too late. Only by acting in the last second do you go from taking a scythe in the gut to having yourself smashed to the floor. Seemingly satisfied with 'only' flooring you for the count, the corota stomps off to vent its frustrations on another victim.";
		decrease hp of player by wdam entry;
	else if a random chance of 1 in 3 succeeds:
		say "     Focusing on the tail and great claws of the corota, you forget about the obvious threat until it's already in your face. Literally. Your cheeks explode in pain as two great fangs sink into them, being used to inject a significant amount of poison into your mouth as the serpent-woman kisses you. You barely have the time or desire to consider that a half foot higher or lower, and you might not be in a position to ever complain again. When the fangs finally pull out, the corota smashes you roughly to the ground with a two handed overhead strike, and you're left there sputtering, and spitting blood and toxins from your mouth. While you've heard eating a rattlesnake's toxin is harmless, you aren't in the least bit willing to test that out with infected snake bites.";
		decrease hp of player by wdam entry;
		infect;
	else if a random chance of 1 in 2 succeeds:
		say "     A low sweep by the corota's tail knocks you to the ground, the chimeric critter quickly leaping upon your prone form and clawing at it with their leonine half. Fortunately, they don't seem to strike anything vital before they get bored with you, crawling off your sore body and giving it a final, hard stomp to the gut before hurrying off.";
		decrease hp of player by wdam entry;
	else:
		say "     Out of breath, and needing a breather, you try to pull back from the fight with the corota to regain your breath. For a moment, it looks like the corota is going to allow you to do so, turning their back on you and beginning to walk away. Then you notice the small cloud of dust forming between their wings, too late to get out of the way or close your mouth before the corota sends the dust cloud straight into your open mouth with a quick flap of their wings. Gasping now in pain as the particles cling to your throat and insides of your breathing organs, you haven't the environmental awareness to notice them repeating the action again and again. Face going blue, you pass out to wake up some time later covered in the ochre dust, throat raw and demanding a drink soon.";
		increase thirst of player by 5;


to say beatthecorota:
	say "     Your final blow causes the twin-headed creature to stumble back and hiss angrily. It uses its four arms to block further blows as it retreats a few steps. 'Good fight,' it hisses respectfully. 'I give... for now.' With that, it turns and flaps it wings, taking to the air in a burst of dusty air. You cover your mouth and back away, waiting for the air to clear as it flies off in search of sport elsewhere.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Corota"; [Name of your new Monster]
	now attack entry is "[one of]The corota[or]She[or]The serpent-hybrid[or]The bifurcated creature[as decreasingly likely outcomes] [one of]sweeps your feet out from under your with a pass of its powerful tails[or]bashes its thick tails against you[or]moves its head in to bite, splitting them at the last moment to avoid your block and bite you from two sides[or]sinks its fangs into your side[or]slashes at you with its claws, rending at your flesh[at random]";
	now defeated entry is "[beatthecorota]";
	now victory entry is "[losetocorota]";
	now desc entry is "[corotadesc]";
	now face entry is "snake-like, set above a long neck. Two [one of]large[or]vicious[or]curved[at random] horns jut through your brow, while your fangs are longer than expected for a snake your size. Most notable is your ability to split your head down its center, forming two crude but functioning half heads each with their own neck half. It is most disconcerting that doing so does not feel strange to you at all";
	now body entry is "lean and flexible, but overall human in form. Two large, leathery wings spread from your back with golden brown dust hazing around them. Your arms are human in shape, but you are gifted with two too many. Your legs are leonine, intimidating in shape and ending in clawed paws";
	now skin entry is "ocher, darkly veined";
	now tail entry is "Your tight, rump-less ass is hidden beneath a pair of tails. Each limb looks to be prehensile, nearly as long as you are tall and ending in a spiked knob.";
	now cock entry is "[one of]barbed[or]split[or]free hanging[or]hemipenis[or]serpentine[at random]";
	now face change entry is "a lump that starts at the base of your throat quickly turns into an entire facial cramp. In seconds, your neck is quickly extending to several times its old length, while your face stretches at the same time to a more serpentine shape. Feeling like it's done transforming, you suddenly feel an explosion of expanding bone in your forehead, warning you of more to come. Just as you feel a sensation that can best be described as ripping start from the tip of your face to the base of your neck, you hear a tearing sound, and your head and neck split apart, turning into a pair of functioning halves. Your arms shoot up to force the two together and you find that they fuse together as readily as they split apart, your head capable of breaking from one into two on a whim";
	now body change entry is "you're left gasping for air as your body tightens, some of its mass shifting through you and settling in your back. When the pressure finally comes to a halt, your body is forced to double over in pain as two great, leathery wings form from the mass in your back. When the wings are dried off some hours later, you notice the ample amounts of golden dust falling off. Your arms begin to tingle as though being prickled all over, soon returning back to their original shape and build. They even have that little blemish in that one spot! Any celebration at the nanites work is cut short as suddenly, with a great deal of pain, it feels like some thing's trying to force its way through your chest. In a burst of growth, you've got a second pair of arms resting about halfway down your body. The changes continue, moving lower as the muscles and bones in your lower half twist and crack, warning you of the coming changes in their own special, painful way. As the changes come to a halt, you find your body slender and flexible and your legs very leonine, well suited for raking someone with their claws";
	now skin change entry is "your body takes an ocher tint as its veins darken noticeably, becoming readily traceable with the naked eye.";
	now ass change entry is "your lower spine feels like someone's trying to tear it in two, and in a way someone (well, something) is! Exploding out in a burst, your spinal column extends into two long tails, each capped with a spiked knob. Once some muscle finally grows in on the limb, you find that each limb is fully prehensile. If only it weren't so bloody painful growing them!";
	now cock change entry is "a pressure builds in your cock[if cocks of player > 1]s[end if] as the nanites within struggle for dominance. In the end, they seem to agree on a mutual condition, your groin[if cocks of player > 1]s[end if] finally exploding into change. In seconds you're left amazed and disturbed as your cock splits down the center, small barbs forming along its length. Waiting for it to slide into your body for protection, you're further surprised as it continues to hang limply, waiting to be aroused.";
	now str entry is 14;
	now dex entry is 19;
	now sta entry is 14;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 68; [ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 11; [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 9; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains"; [ Current options are 'Outside' and 'Mall' Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 2; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 12; [ Length infection will make cock grow to if cocks]
	now cock width entry is 8; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 2; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;
	now cunt width entry is 8;
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is "corota venom";
	now lootchance entry is 20; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]serpentine[or]slender[or]flexible[at random]";
	now type entry is "[one of]hybrid[or]serpentine[or]chimera[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "corota"; [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Alt Attack - Corota Dust

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"corota"	retaliation rule	--	--	--	--	--	--	--	corotadust rule	--

this is the corotadust rule:		[draining cloud]
	choose row monster from table of random critters;
	say "     The corota's dust hangs in the air, a constant irritation. ";
	let playernum be 12 + ( stamina of player * 2 ) + level of player;
	if face mask is equipped, increase playernum by 12;
	let corotanum be ( sta entry * 2 ) + lev entry;
	let playernum be a random number between 1 and playernum;
	let corotanum be a random number between 1 and corotanum;
	if playernum > corotanum:
		say "You cough a little, but fight on unhindered for the moment.";
	else:
		let dam be ( ( wdam entry times a random number from 80 to 120 ) / 250 ); [40% damage]
		if face mask is equipped, decrease dam by 1;
		say "You cough violently as you're forced to breathe in more of the dust. You take [special-style-2][dam][roman type] damage!";
		LineBreak;
		decrease hp of player by dam;
		if hp of player < 1:
			if hp of player <= 0, now fightoutcome is 20;
			if libido of player >= 110, now fightoutcome is 21;
			lose;

Section 4 - Drop Item - Corota Venom

Table of Game Objects (continued)
name	desc	weight	object
"corota venom"	"Some toxic, ochre yellow liquid that you've preserved in a jar... for some reason."	1	corota venom

corota venom is a grab object. It is a part of the player. corota venom is infectious. The strain of corota venom is "Corota".
the usedesc of corota venom is "[corotavenomuse]".

to say corotavenomuse:
	say "     Feeling brave or foolish, you try drinking down the snake venom. It stings as it goes down, making you weak in the knees and cough as it starts to burn at your throat and stomach. You curl up in a ball of pain as the heat spreads, setting off something inside you.";
	decrease hp of player by 10;

the scent of corota venom is "The snake venom has a strong, stinging scent that reminds you slightly of the creature's dusty powder.".


Section 5 - Endings

[
when play ends:
	if bodyname of player is "Template":
		if humanity of player is less than 10:
			say "     You succumb to your corota infection.";
		else:
			say "     You survive, but were infected by the corota.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Corota for FS ends here.
