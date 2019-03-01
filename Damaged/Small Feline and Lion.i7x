Version 11 of Small Feline and Lion by Damaged begins here.
[ Version 11.1 - Matronly Lioness content]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Small Feline and Lion to Flexible Survival's Wandering Monsters table, with impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

Feline_type is a number that varies.
Feline_meow is a number that varies.
Feline_attached is a number that varies.
Feline_encountered is a number that varies.


to say feline desc:
	choose row monster from the Table of Random Critters;
	let debit be 0;
	if Feline_type is 3:			[forced hunting pride fight]
		setmongender 14; [creatures are female]
		say "     You are facing off against a small pride of roving feline girls. The little lionesses look much like the other small feline girls you've encountered in the park before, but have temporarily abandoned the pretense of looking cute and innocent. Formed into a hunting party, they're out to rough up other felines and capture them, even if they already belong to another pride. As Leonard has requested, you'll have to defeat and break up these groups to help protect your pride sisters[if HP of Leonard is 10]. Thankfully this group's already a little worn down from trying to chase down the feline girl they were fighting, who you're happy to see is able to get away safely thanks to your timely intervention[end if].";
		let levcalc be level of Hunting Prides;
		if hardmode is true:
			if level of player > level of Hunting Prides:
				now levcalc is level of player;
				if HP of Leonard is 10:
					decrease levcalc by 1; [first one weakest]
				else if HP of Leonard is 12:
					increase levcalc by 1; [final one strongest]
		now HP entry is 20 + ( levcalc * 4 );
		now monsterHP is 20 + ( levcalc * 4 );
		now wdam entry is 7 + ( levcalc / 4 );
		now lev entry is levcalc;
		now libido entry is 75;
		now str entry is 12;
		now dex entry is 20 + (levcalc / 5);
		now sta entry is 12;
		now per entry is 20;
		now int entry is 16;
		now cha entry is 20;
	else if Feline_type is 4:	[forced male lion fight w/usurper]
		setmongender 3; [creature is male]
		say "     You are facing a large, strongly muscled and powerful lion/human hybrid. He has a black mane and golden fur everywhere else with round ears and sharp looking teeth. He is entirely naked, allowing you to see his thickly furred sheath and the jutting pink lion shaft. It is oozing with precum as he walks and seeks out a mate. Looking at him, you can feel something inside you, some buried urge, starting to push to let such a big, strong male just have his way with you.";
		if hardmode is true and level of player > 14, let debit be level of player - 14;
		now HP entry is 75 + ( debit * 5 );
		now monsterHP is 75 + ( debit * 5 );
		now wdam entry is 20 + ( ( 4 * debit ) / 11 );
		now lev entry is 14 + debit;
		now libido entry is 5;
		now str entry is 16;
		now dex entry is 21 + (debit / 5);
		now sta entry is 12;
		now per entry is 14;
		now int entry is 10;
		now cha entry is 15;
	else if Feline_meow < 5 or cunts of player is 0:
		setmongender 4; [creature is female]
		increase feline_encountered by 1;
		if a random chance of 1 in 2 succeeds:
			project the figure of Feline_F1_icon;
		else:
			project the figure of Feline_F2_icon;
		if HP of Leonard >= 15 and HP of Leonard < 100:
			say "     You encounter another of the cute Feline girls running around. You do not recognize her one from the pride nor do you catch Leonard's scent on her. She's probably another scattered stray or a new kitty girl. She is about four feet in height, covered in fur with round lion ears and a bright smile. At first, one would almost mistake her for a younger infected person, but you know better. She is quite developed for her short size, sporting B cups and wide hips. And she seems to be eyeing you rather provocatively. She mrowls softly and licks her muzzle, coming towards you with a look of lustful hunger[if player is felinebodied and breast size of player > 0] as she eyes your breasts with obvious hunger[end if].";
		else if feline_encountered is 1:		[first time desc]
			say "     A small cute girl, about four feet in height, covered in fur with round lion ears and a bright smile. At first, you almost mistake her for a younger infected person, but soon realize that's incorrect. She is quite developed for her short size, sporting B cups and wide hips. And she seems to be eyeing you rather provocatively. She mrowls softly and licks her muzzle, coming towards you with a look of lustful hunger.";
		else:
			say "     You've encountered another of those feline girls. Looking like a cute lioness girl about four feet in height, she is covered in fur with round lion ears and a bright smile. She is quite developed for her size, sporting B cups and wide hips and seems to be eyeing you rather provocatively.";
		if hardmode is true and level of player > 3, let debit be level of player - 3;
		now Feline_type is 1;
		now HP entry is 20 + ( debit * 3 );
		now monsterHP is 20 + ( debit * 3 );
		now wdam entry is 7 + ( debit / 3 );
		now lev entry is 3 + debit;
		now libido entry is 25;
		now str entry is 6;
		now dex entry is 21 + (debit / 5);
		now sta entry is 8;
		now per entry is 18;
		now int entry is 14;
		now cha entry is 20;
	else:
		if HP of Leonard >= 15 and HP of Leonard < 100:
			setmongender 3; [creature is male]
			say "     Before you is one of the male lions of the park. He has a dark brown mane and slightly lighter fur everywhere else with round ears and sharp looking teeth. He is entirely naked, allowing you to see his thickly furred sheath and the jutting pink lion shaft. It is oozing with precum as he walks and seeks out a mate. He roars as he sees you, moving in as his cock slips further from its sheath. Perhaps you're recognized as the matronly female of Leonard's pride or perhaps he simply sees a sexy lioness, but either way, it seems he wants to claim you as his own.";
		if hardmode is true and level of player > 14, let debit be level of player - 14;
		now Feline_type is 2;
		now HP entry is 75 + ( debit * 5 );
		now monsterHP is 75 + ( debit * 5 );
		now wdam entry is 20 + ( ( 4 * debit ) / 11 );
		now lev entry is 14 + debit;
		now libido entry is 5;
		now str entry is 16;
		now dex entry is 21 + (debit / 5);
		now sta entry is 12;
		now per entry is 14;
		now int entry is 10;
		now cha entry is 15;


