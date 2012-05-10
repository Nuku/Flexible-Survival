Version 2 of Alpha Wolf by Sarokcat begins here.
[ Version 2 - Slightly increased stats and special code for Trickster event. ]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Alpha Wolf to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Alpha Wolfdefeat is a number that varies.
Alpha Wolfconsent is a number that varies.

to say Alpha Wolf attack:
	if wolffight is 3:		[ Trickster event fight ]
		say "The alpha wolf growls and pushes you to the ground.  He presses his partially-shaved body down atop you and pulls off your remaining clothes before grinding his cock into your face.  His throbbing meat is red and canine, dripping alluringly scented precum.  As you try to resist, he grabs your head and pushes himself into your mouth.  'Mmm... take it, you little bitch.  This'll teach you to get some cur to try shaving me,' he growls.  You moan softly around it as he starts to fuck your face hard and face.  His hot meat twitches inside your muzzle, leaking precum steadily as he pounds into you.  As its taste fills your mouth and his scent fills your nose, you find yourself no longer resisting and soon your licking and sucking that throbbing shaft greedily.  He releases a howling chuckle and keeps pumping, forcing his long shaft down your throat and pounding his knot against your lips.  He eventually cums with a loud howl and sends his thick seed flowing down your throat to warm your belly with the tingles of infection.";
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Feral Wolf":
				now monster is y;
				break;
	otherwise if Alpha Wolfdefeat is 0: [ first time losing to a wolf ]
		say "The wolf grabs you and throws you to the ground, causing you to whimper helplessly.  His tongue lolls out of the side of his mouth as he grins down at you prone at his paws.  From your vantage point you can easily see how excited your defeat makes him, his lupine shaft stiff and large with excitement. He raises his paw and rolls you onto your back, staring into your eyes deeply for a minute, his intent yellow eyes burning into yours until you cannot help but look away submissively. Lifting his paw up he tilts your head back, before pressing his sharp teeth to your [skin of player] throat, his powerful jaws tense just to they point where they almost draw blood before releasing you. Unable to help yourself, you shudder as submissive feelings roll through you, his strong masculine musk rolling over you, as you stare at the large wolf above you. He licks his chops for a minute, as if savoring the taste of you, 'Now you know your place in relation to the pack, submissive and at the feet of the alpha.' he says with a lupine grin, 'You aren't quite worthy of a place in the pack or my seed just yet, but perhaps the next time we meet you will be found worthy.' With those words he turns quickly and lopes away, leaving you lying there on the ground shuddering submissively as his saliva almost seems to burn on your neck, for some reason almost hoping he comes back and finds you there still in the submissive position he placed you in....";
		now Alpha Wolfdefeat is 1;
	otherwise if Alpha Wolfdefeat is greater than 4:
		if cunts of player is greater than 0:
			say "As the alpha once more approaches his conquest, you find yourself going down on all fours for him before he can even gesture for you to do so,  causing a lupine grin to spread across his face and a thrill of joy to shoot through you at having pleased the alpha with your submissive actions. You brace yourself on all fours as the magnificent wolf moves around behind you, his nose inspecting your nether regions and getting a good sniff of your dampening pussy.  Smelling your readiness for him, the alpha wastes no time  settling his weight on your back, his rough pawlike hands gripping your midsection firmly, as he rests his muzzle on your shoulder as he positions himself to take you like the beast he resembles. You shudder in anticipation as his knotted cock once more finds your feminine opening, and presses itself into you. [line break]";
			say "The feel of the alpha once more sheathing himself in you causes you to whine and writhe in pleasure underneath him, until he once more takes control of you by gripping the scruff of your neck with his teeth. His grip on your neck causing you to relax submissively underneath him, your mind going blank as you find yourself surrendering control of your body to the strong lupine alphas dominance.  Pleased with the total submission he has gone to such efforts to instill in you, the alpha rewards your surrender by beginning to thrust his canine meat into you again and again, the strangely shaped cock stimulating your insides in all the right places to make you pant in mindless need.  Soon his knot slips inside you again, its passage even easier as your body instinctively relaxes to let it in, and then grips it tight as it expands fully inside you, locking you together for the bliss you know is coming.  Once again the alpha begins to pound into you with hard short thrusts, grunting and growling above you in pleasure, and you find yourself mimicking his beastial noises as he brings you ever closer to orgasm as his pointed tip spears into you. Soon you are little more then an animal grunting and begging under him, a receptacle for his hot canine sperm, and you cant help but beg for him to fill you up with that warm seed.  Soon your begging is answered, as he releases your neck and lets out a low howl of pleasure as his cock twitches, and coats your womb with its hot puppy making batter,  his knot insuring that not a single drop of his seed is wasted as you twitch in your own orgasm underneath him. You remain there for a long time, tied together by the alpha[apostrophe]s powerful knot, lost in the happy sensations of a stomach pumped full of your alphas seed, your mind picturing your breasts full with milk and your belly full of his strong alpha pups soon instead of just their fathers seed. Eventually the alphas knot shrinks enough that he can finally pull it out of  your exhausted body with a soft slurping noise, you shudder in pleasure as you realize that not a drop of the alphas seed rolls out of your well used sex, all of it still sealed inside you waiting for its chance at making little alpha wolves.  By the time you have recovered your wits enough to move however, the alpha has long gone about his own business, leaving you behind to gather up your scattered wits and clean yourself up. You find yourself shuddering in reaction to your wanton and submissive thoughts under the strong wolf, and yet somehow it seemed so very natural.[impregchance]";
			alphwolfy;	
		otherwise:
			say "'Bad little wolf, not being ready for the packleader,' the large canine beast says, baring his teeth at your defeated form, causing you to cringe in submission. 'Next time I[apostrophe]m sure you will do better won[apostrophe]t you?' The large Alpha asks you, and you find yourself nodding submissively in agreement.  'Good, you had better,' The large beast mutters as it stalks away, leaving you lying there submissively in the road worried about his last statement.";
			alphwolfy;
	otherwise:
		if cunts of player is greater than 0:
			say "The wolf grabs you and throws you down onto the ground again, his rough pawlike hand keeping a strong steady pressure up as it grips the back of your neck, while his other moves between your legs, seemingly satisfied with what he finds there, the wolflike beast lets out a pleased grunt. Gripping your neck tighter, the beast forces your face down into the ground, as he positions himself behind you, you can hear his harsh panting breath as he moves his hard lupine cock up between your thighs.  Your body shudders as his pointed tip probes the entrance to your feminine passage, before thrusting himself into you in one swift hard thrust. [line break]";
			say " The feel of his hot thick meat splitting you open makes you writhe underneath him in pleasure, until you feel his teeth grip the back of your neck lightly, his grip on the scruff of your neck causing you to relax instinctively as fucks you.  Soon the hammering of his knot at the base of your pussy as it demands entrance has you moaning in need and lust as the alpha dominates you thoroughly. You soon find yourself thrusting backwards to meet each of the beasts strong thrusts, trying instinctively to work that large knot into you. Eventually his knot slips inside you, causing your eyes to go wide as you are spread open by the large bulge, sealing his cock inside you as it swells even wider. The wolf begins to pound into you with even more vigor as he growls in pleasure at your body's helpless submission to him, his shorter harder thrusts moving his knot and pointed cock in you in the most amazing ways, reducing you to little more then animalistic pleasure as he finally gives one last loud grunt and fills your body with his fertile sperm, his knot ensuring that not a single bit of his seed is wasted as you twitch in your own orgasm underneath him. You remain there for a long time, tied together by the alpha[apostrophe]s powerful knot, until finally it shrinks enough that he can pull out of  your exhausted body with a soft slurping noise, you shudder as a few stray drops of cum drip out of your well used sex, somehow sad that even a little of the alphas seed would be wasted in such a manner.  By the time you have recovered enough to move however, the alpha has long gone about his own business, leaving you behind to gather up your scattered wits and clean yourself up.[impregchance]";
			increase Alpha Wolfdefeat by 1;
		otherwise:
			say "The wolf grabs you and pins you to the ground again, his rough pawlike hand exploring your crotch causing you to moan.  The beast growls seemingly unhappy with what he finds, and snarls and snaps over your prone body.  'What is this?' The alpha demands,  'A weakling like you without the proper equipment to submit to your alpha? Unacceptable!' The beast growls causing you to shudder as his displeasure washes over you. The alpha knocks you to the side, forcing you to prostrate yourself beneath him as he rests his hind paw on your throat, causing you to gasp as he growls down at you.  'Next time you will be ready for your alphas pleasure little submissive, or else I might not be so forgiving' your alpha growls at you, before it removes its paw from your neck, and pads off down the street, leaving you gasping behind him, and lying their submissively shuddering in fear and a strange desire to do as your alpha pleases long after the beast is gone.";
	now wolffight is 2;				[lost]


