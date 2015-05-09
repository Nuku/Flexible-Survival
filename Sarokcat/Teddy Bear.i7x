Version 3 of Teddy Bear by Sarokcat begins here.
[Version 3 - Player victory and improved endings]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a giant teddy bear to Flexible Survival's Wandering Monsters table"
[Description text for this Extension.]

teddyvored is a number that varies.
noteddybearsex is a number that varies.

Section 1 - Monster Responses

when play begins:
	add { "Teddy Bear" } to infections of girl;
	add { "Teddy Bear" } to infections of furry;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]
to say teddy bear attack:
	choose row monster from the table of random critters;
	if scalevalue of player <= 3 and a random chance of 2 in 5 succeeds:
		if hp of player > 0:
			say "     You are pulled into a soft hug by the stuffed bear";
		otherwise:
			say "     You are grabbed by the fluffy, stuffed bear in a tight hug, squeezing the air out of you";
		if teddyvored is even:
			say ".  The pink bear smiles down at you, the smile growing wider and wider as it continues.  As the wide open smile gets closer, you start to struggle, but the bear keeps a firm grip on you.  With a happy giggle, the living plush bear lifts you up, stuffing your head into its open maw.  The soft, fabric mouth slides over you smoothly as you're pulled into her.";
			say "     The teddy bear's smooth mouth and velvety tongue slide over your face as you're pulled in further.  The sensation is strangely pleasant, erotic even.  You moan softly as her muzzle slides over your shoulders and down your [bodytype of player] body as you're lifted up.  Her round, padded paws rub at your [if cocks of player > 0 and cunts of player > 0]cock[smn] and cunt[sfn][otherwise if cocks of player > 0]cock[smn][otherwise if cunts of player > 0]cunt[sfn][otherwise]bare groin[end if], further adding to your pleasure and distracting you from the need to struggle.  You slip ever inwards, moving down her velvety throat and down into her warm, padded belly.";
			say "     Her smooth, fabric lining slides smoothly across your flesh[if cocks of player > 0], pressing against your engorging shaft[otherwise if cunts of player > 0], rubbing against your wet pussy[end if] as you grow aroused despite (or perhaps even because of) your current predicament.  Her tummy is soft and squeezes down around you, making you feel sleepy as it closes down around you.  As you feel her rub her paws over her stuffed belly, you curl up in her padded stomach as a warm, fuzzy feeling fills you and you drift off.";
		otherwise:
			say ".  As has happened before, the pink bear holding you opens its muzzle in a wide, wide grin, pulling you towards it.  You try to squirm from its grip, but it's got too strong a hold on you.  Your head gets stuffed into its open maw.  The soft, fabric mouth slides over you smoothly as you're pulled into her.  Her fabric tongue brushes across your face and neck as you're steadily lifted  further up and into its mouth.";
			say "     You feel her thump to the ground on her padded ass after raising you vertically, your momentum and gravity sliding your shoulders into her muzzle and down into her throat.  Soft, velvety gulping feeds your [bodytype of player] body into her mouth.  Your groin is slathered by her soft tongue.  The feel of it across your [if cocks of player > 0 and cunts of player > 0]cock[smn] and cunt[sfn][otherwise if cocks of player > 0]cock[smn][otherwise if cunts of player > 0]cunt[sfn][otherwise]bare groin[end if] causes you to moan and grow aroused despite yourself[if cocks of player > 0 or cunts of player > 0].  She takes her time licking you, savouring playing with you until she can get you to cum.  You and your cum are[otherwise].  After some playful licking, you are[end if] swallowed down, destined for her warm belly.  You curl up there, feeling sleepy inside the bear's padded tummy, eventually drifting off into childlike slumber.";
		teddybearvored;
	otherwise if cocks of player is greater than 0:
		say "     The giant stuffed bear lets out a happy cry as you collapse, before quickly climbing on top of you. You soon see that someone has stitched a large opening in the crotch, right where a cunt should be. Before you can think about it too much, she quickly stuffs your [cock of player] cock into her waiting opening. You cry out as her velvety insides caress you, her body moving and twisting on top of you as her insides massage you like a velvet glove, ripping one of your most intense orgasms ever out of you. Soon your mind begins to cloud over with pleasure as she tirelessly rides you to orgasm after orgasm, hardly pausing at all as she runs her soft plush hands up and down your body, her ursine muzzle planting soft kisses over your face the entire time. Eventually your body can't take anymore, and you pass out in a haze of pleasure.  Waking up, there is no sign of your plush tormentor, realizing she has probably gone off to pleasure someone else, you quickly gather up your belongings and leave while you can.";
	otherwise:
		say "     The giant stuffed bear lets out a happy cry as you collapse helplessly. Its hands wander your body for a minute, stripping you naked before it plops down next to you and begins to rub its soft plush body on you. You quickly realize it is actually a female bear, or at least someone has made an appropriate opening, as she rubs herself on your thighs. She then lowers her bearlike muzzle to your female opening and begins to lick and rub at you with her long tongue and furred muzzle, causing you to moan in pleasure. Her plush fur and soft whiskers tickle your thighs as her flexible tongue massages your insides, causing you to clench and rub your legs along her soft sides as the pleasure builds, until finally your orgasm shoots through you, causing you to cry out as you cover her plush face in your female juices.  Seeming somewhat smug the giant teddy bear lifts her damp muzzle up, licking it clean as she moves up beside you, gathering you into her soft fluffy arms as you drift off into an exhausted slumber.  Waking up later there is no sign of the big fluffy bear, making you feel vaguely sad and lonely as you gather up your belongings and leave.";