to say feline att:
	if Feline_type is 1:
		say "[cat att]";
	else if Feline_type is 2 or Feline_type is 4:
		say "[lion att]";
	else:
		say "[huntpride att]";

to say feline def:
	if Feline_type is 1:
		say "[cat def]";
	else if Feline_type is 2:
		say "[lion def]";
	else if Feline_type is 3:
		say "[huntpride def]";
	else:
		say "[finallion def]";
	say "[feline cleanup]";

to say feline vict:
	if Feline_type is 1:
		say "[cat vict]";
	else if Feline_type is 2:
		say "[lion vict]";
	else if Feline_type is 3:
		say "[huntpride vict]";
	else:
		say "[finallion vict]";
	say "[feline cleanup]";

to say cat att:
	say "[one of]The small feline launches an attack, claws and teeth flying![or]The diminutive lioness attacks you, tripping you down and raking at your groin with her razor sharp claws.[or]The girly lioness gropes you with her feline hands![or]The kitty girl grabs onto you and rubs her body sensually against yours![at random]";

to say lion att:
	say "[one of]The big cat-man roars and lashes out with talon like retractable claws![or]In a show of viciousness the lion man leaps at your neck, clamping down his jaw. Only by poking at his eyes do you force him to let go.[or]The lion man's powerful paws slam into you, knocking you around![or]The powerful feline grabs you and tosses you to the ground, sending you tumbling![at random]";

to say huntpride att:
	say "[one of]The small felines launch an attack, clawing and biting at you![or]The diminutive lionesses attack you in a mix of clawing, grabbing and groping![or]The girly lionesses grope you with their feline hands![or]One of the kitty girls grabs onto you and rubs her body sensually against yours![or]The hunting pride tries to tackle you to the ground so they can lick and pet you into submission![at random]";

to say cat def:
	choose row monster from the Table of Random Critters;
	let z be 0;
	if libido of player >= 40:
		if player is male:
			say "     Deciding to make use of the pesky catgirl, you push the small, curvy feline to the ground and pounce her. She mewls softly, but doesn't pull away as you line up your [cock of player] cock and drive it into her[if cock length of player > 20]. Your massive cock makes a huge bulge in the little feline and she moans and mewls uncontrollably, rubbing her paws over her swollen tummy[else if cock length of player > 12]. Your big cock makes an appreciable bump in the little feline's belly and she rubs it, moaning and mewling happily[else]. Your cock stuffs the little feline, cramming her full of throbbing meat, making her moan and mewl happily[end if]. Her pussy quivers around your shaft and her B-cup breasts sway as you pound into her curvy body. When finally you cum, you pump your thick seed into her, leaving her [if cock width of player > 15]hugely bloated as your ample cum stuffs her small body, flowing out her overstuffed pussy[else if cock width of player > 8]tummy a little plump and her pussy leaking your seed[else]her pussy stuffed full of your semen and slowly leaking cum[end if]. She purrs softly, passed out after getting fucked good and hard.";
			now z is 1;
		else if player is female:
			say "     Deciding to make use of this pesky catgirl, you grab the small, curvy feline and press her face between your legs, grinding your pussy into her softly furred muzzle. She mewls softly and starts timidly licking at your slit, running her raspy little tongue over it. You moan softly and scritch her ears, telling her she's a good kitty. As you encourage her, her enthusiasm for her task increases, as does your pleasure. Her rough tongue is quick stimulating and soon enough you're soaking the little kitty's face in your juices as you cum hard. Once you're finished with her, you push her to the ground, leaving her to lick and groom herself clean.";
			now z is 1;
	if HP of Leonard >= 7 and HP of Leonard < 10 and Feline_attached is 0 and bodyname of player is "Feline":
		if Feline_meow is 0, increase Feline_meow by 1;
		say "     Recalling that Leonard has asked you to track down more of these felines, you pick up the cat girl and cradle her to your chest. She mewls softly and nuzzles you, wrapping her lips around your nipple and starting to suckle eagerly. You moan in pleasure as you [if breast size of player is 0]surprisingly [end if]start to lactate, providing warm milk for the needy kitty. You feel very aroused by the experience and can hardly wait to bring her to Leonard.";
		now z is 1;
		infect;
		if breast size of player is 0, follow the breast change rule;
		now Feline_attached is 1;
		follow the feline nursing rule;
	else if ( HP of Leonard >= 16 and HP of Leonard < 100 ) and Feline_attached is 0 and bodyname of player is "Feline":
		if Feline_meow is 0, increase Feline_meow by 1;
		say "     Deciding that since you've got this pretty kitty right here, you might like to introduce her to Leonard as well. You pick her up gently and cradle her to your chest, purring soothingly to her. She mewls softly and nuzzles you, wrapping her lips around your nipple and suckling eagerly. You moan in pleasure as you [if breast size of player is 0]eventually [end if]start to lactate, providing warm milk for the needy kitty. You grow increasingly protective of her and nuzzle her ears, whispering what a good and pretty kitty she is and how she'll love her new pride because her new pride will love her.";
		now z is 1;
		infect;
		if breast size of player is 0, follow the breast change rule;
		now Feline_attached is 1;
		follow the feline nursing rule;
	if z is 0:
		say "You deliver a final strike to the small feline, knocking her out!";

