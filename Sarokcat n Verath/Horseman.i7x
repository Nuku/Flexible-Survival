Horseman by Sarokcat n Verath begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Horseman to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Horseman" } to infections of guy;
	add { "Horseman" } to infections of furry;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

to say Horseman attack:
	if cunts of player is greater than 0:
		say "The powerful horseman grins happily as you fall down before his might, his equine eyes roving over your body, as he steps forward on his powerful hooves. 'Now I should really take you down to the rest of the herd, so we can all make a lovely little filly out of you, but first I think I[apostrophe]m going to have a little fun with that slutty little pussy of yours myself.' The powerful male horse says with a leer on his muzzle as he strokes already erect equine cock in anticipation. You try to bring yourself to protest as he stalks towards you, his hooves clopping on the ground as he moves over you, his powerful equine legs shifting his weight easily as he reaches down and pushes you onto your back on the ground. 'Usually prefer a bed for this, or at least a mounting block, but this should be fun too.' He mutters absently as he positions himself over you, his powerful arms holding you down easily as he shifts his large equine rod down your body until the tip is resting up against your damp pussy teasingly, making you moan with need as your body begins to warm up under the influence of his powerful sexual musk. 'Now hold on, its time for this horse to take you for a ride.' He says with a rough chuckle, before beginning to push his thick length into your body.[line break]";
		say "His powerful cock feels like it is nearly splitting you in two as he pushes it into you an inch at a time, the feeling of his large broad meat spreading you open underneath his powerful form makes you shudder with pleasure. The slight pain of being stuffed so full of his thick equine cock soon overwhelmed by the pleasure of being filled so very completely by the powerful male. Your inner walls grip his cock tightly as he begins to thrust into you, your juices coating his thick length as he moves as much of his wonderful rod as possible into your  body with each rocking movement of his powerful hips. You groan as you throw your head back while he thrusts into you, your body rocking on the ground with every thrust, his equine member making your needy body feel so very good, even as the musk of a stallin in rut clouds your mind with lust, and images of all the other horsemen you saw fill your head enticingly, the images of all those massive stallionhoods ready and willing to use your tight body is just too much for your mind to take, and you cry out with orgasm as your body shudders underneath the horseman. Your walls convulsing with orgasm as they massage his cock is just too much for the male horseman as well, and lets out a loud whinny of pleasure as he empties his load into your body. [line break]";
		say "You groan and lie back with pleasure as his seed shoots into your womb, filling your body up with his cum, before it begins spilling out around the sides of his cock, as he continues to unleash a massive amount of cum into you, and then onto you as he pulls out and coats your front with his still spurting seed, even as more of it his fertile equine treasure leaks out from between your thighs. You can only groan contentedly and lie back on the ground as the powerful male piks himself up and shakes himself, before grinning down at you with amusement, 'That was fun, I think I[apostrophe]ll let you go now this time, provided of course you come back by here again soon, so I can 'catch' you again.' He says with another soft chuckle, before staggering unsteadily down the halls himself, leaving you lieing there covered in his cum as you try to recover some semblance of sanity before you have to gather your things back up and head out again.[impregchance]";
		infect "Horseman";
	otherwise:
		say "The powerful horseman scoffs as you collapse in front of him helplessly, 'Wasting my time on a puny little male runt like you? Why you don[apostrophe]t even have a proper cunt to fuck,' The horseman says with a crude chuckle as he strokes his thick equine meat speculatively, 'Still maybe with a bit of help you can become sexy little stud like me, though obviously not as handsome,' He says with a neighing chuckle, as he begins to groan in pleasure. Looking up at the masturbating horseman, you are hit full in the face with his sticky white equine seed, as he brings himself to orgasm and shoots his load all over you. You gasp in surprise and the taste of his equine cum fills your mouth even as he chuckles in amusement and continues to stroke himself, coaxing more and more seed out of his rod onto you, even as your body begins to shudder and feel strange in response. Your thoughts seemingly slower and more filled with lust with every second, and you lie there with a silly grin on your face even as he finishes coating you with his seed. 'There now, maybe that will help you fit in here better next time I find you.' He says with an equine grin as he begins to continue on his way down the passage. 'Or even better yet, maybe you[apostrophe]ll have a nice slutty little mare cunt for me to fuck instead! That would be even better!' He calls back over his shoulder as he leaves you lying there feeling strange, and completely coated in his equine seed.";
		infect "Horseman";
		

