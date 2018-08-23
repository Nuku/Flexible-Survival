Version 2 of Harpy by Nuku Valente begins here.
[ Version 2 - Central Library content by Stripes ]

"Adds a Harpy to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Monster Responses

Harpydefeat is a number that varies.
Harpyconsent is a number that varies.

to say Harpy wins:
	choose row monster from the table of random critters;
	if inasituation is true:
		stop the action; [text taken care of at the source]
	if harpyfight is 3:
		say "     The harpy swoops in and grabs you, running her taloned hands over your body as the others close in around you.";
	else if HP of player > 0:
		if harpyconsent is 0:
			say "     She swoops down and grabs you up, pressing her lips to yours. Peace sweeps through this form even as your heart hammers in your chest. You pull her tight as she draws you closer, swept away in the fierce exchange. You are unsure how long you remain like that, but eventually she sets you down and shakes her head, 'We will meet again, I hope.' and she takes off.";
			now Harpyconsent is 1;
		else if harpyconsent is 1 and a random chance of 1 in 2 succeeds:
			say "     As you give in, the harpy swoops down and grabs you, pressing your lips to hers in another kiss. You moan in pleasure as happiness fills you, reunited with this wonderful creature in a fierce kiss. Having found you again, she carries you up to the roof of a nearby building so you two can have a more intimate reunion.";
			if player is male:
				say "     The harpy woman pushes you down onto the roof and chirps happily a few times as she fondles your cock to full erection. Moving over your legs, she starts licking and kissing at your shaft, then presses her bosom around your [cock size desc of player] [cock of player] penis. The soft flesh of her breasts slide against your shaft as she gives you a tittyfuck. Her tongue and lips move in from time to time to work at your glans. The whole time you are lost in a wave of adoration for this beautiful creature, eventually crying out in joy as you cum messily across her tits and face. She grins at you and licks her lips while spreading your seed across your bosom in a wanton display that would make you rock hard again had you not cum so hard for this most lovely of beings. She grabs you again with her foot talons and carries you back to the ground.";
				say "     'Mmm... that was wonderful, my dear lover. I hope we shall meet again soon.' With that said, she flaps off, leaving you confused and dazed for some time.";
			else if player is female:
				say "     The harpy woman pushes you down onto the roof and chirps happily a few times as she gropes your pussy with her taloned hands. Spreading your legs and moving overtop of you, she presses her wet pussy over your lips. Needing no more invitation, you press your lips to her juicy folds and start licking and lapping lustfully, hoping so hard to please this beautiful creature. She does the same for you, working her tongue and lips with a lustful hunger. The whole time you are lost in a wave of adoration for this beautiful creature, eventually crying out in joy as you cum messily and her hot juices soak your face. She grins at you and licks her lips as she spreads the juices that are running down her chin over her hard nipples in slow circles. Your pussy quivers, almost cumming again from this wanton display from this most lovely of beings. She grabs you again with her foot talons and carries you back to the ground.";
				say "     'Mmm... that was wonderful, my dear sister. I hope we shall meet again soon.' With that said, she flaps off, leaving you confused and dazed for some time.";
			else:
				say "     The harpy woman pushes you down onto the roof and chirps sadly as she notices your lack of sexual organs. Clearly disappointed, she starts to turn way, but you grab her hand, pausing her departure. Not wanting to lose this lovely creature's affection, you bury your face in her groin and start licking and kissing at her cunt, promising over and over that you can prove yourself to her. She moans and chirps in increasing pleasure as your eager tongue pleasures her, eventually driving her to a powerful climax that leaves her hot juices running down your face and her feathered legs. She grins at you and rubs her talon-hands over her wet cunt, then rubs her own juices over her nipples and then at your bare groin. 'Mmm... maybe there's hope for you yet. Let's see if this will help you along,' she says softly before grabbing you in her foot talons and carrying to back to the ground and flying off.";
				follow the sex change rule;
			now harpyconsent is 2;
			if libido of player < 50, increase libido of player by 10;
		else if harpyconsent is 2 and a random chance of 1 in 2 succeeds:
			say "     Having given in to the harpy, she rushes in and kisses you, reawakening to lust and love for this most beautiful of beings. At first you could not tell, but now you know this to be your feathered lover once again. Her taloned hands run over your body before she grabs you in her foot talons and carries you up to a rooftop for more private time.";
			if player is male:
				say "     Once up on the roof, she presses you onto your back and leaps onto your lap. She grinds her wet pussy down onto your cock, making you moan happily, looking forward to making with this strangely beautiful creature. Between the wet motion of her hot lips across your shaft and the show she puts on groping her breasts, you are fully hard almost immediately. Once satisfied you're ready to go, she lifts her feathered rear and lowers herself down onto your shaft with an avian squawk. Her hot, wet pussy grips and squeezes at your throbbing penis. 'Mmm... yes, my lover... do it... fill me with your eggs...' she cries out as she cums hard and her inner walls grip down tightly on your cock, driving you to cum as well. Your hot seed rushes into her, filling her needy womb with your semen, breeding the lustful harpy.";
				say "     After you both recover from your breeding session, she picks you up and carries you back down to the ground, giving you another kiss. 'Mmm... thank you, my precious lover. You've done well and I have no more need of you,' she says. Your heart broken, you collapse to your knees as you watch your ex-lover fly away.";
				decrease morale of player by 10;
				now harpyconsent is 0;
			else if player is female:
				say "     Once up on the roof, she presses you down on your back and moves atop you. She presses her bosom to your face, pushing one of her nipples to your lips. Still catching the arousing scent of lust from your earlier lovemaking on it and quickly wrap your lips around it, starting to suckle at it. She slips a taloned hand between your thighs and presses a [if cunt width of player > 10]trio of fingers[else if cunt width of player > 5]pair of fingers[else]finger[end if] into your juicy cunt. You moan loudly and suckle all the harder, soon rewarded with the harpy's milk. 'Yes, my sweet. Drink up and soon you'll be another beautiful harpy like me. Wouldn't that be wonderful,' she says in a crooning voice. You moan and chirp in response, your besotted mind willing to agree to nearly anything for your feathered lover. You switch to her other breast for more of her delicious milk. You nurse from her until she has no more milk to give and you've had several powerful orgasms from her continuous attention to your quivering cunt. You are still in a daze as she takes you back to the ground and gropes you, urging you to become a lovely harpy quickly so you can join her and the others.";
				PlayerDrink 10;
				decrease humanity of player by 10;
				infect "Harpy";
			else:
				say "     Once she gets you up on the roof, she presses you down on your back, but is disappointed to see your lack of genitalia. She shrieks in frustration and slashes at you with her claws. 'Ugh! Why am I wasting my time with you?' You cry out to her needfully, but she has decided you are no longer worth the bother and flies off, leaving you on the roof to nurse your wounds before climbing down the fire escape, feeling dejected and heartbroken to have been rejected by her.";
				decrease morale of player by 10;
				decrease HP of player by wdam entry;
				now harpyconsent is 0;
		else:
			say "     She grabs at you with her powerful talons, leaving painful marks even as your body flushes with the warm tingles of nanite infection. She shouts at you angrily, scratching until her anger passes, then, with great pumps born of her frustration, she flaps her wings and retreats.";
	else:
		say "     She grabs at you with her powerful talons, leaving painful marks even as your body flushes with the warm tingles of nanite infection. She shouts at you angrily, scratching until her anger passes, then, with great pumps born of her frustration, she flaps her wings and retreats.";
	now harpyfight is 2;

