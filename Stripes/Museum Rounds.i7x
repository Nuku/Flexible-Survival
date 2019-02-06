Version 1 of Museum Rounds by Stripes begins here.
[Version 1 - Initial set, notes for possible others]

Section 1 - Mechanics

mrevents is a list of numbers that varies. mrevents is usually { 1, 2, 3, 4, 5, 8, 11, 12 }.
mre01 is a number that varies.
mre02 is a number that varies.
mre04 is a truth state that varies. mre04 is usually false.
HP of Valerie is usually 255.

museumrounding is an action applying to nothing.

understand "museum rounds" as museumrounding.
understand "rounds with valerie" as museumrounding.
understand "valerie rounds" as museumrounding.
understand "rounds valerie" as museumrounding.
understand "museum round" as museumrounding.
understand "valerie round" as museumrounding.

check museumrounding:
	if Valerie is not visible, say "You go around and around, but don't find who you're looking for." instead;

carry out museumrounding:
	if XP of Valerie is 0:
		if guy is banned, remove { 5 } from mrevents, if present;
		if girl is banned, remove { 4 } from mrevents, if present;
		if guy is banned and girl is banned, remove { 8 } from mrevents, if present;
		if furry is banned, remove { 8, 11 } from mrevents, if present;
		if hermaphrodite is banned, remove { 11 } from mrevents, if present;
	if riddlewin < 3:
		say "     'I'd prefer more intellectual companionship while making my rounds. One needs to be clever to deal with many of the denizens of the Museum. Perhaps you could prove your cleverness by solving a few of my riddles?' she says with an enigmatic grin.";
	else if HP of Valerie - turns < 8:
		say "     'We checked on stuff a while ago. I can't be leaving the front desk all the time or unsavory people'll be sneaking into the museum.'";
	else:
		now battleground is "Museum";
		say "     You offer to join Valerie on her rounds of the museum. She smiles and says she'd welcome the company. 'The creatures of the museum, with few exceptions, do not offer intelligent or stimulating conversation,' she says with an enigmatic smile and a swish of her feline rump. Thinking of some 'stimulating conversation' you could have with that sexy ass of hers, you follow along on a meandering path through part of the museum.";
		sort mrevents in random order;
		if entry 1 in mrevents is 1:
			say "[mrevent01]";
		else if entry 1 in mrevents is 2:
			say "[mrevent02]";
		else if entry 1 in mrevents is 3:
			say "[mrevent03]";
		else if entry 1 in mrevents is 4:
			say "[mrevent04]";
		else if entry 1 in mrevents is 5:
			say "[mrevent05]";
		else if entry 1 in mrevents is 6:
			say "[mrevent06]";
		else if entry 1 in mrevents is 7:
			say "[mrevent07]";
		else if entry 1 in mrevents is 8:
			say "[mrevent08]";
		else if entry 1 in mrevents is 9:
			say "[mrevent09]";
		else if entry 1 in mrevents is 10:
			say "[mrevent10]";
		else if entry 1 in mrevents is 11:
			say "[mrevent11]";
		else if entry 1 in mrevents is 12:
			say "[mrevent12]";
		else if entry 1 in mrevents is 13:
			say "[mrevent13]";
		else if entry 1 in mrevents is 14:
			say "[mrevent14]";
		else if entry 1 in mrevents is 15:
			say "[mrevent15]";
		increase XP of valerie by 1;
		now HP of valerie is turns;
		follow the turnpass rule;


[ XP of valerie = number of times doing rounds with her. ]
[ HP of valerie = last turn museum rounds were made. ]


Section 2 - Doing the Rounds

Part 1 - Basic Rounds

Chapter 1 - Background 1

to say mrevent01:
	if mre01 is 0, now mre01 is a random number between 1 and 6;
	if mre01 is 1:
		say "     You and Valerie pass through the halls of the museum, checking on several of the exhibits while she talks about them. You're taken through several of the historical wings and she discusses the significant points of the various societies and events of the era. You have an enjoyable time with sphinx, the walk through time with her a pleasant break from your current troubles. Certainly she enjoys your company as well, giving your [bodydesc of player] form the occasional appraising or appreciative glance.";
	else if mre01 is 2:
		say "     You and Valerie pass through the halls of the museum on no discernible path while she discusses the exhibits. The tour is fairly uneventful except for a group of feline ninjas you spot watching you from the shadows. Their eyes narrow as they glare at you. One slips a few inches of his blade from its sheath and narrows its eyes to glare at you. It seems that were it not for Valerie's presence, you'd be subject to attack.";
	else if mre01 is 3:
		say "     You and Valerie wander the halls of the museum, passing through a medley of exhibits as she discusses them with you. As you pass through the exhibit on the Wild West, you can't help but notice that any display that held guns has been broken into and raided. Perhaps it was earlier survivors trying to defend themselves, though you're concerned there might be some crazed gunmen running around out there. You try to ask Val about this, but she only smiles enigmatically and says that 'boys will be boys.'";
	else if mre01 is 4:
		say "     You and Valerie wander the halls of the museum, passing through a medley of exhibits as she discusses them with you. You can't help but notice that several of the exhibits seem to be been partially denuded, mainly of clothing or weapons. You suspect that some of the infected have become focused on those time periods or ancient civilizations and are now running around armed and crazed somewhere. You try to ask Val about this, but she only smiles enigmatically and says that she's sure they're just off having fun.";
	else if mre01 is 5:
		say "     You and Valerie wander the halls of the museum, passing through an assortment of exhibits as she discusses them with you. This rambling tour is largely uneventful save when Valerie comes across a new set of graffiti defacing the walls and artwork with drawings of breasts and cocks. She grumbles at this about, mumbling something about drunk satyrs and continues on her way.";
	else if mre01 is 6:
		say "     Valerie leads on you a rambling, seemingly aimless path through part of the museum. As she passes various exhibits and wings, she discusses the items on display. It is rather uneventful save when you end up passing briefly through an employees-only area as a shortcut to get to a different wing. There you pass a heavily muscled wolverine in a security guard hat and jacket. He's leaning against the wall, munching on a doughnut. He tips his hat to Valerie as she passes, but growls at you as you step past. He chomps violently into his doughnut while glaring at you.";
	increase mre01 by 1;
	if mre01 > 6, now mre01 is 1;


Chapter 2 - Background 2