to say lion def:
	let z be 0;
	say "     The big cat tries to rake you with his monstrous claws one more time, but you jump back nimbly even as you see it slump down";
	if HP of Leonard >= 15 and HP of Leonard < 100 and bodyname of player is "Feline":
		say ". Knocked down and beaten, the leonine man is lying on the ground, his cock still mostly hard after being denied release. Eyeing it, you wonder if perhaps you might risk having a little fun with him to teach him better respect for Leonard's pride. You certainly wouldn't mind sampling that feline meat[if player is male and Feline_meow < 8] or even that tawny ass[end if] of his now that he's subdued. Do you want to have some fun with him?";
		now z is 1;
	else if libido of player + ( Feline_meow * 3 ) > 50:
		say ". Knocked down and beaten, the leonine man is lying on the ground, his cock still mostly hard after being denied release. Eyeing it, you find yourself wondering if you could risk having a little fun with that feline meat[if player is male and Feline_meow < 8] or even that tawny ass[end if] now that he's subdued. Do you want to have some fun with him?";
		now z is 1;
	if z is 1:
		if player consents:
			now tempnum is 0;
			if player is male and Feline_meow < 8:
				say "     Looking over the defeated lion, you wonder if you'd prefer to stuff his furry ass (Y) or have a ride on that feline cock. (N)";
				if player consents:
					now tempnum is 1;
					decrease Feline_meow by 1;
					say "     Deciding to take this opportunity to turn the tables on the lion man, you shove the big kitty onto his front. He tries to struggle, thinking you intend to keep fighting, but you grab his wrists and keep him pinned down. Once you start grinding your [cock size desc of player] [cock of player] erection against his ass, he whimpers and attempts to pull away, but you keep your grip[if HP of Leonard >= 15 and HP of Leonard < 100], rumbling that he needs to learn to properly respect Leonard's pride and his mate[end if]. Lining up your cock under his tail, you press your glans against his tailstar and sink slowly into his tight, unyielding hole. His initial mrowl of discomfort soon turns to rumbles of pleasure as you pound into him, stuffing his golden-furred ass with your meat. Soon enough, he's pushing back into your thrusts and mewling needfully like a lustful kitty.";
					say "     You fuck him like this for several minutes before finally driving your full length into him and groaning loudly as you cum[if cock length of player > 24]. Your giant cock stretches the lion man out, but he takes it all even as your spurting seed stuffs him even further[else if cock length of player > 12]. Your huge cock stretches out the lion man nicely and he takes it all as your hot seed flows into him[else]. Your pulsing cock sends your hot seed deep into the lustful lion[end if]. Finished with him, you pull out and give his ass a spank, sending him on his way. He is rather wobbly as he staggers off. As you watch him go, you notice him shrinking down and his figure changing, becoming more girlish and feminine. It looks like there may be another of those cat girls [if HP of Leonard >= 15 and HP of Leonard < 100]and one less upstart lion [end if]around soon.";
			if tempnum is 0:
				decrease Feline_meow by 3;
				say "     Deciding you can't let such a lovely, hard cock go to waste, you shove the big kitty onto his back. He tries to struggle, thinking you intend to keep fighting, but you grab his wrists and pin him down. Once you start grinding your ass down onto waning erection, his attitude changes and his angry growls turn to a rumble of pleasure. His cock quickly stiffens back to full hardness, ready for you.";
				if HP of Leonard >= 15 and HP of Leonard < 100 and bodyname of player is "Feline":
					say "     He tries to roll you over so he can mount you, but you keep him pinned down, growling that Leonard's pride will take what it wants and that he'll need to accept his place beneath your pride. Without further delay, you lower yourself down onto his hard rod, releasing a mrowl of pleasure. His shaft feels so good inside you, filling a need that had been growing inside you. You run your paws through his thick chest-fur and ride his cock hard and fast, giving yourself over those feline urges[if player is male]. Your [cock of player] cock is quite hard from your arousal, but you have no desire to tend to it, focusing purely on your pussy's need for lion cum at the moment[end if]. His paws rub over your [bodytype of player] body and play with your tits.";
				else:
					say "     With the throbbing need for lion cock overwhelming you, you don't delay any longer and lower yourself down onto his hard rod, releasing a mrowl of pleasure. His shaft feels so good inside you, filling a need that had been growing inside you. You run your paws through his thick chest-fur and ride his cock hard and fast, giving yourself over those feline urges[if player is male]. Your [cock of player] cock is quite hard from your arousal, but you have no desire to tend to it, focusing purely on your pussy's need for lion cum[end if]. His paws rub over your [bodytype of player] body and play with your tits.";
				say "     Eventually, your efforts are rewarded as that leonine penis pulses inside you, blasting his ample load deep inside you, stuffing you so wonderfully full of feline cum that your belly swells with its large output. Feeling deliciously full and satisfied, at least for now, you roll off of the big kitty. The lion man snuggles you, caressing your stuffed tummy before [if HP of Leonard >= 15 and HP of Leonard < 100 and player is felinebodied]respectfully [end if]helping you up onto your feet, wobbly though they may be, before padding off.[impregchance]";
				infect "Feline";
	else:
		say ", passing out shortly afterwards.";

to say huntpride def:
	say "     You struggle against the hunting pride, knocking several of them out and sending the rest fleeing in all directions.";

to say finallion def:
	say "     You are victorious is your hard-fought battle against this would-be usurper. You growl triumphantly as you give him a final kick, sending him tumbling down the hill.";

to say cat vict:
	choose row monster from the Table of Random Critters;
	increase Feline_meow by 1;
	if Feline_attached is 1:
		say "     The small, curvy feline approaches you and mewls imploringly. As you kneel down, the previous feline comes over, mewling as well, but is kicked away as the new one climbs up onto you, taking her place on your chest. She leans in and begins to eagerly suckle at your chest, leaving the ousted feline to go off in search of a new surrogate";
	else if HP of Leonard >= 15 and HP of Leonard < 100 and bodyname of player is "Feline":
		decrease humanity of player by 2;
		say "     The small, curvy feline approaches and looks up at you imploringly. She mewls and makes cute grabby paws at you and you scoop her up into your arms. You try to focus on Leonard and your pride, but you can feel a little more of yourself slip away. Feeling your leonine instincts kicking in, you cradle her in your arms, purring as she begins to eagerly suckle at your feline chest while her paws knead";
	else:
		say "     The small, curvy feline approaches and looks up at you imploringly. Against your better judgment, you reach down and pick her up. She leans in and begins to eagerly suckle at your [bodytype of player] chest as her paws knead";
	if breast size of player > 0:
		say ". The small cat's teeth chew at your nipples and she begins to nurse eagerly. As milk begins to flow from your now lactating breast, she purrs as she feeds on your fresh milk while you are filled with debilitating waves of delight.";
	else:
		say ". The small cat's teeth chew at your nipples and she starts suckling from one. Pleasure builds in your front as your body starts to respond to the purring feline's nursing.";
		follow the breast change rule;
	if libido of player < 10:
		say "     You manage to force yourself to set the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
		now Feline_attached is 0;
	else:
		now Feline_attached is 1;
		follow the feline nursing rule;


