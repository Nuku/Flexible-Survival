jackalman by Sarokcat begins here.
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a jackalman to Flexible Survival's Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

to say jackalman attack:
	say "'wow you got here how did that happen.'";
	wait for any key;
	if cocks of player is greater than 0:
		say "yay";
		infect "jackalman";
	otherwise:
		say "yowza";
		infect "jackalman";


To say jackalman loss:
	say "how the heck did you manage to get this, you are just that awesome I guess.'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "jackalman"; [Name of your new Monster]
	now attack entry is "[one of]She riddles you this and that till you cry.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[jackalman loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[jackalman attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "The jackalman is watching you!!";[ Description of the creature when you encounter it.]
	now face entry is "narrow canine face, with a long sleek muzzle full of sharp teeth and a nicely flattened forehead, your golden eyes seem to take in every aspect of the world around you, as your sleek jackal ears swivel around on top of your head to catch the faintest noise. Your powerful jaws pull your lips back in a feral grin as you admire your new face"; [You have a (your text) face."]
	now body entry is "strong and powerful, nicely muscled with bestial digitigrade legs and jackal like feet, your hands ending in sharp jackal like claws.  Your tough body displays your feral power for all to see, and is a perfect type of body for such a powerful jackal man like yourself";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a long sleek jackal's tail attached to your rear, it seems to sway happily over your thickly muscled ass in a predatory manner as you move.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canine[or]jackalman[or]jackal-like[or]knotted[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "as your mouth stretches and pushes forward in a massive yawning motion, the muscles reforming as it pushes out into a sleek black muzzle, while your eyes blur as they shift in both colour and position, new sounds and smells explode through your enhanced senses as your new jackal's muzzle finishes forming and your ears finish shifting into proper canine ears, swiveling around on top of your head like a proper jackal's"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your shape changes and seems to grow slightly more powerful, the muscles moving around under the skin as it becomes both stronger and sleeker. You can feel your legs shift and change as well, causing you to stumble forward slightly as your heels seem to shift upwards on your legs, shifting your weight forward onto the balls of your changing feet as they shift into a more powerful predatory stance. Soon your feet finish changing and you find yourself balancing easily on your new jackal like paws, as you stand on your new digitigrade jackal legs, and flex your new strong clawed hands"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "A soft tingling sensation spreads across your skin as soft, sleek, black jackal fur begins to push its way out of your body, swiftly covering your body in a sexy coat of thick dark fur"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a strange tingling sensation seems to come from your rear, as it tightens somewhat, then you can feel a strong pulling sensation as a thick black canine tail pushes out from your rear, lengthening until it is down past your knees before your new appendage is finished growing"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your shaft thins and changes, its tip tapering to a point while its base seems to swell up slightly before being covered in a soft black sheath of fur. Your balls tingle slightly as they swell with strongly fertile jackal seed"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 22;
	now dex entry is 18;
	now sta entry is 20;
	now per entry is 20;
	now int entry is 16;
	now cha entry is 28;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;			[ How many HP has the monster got? ]
	now lev entry is 10;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 30;			[Amount of Damage monster Does when attacking.]
	now area entry is "Shop";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
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
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]powerful[at random]";
	now type entry is "canine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is true;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

to jackalmanify:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "jackalman":
			now monster is y;
			break;
	now non-infectious entry is false;	[swap to allow infection...]
	infect;
	now non-infectious entry is true;	[...then close to prevent random infection]