to say mrevent02:
	if mre02 is 0, now mre02 is a random number between 1 and 6;
	if mre02 is 1:
		say "     You and Valerie pass through the halls of the museum, checking on several of the exhibits while she talks about them. You're taken through several of the art wings and she discusses the significant differences of the various artists and art movements. You have an enjoyable time with sphinx, the walk through time with her a pleasant break from your current troubles. Certainly she enjoys your company as well, giving your [bodydesc of player] form the occasional appraising or appreciative glance.";
	else if mre02 is 2:
		say "     You and Valerie pass through the halls of the museum on no discernible path while she discusses the exhibits. The tour is fairly uneventful except for a clockwork [one of]fox[or]vixen[at random] who eyes you with its mechanical eyes. From the leaking lubricant and the way it runs its paws over itself, it seems that were it not for Valerie's presence, you'd be the subject to its lustful advances.";
	else if mre02 is 3:
		say "     You and Valerie pass through the halls of the museum on no discernible path while she discusses the exhibits. The tour is fairly uneventful except for a brief interruption when some cavorting nymphs dance past with a group of satyrs in hot pursuit. ";
		if bodyname of player is "Greek Nymph":
			say "     You are given a few lewd looks from the passing satyrs, but they give you a wide berth, probably due to Valerie's presence.";
		else if bodyname of player is "Satyr":
			say "     You feel a pull to join in the pursuit, but rein it in and continue along with Valerie once the group is past.";
		else:
			say "     You and Valerie are given a wide berth by the drunken revelers.";
	else if mre02 is 4:
		say "     You and Valerie wander the halls of the museum, passing through a variety of exhibits as she tells you about them. As you're approaching the historical wing dealing with the Middle Ages, there comes the clanging of metal on metal and the sounds of fighting. The sphinx seems unsurprised by this and casually heads towards it. Inside, you find a pair of living knights with armored skin and bulging codpieces swordfighting with one another. Seeing her, they pause in their battle and rush over to kneel at her feet.";
		say "     'Ah, Lady Valerie. It bringeth me grand joy to see thee again. I was just doing battle with this knave to win thy hand.'";
		say "     'Nay, fool! For tis I who shall defeat thee and earn the maiden's love.'";
		say "     'Never, varlet! Have at thee!' the first cries, rising to his feet and drawing raising his sword again. Soon they're back at it again.";
		say "     Valerie seems unsurprised by this behavior and moves to walk away, calling out for them to 'Have fun and don't break anything.'";
		say "     'We won't, my lady,' they both respond, then clash swords all the harder with accusations of having been copied.";
	else if mre02 is 5:
		say "     You and Valerie travel through several wings of the museum as she makes her rambling rounds, checking up on some of the denizens between telling you about the exhibits she comes across. Partway through your journey, you come across a pair of the creatures having hot, sticky sex in the middle of the hall. The [one of]hugely hung mammoth[or]chiseled amazonian huntress[or]large sabretoothed cat[at random] has captured one of the [one of]clockwork vixens[or]drunken satyr[or]busty nymph[at random] and is having its lustful way with its fallen foe's body, much to the victim's visible delight. Valerie seems unfazed by this raw display of lust, though she does pause to watch momentarily while reminding them to be careful of getting cum on the carpet, to which they nod.";
	else if mre02 is 6:
		say "     Valerie leads on you a rambling, seemingly aimless path through part of the museum. As she passes various exhibits and wings, she discusses the items on display. It is rather uneventful save when you end up passing briefly through an employees-only area as a shortcut to get to a different wing. There you pass a stairwell leading down into the basement. There is a large three-headed dog creature resting in front of the door. Val tosses it a large chunk of meat from a bag she's been carrying and the beast tears into it with all three heads. It seems, like Cerberus of myth, this three-headed beast guards the gates to the underworld in its own way.";


Chapter 3 - Random Fight

to say mrevent03:
	say "     You and Valerie pass through the halls of the museum, checking on several of the exhibits while she talks about them. You're taken through several of the exhibit halls while she discusses the contents on display. You are having an enjoyable time with sphinx at first, but are interrupted by the commotion of some of the creatures fighting. This area of the museum having numerous breakables, she rushes off to break up the fighting. As you dash off in pursuit of her, another creature, either drawn by the fight or a participant in it, runs into you and soon you're embroiled in conflict with it.";
	now battleground is "Museum";
	fight;
	say "     Not long after your encounter is over, Valerie returns. Her fur's a little ruffled and she's angry about the monsters risking damaging the exhibits with their 'fun', but seems unharmed.";


Chapter 4 - Bedroom Sex