To say teddy bear loss:
	if noteddybearsex > 2:
		say "     The strange plush animal whimpers as your last blow knocks it over.  It lands with a soft, padded thump onto its back and waves its limbs in the air, having difficulty getting back up.  As you've done in the past with them, you ignore her struggles and leave her there.  With her temporarily indisposed, you're free to return to what you were doing before she got in your way.";
	otherwise if cocks of player > 0 or cunts of player > 0:
		say "     The strange plush animal whimpers as your last blow knocks it over.  It lands with a soft, padded thump onto its back and waves its limbs in the air, having difficulty getting back up.  You consider walking away, but spot a stitched opening at the bear's crotch.  This large opening is right where a cunt should be and it gets you wondering if you might have a little fun with her[if libido of player > 50] and perhaps burn off a little of your excess libido by using the toy bear[end if].";
		if cocks of player > 0:
			say "     Would you like to [link]fuck the stuffed bear (1)[as]1[end link], [link]go for a 69 (2)[as]2[end link] or [link]leave her be (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[teddybearsex]";
			otherwise if calcnumber is 2:
				say "[teddybear69]";
			otherwise if calcnumber is 0:
				say "     Deciding against taking advantage of the poor bear, you leave her where she is.  You return to what you were doing before she got in your way.";
				increase noteddybearsex by 1;
		otherwise:
			say "     Would you like to go for a 69 (y) or [link]leave her be (n)[as]n[end link]?";
			if the player consents:
				say "[teddybear69]";
			otherwise:
				say "     Deciding against taking advantage of the poor bear, you leave her where she is.  You return to what you were doing before she got in your way.";
				increase noteddybearsex by 1;
	otherwise:
		say "     The strange plush animal whimpers as your last blow knocks it over.  It lands with a soft, padded thump onto its back and waves its limbs in the air, having difficulty getting back up.  With her temporarily indisposed, you're free to return to what you were doing before she got in your way.";

[
	say "The strange plush animal whimpers in defeat as its stuffing leaks out all over the place.  It hurriedly gathers some of its stuffing up before waddling away, shooting scared glances back over its shoulder at you, making you feel vaguely guilty for beating up on a poor stuffed animal.";
]

to say teddybearsex:
	now noteddybearsex is 0;
	say "     Moving in on the fallen bear, you pin her down and press your [bodytype of player] body down onto her plush form.  She squirms a little at first, but giggles and settles down as you get your [cock of player] cock lined up with her strategically placed hole.  With a gentle push, you slide your [cock size desc of player] penis into that velvety opening.  You can feel those fabric walls squeeze and caress over you each time you thrust into the pink, padded bear.";
	say "     As you continue fucking the living plush, you release her arms and wrap them around her soft body, cuddling her like the big, sexy stuffy she is.  She puts her arms around you in return, hugging you back and pulling you against her with every thrust you make.  Her ursine muzzle gives you soft kisses all over your face as you fuck her until you cry out in orgasm, shooting your [cum load size of player] load into her plush pussy and soaking her polyfill insides with your semen.";
	say "     Spent and happy, you rest atop her for a while as she continues to hug you, content to be your plush pillow for a while.  Eventually you realize that you should get moving again and reluctantly pull free of her padded arms.  She gives a little sigh of disappointment, but contents herself with rubbing her tummy, feeling the warm mess being absorbed into her plush padding.";