To say Alpha Wolf loss:
	now wolffight is 1;				[victory]
	say "The large black furred wolf sinks to the ground his tail tucked between his legs as his ears droop back, his mouth falling open in astonishment. 'You? You managed to defeat an alpha? This must be a mistake..' The wolf mutters to himself, as he backs off his head low and his neck exposed in an acknowledgment of your dominance.... for now. Once the wolf has backed a short distance away, his head comes back up and he stares right into your eyes for a minute,  before opening his mouth in a lupine laugh.  'Don[apostrophe]t think this is over little one, you definitely have my attention now... you might even manage to make a good little alpha bitch someday at this rate' He says with a barking laugh, before he turns and lopes off down the road.";

	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Alpha Wolf"; [Name of your new Monster]
	now attack entry is "[one of]He snaps at you with his sharp teeth, leaving marks on your skin.[or]He whips his clawed paw out, slapping you down like a submissive wolf.[or]His large erect member catches your eye for a minute, noticing he pauses to stroke it and gestures towards you, the obvious demand eroding your desire to resist.[or]He grabs your arm in his teeth, and wrestles you to the ground.[or]Striking where you aren[apostrophe]t expecting it, he grabs your foot and jerks it out from under you, dumping you on the ground[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Alpha Wolf loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Alpha Wolf attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "Sauntering down the street, a large male wolf pads on all fours, his thick black fur gleaming in the light, spying you he quickly raises himself up onto his digigrade legs, a feral grin crossing his muzzle as his new upright stance reveals his semi erect canine cock for all to see. '[one of]Oh look, a chew toy for me to play with.[or]Hmm now the question is, will you submit to the packleader with or without a struggle? Either way sounds fun to me.[or]I can[apostrophe]t wait to see you on all fours underneath me[at random],' he says, dominance rolling off of him in waves, making you shudder as you realize you have definitely managed to encounter an Alpha wolf.";[ Description of the creature when you encounter it.]
	now face entry is "long canine muzzle sticking out of your feral wolflike countenance your mouth hangs open in a lupine grin revealing your new sharp teeth, if it weren[apostrophe]t for the intelligence sparking in your eyes and the slightly bigger forehead, it would be hard to tell your face from a regular wolf's";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "lean and equally well suited to life in the wild or the streets, your canine form stands easily on its new digigrade legs, and your pawlike hands are still as dexterous as ever, though you know that you could drop to all fours in an instant if the situation called for it, or your alpha came along to mount you.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]black furred[or]rough furred[or]thick furred[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a thick canine tail wagging happily behind you, its presence somehow feeling so very right. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]canine[or]wolf[or]knotted[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face stretches out into a large wolflike muzzle, new scents exploding through your brain as your new nose works overtime, especially hoping to catch the scent of the strong alpha who changed you...."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "Your body shifts and changes, your spine snapping and your legs shifting as you feel yourself becoming more comfortable now on your newly form canine feet and handpaws."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "Thick black fur begins to grow all over your body, its rough shaggy presence making you much more suitable for nights spent outside, running underneath the moon with the pack."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a large wolflike tail pushes its way out of your backside, as it finishes growing you find yourself wagging it slightly in pleasure at the new canine appendage marking you as a more suitable mate for the alpha."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your aching member grows thicker as it tapers to a sharp point, and a large canine knot forms at the base of your new wolflike sheath."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 17;					
	now per entry is 14;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 55;			[ How many HP has the monster got? ]
	now lev entry is 7;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 12;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 6;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "Alpha Wolf":
		if humanity of player is less than 10:
			if cunts of player is greater than 0:
				say "Your fragile mind snaps and you growl, dropping to all fours as you run off into the city, still running alone seems wrong on some deep fundamental level, and you let out a forlorn howl of loneliness to the sky above.  Soon you hear an answering howl that sends a tingle down your changed spine, and you dash off through the city, to find the howler.  As you come upon him you find his proud form, surrounded by the rest of his pack, which greets you eagerly as you approach.  Finally feeling at ease, you greet the proud strong alpha wolf that turned you into this wonderful creature, and he welcomes you into the pack by taking you right there in the moonlight for all to see. Finally you feel free and happy, as a sense of belonging washes over you as his strong alpha seed finds its way into your body, marking you as his now and forever. As you run off into the night with the rest of the pack, you know you will bear him many strong pups, and together your pack will rule this city as your new territory.";
			otherwise:
				say "Your mind overwhelmed with your body's new instincts, you drop to all fours as you run through the city, abandoning any pretense of humanity as you give in to your lupine instincts.  Hunting through the city for more like yourself, you find much of the territory is already claimed by the Alpha who turned you, and he brutally defends his pack and his territory from other males.  Feeling the need for a pack of your own and not just the lifestyle of a lone wolf, you seek new locations in which to start a pack, as well as properly submissive converts to fill it out.  Eventually you give up trying to find a good territory in the city, with all the competing factions, and start trying to find a way out of the city.  Watching the military blockade, you realize they function much like a wolf pack themselves in how they handle things, and taking advantage of this realization, you manage  to trick one of the more isolated groups into thinking you are wounded and need help.  When they approach you waste no time in converting them into more suitable forms to be your packmates, forms they come to embrace quickly as you impress your dominance on them.  With your new packmates in tow, you manage to slip through the military cordon, gaining a few new packmembers as you do, soon you and your new pack are free and searching for a new territory to set up in.  Eventually settling in a forest to the north, where amusingly enough the humans had been trying to reintroduce the wolf for a while, as several of the park rangers you dominate will tell you.  Out of amusement you allow several of the wolf biologists who come by once your pack is well established a chance to help reintroduce the wolf to the area personally, as they breed many fine pups for you, the new alpha wolf of the pack.";
		otherwise:
			say "You leave the city with the military personnel when they finally show up, pretending to be cured and submissive until they let you go, afterwards you roam around, never feeling truly content as a lone wolf.  Most people treat you like they would one of the changed dogs, and you let them live with your petty misconceptions, for even though you are not an alpha wolf yourself like the one who changed you, you are still a wolf at heart, and no one's pet.  Eventually you manage to find a biker in a bar with a similar attitude and soul under his human exterior, and with a bit of effort you entice him to join you for the night.  During the long night of lovemaking, you convert the biker into a fellow wolf, he takes to the change extremely well, and soon you are celebrating together the formation of your new pack long into the next day.  Taking to traveling together, you slowly add more pack members as you wander wherever the road and your bikes take you, a true roaming pack of wolves, with the wind in your fur and the smells of the wild filling your nose.  Finally you found your pack, and you couldn[apostrophe]t be happier.";


to alphwolfy:
	infect "Alpha Wolf";
			


[ Edit this to have the correct Name as wall]
Alpha Wolf ends here.