to say mrevent04:
	if player is neuter:
		say "[mrevent01]"; [save for later if neuter]
	else:
		if mre04 is false:
			say "     You and Valerie pass through the halls of the museum, checking on several of the exhibits while she talks about them. As you travel along, she talks about the various items on display, but seems quite distracted and takes several opportunities to rub up against you as she points out some details. It is not long after you notice this that her rambling path leads to a closed exhibit done up like a grand bedroom. As she begins to explain that it's a reproduction of the queen's bedroom from the Palace of Versailles, she climbs up onto the bed and gives you a coy glance and enticing flick of her tail to show off her wet pussy.";
			now mre04 is true;
		else:
			say "     You and Valerie wander the halls of the museum seemingly aimlessly, passing through a medley of exhibits as she discusses them with you. You can't help but notice that she seems rather distracted and is more interested in checking you out while she points out details on the exhibits than examining them herself. Your suspicions are confirmed when her path ends up taking you back to the closed royal bedroom exhibit. With an eager pounce, she hops onto the bed and waves her hindquarters tantalizingly at you.";
		if player is male:
			say "     With such an enticing offer in such a beautiful location, it hardly enters your mind to refuse. Quickly pulling off your gear, you climb onto the bed and move up beside her lovely, leonine form. You run your hands over her body, caressing her soft fur and feeling the strong muscles beneath it. 'Mmm... after such a long [if daytimer is day]night[else]day[end if] of work, this is just what I need,' she rumbles. Those rumbles turn to purring as your hand slips back to her pussy and starts to finger her wet folds.";
			say "     As you're fingering her, she moves her face to your groin and starts licking over your [cock of player] shaft, enticing it to full hardness. With you at full mast and her pussy wet with juices, you see no need in waiting any longer and move to mount the sexy sphinx. She releases a mrowl of pleasure as you drive your [cock size desc of player] cock into her[if cock length of player > 36] with some effort[else if cock length of player > 24] with a little effort[end if] and start thrusting. You run your hands over her feline form while thrusting, driving your manhood into her juicy box again and again.";
			say "     While far from the beauty one would expect to be banging in such an opulent bedroom, at the moment you can think of no one better suited to it. There is a regal beauty to the sphinx's leonine form and her tawny coat goes so well with those gold-embroidered quilts that she's trying so hard not to knead her claws into as you pound her. Reaching around, you take hold of her breasts and tease her nipples, drawing a mrowl from her. Delighted at her response, you thrust into her harder and continue to play with her hard nips, soon having her panting and mewling in orgasmic bliss. With her quivering, juicy cunt squeezing down around your manhood, it's not long before you're cumming as well, painting her womb with your [cum load size of player] load. After your clandestine mating in the luxurious bedroom is over, you cuddle with her on the soft bed and rest for a while before turning to the front, enjoying the downy mattress and pillows, a great comfort compared to your usual sleeping arrangements of late.";
		else:
			say "     With such an enticing offer in such a beautiful location, it hardly enters your mind to refuse. Quickly pulling off your gear, you climb onto the bed and move up beside her lovely, leonine form. You run your hands over her body, caressing her soft fur and feeling the strong muscles beneath it. 'Mmm... While I normally prefer male companionship, you were clever enough to solve my riddles. Perhaps you'll be clever enough to solve my puzzle box,' she rumbles with a grin. Those rumbles turn to purring as your hand slips back to her pussy and starts to finger her wet folds.";
			say "     As you're fingering her, she moves her face to your groin and starts licking at your [cunt size desc of player] pussy, lapping up your juices. With a soft caress of her flank, you get her to roll onto her side and raise one of her hind legs. Snuggling in close to her leonine body, you bring your mouth to her pussy and start eating her out. You alternate between fingering her juicy hole and lapping up those free-flowing juices. Meanwhile, she dives her tongue into your cunt again and again, making you moan and tremble in pleasure. She works her tongue, lips and even her slightly pointy teeth in clever ways to excite you. With her doing such a fine job, you can't help but try your best in return to again prove yourself the cleverest.";
			say "     While far from the beauty one would expect to be ravishing in such an opulent bedroom, at the moment you can think of no one better suited to it. There is a regal beauty to the sphinx's leonine form and her tawny coat goes so well with those gold-embroidered quilts that she's trying so hard not to knead her claws into as you drive several fingers into her. Reaching around with your free hand, you cup one of her breasts and tease her nipple, drawing a mrowl from her. Delighted at her response, you start sucking on her clit and continue to play with her hard nips, soon having her panting and mewling in orgasmic bliss. With her quivering cunt running with her feminine cum for you to taste, it's not long before you're cumming as well, offering up a fresh flow of your sweet waters to her lapping tongue. After your lesbian tryst in the luxurious bedroom is over, you cuddle with her on the soft bed and rest for a while before turning to the front, enjoying the downy mattress and pillows, a great comfort compared to your usual sleeping arrangements of late.";
		infect "Sphinx";
		now lastfuck of Valerie is turns;


Section 3 - One-Time Rounds

Chapter 5 - Caveman Hunt

to say mrevent05:
	say "     Your path this time through the Museum takes you past the Prehistory Exhibit. As you approach, you can hear the whooping sounds of several cavemen as they manage to back one of the saber-toothed felines into a corner with their pointed spears. After several feints and jabs, the primitive men tackle the big cat and tie its paws together. Suspending it upside down, they prepare to carry the feline back to their den. From their growing erections and the way they fondle the feline's ass, you have a good suspicion as to how they intend to celebrate their victorious hunt.";
	if bodyname of player is "Caveman" or facename of player is "Caveman":
		say "     Seeing them awakens those primitive urges in you and you get caught up in the excitement, rushing over to join them in their celebration. They welcome you with only a few grunts and wide grins, their usual wariness replaced with excitement at their success. Valerie watches you go, telling you to have fun, though you barely notice in your current state of primitive excitement.";
		say "[mre05_hunter]";
	else if bodyname of player is "Sabretooth" or facename of player is "Sabretooth":
		say "     Seeing their hunt and wait awaits their [']prey['], you find your primitive urges awakening and you growl at the hunting party. Taking note of you, several of them rush forward to renew the hunt. This time, you are the prey, chased and jabbed at with the stone spears. You growl and swing at them, but eventually allow yourself to be caught. You are similarly tied up and hung upside down from a pole as they carry you and the other feline back to their den. Valerie smiles as she watches you get carried off, telling you to have fun, though you barely notice in your current state of primitive excitement.";
		say "[mre05_prey]";
	else:
		say "     Seeing them in such good spirits, you consider going over to join them in their celebration. It looks like they've got a fun time planned.";
		say "     [bold type]Shall you go join the victorious hunting party for some wild, primitive fun?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			let bonus be ( charisma of player - 10 ) divided by 2;
			let sexbonus be 0;
			if player is female, increase sexbonus by 3;
			if breast size of player > 3, increase sexbonus by 1;
			if cock length of player > 12, increase sexbonus by 1;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus]+[sexbonus] -- [dice + bonus + sexbonus] vs 15: ";
			if bonus + dice + sexbonus > 14:
				say "     You approach the group in a friendly manner, trying to convince them through soft words and lewd gestures that you would like to join in on the fun. At first they seem wary, but then huddle together to grunt and hoot at one another quickly. One gestures to your face, then pokes his own cromagnon features and shakes his head. [if player is female]. Another points back at you and then grunts emphatically while hip-thrusting, to much nodding from the group[else if breast size of player > 3]. Another cups imaginary [breast size desc of player] breasts in front of his chest and whistles, much to the delight of his peers[else if cock length of player > 12]. Glances are made at your [cock size desc of player] cock while they debate your merits[else]. Occasional glances back at you are made as they debate the matter[end if]. Finally, one of them shrugs and motions for you to come along. Pleased with your success, you follow off after the hunting party while Valerie smiles and tells you to have fun, though you barely notice in your excitement.";
				say "[mre05_hunter]";
			else:
				say "     You approach the group in a friendly manner, trying to convince them through soft words and lewd gestures that you would like to join in on the fun. At first they seem wary, but then huddle together to grunt and hoot at one another quickly. One gestures to your face, then pokes his own cromagnon features and shakes his head. Several nod at this. [if player is female]. Another points back at you and then grunts emphatically while hip-thrusting, to much nodding from the group[else if breast size of player > 3]. Another cups imaginary [breast size desc of player] breasts in front of his chest and whistles, much to the delight of his peers[else if cock length of player > 12]. Glances are made at your [cock size desc of player] cock while they debate your merits[else]. Occasional glances back at you are made as they debate the matter[end if]. Finally, they nod as a group and turn to rush at you, spears and clubs waving wildly. Before you even realize what's going on, they're tackling you to the ground. Soon you're trussed up and hanging upside down from a pole. As you're carried away alongside their original prize, Valerie just smiles and tells you to have fun, though you barely notice in all the excitement.";
				say "[mre05_prey]";
		else:
			LineBreak;
			say "     Feeling you'd rather not risk getting involved in the hunting party's fun, you and Valerie watch as they carry off the bound feline. Once the way is clear, you continue on with the rounds.";
	remove 5 from mrevents;

