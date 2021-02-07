Version 2 of Francois by AGentlemanCalledB begins here.
[Version 2.1 - More baking items, alternate bakery loss scene by Ecroose]
"Adds a Male mutt NPC named Francois to the Flexible Survival game"

[This is an example message ]

[This is an example message ]

[This is an example message ]

[This is an example message ]

[This is an example message ]

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Gourmet Treats	"Gourmet Treats"

Gourmet Treats is a situation.
ResolveFunction of Gourmet Treats is "[ResolveEvent Gourmet Treats]". The level of Gourmet Treats is 8.
Sarea of Gourmet Treats is "High".

when play begins:
	add Gourmet Treats to BadSpots of MaleList;       [random encounter may involve male opponents]
	add Gourmet Treats to BadSpots of FemaleList;     [random encounter may involve female opponents]
	add Gourmet Treats to BadSpots of FurryList;     [random encounter will involve canine opponents]

to say ResolveEvent Gourmet Treats:
	if HP of Karen is 1:
		say "     While traveling through the high rise district, you come across what you can only assume is the strange bakery Karen mentioned. While the boarded-up windows prevent you from seeing inside, the large sign above the door makes it clear that this is the place. The weathered sign reads Bone-Appetit and features a rather plump cartoon canine in a chef's uniform. Eager to follow through with your plan to free yourself from Rex, you reach for the door handle. Slowly pulling the door open a crack, you peer inside the building; noticing some movement and groaning near the back counter, you pause for a moment before steeling yourself and swinging the door open.";
	else:
		say "     While traveling through the high rise district, you come across a rather unusual-looking building. While the boarded-up windows prevent you from seeing inside, the large sign above the door proclaims the place to be some sort of pet bakery. The weathered sign reads Bone-Appetit and features a rather plump cartoon canine in a chef's uniform. With the exception of the boarded-up windows, the exterior of the building appears relatively undamaged; thinking there may still be some useful supplies within, you decide to step inside.";
	WaitLineBreak;
	let T be a random number between 1 and 4;
	say "     A bell above the door jingles loudly as you step inside, [if HP of Karen is 1]and the creatures in the back quickly turn their attention to the unexpected intruder[else]and you curse yourself as you spot a group of creatures near the back of the store turning to investigate the source of the noise[end if]. Surveying the scene, you quickly realize you've walked in on a [if T is 1]small pack of huskies[else if T is 2]group of German shepherds[else if T is 3]small pack of Chocolate Labs[else if T is 4]pair of Retrievers[end if] who have captured another creature and are having some fun with their prize in the secluded bakery. As the canines move towards you, there is a weak cry for help from their prisoner, a survivor? Realizing there is more at stake here than you originally expected, you drop your pack and prepare yourself for the approaching [if T is 1]huskies[else if T is 2]German Shepherds[else if T is 3]Labs[else if T is 4]Retrievers[end if].";
	WaitLineBreak;
	if T is 1:
		say "[BakeryHusky]";
	if T is 2:
		say "[BakeryGShep]";
	if T is 3:
		say "[BakeryChocLab]";
	if T is 4:
		say "[BakeryRetriever]";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     Having dealt with the intruder, the canines return to the other survivor, and as you lay beaten on the floor, you hear the poor fellow begin moaning. The longer you listen, the more his cries begin to shift to submission. The last thing you hear before slipping from consciousness is his cry of ecstasy mingled with his captor's howl of pleasure.";
		WaitLineBreak;
		say "     You eventually awaken some time later, and you are surprised to find yourself on a makeshift bed made from several smaller pieces of furniture and blankets. As you rise to a sitting position, you glance around nervously, looking for the [if T is 1]huskies[else if T is 2]German Shepherds[else if T is 3]Chocolate Labs[else if T is 4]Retrievers[end if] who bested you, expecting them to try and keep you captive as they did the other survivor. Surprisingly, although perhaps for the best, there is no sign of them.";
		say "     'Do not worry, mon ami[if Player is purefemale]e[end if]. They left after having their fun; you're safe here now,' says a voice with a thick French accent. You turn towards the voice, seeing a figure step out of a nearby doorway. He appears to have the features of several species and breeds of domestic animals, a short, stocky canine body and face, covered with a thick coat of fur in many different colors and patterns. There even appear to be feathers poking out from his pelt in several places. Finally, feline ears and tail complete the rather unusual appearance of the hybrid before you.";
		say "     'I appreciate your attempts to save me from those canine ruffians, and I'm sorry it ended the way it did,' he continues. 'I am Francois, master chef, at your service.'";
		now Gourmet Treats is resolved;
		AddNavPoint Bone-Appetit;
		now Resolution of Gourmet Treats is 2; [fought, lost]
		move player to Bone-Appetit;
	else if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having finally dealt with the [if T is 1]huskies[else if T is 2]German Shepherds[else if T is 3]Chocolate Labs[else if T is 4]Retrievers[end if], you chase the last stragglers out the door and block it up behind them, propping up a table and a few chairs against it to keep any others out. Satisfied with the security of the building, you approach the canines['] captive, looking him over before kneeling down to help him to a sitting position. He appears to have the features of several species and breeds of domestic animals, a short, stocky canine body and face, covered with a thick coat of fur in many different colors and patterns. There even appear to be feathers poking out from his pelt in several places. Finally, feline ears and tail complete the rather unusual appearance of the hybrid before you.";
		say "     'Thank you, mon ami[if Player is purefemale]e[end if],' the man says with a strong French accent. 'I shudder to imagine where I'd be had you not come along. I am Francois, master chef, at your service.'";
		now Gourmet Treats is resolved;
		AddNavPoint Bone-Appetit;
		now Resolution of Gourmet Treats is 1; [fought, won]
		move player to Bone-Appetit;
	else:
		say "     Unwilling or unable to continue fighting, you grab your bag and run for the bakery door, flipping a nearby table behind you to block your pursuers['] path on the way out. You continue running for some time, getting plenty of distance between you and the bakery before stopping to catch your breath. Taking a moment to reflect on the situation, you feel a wave of guilt for leaving the captive behind to his fate with the canines.";
		now Resolution of Gourmet Treats is 2; [fought, fled]
		now Gourmet Treats is resolved;
[	RETURNING AFTER FLEEING
		say "     While traveling through the high rise district, you end up back at the pet bakery you fled from previously. You reach for the door handle. Slowly pushing the door open a crack, you peer inside the building again. Not seeing anyone inside, you push the door the rest of the way open. Stepping inside, the first thing you notice is that the air is thick with the scent of canine sex, but there are no other signs of the bakery's previous occupants, neither mutant nor their survivor prisoner.";
		say "     You begin the slow process of sifting through the wreckage of the bakery in search of the treats you originally sought. Searching various bins and displays, you eventually manage to scrounge up a small pile of cookies; while mostly broken and certainly not fresh, you hope they'll still be sufficient to provide the distraction you need.";
		now Gourmet Treats is resolved;]

to say BakeryHusky:
	challenge "Husky Bitch";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     After dealing with the first husky, you turn your attention to the other two. The large alpha gives you a smug smirk as he swats the ass of the female beside him, sending her running towards you, barking eagerly.";
		challenge "Husky Bitch";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With the second bitch dealt with, you scan the room for the remaining canine, realizing too late that he has circled around you while you were dealing with his female companion. The large male leaps towards you as you turn.";
			let bonus be (( perception of Player + dexterity of Player minus 20 ) divided by 2 );
			if "Wary Watcher" is listed in feats of Player, increase bonus by 3;
			if "Bad Luck" is listed in feats of Player, decrease bonus by 2;
			if bonus > 12, now bonus is 12;
			let dice be a random number from 1 to 20;
			say "     You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
			WaitLineBreak;
			if bonus + dice > 15:
				say "You narrowly manage to avoid the surprise attack, rolling out of the way as the husky tumbles into a nearby table and chairs. The large canine slowly raises to his feet, shaking his head clear before turning to face you.";
			else:
				say "The husky's attack takes you by surprise, bowling you over as he sends you both tumbling into a nearby table and chairs. The large male pins you to the ground for a moment, barking in your face as he grinds his stiff cock against your body. Fortunately you manage to grasp a nearby piece of the crushed table. After smashing it against the back of his head, you push the stunned canine off you, scrambling to your feet as he shakes his head clear before turning to face you. (15 dmg taken)[line break]";
				decrease HP of Player by 15;
			challenge "Husky Alpha";

to say BakeryGShep:
	challenge "German Shepherd Male";
	if fightoutcome >= 10 and fightoutcome <= 19:
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "German Shepherd Male":
				now MonsterID is y;
				break;
		say "     With the first German shepherd dealt with, you survey the room in search of your next opponent, realizing too late that one of the hounds is missing. Suddenly you are grabbed from behind, your arms twisted behind your back by the sneaky canine. You struggle as best you can against the shepherd, trying to break free from his grasp";
		let escape be 0;
		let playernum be a random number between 1 and strength of Player;
		let shepnum be a random number between 1 and str entry;
		if Playernum > shepnum:
			increase escape by 1;
			say " and feels his grip weakening as a result.";
		else:
			say ", but the shepherd simply chuckles at your effort, twisting your arm painfully as he tightens his grip.";
		WaitLineBreak;
		say "     Unable to break out of his grip, your canine captor begins licking at the back of your neck and nibbling at your ears as the other two shepherds move towards you. While the two canines begin stripping you of your gear, you continue struggling, desperate to break free, but the effort of your continued struggles begins to weigh on your stamina";
		let playernum be a random number between 1 and (strength of Player + stamina of Player);
		let shepnum be a random number between 1 and (str entry + sta entry);
		if Playernum > shepnum:
			say ". Fortunately the same is true of your enemy and you feel his grip slipping[if escape is 1] further[end if] as a result of your efforts.";
			increase escape by 1;
		else:
			say ". Unfortunately the same is not true of your enemy, and despite your best efforts you make no headway.";
		WaitLineBreak;
		if escape < 2:
			say "     Too tired to continue fighting against your captor, the three canines quickly begin having some fun with you. One canine begins [if Player is herm]sucking and licking at your rising cock and moistening pussy[else if Player is male]sucking and licking at your rising cock[else if Player is female]sucking and licking at your moistening cunt[else]licking at your groin[end if], while the second brings his muzzle to your lips, pulling you into a deep kiss. Meanwhile the shepherd 	binding your arms continues playing at your neck and ears while grinding his stiffening rod into your back. Eventually this sexual assault slowly abates, as the Shepherd kissing you pulls away with a grin, growling to his companion at your groin before pushing him aside roughly. As the shepherd before you pulls back his sheath with a smirk, you feel the grip of the one binding your arms loosen slightly. If you're going to escape, now would be the time.";
			if player is herm:
				CreatureSexAftermath "German Shepherd Male" receives "OralCock" from "Player";
				CreatureSexAftermath "German Shepherd Male" receives "OralPussy" from "Player";
			if player is male:
				CreatureSexAftermath "German Shepherd Male" receives "OralCock" from "Player";
			if player is female:
				CreatureSexAftermath "German Shepherd Male" receives "OralPussy" from "Player";
			let playernum be a random number between 1 and (100 - Libido of Player);
			let shepnum be a random number between 30 and 100;
			if Playernum > shepnum:
				increase escape by 1;
		if escape is 2:
			say "     Gathering all your strength, you manage to rip your arms free from your captor and quickly drive your elbow into his stomach. Turning rapidly, you kick the second startled Shepherd hard enough that he stumbles backwards into the third canine, who collapses with the sudden weight of his pack-mate. Without missing a beat, you turn back to your still-winded captor, grab a nearby stool and smash it across his face, knocking him out cold before you ready yourself to face your next opponent, who has managed to disentangle himself from his companion and is already moving to engage you.";
		else:
			say "     The thought passes however, as your lust-filled mind can only register the approach of a lovely cock towards your needy body. Chuckling slightly at the stupefied look on your face, the shepherd grabs your legs and tosses them over his shoulder. He rubs his cock over your [if Player is female]pussy[else]ass[end if] to make sure it's well lubed, then pushes inside of you with a painful slowness. You whimper and moan as he teases your innards with his member, turning you into a begging slut by the time he finally bottoms out. The shepherd that had formerly been holding your arms shifts his grip as his companion starts to thrust into you, then resumes his licking, adding a few whispers about what a needy bitch you are to cause you to blush in shame. After a few minutes of this treatment, the canine behind you growls slightly in frustration before he pushes you onto the one fucking you.";
			say "     Without missing a beat, the shepherd pulls out and quickly repositions your body before driving his cock straight back into you. He roughly bounces you up and down on his shaft, and after the first few thrusts, your arms and legs are wrapped around him as he continues his rough fucking. Your mind dimly registers the sound of something heavy being dragged, but you're too busy yipping like a bitch in heat to pay attention. That is probably why you don't expect when your partner suddenly detaches your arms from around his body and you fall backwards. You flail in midair for a moment before your back slams into a table that the other shepherd moved over to where you were being fucked. As you gasp in pain, one of the other two shepherds grabs your head and shoves his meat down your throat. You can feel your mind slipping a bit thanks to the lack of oxygen combined with the pleasure of the two canines['] brutal fucking. It becomes hard to think about anything besides finishing this before you pass out. You can feel the third Shepherd grab one of your hands and rub it up and down his meat. Your feeble mind manages to grip your hand around it as he pumps it up and down, and before long you're stroking his pulsing shaft without his encouragement.";
			say "     Soon you can feel each of their knots as they pound your mouth and [if Player is female]pussy[else]ass[end if], their thrusts getting harder and faster as they get close, the third thrusting into your hand as you pump up and down his shaft. Finally, they cum, shooting their loads into your body from both ends. You feel their thick knots pressing against your mouth and [if Player is female]cunt[else]ass[end if], but they hold them just outside as they fill you up. After a few pumps of cum, they both pull out and start painting your face and body with their cum along with the shepherd you've been stroking off.";
			CreatureSexAftermath "player" receives "[if player is male]AssFuck[else if player is herm and a random chance of 1 in 2 succeeds]AssFuck[else if player is herm]PussyFuck[else if player is female]PussyFuck[end if]" from "German Shepherd";
			CreatureSexAftermath "Player" receives "OralCock" from "German Shepherd";
			infect "German Shepherd Male";
			infect "German Shepherd Male";
			WaitLineBreak;
			now fightoutcome is 21;
	if fightoutcome >= 10 and fightoutcome <= 19:
		challenge "German Shepherd Male";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     With another shepherd beaten, you bring your attention to the final hound.";
			challenge "German Shepherd Male";

to say BakeryChocLab:
	challenge "Chocolate Lab";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     With the first confectionary canine beaten, you turn your attention to the next chocolate hound.";
		challenge "Chocolate Lab";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having dealt with your second opponent, you quickly scan the room for the third and final lab.";
			challenge "Chocolate Lab";

to say BakeryRetriever:
	challenge "Retriever Female";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     With the first of the two golden-furred canines defeated, your attention is quickly drawn to the second as she barks happily before rushing towards you.";
		challenge "Retriever Female";

Section 2 - Location

Table of GameRoomIDs (continued)
Object	Name
Bone-Appetit	"Bone-Appetit"

Bone-Appetit is a room. It is fasttravel. It is private.
Description of Bone-Appetit is "[BoneAppetitdesc]".

instead of sniffing Bone-Appetit:
	say "     Despite the lack of any product on display, the small bakery still has a strangely warm, meaty aroma[if FaceName of Player is listed in infections of Caninelist] that quickly has you salivating hungrily[end if], which you can only assume is the result of the many hand made pet treats that used to line the shelves.";

to say BoneAppetitdesc:
	if HP of Francois is 0:
		say "     Now that the coast is clear, you have a chance to look over the damaged bakery Francois is calling home. Clearly the place has seen better days. It looks like the bakery may have been an early target for infected, with a lot of torn and stained clothing scraps strewn throughout the debris. Most of the furniture is flipped or damaged, the display cases and shelves are barren and many are smeared with dried fluids. Apparently the creatures were here to sate more than just their mundane appetites.";
	else if HP of Francois > 0:
		say "     The small bakery looks like it has been cleaned up considerably since the first time you were here. Though the windows are still boarded up, Francois has cleaned most of the clutter and debris out of the front room and arranged the remaining tables and chairs neatly around the space. The counters and displays are all bare, but clean, and he has even [if daytimer is day]opened a skylight[else]gathered some candles[end if] to light the space.";

Section 3 - Francois

Table of GameCharacterIDs (continued)
object	name
Francois	"Francois"

Francois is a man. Francois is in Bone-Appetit.
[Physical details as of game start]
ScaleValue of Francois is 3. [human sized]
Body Weight of Francois is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Francois is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Francois is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
SleepRhythm of Francois is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Mouth Length of Francois is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Francois is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Francois is 5. [length in inches]
Cock Count of Francois is 1. [One cock]
Cock Girth of Francois is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Francois is 8. [Eight Inches]
Ball Size of Francois is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Ball Count of Francois is 2. [Two balls]
Cunt Count of Francois is 0. [No pussy]
Cunt Depth of Francois is 0. [No Cunt]
Cunt Tightness of Francois is 0. [No Cunt]
Clit Size of Francois is 0. [size 1-5, very small/small/average/large/very large]
Asshole Depth of Francois is 12. [inches deep for anal fucking]
Asshole Tightness of Francois is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Nipple Count of Francois is 2. [2 nipples]
Breast Size of Francois is 0. [Flat at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Francois is false. [can not take oversized members without pain]
Sterile of Francois is true.
PlayerMet of Francois is false.
PlayerRomanced of Francois is false.
PlayerFriended of Francois is false.
PlayerControlled of Francois is false.
PlayerFucked of Francois is false.
OralVirgin of Francois is true.
Virgin of Francois is true.
AnalVirgin of Francois is true.
PenileVirgin of Francois is true.
SexuallyExperienced of Francois is false.
MainInfection of Francois is "".
Description of Francois is "[Francoisdesc]".
Conversation of Francois is { "Numnum!" }.
The icon of Francois is Figure of Francois_icon.
understand "Francis" as Francois.
understand "Francois" as Francois.
Francoistalk1 is a truth state that varies. Francoistalk1 is normally false.

the linkaction of Francois is "Possible Actions: [link]talk[as]talk Francois[end link], [link]smell[as]smell Francois[end link], [link]fuck[as]fuck Francois[end link], [link]Bake[as]Bake Francois[end link][line break]".

the scent of Francois is "     Francois has a light male musk, difficult to catch over the smells pervading the bakery.".

to say Francoisdesc:
	say "     Francois, the unusual hybrid before you, has an appearance that can only be described as a mutt. His short, stocky canine body and face are covered with a thick, mottled coat of fur made up of several different colors and patterns. There even appear to be small feathers poking out of his pelt in several places. Finally, a rather feline set of ears and tail complete the appearance. He wears a surprisingly clean white apron over his torso, which does a reasonable job of protecting his decency while still allowing his long tail to flit about unhindered.";

Instead of conversing the Francois:
	if HP of Karen is 6 and retriever girl is listed in companionList of Player:
		say "     Francois greets you with a smile as you approach. 'Ah, mon ami[if Player is purefemale]e[end if], good to see you again! And who is this you've brought with you?'";
		say "     'It's me, Karen,' she responds. 'We were hoping you could help me out with-'[line break]";
		say "     'Karen! Mon Dieu, I had feared the worst mon amie,' Francois interrupts, stepping around the counter and placing a small kiss on each side of her muzzle before pulling her into a hug. After breaking off, Francois motions towards one of the tables near the front of the store. The three of you sit and chat for a while, regaling the mutt with the tale of your escape from Rex before Karen finally asks him about her past. 'Ah, désolé mon amie, we never spoke much of our personal lives, only of our shared interest, les animaux. I recall you mentioning being a student at the college, but I am afraid that's all I know.'";
		say "     'Well, it's more than I knew before,' Karen responds. 'Thank you, Francois, for everything. I might not even be here if not for you helping our friend here escape from Rex,' she says, smiling at you before leaning in and giving him a timid kiss on the cheek. Soon after the conversation draws to a close, you and Karen gather your things and prepare to head back out into the city as Francois returns to his work behind the counter.";
		now HP of Karen is 7;
		now Forgotten Past is active;
	else if HP of Karen is 2:
		say "     Realizing Francois and his bakery must be the place Karen mentioned, you decide to explain your situation to Francois, recounting the entire story that lead you to your position with Rex and your plot to escape.";
		say "     'Mon Dieu, poor Karen,' Francois replies solemnly after hearing your tale, 'but at least it is not too late [if Libido of Francois >= 3]for you, mon petit chou[else]to repay mon héro[end if].";
		say "     Without another word Francois gets to work, gathering a few supplies before starting in earnest. Soon the entire bakery is filled with the warm scents of his work, and you find your mouth watering[if BodyName of Player is not listed in the infections of Caninelist and FaceName of Player is not listed in infections of Caninelist], despite knowing they are snacks intended for dogs[end if].";
		say "     Eventually Francois finishes his work and returns with a small paper bag filled with fresh treats. [if BodyName of Player is listed in the infections of Caninelist or FaceName of Player is listed in infections of Caninelist or hunger of Player > 60]The enticing scent wafting from the bag in your hands proves to be too much, and you eagerly fish a treat out. Francois simply grins at you as he watches you enjoy a sample of his work. Still licking the last few crumbs of your snack from your lips, you[else]You[end if] stow the bag away in your pack and give Francois your regards before deciding on your next move.";
		now HP of Karen is 3;
		ItemGain Dog Treats by 1;
	else if HP of Francois is 0:
		say "     'I must thank you again, mon ami[if Player is purefemale]e[end if],' Francois says as he steps around the counter, 'but perhaps I could ask another favor of you? I have a desire to create, to expand my art, and there must be so many exotic and interesting new flavors out in this city now. Oh how I would love to experiment with them, but sadly, I am no fighter. I fear I cannot go out there to gather these new ingredients myself, but you, mon [if Player is purefemale]héroïne[else]héro[end if], seem more than capable of surviving out there. If you bring back any potential ingredients you find, I would love to bake something for you[if Player is male], and perhaps I could 'reward' you in other ways as well,' he says, licking his lips as his eyes stray to your groin. 'Just[else]. Just[end if] bring back anything you find and let me know you would like me to [link]bake[as]bake Francois[end link] for you.";
		now HP of Francois is 1;
		say "[FrancoisListCompile]";
	else if Libido of Francois >= 3 and Francoistalk1 is false and a random chance of 2 in 5 succeeds:
		say "     'I was having such difficulty before you came along. I don't know if your coming around is scaring them off now, but I was having no end of trouble before. These hands, they were made for the baking and for the love, not the fighting,' he says, momentarily forgetting he's got paws now. 'Zut alors! How most of them were rude lovers! No passion, no care for their lover, just raw lust.";
		say "     'Even from the girls. I tried to refuse them, but would they listen? Non! They would get what they wanted in the end, but it was always so hollow. I am sad for them[if Player is male]. But I have found a good lover in you, mon délice,' he adds, running his paws over you as he gives you a passionate kiss full of doggy tongue in your mouth[else if Player is female]. But now I have found you, mon amie,' he says with a smile before giving you a kiss on the cheek[else]. But now I have found you, mon ami,' he says with a smile before giving you a kiss on the cheek[end if].";
		now Francoistalk1 is true;
	else if a random chance of 3 in 5 succeeds and Francois_Undiscovered is not empty:
		say "[FrancoisHint]";
	else if a random chance of 1 in 3 succeeds:
		say "     [if daytimer is day]Bonjour[else]Bonsoir[end if], [one of]mon ami[if Player is purefemale]e[end if][or]my friend[at random]. [one of]Comment ça va?[or]Comment allez-vous?[or]How are you?[at random]";
	else:
		say "     [one of]Perhaps I should try to get back into business. I can't help but think my work would be even more popular now[or]I have a much greater appreciation for my work now[or]Perhaps I should go out there and try to find myself a sexy stud[or]Thanks again for the help, mon ami[if Player is purefemale]e[end if][at random].";
	if Libido of Francois is 0:
		now Libido of Francois is 1;

instead of fucking the Francois:
	if Libido of Francois is 0:
		say "     Perhaps you should talk to the friendly mutt first?";
	else if Player is neuter:
		say "     Lacking any gender of your own, you can't quite get up the enthusiasm to play with the friendly French mutt.";
	else if Player is not male:
		say "     'Ah désolé, mon amie. I have never had much interest in what you English call the fairer sex. Ah, but if only you were a man...' he sighs wistfully.";
	else if lastfuck of Francois - turns < 6:
		say "     He licks his muzzle and eyes your crotch, but shakes his head. 'As much as I would relish to opportunity to show you my thanks again, there is so much else that needs to be done. Perhaps a little later though?' he adds with a smile and the brush of a paw down your side.";
	else if Libido of Francois is 1:
		say "[Francoissex1]";
		now lastfuck of Francois is turns;
	else:
		say "     Looking over at the oddly attractive hybrid, you smile and suggest taking a break to have a little fun together. He smiles at your offer and moves up against you, running his paws over your [bodydesc of Player] body. He nuzzles at your chest as he helps you out of your clothes and gear[if Breast Size of Player is 0]. He licks across your manly pecs, teasing your nipples with his tongue[end if]. As you run a hand through his fur and feathers, you wonder exactly what you'd like to do with him.";
		if Libido of Francois is 2:
			say "     Shall you request to [link]mount him (Y)[as]y[end link] or shall you ask him to [link]suck you off (N)[as]n[end link] again?";
			if Player consents:
				say "[Francoissex2]";
			else:
				say "[Francoissex1]";
			now lastfuck of Francois is turns;
		else:
			say "[Francoissexmenu]";
			now lastfuck of Francois is turns;

to say Francoissexmenu:
	now sextablerun is 0;
	now calcnumber is -1;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Mount him";
	now sortorder entry is 1;
	now description entry is "Ask Francois to bend over for you.";
	if Libido of Francois > 3:
		choose a blank row in table of fucking options;
		now title entry is "Get mounted";
		now sortorder entry is 2;
		now description entry is "Give Francois a turn riding you.";
	choose a blank row in table of fucking options;
	now title entry is "Get a blow job";
	now sortorder entry is 3;
	now description entry is "Ask Francois to suck you off.";
	choose a blank row in table of fucking options;
	now title entry is "Give a blow job";
	now sortorder entry is 4;
	now description entry is "Offer to suck Francois off.";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Mount him":
					say "[Francoissex2]";
				else if nam is "Get mounted":
					say "[Francoissex4]";
				else if nam is "Get a blow job":
					say "[Francoissex1]";
				else if nam is "Give a blow job":
					say "[Francoissex3]";
				now lastfuck of Francois is turns;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		wait for any key;
		clear the screen and hyperlink list;


to say Francoissex1:		[Francois performs oral]
	if Libido of Francois is 1:
		say "     Francois smiles at your offer, his ears perking up and his eyes moving right away to your groin. His tongue slides slowly across his muzzle. 'Ah, mon ami, I would very much enjoy the opportunity to thank you for wanting to rescue me. Mmm... mon héro,' he moans sensually in his rich accent, speaking very softly and sexily now. Moving in closer, he runs his paws over your [if scalevalue of Player > 2]larger [end if]body and helps you out of your clothes and gear.";
	else:
		say "     Hearing your offer, he runs his tongue across his muzzle and lets his paws slide downwards. 'Mmm... I would certainly enjoy another opportunity to get another taste of your rich, thick cream, mon héro,' he says softly in his sensual accent. He places a paw on your cock and the other at your ballsack, gently caressing them.";
	say "     Rather than delay any longer, he lowers himself in front of you, licking and sniffing as he goes, taking in your scent. 'Mmm... you have such an [one of]exciting[or]exotic[or]enjoyable[or]interesting[or]alluring[at random] flavor,' he moans as he slathers his canine tongue back and forth over your maleness[if Cock Length of Player > 24]. 'And so very big! C'est magnifique! I shall enjoy this greatly[else if Cock Length of Player > 12]. 'And so big! I shall enjoy this very much[else]. 'I shall enjoy this[end if],' he adds, rubbing your cock with his paws before licking across your glans, lapping up the first dribbles of precum.";
	say "     He takes his good, sweet time licking at your [cock size desc of Player] [Cock of Player] erection, lavishing attention on it as he savors your rich, masculine flavor before finally opening his muzzle [if Cock Length of Player > 24]extra-wide [else if Cock Length of Player > 12]fully [end if]and taking it inside. He is quite careful with his teeth, only using them very lightly to add extra stimulation while his tongue plays across your pulsing length. It's clear that the Frenchman's had plenty of practice at this even before his transformation as well as after, given how well he's working his muzzle over your shaft. You stroke his canine head and rub his feline ears, getting him to smile a little at the corner of his mouth.";
	if Libido of Francois is 1 or a random chance of 1 in 2 succeeds:
		say "     While it's clear he knows how to make it last, he's quite eager to get his tasty treat. He works his muzzle [if Cock Length of Player > 12]and throat [end if]over your cock while his paws knead at your nuts. These last he works softly, caressing them with care to get you all the more excited. With such an eager mutt hard at work on your shaft, you don't hold out very long and are soon sending your [Cum Load Size of Player] load down his throat, giving him the thick, musky semen he's been after[if Ball Size of Player > 5]. Your [Cum Load Size of Player] load plumps up the small hybrid's belly considerably, leaving him nicely rounded with cum[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load adds some visible inches to his belly as you fill him up[end if]. He licks his muzzle, rolling the cum left in his muzzle around on his tongue so he might enjoy its flavor. 'Mmm... quel délice, mon ami. Such a rich[if Ball Size of Player > 4], filling[end if] treat.' He rubs a paw over his belly and gets up slowly.";
	else:
		say "     This time the horny hybrid decides to take his good, sweet time with you, working his muzzle over your throbbing meat with his muzzle [if Cock Length of Player > 12]and throat[end if] with all his considerable skill. His paws knead at your ballsack, rolling around those cum-filled orbs as he works with care to build you to greater and greater heights. He knows many delightful tricks to do with his tongue, made all the better by the long, canine one he now has. By the time he's sucking down hard at your cock and bobbing quickly across your shaft, your balls feel achingly full. You grab his head and pull his muzzle forward, jamming your full length into the sexy cur and cum with a loud moan. Unleashing your [Cum Load Size of Player] load down his throat, you send [if Ball Size of Player > 5]burst after burst of thick seed into your eager lover until his belly is plump and rounded with it all[else if Ball Size of Player > 4]shot after shot of thick seed into your eager lover until his belly has gained a few inches from it all[else]spurt after spurt until those balls of yours finally feel drained[end if]. Spent, you sag down into a chair, smiling down at the mutt as he licks his muzzle with grin, clearly aware of how his fellatio's affected you. He licks his muzzle, rolling the cum left in his muzzle around on his tongue so he might enjoy its flavor. 'Mmm... very nice, mon ami. Such a rich[if Ball Size of Player > 4], filling[end if] treat.' He rubs a paw over his belly and gets up slowly.";
		NPCSexAftermath Francois receives "OralCock" from Player;
	if Libido of Francois is 1, increase Libido of Francois by 1;


to say Francoissex2:		[mounting Francois]
	if Libido of Francois is 2:
		say "     Upon hearing your request, he presses his body to yours, paws running over your [bodydesc of Player] form. 'Oh, I very glad to hear you ask me, mon ami. Those others who would find me and use me would show no such courtesy.' As he speaks, he slips his paws down to your groin, taking a hold of your maleness and caressing it. 'It would be my pleasure to have this [if Cock Length of Player < 5]adorable[else if Cock Length of Player < 8]fine[else if Cock Length of Player < 16]impressive[else]mighty[end if] shaft of yours inside me,' he adds while rolling your balls around with his other paw.";
	else:
		say "     His tail flicks up reflexively when you ask to mount him again. His paws quickly slide down your [bodydesc of Player] body to your loins, taking a hold of your maleness. 'Certainement, mon ami. You were so wonderful the last time, how could I say non? Give me but a moment to get this [if Cock Length of Player < 5]adorable[else if Cock Length of Player < 8]fine[else if Cock Length of Player < 16]impressive[else]mighty[end if] cock of yours ready,' he says as he strokes your stiffening member and cum-filled balls.";
	say "     Rather than delay any longer, he lowers himself in front of you, licking and sniffing as he goes on his way to the prize. 'Let's get this lovely... delicious... cock of yours ready to go, mon ami,' he moans as he slathers his canine tongue all over it, getting you nice and slick while he enjoys the musky taste of your maleness[if Cock Length of Player > 24]. Given the size of your [cock size desc of Player] cock, the mismatched hybrid takes his time, making sure you're nice and slick all over[else if Cock Length of Player > 12]. Given the size of your [cock size desc of Player] cock, the mismatched hybrid spends some extra time licking you, making sure you're nice and slick all over[else]. The mismatched hybrid, while he's down there, takes the opportunity to stuff your cock in his muzzle so he can lick and suck at you to get you all nice and slick[end if] before ";
	if Libido of Francois is 2 or a random chance of 3 in 5 succeeds:
		if Libido of Francois is 2 or a random chance of 1 in 3 succeeds:
			say "moving into position by leaning against the counter and raising his tail. His furry bottom on display for you, he grins and wiggles his hips. Needing no more invitation, you move in behind the horny guy, pressing your slick shaft against his pucker.";
		else if a random chance of 1 in 2 succeeds:
			say "getting up and leaning over with his paws gripping the back of one of the chairs. He grins back at you as sways his rear in a sensual display. Not that you need the added enticing, but it certainly gets you atop him all the faster, guiding your slick shaft into position under his feline tail.";
		else:
			say "heading over to one of the shorter tables and laying down overtop of it. He grins back at you and swishes his tail while spreading his legs, offering himself up to you. Taking your achingly hard cock in hand, you move into position and rub your slick, dribbling glans across his tailhole.";
		say "     Francois moans something sensual, and probably quite dirty from the sounds of it, in French, gripping his support and rubbing his rear back against you. You take your time easing into him, finding his tailhole spreading open with [if Cock Length of Player > 24]a little[else if Cock Length of Player > 12]a bit of[else]no real[end if] effort. Whether it's from the various creatures who've been having their way with him, a property of his mixture of infections or just practice from before the outbreak doesn't really matter much to you right now, your [cock size desc of Player] [Cock of Player] shaft just excited to have a hot, tight hole to fill after all that talented tonguework. Not that his rear is lacking in any expertise, the plump guy rocking his hips and squeezing down on you as you fuck him.";
		say "     As you pump into the cute hybrid, you run your hands over his unique body, feeling his altered form and how it all seems to somehow come together into an adorable whole. You lean overtop of the stocky guy and nuzzle at his head, giving his ears a nibble and getting something akin to a purr in return. Reaching around, you take his cock in hand[if Libido of Francois is 2] for the first time and start stroking him off while you pound into him. Having kept it hidden under his apron, he's fairly well hung, a good 8 inches. It has a growing knot at its base and tapers to a feline shape at the top. You can feel a mix of kitteny soft fur and downy feathers covering his ballsack[else] and start stroking his hybrid canine-feline cock and playing with his softly furred and feathered ballsack[end if].";
		say "     'Ah oui! Comme-çà,' he moans as you rub your fingers along his cock. Taking that as a good sign, you keep stroking him in that manner and pound into him all the faster. 'Fourrez-moi! Plus dur! Au, que c'est bon!' Lost in the excitement, he goes on in French, but clearly wants more and you're more than happy to give it to your gay lover, driving into his ass again and again until you groan loudly and cum hard. Shot after shot of your [Cum Load Size of Player] load pumps into him, his own seed splattering onto the floor moments later[if Ball Size of Player > 5]. As you send more and more semen into the small hybrid's belly, it grows rounder and fuller until he's nice and plump with your cum[else if Ball Size of Player > 4]. As you send more and more semen into the small hybrid's belly, it gradually gains a couple more inches from your cum stuffing him[end if]. Only once you're done[if Player is knotted] and your knot has gone down[end if] do you pull out of his creamy ass[if Ball Size of Player > 5]. A sticky mess of cum comes flowing out[else if Ball Size of Player > 4]. Quite a bit of cum comes flowing out[else]. A small amount of cum leaks out[end if] of his creamy hole before he reaches back to wipe it up with his paw and lick it from his fingers.";
		say "     'That was exquisite, mon ami. We shall definitely have to do that again... and again... and again...' he says sensually in his beautiful accent while running his paw over your body. He adjusts his groin and straightens his crumpled apron with a grin before making his way slowly back to what he was doing, clearly moving with care to keep your [Cum Load Size of Player] load inside him a little longer.";
	else:
		say "stretching out on his back across [if scalevalue of Player < 3]one of the low tables[else if scalevalue of Player is 3 or scalevalue of Player is 4]one of the tables[else]the counter with your help[end if]. With his legs apart and his paws spreading his cheeks in a wanton display, he moans for you to take him now. With such an offer after his expert tonguework has gotten you worked up, you move into position quickly, kissing your slick glans against his waiting pucker.";
		say "     As you sink your cock into your hybrid lover, he pulls you overtop of him into a passionate kiss, his canine tongue slipping into your mouth to dance with yours. He moans and holds the kiss as long as he can while you pound into his tight rear[if Cock Length of Player > 12], his talented hole easily accommodating your [cock size desc of Player] meat[else], his practiced hole taking your [cock size desc of Player] meat in with ease[end if]. But as before, he's still quite tight around you and very adept at working his hips and inner walls to the delight of you both. Finally, and with a wet slurp of his long tongue pulling free, he must break the kiss so he can moan loudly in pleasure.";
		say "     'Ah oui! Fourrez-moi!' he moans as you pound away at him. Noticing his apron has tented up, you grin down at him and rub over his hidden erection. He chuckles and flips his apron up, freeing you to grab his hips and drive into him all the harder while he plays with his cock and balls. He tries to take it slow and make a show of it for you, but you're both getting quite worked up by this point and won't last much longer. And the sight of his paws sliding over his eight inches of manmeat with its shapely mix of canine and feline features certainly isn't helping you hold back.";
		say "     You lick your lips and knead his hips as you hold onto them, driving into him a few last times before cumming. 'Oui! Oui! Mon Dieu, oui!' he cries out as he feels your [Cum Load Size of Player] load shooting into him, setting him off. Gooey splatters of his seed, rich with a mix of canine, feline and avian scents, spray across his apron as well as a few reaching his face and muzzle. These last he licks up while he pumps the rest of his spurting load onto the white cloth[if Ball Size of Player > 5]. As you send more and more semen into the small hybrid's belly, it grows rounder and fuller until he's nice and plump with your cum. In the end, he's left heavy and overfull, leaking your seed from his creamy asshole, unable to get up until much of it has drained or been absorbed[else if Ball Size of Player > 4]. As you send more and more semen into the small hybrid's belly, it gradually gains a couple more inches from your cum stuffing him. In the end, he's left leaking from his creamy hole and remains flopped out on his perch while he recovers[else]. Once you're done, he remains flopped out on his perch with a trickle of your semen leaking from his creamy hole while he recovers[end if]. 'Mmm... mon héro,' he sighs softly as he basks in the afterglow.";
		NPCSexAftermath Francois receives "OralCock" from Player;
		NPCSexAftermath Francois receives "AssFuck" from Player;
	if Libido of Francois is 2, increase Libido of Francois by 1;


to say Francoissex3:		[player performs oral]
	if Libido of Francois is 3:
		say "     In the mood to return the favor to the friendly mutt, you let your hands wander downwards and slide them under his apron. He moans softly as you take a hold of the plump sheath and heavy orbs he keeps hidden behind the white cloth. Leaning in, you give him a kiss, feeling his cock swelling and sliding further from the kitteny-soft fur and downy feathers of its warm home. Teasing the pointed tip, you break the kiss and start to move downwards.";
		say "     'Are you sure, mon ami? It is a little... strange...' he says with a bit of embarrassment at his transformed nature. To reassure him, you smile and nod, flipping up his apron so you can get a good look at his waiting erection. As you've felt in the past, it's got a very feline shape, though also possessing a growing knot at its base. What you could not tell before is that it has a mottled pattern of colors, ranging from dark black and browns to pinks to near white in a few spots. Some of the changes are abrupt while others fade from one to another. This patchwork color scheme extends to his sheath as well, varying textures, patterns and colors of fur, and even a puff of red feathers at the underside of his ballsack.";
		say "     It is certainly unusual, but given all you've seen and experienced in the city, it is certainly not unappealing. If anything, the more you look at it, the cuter and more interesting its patterns appear. Noticing that you've been staring at it overly long and the hybrid is starting to get embarrassed again (as well as going soft), you take it in hand confidently, aim it towards your mouth and dive onto it.";
	else:
		say "     Wanting another go at the hybrid's unique cock, you let your hands wander downwards and slide them under his apron. He moans softly, pulling you into a kiss, slipping his canine tongue into your mouth. His talented tongue fences agilely with yours while you grope him, playing with his soft sheath and coaxing him to full erection. Once you've gotten him ready, you break off the kiss together and lower yourself in front of him. Smiling, he pauses only briefly before pulling up his apron to expose himself to you, letting you at his very unique and interesting cock.";
		say "     You let your eyes run over unusual, mottled patterns of its flesh for a moment before leaning forward and running your tongue slowly along the feline length. He moans softly and his cock twitches, a dribble of precum running down. This first taste has a decidedly [one of]canine[or]feline[or]avian[as decreasingly likely outcomes] flavor that is quite pleasant. You give him several more licks while caressing his ballsack, stroking the soft fur and feathers covering it. After your playful taste test, you drag your tongue from base to tip along its sensitive underside before aiming his cock into your mouth and sucking down on it.";
	say "     Francois rubs his paws over your head, rubbing gently as you bob over his cock. Knowing your lover's quite experienced, you do your best to please him. Giving it your all, you work your tongue, lips, mouth and palate over his throbbing meat, paying attention to his responses so you can properly satisfy him. And your fingers get in one the action as well, rubbing at his knot when your lips aren't kissing at it and caressing his balls when they are. As you work his length in your muzzle, it dribbles with precum, providing varying musky tastes for you to savor on your tongue. Often having a clear canine flavor, at times you get something that reminds you more of cats or birds. You find yourself trying to see what new taste you can get him to release with every hard suck.";
	if anallevel is 3 and a random chance of Libido of Player in 100 succeeds:
		say "     Wanting to add some extra fun for you both and ensure you get the biggest bang you can from the hybrid mutt, you slip a [if scalevalue of Player > 3]finger into your mouth to get it slick before bringing it[else]pair of fingers into your mouth to get them slick before bringing them[end if] around under his tail. He moans and flips his tail up with a grin and a pant, relaxing his back entrance as you spread your saliva over it, gradually working your way into his asshole. Fingering him, you pick up the pace with the blow job and rub against his prostate, making his hips quiver. 'Oui, juste là. J'suis proche,' he pants in French, his paws moving to your shoulders for support as his cock and balls twitch. Grinning around his cock, you don't let up, working him to a fast and strong climax that has him pumping his flavorful cum down your throat. You swallow it all down happily and lick your lips when you release his spent shaft";
	else if a random chance of Libido of Player in 100 succeeds:
		say "     You keep it up, working to please the friendly fellow with the many tricks you've been learning. As his knot swells, you put a hand around it, squeezing gently as if he'd managed to tie with a tight hole. This has him yip in surprise and pleasure, his hips quivering. 'J'suis sur le point de jouir,' he pants in French, his paws moving to your shoulders for support as his cock and balls twitch. Quite certain he's close now, you pull back, wrapping your free hand around his throbbing shaft and pumping it quickly. Driven over the edge by this, he cums hard, splattering his creamy load all over your face. You lick what you can get of his seed running past your lips, but are quite pleased to have your friend's load coating your face";
	else:
		say "     You keep it up, working to please the horny hybrid with your mouth. Longing for the prize but not wanting to rush it, you do your best to work him up, playing your tongue across his cock while you roll around the warm handful that are his balls. As his knot swells, you push your mouth fully down onto his cock, working your lips over that swollen, sensitive bulb and sucking down on him hard. This has him bark in surprise and pleasure, his hips quivering. 'J'veux jouir dans ta bouche,' he pants in French, his paws moving to your shoulders for support as his cock and balls twitch. Quite certain he's close now, you curl your tongue around his shaft and slide along it, squeezing gently while taking him into your throat. Driven over the edge by this, he cums hard, sending his rich, flavorful cum into your mouth and down your throat. You let his cum pool on your tongue, and once he's spent, you release his shaft to show him the creamy mouthful you've got before swallowing it down";
	if Libido of Francois is 3:
		say " as a final show of how comfortable you are with his uniquely beautiful cock";
	say ".";
	say "     When you're done, the spent hybrid sags back into a nearby chair, panting softly. 'Oh, thank you, mon ami. That was very, very nice,' he says with a smile, casually readjusting his apron.";
	NPCSexAftermath Player receives "OralCock" from Francois;
	francoisinfect;
	if Libido of Francois is 3, increase Libido of Francois by 1;


to say Francoissex4:		[player receives anal]
	if Libido of Francois is 4:
		say "     Eager to give your French lover a turn mounting you, you slide your hand under his apron and start groping him while leaning in for a kiss. His canine tongue slips into your mouth, sliding across yours as you get his manhood to rise fully from its sheath. Once he's good and ready, you turn around and bend over, leaning on one of the tables as you raise your ass invitingly. With your tight hole on display, he can't help up lick his lips as his cock twitches under his apron. He places his paws on your rear and nuzzles between your cheeks, letting that slippery tongue of his glide across your flesh and slather across your proffered anus, getting you slick and ready[if anallevel is 3]. The hybrid's tongue even worms its way into you, licking into your hole to prepare you fully for mounting[end if].";
		say "     After some very enjoyable licking, he decides you're ready and pulls his muzzle back, moving in to mount you. As his hybrid cock moves into position, he pauses for a moment, as if unsure about mounting you with his animalistic penis. Knowing what you want and being familiar with the strange cocks out there these days, you have no such misgivings and push your hips back, sighing in pleasure as his glans pushes into your anus. His moment of uncertainty past, the mongrel pants in pleasure at the feel of your ass around his cock and glides a few more inches into you. He mounts you slowly, running his paws over your [bodydesc of Player] body, making his first time topping you a slow, sensual experience. With his shaft pulsing inside you, he nuzzles at your neck and licks you, sounds like a mix between a rumble and a purr coming from him as he starts thrusting.";
	else:
		say "     Eager to have the mongrel's hybrid penis inside you again, you slip a hand under his apron to get him good and hard while kissing him. As your tongue dances with his in your mouth, you pump at his feline-shaped shaft, coaxing it fully from its sheath and getting it dripping with precum. With your lover ready to ride, you turn around and bend over one of the tables, offering your ass to him again. He licks his muzzle at the sight of it and dives in to lick along your crack. He slathers over your anus, tongue working over[if anallevel is 3] and into[end if] that tight ring of sensitive flesh. As eager as he is, he takes his time getting you ready, clearly enjoying this bit of preparation as well.";
		say "     Upon completing the rimming to his satisfaction (and certainly yours as well), he pulls his muzzle back and moves in to mount you. With his hybrid cock in position, he teases it lightly against your hole and then starts easing his hard rod into you. The feel of his unusual manhood is very enjoyable, the feline shape plunging into you and the growing, canine knot knocking at your anus sending shivers of pleasure through you. His animalistic cock rubs and presses at your prostate with every thrust of your foreign lover. He starts slowly, letting himself sink into you gradually as your rectum adjusts to accommodate the enlarged shaft inside you. His paws glide over you, running over your [cock size desc of Player] [Cock of Player] shaft[smn] and across your [bodydesc of Player] body, making for a very sensual experience as his pace quickens.";
	say "     You rock your hips and squeeze your hole down around him as he fucks you with increasing zeal. His sensual touches and caresses don't stop even as his pace builds until his cock is fucking you like an animal even if his paws are those of a tender lover. You hang on tight and moan in pleasure, loving the mix of sensuality and raw sex that your experienced lover's body can provide. His feathered fur brushes lightly across your back and his furry balls slap against your thighs. Feeling his knot swelling up, you do your best to relax and press your hips back, needing it inside you by this point, lusting to be tied to the sexy mongrel, an action his mutated form is certainly eager to complete as well.";
	say "     'Ah, que je te veux! Le noeud est... presque... là...' he pants, grinding the meaty base of his cock against your tight ring. Your hole stretches further, opening a little more with each thrust. Francois holds your hip firmly with one paw while the other furiously pumps at your [Cock of Player] manhood, not neglecting his lover even as he tries hard to finish the tie. As your anal ring complies and allows the growing knot to pop inside, you both groan in lustful pleasure. His knot swells further, locking his shaft inside you. 'Ahh... je vais te remplir, mon ami. Je jouis. Je jouis!' he cries out in French moments before he cums hard, pumping his hot load into your bowels[if Libido of Francois is 4] for the first time[end if]. This pushes you over the edge and your rod pulses in his paw, spraying your [Cum Load Size of Player] load across the floor. The horny hybrid keeps thrusting even as he cums, stimulating your prostate to keep your orgasm going as well until eventually you both are drained and sag down atop the table, spent and sated.";
	say "     As you're waiting for his knot to go down, Francois snuggles you, running his paws along your [bodytype of Player] body while whispering sweet nothings in a mix of English and French to you. Between these, he often licks and nibbles your ears or kisses your neck and shoulders, enjoying the sensual closeness with you after your lovemaking. It is some time before the hybrid's knot goes down and his cock can slip free. Only a little of the milky white semen leaks out, much of his cum having been absorbed into you during the interim while tied.";
	NPCSexAftermath Player receives "AssFuck" from Francois;


Section 4 - Baking

Francoisbaking is an action applying to nothing.
Understand "bake with Francois" as Francoisbaking.
Understand "bake Francois" as Francoisbaking.
Understand "cook Francois" as Francoisbaking.
Understand "cook with Francois" as Francoisbaking.
Understand "bake with francois" as Francoisbaking.
Understand "bake francois" as Francoisbaking.
Understand "cook francois" as Francoisbaking.
Understand "cook with francois" as Francoisbaking.
Understand "bake with francis" as Francoisbaking.
Understand "bake francis" as Francoisbaking.
Understand "cook francis" as Francoisbaking.
Understand "cook with francis" as Francoisbaking.
Francois_Undiscovered is a list of numbers that varies.
Francois_Discovered is a list of numbers that varies.

to say FrancoisListCompile:
	if FemaleList is not banned:
		add 1 to Francois_Undiscovered; [crème abondante - distilled milk + pink gel]
	if MaleList is not banned and HermList is not banned:
		add 2 to Francois_Undiscovered; [bleuettonne - chocolate milk + blue gel]
	if MaleList is not banned:
		add 3 to Francois_Undiscovered; [boysenberry blossom - Awesome Fruit + blue gel]
	if FemaleList is not banned:
		add 4 to Francois_Undiscovered; [Muffin muffin - Awesomer Fruit + pink gel]
	if HermList is not banned:
		add 5 to Francois_Undiscovered; [lollicock - musky cock flower + honeycomb]
	if HumorousList is not banned and FurryList is not banned and HermList is not banned:
		add 6 to Francois_Undiscovered; [dragon moelleux - dragon heart + glowing ember + chocolate milk]
	if FurryList is not banned and HumorousList is not banned and FemaleList is not banned:
		add 7 to Francois_Undiscovered; [fizz-aux-Pommes - pony cider + soda + crushed candies]
	if FemaleList is not banned and FurryList is not banned and MaleList is not banned:
		add 8 to Francois_Undiscovered; [vin-coeur - crushed candies+ Satyr wine + wyvern goop]
	if FemaleList is not banned and FurryList is not banned and MaleList is not banned:
		add 9 to Francois_Undiscovered; [gingerbread - Egg nog + pixie dust + Blue gel]
	if FemaleList is not banned and FurryList is not banned and HermList is not banned:
		add 10 to Francois_Undiscovered; [cheesecake - cheese + pixie dust + pink gel]

check Francoisbaking:
	If Francois is not visible, say "You should see Francois for that." instead;

carry out Francoisbaking:
	let Francoisbaked be 0;
	If Francois is not visible:
		say "You should see Francois for that.";
	else if HP of Francois is 0:
		say "     Perhaps you should talk to the friendly mutt first?";
	else if Francois_Undiscovered is not empty:
		say "     Emptying out the contents of your bag on the counter, Francois looks each over individually, smelling or even tasting many of them as he considers their culinary potential.";
		if blue gel is owned and Awesome Fruit is owned and 3 is listed in Francois_Undiscovered:
			say "[BoysenberryBlossomGet]";
			remove 3 from Francois_Undiscovered;
			add 3 to Francois_Discovered;
			ItemLoss blue gel by 1;
			ItemLoss Awesome Fruit by 1;
			now Francoisbaked is 1;
		else if pink gel is owned and Awesomer Fruit is owned and 4 is listed in Francois_Undiscovered:
			say "[MuffinMuffinGet]";
			remove 4 from Francois_Undiscovered;
			add 4 to Francois_Discovered;
			ItemLoss pink gel by 1;
			ItemLoss Awesomer Fruit by 1;
			now Francoisbaked is 1;
		else if blue gel is owned and chocolate milk is owned and 2 is listed in Francois_Undiscovered:
			say "[bleuettonneGet]";
			remove 2 from Francois_Undiscovered;
			add 2 to Francois_Discovered;
			ItemLoss blue gel by 1;
			ItemLoss chocolate milk by 1;
			now Francoisbaked is 1;
		else if pink gel is owned and distilled milk is owned and 1 is listed in Francois_Undiscovered:
			say "[CrèmeAbondanteGet]";
			remove 1 from Francois_Undiscovered;
			add 1 to Francois_Discovered;
			ItemLoss pink gel by 1;
			ItemLoss distilled milk by 1;
			now Francoisbaked is 1;
		else if musky cock flower is owned and honeycomb is owned and 5 is listed in Francois_Undiscovered:
			say "[lollicockGet]";
			remove 5 from Francois_Undiscovered;
			add 5 to Francois_Discovered;
			ItemLoss honeycomb by 1;
			ItemLoss musky cock flower by 1;
			now Francoisbaked is 1;
		else if ebonflame scale is owned and glowing ember is owned and chocolate milk is owned and 6 is listed in Francois_Undiscovered:
			say "[dragonmoelleuxGet]";
			remove 6 from Francois_Undiscovered;
			add 6 to Francois_Discovered;
			ItemLoss ebonflame scale by 1;
			ItemLoss glowing ember by 1;
			ItemLoss chocolate milk by 1;
			ItemGain dragon moelleux by 1;
			now Francoisbaked is 1;
		else if soda is owned and pony cider is owned and crushed candies is owned and 7 is listed in Francois_Undiscovered:
			say "[fizz-aux-pommesGet]";
			remove 7 from Francois_Undiscovered;
			add 7 to Francois_Discovered;
			ItemLoss soda by 1;
			ItemLoss pony cider by 1;
			ItemLoss crushed candies by 1;
			ItemGain fizz-aux-pommes by 1;
			now Francoisbaked is 1;
		else if Satyr wine is owned and wyvern goop is owned and crushed candies is owned and 8 is listed in Francois_Undiscovered:
			say "[vin-coeurGet]";
			remove 8 from Francois_Undiscovered;
			add 8 to Francois_Discovered;
			ItemLoss Satyr wine by 1;
			ItemLoss wyvern goop by 1;
			ItemLoss crushed candies by 1;
			ItemGain vin-coeur by 1;
			now Francoisbaked is 1;
		else if egg nog is owned and pixie dust is owned and blue gel is owned and 9 is listed in Francois_Undiscovered: [gingerbread - egg nog + pixie dust + Blue gel]
			say "[gingerbreadGet]";
			remove 9 from Francois_Undiscovered;
			add 9 to Francois_Discovered;
			ItemLoss egg nog by 1;
			ItemLoss pixie dust by 1;
			ItemLoss blue gel by 1;
			ItemGain gingerbread by 1;
			now Francoisbaked is 1;
		else if cheese is owned and pixie dust is owned and pink gel is owned and 10 is listed in Francois_Undiscovered: [cheesecake - cheese + pixie dust + pink gel]
			say "[cheesecakeGet]";
			remove 10 from Francois_Undiscovered;
			add 10 to Francois_Discovered;
			ItemLoss cheese by 1;
			ItemLoss pixie dust by 1;
			ItemLoss pink gel by 1;
			ItemGain cheesecake by 1;
			now Francoisbaked is 1;
		if Francoisbaked is not 1:
			say "     After looking over everything you've brought him, Francois decides none of your potential combinations of ingredients would make a good dish.";
	if Francoisbaked is not 1 and Francois_Discovered is not empty:
		say "     Would you like to have Francois bake a dish you've already discovered? (Y/N)";
		if Player consents:
			say "[FrancoisBakingMenu]";

to say FrancoisBakingMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if 1 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "crème abondante";
		now sortorder entry is 1;
		now description entry is "have Francois bake a crème abondante";
	if 2 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "bleuettonne";
		now sortorder entry is 2;
		now description entry is "have Francois bake a bleuettonne";
	if 3 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "boysenberry blossom";
		now sortorder entry is 3;
		now description entry is "have Francois bake a boysenberry blossom";
	if 4 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "Muffin muffin";
		now sortorder entry is 4;
		now description entry is "have Francois bake a Muffin muffin";
	if 5 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "lollicock";
		now sortorder entry is 5;
		now description entry is "have Francois bake a lollicock";
	if 6 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "dragon moelleux";
		now sortorder entry is 6;
		now description entry is "have Francois bake a dragon moelleux";
	if 7 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "fizz-aux-Pommes";
		now sortorder entry is 7;
		now description entry is "have Francois bake a fizz-aux-Pommes";
	if 8 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "vin-coeur";
		now sortorder entry is 8;
		now description entry is "have Francois bake a vin-coeur";
	if 9 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "gingerbread";
		now sortorder entry is 9;
		now description entry is "have Francois bake some gingerbread";
	if 10 is listed in Francois_Discovered:
		choose a blank row in table of fucking options;
		now title entry is "cheesecake";
		now sortorder entry is 10;
		now description entry is "have Francois bake a cheesecake";
	choose a blank row in table of fucking options;
	now title entry is "Abort";
	now sortorder entry is 11;
	now description entry is "Abort";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number (1-[number of filled rows in table of fucking options])> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			choose row calcnumber in table of fucking options;
			say "Confirmation: Would you like to [description entry]?";
			if Player consents:
				if title entry is "crème abondante":
					if pink gel is owned and distilled milk is owned:
						now sextablerun is 1;
						say "     Francois takes the pink gel and distilled milk from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small tray of creamy pastries, offering one to you as he places the rest into one of his displays.";
						ItemLoss pink gel by 1;
						ItemLoss distilled milk by 1;
						ItemGain crème abondante by 1;
					else:
						say "You do not have the required ingredients: pink gel and distilled milk.";
				else if title entry is "bleuettonne":
					if blue gel is owned and chocolate milk is owned:
						now sextablerun is 1;
						say "     Francois takes the blue gel and chocolate milk from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small tray of chocolates, offering one to you as he places the rest into one of his displays.";
						ItemLoss blue gel by 1;
						ItemLoss chocolate milk by 1;
						ItemGain bleuettonne by 1;
					else:
						say "You do not have the required ingredients: blue gel and chocolate milk.";
				else if title entry is "boysenberry blossom":
					if blue gel is owned and Awesome Fruit is owned:
						now sextablerun is 1;
						say "     Francois takes the blue gel and Awesome Fruit from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small tray of fruit-filled pastries, offering one to you as he places the rest into one of his displays.";
						ItemLoss blue gel by 1;
						ItemLoss Awesome Fruit by 1;
						ItemGain boysenberry blossom by 1;
					else:
						say "You do not have the required ingredients: blue gel and Awesomer Fruit.";
				else if title entry is "Muffin muffin":
					if pink gel is owned and Awesomer Fruit is owned:
						now sextablerun is 1;
						say "     Francois takes the pink gel and Awesomer Fruit from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small tray of muffins, offering one to you as he places the rest into one of his displays.";
						ItemLoss pink gel by 1;
						ItemLoss Awesomer Fruit by 1;
						ItemGain Muffin muffin by 1;
					else:
						say "You do not have the required ingredients: pink gel and Awesome Fruit.";
				else if title entry is "lollicock":
					if honeycomb is owned and musky cock flower is owned:
						now sextablerun is 1;
						say "     Francois takes the honeycomb and musky cock flower from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small tray of red candy cocks, offering one to you as he places the rest into one of his displays.";
						ItemLoss honeycomb by 1;
						ItemLoss musky cock flower by 1;
						ItemGain lollicock by 1;
					else:
						say "You do not have the required ingredients: honeycomb and musky cock flower.";
				else if title entry is "dragon moelleux":
					if ebonflame scale is owned and glowing ember is owned and chocolate milk is owned:
						now sextablerun is 1;
						say "     Francois takes the dark scale, glowing ember and chocolate milk from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a plate of small chocolate cakes, offering one to you as he places the rest into one of his displays.";
						ItemLoss ebonflame scale by 1;
						ItemLoss glowing ember by 1;
						ItemLoss chocolate milk by 1;
						ItemGain dragon moelleux by 1;
					else:
						say "You do not have the required ingredients: ebonflame scale, glowing ember and chocolate milk.";
				else if title entry is "fizz-aux-pommes":
					if pony cider is owned and soda is owned and crushed candies is owned:
						now sextablerun is 1;
						say "     Francois takes the pony cider, soda and crushed candies from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. Rather than the usual warm aromas of his cooking, you merely hear plenty of mixing and stirring. Eventually Francois returns with a pitcher filled with a fizzing amber liquid, offering you a bottle full before pouring the rest into individual bottles.";
						ItemLoss pony cider by 1;
						ItemLoss soda by 1;
						ItemLoss crushed candies by 1;
						ItemGain fizz-aux-pommes by 1;
					else:
						say "You do not have the required ingredients: pony cider, soda and crushed candies.";
				else if title entry is "vin-coeur":
					if wyvern goop is owned and Satyr wine is owned and crushed candies is owned:
						now sextablerun is 1;
						say "     Francois takes the crushed candies, Satyr wine and wyvern goop from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a large cake and several dishes. He portions the cake out into several slices, offering you one with a smile before placing the rest in one of his displays";
						ItemLoss wyvern goop by 1;
						ItemLoss soda by 1;
						ItemLoss Satyr wine by 1;
						ItemGain vin-coeur by 1;
					else:
						say "You do not have the required ingredients: crushed candies, Satyr wine and wyvern goop.";
				else if title entry is "gingerbread": [gingerbread - egg nog + pixie dust + blue gel]
					if egg nog is owned and pixie dust is owned and blue gel is owned:
						now sextablerun is 1;
						say "     Francois takes the egg nog, pixie dust and blue gel from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a tray full of small colorful gingerbread cookies. He offers you a couple before placing the rest into one of his displays.";
						ItemLoss egg nog by 1;
						ItemLoss pixie dust by 1;
						ItemLoss blue gel by 1;
						ItemGain gingerbread by 2;
					else:
						say "You do not have the required ingredients, egg nog, pixie dust and blue gel.";
				else if title entry is "cheesecake": [cheesecake - cheese + pixie dust + pink gel]
					if cheese is owned and pixie dust is owned and pink gel is owned:
						now sextablerun is 1;
						say "     Francois takes the cheese, pixie dust and pink gel from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with creamy looking strawberry cheesecake. He divides the cake into several portions before wrapping a couple slices for you and placing the rest in one of his displays.";
						ItemLoss cheese by 1;
						ItemLoss pixie dust by 1;
						ItemLoss pink gel by 1;
						ItemGain cheesecake by 2;
					else:
						say "You do not have the required ingredients, cheese, pixie dust and pink gel.";
				else if title entry is "Abort":
					say "You decide not to have Francois bake anything.";
					now sextablerun is 1;
		else:
			say "Invalid Option.";

to say FrancoisHint:
	sort Francois_Undiscovered in random order;
	let T be a random number between 1 and 3;
	if entry 1 of Francois_Undiscovered is 1:	[crème abondante - distilled milk + pink gel]
		if T is 1:
			say "     Crème à la fraise, strawberry cream, is always a popular ingredient. Perhaps we could find a way to make our own out in the city?";
		if T is 2:
			say "     It's a shame I was out of milk when all this started. Strangely, most of my other stock seems to have stayed fresh.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days. I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 2:	[bleuettonne - chocolate milk + blue gel]
		if T is 1:
			say "     Le chocolat et les fruits frais are always a good combination.";
		if T is 2:
			say "     I have seen the most unusual chiens running around outside; they appear to be made entirely of chocolat.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days. I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 3:	[boysenberry blossom - Awesome Fruit + blue gel]
		if T is 1:
			say "     A simple fruit pastry is a staple of a good menu.";
		if T is 2:
			say "     There was a bizarre tree outside the store earlier. It had such lovely fruit hanging from its branches. I was going to go out and pick some, but I turned around for a moment and it was suddenly gone.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days. I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 4:	[Muffin muffin - Awesomer Fruit + pink gel]
		if T is 1:
			say "     Gelée de fruit is always an interesting way to enrich a simple treat.";
		if T is 2:
			say "     There was a bizarre tree outside the store earlier. It had such lovely fruit hanging from its branches. I was going to go out and pick some, but I turned around for a moment and it was suddenly gone.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days. I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 5:	[lollicock - musky cock flower + honeycomb]
		if T is 1:
			say "     Surely there must be many interesting new flavors to discover out in the city park now.";
		if T is 2:
			say "     I used to collect fresh herbs from the forest surrounding the city park before all this began. I wonder what strange plants must be out there now?";
		if T is 3:
			say "     Fresh honey was always one of my favorite ingredients. I wonder how this strange maladie has affected the honeybees...";
	if entry 1 of Francois_Undiscovered is 6: [6 - dragon moelleux - dragon heart + glowing ember + chocolate milk]
		if T is 1:
			say "     I have seen a lot of smoke over the skyline from the capitol district. I wonder what is happening over there?";
		if T is 2:
			say "     I have seen a lot of smoke over the skyline from the capitol district. I wonder what is happening over there?";
		if T is 3:
			say "     I have seen the most unusual chiens running around outside; they appear to be made entirely of chocolat.";
	if entry 1 of Francois_Undiscovered is 7: [7 - fizz-aux-Pommes - pony cider + soda + crushed candies]
		if T is 1:
			say "     I used to keep a small amount of soda around for my customers, and it made an interesting addition to some dishes as well.";
		if T is 2:
			say "     A splash of fresh cider is a wonderful addition to most any dish.";
		if T is 3:
			say "     I used to get such wonderful fresh candy from the fair; they add a certain je ne sais quoi to several of my recipes.";
	if entry 1 of Francois_Undiscovered is 8: [8 - vin-coeur - crushed candies+ Satyr wine + wyvern goop]
		if T is 1:
			say "     A small amount of wine is wonderful for rich cakes.";
		if T is 2:
			say "     I have seen incredible beasts flying above the rooftops. One of them left an egg just outside, but I didn't dare approach it.";
		if T is 3:
			say "     I used to get such wonderful fresh candy from the fair; they add a certain je ne sais quoi to several of my recipes.";
	if entry 1 of Francois_Undiscovered is 9: [gingerbread - egg nog + pixie dust + blue gel]
		if T is 1:
			say "     I could have swore I saw a reindeer fly past earlier. He is a little out of season, non?";
		if T is 2:
			say "     Something to add a little extra sweetness would be tres bon.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days. I wonder if there is another source of such flavors out in the city now?";
	if entry 1 of Francois_Undiscovered is 10: [cheesecake - cheese + pixie dust + pink gel]
		if T is 1:
			say "     Le fromage seems hard to come by these days. Quel dommage.";
		if T is 2:
			say "     Something to add a little extra sweetness would be tres bon.";
		if T is 3:
			say "     Fresh fruit is rather hard to come by these days. I wonder if there is another source of such flavors out in the city now?";


to say BoysenberryBlossomGet:
	say "     'Ah! Oui! These will do wonderfully!' Francois says as he takes the blue gel and Awesome Fruit from you with a smile, collecting a few other things from behind the counter before heading to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small dish of fruity-smelling pastries. 'I will call them boysenberry blossoms,' Francois says with obvious excitement. 'Please, be the first to taste one, mon ami[if Player is purefemale]e[end if]!' Would you like to taste it right now? (Y/N)";
	if Player consents:
		say "[boysenberry blossom Use]";
		if "Female Preferred" is listed in feats of Player or "Modest Organs" is listed in feats of Player or ( "Single Sexed" is listed in feats of Player and player is female ):
			say "     When your stomach finally stops its groaning, you look up to see Francois staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		else:
			say "     Francois licks his lips as he eyes up your enlarged member, and you can't help but notice his apron tenting slightly at his crotch. 'Mmm, what a lovely side effect. I cannot wait to start selling these.'";
	else:
		say "     Accepting the treat from Francois, he looks quite disappointed as you stash the snack away in your bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		ItemGain boysenberry blossom by 1;

to say MuffinMuffinGet:
	say "     'What a lovely combination of flavors,' Francois says as he tastes the pink gel and Awesomer Fruit. 'I must test their potential further!' After collecting a few other things from behind the counter, Francois quickly heads to his kitchen to get started. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small tray of muffins and offers you one. Would you like to taste it right now? (Y/N)";
	if Player consents:
		say "[muffin muffin Use]";
		if "Male Preferred" is listed in feats of Player or "Modest Organs" is listed in feats of Player or ( "Single Sexed" is listed in feats of Player and player is male ):
			say "     When your stomach finally stops its groaning, you look up to see Francois staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		else:
			say "     'Not my first choice, but an interesting result nonetheless,' Francois says as he watches your hand drift down towards your groin. 'I am certain it will be popular.'";
	else:
		say "     Accepting the treat from Francois, he looks quite disappointed as you stash the snack away in your bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		ItemGain muffin muffin by 1;

to say bleuettonneGet:
	say "     After tasting the blue gel, Francois takes it and the chocolate milk without another word, collecting a few other things from behind the counter before hurrying back to his kitchen. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small tray of chocolates. 'A simple but effective technique. You must try one,' Francois says with a smile, placing the tray on the counter in front of you. Would you like to taste one right now? (Y/N)";
	if Player consents:
		say "[bleuettonne Use]";
		if "Female Preferred" is listed in feats of Player or "Modest Organs" is listed in feats of Player or ( "Single Sexed" is listed in feats of Player and player is female ):
			say "     When your stomach finally stops its groaning, you look up to see Francois staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		else:
			say "     'Oh my, what a magnifique result,' Francois says with a grin as he watches your groin change.";
	else:
		say "     Accepting the treat from Francois, he looks quite disappointed as you stash the snack away in your bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		ItemGain bleuettonne by 1;

to say CrèmeAbondanteGet:
	say "     After tasting the pink gel and distilled milk, Francois quickly pours both into an empty bowl and starts mixing before he even reaches the doorway to his kitchen. 'Ah, crème à la fraise, I am certain I can do something with this,' you hear him say to himself as you watch his tail disappear around the corner. The warm, sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a small tray of pink creme topped pastries, placing them in front of you with a smile. Would you like to taste one right now? (Y/N)";
	if Player consents:
		say "[crème abondante Use]";
		if "Male Preferred" is listed in feats of Player or "Passing Grade Chest" is listed in feats of Player or "One Pair" is listed in feats of Player:
			say "     When your stomach finally stops its groaning, you look up to see Francois staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		else:
			say "     Francois cocks his head to the side as he watches your chest swell. 'I have a feeling this will be a popular dish among les femmes,' he says while eyeing your growing mammaries. 'I am glad I was not the first to test it though.'";
	else:
		say "     Accepting the treat from Francois, he looks quite disappointed as you stash the snack away in your bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		ItemGain crème abondante by 1;

to say lollicockGet:
	say "     'What an unusual herb,' Francois says as he picks up the musky cock flower, taking a deep sniff of its musty scent. 'Hmm... perhaps...' Francois trails off as he spots the honeycomb, before inspiration strikes. Francois quickly gathers a few other things from behind the counter before stepping into his kitchen. Eventually Francois returns with a small tray of cock-shaped lollipops and a silly grin on his face. 'What do you think, mon ami[if Player is purefemale]e[end if]? Would you like to try one?' he asks, waving the phallic candy in your face. (Y/N)";
	if Player consents:
		let lollicockCheck be 0;
		say "     Wrapping your lips around the phallic treat, you begin bobbing up and down its length, savoring its sweet and salty taste as your tongue works over it. As the last of it melts away[run paragraph on]";
		if a random chance of 1 in 4 succeeds:
			now lollicockCheck is 1;
		if CockName of Player is "candy cock" or "Female Preferred" is listed in feats of Player or ( "Single Sexed" is listed in feats of Player and player is female ):
			now lollicockCheck is 0;
		if lollicockCheck is 1:
			if Player is not male:
				say " a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a lovely red hard candy cock, much like the one you just finished enjoying, erupts from you, spurting a few excited streams of fluid as it settles into place.";
				now Cock Count of Player is 1;
				now Cock Length of Player is 5;
				now Ball Size of Player is 2;
				now CockName of Player is "candy cock";
				now Cock of Player is "[one of]candy[or]confectionary[or]red candy[or]canine candy[as decreasingly likely outcomes]";
			else:
				say " a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as the flesh shifts to a deep red, your cock reshaping to a lovely canine hard candy shaft, much like the one you just finished enjoying.";
				now CockName of Player is "candy cock";
				now Cock of Player is "[one of]candy[or]confectionary[or]red candy[or]canine candy[as decreasingly likely outcomes]";
		else:
			say "a rumbling builds in your belly. Clearly your body doesn't agree with something about the treat.";
		decrease hunger of Player by 5;
		if hunger of Player < 0, now hunger of Player is 0;
		if lollicockCheck is 0:
			say "     When your stomach finally stops its groaning, you look up to see Francois staring back at you, his previous happy expression somewhat dampened as a result of your reaction. You do you best to assure him that his dish was quite tasty, despite your body's apparent distaste, which helps to brighten his mood again.";
		else:
			say "'Mon dieu! What an unexpected result!' Francois says, licking his lips as he eyes up your new candy member. 'I certainly would like to give that a taste,' he says with a naughty smirk.";
	else:
		say "     Accepting the treat from Francois, he looks quite disappointed as you stash the snack away in your bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		ItemGain lollicock by 1;

to say dragonmoelleuxGet:
	say "     'I have a good feeling about this, mon ami[if Player is purefemale]e[end if],' Francois says, taking the dark scale, glowing ember and chocolate milk and heading to his kitchen. A rich chocolaty scent fills the bakery as he works, making your mouth water in anticipation as you wait.";
	say "     Francois returns a short time later, carrying a small dish of bite-sized chocolate cakes, insisting you try one while they're still fresh. When you bite into the cake, its warm liquid chocolate center fills your mouth. You savor the taste for a short time before swallowing the satisfying treat. Francois looks at you expectantly, eagerly waiting to hear what you think of his newest dish, and just as you are about to speak a rumbling builds in your belly. An intense heat wells up inside you, and in a few short moments you are unable to hold it in any longer. Francois drives under the counter just before you release a large gout of flame into the air, incinerating everything on the counter in front of you.";
	say "     'Mon dieu!' Francois exclaims, peeking up over the counter. 'That was unexpected. Are you alright, mon ami[if Player is purefemale]e[end if]?' After catching your breath, you assure the French mutt that you're fine, save for a little heart burn. With a smile Francois pushes the one cake that survived the blast towards you before setting about cleaning up your mess. Perhaps this unintended side effect might be useful in dealing with the mutants out in the city?";

to say fizz-aux-pommesGet:
	say "     Francois scratches his chin as he muses, setting the soda, pony cider and crushed candies aside. After gathering a couple other things from behind the counter, Francois gathers the ingredients and heads to his kitchen, promising to return shortly. Rather than the usual warm aromas of his cooking, you merely hear plenty of mixing and stirring. A few minutes later, Francois returns with a pitcher full of a fizzing amber liquid and a few glasses.";
	say "     Motioning towards a nearby table, Francois takes a set with you and pours two glasses of the bubbling drink. With a toast you both empty your glasses, savoring the sweet apple taste. Soon after you are both unable to stay seated any longer, hit with a sudden burst of energy from the sugary drink. Eager to make use of this energy, Francois sets about cleaning the bakery and organizing his displays, leaving you to your business. Perhaps this unusual side effect could be useful in dealing with the creatures out in the city?";

to say vin-coeurGet:
	say "     Francois scoops up your wyvern goop, satyr wine and crushed candies with a smile. 'I know just what to do with these, mon ami[if Player is purefemale]e[end if].' After collecting a few other things from under the front counter, Francois returns to his kitchen. A rich peppermint scent fills the bakery as Francois begins his work, making your mouth water in anticipation as you wait.";
	say "     Eventually Francois returns with a large cake and several dishes. After portioning out a couple pieces for you, Francois insists you try one right away, placing one in front of you before wrapping up another and slipping it into your bag. Biting into the rich wine cake, you are hit with the powerful peppermint taste. After several more bites the cake is finished, and you are left feeling quite full.";
	say "     Feeling strangely heavy, you give Francois your thoughts on the new dish before pushing yourself away from the counter to stand. Francois['] bizarre expression as you stand catches you slightly off guard, and looking around you realize that rather than pushing yourself away from the counter, you've moved the entire counter away from yourself. You apologize and do your best to move the counter back into position before pondering this strange weight behind your muscles. Perhaps this unusual side effect might be useful in dealing with the creatures out in the city?";

to say gingerbreadGet:
	say "     After taking a quick shot of the egg nog, Francois scoops the pixie dust and blue gel with a sparkle in his eye. Obviously inspired somehow by the egg nog, he eagerly rushes off to his kitchen to get started. The warm scent of ginger and cinnamon fills the bakery as Francois works, making your mouth water in anticipations until he returns with a tray of small cookies. Francois places a couple of them on a dish in front of you with a smile. Would you like to test them now? (Y/N)";
	if Player consents:
		say "[gingerbread Use]";
		say "'Oh là!' Francois exclaims as he watches your changes slow to and end. 'I hope you're not still hungry,' he says with a silly grin as he eyes your altered form.";
	else:
		say "     Accepting the cookies from Francois, he looks quite disappointed as you stash the snack away in your bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		ItemGain gingerbread by 2;

to say cheesecakeGet:
	say "     Francois['] expression lights up as he spots the cheese and he plucks it eagerly out of the pile before rummaging through and selecting the pixie dust and pink gel to go with it. 'This will do wonderfully, C'est magnifique!' Francois exclaims as he places the ingredients in a large mixing bowl to carry back into his kitchen. The rich sweet smell of Francois['] craft fills the bakery as you wait, making your mouth water in anticipation. Eventually Francois returns with a delicate looking strawberry cheesecake, he cuts the cake into slices with a smile, placing a couple small wedges on a plate for you with a grin. Would you like to taste it now? (Y/N)";
	if Player consents:
		say "[cheesecake Use]";
		say "'Oh là!' Francois says as he watches your changes slow to and end. 'I guess what they say is true. You really are what you eat,' he says with a silly grin.";
	else:
		say "     Accepting the treat from Francois, he looks quite disappointed as you stash the snack away in your bag. You assure him you'll eat it later and let him know how it was, but he still seems a little saddened that you aren't going to try it right away.";
		ItemGain cheesecake by 2;

Section 5 - Baked Goods

Table of Game Objects (continued)
name	desc	weight	object
"boysenberry blossom"	"A flaky, fruit-filled, flower-shaped pastry."	1	boysenberry blossom
"bleuettonne"	"A dark chocolate ball with a syrupy blueberry center."	1	bleuettonne
"crème abondante"	"A delicate pink pastry topped with a breast-shaped mound of creme, complete with a small sugary nipple."	1	crème abondante
"muffin muffin"	"A soft pink muffin with a gooey fruit center."	1	muffin muffin
"lollicock"	"A big red hard candy shaped like a canine cock."	1	lollicock
"dragon moelleux"	"A small chocolate cake; it seems to stay perpetually warm and glows ever so slightly from the small cracks in its surface."	1	dragon moelleux
"fizz-aux-pommes"	"A fizzing, amber colored beverage."	1	fizz-aux-pommes
"vin-coeur"	"A slice of cake with a rich wine and peppermint glaze and filling."	1	vin-coeur
"gingerbread"	"A small gingerbread cookie shaped like a little man."	1	gingerbread
"cheesecake"	"A wedge of rich strawberry cheesecake."	1	cheesecake

boysenberry blossom is a grab object.
boysenberry blossom has a usedesc "[boysenberry blossom Use]".
the scent of boysenberry blossom is "The small pastry has a wonderful fruity smell you can't quite put your finger on.".

to say boysenberry blossom Use:
	say "Biting into the boysenberry blossom, you are treated to a lovely fruity filling inside the flaky pastry. Eating the treat in several slow bites[run paragraph on]";
	if "Female Preferred" is listed in feats of Player or "Modest Organs" is listed in feats of Player or ( "Single Sexed" is listed in feats of Player and player is female ):
		say " you savor the fruity pastry. It tastes great but gives you a belly ache. Clearly your body doesn't agree with something about the treat.";
	else if Player is not male:
		now Cock Count of Player is 1;
		now Cock Length of Player is 5;
		now Ball Size of Player is 2;
		Follow the cock descr rule;
		say " you savor the fruity pastry as a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a [descr] [Cock of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] erupts from you, spurting a few excited streams of fluid as it settles into place.";
	else:
		increase Cock Length of Player by a random number from 1 to 2;
		Follow the cock descr rule;
		say " you savor the fruity pastry as a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin, your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random] [one of]engorging[or]swelling[or]throbbing[at random] as it gains[else][one of]cocks[or]penises[or]shafts[or]malenesses[at random] [one of]engorging[or]swelling[or]throbbing[at random] as they gain[end if] in length, becoming [descr]";
	decrease hunger of Player by 5;
	if hunger of Player < 0, now hunger of Player is 0;

bleuettonne is a grab object.
bleuettonne has a usedesc "[bleuettonne Use]".
the scent of bleuettonne is "The small candy carries the deep, rich scent of chocolate.".

to say bleuettonne Use:
	say "     You bite into the bleuettonne and find your mouth filled with a burst of blueberry jelly, more than you would have expected from the small chocolate ball. Doing your best to not let any of the sweet treat spill[run paragraph on]";
	if "Female Preferred" is listed in feats of Player or "Modest Organs" is listed in feats of Player or ( "Single Sexed" is listed in feats of Player and player is female ):
		say " you swallow your mouthful and finish the rest in a second satisfying bite. As the fruity filling and chocolate hit your belly it rumbles. Clearly your body doesn't agree with something about the treat, but it sure tasted great.";
	else if Player is not male:
		now Cock Count of Player is 1;
		now Cock Length of Player is 5;
		now Ball Size of Player is 2;
		Follow the cock descr rule;
		say " as you savor the mingling chocolate and fruit flavors a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a [descr] [Cock of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] erupts from you, spurting a few excited streams of fluid as it settles into place.";
	else:
		increase Ball Size of Player by a random number from 1 to 2;
		Follow the cock descr rule;
		say " as you savor the mingling chocolate and fruit flavors a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as your [one of]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] and grow larger, your flesh growing taught with the expansion, leaving you with [Ball Size Adjective of Player] [Balls]";
	decrease hunger of Player by 5;
	if hunger of Player < 0, now hunger of Player is 0;

crème abondante is a grab object.
crème abondante has a usedesc "[crème abondante Use]".
the scent of crème abondante is "The pink pastry smells of fresh strawberry and rich creme.".
understand "creme abondante" as crème abondante.

to say crème abondante Use:
	say "     Biting into the crème abondante, your mouth is filled with sweet strawberry cream. Savoring the rich mousse and fresh pastry, you finish the treat and several slow, deliberate bites[run paragraph on]";
	if "Male Preferred" is listed in feats of Player or "Passing Grade Chest" is listed in feats of Player or "One Pair" is listed in feats of Player:
		say ". After finishing the last bite of your snack, a rumbling builds in your belly. Clearly your body doesn't agree with something about the treat, but it sure tasted great.";
	else:
		say ". As you swallow the last bite, a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your chest[run paragraph on]";
		if Nipple Count of Player < 8:
			say " as it increases in intensity, the tingling centers on two new sensitive points, which quickly swell into two new [descr] breasts, pressing out of your [Skin of Player] hide[run paragraph on]";
			increase Nipple Count of Player by 2;
		if Breast Size of Player < 26:
			follow the breast descr rule;
			let oldbreast be descr;
			say " and you [one of]groan and grab at your chest[or]give a loud moan, shuddering[or]almost tip forward in surprise[or]look down fearfully as sensation builds[at random], [Skin of Player] skin glistening as your [oldbreast] breasts[run paragraph on]";
			increase Breast Size of Player by 2;
			if Breast Size of Player > 26, now Breast Size of Player is 26;
			follow the breast descr rule;
			say " become [descr] [one of]orbs[or]breasts[or]jugs[or]tits[at random]";
		say ".";
	decrease hunger of Player by 5;
	if hunger of Player < 0, now hunger of Player is 0;

muffin muffin is a grab object.
muffin muffin has a usedesc "[muffin muffin Use]".
the scent of muffin muffin is "The pink muffin carries a fruity aroma that seems to change with each breath.".

to say muffin muffin Use:
	say "     Biting into the muffin you find a sweet pink jelly fruit filling hidden inside, working your tongue into the opening, you lick the sweet treat out of the depths of the muffin before finishing it[run paragraph on]";
	if "Male Preferred" is listed in feats of Player or "Modest Organs" is listed in feats of Player or ( "Single Sexed" is listed in feats of Player and player is male ):
		say ". After finishing the last bite of your snack, a rumbling builds in your belly. Clearly your body doesn't agree with something about the treat, but it sure tasted great.";
	else if Player is not female:
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is 5;
		now Cunt Tightness of Player is 4;
		follow the cunt descr rule;
		say ". As you swallow the last bite, a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a [descr] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] wetly forms.";
	else:
		increase Cunt Depth of Player by 1;
		if remainder after dividing Cunt Depth of Player by 3 is 0:
			increase Cunt Tightness of Player by 1;
		Follow the cunt descr rule;
		say ". As you swallow the last bite, a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin, your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorging[or]swelling[or]throbbing[at random] as it grows[else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorging[or]swelling[or]throbbing[at random] as they grow[end if], becoming [descr].";
	decrease hunger of Player by 5;
	if hunger of Player < 0, now hunger of Player is 0;

lollicock is a grab object.
lollicock has a usedesc "[lollicock Use]".
the scent of lollicock is "The lollicock has a sweet aroma with a hint of male arousal.".

to say lollicock Use:
	let lollicockDildo be 0;
	if Player is female:
		say "     Eying up the cute cock-shaped treat, you are just about to wrap your lips around it before another, naughtier idea pops into your head. Would you like to 'play' with your food before enjoying the snack? (Y/N)";
		if Player consents:
			say "     Stripping your gear and finding a comfortable place to stop and really enjoy this treat, you slowly lick along the length of the candy cock, wetting its surface while you begin teasing you womanly folds with your free hand. Once both you and the treat are sufficiently lubricated, you take one last taste of the sweet and salty candy before plunging it into your drooling cunt. You moan loudly as you drive the rigid length into yourself, your quivering pussy leaking a sticky mixture of sugar and your own feminine juices as you fuck yourself to a powerful climax.";
			say "     Sliding the sticky candy cock out of yourself with a wet slurp, you bask in your afterglow as you wrap your lips around the sugary treat, savoring the musky flavor of your own cum mingling with its sweet and salty taste.";
			NPCSexAftermath Player receives "PussyDildoFuck" from Player;
			now lollicockDildo is 1;
	if lollicockDildo is not 1:
		let lollicockCheck be 0;
		say "     Wrapping your lips around the phallic treat, you begin bobbing up and down its length, savoring its sweet and salty taste as your tongue works over it. As the last of it melts away[run paragraph on]";
		if a random chance of 1 in 4 succeeds:
			now lollicockCheck is 1;
		if CockName of Player is "candy cock" or "Female Preferred" is listed in feats of Player or ( "Single Sexed" is listed in feats of Player and player is female ):
			now lollicockCheck is 0;
		if lollicockCheck is 1:
			if Player is not male:
				say " a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as a lovely red hard candy cock, much like the one you just finished enjoying, erupts from you, spurting a few excited streams of fluid as it settles into place.";
				now Cock Count of Player is 1;
				now Cock Length of Player is 5;
				now Ball Size of Player is 2;
				now CockName of Player is "candy cock";
				now Cock of Player is "[one of]candy[or]confectionary[or]red candy[or]canine candy[as decreasingly likely outcomes]";
			else:
				say " a warm tingling wells up in your belly, slowly spreading across your body. The sensation focuses on your groin as the flesh shifts to a deep red, your cock reshaping to a lovely canine hard candy shaft, much like the one you just finished enjoying.";
				now CockName of Player is "candy cock";
				now Cock of Player is "[one of]candy[or]confectionary[or]red candy[or]canine candy[as decreasingly likely outcomes]";
		else:
			say "you are filled with a pleasant warmth, a subtle afterglow filling your body after the tasty treat.";
	decrease hunger of Player by 5;
	if hunger of Player < 0, now hunger of Player is 0;

dragon moelleux is a grab object. It is not temporary. It is fast.
Usedesc of dragon moelleux is "[dragonmoelleuxuse]".
the scent of dragon moelleux is "     The small chocolate cake smells rich and sweet, as well as a little spicy.".

to say dragonmoelleuxuse:
	if inafight is 1:
		choose row MonsterID from the Table of Random Critters;
		let dam be a random number between 80 and ( 120 + level of Player );   [base between 8-12+ after later division by 10]
		increase dam by ( level of Player * 8 ) + ( a random number between 2 and level of Player * 2 );   [+0.8-1.0/lvl after div by 10]
		let playerfireresist be 0;
		if "Natural Armaments" is listed in feats of Player: [+10%]
			increase dam by ( dam / 10 );
		if BodyName of Player is listed in infections of Firebreathlist: [+12.5%]
			increase dam by ( dam / 8 );
			increase playerfireresist by 1;
		if FaceName of Player is listed in infections of Firebreathlist: [+12.5%]
			increase dam by ( dam / 8 );
			increase playerfireresist by 1;
		let playerdam be dam; [grabbing dam value before adjusting for target resistance]
		if Name entry is listed in infections of Firebreathlist: [-20% against fire breathers]
			decrease dam by ( dam / 5 );
		now dam is dam / 10;                              [division by 10 to normalize]
		increase dam by ( stamina of Player - 10 ) / 2;   [stamina boosted damage]
		say "     Quickly swallowing the warm chocolate cake, you feel a growing heat welling up in your belly. Soon you can hold it in no longer and unleash a powerful gout of flame at the [Name entry], burning them for [dam] damage![hydraharming]";
		decrease monsterHP by dam;
		now playerdam is ( playerdam / 3) / 10;
		if Playerfireresist is 1:
			now playerdam is ( playerdam / 2 );
		if Playerfireresist is 2:
			now playerdam is 0;
		if Playerdam > 0:
			say "     However, the flame does not leave you unscathed. You suffer [playerdam] damage!";
			decrease HP of Player by playerdam;
		ItemLoss dragon moelleux by 1;
	else:
		say "     That's probably not a good idea right now.";

fizz-aux-pommes is a grab object. It is not temporary. It is fast.
Usedesc of fizz-aux-pommes is "[fizz-aux-pommesuse]".
the scent of fizz-aux-pommes is "     The bubbling drink smells of overwhelmingly sweet apple.".

to say fizz-aux-pommesuse:
	if inafight is 1:
		say "     Slamming back the bubbling drink, you feel a rush of energy surge though you, making you light on your feet and slightly aroused.";
		say "+3 dodge bonus, +3 hit bonus, +15 libido!";
		increase plhitbonus by 3;
		increase pldodgebonus by 3;
		increase Libido of Player by 15;
		ItemLoss fizz-aux-pommes by 1;
		follow the player attack rule;
	else:
		say "That's probably not a good idea right now.";

vin-coeur is a grab object. It is not temporary. It is fast.
Usedesc of vin-coeur is "[vin-coeuruse]".
the scent of vin-coeur is "     rich and heavy (temporary desc!)".

to say vin-coeuruse:
	if inafight is 1:
		say "You quickly eat the rich, heavy cake and your entire body feels heavier almost instantly, adding weight to your blows, but slowing your movement.";
		say "+2 damage bonus, -1 dodge bonus, -1 hit bonus!";
		increase pldamagebonus by 2;
		decrease pldodgebonus by 1;
		decrease pldodgebonus by 1;
		ItemLoss vin-coeur by 1;
		follow the player attack rule;
	else:
		say "That's probably not a good idea right now.";

gingerbread is a grab object.
gingerbread has a usedesc "[gingerbread Use]".
the scent of gingerbread is "The gingerbread cookie smells like cinnamon and ginger.".

to say gingerbread Use:
	say "You bite into the cookie with a satisfying crunch, devouring the small gingerbread man in a few quick bites.";
	gingerbreadinfect;
	decrease hunger of Player by 3;
	if hunger of Player < 0, now hunger of Player is 0;

to gingerbreadinfect:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Gingerbread":
			now MonsterID is y;
			break;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	infect "Gingerbread";
	now non-infectious entry is true;

cheesecake is a grab object. It is not temporary.
cheesecake has a usedesc "[cheesecake Use]".
the scent of cheesecake is "The cheesecake has a rich, sweet scent of strawberry.".

to say cheesecake Use:
	if carried of cheesecake > 1:
		say "     As you dig the cheesecake out of your bag, you notice the second slice stashed away next to the first and your tummy rumbles hungrily. Will you indulge and eat both slices now?";
		if Player consents:
			say "     Pulling both slices of cheesecake from your bag, you quickly unwrap both before gorging yourself with the rich strawberry cake.";
			cheesecakeinfect;
			cheesecakeinfect;
			ItemLoss cheesecake by 2;
			if cheesecakemode is 1 and player is cheesecakebodied:
				say "     After your large serving of the delicious cake, your belly rumbles as your cheesecake body shifts and swells, becoming plump and rubenesque.";
			now cheesecakemode is 0;
			decrease hunger of Player by 3;
		else:
			say "     Keeping your gluttony in check, you pull only one slice of the tempting cheesecake from your bag, carefully unwrapping it and savoring the rich strawberry flavor in a few small bites.";
			cheesecakeinfect;
			ItemLoss cheesecake by 1;
			if cheesecakemode is 0 and player is cheesecakebodied:
				say "     Indulging in only a small serving of the rich cheesecake, your belly rumbles as your plump confectionary body slims down to become thin and sexy.";
			now cheesecakemode is 1;
	else:
		say "     Pulling the cheesecake from your bag, you carefully unwrap it before savoring the rich strawberry flavor in a few small bites.";
		cheesecakeinfect;
		ItemLoss cheesecake by 1;
		if cheesecakemode is 0 and player is cheesecakebodied:
			say "     Indulging in only a small serving of the rich cheesecake, your belly rumbles as your plump confectionary body slims down to become thin and sexy.";
		now cheesecakemode is 1;
	decrease hunger of Player by 3;
	if hunger of Player < 0, now hunger of Player is 0;

to cheesecakeinfect:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Cheesecake":
			now MonsterID is y;
			break;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	infect "Cheesecake";
	now non-infectious entry is true;

[Recipes	]
[crème abondante	1]
[bleuettonne	2]
[boysenberry blossom	3]
[Muffin muffin	4]
[lollicock	5]
[dragon moelleux	6]
[fizz-aux-pommes	7]
[vin-coeur	8]
[gingerbread	9]
[cheesecake	10]

[Ingredients	]
[Awesome Fruit -Male	30]
[Awesomer Fruit -Female	31]
[pink gel	32]
[blue gel	33]
[distilled milk	34]
[chocolate milk	35]
[musky cock flower	36]
[honeycomb	37]
[dragon heart	38]
[glowing ember	39]
[soda	40]
[pony cider	41]
[crushed candies	42]
[Satyr wine	43]
[wyvern goop	44]
[cow milk	45]
[egg nog	46]
[pixie dust	47]
[cheese	48]


[  HP of Francois   ]
[ 0 = not met        ]
[ 1 = met/cleaned up/introduced baking ]

[ Libido of Francois  ]
[ 0 = not met          ]
[ 1 = introduced baking        ]
[ 2 = received oral    ]
[ 3 = mounted him      ]

Francoismixcleaned is a truth state that varies. Francoismixcleaned is usually false.
Francoismix is a marker.
when play begins:
	add { "Catgirl", "Siamese Cat", "Ninja Cat", "Chocolate Lab", "Husky Bitch", "German Shepherd Male", "Pit bull", "Retriever Female", "Smooth Collie Shemale", "Ember Breeder", "Pink Poodle", "Horny Doctor", "Blue Chaffinch", "Bird of Paradise" } to infections of Francoismix;

to francoisinfect:
	if Francoismixcleaned is false:
		if HermList is banned:
			remove "Ember Breeder" from infections of Francoismix, if present;
			remove "Chocolate Lab" from infections of Francoismix, if present;
			remove "Smooth Collie Shemale" from infections of Francoismix, if present;
		if HumorousList is banned:
			remove "Chocolate Lab" from infections of Francoismix, if present;
		sort infections of Francoismix in random order;
		let xform be "a";
		now xform is entry 1 of infections of Francoismix;
		infect xform;

[ délicieux, délictueux, savoreux, excitant, intense, agréable, exotique, intéressant, séduisant, exquis, délice, héro, ravissant, enchantant ]
[ je t'adore, je t'aime, je te veux, tu es le meilleur, je veux te faire un peq, mon chéri, mon chiot, mon chou, mon adorable, mon animal ]
[ je t'aime + a la folie, completement, totalement / mignon, mon coeur, mon amour, mon ange, tomber amoureux (de), mon trésor, mon cochon, mon coco ]
[ ma cocotte, mon grand, mon lapin, mon cher, ma loutre, mon loup, ma mie (female friend, soft bread), mon chaton, mon chat, mon mimi, mon minet ]
[ amitié, mon copain(copine), nid d'amour(eux), faire l'amour ]
[ Venez-vous ici souvent? / Fait-il chaud ici, ou est-ce juste vous? / J'ai envie de toi désespérément. / Fais-moi l'amour. / A la même heure demain? / Laisse-moi te prendre, mon chéri. / Tu es très beau. / Je veux to donner un beau, gros baisser. ]
[ Ils sont fous ces mutants. ]

Francois ends here.