[ [Harpy loss] ]
To say Harpy loses:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	if harpyfight is not 3 and player is male and libido of player > 40 and a random chance of 1 in 3 succeeds:
		say "     Your final blow sends the harpy tumbling to the ground momentarily. You have a brief moment to decide if you'll take advantage of her while you can. Shall you fuck the harpy?";
		if player consents:
			say "     You jump atop the harpy, pinning her down before she can take to the air again. She shrieks, but is too weak to fight you off as you get your cock lined up and thrust into her. Despite her resistance, she moans in pleasure as you start pounding into her wet pussy. As her lust builds, you relax your grip so you can fondle her breasts as well. After an enjoyable ride, you drive deep into her and release your hot seed, making her shriek in delight. You pump your hot load into her before letting her get up and leave.";
			if harpyconsent > 0:
				say "     When you release her, she slashes at your face angrily with your claws. 'You terrible wretch! It would have been so wonderful, but you had to turn out to be so horrible,' she shrieks angrily. You realize that it was the same harpy who made your heart all a flutter before, but she's left you now. There is a strange sadness in your heart even as the strange spell she had over you fades away.";
				decrease morale of player by 5;
				now harpyconsent is 0;
	else:
		say "     Emitting a sudden foul curse, the young woman takes to the air, fleeing before her wounds can ground her.";
	now harpyfight is 1;

