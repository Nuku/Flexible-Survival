Horsemazon by Kirov begins here.

"Adds a horse Amazon to Flexible Survival's wandering monsters table."

Section 0 - Monster Variables, Flags, and Markers

horsemazonVictoryCounter is a number that varies. [@Tag:Notsaved]			[ Not saved to reduce loading, though this means it won't be preserved across loads ]
horsemazonVictoryCounter is usually 0.

[ HP of Jana - Used to track state of Jana ]

Section 1 - Monster Description

to say horsemazonDescription:
	setmongender 4; [creature is female]
	project Figure of Horsemazon_clothed_icon;
	if inasituation is true:
		say "";
	else:
		say "     As you make your way down the streets, you hear the clop of hooves and the clinking of metal chains. 'Halt!' a powerful voice commands. You turn to see the towering figure of a woman, but with the features of a horse. She possesses a striking, muscled physique, alongside an equine head and hooves, a coat of short brown fur, and a beautiful, flowing mane of deep brown. The striking Amazon of a horse is dressed in a set of leather chaps and a small corset, though how she managed to find one in her size puzzles you, given how much she towers over the average person. In her hands, she's holding a lasso and a riding crop, which she points aggressively at you. 'Okay, mutant. You won't be getting away to harass people any longer!' It seems she's mistaken you for one of the mindless infected roaming the city!";

to say horsemazonAttack:
	say "[one of]The horse-woman strikes out at you with her whip, leaving a red mark that's quickly healed by the nanites.[or]Lowering her lasso and crop, the large woman charges you. You're left with no time to react as she body slams you, barreling you over with her impressive size and mass.[or]The horse-woman pounces at you, lunging forward in an attempt to wrestle you to the floor, which you barely manage to squeeze out of.[or]Swinging the lasso over her head, the horse throws the loop and catches you by the arm. You're barely able to free yourself as she tries to pull you in.[at random]";

Section 2 - Monster Victory Scenes

to say horsemazonVictory:          [Scene for when the Horsemazon defeats the player]
	if inasituation is true:
		say "";
	else:
		project Figure of Horsemazon_clothed_icon;
		if HP of player > 0:	[ Submitted ]
			say "     Raising your hands in a friendly gesture of peace, you try to deescalate the situation. So focused on winning the fight, she doesn't seem to notice at first, and for a moment, you think you've made a terrible mistake as she swings her lasso around to strike at you. But just before she throws, she notices your gesture and hesitates. You take the opportunity to speak, putting on a friendly smile. 'I'm not here to fight,' you try to calmly explain. 'And I'm not some crazy mutant.' It appears you were convincing, as she lowers her lasso and crop, bringing her hands to her hips with a disapproving glare.";
			say "     'Well, you ought to not be wandering the streets like one. Otherwise you might get into trouble with a strong woman like me,' she says a bit jokingly. She stows away her 'weapons' on her belt before striding over to you and holding out her hand in greeting. Seeing as she was so quick to start a fight, you're taken by surprise at the sudden shift in the tone of the situation. She seems to have taken you for your word about being friendly. You reach out and shake her hand, finding her grip unsurprisingly strong and firm. 'I'm Jana, by the way,' she lets you know. The two of you exchange names and pleasantries, and after a little while of chatting, you feel like you've gotten to know Jana a bit. 'Well,' she says. 'It's been nice, but I really ought to head off. Now that I know who you are, you won't have to worry about being jumped. Just make sure you don't go wild on me,' she says with a teasing smile. As she turns to depart, she looks over her shoulder and adds, 'I'd love if you came to stop by and visit me sometime. I've got a room in the Mare's Quarters, down at the Stables Hotel.' Realizing how much time has passed, you wave goodbye and collect yourself before returning to your own explorations.";
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Horsemazon":
					now area entry is "Nowhere";
					break;
			now HP of Jana is 1;
			change the East exit of Mares Quarters to Janas Bedroom;
			now Encountering Jana is resolved;
		else:	[ Defeated ]
			say "     Falling down on to one knee, you find that you're no longer able to put up a fight. The horse kicks out at you, knocking you flat on your back. Then she slowly saunters over to you, hooves clacking on the ground. You feel her weight come down on your chest as she presses one of those animalistic feet down upon you. She huffs and snorts out of her equine snout as she gazes into your eyes. You feel utterly powerless beneath the strong, dominant woman as she ponders what your fate will be.";
			if Player is male:
				say "[horsemazonCowgirl]";
			else if Player is female:
				[Placeholder scene]
				say "     Coming to a decision, the towering horse-woman presses harder into your chest, using the tip of her riding crop to inspect your face in a dominant display of victory. 'I guess you weren't so worthy an opponent after all. Maybe next time you'll put up more of a fight.' You're terrified of what she might do with you next, but the warrior mare simply stows her weapons and walks away. You quickly stand back up and grab your stuff to depart before she changes her mind.";
			else:
				[Placeholder scene]
				say "     Coming to a decision, the towering horse-woman presses harder into your chest, using the tip of her riding crop to inspect your face in a dominant display of victory. 'I guess you weren't so worthy an opponent after all. Maybe next time you'll put up more of a fight.' You're terrified of what she might do with you next, but the warrior mare simply stows her weapons and walks away. You quickly stand back up and grab your stuff to depart before she changes her mind.";
			increase XP of Jana by 1;

Section 3 - Monster Defeat Scenes

to say horsemazonDefeat:           [Scene for when the player defeats the Horsemazon]
	if inasituation is true:
		say "";
	else:
		project Figure of Horsemazon_naked_icon;
		say "     The horsemazon stumbles from your final blow, toppling to the ground in exhaustion. Her crop noisily clatters on the ground as she falls onto all fours. Worn down from the tough fight the Amazon has put up, you can't help but take the opportunity to catch your breath. After a moment of recovery, you ready yourself to fight again, but looking down, you see she's finally given up. It looks like you've finally managed to tire her out.";
		say "     The smell of arousal makes it clear that the fight has you both a bit excited. If you wanted to, you're certain she would be up for some mutual fun. You might even be able to turn the tables on this usually dominant mare. [bold type]Do you take advantage of the fallen horsemazon?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck Her";
			now sortorder entry is 1;
			now description entry is "Show the horse who's in charge by fucking her pussy";
			[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Receive Oral";
			now sortorder entry is 3;
			now description entry is "Force her to eat you out";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Eat Her Out";
		now sortorder entry is 9;
		now description entry is "Make up for the fight by licking her pussy";
		[]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Let her go[as]0[end link][line break]";
		now calcnumber is -1;
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
					if nam is "Fuck Her":
						say "[horsemazonPussyfuck]";
					else if nam is "Receive Oral":
						say "[horsemazonReceiveOral]";
					else if nam is "Eat Her Out":
						say "[horsemazonGiveOral]";
					wait for any key;
			else if calcnumber is 0:
				say "     Deciding you'd rather not play around with her, you turn your back on the defeated woman to leave her in the shame of her defeat.";
				now sextablerun is 1;
		clear the screen and hyperlink list;
		increase XP of Jana by -1;

Section 4 - Monster Sex Scenes

to say horsemazonCowgirl:
	say "     You catch a glint of mischief in her eyes as she comes to a decision. In full control of the situation, the horse stows her lasso and crop on her belt before removing her clothes, letting it fall carelessly to the ground. Underneath her clothes is a divinely sculpted body of feminine perfection. You allow your eyes to wander over her form, eyeing her D-cup breasts and wonderful pussy, already moist with arousal. The hoof on your chest presses down a little harder when she notices your ogling. 'Listen here,' she says. 'You put up a decent fight. At least enough to get the blood flowing. So now I'm going to fuck you, and you're going to lie there and take it. Understand?'";
	say "     You start to answer, but she shoves you further into ground again. 'No talking,' she commands. 'Just give me a nod.' Apparently left with no other choice, you obediently nod your head. Satisfied with your submission, the Amazon quickly strips you of whatever clothing still remains after your fight, then lowers herself to straddle your crotch. She teases the lips of her nethers against the underside of your [Cock of Player] cock, and your body can't help but respond. You quickly harden as she teases you. 'That's a good boy,' she says with a confident smile, reveling in the way she's able to affect your body. She continues to torture you with her grinding, to the point that it becomes unbearable, and your mind is filled with nothing but a desire to slip insider her wet folds. She finally relents, allowing you entry into her mare pussy.";
	say "     'Ah!' she cries out at the feeling of your member filling her. Egged on by the sensation, she becomes a little more aggressive and roughly grabs your wrists to pin you in place. Her strong grip leaves you completely immobilized, helpless to do anything as she bounces up and down on your [Cock of Player] shaft. She takes you like that for what surely must be an hour or more, using you for her own pleasure as she orgasms multiple times. Eventually, the contractions of her cunt are enough to send you over the edge as well, and you climax together in a wave of ecstasy. Finally satisfied, the horsemazon releases you from her grip as she stands back up, wordlessly equipping her armor and gear before departing.";
	CreatureSexAftermath "Horsemazon" receives "PussyFuck" from "Player";

to say horsemazonPussyfuck:
	if "Dominant" is listed in feats of Player:
		say "     You walk around behind the fallen horse to admire her read end. The Amazon beauty's well-toned butt is a tantalizing sight, and you can't help but reach out and grope it, giving it a firm smack to watch it jiggle and sway. She responds with a whinny and neigh of surprise, but she's still too weak from the fight to stop you. Your eyes are then drawn to the horses riding crop, now discarded on the ground, and a wicked idea begins to form in your head. You grab the whip and peel down her leather chaps, then wind up your arm to build the suspense. When you bring the crop back down, it makes contact with a satisfying 'SMACK!', and you don't doubt that her skin is left a beet red beneath all that fur. You smack her again and again, hearing her whinny with each strike, and you notice that she's begun dripping with arousal at your abuse. 'Oh, you're a naughty girl, aren't you?' you tease with another smack from the crop.";
		say "     Finally deciding that you've head enough of the foreplay, you reposition yourself to be kneeling behind her exposed, fleshy ass. You plop your [Cock of player] cock right between her cheeks, to which she responds with a half-hearted, almost playful struggle to get away. You grip her by the hips and pull her back in place, hotdogging your dick as you do. 'You won't be getting away that easy,' you tell her, playing along with the game. Then you bring your cock down to rub against her pussy, finding it moistened and lubed, aching to be fucked. 'Feels, like you're more than ready to go for a little ride,' you tease her. She shudders and whinnies at your words, trying to deny your claim, but you know she secretly likes it. She's already starting to press back against you, trying to draw you inside.";
		say "     Not wanting to waste another second after such an invitation, you quickly thrust inside her. Both of you cry aloud in unison as the sensation of your cock piercing her tight sex overtakes you. You hilt yourself in one go, then hold yourself there as she adjusts to your size. You only give her a handful of seconds though, before you begin to thoroughly pound her, sawing rapidly in and out of her sweet pussy. Her eyes glaze over as she revels in being used as your personal fucktoy. You grip her ass firmly as you continue to fuck her, squeezing her malleable flesh and giving a her another slap here and there to remind her of her place. Her tail flicks up and down your chest in rhythm with the rocking of your bodies. Sensing that she's nearing her limit, you give a particularly hard and deep thrust that sends her over the edge. She shouts up into the air as her marehood clamps down tightly around your member and starts to throb as she climaxes. The continuous squeezing and clenching sends you over the edge as well, and you paint her insides with splurt after splurt of cum.";
		say "     When you've both finally come down from your orgasmic highs, you pull out of her with a wet slurp, watching as your seed slowly drips down her thighs. With a pat on the rump, you stand back up and reequip your gear, leaving her where she is to lie exhausted in the mess.";
	else:
		say "     You walk around behind the fallen horse to admire her read end. The Amazon beauty's well-toned butt is a tantalizing sight, and you can't help but reach out and grope it. She responds with a whinny and neigh of surprise, but she's still too weak from the fight to stop you. Undressing, you kneel down behind her and begin to peel away her leather chaps, exposing her fleshy ass. You plop your [Cock of player] cock right between her cheeks, to which she responds with a final surge of panic and struggles to get away. You grip her by the hips and pull her back in place, hotdogging your dick as you do. 'Don't pick a fight if you can't handle the consequences,' you tell her. Then you bring your cock down to rub against her pussy, finding it already dripping with arousal. 'Ah, but it feels like you're more than ready to handle it,' you tease her. She shudders and whinnies at your words, trying to deny your claim, but you know she secretly likes it. She's already starting to press back against you, trying to draw you inside.";
		say "     Not wanting to waste another second after such an invitation, you quickly thrust inside her. Both of you cry aloud in unison as the sensation of your cock piercing her tight sex overtakes you. You hilt yourself in one go, then hold yourself there as she adjusts to your size. You only give her a handful of seconds though, before you begin to thoroughly pound her, sawing rapidly in and out of her sweet pussy. Her eyes glaze over as she revels in being used by you. You grip her ass firmly as you continue to fuck her, squeezing her malleable flesh. Her tail flicks up and down your chest in rhythm with the rocking of your bodies. Sensing that she's nearing her limit, you give a particularly hard and deep thrust that sends her over the edge. She shouts up into the air as her marehood clamps down tightly around your member and starts to throb as she climaxes. The continuous squeezing and clenching sends you over the edge as well, and you paint her insides with splurt after splurt of cum.";
		say "     When you've both finally come down from your orgasmic highs, you pull out of her with a wet slurp, watching as your seed slowly drips down her thighs. With a pat on the rump, you stand back up and reequip your gear, leaving her where she is to lie exhausted in the mess.";
	CreatureSexAftermath "Horsemazon" receives "PussyFuck" from "Player";

to say horsemazonReceiveOral:
	say "     You strip out of your clothes and step forward to the defeated equine beauty. You roughly grab her by the mane before shoving her face into your crotch. 'Better start licking,' you say to her. She gives a huff at your rough treatment, but this only serves to turn you on further as her warm breath washes over your aroused pussy. But, seeing as she has no other choice after you've overpowered her, she relents, and her tongue darts out of her long muzzle to begin lapping at your labia. You gasp at the feeling of her long, powerful muscle worming it's way over your most private region, slickening it with her saliva.";
	say "     Letting go of her mane, you bring both hands up to her pointy ears, which twitch and flick at your touch before you grasp them firmly, entrapping them as you press her face more firmly into your vagina. For her own part, your defeated Amazon seems to be getting a little more into it, and she is now licking more eagerly as she brings a hand to her own dripping pussy. 'That's a good girl, just like that,' you encourage her on. She grows more bold in her explorations at your behest, sometimes probing deeper into your snatch with her powerful tongue. The long organ feels wonderful as it presses apart the walls of your tunnel, stretching you out quite pleasurably. You're left feeling a little empty when her tongue recedes, until your arousal spikes again when you feel her playing with your clit. Your subby Amazon really knows how to pleasure a woman. Eventually, she brings you to orgasm, and you squirt your femcum all over her face, leaving her fur spattered in a messy sheen. The horsemazon simultaneously reaches her own orgasm as she fingers herself, apparently turned on by being used by you. She collapses down on the floor, and once you've calmed down a bit, you collect your gear and move on.";
	CreatureSexAftermath "Horsemazon" receives "OralPussy" from "Player";

to say horsemazonGiveOral:
	say "     Deciding that you want to turn the tables and surprise her, you reach down and flip the horse woman over on to her back. Uncooperative as she is, it's quite an effort given her size, but eventually you succeed. She's still too exhausted from the fight to resist you too much as you begin removing her clothes, shimmying her chaps down her legs to expose her pussy. There's a nervous look in her eyes as she wonders just what you're about to do. That look is replaced with one of surprise as you position yourself between her legs bring your lips down to her marehood. You gently kiss her, exploring her body, and she starts to relax as she looses herself to the pleasurable sensation.";
	say "     You grow more bold with your explorations and start to probe between her lips with your [bodytype of player] tongue. She gasps at the feeling of your invading muscle, and you smile knowing that you're having an effect on her. Stepping it up a notch, you bring your hand up to her clit and begin rubbing in a circular motion, teasing her. She shivers at the sensation, now completely lost in the sensation as she let's you have your way with her. You switch things up on her and bring your tongue to her clit, while your fingers begin probing her pussy. You start to finger fuck her even as you continue your licking until eventually, she's no longer able to handle the simultaneous stimulation. She orgasms, and you eagerly lick up her feminine juices as they leak from her snatch. Almost immediately, she passes out after her powerful climax, and you stand up to leave her there in a mess of her own juices.";
	CreatureSexAftermath "Player" receives "OralPussy" from "Horsemazon";

Section 5 - Monster Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	say "[horsemazonInsert]";

to say horsemazonInsert:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Horsemazon";
	add "Horsemazon" to infections of EquineList;
	add "Horsemazon" to infections of FurryList;
	add "Horsemazon" to infections of NatureList;
	add "Horsemazon" to infections of FemaleList;
	add "Horsemazon" to infections of BluntCockList;
	add "Horsemazon" to infections of SheathedCockList;
	add "Horsemazon" to infections of BipedalList;
	add "Horsemazon" to infections of TailList;
	now Name entry is "Horsemazon";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Jana"; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[horsemazonAttack]";
	now defeated entry is "[horsemazonDefeat]";
	now victory entry is "[horsemazonVictory]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block]
	now desc entry is "[horsemazonDescription]";
	now face entry is "distinctly equine, with a long muzzle, a pair of pointed ears, and a flowing mane of soft, silky hair running down the back of the neck";
	now body entry is "that of a bipedal horse, with digitigrade legs ending in hooves";
	now skin entry is "short brown fur with a healthy sheen";
	now tail entry is "Protruding from your rear is a tail hidden beneath a heap of fine, dark brown hair, a literal ponytail.";
	now cock entry is "[if looknow is 1]shaft, surrounded in a tight sheath surrounded by [Skin of Player] skin, protecting the wonderfully sensitive equine";
	now face change entry is "it draws forward into an equine muzzle, which rapidly fills with broad, flat teeth perfect for grazing. At the same time, your ears become more pointed and migrate towards the top of your now equine head, while a mane of flowing hair sprouts from the back of your neck";
	now body change entry is "your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely hoof-like and your hands become covered in a soft coat of fur";
	now skin change entry is "fur begins to push through from underneath, soon covering you in a coarse, protective coat of brown fur";
	now ass change entry is "a long tail pushes from your spine. It rushes straight out, then curls between your legs at the feeling of shock as you study the appendage";
	now cock change entry is "your shaft flares out at the tip, becoming wider at the head, while the rest evens out in width. The skin turns a fleshy pink with blotches of dark brown or black, before the whole thing slowly withdraws into a sheath you didn't have a moment ago";
	now str entry is 31;
	now dex entry is 19;
	now sta entry is 27;
	now per entry is 17;
	now int entry is 11;
	now cha entry is 17;
	now sex entry is "Female"; [ Defines which organs will be altered by the infection. current options are 'Male' 'Female' 'Both']
	now HP entry is 99;
	now lev entry is 10;
	now wdam entry is 14; [ Amount of Damage monster Does when attacking.]
	now area entry is "Plains";
	now Cock Count entry is 0; [ Used in infection Calculations, if cocks > 0 shaft will grow to cock length & girth dimensions slowly]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks > 0 ]
	now Ball Size entry is 0; [ Width Infection will make cock grow to is cocks > 0 ]
	now Nipple Count entry is 8; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1; [ if > 0 and sex = female or both, indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 16;
	now Cunt Tightness entry is 3;
	now libido entry is 10; [ Amount libido goes up by if you submit or are defeated by this monster ]
	now loot entry is "horsemazon fur";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]animalistic[at random]";
	now type entry is "equine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 1; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of Game Objects (continued)
name	desc	weight	object
"horsemazon fur"	"A tuft of brown fur that looks like it has been pulled out of the coat of a horsemazon. It's nicely soft."	0	horsemazon fur

horsemazon fur is a grab object.
Usedesc of horsemazon fur is "[horsemazonFurUse]".

It is temporary.

to say horsemazonFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Horsemazon";

instead of sniffing horsemazon fur:
	say "The fur has a pleasing, not too strong, animal-like scent, with a hint of grass.";

to say horsemazonheatstart:
	if heatform is 0:
		increase Cunt Tightness of Player by 1;
	else:
		increase Libido of Player by 5;

to say horsemazonheatend:
	if heatform is 0:
		decrease Cunt Tightness of Player by 1;
		if Cunt Tightness of Player is 0, now Cunt Tightness of Player is 1;

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Horsemazon";
	now heat cycle entry is 7;
	now heat duration entry is 2;
	now trigger text entry is "A sudden throb between your legs catches you off guard, startling a whimper from your throat as you feel a rush of heat between your legs. Nested between your thighs, your equine spade begins to puff up and swell, engorging and becoming looser, a slow but constant seepage of lubricating fluids starting to run down your thigh, making a mess of your [SkinName of Player] flesh. You are in heat, and your body is making it easy for any male to find and impregnate you.";
	now description text entry is "swollen and dripping horse twat ";
	now heat start entry is "[horsemazonheatstart]"; [Events that trigger at the start of the Heat, in the female-GSD case it increases the cunt width]
	now heat end entry is "[horsemazonheatend]"; [Events that trigger at the end of the Heat, in the female-GSD case it reduces cunt width]
	now inheat entry is "[defaultheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A sudden throb in your ass catches you off guard, startling a whimper from your throat as you feel a rush of heat surging inside you. You can feel your fecund ass preparing itself to be bred as you go into a tainted heat. Your anal passage quivers and you feel a longing for a nice, equine cock to fill it.";

a postimport rule: [bugfixing rules for players that import savegames]
	if there is a Name of "Horsemazon" in the Table of Random Critters:
		say "";
	else:
		say "[horsemazonInsert]";

a postimport rule: [bugfixing rules for players that import savegames]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Horsemazon":
			now MonsterID is y;
			if HP of Jana > 0:
				now area entry is "Nowhere";
			else:
				now area entry is "Plains";
			break;

Horsemazon ends here.