to say mre05_prey:
	say "     The group is quite excited at their doubly successful hunt this day and carry you both back to their home in the display showing caveman life. The poles holding you up are placed on forked rods, leaving you suspended in the air while they start grope and fondle their prizes. While one starts to manhandle your ass, you see another putting his misshapen mouth around the sabretooth's cock. After some rough groping of your [if player is female]pussy[else]ass[end if] and a thick finger spreading you open, you feel the caveman's big club of cock flesh pressed at your [if player is female]wet lips[else]back entrance[end if]. Your loud groan get muffled when another grabs your face and pushes his cock into your open mouth.";
	say "     You end up used like this for quite some time, spitroasted by a pair of cromagnon brutes and pumped full of load after load of their semen as the hunters swap in and out between you and the steadily changing feline. Given your situation, it is difficult for you to watch the progress, only getting glimpses when your view is unblocked by one caveman making room for the next at your mouth. Much of his russet-brown fur disappears and over time his body becomes more humanoid, though of a more brutish and devolved form. You can feel yourself similarly changing, becoming more like your captors as the long fuck session turns you into a slouching, muscular caveman. At some point, you both are released though the orgy only continues with new sexual positions being possible. No thought of escape or resisting enter either of your minds, too lost in the lustful excitement of sex. Eventually the celebration winds down as all involved as sated to the point of passing out. ";
	decrease humanity of player by 25;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 5;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 5;
	setmonster "Caveman";
	choose row monster in Table of Random Critters;
	now tailname of player is "Caveman";
	now facename of player is "Caveman";
	now skinname of player is "Caveman";
	now bodyname of player is "Caveman";
	now cockname of player is "Caveman";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	if libido of player < 45, now libido of player is 45;
	if humanity of player < 10:
		say "     Your mind, lost in a haze of primitive thoughts, only momentarily considers leaving before you turn back to the other cavemen. Why would you want to leave your tribe? Are they not your brothers? Did they not spend hours showing you how much they want you to be with them? With even these thoughts fading away into a desire for rest alongside the hunting party, you spoon with one of the strong males and let the last of your human mind drift off into sleep.";
		WaitLineBreak;
		end the story saying "You join the caveman tribe as another muscled brute.";
		now battleground is "void";
		wait for any key;
		now skipturnblocker is 1;
		follow the turnpass rule;
		stop the action;
	else:
		say "     You are briefly confused by the primitive thoughts trying to settle into your mind, but you manage to reassert enough self-control to stagger off, deeply changed, but still sane. At least for the moment.[impregchance][impregchance]";