to say HarpyDesc:
	setmongender 4;
	if inasituation is false:
		say "     An athletic-looking young woman with feathery wings attached to her arms like fins and great talons for hands and feet. Her legs are also covered in feathers, and she has a fan of feathers over her butt. She has light, flawless flesh where exposed on her front and a chubby, elfin face. She would be cute if she wasn't scary.";
	else:
		say ""; [taken care of at the event source]

Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Harpy" to infections of girl;
	Choose a blank row from Table of random critters;
	now name entry is "Harpy"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She manages to get a good grip with a talon around an arm, digging her claws in as her wings-arms beat powerfully[or]She dive bombs from above, knocking you to the ground[or]A sudden hug has you pressed to her soft front, only to be released above the ground[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[Harpy loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Harpy wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[HarpyDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "young woman with large, elfin ears and unruly red hair that barely reaches your shoulders. While a little chubby, it could pass as a human"; [ Face description, format as "Your face is (your text)."]
	now body entry is "built slightly, with slender curves that remind of a teenaged female and an exposed belly button on your [skin of player] front. Feathers spread over your shoulders and back, light brown in color. Your thighs are covered in downy looking feathers, but shins fade into tough looking bird talons that grip the ground securely. Your arms have wings like fins, with powerful flight feathers ready"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "smooth and flawless"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "Above your pert ass is a fan of brown feathers that curve upwards."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "a soft warmth flows through your head as it dwindles and rounds to nymph like appeal. Your ears stretch a little to the sides as hair shifts in hue"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "light brown feathers spread rapidly, covering your shoulders and back. Brown feathers spread over your legs, from the hips down towards your shin where it fades towards yellow scaly skin. Your feet become powerful looking bird talons with wicked claws. Even as you consider reaching to touch, wing fins burst from your arms with new feathers"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your skin evens out its blemishes, becoming youthful and smooth"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel your [skin of player] rump rounding. Feathers burst free from it and form a tail fin, upturned and in a fan spread"; [ ass/tail change text. format as "Your ass tingles as (your text)." ]
	now cock change entry is "it thrums with an alien pleasure"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 50;
	now lev entry is 6; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking.]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 4; [ Width of female sex infection will try and give you ]
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "winged"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "avian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Harpy":
		if humanity of player < 10:
			if centrallib is 7:
				say "     As a harpy in the library, you quietly tend to the stacks as do the others. The guard outside makes sure that you are rarely disturbed, leaving you and your sisters to quietly read most of the time. On occasion, you fly out into the city to pluck up a [if player is female]male to satisfy your needs and give you an egg for the season. Sometimes, if he's cute enough, smart enough and quiet enough, you [']allow['] him to stay, making him into the newest harpy of the aerie[else]female or herm to satisfy your lusts, screwing her until you're sure she'll grow round with a harpy egg. Sometimes, if she's cute enough, smart enough and quiet enough, you [']allow['] her to stay, making her into the newest harpy of the aerie[end if][if player is male]. The other harpies also enjoy your cock often, many of them getting eggs from you[end if][if player is puremale]. You have become an unusual creature of myth and legend, the rare male librarian[end if].";
			if hellHoundLevel > 0:			[Hellhound while taken by the librarians]
				say "[line break]     Lost to your new fate as a harpy at the library, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream or an uncomfortable feeling when reading stories about deals with the devil. But he does not forget; your foul contract was only delayed to better prepare you for your coming, unending fate.";
				say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave to the countless foul hellhounds who guard the gates of Hell. You're chained down, never to fly freely again and made to mate with the hellish dogs. The fel beasts breed you incessantly[if player is female], filling your womb with corrupted eggs[else], forcing you to mount bitches while the males climb atop you[end if]. The blood-red eggs hatch to release more hellhounds, but these have large, raven wings on their backs, allowing the hounds to fly. The flying hounds add to the dark forces of the underworld. They nurse from your [if player is female]tits[else]cock[end if]and grow strong, eventually joining the others in mating you until the ends of time.";
			else:
				say "     You take flight and are rejoined with other harpies high in a secluded mountain. You are content with one another except when heat strikes. Once a year, each of you feels a 'special' need that cannot be met by your sisters and you descend on the small city below, plucking up a male to satisfy you and give you an egg to care for, until the next year. Most men prove to be pliable enough, and a few even stay, helping to tend to the aeries while the females do business and hunt.";
		else:
			if Harpyconsent > 0:
				say "     You are rescued and taken back to civilization. Though you greatly enjoy having access to flowing water and easy food, you never forget the tingle of her lips on your own. Eventually, driven by longing, you take flight back to that great city, and eventually find her. Convincing her to leave with you would be a whole other adventure...";
			else:
				say "     Adjusting to life as a harpy takes some getting use to. You find that a good perch works better than a couch, and your diet has a lot more nuts and berries than your old diet ever had. Still, you're mostly human, and getting by proves easy enough for such a young, pretty, looking thing.";


[ Edit this to have the correct name as well]
Harpy ends here.
