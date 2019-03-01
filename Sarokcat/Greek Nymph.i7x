Version 2 of Greek Nymph by Sarokcat begins here.
[Version 2 - Victory Sex - Stripes]

"Adds a Greek Nymph to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Monster Responses

beatgrnymph is a number that varies.

when play begins:
	add { "Greek Nymph" } to infections of girl;


to say Greek Nymph attack:
	if player is male:
		say "     With one last blow, the nymph knocks you to the ground, dazed. 'Yay that was fun!' the beautiful, young woman cries out, clapping her hands at her victory. 'I won! I won! Now, we get to play a new game!' The nymph eyes your prone form, making you nervous. Her eyes fix on your cock, which is already partially erect due to her naked state. 'And I know what I want to play with!' She grabs your cock, and the feel of her soft hands has you lying back on the floor with a groan as she slowly runs her hands all over it. 'Mmm, I just love your [cock of player] cock. It looks like fun. We should try it out,' the nymph says with a moan of her own as she positions herself above you.";
		say "     You can't even put up a token protest as she slides herself onto your member, her warm wetness engulfing your cock and causing you to shudder in pleasure. Soon, she is lifting herself up and down on you, giggling as you writhe underneath her. Her long legs rub along your sides as they lift her, and her hands play over your chest. Before you know it, you are lost in the sensations of the moment, and all thoughts of the future fly out of your mind as you bring your hips up to meet her each time, loving the feel of penetrating her again and again. Your hands go to her hips as you begin to move in sync, and the nymph rubs her silky-soft skin over your body, laughing and whispering happy, little words as she rides you. After what seems like forever of her teasing touches and warmth, and yet also seems far, far too soon, you find yourself exploding into her, making her moan as she orgasms with you. Shuddering, you lie there on the cool floor, as she giggles and pulls herself off of your spent cock. 'Not as much endurance as a real satyr,' the nymph says as she pats you on the head sadly. 'But I'm sure you'll get there eventually. You should work on that for the next time we play together, okay?' She gives you a perky smile before sauntering happily off down the hall, giving you an excellent view of her nice ass and making you think eagerly about the promised [']next time[']";
		if guy is not banned, infect "Satyr";
	else:
		say "     With one last blow, you collapse to the ground, dazed. 'That was fun!' The nymph giggles as she looks down at your prone form. 'We should play some more sometime!' she says exuberantly, only to stop and listen for a minute as you both hear the sound of singing and carousing echoing through the halls. 'Oooh, satyrs! Come on, sister!' She claps her hands together happily before grabbing you and hauling you to your feet, dragging your stunned self along behind her. 'We don't want to make it too easy for them to find us! Of course, we also don't want to make it too hard for them to find us either,' the nymph explains, flashing you a grin as you and she run through the museum halls. Heading down the corridors with the nymph, you quickly begin to grow tired, while she dances along, dragging you behind and shooting you amused, happy glances as you travel. Soon, a satyr takes advantage of her distraction as he pounces on her from a side corridor when she was looking at you.";
		say "     The nymph lets out a happy squeal and puts up a token struggle as the satyr wraps his arms around her and pins her to the wall. Soon though, the nymph is the one wrapping her legs around the goat man as he thrusts into her all-too-willing body, their happy cries of lustful pleasure filling the halls. You find yourself staring at the erotic scene for several minutes, as their bodies writhe together in harmony, before you realize that if you don't keep moving, you might end up in a similar predicament. As you haul your tired body back to the museum entrance, you realize that you seem to have gained a better understanding of just what it is to be a nymph, and strangely enough, you find that it seems almost like an appealing life to you...";
		infect "Greek Nymph";