to say mre05_hunter:
	let y be 0;
	if bodyname of player is "Caveman" and the player is pure, let y be 1;
	say "     The group is quite excited at both their successful hunt and their visitor this day. You are lead back to their home in the display showing caveman life. The pole holding up the snarling feline is placed on forked rods, leaving it suspended in the air while they start to grope and fondle their prize. As you watch one place his misshapen mouth around the sabretooth's cock, you're greeted with the affectionate grunt of one of the cavemen as he puts his strong arms around you. One hand slips down between your legs to [if player is female]rub your pussy[else if player is male]squeeze your cock[else]rub your bare groin[end if]. You feel a brief moment of concern as that thick club of a cock of his grinds against you, but the excitement of watching a pair of the big cavemen taking the big cat from both ends has gotten you too turned on to object. Soon you're pulled into the cromagnon's lap as he sits to watch the show, pulling you down onto that pillar of manhood.";
	say "     The caveman's big hands roam over your body as he bounces you in his lap roughly, driving that big cock of his deeper and deeper into you until it's fully buried inside you. As his pace quickens, you can't help but groan and grunt as you're [if player is female]fucked in your juicy hole until you feel that hot, creamy load of his fill your womb with his primitive seed[else]buggered in your tight hole until you feel that hot, creamy load of his fill your ass with his primitive seed[end if]. His hefty balls deliver a large rush of sticky semen into you, filling you with a rush of primal passion that [if player is male]has you cumming messily in a high arc[else if player is female]has you cumming messily, your juices adding to the wet mess staining your thighs[else]has you cry out loudly as your body quivers and shakes without a clear outlet for your lusts[end if]. Your belly is left full and warm with his virile output as the tingle of nanites floods your system.";
	say "     Once done with your ride, you pull yourself off of him with a wet plop and push your way to their captured prey. Already starting to change, he's converted some of his russet-brown fur into scruffy body hair and become partially humanoid. His oversized canines have shrunk down, but are still quite prominent at this point, though the muzzle holding them's almost gone. With one of the cavemen finishing at his mouth, you replace him there and pull the changing mouth ";
	if player is male:
		say "around your shaft so you can start fucking his face. As you watch him get buggered up the ass again by the lustful caveman opposite you, you rub your hand over his changing head, feeling his skull reshaping itself and his ears shifting position and becoming human-like. His tail seems to shrink away more with every thrust that cromagnon cock makes into him. It is the sight of his feline erection changing, becoming more humanoid, but enlarged and throbbing, that really captivates your attention. In the end, you feed him your load not long after your counterpart stuffs the increasingly humanoid creature with another ass-filling rush of caveman cum.";
	else if player is female:
		say "to your cream-filled pussy. With your pussy pressed to his changing lips, he starts to lap at your folds, his feline tongue becoming more human-like as he licks away the infected semen from your well-fucked hole. As he's eating you out eagerly while he's buggered up the ass again by the lustful caveman opposite you, you rub your hand over his changing head, feeling his skull reshaping itself and his ears shifting position and becoming human-like. His tail seems to shrink away more with every thrust that cromagnon cock makes into him. It is the sight of his feline erection changing, becoming more humanoid, but enlarged and throbbing, that really captivates your attention. In the end, you releasing a groaning cry as you orgasm, the fresh rush of your hot juices washing a mix of your feminine cum and caveman spunk into his open mouth and across his face. As your climax is waning, your counterpart stuffs the increasingly humanoid creature with another ass-filling rush of caveman cum.";
	else:
		say "to your cream-filled asshole. With your tight ring pressed to his changing lips, he starts to lap at your puckered ring, his feline tongue becoming more human-like as he licks away the infected semen from your well-fucked hole. As he's eating your ass out while being buggered by the ass again by another lustful caveman, you reach back to rub your hand over his changing head, feeling his skull reshaping itself and his ears shifting position and becoming human-like. Watching over your shoulder, his tail seems to shrink away more with every thrust that cromagnon cock makes into him. It is the sight of his feline erection changing, becoming more humanoid, but enlarged and throbbing, that really captivates your attention. In the end, he's cleaned your hole thoroughly by the time your counterpart stuffs the increasingly humanoid creature with another ass-filling rush of caveman cum.";
	say "     You end up playing around with the others like this for quite some time, sucking or riding their cocks[if player is male] and sometimes having the favor returned[end if], or having another go at the rapidly changing feline[if y is 0]. You are not left unchanged by this either, steadily transformed to become more and more like the lustful cavemen around you. Eventually the long fuck session turns you both into slouching, muscular cavemen[else]. Eventually the long fuck session transforms the sabretooth tiger into another slouching, muscular caveman like the rest of you[end if]. At some point well into his transformation, he is released though the orgy only continues with new sexual positions being possible. No thought of taking a break or leaving enters either of your minds, too lost in the lustful excitement of sex. Eventually the celebration winds down as all involved as sated to the point of passing out";
	decrease humanity of player by 25;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 5;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 5;
	setmonster "Caveman";
	choose row monster in Table of Random Critters;
	now tailname of player is "Caveman";
	now facename of player is "Caveman";
	now skinname of player is "Caveman";
	now bodyname of player is "Caveman";
	now cockname of player is "Caveman";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	if libido of player < 45, now libido of player is 45;
	if humanity of player < 10:
		say "     Your mind, lost in a haze of primitive thoughts, only momentarily considers leaving before you turn back to the other cavemen. Why would you want to leave your tribe? Are they not your brothers? Did they not spend hours showing you how much they want you to be with them? With even these thoughts fading away into a desire for rest alongside the hunting party, you spoon with one of the strong males and let the last of your human mind drift off into sleep.";
		WaitLineBreak;
		end the story saying "You join the caveman tribe as another muscled brute.";
		now battleground is "void";
		wait for any key;
		now skipturnblocker is 1;
		follow the turnpass rule;
		stop the action;
	else:
		say "     You are briefly confused by the primitive thoughts trying to settle into your mind, but you manage to reassert enough self-control to stagger off, deeply changed, but still sane. At least for the moment.[impregchance][impregchance]";


Chapter 6 - Art Battle

to say mrevent06:
	say "***art battle: classical v. modern";
	say "***Valerie enters to break it up, warns against entering.";
	say "Options: Charge in, peek in or wait?";
[	1> Charge in to help, but visually assaulted by visual clashes. Museum itself distorted here.
		stat check w/sanity loss
		perception is penalty?
		suffers an art attack. Paint splattering finale.
		skin change to "Painted <previous skin name>"?
		skin redescribed as painted?
	2> Peek in, improved stat check w/lesser sanity loss
	3> Noises pick up, leonine roaring, fighting and groaning. Eventually emerges, messy w/paint.	]
	remove 6 from mrevents;


Chapter 7 - Tea with Ninjas

to say mrevent07:
	say "***tea with ninjas";
[	- if player ninja, watchful, express eagerness to welcome into clan.
	- otherwise, friendly tea, but...
	-- if level of player > 6:
	--- will warn others to be wary, but warns player that some may still seek to prove their skills against him
	-- else:
	--- warns player to be wary, ninjas seek to add to clan	]
	remove 7 from mrevents;


Chapter 8 - Lubricating the Gears