To say Horseman loss:
	say "The powerful horseman shakes his head slightly to clear it, before charging right at you again, obviously not knowing when he is beat. His attack is clumsy and easily avoided, as he is still off balance from the beating you have recently been giving him, and it is easy enough to sidestep and guide him right into a wall. The powerful beast groans and collapses up against the wall, a slightly stupified look on his face as he stares off into space, obviously stunned. Shaking your head slightly, you continue along your way before he can try to stop you again..'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Horseman"; [Name of your new Monster]
	now attack entry is "[one of]He rears back and kicks out at you with one of his large powerful legs![or]The powerful horseman grins evilly as he lowers his head slightly and rams his forehead into yours brutally.[or]He strokes his powerful equine cock teasingly, his masculine equine musk filling your head and sapping your will to fight.[or][at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Horseman loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Horseman attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "Coming around a corner you slam into what feels like a solid wall, looking up you see you have run into one of the horsemen. He looks down at you with confusion as you take a step back. Standing on digitigrade legs that are covered in a cream colored fur up to his thickly built human torso. On his right bicep is the same intricate interlocking horseshoe tattoo that the guards at the front door have.  An impressive equine package bulges his ripped khaki shorts.  His heavy three fingered hands are capped with hooflet like nails. His short tail flicks behind him in annoyance. Still looking at you with confusion written all over his fully equine head and face you begin to wonder if this men were chosen more for their body mass than brains. 'You don[apostrophe]t look like you[apostrophe]re supposed to be here,' he grumbles. 'I better take you back to processing so they can make a proper horsey fucktoy out of ya.'";[ Description of the creature when you encounter it.]
	now face entry is "Broad equine muzzle, with large round blue eyes, and rather expressive horselike ears, sitting atop your new";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "Large and muscular, with strong digigrade equine legs ending in powerful hooves supporting, your muscular form, your strong hands seem to be slightly hooflike as well, the ends of your fingers tipped with little hooflet like nails.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]horselike[or]dappled[or]brown and white patterned[or]softly furred[or]short fur covered[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long thick horselike tail swaying behind you almost to the ground, its long strands of coarse hair covering your ass completely as it flicks this way and that seemingly on it[apostrophe]s own.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]equine[or]horselike[or]blunt[or]powerful[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your mouth stretches forward, your nose flattening as it merges with your forming equine muzzle.  You find yourself groaning slightly as your forehead flattens and your eyes shift their position to the sides slightly even as your ears lengthen into larger and pointed horselike ears, which come to rest atop your now extremely equine face."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your muscles seem to shift around underneath your skin, and your legs cramp as your heels move up your legs, causing you to stumble slightly as you are forced to assume a more digigrade stance on your changing feet, your toes seeming to flatten and merge together until you are standing on powerful horselike hooves. The rest of your body finishes changing as well, your hands having acquired rather hooflike nails, and your chest and torso is broader and more equine looking."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "coarse horselike fur begins to push its way out of your flesh, the brown and white patterned fur forming into several rather interesting dappled patternings as it finishes covering your body completely."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it seems to tighten into a rather broader and flatter ass, and long strands of thick equine hair begin to sprout from the base of your spine, quickly growing out to form a rather long and handsome equine tail which hangs down past your knees and seems to flick from side to side as if it had a mind of its own."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it grows erect and aroused, before beginning to shift and change. The point of your cock broadening and flattening slightly into a rather blunt equine shape, while a proper sheath forms around the base of your cock, and a ribbed ring forms about halfway up your rather larger member.."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 28;
	now dex entry is 16;
	now sta entry is 24;					
	now per entry is 14;
	now int entry is 8;
	now cha entry is 14;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 90;			[ How many HP has the monster got? ]
	now lev entry is 9;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 12;			[Amount of Damage monster Does when attacking.]
	now area entry is "Stable";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 20;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 8;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 70;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Spotted fur";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]




