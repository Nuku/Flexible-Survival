gazelle by Sarokcat begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a gazelle to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "gazelle" } to infections of hermaphrodite;
	add { "gazelle" } to infections of furry;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

to say gazelle attack:
	say "'The gazelle like human knocks you to the ground, and then stares down at your defeated form, almost seeming surprised at their victory.  'Well you aren[apostrophe]t so dangerous after all,' the beast says, and you can see its cock growing erect and its pussy moistening as it savors its victory.. 'Maybe we didn[apostrophe]t have to panic after all... then again,' the gazelle says with a speculative look at your prone form. 'Just maybe deep down you wanted me to win after all, hmm.' She considers you for a minute as she tries to catch her breath before deciding something. 'I think I see something I like in you,' she says with a sharp nod, her horns bobbing as she lowers herself over you. 'Maybe we should have some fun...'";
	wait for any key;
	if cunts of player is greater than 0:
		say "Reaching down she spreads you legs further apart as she takes a good long look at your body, before running her hooflike fingers along the outside of your soft cunt.  'Yes I definitely see something I like,' She says with a grin, as she pumps her cock with her other hand, not waiting for your reaction, she quickly grabs your legs in her hands and spreads them wide as she moves between them, her cock probing at your feminine passage.  Finding the right angle she wastes no time thrusting herself into you fully, making you cry out at the sudden invasion, soon though you find the feeling of being penetrated by her hard maleness becomes completely pleasurable.  Her animalistic member spearing into you again and again as she leans over you, her hooflike hands on her hips as she thrusts in, you find your own hands gripping her horns as she hovers over you, gripping her in an effort to get her to thrust harder, and faster.  She soon complies to your demands, and you buck and writhe underneath her as your orgasm shoots through you, causing her to orgasm as well, her strong member filling you up to the brink.  Slowly she withdraws as you collapse bonelessly, a mixture of your juices leaking out of your passage as she sets you down, causing you to moan at the erotic feeling.  'Yes I definitely see something here I like,' She says with a grin, as she brushes herself off, 'Hopefully you will come by soon so I can see it again,' So saying she bounds off down the zoo pathways to rejoin her herd, leaving you lying there helplessly, her warm seed still leaking out of you.[impregchance]";
		infect "gazelle";
	otherwise:
		say "Reaching down she wraps her slightly hooflike fingers around your cock, pumping it once or twice with a grin as she watches your reaction. 'Yes I definitely see something I like here.' She says as she wastes no time lowering herself onto you.  You buck in pleasure as she sinks onto your cock, and then moan as she starts to ride you, one hand bracing herself up on your chest, while the other strokes her own erect cock where it stands out from her body.  You gasp in pleasure as she fucks you hard, her strong leg muscles lifting her up and down on your cock until you finally cant take it anymore.   You cry out as you orgasm, shooting yourself into her hot opening, causing her to cry out above you as your release causes her to orgasm as well, her cunt shuddering around your cock as it milks it, and her own cock shooting its seed all over your chest some of it even spattering your face with its a powerful release.  Spent you lie there as she shudders over you, she recovers first and pulls herself off of you, standing up and brushing herself off, she looks down at your spent form, covered in her juices and her seed.  'Yes I definitely see something I like there...' She says with a grin, 'Hopefully you will come by soon so I can see it again,' she finishes, before bounding off down the zoo pathways to rejoin her herd, leaving you lying there, covered in her seed.";
		infect "gazelle";


