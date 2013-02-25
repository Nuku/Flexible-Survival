Version 2 of Zebra by Sarokcat begins here. 
[ Version 2 - Catch him after the fight, victory sex, drop item, some text fixes]

"Adds a Zebra to Flexible Survivals Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

when play begins:
	add { "Zebra" } to infections of guy;
	add { "Zebra" } to infections of furry;

ZebraLossCount is a number that varies. ZebraLossCount is usually 0:

to say Zebra attack:
	if cunts of player is greater than 0:
		say "'Ah good! Another female for my herd!' The zebra stallion says with a self satisfied grin as he looks down on your defeated form, 'Of course it looks like you need some [']persuasion['] still to become a proper little herd member!' The beast says with a lewd grin on his muzzle as he strokes his fully erect zebra cock, leaving no doubt in your mind as to what kind of [']persuasion['] he intends. You can[apostrophe]t resist in the least as he pins you down to the ground, spreading your legs out to the side and exposing your gaping pussy to him, as he whickers in amusement.  Your head fogs with lust, as his strong dominant scent and actions seem to wake an almost instinctive need to submit to his strong masculine needs. 'Oh you will make a fine mare.' The zebra grunts lustfully, as he rubs the blunt tip of his cock along the outside of your increasingly needy lips, 'Now we just need to make sure you are MY mare!' The horny zebra says, as he draws his hips back slightly so his cocktip presses right up against your entrance, before thrusting himself into you![line break]";
		say "You gasp as he buries his thick cock into you as far as it will go with that first powerful thrust, his hands pinning you down on the rough ground as you writhe underneath him helplessly. Your eyes glaze over in pleasure at the feel of his thick rod spearing into you as far as it can, splitting you open around him as your sex grips the stallions hard cock in desperate need. The big zebra stallion on top of you grunts in pleasure as he thrusts himself into you roughly, making your body shake with every thrust as he ruts you hard, intent on his purpose of claiming your body as his own. You moan as the experienced stallion nips at you with his mouth, and controls you with his hands, even as he pounds into you, his every move meant to reinforce his dominant position, and reduce you to nothing more then a submissive little herd member. [line break]";
		say "You struggle to hang on to any scrap of yourself, as he pounds his hard rod into you, each thrust making it harder and harder to remember why you would ever want to be independent or human.  After what seems like an eternity of rough pleasure, his body tenses as he shoots his thick equine seed into you, the hot sticky semen flooding your womb with his stallion sperm, and overflowing out down his cock as he pumps more and more into you, laying his mark deep into your body.  Finally you can only lie there helplessly as he pulls himself out, his seed leaking out of your well used body as he hauls himself up and grins down at you.  'Lets see if that doesn't make a proper zebra mare out of you now,' He says in a smug tone, 'Now I have to go check on the rest of the herd, and maybe find a few more new mares while I am at it,' He says as he turns to leave, 'You[apostrophe]ll be sure to come back to join us soon now won[apostrophe]t you?' The zebra beast asks with a short laugh, as if the matter was never in doubt, as he trots away leaving you lying there with his seed still leaking out of you. [impregchance]";
	otherwise:
		say "'Another male in my territory, well we will see about that!' The large stallion says, as he places one of his hooves on your defeated body, pinning you down to the ground. 'Let's see you stay male after this!' The zebra beast says with a sneer, as he begins to pump his hands along his thick black cock, starting to moan in pleasure as a few drops of pre form, while you look on in horror. The beast continues to jack himself off as he stands over your body, while you try weakly to escape, your efforts are futile, as soon the beast lets out a loud whinnying noise as his equine cock erupts, spraying its thick seed all over your helpless body in powerful spurts.  Your body tingles as he covers you in his seed, once his cock finally empties, the panting zebra backs off and stares down at you with a self satisfied look on his face.  'Now why don[apostrophe]t you lie there and become a good little mare,' the zebra says with an amused snort, 'And then maybe I'll come find you and make you a real member of the herd,' The beast says, as he turns and [if ndmhigh is 1]heads back through the door from which he came[otherwise]trots down the zoo pathways[end if], leaving you to your changes.";

