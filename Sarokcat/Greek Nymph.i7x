Greek Nymph by Sarokcat begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Greek Nymph to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Greek Nymph" } to infections of girl;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say Greek Nymph attack:
	if cocks of player is greater than 0:
 		say "With one last blow, the nymph knocks you to the ground, dazed. 'Yay that was fun!' The beautiful young woman cries out, clapping her hands at her victory, 'I won! I won! Now we get to play a new game!' The nymph says as she eyes your prone form, making you nervous.  Her eyes fix on your cock, which is already partially erect due to her naked state, 'And I know what I want to play with!' The nymph says as she lowers her hand to tease your cock.  The feel of her soft hands on your cock has you lying back on the floor with a groan as she slowly runs her hands all over it. 'Mmm I just love your [cock of player] cock, it looks like fun, we should try it out.' The nymph says with a moan of her own, as she positions herself above you.[line break]";
		say "You can[apostrophe]t even put up a token protest as she slides herself onto your member, her warm wetness engulfing your cock causing you to shudder in pleasure. Soon she is lifting herself up and down on you, giggling as you writhe underneath her, her long legs rubbing along your sides as they lift her, and her hands playing over your chest.   Before you know it, you are lost in the sensations of the moment and all thoughts of the future fly out of your mind as you bring your hips up to meet her each time, loving the feel of penetrating her again and again.  Your hands go to her hips as you begin to move in sync, and the nymph rubs her silken soft skin over your body, laughing and whispering happy little words as she rides you. After what seems like forever of her teasing touches and warmth, and yet seems far far too soon, you find yourself exploding into her, making her moan as she orgasms with you.  Shuddering you lie there on the cool floor, as she giggles and pulls herself off your spent cock.  'Not as much endurance as a real satyr,' The nymph says as she pats you on the head sadly, 'But I[apostrophe]m sure you[apostrophe]ll get there eventually, you should work on that for next time we play together ok?' The nymph says with a perky smile, before sauntering happily off down the hall, giving you an excellent view of her nice ass, and making you think eagerly about the promised 'next time'";
		if guy is not banned, infect "Satyr";
	otherwise:
		say "With one last blow you collapse to the ground dazed, 'That was fun!' The nymph giggles as she looks down at your prone form. 'We should play some more sometime!' She says exuberantly, only to stop and listen for a minute as you both hear the sound of singing and carousing echoing through the halls.  'Oooh Satyrs!' The nymph exclaims, clapping her hands together happily, before grabbing you and hauling you to your feet. 'Come on sister!' she calls as she drags your stunned self along behind her, 'We don[apostrophe]t want to make it too easy for them to find us!' The nymph says with a laugh as you and she run through the museum halls,  'Of course we also don[apostrophe]t want to make it too hard for them to find us either!' The nymph says as she flashes you a grin.  Heading down the corridors with the nymph you quickly begin to grow tired, while she dances along dragging you behind, shooting you amused happy glances as you travel. Soon a Satyr takes advantage of her distraction as he pounces on her from a side corridor when she was looking at you. [line break]";
		say "The nymph lets out a happy squeal, and puts up a token struggle as the satyr wraps his arms around her and pins her to the wall.  Soon though the nymph is the one wrapping her legs around the goat man as he thrusts into her all too willing body, their happy cries of lustful pleasure filling the halls. You find yourself staring at the erotic scene for several minutes, as their bodies writhe together in harmony, before you realize that if you don[apostrophe]t keep moving, you might end up in a similar predicament.  As you haul your tired body back to the museum entrance, you realize you seem to have gained a better understanding of just what it is to be a nymph, and strangely enough, you find it seems almost like an appealing life to you...";
		infect "Greek Nymph";

