Version 2 of Plush lion by Sarokcat begins here.
[ Version 2.1 - Plush Lion vore loss ]

[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Plush lion to Flexible Survivals Wandering Monsters table."
[Description text for this Extension.]

Section 1 - Monster Responses

plushleoloss is a number that varies.
plionvored is a number that varies.

when play begins:
	add { "Plush lion" } to infections of guy;
	add { "Plush lion" } to infections of furry;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say Plush lion attack:
	if scalevalue of player <= 3 and a random chance of 1 in 4 succeeds:
		if hp of player > 0:
			say "     Giving into the plush feline, you allow it to push you to the ground with a padded pounce";
		otherwise:
			say "     You are knocked to the ground by a padded pounce from the plush feline";
		say ".  With you on the ground, the stuffed lion runs its felt tongue across its muzzle in a slow lick.  Realizing too late that the hunger in its glassy eyes isn't a lustful one, it lunges forward and engulfs your head in its padded maw.  Feeling like an unlucky lion tamer, your head is stuck in the big cat's mouth while his soft tongue slides softly across your face.  Even as you try unsuccessfully to pull free, you are drawn steadily deeper into the plush predator.";
		say "     As the soft lining of its throat rubs across your face and your body as you're pulled in, it feels strangely pleasant, even erotic.  That and the hot, steamy air makes you confused and lightheaded, dulling your urge to struggle against this potentially dire fate.  And when your crotch reaches the lion's muzzle and your hips are pulled in, your [if cocks of player > 0 and cunts of player > 0]cock[smn] and cunt[sfn] are[otherwise if cocks of player > 1]cocks are[otherwise if cocks of player is 1]cock is[otherwise if cunts of player > 1]cunts are[otherwise if cunts of player is 1]cunt is[otherwise]bare groin[end if] subject to the lion's velvety tongue, further adding to your pleasure and distracting you from escape.";
		say "     After its naughty tonguework [if cocks of player > 0 or cunts of player > 0]gets you to cum, satisfying[otherwise]has satisfied[end if] its feline urge to play with its meal, you are swallows down in a few more large gulps.  You end up in the warm, padded softness of its belly, lightheaded and sleepy from lack of oxygen.  It squeezes down around you, wrapping you up snug and warm inside it as the lion lays down on its side, both of you drifting off into slumber.";
		plushlionvored;
	otherwise if cunts of player is greater than 0:
		now plushleoloss is 0;
		say "Defeated you stumble backwards, helpless before the onslaught of the mighty plush lion, before you can recover the beast has moved behind you, and you feel his paw on your back pressing you down. Unable to fight any longer, you allow yourself to be forced down onto all fours, as the lion lets out a rumbling purr as he prepares to claim you as his carnival prize. You gasp as the soft fabric fur of the beasts underbelly rubs against your back as he crawls on top of you, his soft fuzzy mane rubbing up against you erotically as he positions himself.  You can feel his rough tongue along your neck as he licks you several times, before gripping your neck in his mouth, his soft teeth holding you in place without breaking the skin, yet still enforcing his strong leonine dominance. You find yourself moaning subserviently like a good little lioness, as his thick cock slips up between your legs, its soft warm barbs rubbing up against the inside of your thighs, before it finds its way to your warm opening.[line break]";
		say "He buries himself within you with a rough growl, the wonderful feeling of his warm living lion cock, causing you to moan wantonly as he thrusts into you roughly.  Mating you in short swift bursts of activity like he would any member of his pride, shooting his hot seed into your body again and again with only short pauses to readjust his position. You feel your mind fading with pleasure as you orgasm underneath him again and again, as he treats you like a lioness, making you moan in desire, in your mind you quickly find yourself reacting to him just like a lioness would, becoming a lioness, more importantly becoming HIS lioness. His to use, his to breed, his pet plush lioness to keep and own and fill full of his wonderful lion seed.  You roar along with him as your mind submits itself to his shaping, becoming little more then a pet to your pride leader as he uses your all to willing body again and again without stopping.  Eventually the mating ends far too soon for your lust addled mind, and he pulls himself out of your well used cunt, his barbs scraping pleasantly as they finally exit your body, the strong plush lion then pads away on his fluffy paws, leaving you lying there with his fertile seed still leaking out of your body, and a strong desire to follow him and beg him to take you again...[impregchance][impregchance]";
		plushleoify;
	otherwise if a random number between 1 and 3 < plushleoloss:
		decrease plushleoloss by 1;
		if hp of player > 0:
			say "     Unwilling to continue to struggle against the powerful plush lion, you submit to him.  He growls softly and knocks you down, pouncing upon you before you can recover";
		otherwise:
			say "     Defeated by the surprisingly powerful plush lion, you stumble backwards and are pounced upon by the large beast before you can recover";
		say ".  You feel his paw on your back pressing you down as the lion lets out a rumbling purr as he prepares to claim you as his carnival prize.  The beast growls in disappointment when he finds your continued lack of the appropriate entrance for him.  Clearly frustrated by this and in need of some kind of release, he pushes you down and grinds his hard cock against your [bodytype of player] body.  His precum dribbles onto you as he rumbles and grunts.  His claws grip your shoulders firmly, whether from sexual frustration or as a threat to keep you in place is unclear.  His pulsing rod rubs against your thigh, your hip, your side as he shifts position from time to time, leaving streaks of precum that tingle against your skin.";
		say "     Eventually, the toy lion finds his release and roars loudly as he cums hard, splattering his semen across your body.  You moan loudly in pleasure, feeling strangely pleased that you've been able to provide at least a little relief for the sexy creature atop you.  He gives a soft purr, licks your cheek and leaps off of you, padding off with his spent shaft hanging between his legs and dripping the last few drops of his cum on the ground.  You lay there on the ground covered in his semen as you watch him go.  For some reason, you can't help feeling that you want to be a worthy receptacle for its seed.  You wish you had the proper equipment to convince the beast to mount you properly and use you like the submissive toy it obviously wants you to be.";
	otherwise:
		increase plushleoloss by 1;
		say "Defeated you stumble backwards, helpless before the onslaught of the mighty plush lion, before you can recover the beast has moved behind you, and you feel his paw on your back pressing you down. Unable to fight any longer, you allow yourself to be forced down onto all fours, as the lion lets out a rumbling purr as he prepares to claim you as his carnival prize. The beast pauses as his cock traces up your body, then growls loudly when he finds you lack the appropriate entrance for him. You shudder underneath the beast as he roughly hauls himself off you, and then roars in your face, expressing his strong displeasure at another pure male in his territory.  You try to crawl away, only to find the beast in front of you, batting you around with his large paws as he scratches and claws at you, making you cringe and whimper.  The plush male lion slams you around several times, until it is sure that you have learned your place as subservient to its might, before leaving you lying there in the street, stalking away with its erection still swinging between its legs, obviously having decided you aren[apostrophe]t a worthy receptacle for its seed.  For some reason this makes you wish you had the proper equipment to convince the beast otherwise, so you could chase after it and beg the soft fabric covered beast to use you like the submissive toy it obviously wants you to be...";
		now hp of player is ( hp of player * 3 ) / 4;
		plushleoify;

to plushlionvored:
	choose row monster from the table of random critters;
	now fightoutcome is 23;
	increase plionvored by 1;
	decrease humanity of player by 6;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 2;
	attempttowait;
	if humanity of player >= 10 or inasituation is true:
		say "     When you start to come to, you find yourself buried in a thick wad of plushy stuffing.  Pushing yourself free of it, you find that you've beed deposited [one of]behind the counter of one of the carnival stands[or]in an out of the way corner[or]against a waste bin[or]behind one of the prize booths[at random].  You feel a little weak and drained after your ordeal and it takes some effort to stand.  As you head back towards the relative safety of the entrance, you try to brush the clinging fiberfill from yourself, not noticing as some of the bits of fluff sink into you.";
		infect;	[Added infection from being vored]
		increase hunger of player by 4;
		increase thirst of player by 2;
	otherwise:
		say "     As you slumber inside that soft belly, you dream of teddy bears and warm hugs.  These dreams go on and on, filling your mind with their fuzzy thoughts of plush happiness until that is all that remains.  You come to shortly after being let out of the plush bear, rising up and giving her a soft, padded hug with your teddy bear body.  You, like her, are a living teddy bear creature, both in body and in mind.  After some playful, kinky cuddling together, you skip down the midway, padded paw in padded paw.";
		now plionvored is -100;
		now xp of player is 0;				[prevents accidental level up]
		if the player is not lonely, now xp of companion of player is 0;
		now non-infectious entry is true;			[prevents regular plush lion infection from occurring]
		now tailname of player is "Plush Lion";
		now facename of player is "Plush Lion";
		now skinname of player is "Plush Lion";
		now bodyname of player is "Plush Lion";
		now cockname of player is "Plush Lion";
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		attributeinfect;
		if libido of player < libido entry, now libido of player is libido entry;
		now humanity of player is 0;
		now battleground is "void";
		now combat abort is 1;
		attempttowait;
		end the game saying "Having been consumed by the plush lion, you've been turned into another of the stuffed felines roaming the fairgrounds.";
		stop the action;


To say Plush lion loss:
	say "The strange plush lion is knocked back on its furry haunches by your attacks, before turning and sauntering off down the midway, pretending with feline arrogance that it was intending to leave anyways.  It hurries away before you can catch up though, its arrogant pretense somewhat spoiled by the small trail of stuffing it leaves behind it as it slips away.'";
		
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Plush lion"; [Name of your new Monster]
	now attack entry is "[one of]The plush lion crouches down on his haunches, before springing forward to attack.[or]The strange plush creature takes a moment out of combat to rub its furry mane on you, causing you to feel strangely submissive.[or]Its large plush paws suddenly swipe at you, knocking you down.[or]All of a sudden the plush lion beast pounces on you, knocking you down and rubbing its muzzle all over you.[or]Lifting its paw up, the beast pretends to be hurt for a second, causing you to drop your guard long enough for it to get in a couple good shots.[or] Charging forward with its oversized head lowered, the plush lion creature barrels right into you![or] opening its fuzzy mouth wide, the lion creature lets out a cute little roaring noise, while not terribly intimidating, for some reason it makes your body shiver in a primal response.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Plush lion loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Plush lion attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A life size plush lion toy approaches down the midway, its furry body seeming both cute and threatening.  It[apostrophe]s large leonine brown mane sticks out dramatically from around its yellow furred neck, making it seem larger and more impressive, and definitely leaving no doubt as to the gender of the stuffed toy.  Not that you could have much doubt after you caught a glimpse of its stiff cock, hanging out of its furry sheath beneath its belly, leaving no doubt as to the creatures intentions as it focuses its stuffed leonine eyes on you.";[ Description of the creature when you encounter it.]
	now face entry is "soft lioness muzzle with overlarge lion eyes and cute fluffy ears set above your changed";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "sleek and soft.  You have a the body of a soft plush lioness, its sleek enticing lines advertising your readiness to one and all, your arms and legs are more pawlike and leonine than human at this point, and walking on two legs can only be accomplished with some effort.  For some reason that seems ok though as being on all fours seems to excite you and make you feel even more like a submissive lioness"; [Your Body is (your text)"] 
	now skin entry is "[one of] golden fabric[or]softly furred[or]fake lion furred[or]soft fabric[or]plush lioness[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long plush lioness tail swaying behind you, with a soft tuft of fake fur tufted at the end, your tail swings wide every now and then, showing its submissive tendencies by exposing your attributes for anyone to use.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]thick feline[or]leonine[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "you feel it push forward into a soft lioness muzzle, you can feel your thoughts grow fuzzy as your head and face fill up with soft fluff, most of your remaining thoughts focused on seeing the strong male lion toy again"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it shifts and changes, your insides churning as they become mostly unnecessary as your body fills up with soft stuffing.  Your legs drawing up under your body even as your hands seem to flatten out into large plush paws, making you realize you would feel almost more comfortable on four feet now then on two feet, just like a proper lioness should be.."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your flesh tingles as it is covered in soft golden fabric fur. "; [Your skin feels funny as (your text)" ]
	now ass change entry is "a long lioness tail slowly extends from your rear, the strange pleasant sensations of the new limb causing you to lash it back and forth as it grows in, moaning a bit at the feel of a soft tuft of fur growing at the end signals your new fabric attachment is complete"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it shifts and seems draw up closer to your belly as a sheath attaches itself to your body, drawing your new barbed cock up into it"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 20;
	now dex entry is 17;
	now sta entry is 15;					
	now per entry is 14;
	now int entry is 12;
	now cha entry is 20;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 70;			[ How many HP has the monster got? ]
	now lev entry is 8;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 12;			[Amount of Damage monster Does when attacking.]
	now area entry is "Midway";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 14;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 7;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]stuffed[or]padded[or]plush[at random]";
	now type entry is "[one of]feline[or]leonine[or]toy-like[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Plush lion":
		if humanity of player is less than 10:
			if hp of Sven > 7 and hp of Sven < 50:
				say "     As your mind starts to be filled with cottony fluff like the rest of you, you give in to what you know is best and accept your wonderfully soft new body and identity.  Heading back to the bunker, you convince your loving pet to keep you as a giant plush toy when the military comes in to rescue you.  Learning somehow to pull your oversized genitals into your fluffy body to hide them, you pass a cursory check.  The soldiers, feeling pity for the shy boytoy kitty clutching his giant plush lion, allow him to bring you along[if hp of Sven is 10].  Candy helps Sven, being a much more confident speaker, by weaving a tale about the poor, sad kitty, trapped so far from home during this terrible outbreak[end if].  You find it easy to remain still and motionless as long as needed in your new, plush body, and aside from a brief spray down to clean you of nanites that is a little ticklish, you make it through okay.  Sven has a hard time at the military compound, finding the hot, muggy place a terrible drain on his cold-climate body.  But everyone is kind to the poor lost soul image that the shy kitty portrays with his oversized plush toy[if hp of Sven is 10], compounded by Candy's manipulative storytelling, [end if]and he's given extra rations of water by many of the others in the camp.  You whisper encouragingly to your beloved pet during the night, bolstering his endurance until finally he's released.";
				say "     Upon his release, [if hp of Sven is 10]Sven and Candy travel[otherwise]Sven travels[end if] back to Europe.  His family, rather well-to-do and unpleased by what has become of a son they've never shown much attention to in the past, set Sven up with a sizeable trust fund so that he may do what he pleases as long as it's somewhere else.  Sven takes to travelling across Northern Europe, enjoying the majestic landscape and cold climate[if hp of Sven is 10].  Candy joins him on this life of freedom and lack of responsibilities[end if].  Under your guidance[if hp of Sven is 10] and Candy's encouragement[end if], he enjoys sharing his bed with as many sexy people, both men and women, that he can entice into his bed with his alluring, sexy body.  You get to enjoy watching all of these shows, silently enjoying your pet's lustful escapades and then using his body once they have left.  Sometimes you even join them on the bed, slaking your lusts on the surprised lover and turning them into another plush lion or lioness, who will then be left in the hotel room or somewhere else for some unsuspecting soul to find.  You imagine so many scenes of people these plush lions and lionesses will enjoy.  Such as the maid service being mounted by a plush lion they found left in the room.  Or a guest waking in the middle of the night find themselves making love to the plush kitty they thought merely another decoration in the chalet.  Or someone receiving a giant plush sent from their lover only to discover that it is their lover, now transformed into a lusty feline sextoy.  The very best of them are made into plush lionesses and kept at Sven's personal chalet for you to mate with between your travels, breeding more soft, plushtoy life in their wombs.";
				if hp of Sven is 10:
					say "     Candy is not idle during these times, chasing after the lovely skiers on the slopes and dignified gentry in the towns, skillfully enticing them into some fun with the pink coon.  He spends many a night cuddling up to you, describing his exploits of the day, telling you of every quick blowjob or fuck in a shadowy corner he's had in graphic detail and fully rated against the others.  You get to enjoy particularly good shows when he manages to bring a few guys back to the room to play with the sexy, colourful raccoon and snowmeow.  The three of you live a wonderfully decadent lifestyle of sex and privilege, spreading your three infections across Europe as countless travellers and hotel workers are infected and turned into more sexy lovers.";
			otherwise if cunts of player is greater than 0:
				say "     Finally your mind snaps, and you find yourself giving in to what you know is just so right.  You quickly run off into the night, and before you know it you have found your way back to the stuffed lion who changed your life with his magnificent dominance.  You are worried at first, finding him surrounded by several other stuffed lionesses, but your worries are soon put to rest as he welcomes you into his plush pride, taking you in front of the others and filling your belly with his offspring immediately.  You are happy to be accepted, and soon realize that any plush beast this magnificent obviously needs a large pride to serve his every need and slake his powerful lusts, and as one of his lionesses it is obviously your job to help him acquire it.  So once he has led you safety outside the city, you and the other lionesses go about ensuring that his pride grows ever larger, ambushing unsuspecting people and dragging them off to your pride leader for induction into the plush pride.  During your time in the pride you soon become one of the wonderful lions favorites, and you bear him many plush little children, the females joining the pride eventually. While the males are sent out while they are still small, cute, and fluffy to grow up with human children as their toy companions, and to eventually start prides of their own with their former human companions turned into submissive plush lionesses.";
			otherwise:
				say "     Finally your mind snaps, and you roam the streets of the city, hunting for unwary targets to convert into lionesses for your pride, eventually the military come and drive you out of the city, and you end up in the wilderness, where your plush body doesn[apostrophe]t fare so well amongst all the sharp branches and thorns, and you are soon lying there wounded missing most of your stuffing when a traveler comes across you.  Pretending to be just an abandoned toy, she takes pity on you and takes you back to her camper to fix you up, imagine her surprise when afterwards you proceed to thank her most thoroughly by making her your new lioness.  After she gets over the shock, she embraces her new life enthusiastically, and with her help you manage to acquire a small pride of eager lionesses to serve your every need, and keep you stitched up when needed.";
		otherwise:
			say "     Rescued with your mind intact, your strange changed body makes many people nervous, eventually though you find a job that suits your new form and your new strong maternal instincts the lion toy instilled into you.  You end up making a wonderful kindergarten teacher, playing with and teaching the little children, although you sometimes find yourself thinking of them as cubs instead.  You love it when they hug your plush stuffing filled form, and they seem to love doing so.  The children working hard to please you, making it a rewarding life[if hp of Sven > 7 and hp of Sven < 50].  One day, you do hear about a strange pride of plush lion animals out to the west and briefly wonder about going to look for yourself, but you have your sexy snowmeow pet at home to keep you company[otherwise], although one day you hear about a strange pride of plush lion animals out to the west, and wonder about going to look for yourself...[end if]";


to plushleoify:
	infect "Plush lion";



[ Edit this to have the correct Name as wall]
Plush lion ends here.