when play ends:
	if bodyname of player is "Horseman":
		if humanity of player is less than 10:
			if cunts of player is greater than 0:
				say "";
			otherwise:
				say "Your head feels increasingly fuzzy as your instincts begin to take over more and more, and you find yourself forgetting from minute to minute what you were supposed to be doing, your thoughts increasingly filled with powerful sexual desires and the need to find a mare, or someone to make into a proper mare.  Following your half forgotten memories, you eventually manage to find your way to a large building that seems familiar, and spying a couple of other horsemen at the entry, you remember that this place was called the stables or something. Shaking your head slightly to try to clear it, you recall that stables are place for horses, and since you are a horse, obviously you should be here. With that worked out, you feel a smile cross your increasingly equine muzzle, as you wander over to the door, the guards stopping to chat with you for a minute, before leading you over to your new quarters. You find yourself loving being a horse and guarding the building, especially since all the mares are more then happy to play with a handsome stud of a stallion like yourself when they aren[apostrophe]t busy with their clients. Of course the military does eventually stick its nose into your happy life soon enough, as they pour into the city and try to pacify it.  They are no match for you and your herd mates in the close confines of the city however, and soon you herd is swelling even larger than ever before as more and more of their patrols succumb to the infection. Of course occassionally a patrol makes it all the way to the Stables themselves, where you are more then happy to let them in to look around... after all, the mares can always use more customers, and you can always use more mares once they have finished changing....";
		otherwise:
			if cocks of player is greater than 0:
				say "Rescued from the city with your mind still barely intact, though your memories seem to be growing increasingly fuzzy as time goes on, the military takes you back to their base of operations where they can try to help you deal with the infection.  Of course before long they don[apostrophe]t have much time to worry about a rather muscular and handsome horseman like yourself, and while there is some talk about enrolling you in the army to fight the other infected, they decide it is safer for everyone if they just send you on your way. Once free, you wander around aimlessly for a while, unable to remember clearly what it was you used to do, or should be doing, until finally you end up trying to get drunk in a bar, when several people start a fight nearby. The fight was easy enough for you to break up, and in doing so you ended up getting a job as a bouncer for the bar as well, a job that seems to suit you well enough. After a while you become good friends with the barkeep and several of the rest of the staff, enjoying your new positon, and the fact that you don[apostrophe]t need to worry about the past any longer. Of course something still seems to be missing from your life, and once you realize what it is, you find yourself grinning happily as you go to meet the barkeep at his apartment after the bar closes.  You just know he will look so much better as a nice handsome stallion, and then the two of you can get started on making the rest of the staff into a proper herd....";
			otherwise:
				say "The military manages to rescue you from the city before you can give in to the infection, and you go with them to their base happily, though several of the soldiers seem surprised by your powerful new equine build, and the glimpses they get of your sexy horselike pussy. Eventually the scientists try to take a look at you, and are rather confused by the conflicting changes in your body, however having much more pressing matters to deal with, they rather reluctantly release you so they can focus on the other dangerous things going on in the city itself. Wandering around free, you find your memories of things before the infection are rather hazy, and you can[apostrophe]t recall where you should be going now that you are free, or even if you had a career of some kind to continue. You continue to wander around aimlessly for a while, before eventually running into a small group of other changed creatures going about their business. The [one of]Hyenas[or]Wolves[or]huskies[or]Rats[or]deer[at random] seem rather nervous around you at first, but soon seeing how lost you are, they decide to let you tag along with them. Soon though your powerful build proves to be useful in discouraging or even solving trouble several times, and they become increasingly more accepting of you. Before long several of the males have even offered to share your bed at night, an offer that you more than eagerly find yourself accepting. Eventually you feel content as a member of your new, rather strange herd, and while the main male isn[apostrophe]t the normal kind of equine herd leader, his cock certainly feels amazing enough when he plunges it into you most nights, and you look forward to being nice and full of his offspring very soon now, and probably for the rest of your long and full life as well...";

			



[ Edit this to have the correct Name as wall]
Horseman ends here.