To say gazelle loss:
	say "Crying out in pain at your last blow, the gazelle quickly glances around, and you realize while you were engaged with this opponent, the other gazelle have completely vanished.  Seemingly satisfied at the success of its distraction, the gazelle shoots you one last smug grin, before darting off itself, its legs pumping as it bounds quickly through the bushes before you can follow.'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "gazelle"; [Name of your new Monster]
	now attack entry is "[one of]She leaps forward, slamming into you roughly[or]Lowering her head, she points her sharp horns at you as she charges.[or]Leaping up she lashes out at you with her hooflike feet![or]Dancing forward she lashes out with her hoof like hand.[or]Springing forward, she slams her body into you, knocking you down.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[gazelle loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[gazelle attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "Wandering down the zoo paths, you come across a small group of rather humanlike gazelles   their short muzzles and sharp horns moving happily as they graze on the topiary with thin cocks sprouting from between their legs, above their obviously female openings, with soft pert breasts resting on their chests.  Spotting you they immediately freeze. Before you can even open your mouth to speak, most of them bolt in different directions, although one of them charges right at you, intent on protecting the rest of the herd!  You have no choice but to brace yourself for battle!";[ Description of the creature when you encounter it.]
	now face entry is "short gazelle like muzzle, your face a blend of gazelle and human features, with large bright eyes and sharp backwards pointing horns rising above your"; [Your have a (your text) face."] 
	now body entry is "lean and lithe, your legs are well built for leaping and jumping as you balances on your hooflike feet, your arms narrow and slender and the tips of your fingers covered in hooflike nails.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]brown and white patterned[or]spotted[or]soft furred[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a small fluffy tail sticking out from your backside, its shape helping to pull your ass up slightly giving your backside a happy perky apperance.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]equine[or]gazelle[or]thick thin[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it pushes forward into a short narrow muzzle, filling up with thick herbivore teeth.  Sharp pressure shoots through your skull as two new gazelle like horns slowly press out of your skull, adding some weight to your head."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it seems to grow more lithe and lean, your feet changing into sharp hooves, as your legs shift and change to help you balance better on your new hooves.  Your hands grow slightly shorter as your fingernails cover the tips, giving them a slightly hooflike appearance, and your form becomes better suited to swift fast movements and leaps.."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft brown and white patterned fur covers your body, your skin itching slightly as it settles into place."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your ass tightens to for better running and jumping, as a soft gazelle tail sprouts behind you."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it draws up tighter between your legs, becoming wrapped in a proper gazelle like sheath."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 18;
	now sta entry is 12;					
	now per entry is 18;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 8;			[Amount of Damage monster Does when attacking.]
	now area entry is "Zoo";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 9;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 4;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "gazelle":
		if humanity of player is less than 10:
			if cunts of player is greater than 0:
				if cocks of the player is greater than 0:
					say "Unable to fight your need to belong any longer, you quickly search out the gazelle herd, you encountered several times before.  Unlike before though, this time instead of scattering at your approach, they open ranks and are completely accepting of your presence here, making you feel as if you belong as they close ranks around you to keep an eye out for dangers.  You soon find yourself being greeted by a familiar looking gazelle as shi nuzzles you happily, 'I knew I saw something I liked in you' shi mutters as shi runs her hands along your sides, 'I[apostrophe]d be happy to welcome you to the herd properly...' Shi says with a grin.  You shudder and find yourself nodding, happy to belong and happy to have found your place as she slowly runs her stiff cock along your thighs, before thrusting into you.  You enjoy the mating, while several other gazelles watch both you and for any threats, their presences seeming almost comforting as the two of you put on a show for them, soon shi cums into you, making you happy, and pulling out she turns and presents herself for your stiff cock.  You happily find yourself returning the favor, thrusting into her eager body as she welcomes you fully into the herd.[line break]";
					say "Finally feeling like a true part of the herd, you help focus on surviving in a rough and changed city, the challenges of daily life are both exciting and dangerous, yet easily met with a group by your side.  Eventually though the military moves to retake the city, and things get even more dangerous,  as the groups within the city fight it out with the military, your small herd and several other herds take advantage of the confusion to flee, slipping out into the countryside while everyone else[apostrophe]s attention is focused elsewhere. Feeling totally free finally of the constant fighting, you still don[apostrophe]t relax your vigilance, as the world is still a dangerous place for a group of gazelles.  Your herd moves south while others take other paths, eventually finding some nice mostly unoccupied plains in which to settle and build up your numbers, in several years people will start hearing reports of large groups of wild gazelle wandering the area again, and several nearby towns will mysteriously be missing all their people...";
				otherwise:
					say "Unable to fight your need to belong any longer, you quickly search out the gazelle herd, you encountered several times before.  Unlike before though, this time instead of scattering at your approach, they open ranks and are completely accepting of your presence here, making you feel as if you belong as they close ranks around you to keep an eye out for dangers.  You soon find yourself being greeted by a familiar looking gazelle as shi nuzzles you happily, 'I knew I saw something I liked in you' shi mutters as shi runs her hands along your sides, 'I[apostrophe]d be happy to welcome you to the herd properly...' Shi says with a grin.  You shudder and find yourself nodding, happy to belong and happy to have found your place as she slowly runs her stiff cock along your thighs, before thrusting into you.  You enjoy the mating, while several other gazelles watch both you and for any threats, their presences seeming almost comforting as the two of you put on a show for them, soon shi cums into you, making you happy, and truly making you feel like you belong here.[line break]";
					say "Finally feeling like a true part of the herd, you help focus on surviving in a rough and changed city, the challenges of daily life are both exciting and dangerous, yet easily met with a group by your side.  Eventually though the military moves to retake the city, and things get even more dangerous,  as the groups within the city fight it out with the military, your small herd and several other herds take advantage of the confusion to flee, slipping out into the countryside while everyone else[apostrophe]s attention is focused elsewhere. Feeling totally free finally of the constant fighting, you still don[apostrophe]t relax your vigilance, as the world is still a dangerous place for a group of gazelles.  Your herd moves south while others take other paths, eventually finding some nice mostly unoccupied plains in which to settle and build up your numbers, in several years people will start hearing reports of large groups of wild gazelle wandering the area again, and several nearby towns will mysteriously be missing all their people...";
			otherwise:
				say "Unable to fight your need to belong any longer, you quickly search out the gazelle herd, you encountered several times before.  Unlike before though, this time instead of scattering at your approach, they open ranks and are completely accepting of your presence here, making you feel as if you belong as they close ranks around you to keep an eye out for dangers.  You soon find yourself being greeted by a familiar looking gazelle as shi nuzzles you happily, 'I knew I saw something I liked in you' shi mutters as shi runs her hands along your sides, 'I[apostrophe]d be happy to welcome you to the herd properly...' Shi says with a grin.  You shudder and find yourself nodding, happy to belong and happy to have found your place as she slowly rubs her body against you, your cock stiffening at her teasing touches, turning she presents her wet cut to you, and you happily find yourself thrusting into her eager body.  You enjoy the mating, while several other gazelles watch both you and for any threats, their presences seeming almost comforting as the two of you put on a show for them, soon you shoot yourself into her, making you both happy as you become a true member of the herd, helping to ensure the next generation.[line break]";
				say "Finally feeling like a true part of the herd, you help focus on surviving in a rough and changed city, the challenges of daily life are both exciting and dangerous, yet easily met with a group by your side.  Eventually though the military moves to retake the city, and things get even more dangerous,  as the groups within the city fight it out with the military, your small herd and several other herds take advantage of the confusion to flee, slipping out into the countryside while everyone else[apostrophe]s attention is focused elsewhere. Feeling totally free finally of the constant fighting, you still don[apostrophe]t relax your vigilance, as the world is still a dangerous place for a group of gazelles.  Your herd moves south while others take other paths, eventually finding some nice mostly unoccupied plains in which to settle and build up your numbers, in several years people will start hearing reports of large groups of wild gazelle wandering the area again, and several nearby towns will mysteriously be missing all their people...";
		otherwise:
			say "Rescued from the city before you can completely lose your mind to the infection, the military releases you after only the most cursory inspection, your inoffensive looking form not seeming half as important as those of the larger predatory creatures they have to deal with. Left out and on your own, you feel somewhat nervous and skittish without anyone you can trust around, people shying away from your changed body.  Deciding to make the best of things, you soon begin looking for any kind of work that is available, eventually finding a job at [one of]an accounting firm as a secretary[or]a factory working with others on the floor[or]a school teaching children[or]a law firm, as a champion of changed rights[or]a dance studio, eventually taking part in several musical productions[or]a construction firm as a coordinator[at random].  Your instinctive ability to work as part of a team proving to be a great asset in your career, though you always feel as if something is missing. Eventually at the height of your success, you decide to cash you and go looking for the partner you need, wandering the world looking for a place to belong and a partner to run with... maybe you will try Africa next...";

			



[ Edit this to have the correct Name as wall]
gazelle ends here.