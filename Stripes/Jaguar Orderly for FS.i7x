Version 2 of Jaguar Orderly for FS by Stripes begins here.
[Version 2.2 - Special ending]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Jaguar Orderly creature to Flexible Survivals Wandering Monsters table with impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

when play begins:
	add { "Jaguar" } to infections of furry;
	add { "Jaguar" } to infections of guy;

to say losetojaguar:
	now fightstatus is 2;		[required for hospital fight]
	if cunts of player > 0:
		if a random chance of 2 in 5 succeeds:
			say "     The brutish, feline orderly growls and shoves you down, getting ready to continue wailing on you, but his muzzle twitches as a scent catches his notice.  Growling, he climbs atop you, pinning you down with one paw while the other removes any remaining clothes between him and his prize, that female pussy he's scented.  You can feel his large shaft as it rubs against your rear.  It is quite large, perhaps a rather thick 9 inches of feline meat.  His precum leaks onto your ass as he moves to get lined up, then thrusts into you.";
			say "     You release a very feline yowl as the strong male drives his big cock into you, making your arch your rear up further despite your own wishes.  Your mind grows more and more hazy as the feline mates you, pounding away at you like the wild jungle beast he resembles.  His hot breath blows across your neck as he licks and nips at it, as if resisting the urge to take the nape of your neck in a mating bite.";
			say "     The orderly rumbles with heavy purrrs as he fucks you, the sound filling your ears and soothing you, making you want to listen to give in to it and be his mate so you can listen to it forever.  You are filled with a joyful heat deep inside as he drives his cock deep inside you and unleashes his hot load, pumping his sperm into your womb.  With that warmth filling you, you are driven over the edge into your own orgasm.";
			say "[impregchance]";
			say "     His load spent, the big male withdraws his cock slowly from you, licks your cheek a few times and gets back up.  He picks you up gently and lays you atop a nearby gurney to rest and recover from the powerful mating session.  You can't help but smile up at him as he drapes a blanket over you and nuzzles you with a soft purr before leaving you as you drift off for a nap after the romp.  The feel of the wild beastman's hot seed inside you fills you with a blissful warmth.";
		otherwise:
			say "     You are battered by the brutish, feline orderly and left in a heap to recover.";
			now hp of player is (( hp of player ) times 2 ) divided by 3;
	otherwise:
		if a random chance of 1 in 4 succeeds:
			say "     The brutish, feline orderly growls and shoves you down, getting ready to continue wailing on you, but as a swipe of one clawed paw uncovers your rear end, he grins a gets other ideas.  Growling, he climbs atop you, pinning you down with one paw while the other removes any remaining clothes between him and his prize, that tight back door of yours.  You can feel his large shaft as it rubs against your rear.  It is quite large, perhaps a rather thick 9 inches of feline meat.  His precum leaks onto your ass as he moves to get lined up, then thrusts into you.";
			say "     You release a very feline yowl as the strong male drives his big cock into you, making your arch your rear up further despite your own wishes.  Your mind grows more and more hazy as the feline mates you, pounding away at you like the wild jungle beast he resembles.  His hot breath blows across your neck as he licks and nips at it, as if resisting the urge to take the nape of your neck in a mating bite.";
			say "     The orderly rumbles with heavy purrrs as he fucks you, the sound filling your ears and soothing you, making you want to give in to it and be his big fucktoy so you can listen to it forever.  You are filled with a joyful heat deep inside as he drives his cock deep inside you and unleashes his hot load, pumping his sperm into your bowels.  With that warmth filling you, you are driven over the edge into your own orgasm, shooting your seed onto the tiled floor.";
			say "     His load spent, the big male withdraws his cock slowly from you, licks your cheek a few times and gets back up.  He picks you up gently and lays you atop a nearby gurney to rest and recover from the powerful mating session.  You can't help but smile up at him as he drapes a blanket over you and nuzzles you with a soft purr before leaving you as you drift off for a nap after the romp.  The feel of the wild beastman's hot seed inside you fills you with a blissful warmth.";
		otherwise:
			say "     You are battered by the brutish, feline orderly and left in a heap to recover.";
			now hp of player is (( hp of player ) times 2 ) divided by 3;


to say beatthejaguar:
	now fightstatus is 1;		[required for hospital fight]
	say "     You manage to knock the muscled jaguar out, at least for the moment.";