to say teddybear69:
	now noteddybearsex is 0;
	say "     Moving in on the fallen bear, you bring your crotch to her face and press your [bodytype of player] body down onto her plush form.  She squirms a little at first, but giggles and settles down as she notices your [if cocks of player > 0][cock of player] cock[otherwise][cunt size desc of player] pussy[end if] before her ursine muzzle.  After a few light licks with her fabric tongue, she sets her muzzle to work [if cocks of player > 0]sucking you off[otherwise]eating you out[end if].";
	say "     As she works her muzzle and tongue over your genitals, you take a moment to examine hers.  At her crotch, her stitching opens a hole in her funfur skin that connects to a smooth, velvety passage.  Exploring with a finger, you find it soft and very pleasant to the touch, as well as warm and surprisingly animated.  It squeezed around your finger much like a real pussy would.  Pushing a second digit into her, you fingerfuck her strategically placed hole, much to her obvious enjoyment.  Amused and intrigued, you lick along the stitching and into the velvet hole, exciting her further.";
	say "     Playing with her hot tunnel with your tongue and fingers gets her really worked up and she runs her tongue all over your loins in response.  With her soft whiskers tickling your thighs, her padded muzzle [if cocks of player > 0]squeezes and sucks on your cock until you're pushed to orgasm, shooting your [cum load size of player] load down her throat to fill her plush tummy[otherwise]presses against your wet folds and her tongue laps into your cunt until you're pushed to orgasm, covering her plush face in your feminine juices[end if].";
	say "     After your powerful orgasm, you're left feeling fuzzy-headed and content.  As you're recovering from your orgasm, you feel the bear's plush paws move to your feet and guide them to her muzzle.  She gives them a few licks before opening her muzzle and slipping them into her maw.  Shall you let her continue?";
	if the player consents:
		say "     Feeling too happy to take notice of what's going on, you are content to enjoy the licking and the soft feel of the bear's muzzle around your feet and ankles.  As she continues to sit up, the pleasant sensation moves up to envelop more of your legs.  When she reaches your hips, you start to wonder what's going on, but those thoughts are pushed aside when her tongue finds its way to your crotch again.  The feel of it across your [if cocks of player > 0 and cunts of player > 0]cock[smn] and cunt[sfn][otherwise if cocks of player > 0]cock[smn][otherwise if cunts of player > 0]cunt[sfn][end if] causes you to moan and grow aroused once again.";
		say "     While it takes a little longer to get you off this time, it is no less pleasant an experience - perhaps even better from the added sensation of her soft muzzle and throat squeezing and rubbing along your lower body.  As she gets you to cum for the second time, she opens her mouth wider and raises you up.  She lowers you down into her plush maw, swallowing down your [bodytype of player] body even as she's swallowing down your sexual fluids.  It is only as she ursine muzzle is closing around your head before your very eyes that you realize what's happening all too late.  But you're also too fuzzy-headed and awash in pleasure to even think of resisting.  You curl up happily in the warm embrace of the plush bear's belly, drifting off into a peaceful sleep.";
		teddybearvored;
	otherwise:
		say "     Realizing what's about to happen, you shake the fluff from your mind and pull yourself up.  The plush bear gives a soft sigh of disappointment and flops back onto the ground.  Her disappointment doesn't last long though, as she contents herself with [if cocks of player > 0]rubbing her cum-filled tummy[otherwise]licking her cum-damp muzzle[end if] while your fluids are absorbed into her polyfill padding.  Having dealt with the strange bear, you're now free to continue on your way.";
		now libido of player is ( 2 * libido of player ) / 3;