to say mrevent08:
	if player is neuter:
		say "[mrevent02]"; [save for later if neuter]
	else:
		say "     As you prepare to head off with Valerie, she gestures to a two-gallon barrel of oil with one of her paws. 'I'd arranged a trade with another visitor to get that, but I'm a little ill-equipped to carry it. Would you be so kind as to bring it along?' You start to ask what it's for, but she's already begun to pad away. With a grunt, you heft up the large drum [if strength of player > 18]with ease[else if strength of player > 14]with a little effort[else]with some strain[end if] and follow after her. While leading you through the museum, she discusses several of the exhibits and seems to take a long, rambling path despite (or perhaps even because of) your heavy load. You try to ask her about it a few times, but are always interrupted by another lecture about some new wing or exhibit.";
		say "     Eventually, you're led into an exhibit about the marvels of clockwork. In there among the various mechanical clocks, music boxes and other clockwork machinery are a large number of clockwork foxes and vixens. It seems this is where the skulk of vulpines has set up their home. They smile and wave with a mechanical clicking to Valerie, but stop and eye you suspiciously as you enter as well. Reasoning that the oil is for them, you bring it forward and set it down before stepping away. They come forward eagerly and start filling small oil cans from it. Soon enough, they're lubricating each other with happy chirs and giggles, groping and nuzzling one another as the oiling session becomes increasingly intimate.";
		say "     Having brought them the oil, they're also happy to come over and snuggle up with you, running intricately designed paws over you. 'Thank you for the oil,' one of the vixens says in a voice mixed with a music box song. 'Why don't you stay with us for a good, long winding,' [if player is male]she adds, grinding her hips against your thigh[else]a tod adds, grinding his brass cock against your hip[end if]. With their caresses turning to groping, you strongly consider taking them up on their offer for some fun. Would you like to play with them for a while? You might consider playing with a [link]tod (1)[as]1[end link] or a [link]vixen (2)[as]2[end link], or simply [link]pass (0)[as]0[end link] on their advances.";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>";
			get a number;
		if calcnumber is 1:
			setmonster "Clockwork Fox";
			choose row monster from the Table of Random Critters;
			now sex entry is "Female";
			if "Male Preferred" is listed in the feats of player, now sex entry is "Male";
			if "Herm Preferred" is listed in the feats of player, now sex entry is "Both";
			say "     The clockwork fox guy runs his paws over your [bodydesc of player] body, caressing and cuddling you. His motions are smooth and precise thanks to his recent oiling, only soft whirrs and clicks as the gears move inside him. His cool muzzle slides across your neck, giving you soft nips as he helps you out of your gear and guides you to one of the workbenches. Val gives you a quick wave and tells you to have fun, though you have little chance to respond before the fox's muzzle is pressed to your lips in a kiss. A curved brass tongue slides out to brush across yours while the lustful tod [if player is female]dips a pair of fingers into your pussy[else]grabs your ass and fingers your tight pucker[end if]. Once the kiss is broken, the fox gets you to lean over the bench, chirring in a soft, musically chiming voice about how he'll give you a winding you'll never forget.";
			say "     The brassworks fox runs his paws down your back and grabs your ass as he moves to get his mechanical cock lined up with your [if player is female]juicy pussy[else]puckered hole[end if]. He starts slow, letting his cool, brass erection brush against you a few times so it may leak its oily precum onto it. His paws wander back up your [bodytype of player] body as he thrusts into you with a happy chiming. The brass rod warms up quickly as he pumps into you, making you moan in pleasure. His oily pre leaks into you, making the metallic flesh's passing smooth and sensual.";
			say "     Your enjoyment of this unusual mating only grows as the tod's nimble paws tweak and tease at your body[if player is male]. One paw finds its way to your cock[smn] and sets itself to caressing your manhood in time to the rhythmic motion of his pistoning rod[end if][if breast size of player > 0]. He places a paw at your bosom, groping your breasts and pinching your nipples[end if]. While those diligent paws tease you to even greater heights of pleasure, he softly chirrs and clicks in your ear about how a fresh oiling always makes him so horny. Certainly its made his penile system run smoothly and quickly.";
			if player is female:
				say "     The pleasure builds and builds as the clockwork tod mates with you, his cock having quickly warmed up. Your cunt squeezes and quivers around it as your lustful pleasure grows. The motion of the mechanically-driven cock grows faster as he warms up as well, making the thrusting of his vulpine, knotted dick increasingly enjoyable. When you finally cum, he cries out happily with those music box tones of his intermixed with the moans and pants you're more used to hearing. He releases as well, the pressure built up inside until his oily cum is shot into you, flowing up into your waiting womb. Having received a fresh oiling, his load is quite slick and sizable. Once his metal ballsack is drained, he withdraws from you and gives your ear an affectionate nibble, chiming happily that he looks forward to winding you up again soon.[impregchance]";
			else:
				say "     The metallic fox guy pumps his cock into you mechanically, driven by the hidden clockworks in his hips, keeping his motions steady as he pounds your prostate. His cock having quickly warmed up while pounding your ass, the mechanical fucking only gets increasingly enjoyable for you both. When his internal pressure finally builds up enough, his warmed, oily cum is shot into you, filling your ass with his mechanical vulpine seed. Having received a fresh oiling, his load is quite slick and sizable. The feel of it flowing into you, spreading smoothly to coat your inner walls as he drives into your prostate again and again finally sets you off and you paint the floor with your own cum. Once his metal ballsack is drained, he withdraws from you and gives your ear an affectionate nibble, chiming happily that he looks forward to winding you up again soon.[mimpregchance]";
			say "     As you're trying to recover from your enjoyable orgasm, you're met with affections of several of the other clockwork foxes and vixens. They run their paws over your [bodydesc of player] body and whirr musically as they lick, kiss and grope at you. Their mechanical attentions are varied, but diligent, working steadily to bring you back to arousal for more fun.";
			say "     [bold type] Shall you give in and continue playing with these mechanical marvels of vulpine voluptuousness and virility?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				say "     Eager for more sex with the unusual yet sexy vulpines, you return their affectionate snuggling with caresses and gropes of your own. Soon enough, you're pulled into some fun with a [if player is male]tod and a vixen. After sharing some more kisses and having some of their oil spread across your loins to lube you up again, you are sandwiched between them. You thrust into the lustful girl's mechanized cunny while the guy's pistoning cock is thrust into you. You moan between them, fucking and being fucked in rhythmic unison[else if player is female]pair of tods. After sharing some more kisses and having some of their oil spread across your loins and holes to lube you up again, you are sandwiched between them, fucked in both the front and the back in rhythmic unison[else]pair of tods. After sharing some more kisses and having some of their oil spread across your anus to lube you up again, you are spitroasted between them, fucked in both the mouth and the rear in rhythmic unison[end if]. As the sex continues, your cries become more chiming as you increasingly lose yourself to your vulpine lovers['] infection. As the orgy goes on and you pass around from partner to partner, you become more and more like the clockwork foxes you're fucking. To say you lose track of time would be inaccurate, as your ticking mind is quite aware of every second of the clock, but it no longer matters to you how long you stay with these sexy vulpines, for you are one of them through and through.";
				now humanity of player is 0;
				now tailname of player is "Clockwork Fox";
				now facename of player is "Clockwork Fox";
				now skinname of player is "Clockwork Fox";
				now bodyname of player is "Clockwork Fox";
				now cockname of player is "Clockwork Fox";
				attributeinfect;
				now tail of player is tail entry;
				now face of player is face entry;
				now skin of player is skin entry;
				now body of player is body entry;
				now cock of player is cock entry;
				if hellHoundLevel is 0:
					follow the sex change rule;
					follow the sex change rule;
				if libido of player < 40, now libido of player is 40;
				WaitLineBreak;
				end the story saying "You join the clockwork skulk as another vulpine member.";
				now battleground is "void";
				wait for any key;
				now skipturnblocker is 1;
				follow the turnpass rule;
				stop the action;
			else:
				LineBreak;
				say "     You do your best to politely refuse more fun with the foxes, though you have to push a couple of the overeager vulpines back so you can free yourself from their clockwork embraces. They seem a little displeased that you're leaving, but are having quite a bit of fun themselves with their fresh supply of oil to lubricate their lustful loins. You are not left unaffected by your fun with the foxes though.";
				infect "Clockwork Fox";
				infect "Clockwork Fox";
		else if calcnumber is 2:
			setmonster "Clockwork Fox";
			choose row monster from the Table of Random Critters;
			now sex entry is "Male";
			if "Female Preferred" is listed in the feats of player, now sex entry is "Female";
			if "Herm Preferred" is listed in the feats of player, now sex entry is "Both";
			say "     The clockwork fox girl runs her paws over your [bodydesc of player] body, caressing and cuddling you. Her motions are smooth and precise thanks to her recent oiling, only soft whirrs and clicks as the gears move inside her. Her cool muzzle slides across your neck, giving you soft nips as she helps you out of your gear and tugs you over to one of the workbenches. Val gives you a quick wave and tells you to have fun, though you have little chance to respond before the vixen's muzzle is pressed to your lips in a kiss. A curved brass tongue slides out to brush across yours while the lustful fox girl [if player is female]dips a pair of fingers into your pussy[else]takes hold of your cock and strokes it[end if]. Once the kiss is broken, the fox gets you to lean over the bench, chirring in a soft, musically chiming voice about how she [if player is male]wants you to wind her so tight she'll scream when her mainspring pops[else]wants you to get her pussy nice and lubed up so one of the tods can wind her up[end if].";
			if player is male:
				say "     The clockwork vixen takes your [cock of player] cock in hand and starts stroking it as she pours some of the new oil onto it. After some playful stroking that leaves your shaft fully hard and glistening, she bends over the workbench and raises her mechanized tail with a musical moan. She chimes happily as you drive your [cock size desc of player] shaft into her cunt. It is somewhat cool at first as she guides you into a chair. She's well lubricated by the scented oils she's producing, her recent oiling making her sexual mechanism run smoothly and quickly. It grips around your cock like flesh would, but squeezes and milks at your cock in a rhythmic, mechanical manner. Finding it quite pleasurable, you run your hands over her metallic fur and start pounding away at her. Reaching around, you take hold of her lovely breasts and fondle them to chiming moans and giggles as she urges you to wind her faster.";
				say "     The pleasure builds and builds as the vixen's clockwork cunny works your manhood with a steadily increasing pace as it warms up. The motion of it grows more and more enjoyable for you as you give yourself over to the lustful excitement of fucking the exotic creature. When you finally cum and add your sticky load to the lubricating fluids, she cries out happily with those music box tones of hers intermixed with the moans and pants you're more used to hearing. She releases as well, the pressure built up inside until her oily female juices are sent pouring out over your shaft and crotch. Having received a fresh oiling, she cums copiously, the slick, musky fluid running down her shiny legs and clinging to your crotch and thighs with a glistening sheen. Once her climactic spasms of joy wind down and her vagina's frantic milking of your shaft returns to a more casual stroking, you slip from her pussy and give her sexy ass a pat. Getting up, she licks your cheek and chimes happily that she really enjoyed the winding and looks forward to getting you to wind her up again soon.";
			else:
				say "     The clockwork vixen takes your hand in hers and pours some of the new oil onto it before guiding it to her mechanized cunt. She releases a musical moan as you slip a pair of digits into her and start lubricating her squeezing, sliding passage. As you fingerfuck the vixen, the movement of her vaginal walls becomes smoother and faster, as does her panting moans. Her cool fingers, slick with oil themselves, are guided into your cunny as she returns the favor to you. Her brass digits warm up quickly as she pumps them into you, making you moan with pleasure as she artfully teases your clit and sensitive inner walls while lubing you up[if breasts of player > 0]. Her free paw, after another liberal application of oil on both playful hands, moves to your chest and starts playing with your nipples[else]. Her free paw, after another liberal application of oil on both playful hands, moves to your ass and gropes your rear[end if]. Kissing her again, you grab her bosom and start fondling her breasts while pumping all the harder. While those diligent paws tease you to even greater heights of pleasure, she chirrs softly and clicks in your ear about how a fresh oiling always makes her so horny. Certainly, it's made her vaginal passage run smoothly and quickly, growing wetter with her own lubrication as well.";
				say "     The pleasure builds and builds as the clockwork vixen fingers with you, his now-warm fingers running through a series of pleasurable motions that excite numerous erogenous spots. Your cunt squeezes and quivers around those digits as your lustful pleasure grows. The motion of the mechanically-driven cunny grows faster as she warms up as well, making the squeezing motion of her vulpine vagina increasingly enjoyable. When you finally cum, she cries out happily with those music box tones of hers intermixed with the moans and pants you're more used to hearing. She releases as well, the pressure built up inside until her oily female juices are sent pouring out over your hand. Having received a fresh oiling, she cums copiously, the slick, musky fluid running down her shiny legs and clinging to your hand with a glistening sheen. Once her climactic spasms of joy wind down, she slips her paw from you and eases herself off your fingers. She licks your cheek and chimes happily that she's all ready to get a proper winding and hopes to watch you get one as well.";
			say "     As you're trying to recover from your enjoyable orgasm, you're met with affections of several of the other clockwork foxes and vixens. They run their paws over your [bodydesc of player] body and whirr musically as they lick, kiss and grope at you. Their mechanical attentions are varied, but diligent, working steadily to bring you back to arousal for more fun.";
			say "     [bold type]Shall you give in and continue playing with these mechanical marvels of vulpine voluptuousness and virility?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				LineBreak;
				say "     Eager for more sex with the unusual yet sexy vulpines, you return their affectionate snuggling with caresses and gropes of your own. Soon enough, you're pulled into some fun with a [if player is male]tod and a vixen. After sharing some more kisses and having some of their oil spread across your loins to lube you up again, you are sandwiched between them. You thrust into the lustful girl's mechanized cunny while the guy's pistoning cock is thrust into you. You moan between them, fucking and being fucked in rhythmic unison[else if player is female]pair of tods. After sharing some more kisses and having some of their oil spread across your loins and holes to lube you up again, you are sandwiched between them, fucked in both the front and the back in rhythmic unison[else]pair of tods. After sharing some more kisses and having some of their oil spread across your anus to lube you up again, you are spitroasted between them, fucked in both the mouth and the rear in rhythmic unison[end if]. As the sex continues, your cries become more chiming as you increasingly lose yourself to your vulpine lovers['] infection. As the orgy goes on and you pass around from partner to partner, you become more and more like the clockwork foxes you're fucking. To say you lose track of time would be inaccurate, as your ticking mind is quite aware of every second of the clock, but it no longer matters to you how long you stay with these sexy vulpines, for you are one of them through and through.";
				now humanity of player is 0;
				now tailname of player is "Clockwork Fox";
				now facename of player is "Clockwork Fox";
				now skinname of player is "Clockwork Fox";
				now bodyname of player is "Clockwork Fox";
				now cockname of player is "Clockwork Fox";
				attributeinfect;
				now tail of player is tail entry;
				now face of player is face entry;
				now skin of player is skin entry;
				now body of player is body entry;
				now cock of player is cock entry;
				if hellHoundLevel is 0:
					follow the sex change rule;
					follow the sex change rule;
				if libido of player < 40, now libido of player is 40;
				WaitLineBreak;
				end the story saying "You join the clockwork skulk as another vulpine member.";
				now battleground is "void";
				wait for any key;
				now skipturnblocker is 1;
				follow the turnpass rule;
				stop the action;
			else:
				LineBreak;
				say "     You do your best to politely refuse more fun with the foxes, though you have to push a couple of the overeager vulpines back so you can free yourself from their clockwork embraces. They seem a little displeased that you're leaving, but are having quite a bit of fun themselves with their fresh supply of oil to lubricate their lustful loins. You are not left unaffected by your fun with the foxes though.";
				infect "Clockwork Fox";
				infect "Clockwork Fox";
		else:
			say "     Deciding it'd be best not to get involved in any sexual escapades with the mechanical vulpines while in their lair, you politely decline. You and Val remain for a while, watching their oiling session descend further from needed maintenance to mechanical testing of their clockwork reproductive systems. It is quite the unusual, if tantalizing, sexual display and you reconsider your earlier decision a few times. By the time the whirring, clicking orgy is in full swing, Val merely smiles and walks off with you following along.";
			increase libido of player by 5;
	remove 8 from mrevents;