when play ends:
	if bodyname of player is "jackalman":
		if humanity of player is less than 10:
			if cocks of the player is greater than 0:
				say "Finally giving in to the dark primal urges within, you swiftly return to the shop in the mall, Nermine welcoming you back eagerly as you pin her to the counter, and fuck her again and again. She eagerly submits to your needs, your strong jackal like body and male musk making you irresistible to the strange shopkeeper, as with every strong thrust of your canine cock you make her even more subservient to your will. Eventually sated, you enjoy looking around your new shop with amusement, while your new little jackal fucktoy licks your paws eagerly. An evil grin stretches across your jackal muzzle as you ponder all the amusement this store full of unusual treasures could bring you.  You and Nermine quickly pack up her shop as the military close in, and she shows you how to change the location of the store, soon you are setting up in a lovely and unsuspecting college town.  The foolish students are soon flocking to your store to buy all sorts of strange and unusual transformative trinkets, and you are more then happy to have your pet shopkeep sell them to them.  The amusing sights of the people who fail to use the items carefully make you and Nermine laugh heartily, as you both begin to enjoy the game of seeing how badly your customers can misuse the items, enjoying their new forms immensely. Some few manage to 'win' by being careful and using their purchases responsibly, and those few you often give even nicer toys to as a reward, some of them you even reward personally by making them into your own personal pets.  When the military comes to investigate the strange outbreak of infection in the town, they find your shop already gone, moved on to a new town already, and looking forward to a long and enjoyable existence with your lovely pet jackalwoman...";
			otherwise:
				say "Finally giving in to your darker desires, you quickly head back to the strange shop and the shopkeeper you know so well. Nermine greets you eagerly as you return, and is soon on her knees before you like a good little submissive as you pet her head. You enjoy reveling in her submission for several moments, her body helpless to resist the strong urges you bring out in her, you are about to take her to the back room to enjoy your new pet fully, when the door jingles as someone walks in. You look around to see who it is, only to gasp as an amazingly arousing scent washes over you, making you feel both incredibly horny and submissive at the same time. 'Ah here you both are,' The jackal headed man from before says as he looks at the two of you with a grin on his muzzle. You find yourself moaning as you drop to your knees next to Nermine, realizing that that wonderful dominant scent is coming from the Jackalman, making your pussy clench with a deep need that you know only he can fulfill.";
				say "Seeing your reaction, the jackal headed man grins as he pets you with one of his clawed hands, sending pleasure shooting through your body at his touch. 'Surely you didn't think I used all of that mixture on your little ankh?' He says in a teasing voice, 'Not when I have been waiting so very long to see this one on her knees before me like this?' The jackal man says as he gestures at Nermine. 'And now I get to have you too as a bonus.' He says in amusement, as he takes your paw and Nermine's and leads you both into the back room. You find yourself almost wanting to protest as he pushes you both down onto the mattress, but his strong powerful scent, and dominant attitude soon has your body responding eagerly to his touches, as it goes into heat for this strong male jackal.  He breeds both you and Nermine deep into the night, and for several days following, the two of you writhing underneath him in turn, as he fills you both up with his divinely amazing seed.";
				say "You are unable to resist his scent and touches as he masters your mind and tames your body to his touch, his soft suggestions of how a proper little jackal woman should be settling into your mind like commands, as he ensures your obedience now and forever. Eventually he leaves the two of you lying there together in the back room of the shop, two well fucked Jackalwomen panting like animals.  When the two of you eventually come back to your senses, you realize that you look just like Nermine does, and this fact seems to please you on some deep level, since your powerful mate likes you like this.  Soon you and Nermine reopen the shop, the other jackalwoman being slightly submissive towards you still, even though you both know that you are really both pets for the more powerful jackalman.  The shop open, you both take turns manning the counter, and selling all sorts of strange and unusual items to the unsuspecting populace outside the city, often amused at how they fail to read the instructions or take care when using dangerous transformative magic. Running the shop becomes more of a chore as you and Nermine both soon begin to show signs that your night with the wonderful Jackal man was productive, your bellies swelling large with his offspring. The feeling of his children growing in your belly makes you both smile eagerly as you wait for them to be born, looking forward both to the children themselves, but to his promises of the many more breedings to come...";
		otherwise:
			if cocks of the player is greater than 0:
				say "When the rescue comes, you are ready and waiting for it, and while your new jackal man form disturbs some of the military who have come to rescue you, you are easily able to convince them you aren't a threat.  Quickly released from military custody due to your persuasive ways and dominant manner, you soon begin looking around for your place in the outside world. Discarding most regular jobs as beneath you at this point, you begin picking up strange odd jobs, and hunting down rare items for your contacts.  While not all of the items you retrieve for people may necessarily have been retrieved legally, you don't really mind, in fact that just makes it all the more challenging.  Soon you are rather well off money wise, with a nice little collection of rare items of your own, and you stop taking jobs for just the money, demanding your clients service you in whatever manner you wish before you retrieve their items. Occasionally some of them try to evade your terms, especially the men, agreeing and then trying to talk their way out of it, these fools learn not to mess with you, as you demonstrate that even outside of the city, you still retain the ability to alter others forms.  These clients quickly become your favorite pets, once transformed into submissive little jackal women for your pleasure, also serving as a lesson to others about trying to cheat you. Strangely enough, sometimes even the clients you only enjoy for several nights become so addicted to your jackal body they ask to join your harem of pets, and you certainly don't refuse them.  You occasionally wonder how Nermine is doing in her shop that started it all, but for the most part are more then happy living your new life as a rich and powerful modern day lord...";
			otherwise:
				say "When the rescue comes, you remember all you have learned from survival in the city and your time working with mysterious items, and use that knowledge to secure a number of valuable items from the city and smuggle them out when you are rescued. Once outside, you retrieve the unique and generally impossible to find items, and quickly open up a small shop of your own in a large city, advertising items from within the city to an elect clientele.  Your business, while secret to most, is a booming success, selling the infectious samples of creatures from within the city to those who want to try being something more unusual. Though usually your items are purchased with the intent to turn someone else, usually a rival, into a little sexpet for the buyer, you don't generally care too much, although you always find it amusing when they forget to read the instructions and end up changing themselves instead. Your shop eventually gains a wider variety of items traded for or acquired from all over the world, many of them strange and unusual in their own ways.  While you never quite manage to get as impressive a collection as the jackal woman you first worked with, your shop soon becomes a close rival to her own, and you even begin to stock and carry items for the portion of the populace that can do 'special' tricks. Eventually trading with them for some simple tricks and enchantments on the shop itself, much like those on the shop you first encountered, and if your stock isn't as impressive yet, well you figure you have plenty of time to fix that, as you don't seem to be aging anymore either.  You are definitely looking forward to a long and prosperous life of trading in unusual and strange things, and you especially look forward to those few fools who try to cheat or steal from your shop... they make such wonderful sexy pets after all...";

[ Edit this to have the correct name as well]
jackalman ends here.