to say jaguardesc:
	choose row monster from the table of random critters;
	let debit be 0;
	now hp entry is 80;
	now lev entry is 8;
	now wdam entry is 10;
	now int entry is 10;
	if lev entry is less than level of player and hardmode is true:
		now debit is ( level of player ) - lev entry;
		increase lev entry by debit;
		increase hp entry by debit * 4;
		increase wdam entry by ( debit / 3 );
	if sabtoothed is 1:		[permanent upgrade]
		say "     Before you is a large, muscled figure in the light blue-green uniform of a hospital orderly.  But no man, this is a large jaguar creature.  But unlike the ones you've seen earlier at the hospital, this one is bigger and has large, sabretoothed fangs protruding from its upper jaw.  The devolved jaguarman growls and reaches to grab you with its powerful paws.";
		increase hp entry by 15;
		increase lev entry by 1;
		increase wdam entry by ( square root of lev entry ) - 1;		[minor increasing bonus]
		now int entry is 8;
	otherwise:
		say "     Before you is a large, muscled figure in the light blue-green uniform of a hospital orderly.  But no man, this is a large jaguar creature.  He looks you over angrily and reaches to grab you, obviously feeling you are somewhere you don't belong.";
	if triclamped is 1:		[permanent upgrade]
		say "     Getting a closer look at the creature as it charges towards you, you can see traces of toughened scales at the top of its neck and there are three small horns on its head, one at the end of its muzzle and two over its brow.  These poke just a little out from his fur.";
		increase hp entry by 15 + debit;
	now monsterhp is hp entry;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Jaguar"; [Name of your new Monster]
   now attack entry is "[one of]The jaguar orderly strikes you firmly across the head![or]The orderly grabs his strong arms around you and squeezes you until you're able to slip free![or]The angry jaguar bites down on your arm with his powerful jaws![or]The vicious creature slashes at you with its sharp claws, leaving bloody gashes![or]Charges at you, slamming his shoulder into your chest and knocking you back several steps![or]The feline orderly grabs your arm and twists it behind your back in an attempt to painfully restrain you![or]The beast growls and headbutts you so hard that you're dizzy for a moment![or]The powerful jungle cat punches you hard in the chest, making you wheeze for breath![or]He clubs your sides repeatedly with his fists![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthejaguar]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetojaguar]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[jaguardesc]"; [ Description of the creature when you encounter it.]
   now face entry is "feline head with dark spots covering your face"; [ Face description, format as the text "Your face is (your text)."]
   now body entry is "stocky, but strong.  You can feel the powerful muscles under your skin.  Your feline paws clench into hard fists when angry"; [ Body Description, format as the text "Your Body is (your text)."]
   now skin entry is "golden-yellow fur with black rosettes all over your"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "Behind you lashes a spotted, feline tail."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "deep, angry red"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "remolds itself into a blunt, feline muzzle with powerful jaws and sharp teeth"; [ face change text. format as "Your face feels funny as (your text)." ]
   now body change entry is "it tightens with strong muscles.  Your body becomes short and stocky, but powerful.  Your hands are now paw-like fists"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "it is covered by golden fur decorated with black rosettes"; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "you grow a long, slender tail.  As it lashes behind you angrily, fur coats it, a golden yellow and covered in black spots"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "turns a deep red in colour"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 16;
   now dex entry is 18;
   now sta entry is 16;                    
   now per entry is 12;
   now int entry is 10;
   now cha entry is 10;
   now sex entry is "nochange";     [ Invalid answer intentionally getting no change in gender]
   now hp entry is 80;            [ How many HP has the monster got? ]
   now lev entry is 8;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 10;            [Amount of Damage monster Does when attacking.]
   now area entry is "Hospital";    [ Location of monster, in this case the City Hospital]
   now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 8;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 4;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 2;            [ Number of Breasts infection will give you. ]
   now breast size entry is 3;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 8;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 3;        [ Width of female sex  infection will try and give you ]
   now libido entry is 33;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]