to say lion vict:
	if HP of Leonard >= 15 and HP of Leonard < 100 and bodyname of player is "Feline":
		say "     The alpha lion approaches and sets a paw on your shoulder. Trying to keep the image of your leonine mate in your mind, you try to turn away, but the feline urges wins out and you lean against him. He bites at your shoulder and neck, moving around you and lifting you. He is soon plunging his hungry shaft deep into your womanly body, pounding you hard and fast like a beast. You try to focus, telling yourself that your mate, L... uh... something, is a better lover, but it slips away for the moment as you descend further into lust. You roar in pleasure as his seed fills your leonine womb, which swells outwards with the volume of it.";
		say "     As you recover from the pleasure of it, the lion man snuggles, caressing your chest with his broad paws and rocking against you a few moments longer before he rises and releases you to your feet, wobbly though they may be. It takes some time for your mind to clear enough to remember Leonard, your true mate.[impregchance]";
	else:
		say "     The alpha lion approaches and sets a paw on your shoulder. You consider turning him away with your human mind, but the feline one wins out and you lean against him. He bites at your shoulder and neck, moving around you and lifting you. He is soon plunging his hungry shaft deep into your small curvy body, filling you in a way you have never been filled before as a human. You roar in pleasure as his seed fills your new womb, which swells outwards with the volume of it.";
		say "     As you recover from the pleasure of it, the lion man snuggles, caressing your chest with his broad paws and rocking against you a few moments longer before he rises and releases you to your feet, wobbly though they may be.[impregchance]";
		infect;
		decrease Feline_meow by 3;


to say huntpride vict:
	say "     Unable to keep fighting against the band of felines, you're grabbed and pushed to the ground. The felines purr happily at their success and start nuzzling, licking and stroking their newly-captured prey.";


to say finallion vict:
	if player is female:
		say "The alpha lion approaches and sets a paw on your shoulder. You consider turning him away with your human mind, but the feline one wins out and you lean against him. He bites at your shoulder and neck, moving around you and lifting you. He is soon plunging his hungry shaft deep into your small curvy body, filling you in a way you have never been filled before as a human. You roar in pleasure as his seed fills your new womb, which swells outwards with the volume of it.[impregchance]";
	else:
		say "The alpha lion approaches and sets a paw on your shoulder. You consider turning him away with your human mind, but the feline one wins out and you lean against him. He bites at your shoulder and neck, moving around you and lifting you. He is soon plunging his hungry shaft deep into your small curvy body, filling you in a way you have never been filled before as a human. You roar in pleasure as his seed fills your bowels, which swells outwards with the volume of it.[mimpregchance]";
	infect;