To say Greek Nymph loss:
	let t1 be a random number between ( 50 - beatgrnymph ) and 125;
	let t2 be a random number between ( 50 - beatgrnymph ) and 125;
	if beatgrnymph > 10 and ( t1 < libido of player ) and player is male:
		say "     You feel a rush of lust wash over you after having been teased too much by these sexy nymphs. You grab the nymph's wrist before she can get up and flee, tired of their games. Pushing her down, she squirms a little, but only playfully so, as she starts to giggle as you nuzzle at her neck and nibble along it. 'Oh, so now you want to play,' she says with a laugh. She moans and spreads her legs as you run your hand along her thigh, letting you get your cock lined up with her wet pussy. She grips your hips tightly and giggles lustfully as you drive your hard shaft into her[if cock length of player > 24]. Her beautiful body, even practiced on the well-hung satyrs, has some difficulty with your massive length, but the lustful nymph's cunt and body stretch to take you[else if cock length of player > 12]. Her beautiful body, having practiced on the well-hung satyrs, takes your large cock with ease, making her a wonderful fuck for someone of your size. She seems quite delighted by your ample meat as well[else]. Her beautiful body, having practiced on the well-hung satyrs, has no difficult taking your [cock size desc of player] cock into her wet pussy. But her delightful cunt squeezes and tugs at your meat deliciously, and she still seems to be having a good time, despite it being smaller than she's used to[end if]. You have a wild, passionate romp with the sexy woman before finally pumping a hot load into her. She giggles and dances off as your seed [if cock width of player > 20]flows[else if cock width of player > 12]runs[else if cock width of player > 6]leaks[else]trickles[end if] out of her recently creamed cunt.";
		now beatgrnymph is beatgrnymph / 2;
	else if beatgrnymph > 10 and ( t2 < libido of player ) and cocks of player is 0:
		say "     You feel a rush of lust wash over you after having been teased too much by these sexy nymphs. You grab the nymph's wrist before she can get up and flee, tired of their games. Pushing her down, she squirms a little, but only playfully so, as she starts to giggle as you nuzzle at her neck and nibble along it. 'Oh, sister, I thought you didn't want to play,' she says with a laugh. 'But shouldn't we find some satyrs to fill us?' Feeling playful and already having gotten your prize, you turn around, bringing your wet pussy over her face and diving your own face between her legs. She squeals happily in surprise and pleasure as you start eating out her juicy box, coaxing her to do the same for you. You both stroke, lick, kiss, and nibble one another through a series of small orgasms before building up to one final, large climax that leaves you both panting and moaning with your faces soaked in womanly juices. Releasing her, you give her a playful spank and send her on her way giggling down the halls.";
		now beatgrnymph is beatgrnymph / 2;
	else:
		say "     Knocking the naked nymph backwards, she slips and falls down with a cry. 'You're no fun!' the nymph proclaims, pouting. 'Why don't you want to play with us?' she whines pathetically at you, before bursting into tears. Not knowing what to do with a crying nymph, you just stop and stare as she picks herself up and runs off down the hallway in tears, you feel vaguely guilty at having reduced one of the perpetually happy creatures to tears. However, the feeling fades when she reaches the end of the halls, stops crying to look around for a minute, and takes off laughing again, a satyr in hot pursuit.";
		if player is not neuter, increase beatgrnymph by 10;


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Greek Nymph";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She slaps at you playfully, and you are surprised at how much it stings.[or]She giggles and poses for a second, causing you to pause and stare in fascination at her perfect body.[or]The nymph erupts into amused laughter as she dances around you. Strangely, you find yourself doubling over in laughter as well, everything seeming so amusing for a second.[or]She runs right at you, knocking you both to the ground.[or]'Tag!' she shouts, as she whacks you upside the head.[at random]";
	now defeated entry is "[Greek Nymph loss]";
	now victory entry is "[Greek Nymph attack]";
	now desc entry is "[mongendernum 4]     You encounter a lovely, naked woman darting through the halls giggling. Spotting you, she gasps in surprise. You blink as you recognize this strange, otherworldly beauty as what appears to be a classical Greek nymph! [one of]'You won't catch me so easily!' [or]'Did you come looking for me?' [or]'Tag, you're it!' [or]'Let's have some fun!' [or]'Come on! Play with me!' [at random]the nymph says, letting out another giggle, before darting forward with a mischievous glint in her eyes as she reaches for you.";
	now face entry is "that of a beautiful female, with lovely, golden eyes and long, flowing hair. The only thing making it different from a normal woman's is the near perfection of your nymph-like visage"; [ Face description, format as "Your face is (your text)."]
	now body entry is "that of an extremely, perky young woman, with long, lithe legs made for running and dancing and curves so impossibly perfect that they are almost obviously unnatural, or supernatural, as the case may be"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]nymph-like[or]soft and sleek[or]beautiful[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is ""; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]satyr-like[or]goat-like[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it seems to smooth out, and all the tiny, little imperfections vanish, leaving you with a pretty nymph-like countenance and a strange desire to giggle and play"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you become more slim and nimble, your legs lengthening and your body acquiring more feminine curves. You find yourself skipping and dancing along as you move around on your new, slender legs"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "any imperfections and changes slowly vanish, leaving you with the soft and rosy skin of a beautiful nymph"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it tightens up, becoming pleasantly grabbable and tight"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it seems to realize it doesn't belong on this nymph-like body"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 20;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 40;
	now lev entry is 6;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 9;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Museum";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 0;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;  [ Length infection will make cock grow to if cocks]
	now cock width entry is 0;  [ Size of balls ]
	now breasts entry is 2;  [ Number of Breasts infection will give you. ]
	now breast size entry is 8;  [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;
	now cunt width entry is 6;
	now libido entry is 30;  [ Amount player Libido will go up if defeated ]
	now loot entry is "estrogen pill";  [ Loot monster drops, ]
	now lootchance entry is 5;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sultry[or]effeminate[or]curvaceous[or]slender[at random]";
	now type entry is "human-like";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

when play ends:
	if bodyname of player is "Greek Nymph":
		if humanity of player < 10:
			say "Surrendering to your nymph-like desires, you laugh as you run back towards the museum, somehow knowing that you will find the rest of your sisters there, and the always wonderful-to-tease satyrs. Reaching the large museum halls, you join your sisters, happily dancing and playing the days away. At some point, some people try to come and 'rescue' you. Being happy enough as is, you let the men among them come 'rescue' you from your temporary boredom, laughing as they join the satyrs in their revels, and you eagerly help the women amongst them who are envious of your beauty find the inner nymph within themselves. Soon, most of the visitors stop coming, and you hear this military thing has set up some kind of cordon to keep people out. Still, occasionally, new people slip inside, drawn by the lure of endless joy and pleasure, and you and your sisters welcome them with open arms. Sometimes, you think about heading outside and spreading joy and fun to the people out there, but you are unable to work up the motivation to do so... Perhaps one of these days though, you will help the world embrace a life of endless joy and pleasure... Until then, you are too busy living that life yourself...";
		else:
			say "Rescued by the military, you can't help but giggle in amusement as they fail to realize that you are infected, too busy admiring your perfect nymph-like form to think to check. Left to your own devices afterwards, you wander around mostly aimlessly. Men fall over themselves to buy you food or places to stay for the night, so you really have no reason to bother working. Eventually though, attracted by tales of your beauty, a woman tracks you down and asks you to come model cosmetics for her. Since it sounds amusing, you go along with her idea and quickly become one of the company's best models. Some of the other models get slightly jealous, until you all go on a shoot together, and intrigued by the idea of having some new sisters to play with, you spend plenty of time with the other models. To your surprise, they too take on a slightly nymph-like appearance and attitude, and you happily model different cosmetics with your new sisters. Eventually, the company starts poking and prodding you and your sisters to try to figure out the secret of your beauty, with plans at some point for a new Greek Nymph line of products, once they manage to duplicate it. The very idea makes you giggle at the thought of all the new sisters and all the fun you can have together if it works!";



Greek Nymph ends here.