when play ends:
	if bodyname of player is "Jaguar":
		if humanity of player is less than 10:
			say "     As your human mind and experiences fade away, you give in to the instinctual urges of your body.  You are drawn to the city hospital, feeling the need to work alongside your feline brethren in the corrupted medical facility.  You are welcomed by the other jaguars as well as the other denizens.";
			if hospquest < 2:
				say "     You are given a task of patrolling the hospital and keeping any unwanted interlopers out by your superiors.  Somewhere deep inside, you can feel that there is someone in charge, but you have not met them.  At first, your duties are simple, as there are few who would approach the hospital and they are easily driven off or corrupted to join you.  But later things get more difficult as the military moves in.  You and the others manage to hold the hospital, but there are some losses.  Thankfully, many of the defeated soldiers are added to the jaguar ranks.";
				say "     During this conflict, you can tell that the doctor in charge successfully escaped.  And while this fills you with a sense of emptiness, the success in your duties keep you going.  Having little sense of time now, you don't know how long it is between his returns.  Each time he comes, a few more staff are taken, though you always remain behind to defend the hospital and help refill the ranks.";
			otherwise if hospquest < 13:
				if cocks of player > 0:
					say "     You report back in to Dr Mouse, though only vaguely remembering the experiences that lead you to know him.  He somehow recognizes you readily and happily welcomes you to his staff.  He has you join one of his exploratory teams, collecting samples and test subjects for the doctor's research.  On a trip to the zoo, your team is waylayed by an ambush of cheetah women.  While not very strong, they are fast and the ambush takes out most of your support quickly.  They get a net over you and manage to tie you up before you can get away.  You, their intended prize, are dragged off to become their mate.  While you remain a jaguar, the thoughts of the hospital fade from your mind as you fuck them over and over, filling them with jaguar-cheetah hybrid cubs.  All in all, not an unpleasant fate.";
				otherwise:
					say "     You report back to Dr Mouse, though only vaguely remembering the experiences that lead you to know him.  He somehow recognizes you readily and happily welcomes you to his staff.  He has you join one of his exploratory teams, collecting samples and test subjects for the doctor's research.  On a trip to the zoo, your team is waylayed by a plush lion.  While fairly strong, it is his cleverness that does you in.  He managed to frighten a pack of lesser fair folk to flee right into your squad.  During the chaos, he pushed you onto one of the rides and started fucking you.  You soon gave in to the mating from the plush lion.  As his hot seed flowed into you, you changed, becoming a plush jaguar and his mate.  Thoughts of the hospital were driven from your cotton-filled head and you followed him to his lair deep in the fair.";
			otherwise if hospquest is 13 and hp of doctor mouse is 1:
				say "     Driven by your new instincts, you report back to Dr Mouse, though only vaguely remembering the experiences that lead you to know him.  He somehow recognizes you readily and is cruelly pleased with your fate.  Fully subservient to him now, he takes delight in ordering you around and using you for any twisted experiment he wants.  Your body is changed over and over again in countless ways over the years and you are often used to mate with any new test subjects he captures for his amusement";
				if "Sterile" is not listed in feats of player and cunts of player > 0:
					say ".  You birth many bizarre, hybrid creatures from these matings";
				say ".  You do all this for him gladly, though never understanding why he is so mean to you, his loyal follower.";
			otherwise if hospquest is 13 and hp of doctor mouse is 2:
				say "     The hospital is in disarray when you arrive, like an ant hive where the queen has been killed.  The various factions strike out at each other at times, but cooperate at others.  The various labs remain a no man's land, but the cafeteria is often host to in-fighting over mates.";
				if intelligence of player >= 20 and charisma of player >= 15 and "Expert Medic" is listed in feats of player:
					say "     It is only with the coming of the military that control is restored.  The united threat of military action unifies the factions, at least temporarily.  And you would see that order remain and start taking charge of the groups.  Feeling the need to have someone in charge, the other groups begin to respond to your commands, beginning to rely on you to fill that void.  Your familiarity and experience in the city helps counter the military incursion into the hospital by personally leading several strikes against the soldiers.  By attacking their squads and the field camps they've set up in the city using the experience you gained and your familiarity with its streets and its safe routes, you are able to put their lines into disarray.  This soon forces them to back off from the hospital and continue their search for survivors elsewhere before pulling out of the city.";
					say "     Taking over as the head of the hospital from that point comes naturally.  The groups fall into line and order is restored to you hospital.  While lacking the extensive medical training and experience Dr. Mouse had, you learn quickly by studying the numerous medical books and journals throughout the hospital.  You even start up some experiments of your own, adding more staff to your hospital as you do.  While your experiments are not as ambitious as the mouse's, you don't feel an urge to leave the hospital like he did, content with your orderly medical center and your sexual testing into the nanite infection to add more amusing variety to the staff of hospital creatures for you to enjoy.";
					increase score by 50;
				otherwise:
					say "     It is only with the coming of the military that control is restored.  The united threat of military action unifies the factions, at least temporarily.  And you would see that order remain and enact a plan that grows in the back of your mind.  Feeling the need to have someone in charge, you break from the defence and slip into the military lines, striking a small field hospital.  You incapacitate the staff and mate with them, making more jaguars out of them, but drag back the main doctor back to the hospital unchanged.";
					say "     Confining him, you bring a canine from the collection of remaining test subjects, letting her mate with him until he becomes a canine doctor.  As you feel the call to follow him growing within you, you prevent him from becoming completely mindless and separate them.  The canine doctor fills his position well, taking charge of the hospital and its forces with military discipline.  When the military finally leave the city, you have a new leader to keep the medical facility in order.";
			otherwise:
				say "     Driven by your new instincts, you report back to Dr Mouse, though only vaguely remembering the experiences that lead you to know him.  He somehow recognizes you readily and happily welcomes you to his staff.  He has you join one of his exploratory teams, collecting samples and test subjects for the doctor's research.  Having had much experience, your team is quite successful, always bringing in the test subjects the mouse doctor requires for his increasingly twisted and perverse experiments[if susan is in hidden lab].  Susan, as his assistant, is there with him to greet you each time you return and reward you with lustful sex[end if].";
				say "     When the military action finally begins in earnest, you, [if susan is in hidden lab]Susan, [end if]several other hand-picked staff and Dr Mouse escape through the underground tunnels while the helicopter and the hospital defenders act as a distraction.  You all escape out of the city and Dr Mouse sets up a new lab in secret.  He begins selling off the fruits of his research to foreign powers and the growing factions of transformed creatures that form.  You continue to act as his agent in the world, attacking and capturing test subjects when he sends you out for more.";
		otherwise:
			say "     After being released by the military forces after rescue, you are aimless in your life for a time.  Your brutish body is off-putting to many, making it difficult for others to accept you.  But then, one day while at a clinic with a feline flu, there is a commotion.  A bull man, who probably never properly reintegrated, snaps and goes on a rampage.  Reacting instinctively, you signal to a doctor and nurse your intent, then grab his arm in a hold from behind.  You are firm, but gentle as you press his chest down onto the counter while the pair sedate him.";
			say "     While the nurse is fully human, the doctor has multifaceted eyes and a pair of antennae.  They thank you for your help and take you in for treatment next in way of thanks.  Getting to talking with them, you start to become friends and a week later, you are hired on as an orderly at the clinic.  Working there, you are given a sense of fulfillment that is worth more to you than your pay.";
			if cocks of player > 0:
				say "     One day while on break, your nurse friend comes up to you and asks for you to give her a hand with something.  Following her off to an unused room, she locks the door and kisses you.  Working at a clinic for transformed medicine, she is used to seeing animal bodies and enlarged organs, but has never had sex with a transformee.  And you are quite happy to help her with that problem.  Your romp lasts through your whole break and beyond, a quiet but energetic pounding that leaves you both panting for breath.  From that day on, your dalliances on break are frequent but discrete, though everyone at the clinic comes to know of them and make no objections about it.  And why should they, for most of them have such partners of their own.";
				say "     The woman remains untransformed, even after becoming your loving mate.  She bears you many jaguar cubs over the years.  You find the sight of the lovely, human woman nursing her spotted cubs quite beautiful and arousing.";
			otherwise:
				say "     One day while on break, your doctor friend comes up to you and asks for you to give him a hand with something.  Following him off to an unused room, he locks the door and runs his hands over you.  You kiss passionately, moaning softly before you stifle it to keep the noise down.  Having insectile eyes, he can understand the treatment you receive based on your appearance, but he can see past that.  Despite his standing as a doctor at a clinic for transformed medicine, he's been without sex since his transformation.  And you are quite happy to help him with that problem.  Your romp lasts through your whole break and beyond, a quiet but energetic pounding that leaves you both panting for breath.  From that day on, your dalliances on break are frequent but discrete, though everyone at the clinic comes to know of them and make no objections about it.  And why should they, for most of them have such partners of their own.";
				if "Sterile" is not listed in feats of player:
					say "     You and the doctor become frequent lovers and then mates.  His first time with you, having been so pent up, fills you with his seed and you gain a plump belly of cubs over the next few months.  You give birth to several jaguar cubs with shining, multifaceted eyes, antennae and gossamer wings.  Taking care of rambunctious cubs that can flit around on fairy-like wings is not easy, but you both are happy and oh so proud of them.  And always eager to give them more siblings.";
				otherwise:
					say "     You and the doctor become frequent lovers and then mates.  Unable to bear young for him yourself, you and he come up with a plan.  Speaking to your nurse friend one day, you get the human woman to join you both in some fun.  Working with you at the clinic, she is used to animal bodies, but has never had a transformee lover before and is eager for the experience.  As your week-end long sex romp goes on, she grows more and more lustful, soon not caring that the doctor's cum is being pumped into her without protection and even begging to be bred near the end.";
					say "     And breed her he does.  The human nurse remains untransformed, but gains a plump belly over the next few months and is now a constant playmate to you both.  When the children are born, they are surprisingly jaguar cubs with shining, multifaceted eyes, antennae and gossamer wings.  Taking care of rambunctious cubs that can flit around on fairy-like wings is not easy, but the three are happy and oh so proud of them.  And always eager to give them more siblings.";


[ Edit this to have the correct Name as well]
Jaguar Orderly for FS ends here.