to say Zebra loss:
	say "     'Fine' The zebra stallion says in a pained voice, as he stumbles backwards in defeat. 'You win the battle for now - But I'll be back stronger then ever to make you one of the herd before you know it!' he continues, eyes moving left and right as he looks for a way of escape."; 
	say "     [line break]";	
	if ZebraLossCount is 0:
		say "     With a sudden burst of speed, the zebra dashes off as fast as his hoofed legs can carry him. Caught by surprise, you don't have any realistic chance of catching him, so you just stay where you are and watch. He sure looks impressive, with the high stature and well-muscled body. Maybe next time, you can catch him before he runs off...";
		increase ZebraLossCount by 1;
	otherwise if ZebraLossCount is 1:
		say "     This time, you're better prepared for stopping the stallion before he runs off. As his muscles tense and he starts in one direction, you jump in his way... only to realize too late that he did a feint and is already dashing off in the opposite direction. Damn - there he goes again, running faster than you could catch up with.";
		increase ZebraLossCount by 1;
	otherwise if ZebraLossCount > 1:
		say "     'Not this time, you striped windbag.' you think to yourself and as he turns to run off, bend down to pick up a stick lying on the ground (good that no one cleans up here anymore). Pulling your arm back far, you let it fly after the zebra stallion and...";
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Dexterity Check)";
		increase diceroll by bonus;
		if diceroll is greater than 18:
			say "     [line break]";
			say "     [if a random chance of 1 in 2 succeeds]...hit him in the head.[otherwise]...it hits his legs and causes him to stumble.[end if] The zebra stallion goes down and you're upon him before he can get back up, grabbing his mane to keep him on his knees.";
			if cocks of player > 0:
				say "     Now that you have the upper hand in this, what do you want to with the zebra? Get him to blow you [link](1)[as]1[end link], fuck his striped ass [link](2)[as]2[end link] or just give him a beating [link](3)[as]3[end link]?";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
						break;
					otherwise:
						say "Invalid choice.  Type [link]1[end link] to get a blowjob, [link]2[end link] to fuck him or [link]3[end link] to rough him up.";
				if calcnumber is 1:								[blowjob]
					say "     Pulling out your already hard [cock of player] shaft, you rub it against the zebra stallion's lips. He's not very happy about that and tries to turn his head away, but you hold him tight with a strong grip of his mane. 'Open up you striped wimp - you picked the fight with me, now accept your punishment.' you tell him, then pull a bit harder on his hair. As he opens his mouth to gasp, you thrust forward, plunging your manhood between his lips. 'There - now suck! I'll beat you if you try to bite!'";
					say "     With a huff, the stallion accepts his fate and hesitantly starts to blow your cock, slowly sucking on it and bobbing a tiny bit back and forth on its length. Obviously a cocksucking novice - oh well, you give him some hints about relaxing his throat and let him suckle on you some more - then decide his grace period is over and start face-fucking him. Holding his head with both hands, you thrust into the warm and wet cavern of his mouth, moaning at the feeling of his lips sliding over your shaft.";
					attempttowait;
					say "     Before much longer, you feel a familiar tingling rise up inside your balls and pull back a bit until only the tip of your cock is inside the zebra's mouth. It's quite satisfying to see the proud stallion's eyes go wide as the first blast of cum shoots out onto his tongue, and you hold him tight as he tries to pull away. 'Keep it all in your mouth - don't you dare spit it out!' you order between moans as spurt after spurt of your seed fill the zebra's mouth.";
					say "     After you're done cumming, you grind down at the defeated stallion holding your cum behind his closed lips. 'I want you to swish it around a bit - taste it, then show me your tongue!' you tell him, pulling on his mane a bit till he complies and finally sticks his tongue out, covered with your white cum. 'Good, now swallow!' With an unhappy expression, he swallows down everything and shows you his cum-free tongue as you ask him to. 'Nice job stripey - maybe I should keep you as a boy mare. I'm looking forward to next time...' you tell him, then leave him kneeling at that spot and walk away.";
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Zebra":
							now monster is y;
							break;
					now sex entry is "Male";
					infect "Zebra";
					now sex entry is "Female";
				otherwise if calcnumber is 2:			[fuck him]
					say "     'On all fours - now!' you order and pull on his mane when he hesitates to comply. Still rather reluctantly, the large stallion takes the position, watching you with dismay as you pull out your hard [cock of player] shaft, then stroll behind him. Giving the firm globes of his ass a slap, you remark 'Nice rump, just perfect for a boy-mare. Now let's see your hole.' and then pull up his tail, revealing a tightly closed pucker. You see the muscles in his legs tense up as he prepares for another attempt at running away and give him another slap on the cheek, harder this time, and say 'I wouldn't try that if I were you - just accept it, we both know you're gonna get fucked today.'";
					say "     With a huff, the stallion finally accepts his fate and remains in position. Good. You bring your hand to his rear entrance and start stroking up and down his crack, then insert a finger up into his tight hole. Pushing the probing digit deeper, you find his prostrate and rub it, eliciting an unwilling moan from your partner. You continue fingering him a moment, adding another finger, then decide he's as ready as he is gonna get.";
					attempttowait;
					say "     Moving your hips forward, you rub your rock hard cock up and down his crack, then push against his hole until you pop in. Aah - nice and tight like a virgin, gripping your shaft with his anal muscles. Holding on to the powerful equine's hips, you thrust deep, plunging all the way into his body. With the incredible feeling of being inside his tight love tunnel and the arousing fact that you got the formerly dominant stallion moaning as he's being fucked, you don't think you'll last much longer.";
					say "     You pound his ass, accompanied by slapping noises as your hips meet his cheeks and soon feel a familiar feeling rise in your balls. 'Get ready for my load, stripey!' you shout as you cross the line with one last deep thrust, shooting long blasts of cum deep inside his ass. There's something especially satisfying about filling up this proud stallion who had originally planned to make you his mare. As you finish cumming inside him and pull out, you smile even more as you see his equine shaft dangling erect between his legs. 'See - you even liked getting fucked. Go on, jerk off your hardon you little bitch. I see a great future as a boy mare for you...' you tell him mockingly, then watch as he jerks off shame-faced and blows his load onto the floor. Grinning, you walk away after that.";
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Zebra":
							now monster is y;
							break;
					now sex entry is "Male";
					infect "Zebra";
					now sex entry is "Female";
				otherwise:												[beating]
					say "     You rough the stallion up a bit before allowing him to crawl away. He might learn not to mess with you out of the beating - maybe...";
			otherwise if cunts of player > 0:
				say "     Now that you have the upper hand in this, what do you want to with the zebra? Get him to lick you [link](1)[as]1[end link], or just give him a beating [link](2)[as]2[end link]?";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 2:
					say "Choice? (1-2)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2:
						break;
					otherwise:
						say "Invalid choice.  Type [link]1[end link] to get a licked or [link]2[end link] to rough him up.";
				if calcnumber is 1:								[blowjob]
					say "     Pulling off your clothes, you reveal your already moist and swollen pussy, then step up close to him, grinding your crotch against his face. 'Go on, lick me!' you tell him, and he starts to use his tongue your vagina. Nice long tongue, this zebra, and he knows how to use it. His oral stimulation drives you arousal to new heights quickly, and before much longer you orgasm, a gush of femcum running down over the zebra's face. Stepping back, you grin at the cum-splattered stallion.";
					say "     'Not bad, stripey - that's how you treat a woman.' you say, then look down to his erect equine shaft and continue 'Ooh, is your little cock hard now? Do you want to fuck me? Well, you can forget about that.' With that, you turn and walk away, though you look back once or twice to watch the zebra jerk off his almost painfully hard cock and shoot his seed onto the ground.";
					infect "Zebra";
				otherwise if calcnumber is 2:			[beating]
					say "     You rough the stallion up a bit before allowing him to crawl away. He might learn not to mess with you out of the beating - maybe...";
			otherwise:
				say "     Since you don't have genitals he could please you with, you rough the stallion up a bit before allowing him to crawl away. He might learn not to mess with you out of the beating - maybe...";
		otherwise:
			say "     ...Miss. Too bad there's no time for another try, but he's too far gone now. Maybe you should try to improve your aim for next time.";
		
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Zebra"; [Name of your new Monster]
	now attack entry is "[one of]He slams his large forehead right into your head causing you to see stars![or]The large beast pauses for a minute to stroke his thick zebra cock and grin at you lewdly, the sight and his strong dominant musk sapping your will to fight[or]he lashes out at you with his strong hoof-like hands[or]He charges forward wildly, slamming his body into yours![or] The zebra stallion lowers his shoulder and rams into you, throwing you to the ground painfully![at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Zebra loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Zebra attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[if ndmhigh is 1]After getting slammed in the back by a surprise blow, you can hear the loud, braying chuckle behind you[otherwise]Wandering down the zoo paths, you hear a strange thundering noise coming up on you quickly[end if], turning to face the noise you find a large anthro zebra is closing on you with an intent look in his eyes. His large thick cock partially erect as he plunges forward, obviously eager to be put to use. '[one of]You'll make a fine addition to the herd![or]You look like you want to be my mare![or]Soon you'll be mine![or]Now I have you![or]I'll make you acknowledge my dominance![or]Now to enlarge the herd![or]You will be no match for me![or]Submit now, resistance is futile![at random]' he calls out, before unleashing a sharp cry and attacking!";[ Description of the creature when you encounter it.]
	now face entry is "Long zebra-like muzzle on your otherwise mostly humanoid face, your ears have lengthened and swivel constantly above your head as they search for danger. Your eyes still stare with human emotion out of your partially-zebra face"; [Your have a (your text) face."] 
	now body entry is "thickly built, you stand easily on your strong digigrade legs, balancing easily on your thick hooves, your four fingered hands bear a strong resemblance to equine hooves, and you can't seem to manipulate objects quite as well as you could before";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]black and white striped[or]coarse furred[or]zebra striped[or]zebra fur[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a whip-like zebra tail hanging off your tight powerful ass, long coarse black hairs extending from part of the sides of the tail, and from the tip, extending its length almost to the ground as it swishes behind you.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]equine[or]Zebra[or]thick black[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "you feel it stretch forward into a proper zebra-like muzzle, your teeth flattening and your nose expanding to take in the new scents around you. With a painful stretching feeling, your ears are tugged upwards to rest on top of your head, and black hair sprouts up to form a mohawk-like zebra mane. Soon the only difference between your face and that of a normal zebra is a slightly humanlike cast to your features, plus your strangely human eyes staring out at the world through an animal's face"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "its chest thickens and stretches into a more zebra-like barrel. Legs thickening and shifting into a digigrade stance, your feet round out into rough hooves underneath you. Your arms thicken with new muscle while your fingers seem to flow and merge, leaving you with only 3 fingers and a thumb on each hand. The tips of your reformed digits are covered in thick black nails, giving your hands a strong hoof-like appearance"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft black and white striped fur slowly covers your body, your skin twitching and shuddering as it settles into place"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it firms up, and you feel a sharp stretching sensation as a thin whip-like zebra tail pushes its way out from above your ass. With a sharp short shock of pain, strands of thick zebra hair explode out of the tip of the appendage and form a tuft of fur"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it darkens to a deep black colour and its tip blunts into an equine tip. A zebra's sheath forms at its base and it pulls up into it, ready to emerge when you get aroused"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 19;
	now dex entry is 19;
	now sta entry is 16;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";						[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 75;										[ How many HP has the monster got? ]
	now lev entry is 8;										[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 10;									[Amount of Damage monster Does when attacking.]
	now area entry is "Zoo";							[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;									[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 18;					[ Length infection will make cock grow to if cocks]
	now cock width entry is 8;						[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;								[ Number of Breasts infection will give you. ]
	now breast size entry is 6;						[Size of breasts infection will try to attain ]
	now male breast size entry is 0;			[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;									[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 9;						[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;						[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;								[ Amount player Libido will go up if defeated ]
	now loot entry is "zebra fur";				[ Loot monster drops, ]
	now lootchance entry is 30;						[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;									[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]thick[or]barrel-chested[at random]";
	now type entry is "[one of]equine[or]zebrine[at random]";
	now magic entry is false;							[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;					[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;				[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";			[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Zebra":
		if humanity of player is less than 10:
			if cunts of player is greater than 0:
				say "Surrendering to your new instincts, the instincts instilled in you by the strong and powerful zebra stallion, you find yourself hurrying back to the zoo, unable to stand being separated from the herd any longer. Soon you are found by the strong and dominant zebra stallion you fought earlier, though the burning between your legs at the sight of his strong handsome form ensures that fighting the stallion is definitely the last thing on your mind.  You find yourself trembling as the zebra stallion comes over and brushes himself against you, the feel of his hard strong body next to yours making you feel weak and helpless, like you need this strong powerful stallion to hold you, to own you, to make you part of his herd and protect you from ever being alone again.[line break]";
				say "Soon you find yourself completely overcome with these new needs, and you find yourself begging him to take you, to make you his, to fill your belly with his strong zebra foals and make his claim to your body plain for all to see. The stallion chuckles as he teases you with his hoof-like hands, enjoying the way he can make you beg and squirm for him, soon though he accepts your surrender and fills you with his thick black cock, causing your eyes to roll back in pleasure as you let out soft whinnying noises with each thrust of his large equine member. Your muscles clench him inside you tightly, as he ruts you with abandon, your tightness and eagerness seeming to please your new master, the stallion who will soon sire his foals on you!  Realizing at last your true place, the place of a slutty little zebra mare in this strong stallions herd, you abandon any last vestiges of your old life, as your powerful orgasm grips you, and his thick zebra cock shoots his powerful seed deep within you. The hot thick seed floods through your womb as you pant helplessly in his strong arms, you can feel it settling into your depths, sealing your fate as nothing more then a slutty little mare to your stallion, just another striped member of his herd for him to use and breed whenever he wants."; 
			otherwise:
				say "Surrendering to the inevitable, you give in to the increasingly strong urges within you, the urges to find mates, dominate them, and force them to bear your many offspring.  You prowl the streets of the city, hunting and searching for those yet to be transformed, so that you can add them to your herd.  Unfortunately you find you held off the infection so long that there are few targets left in the city human enough for your lustful desires to change, and the competition to find said last few remaining holdouts is fierce. By the time the military sweeps into the city, you have barely a handful of mares to your name, a paltry herd and nowhere near as much as some of the more powerful stallions who started earlier.  Unlike those larger herds however, your smaller size allows you to take shelter from the fighting easier, and eventually allows you to slip out of the city with most of your herd intact.  Fearing further military contact, you shy away from most occupied areas with your herd, but your need for a larger herd still drives you to induct the occasional camper, or people from the nearby small towns who you think wont be missed.  Its a hard life, but already your expanding herd swells with the new life you have placed in their bellies, and eventually it might even grow to rival the herd of the stallion who changed you to begin with...";
		otherwise:
			say "Rescued finally by the military you find yourself standing out in life afterwards due to your strange new zebra-like form, your striped equine form setting you apart from most normal people. Eventually you manage to find yourself a job that pays well enough, though your promotion opportunities seem slim, it at least pays the bills.  You find yourself feeling terribly isolated and alone at times however, as a changed creature in a world surrounded by humans, these feelings usually leading you to one of the local bars to drink till you feel better. On one of these trips, however you run into another changed, a [one of]horse[or]lion[or]tiger[or]deer[or]gator[or]wolf[or]hyena[at random] morph of all things, and while not quite of the same species, you certainly do find plenty in common as solitary changed alone in a world full of humans. Eventually you end up back at your place, and a few nights later you end up over at theirs, almost before you know it you are spending all your free time together, and eventually just end up getting a lager place for the both of you.  You both find yourself often trying to make life better for the changed, or at least lower the level of discrimination.  The two of you eventually attract several other misfit changed in the area, those without any others of their species around for support, and soon you move into an even larger place, which is often full of many different species, working and living together in harmony(for the most part).  It may be a very strange collection of individuals, but it looks like you managed to find a herd of your own to belong to after all...";

Table of Game Objects(continued)
name	desc	weight	object
"zebra fur"	"A tuft of black zebra mane fur."	1	zebra fur

instead of sniffing zebra fur:
	say "Smells a bit of horse - or rather zebra.";

zebra fur is a grab object.
the usedesc of zebra fur is "[zebra fur use]";

to say zebra fur use:
	say "Playing a bit with the coarse strands of hair, you stroke them over your arm. A moment later, they suddenly desintegrate into a fine powder which just seems to melt into your skin...";
	
zebra fur is infectious. The strain of zebra fur is "Zebra".


Zebra ends here.