to say feline cleanup: [post-battle reset of stats to catgirl values]
	choose row monster from the Table of Random Critters;
	let debit be 0;
	if hardmode is true and level of player > 3, let debit be level of player - 3;
	if hardmode is false and Feline_type is 2 and monsterHP <= 0, increase XP of player by 22; [XP difference for beating the male]
	now Feline_type is 1;
	now HP entry is 20 + ( debit * 3 );
	now wdam entry is 7 + ( debit / 3 );
	now lev entry is 3 + debit;
	now libido entry is 25;
	now str entry is 6;
	now dex entry is 21 + (debit / 5);
	now sta entry is 8;
	now per entry is 18;
	now int entry is 14;
	now cha entry is 20;


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Feline"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[feline att]"; [Text used when the monster makes an Attack]
	now defeated entry is "[feline def]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[feline vict]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[feline desc]"; [ Description of the creature when you encounter it.]
	now face entry is "[if HP of Leonard >= 15 and HP of Leonard < 100]that of a proud and beautiful lioness[else]the cute head of a small lioness[end if]"; [ Face description, format as "Your face is (your text)."]
	now body entry is "[if HP of Leonard >= 15 and HP of Leonard < 100]that of a sexy lioness woman. Being full height and full-figured, you are a matronly pride mother now. Your nipples are visible and black, begging to be sucked on, leaking a constant stream of thick cream that runs down your body if it isn't being constantly drunk[else if breast size of player > 2]a female lioness. You are only about four feet tall, though you have huge breasts for your height and your exposed sex is swollen and dripping with need. Your nipples are visible and black, begging to be sucked on, leaking a constant stream of thick cream that runs down into your fur if it isn't being drunk constantly[else]a female lioness. You are only about four feet tall, though your exposed sex is swollen and dripping with need. Your nipples are visible and black, begging to be sucked on. Despite the smaller size of your breasts, they are often leaking a stream of thick cream that runs down into your fur if it isn't being drunk constantly[end if]"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]tawny brown fur, covering pliable[else]tawny brown fur covered[end if]"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "You have a long, tufted lion's tail."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "leonine"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "[if HP of Leonard >= 15 and HP of Leonard < 100]your head shifts and becomes that of a lovely lioness, proud and matronly in appearance[else]your head shrinks and, as you gasp, you notice your voice has lightened, gaining you the face of a small female feline. For some reason, the scents of the groins of all around you become enticing and you can feel arousal building[end if]"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "[if HP of Leonard >= 15 and HP of Leonard < 100]it shifts back into that of a womanly lioness. You can't help but moan and purr in pleasure at this change, feeling drawn to your handsome mate once more[else]urge to giggle becomes powerful as you shrink and gain the softness of a small lioness[end if]"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "tawny fur explodes over your chest, spreading rapidly across your front and back, slightly lighter on the front"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "[if HP of Leonard >= 15 and HP of Leonard < 100]your hips gain a pair of wide birthing hips and a sexy bottom to go with it. A leonine tail forms to go with it, twitching excitedly as you find yourself longing to feel your handsome mate's paws on your ass again[else]it shrinks even as it becomes rounder, pleasantly grabbable and covered in tan fur. You now have a female lion's butt[end if]"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "[if HP of Leonard >= 15 and HP of Leonard < 100]your cock takes on a more feline form[else]your cock takes on a more feline form even as you feel cute and girly rather than as a male[end if]"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 6;
	now dex entry is 21;
	now sta entry is 8;
	now per entry is 18;
	now int entry is 14;
	now cha entry is 20;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 20; [ How many HP has the monster got? ]
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 7; [Amount of Damage monster Does when attacking.]
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 3; [ Width of female sex infection will try and give you ]
	now libido entry is 30; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]petite[or]girlish[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]leonine[or]feline[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "park_feline"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"park_feline"	retaliation rule	--	--	--	--	--	--	--	leoninelust rule	--

this is the leoninelust rule:		[continuous lustful weakening of player]
	if Feline_type is 2 or Feline_type is 4:		[lion man only]
		choose row monster from the Table of Random Critters;
		let dam be ( Feline_meow * ( lev entry + ( a random number from 60 to ( 90 + lev entry ) ) ) ) divided by 100; [damage based on built-up feline urges]
		if HP of Leonard >= 7 and HP of Leonard <= 13:
			now dam is ( dam * 2 ) / 3;
			if dam > ( wdam entry / 2 ), now dam is wdam entry / 2;
		else if HP of Leonard >= 14:
			now dam is ( dam * 2 ) / 3;
			if dam > ( wdam entry / 3 ), now dam is wdam entry / 3;
		else:
			if dam > ( wdam entry / 2 ), now dam is wdam entry / 2;
		if dam > 0:
			decrease HP of player by dam;
			increase libido of player by 3;
			if HP of Leonard >= 7:
				decrease libido of player by a random number between 0 and 1;
			if HP of Leonard >= 14:
				decrease libido of player by a random number between 0 and 1;
			say "     [one of]Something inside you makes you long to give in to the sexy lion, draining your resolve[or]Just looking at the sexy lion makes your pussy quiver with need[or]You can't help but imagine yourself underneath this handsome feline, taking his throbbing cock[or]Affected by buried, feline urges, you find it hard to focus on the battle in the face of the strong, male cat[or]Some part of you pushes you to just give in so your aching cunt can get stuffed full of lion meat[at random][if HP of Leonard >= 7], though your loyalty to [one of]Leonard[or]your leonine master[or]your handsome lion[purely at random] does help you resist[end if]. You take [special-style-2][dam][roman type] damage";
			if HP of player <= 0 or libido of player >= 110:
				say "! You mewl and stagger, about to give in to those urges as the feline comes in for a final strike.";
				now fightoutcome is 20;
			else if ( ( HP of player * 100 ) / maxHP of player ) < 25:
				say "! With your will to fight fading fast, you'd best end this soon.";
			else if ( ( HP of player * 100 ) / maxHP of player ) < 50:
				say "! Your will to keep fighting is waning in the presence of this lion stud.";
			else:
				say "!";


Section 4 - Nursing Feline (v2.0)

this is the feline nursing rule:
	if feline_attached > 0:
		if feline_status is 2:
			say "Leonard nuzzles the newest member of his pride and has her remain waiting on his bed, promising he'll be back to spend more time with her soon.";
			now Feline_attached is 0;
			now feline_status is 0; [reset to new kitty]
		else if feline_status is 3:
			say "Leonard nuzzles the feline who came in with you, telling her what a fine job she did. He pats her ass, sending her on her way.";
			now Feline_attached is 0;
			now feline_status is 0; [reset to new kitty]
		else if bodyname of player is "Feline":
			if breast size of player <= 0:
				say "     The small feline clinging to you mewls and nuzzles at your flat chest. Kneading her paws, she tries suckling from your nipple. When it continues to yield no milk, she releases another sad mewl. With your head growing clearer, you manage to force yourself to put the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you for having changed.";
				now Feline_attached is 0;
				now feline_status is 0;
			else if HP of Leonard >= 15 and HP of Leonard < 100 and bodyname of player is "Feline":
				increase Feline_meow by 1;
				say "     The [one of]cute feline in your arms continues to cling to you[or]bundle in your arms remains firmly attached[purely at random], [one of]drinking hungrily from you and making it hard to concentrate[or]nursing thirstily from you[purely at random][if a random chance of 1 in 3 succeeds]. The pleasure from this clouds your mind, making you enjoy the creature's presence[end if]. It seems no amount of your milk sates the busty feline as she snuggles against you. As she suckles, your mind wanders as [one of]you purr to her about joining your pride[or]you think of sexy felines[or]images of powerful lions mounting you fill your head[or]your mouth waters at the thought of the dripping cocks, milk-filled breasts and juicy pussies of the various creatures you've seen[or]you stroke and caress the small feline, purring as she nurses from you[or]your eyes continue to gaze longingly at the increasingly sexy forms you see around you[purely at random][one of]. Your animal urges become a little stronger[or]. You remind yourself to visit Leonard soon to introduce this new kitty to the pride[or]. You snuggle the kitty, purring softly to her that she belongs with you and your pride[or]. The milk you feed her strengthens the bond between you, gradually working to make her another member of the pride[purely at random][one of]. Other than briefly relinquishing her position when you have to fight or are having sex, she's clings to you constantly[or]. Aside from when you have to put her down during a fight or when you're having sex, she remains snuggled in your arms and suckling[or]. You feel a growing attachment to the cute feline and keep her in your arms except when absolutely necessary[purely at random].";
				increase libido of player by 2;
				decrease humanity of player by 2;
			else if libido of player < humanity of player:
				increase Feline_meow by 1;
				say "     The [one of]cute feline in your arms continues to cling to you[or]bundle in your arms remains firmly attached[purely at random], [one of]drinking hungrily from you and making it hard to concentrate[or]nursing thirstily from you[purely at random][if a random chance of 1 in 3 succeeds]. The pleasure from this clouds your mind, making you enjoy the creature's presence[end if]. It seems no amount of your milk sates the busty feline as she snuggles against you. As she suckles, your mind wanders as [one of]you think of sexy felines[or]images of powerful lions mounting you fill your head[or]your mouth waters at the thought of the dripping cocks, milk-filled breasts and juicy pussies of the various creatures you've seen[or]you stroke and caress the small feline, purring as she nurses from you[or]your eyes continue to gaze longingly at the increasingly sexy forms you see around you[purely at random]. Soon you know your animal urges will overcome your humanity and you will lose control[one of]. Other than briefly relinquishing her position when you have to fight or are having sex, she's clings to you constantly[or]. Aside from when you have to put her down during a fight or when you're having sex, she remains snuggled in your arms and suckling[or]. You feel a growing attachment to the cute feline and keep her in your arms except when absolutely necessary[purely at random].";
				increase libido of player by 4;
				decrease humanity of player by 4;
			else:
				say "     You feeling too much of your humanity slipping away, you manage to force yourself to set the feline down before things get any worse. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
				now Feline_attached is 0;
				now feline_status is 0; [reset to new kitty]
		else:
			say "     Without a leonine body for her to nurse from, you manage to focus enough to force yourself to set the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
			now Feline_attached is 0;
			now feline_status is 0; [reset to new kitty]


an everyturn rule:
	if feline_attached > 0:
		follow the feline nursing rule;


[
Section 4 - Feline Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--

to say feline heat end:
	if feline_status is 2:
		say "Leonard nuzzles the newest member of his pride and has her remain waiting on his bed, promising he'll be back to spend more time with her soon.";
	else if feline_status is 3:
		say "Leonard nuzzles the feline who came in with you, telling her what a fine job she did. He pats her ass, sending her on her way.";
	else:
		say "You manage to force yourself to set the feline down. She pouts at you and puts her hands on her hips, looking quite annoyed at you.";
	now Feline_attached is 0;
	now feline_status is 0; [reset to new kitty]

to say feline heat:
	if Feline_attached > 0:
		if libido of player < humanity of player and feline_status is not 2 and feline_status is not 3:
			increase Feline_meow by 1;
			say "The bundle in your arms remains firmly attached, drinking hungrily from you and making it hard to concentrate.[line break]It seems no amount of your milk sates the busty feline as she snuggles against you. As she suckles you feel your mind start to wander and you gaze, mouth watering slightly, at the cocks, breasts and moist slits of all the creatures you can see. Soon you know your animal urges will overcome your humanity and you will lose control.";
			increase libido of player by 4;
			decrease humanity of player by 4;
		else:
			say "[feline heat end]";


When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Feline"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 400; [ This is the number of days a heat 'cycle' lasts, usually 7 ]
	now heat duration entry is 400; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "";  [ This is the text that is written to the screen when the player comes into heat]
	now description text entry is ""; [ This text is used to describe the monster female anatomy in heat. delete entire line if you don't wish to enter one.]
	now heat start entry is ""; [this is a to say block that causes things to happen when the player enters heat. for example: the GSD sex grows wider. Delete entire line if you wish nothing to happen.]
	now heat end entry is "[feline heat end]"; [this is the same as heat start only it's for ending the cycle. GSD her sex is reduced back to its previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[feline heat]";

]

Section 5 - Endings

when play ends:
	if bodyname of player is "Feline":
		if humanity of player < 10:
			if HP of Leonard < 3:			[not w/Leonard]
				say "     Your feline instincts start to come to the fore as your human mind falls to pieces. You make your way back to the park, drawn by the scent of the other felines like yourself there, feeling a growing need within your loins";
				if player is female:
					say ". With your cute, girlish figure and the scent of your growing feline heat, you attract one of the gorgeous male lions around, becoming one of the many lionesses in his pride";
					if "Sterile" is not listed in feats of player:
						say ". You soon swell with his young, bearing several litters of cubs for him";
					if player is male:
						say ".";
						say "     Being equipped with a cock as well, you become the alpha female of the pride. When others of your pride disobey you, you work out your frustration and deepen familial bonds by fucking them until they submit in a puddle of pleasured fluids. You end up siring several cubs of your own.";
				else if player is male:
					say ". Coming across one of the small cat girls, you mewl and coax her into approaching you. Once she's drawn in, you pounce her, revealing that you're not quite a cat [']girl['] like her. She submits soon enough, mrowling in need for your cock. As you fuck her, you start to change, growing larger and most masculine. Soon you're a strong and sexy lion man pounding into what is the first of many feline girls you'll have in your pride.";
				else:
					say ". You are treated in a friendly manner by the felines of the park. The lions allow you to visit and play with their prides and service any members who want it. But lacking any distinct gender of your own, you're never allowed to join a pride of your own. You have an enjoyable life though, sharing in the company of the sexy lions and lovely lionesses, preferring your life as a free-roaming plaything for them all.";
			else if HP of Leonard >= 3 and HP of Leonard < 10:	[w/Leonard]
				say "     Your feline instincts start to come to the fore as your human mind falls to pieces. You make your way back to the park, drawn by the scent of the other felines like yourself there, feeling a growing need within your loins. You are drawn back to a tunnel cave at the far side of the park, smelling your leonine lover. Leonard smiles and happily welcomes you back, telling you how pleased he is to see you as a proper feline playtoy like you were always meant to be. You can't help but agree with him, knowing him to be your alpha, your pride leader.";
				say "     And speaking of his pride, when he takes you to his bed to mount you again, you find that he has several other cute lioness girls on the bed already stuffed full of his seed. After a lustful welcome by them all that leaves you bloated with lion seed, you and the other girls stagger out, heading off to hunt for more lovely furnishing and supplies for your lion master's home. Between trips out, you meet the rest of your pride mates, the handsome lion having gathered or created many lustful felines through his charms. And when the military comes through the area, he charms several more, tricking the soldiers into thinking his den is a safe place for them and many a lone soldier, separated from their unit ends up there only to become another lioness lover.";
				if player is puremale and bodyname of player is "Feline" and player is pure:
					say "     Despite your girlish appearance, you remain male and hold a special place in the pride. He keeps an eye on you around the other girls, but is more than happy to stuff your tight, little bottom. After a few years, he takes to having you mount some of the girls while he fucks you. Over time, you grow and mature, becoming a big, strong male like him. Soon you're ready to lead a pride of your own, though you're always willing to bend over and offer your ass up to him, remaining his submissive little girly-boy at heart. Any pride leaders formed from his or yours are taught the same as well, submitting to Leonard as their leader, giving the aristocratic lion considerable power in the parklands.";
			else if HP of Leonard >= 10 and HP of Leonard <= 14:	[succumbed during rivalry period]
				if feline_pride_defeat is true:
					if HP of Leonard is 10 or HP of Leonard is 11:		[beaten by random prides]
						say "     You are brought by the victorious hunting pride to their leonine master, who is greats you with lustful interest, mounting you quickly. Your body, overcome with need after the long teasing by his females, submits to him readily, letting him fuck you and fill you over and over again";
						if player is female:
							say ", claiming you as another member of his pride. You are bred repeatedly by the powerful male until you're nothing more than another horny feline girl eager to receive his seed. Eventually your pride leaves the park, striking out into the world to spread the feline infection to those outside the city.";
						else if player is male:
							say ". Being male, you're roughly fucked by the powerful male several times before being driven out of the pride, leaving you to struggle and form a pride of your own as you grow to become a larger, male lion. But having been made submissive by Leonard and beaten by the other male's pride, you are only able to claim only a few feline girls of your own. Fearful of the other males and their stronger prides, you are eventually forced to leave city with your pride, undertaking a perilous plan to escape that succeeds mostly out of desperation. Your band makes it to a small village and takes over, infecting the populace. The success does much to heal your bruised ego, but you remain a cautious leader and make little attempt to expand beyond your minor territory, content to keep your pride safe and satisfied.";
					else:								[beaten by clever pride]
						say "     You find yourself being led back towards Leonard's tunnel den, but it is not the handsome lion who greets you, but another male. This lion has a dark made to contrast with his golden fur, something which you find quite attractive given your lustful state. Even the air here only has traces of the previous occupant's scent, mostly covered now by the virile scent of this strong male. You are brought to by the plush bed once used by... someone... you have trouble remembering... as the strong male mounts you and fucks you repeatedly.";
						if player is female:
							say "     You quickly begin to regard this strong and clever male as your new leonine master and submit to him, letting him mount and breed you as he sees fit. His pride of lionesses, you among them, go out into the park to seek out more feline victims to bring back for him to add to the pride. And it's not just felines who get your attention, the arriving soldiers become your prey as well. Many of your pride sisters fall, but new ones are added from those you capture and your master manages to maintain his hold over the park.";
							say "     Over time, the once well-decorated tunnel cave becomes a shambles as art and furniture are destroyed during your lover's wild rages and even wilder lusts. Eventually even the bed, torn and soiled by sexual fluids, becomes unusable and must be removed. It sometimes feels like a hard life with your leonine lover, though you can't really tell why, as you are happy being one of the many girls in his pride. You are second only to his black-haired favorite, who takes particular pleasure in using you both as her enforcer and as her plaything.";
						if player is puremale:
							say "     As another male lion, you are eventually driven out of the pride after he's fucked you repeatedly, leaving you to struggle to form a pride of your own as you become a larger, male lion. But having been bested and used by the strongest in the park has you only able to claim only a few feline girls of your own. Fearful of the clever lion and his powerful pride, you are eventually forced to leave city with your pride, undertaking a perilous plan to escape that succeeds mostly out of desperation. Your band makes it to a small village and takes over, infecting the populace. The success does much to heal your bruised ego, but you remain a cautious leader and make little attempt to expand beyond your minor territory, content to keep your pride safe and satisfied.";
				else:
					say "     Your feline instincts start to come to the fore as your human mind falls to pieces. You make your way back to the park, drawn by the scent of the other felines like yourself there, feeling a growing need within your loins. You are drawn back to a tunnel cave at the far side of the park, seeking your leonine lover. But when you arrive there, you are met by some unfamiliar felines who bring you inside to meet the new lion who's taken up residence there. The air inside is heavy with the scent of this new male and his arousal, especially on the plush bed once used by... someone... you have trouble remembering... as the strong male mounts you and fucks you repeatedly.";
					if player is female:
						say "     You quickly begin to regard this strong and clever male as your new leonine master and submit to him, letting him mount and breed you as he sees fit. His pride of lionesses, you among them, go out into the park to seek out more feline victims to bring back for him to add to the pride. And it's not just felines who get your attention, the arriving soldiers become your prey as well. Many of your pride sisters fall, but new ones are added from those you capture and your master manages to maintain his hold over the park.";
						say "     Over time, the once well-decorated tunnel cave becomes a shambles as art and furniture are destroyed during your lover's wild rages and even wilder lusts. Eventually even the bed, torn and soiled by sexual fluids, becomes unusable and must be removed. It sometimes feels like a hard life with your leonine lover, though you can't really tell why, as you are happy being one of the many girls in his pride[if HP of Leonard is 12 or HP of Leonard is 13]. You are second only to his black-haired favorite, who takes particular pleasure in using you both as her enforcer and as her plaything[end if].";
					if player is puremale:
						say "     As another male lion, you are eventually driven out of the pride after he's fucked you repeatedly, leaving you to struggle to form a pride of your own as you become a larger, male lion. But having been bested and used by the strongest in the park has you only able to claim only a few feline girls of your own. Fearful of the clever lion and his powerful pride, you are eventually forced to leave city with your pride, undertaking a perilous plan to escape that succeeds mostly out of desperation. Your band makes it to a small village and takes over, infecting the populace. The success does much to heal your bruised ego, but you remain a cautious leader and make little attempt to expand beyond your minor territory, content to keep your pride safe and satisfied.";
			else if HP of Leonard is 100:
				say "     After the orgy that ensues after the battle, you and many other lioness girls join the clever lion's pride as he takes up residence in the tunnel cave. The victorious male takes particular pleasure in fucking you and his three favorite new horny girls on the large bed inside, thoroughly coating the plush mattress and soft sheets in his virile scent.";
				if player is female:
					say "     You quickly begin to regard this strong and clever male as your new leonine master and submit to him, letting him mount and breed you as he sees fit. His pride of lionesses, you among them, go out into the park to seek out more feline victims to bring back for him to add to the pride. And it's not just felines who get your attention, the arriving soldiers become your prey as well. Many of your pride sisters fall, but new ones are added from those you capture and your master manages to maintain his hold over the park.";
					say "     Over time, the once well-decorated tunnel cave becomes a shambles as art and furniture are destroyed during your lover's wild rages and even wilder lusts. Eventually even the bed, torn and soiled by sexual fluids, becomes unusable and must be removed. It sometimes feels like a hard life with your leonine lover, though you can't really tell why, as you are happy being one of the many girls in his pride. You are second only to his black-haired favorite, who takes particular pleasure in using you both as her enforcer and as her plaything.";
				if player is puremale:
					say "     As another male lion, you are eventually driven out of the pride after he's fucked you repeatedly, leaving you to struggle to form a pride of your own as you become a larger, male lion. But having been bested and used by the strongest in the park has you only able to claim only a few feline girls of your own. Fearful of the clever lion and his powerful pride, you are eventually forced to leave city with your pride, undertaking a perilous plan to escape that succeeds mostly out of desperation. Your band makes it to a small village and takes over, infecting the populace. The success does much to heal your bruised ego, but you remain a cautious leader and make little attempt to expand beyond your minor territory, content to keep your pride safe and satisfied.";
			else if HP of Leonard is 15:
				say "     When you awaken from your catnap after the wonderful mating with your handsome lover and his new servants, you feel little need to leave the place, having found where you belong - at Leonard's side, caring for his pride. He takes to mating you often, even after you quickly start to grow full with a large litter. You bear him many litters of cute feline cubs, who are among the strongest of his children.";
				say "     The black-haired girl becomes your best female friend and your personal attendant, working to tend to you and help you enforce the rules of the pride. She never stops enjoying your thick cream however[if player is male]. Being the alpha female is also made easier with your huge, twitching clit-shaft. When others of your pride disobey you, you work out your frustration and deepen familial bonds by fucking them until they submit in a puddle of pleasured fluids. Besides bearing children, you also sire several[end if].";
				say "     And speaking of your pride, they work hard to please you both, loving both their handsome master and their lovely matron. They serve you both eagerly, foraging in teams into the city to hunt for more lovely furnishing and supplies for your den. Your pride grows with your many offspring as well as the many lustful felines the handsome lion gathers or creates through his charms. And when the military comes through the area, he charms several more, tricking the soldiers into thinking his den is a safe place for them and many a lone soldier, separated from their unit ends up there only to become another lioness lover nursing from your plentiful bosom as he breeds them.";
			else if HP of Leonard >= 16:
				say "     Your feline instincts start to come to the fore as your human mind falls to pieces. You make your way back to the park, drawn by the scent of your lion mate as you feeling a growing need within your loins. You are drawn back to a tunnel cave at the far side of the park, smelling your leonine lover. Leonard smiles and happily welcomes you back, telling you how pleased he is to see his wonderful mate return to be the alpha female for his pride. Knowing it is where you belong, you are in his arms immediately and on the bed fucking moments later while several of the pride's kitties lavish attention upon you both. He breeds you long and hard with a lustful passion that leaves you breathless[if cunts of player < 0], restoring your dripping and needy pussy so you can be properly bred[end if]. He takes to mating you often, even after you quickly start to grow full with a large litter. You bear him many litters of cute feline cubs, who are among the strongest of his children.";
				if player is not female:
					now cunts of player is 1;
					now cunt length of player is 9;
					now cunt width of player is 3;
				say "     The black-haired girl becomes your best female friend and your personal attendant, working to tend to you and help you enforce the rules of the pride. She never stops enjoying your thick cream however[if player is male]. Being the alpha female is also made easier with your huge, twitching clit-shaft. When others of your pride disobey you, you work out your frustration and deepen familial bonds by fucking them until they submit in a puddle of pleasured fluids. Besides bearing children, you also sire several[end if].";
				say "     And speaking of your pride, they work hard to please you both, loving both their handsome master and their lovely matron. They serve you both eagerly, foraging in teams into the city to hunt for more lovely furnishing and supplies for your den. Your pride grows with your many offspring as well as the many lustful felines the handsome lion gathers or creates through his charms. And when the military comes through the area, he charms several more, tricking the soldiers into thinking his den is a safe place for them and many a lone soldier, separated from their unit ends up there only to become another lioness lover nursing from your plentiful bosom as he breeds them.";
		else:
			say "     You survive and are taken to the military's holding facility. Many of the soldiers treat you like a little girl and not like an adult. This allows you a few privileges you wouldn't otherwise have. And if you get caught roaming around the base to meet up with another feline there for a little fun, you simply act like you got lost and you're off the hook.";
			say "     After your release, you continue to take advantage of your appearance like this, playing off people's sympathies or making them underestimate you";
			if player is puremale:	[MALE]
				say ". You take more and more to cross-dressing, often using it as a means to slip into girls-only areas or luring in a new playmate-to-be before revealing your throbbing cock.";
			else if player is herm:	[HERM]
				say ". You are a lustful little cat girl though, seeking out lovers of all genders and from all forms of felines. And while lions may be your favorite, nothing says you can't enjoy the others as well. You eventually move in with a sexy male lion who indulges your girlish playing around and is happy to let you play with the other kitties as long as he can get his fair share of your hot pussy.";
			else if player is not male:
				say ". You are a lustful little cat girl though, seeking out as many felines of any species as you can get, as long as they have a hard cock to fill you. And while lions may be your favorite, nothing says you can't enjoy the others as well. You eventually move in with a sexy male lion who indulges your girlish playing around and is happy to let you play with the other kitties as long as he can get his fair share of your hot pussy.";
			else:
				say ". Lacking a gender of your own, but still remaining a lustful little cat girl, you seek out as many feline playmates of any species as you can find. You seek to pleasure them in any way they desire, pleasing them orally, suckling their breasts, offering up your ass or even using toys to make up for your lack of equipment. You are an eager playtoy for them, submitting to any desire they may have. You eventually move in with an eight-foot tall, over-endowed herm lioness who is as happy to stuff your tight ass as to have you do her with a giant strap-on.";


Small Feline and Lion ends here.