Chapter 9 - Satyr Party

to say mrevent09:
	say "***satyr party";
	say "     'Oh, lovely Valerie. Muse to our souls and protector of our grand party hall. We are well into our cups, but shall you and your companion join us for a drink?'";
	say "join in?";
	if player consents:
		say "***party - Valerie continues on";
		say "***if on quest, nick a little wine.";
	else:
		say "***continue on, leaving revelers behind.";
	remove 9 from mrevents;


Chapter 10 - Dino Discards

to say mrevent10:
	say "***found some discarded 70's item. Brought back to dino.";
	say "***offer to dance";
	if player consents:
		say "***disco-time.";
		infect "Triceratops";
		say "***if high dex and on quest, pinch lava lamp.";
	else:
		say "***continue on your way.";


Chapter 11 - Mammoth Mistake

to say mrevent11:
	say "     Hearing some growling and snarling from one of the nearby rooms, you and Valerie make a detour on your rounds. Inside, you find several sabretooth tigers fighting a hyper-endowed mammoth. Her heavy balls and breasts sway heavily as she moves about and her cock throbs and dribbles with precum from the excitement. The woolly creature is able to fend off whichever one she faces, but the others nip and slash at her from the other sides. These blows are light, more a game than a true hunt. Trumpetting loudly, she grabs her enormous half-hard cock in both hands and swings it like a club. One of the primitive felines is sent flying across the room from this blow. It tumbles through the air and crashes into one of the displays, breaking the glass case and the items inside.";
	say "     The whole scene freezes as those assembled take in a sharp breath and turn wide-eyed first to the destruction and then to Valerie. The mammoth's massive cock wilts rapidly, returning to a more sedate (for it) four feet of unerect flesh. Even the feline embedded in the broken case dares not move a hair despite bleeding from the broken glass jabbed into it. The sphinx bristles as she surveys the scene with increasing ire before finally releasing a loud, leonine roar. At her cry, the group scatters to the four winds, sabretooths rushing away with their ears low and their tails between their legs. The one in the case scrambles free with little regard for the fact that it's exaccerbating its wounds. The mammoth herm shuffles as quickly as she can out the door, clutching her oversized endowments to keep them from knocking into anything else.";
	say "     When they've all cleared the room, Val huffs and growls, tearing her claws free of the stone floor. She stomps around the room, surveying the damage. In the end, she storms off in a foul mood for the rest of her rounds. Certainly, all the creatures of the museum give her a wide berth, fearful of the sphinx's wrath. Clearly she's a force to be reckoned with that these mighty beasts dare not upset.";
	remove 11 from mrevents;