To say Greek Nymph loss:
	say "Knocking the naked nymph backwards, she slips and falls down with a cry.  'Your no fun!' The nymph proclaims pouting, 'Why don[apostrophe]t you want to play with us?' She whines pathetically at you, before bursting into tears. Not knowing what to do with a crying nymph, you just stop and stare as she picks herself up, and runs off down the hallway in tears, you feel vaguely guilty at having reduced one of the perpetually happy creatures to tears, though the feeling fades when at the end of the halls, she stops crying looks around for a minute, and takes off laughing again, a satyr in hot pursuit.'";

	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Greek Nymph"; [Name of your new Monster]
	now attack entry is "[one of]She slaps at you playfully, and you are surprised at how much it stings.[or]She giggles and poses for a second, causing you to pause and stare in fascination at her perfect body.[or]The nymph erupts into amused laughter as she dances around you, strangely you find yourself doubling over in laughter as well, everything seeming so amusing for a second.[or]She runs right at you, knocking you both to the ground.[or]'Tag' She shouts, as she whacks you upside the head[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Greek Nymph loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Greek Nymph attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "You encounter a lovely naked woman darting through the halls giggling, spotting you she gasps in surprise.  You blink as you recognize this strange otherworldly beauty as what appears to be a classical Greek nymph! '[one of]You won[apostrophe]t catch me so easily! [or]Did you come looking for me?[or]Tag your it![or]Lets have some fun![or]Come on! Play with me![at random]' the nymph says, letting out another giggle, before darting forward with a mischievous glint in her eyes as she reaches for you.";[ Description of the creature when you encounter it.]
	now face entry is "beautiful female face, with lovely golden eyes and long flowing hair, the only thing marking it is as different from a normal womans, is the near perfection of your nymphlike";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "that of an extremely perky young woman, with long lithe legs made for running and dancing, and curves so impossibly perfect they are almost obviously unnatural, or supernatural as the case may be.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]nymphlike[or]soft and sleek[or]beautiful[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is " ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]Satyrlike[or]goatlike[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it seems to smooth out, and all the tiny little imperfections vanish, leaving you with a pretty nymphlike countenance and a strange desire to giggle and play."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you become more slim and nimble, your legs lengthening and your body acquiring more feminine curves, you find yourself skipping and dancing along as you move around on your new slender legs."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "any imperfections and changes slowly vanish, leaving you with the soft and rosy skin of a beautiful nymph."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your rear end tightens up, becoming pleasantly grabable and tight."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it seems to realize it doesn[apostrophe]t belong on this nymphlike body."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 20;
	now sta entry is 14;					
	now per entry is 12;
	now int entry is 12;
	now cha entry is 20;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 40;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 10;			[Amount of Damage monster Does when attacking.]
	now area entry is "Museum";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 8;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "Greek Nymph":
		if humanity of player is less than 10:
			say "Surrendering to your nymphlike desires, you laugh as you run back towards the museum, somehow knowing you will find the rest of your sisters there, and the always wonderful to tease satyrs. Reaching the large museum halls you join your sisters happily dancing and playing the days away, at some point some people try to come and 'rescue' you.  Being happy enough as is, you let them men among them come 'rescue' you from your temporary boredom, laughing as they join the satyrs in their revels, and you eagerly help the women amongst them who are envious of their beauty, find the inner nymph within themselves.  Soon most of the visitors stop coming, and you hear this military thing has set up some kind of cordon to keep people out, still occasionally new people slip inside, drawn by the lure of endless joy and pleasure, and you and your sisters welcome them with open arms.  Sometimes you think about heading outside and spreading joy and fun to the people out there, but are unable to work up the motivation to do so... perhaps one of these days though you will help the world embrace a life of endless joy and pleasure... until then you are too busy living that life yourself...";
		otherwise:
			say "Rescued by the military, you can[apostrophe]t help but giggle in amusement as they fail to realize you are infected at all, too busy admiring your perfect nymphlike form to think to check.  Left to your own devices afterwards, you wander around mostly aimlessly, men falling over themselves to buy you food or places to stay for the night, you really have no reason to bother working.  Eventually though, attracted by tales of your beauty a woman tracks you down and asks you to come model cosmetics for her, since it sounds amusing you go along with her idea, and quickly become one of the companies best models.  Some of the other models get slightly jealous, until you all go on a shoot together, and intrigued by the idea of having some new sisters to play with, you spend plenty of time with the other models. To your surprise they too take on a slightly nymphlike appearance and attitude, and you happily model different cosmetics with your new sisters.  Eventually the company starts poking and prodding you and your sisters to try to figure out the secret of your beauty, with plans at some point for a new Greek Nymph line of products once they manage to duplicate it,  the very idea makes you giggle at the thought of all the new sisters and all the fun you can have together if it works!";




[ Edit this to have the correct Name as wall]
Greek Nymph ends here.