to teddybearvored:
	choose row monster from the table of random critters;
	now fightoutcome is 23;
	increase teddyvored by 1;
	decrease humanity of player by 6;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 2;
	attempttowait;
	if humanity of player >= 10 or inasituation is true:
		say "     When you come to, you are [one of]behind the counter of one of the carnival stands[or]resting in an out of the way corner[or]resting against a waste bin[or]behind one of the prize booths[at random] with little tufts of polyfill still clinging to you.  As you try to brush them off, these little bits of fluff sink into you.";
		infect;	[Added infection from being vored]
	otherwise:
		say "     As you slumber inside that soft belly, you dream of teddy bears and warm hugs.  These dreams go on and on, filling your mind with their fuzzy thoughts of plush happiness until that is all that remains.  You come to shortly after being let out of the plush bear, rising up and giving her a soft, padded hug with your teddy bear body.  You, like her, are a living teddy bear creature, both in body and in mind.  After some playful, kinky cuddling together, you skip down the midway, padded paw in padded paw.";
		now teddyvored is -100;
		now xp of player is 0;				[prevents accidental level up]
		if the player is not lonely, now xp of companion of player is 0;
		now non-infectious entry is true;			[prevents regular teddy bear infection from occurring]
		now tailname of player is "Teddy Bear";
		now facename of player is "Teddy Bear";
		now skinname of player is "Teddy Bear";
		now bodyname of player is "Teddy Bear";
		now cockname of player is "Teddy Bear";
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		attributeinfect;
		if libido of player < 30, now libido of player is 30;
		now humanity of player is 0;
		now battleground is "void";
		now combat abort is 1;
		attempttowait;
		end the game saying "Having been consumed by the teddy bear, you've been turned into another of the plush bears roaming the fairgrounds.";
		stop the action;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Teddy Bear"; [Name of your new Monster]
	now attack entry is "[one of]The bear windmills its arms and crashes into you, knocking you down.[or]The strange plush bear takes a moment out of combat to give you a big fuzzy hug, causing you to feel vaguely unsettled.[or]Its large plush hands come down hard on your head, making you wonder through the ringing in your ears just what the heck it's stuffed with, lead?[or]Jumping up as it charges, the big fluffy bear knocks you flat as it crashes to the ground.[or]Singing along with the fair music, the fluffy bear prances around seemingly at random, until it ends up ramming into you.[or]Charging forward with its oversized head lowered, the giant bear rams right into you, knocking you both down.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[teddy bear loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[teddy bear attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A giant teddy bear, covered in soft pink fur toddles down the midway towards you, moving surprisingly fast on its round plush legs '[one of]Oh good, I was looking for someone to play with![or]Don't you want a prize?[or]Take me home with you![or]Don't you want a cuddle?[or]You would look great if you were fluffy like me![or]You will be my carnival prize![at random]' she says as she charges towards you, her large roundish arms windmilling dangerously.";[ Description of the creature when you encounter it.]
	now face entry is "large teddy bear like face, with a short muzzle and rosy cheeks. Your big black eyes seem comical and cute, and your mouth is pulled upwards by your muzzle so it seems as if you are always smiling goofily";[ Face description, format as the text "You have a (your text) face."]
	now body entry is "rounded in the middle with somewhat round arms and legs, and plump, plush, paw-like hands, your body almost feels like it is full of some sort of strange stuffing that moves around as you walk, poking yourself you can see your clawed paw sink deeply into your stuffed side with almost no pain whatsoever";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]brown furred[or]softly furred[or]fake furred[or]strangely plush[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a short plush little bear tail attached to your rear, while it doesn't seem to be made of flesh and blood, you can still feel it as if it were.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]plush[or]teddy bear[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face balloons outwards as your head seems to swell up, your cheeks stretching out and a cute little muzzle forming as your face becomes that of a happy giant teddy bear"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it shifts and plumps outwards, your hands and feet becoming fatter and rounder, making it hard to balance as you seem to become much more like a children's toy"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your flesh tingles and sprouts a soft thick brown pelt of plush fake fur"; ["Your skin feels funny as (your text)" ]
	now ass change entry is "it plumps up, making you feel like you are sitting on some sort of padding, looking behind you, find your new fabric like ass has also sprouted a short little bear tail, which you find yourself wiggling a few times, surprised at how well the bit of fabric responds"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it shifts and seems to fill with some sort of strange stuffing, making it both more sensitive and flexible"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 15;
	now int entry is 8;
	now cha entry is 18;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 50;			[ How many HP has the monster got? ]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 7;			[Amount of Damage monster Does when attacking.]
	now area entry is "Midway";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 2;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 14;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]plush[or]stuffed[or]padded[at random]";
	now type entry is "[one of]toy-like[or]ursine[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "bearhugger";	[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Teddy Bear":
		if humanity of player is less than 10:
			if teddyvored is -100:
				say "     You stay together in the state fair with your plushie friend, feeling very happy together.  You snuggle and play together often, [if cocks of player > 0]fucking her with your plush cock[otherwise if cunts of player > 0]licking each other with your velvety tongues[otherwise]licking her with your velvety tongue[end if] and roaming the midway in search of others to cuddle with.  From time to time you stumble across other teddy bears like yourselves and have a grand old time together, but other times you're even luckier and find a human.  Having been shown how to do it by your pink friend, you really enjoy swallowing them down to give them an extra-special belly hug, helping them to become more happy teddy bears to wander around the fair.  You always have a particularly good time meeting up with them again as bears and enjoying soft, plush sex with those you've changed in this manner.";
			otherwise if the player is pure:
				say "     Surrendering to your new instincts, you lie low when the rescue comes.  Seeing an opportunity, you stow away in the back of one of the trucks, acting like nothing more than a large stuffed animal until you can eventually sneak away when no one is looking.  You wander around several cities, appearing to be a lost toy or placing yourself in donation bins until someone takes you home and you can convert them into another plush animal like yourself.  Eventually someone tracks you down on purpose by following the rumours.  Pretending to still be a normal stuffed toy, you listen to him explain his plan before deciding to go along with it.";
				say "     It turns out he is the owner of an [']adult['] shop that rents out several rather kinky dolls and plushies to people to use, you and he proceed into a lucrative partnership where he rents you out to an unsuspecting buyer, and when the time is right you convert the buyer into a new animal yourself, and you both return to the shop to be rented out again.  It takes some planning but eventually you even manage to convert your shop partner as well, and soon you both have a large collection of other adult animal toys ready for any occasion.";
			otherwise:
				say "     Surrendering to your new instincts, you wander around the city looking for playmates.  Many of the mutant creatures roaming the fallen metropolis are happy to use your plush body as a means of sexual release.  Their sexual fluids soak into your soft padding, helping to sustain you.  After finishing with you, they wander off and you're left looking for a new playmate[if cocks of player is 0 and cunts of player is 0] time and again[end if].";
				if cocks of player > 0 and cunts of player > 0:
 					say "     You are eventually able to capture an injured soldier separated from his unit.  Dragging him off into the ruins, you have sex with the young man again and again.  Over the next few days, he becomes a plush hybrid herm like yourself and loses his mind to the infection.  Together with your new friend, you fuck one another happily when not searching for others to mate, breed and transform.";
				otherwise if cunts of player > 0:
					say "     You are eventually found by a giant puppy creature.  Despite your large size, he's much bigger than you and able to drag you around in his muzzle.  Unlike the others, he's very happy to keep you as his plush playtoy.  He drags you around the city with him, playfights with you, tosses you around and chews on you like the big puppy he is.  And when he's done roughhousing, he humps you with his oversized doggy cock, drenching you in his semen until you smell thoroughly of him.  Despite the occasional tear, you're very happy with your new friend.";
				otherwise if cocks of player > 0:
					say "     You eventually find a plastic woman who stays with you.  She has a slender, shapely body with long, thin legs and firm breasts.  She looks much like a girl's doll blown up to the size of a real person.  Her plastic hair is always beautifully styled and, unlike the children's dolls she resembles, she's got a hot, juicy pussy between her legs that's always eager to have her snuggle bear's cock buried inside.  You enjoy a happy life together roaming the city, occasionally attacking the other mutants and survivors for sex, but usually content with each other as playmates.";
		otherwise:
			say "     You are happy when the rescue finally comes, although the rescuers don't really know what to make of you and your teddy bear body.  Eventually being cleared as noninfectious you find a job at one of the large malls playing with the children and advertising for the mall. After a time one of the people there gives you a card with a strange web address on it, checking it out later leads you to a whole underground fetish of people fascinated with plush animals.  Getting in contact with the person who gave you the card, you quickly end up moonlighting at an adult club for people with this strange fetish, partying all night and getting many compliments on your wonderful [']costume['].";


Teddy Bear ends here.