Chapter 12 - Intruder Alert

to say mrevent12:
	say "     You and Valerie pass through the halls of the museum on no discernable path while she discusses the exhibits. At first, the tour is fairly uneventful, but that changes when you come across an open window with messy prints leading in from it. Examining it more closely, you easily spot a spilled wine up and what is probably satyr sick in the bushes below. While this may have spared the carpets from a smelly mess, it left an avenue of entry for some outside creature. Thankfully, the signs seem fairly fresh, so you close the window and split up to search the nearby rooms for the intruder.";
	say "     You come across them a few exhibits over as they look around the room. They don't seem to be searching for anything in particular, probably just sex as usual. You are about to get Valerie for backup when the creature notices you.";
	now battleground is "Outside";
	fight;
	now battleground is "Museum";
	say "     The commotion draws the sphinx, who ensures that the unexpected intruder is forced from the museum. She thanks you for your assistance and gives you a kiss on the cheek.";
	remove 12 from mrevents;


Section 4 - Activated Rounds

Chapter 13 - Viking Ship Wreckage

to say mrevent13:
	say "***wrecked viking ship";
	remove 13 from mrevents;


Chapter 14 - Cerberus Guard

to say mrevent14:
	say "***intimidate/tlc cerberus to prevent getting ratted on";
	remove 14 from mrevents;


Chapter 15 - Hyena Damage Control

to say mrevent15:
	say "***repair hyena break-in";
	remove 15 from mrevents;

Museum Rounds ends here.
