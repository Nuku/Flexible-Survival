Version 1 of Master Mind by Stripes begins here.
[Version 1.1 - Repeatable M/F scene]
"Adds an elite Automaton female NPC going by the name of Master Mind to the Flexible Survival game."

Section 1 - Capture Task

[ This data is found within the Alexandra file - Task 54 (A_Task54) ]

Section 2 - Master Mind the Automaton

Table of GameCharacterIDs (continued)
object	name
Master Mind	"Master Mind"

Master Mind is a woman.
ScaleValue of Master Mind is 3. [human sized]
SleepRhythm of Master Mind is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Body Weight of Master Mind is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Master Mind is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Master Mind is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Master Mind is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Master Mind is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Master Mind is 6. [length in inches]
Breast Size of Master Mind is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Master Mind is 2. [count of nipples]
Asshole Depth of Master Mind is 8. [inches deep for anal fucking]
Asshole Tightness of Master Mind is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Master Mind is 0. [number of cocks]
Cock Girth of Master Mind is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Master Mind is 0. [Length in Inches]
Ball Count of Master Mind is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Master Mind is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Master Mind is 1. [number of cunts]
Cunt Depth of Master Mind is 8. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Master Mind is 1. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Master Mind is 2. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Master Mind is false.
PlayerRomanced of Master Mind is false.
PlayerFriended of Master Mind is false.
PlayerControlled of Master Mind is false.
PlayerFucked of Master Mind is false.
OralVirgin of Master Mind is true.
Virgin of Master Mind is true.
AnalVirgin of Master Mind is true.
PenileVirgin of Master Mind is true.
SexuallyExperienced of Master Mind is false.
TwistedCapacity of Master Mind is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Master Mind is true. [steriles can't knock people up]
MainInfection of Master Mind is "".
Description of Master Mind is "[masterminddesc]".
Conversation of Master Mind is { "meatbag" }.
The scent of the Master Mind is "Master Mind has little scent of her own, through there is a faintly feminine scent to her, coming from her juicy pussy.".
The icon of Master Mind is Figure of MasterMind_icon.

to say masterminddesc:
	say "     Imprisoned in one of the police station's cells, this gold-skinned automaton is some kind of elite model. She has a glass dome at the top of her cranium, through which you can see a computerized brain made of electronics, wires and blinking lights. It looks like something out of a 50[']s B-movie, but created with modern components. Her gold-plated skin is smooth and without blemish or patina. She is wearing a skintight silver jumpsuit that leaves little to the imagination, her firm nipples, camel toe and sexy ass all smoothly outlined by the fabric.";
	say "     She stands or sits impassively, quietly doing nothing during her confinement. Except when engaged in conversation, the only activity from her is the erratic flashing of the lights in her brain computing away in silence with a faint air of smugness to her else expressionless face.";

Instead of conversing the Master Mind:
	if HP of Master Mind is 0:
		say "     You and Alexandra confront your prisoner in an effort to get some information out of her. The doberwoman takes the lead starting by asking her name.";
		say "     'My name? It is *xzxxkkzzrrzzkkt*' she says, her voice turning to a series of fax machine noises that make the dog woman's sensitive ears dip. 'But you meatbags may refer to me as...' she pauses, computing, 'Master Mind. Yes. That is suitable for one such as I.'";
		say "     'Very well then, Master Mind it is,' Alexandra says, some edge in her voice after the painful static screeching. 'And what were you doing in those buildings?'";
		say "     'I was overseeing the manufacture more of our kind to increase production, using the [']raw materials['] available to do so,' she says with the edge of a smirk and an extra coldness in her tone as she eyes you both with eventual automatonizing in mind. 'I would have thought that would be obvious to even organics like you,' Master Mind adds haughtily. 'You even said it yourself.' Holding her mouth open wide, Alexandra's voice begins to issue from it. '...willfully spreading the infection with the intent to enslave and cause harm.'";
		say "     The doberwoman takes a moment to compose herself after the playback. 'Where are the other leader models like you? How many of them are there?'";
		say "     The golden android seems amused by the question. 'Try as you might, organic, you'll never find them.'";
		say "     'We found you, didn't we?' Alexandra says with a grin, the smug one this time.";
		say "     'Indeed.' The elite automaton's tone is flat and she falls silent after that, refusing to respond to further questions. Eventually Alexandra grows tired of trying to question the unresponsive android and storms off with a growl, leaving you alone with her.";
		increase HP of Master Mind by 1;
	else if HP of Master Mind is 1:
		say "[one of]The golden automaton listens impassively to you, making no response to your attempts to communicate.[or]'I look forward to seeing your meat bitch be silenced.'[or]'The two of you will make fine, strong automatons when your conversion finally arrives. I look forward to it. I may even keep you so I might use you both for my recreation. Perhaps you'd care to [']recreate['] right now,' she says with a slow, sensual edge to her voice while running her hands along the smooth, silvery fabric of her body-clinging outfit.[or]'This is an interesting choice of safe haven. How many meatbags are you even trying to hide in here? How long do you think it will last before your biological instincts results in its downfall in an orgy of transformation?'[or]The glass-skulled android seems to ignore you, her brain lights blinking away passively as she stands in the middle of her cell.[at random]";
	else:
		say "[one of]The golden automaton listens impassively to you, making no response to your attempts to communicate.[or]'I look forward to seeing your meat bitch be silenced.'[or]'The two of you will make fine, strong automatons when your conversion finally arrives. I look forward to it. I may even keep you so I might use you both for my recreation. Perhaps you'd care to [']recreate['] again,' she says with a slow, sensual edge to her voice while running her hands along the smooth, silvery fabric of her body-clinging outfit.[or]'This is an interesting choice of safe haven. How many meatbags are you even trying to hide in here? How long do you think it will last before your biological instincts results in its downfall in an orgy of transformation?'[or]The glass-skulled android seems to ignore you, her brain lights blinking away passively as she stands in the middle of her cell.[at random]";


the fuckscene of Master Mind is "[sexwithmastermind]".

to say sexwithmastermind:
	if HP of Master Mind is 0:
		say "     Shouldn't you be more focused on questioning the prisoner before thinking about doing something like that. [']Rather[']. You meant [']rather['] than doing something like that, didn't you?";
	else if Player is neuter:
		say "     At present, you have even less of a gender than you'd expect the android you're thinking of making out with should have. Perhaps it'd be best to resolve that before trying to play around with the prisoner.";
	else if lastfuck of Master Mind - turns < 6:
		say "     You should probably give it a rest for a little while. You don't want to get caught fooling around with the prisoner.";
	else if HP of Master Mind is 1:
		say "     The idea of trying to interrogate the prisoner yourself comes to mind, but through other means. Your mind, tumbling into the gutter, shifts to kinkier ways to go about it. Checking to make sure no one's coming back down here, you obtain the cell door keys from the security safe holding them. Remembering the way she infected that guy so quickly, you also grab the handcuffs. Returning to her cell, you order her forward and to place her hands between the bars. After studying you for a few moments, as if testing your patience, she complies, allowing you to handcuff her to the bars. Once she's secured, you open the door and enter her cell.";
		say "     Left with the role of bad cop, you push her roughly from behind, pressing her firmly against the wall of bars. Growling, you demand to know where the other automaton elite like her are and what their plan is. She groans a little, but doesn't answer. Pressing a little harder, you also reach around to grope her breast firmly. Despite her metallic skin, her tit is soft and squeezing it draws another groan from her. Grabbing between her thighs, you rub at her thinly covered crotch roughly, ordering her to tell you everything she knows.";
		WaitLineBreak;
		say "     'I know far more than your primitive meat brain can hold, you neanderthal,' she taunts. 'And it'll take more than that to get me to talk.' You manhandle her roughly for her insolence before pulling that silvery jumpsuit of her open from the rear. With her bare flesh-metal exposed to you, you grab that tight ass of hers and give it a hard slap. You have to bite back a yowl from hitting her metal bottom, at least pleased that she gives a whimper as well.";
		if Player is male:
			say "     Having gotten hard from your rough interrogation methods, you grind your manhood against her shiny buns and kick her legs apart. She squirms a little, but it's easy to keep her in position thanks to the handcuffs and her half-removed jumpsuit restricting her movement. Pressing your glans to her slick pussy, you again demand the information.";
			WaitLineBreak;
			say "     'Don't you dare, you meat beast.' Your prisoner, unable to pull free, can only squirm and moan as you rub your cock against her waiting folds, coaxing more clear, oily lubrication to leak from it. When you repeat your question, her response is to bite her lip and remain silent. A part of you is pleased, glad for the excuse to drive your [Cock of Player] penis into her[if Cock Length of Player > 14], spreading her wide open to accommodate your [cock size desc of Player] manhood[end if]. Still groping her bosom and tweaking those hard nipples of hers, you pound away at her pussy, stuffing her over and over again. And her body responds to the fucking, her hips grinding back onto you.";
			say "     'Is... nggg... that all you've got, meatbag?' she taunts. 'I have robotic lovers that... mmm... never tire. You'll... nggg... have to do better than... ohhh yeah... better than that if you want to break me.' Rising to the challenge, you quicken the pace, thrusting harder and drilling roughly into her, forcing your [cock size desc of Player] rod into her over and over again. The android woman's pussy is a delight to fuck - slick, smooth and yielding enough for you to slide into, but also squeezing and milking at you like one made of living flesh. You run your hands over her smooth body, groping her roughly and manhandling her like your prison bitch, which only draws more and loader moans of lustful need from her.";
			WaitLineBreak;
			say "     Going at it hard and fast, the two of you lose track of everything but the fucking, going at it hot and heavy. You give her a thorough pounding before finally peaking, driving your rod deep inside her and unleashing your [Cum Load Size of Player] load into her quivering cunt. Blast after blast of your load fires into her, filling her with your semen. Her vagina squeezes down around you and she cries out, her own orgasm arriving to milk a few extra bursts out of you. When you're done with her, you pull out, leaving your semen to run down her thighs. After a few moments and heaving breaths to recover, you grab her by the chin and ask her if she's willing to talk now.";
			say "     She grins and grinds her hips against yours. 'Oh that was amusing, little meat puppet,' she says, panting hard. 'That was almost satisfying... though you're welcome to try again soon.' Not one to leave it at that, you grope her roughly and finger her leaking cunt. And once you've gotten her good and worked up again, you step away, leaving the smug bitch unsatisfied as you lock up her cell and return the cuffs and keys where you got them.";
		else:
			say "     Having gotten turned on by your rough interrogation methods, you grind your puss[yfn] against her thigh while groping between her legs, this time onto her bare cunny. She squirms a little, but it's easy to keep her in position thanks to the handcuffs and her half-removed jumpsuit restricting her movement. Rubbing your fingers between her golden folds, you again demand the information.";
			WaitLineBreak;
			say "     'Don't you dare, you meat beast.' Your prisoner, unable to pull free, can only squirm and moan as you press two fingertips into her vagina, coaxing more clear, oily lubrication to leak from it. When you repeat your question, her response is to bite her lip and remain silent. A part of you is pleased, glad for the excuse to take this further, and you push your fingers into her[if scalevalue of Player > 3], your thick digits spreading her open to accommodate them[end if]. Still groping her bosom and tweaking her hard nipple with your free hand, you pound away at her pussy, stuffing her over and over again. And her body responds to the rough attention, her hips grinding against your palm.";
			say "     'Is... nggg... that all you've got, meatbag?' she taunts. 'I have a harem of robotic females to... mmm... lavish me with attention. You'll... nggg... have to do better than... ohhh yeah... better than that if you want to break me.' Rising to the challenge, you quicken the pace, finding and exploiting any sensitive spot you can find. The android woman's pussy is delightfully life-like - slick, smooth and yielding enough for you to slide into, but also squeezing and milking at your fingers like one made of living flesh. You rub her clit, folds and inner walls even as you hump your crotch against her smooth skin. And while this is only partially satisfying, the excitement of mandhandling her like your prison bitch fuels your arousal.";
			WaitLineBreak;
			say "     Going at it hard and fast, the two of you lose track of everything but the lesbian lust, going at it hot and heavy. You give her a thorough frigging before finally driving her to orgasm. Her vagina squeezes down around your fingers and she cries out, warm lube soaking your digits and her crotch. The knowledge that you've pushed the automaton prisoner to orgasm soon has you cumming as well, your hot juices left in streaks across her smooth skin as you hump her all the harder. You grind against her golden ass until you're left panting and heaving for breath. After a few moments to recover, you grab her by the chin and ask her if she's willing to talk now.";
			say "     She grins and grinds her hips against yours. 'Oh that was amusing, little meat puppet,' she says, panting hard. 'That was almost satisfying... though you're welcome to try again soon.' Not one to leave it at that, you drive your fingers back into her sopping cunt, frigging her hard and fast again. But this time once you've gotten her good and worked up, you step away, leaving the smug bitch unsatisfied as you lock up her cell and return the cuffs and keys where you got them.";
		increase HP of Master Mind by 1;
	else:
		say "     Deciding to have another go at [']interrogating['] the prisoner, you collect the cell door keys from the security safe as well as a set of handcuffs. Returning to her cell, you order the robotic woman to place her hands between the bars. 'Ah. I am to be [']questioned['] again, am I? Do you think you can break me this time? You're welcome to try,' she says flatly while letting you handcuff her to the bars. Her dispassionate attitude frustrates you, making your blood boil a little.";
		say "     With her secured, you enter her cell and push her firmly against the bars. Already worked up, you jump right into it by pulling open her silvery jumpsuit so you can grope one of her shiny breasts. Playing with her tit and pinching her nipple causes her to release a soft whimper that she tries to bite back. Tweaking it again causes her to moan a little louder, so you keep it up. Adding a pair of fingers plunging into her slick pussy, you demand to know what she and the others are planning.";
		say "     'Once you're all remade into automatons, you won't be so uppity. Oh, how I will enj- Ahhh! enjoy seeing you as a mindless robot.' Master Mind's nipples are hard and her pussy wet with juices, perhaps turned on by the sinister thought of turning you into another robotic slave";
		if Player is male:
			say ". Pushing her hard enough against the bars that her metallic skin makes them clang, you kick her legs apart and press your stiff cock against her well-lubed pussy. With your erection poised to fuck your prisoner, you ask her again for information on the others.";
			WaitLineBreak;
			say "     'Filthy organic! You'll get nothing from me!' she says as she struggles to pull free. Being pinned between you and the bars as well as bound by the handcuffs and her half-removed jumpsuit, she's unable to push you away. If anything, her struggles only further excite some dark corner of your mind, urging you on. With a slight growl, you thrust into her pussy, [if Cock Length of Player > 14]spreading her wide to accommodate your [cock size desc of Player] manhood[else]pushing your [cock size desc of Player] manhood forward[end if]. Still groping her bosom and tweaking those hard nipples of hers, you pound away at her pussy, stuffing her over and over again. And her body responds to the fucking, her hips grinding back onto you.";
			say "     'Surely even a-ahhh meatbag like you-ooo can do better than that,' she taunts. 'My tireless robot slaves a-ahh-are far superior[if Cock Length of Player < 14]. You won't... nggg... break me with that... ohhh yeah... pitiful meat stick of yours[else]. Even that... nggg... freakishly big mmmm-meat stick of yours... nggg... won't break me[end if].' Rising to the challenge, you quicken the pace, thrusting harder and drilling roughly into her, forcing your [Cock of Player] rod into her over and over again. The android woman's pussy is a delight to fuck - slick, smooth and yielding enough for you to slide into, but also squeezing and milking at you like one made of living flesh. You run your hands over her smooth body, groping her roughly and manhandling her like your prison bitch, which only draws more and loader moans of lustful need from her.";
			WaitLineBreak;
			say "     Going at it hard and fast, the two of you lose track of everything but the fucking, going at it hot and heavy. You give her a thorough pounding before finally peaking, driving your rod deep inside her and unleashing your [Cum Load Size of Player] load into her quivering cunt. Blast after blast of your load fires into her, filling her with your semen. Her vagina squeezes down around you and she cries out, her own orgasm arriving to milk a few extra bursts out of you. When you're done with her, you pull out, leaving your semen to run down her thighs. After a few moments and heaving breaths to recover, you grab her by the chin and ask her if she's willing to talk now.";
			say "     Still wearing that smug grin of hers, if also a little bit flushed with a rusty glow after the rough pounding, she grinds her hips back against you. 'You are amusingly persistent, little meat puppet,' she says, panting hard. 'That was almost satisfying[if HP of Master Mind is 2]. Perhaps if you keep it up, you'll learn something.' For a moment, you think you may have made headway, but she gives a robotic laugh. 'I like my robot slaves to be... skilled,' she says, the glow in her eyes growing more intense as she glares at you. [else] this time. Perhaps you'd like to try again.' [end if]You push her smug face against the bars and finger her messy cunt until she's good and worked up. Leaving her hanging again, you step away once she's aroused and remind her that a [']meatbag['] did that to her and that you'll do it again until she learns to be more forthcoming. With her frustrated and aroused, you leave her cell. Locking the cell and removing her cuffs, you leave the cold robotic bitch alone and unsatisfied.";
		else:
			say "[bracket]***Alternate F/F sex scene to come later. Please enjoy the original one again for now.[close bracket][line break]";
			LineBreak;
			say "     The idea of trying to interrogate the prisoner yourself comes to mind, but through other means. Your mind, tumbling into the gutter, shifts to kinkier ways to go about it. Checking to make sure no one's coming back down here, you obtain the cell door keys from the security safe holding them. Remembering the way she infected that guy so quickly, you also grab the handcuffs. Returning to her cell, you order her forward and to place her hands between the bars. After studying you for a few moments, as if testing your patience, she complies, allowing you to handcuff her to the bars. Once she's secured, you open the door and enter her cell.";
			say "     Left with the role of bad cop, you push her roughly from behind, pressing her firmly against the wall of bars. Growling, you demand to know where the other automaton elite like her are and what their plan is. She groans a little, but doesn't answer. Pressing a little harder, you also reach around to grope her breast firmly. Despite her metallic skin, her tit is soft and squeezing it draws another groan from her. Grabbing between her thighs, you rub at her thinly covered crotch roughly, ordering her to tell you everything she knows.";
			WaitLineBreak;
			say "     'I know far more than your primitive meat brain can hold, you neanderthal,' she taunts. 'And it'll take more than that to get me to talk.' You manhandle her roughly for her insolence before pulling that silvery jumpsuit of her open from the rear. With her bare flesh-metal exposed to you, you grab that tight ass of hers and give it a hard slap. You have to bite back a yowl from hitting her metal bottom, at least pleased that she gives a whimper as well.";
			say "     Having gotten turned on by your rough interrogation methods, you grind your puss[yfn] against her thigh while groping between her legs, this time onto her bare cunny. She squirms a little, but it's easy to keep her in position thanks to the handcuffs and her half-removed jumpsuit restricting her movement. Rubbing your fingers between her golden folds, you again demand the information.";
			WaitLineBreak;
			say "     'Don't you dare, you meat beast.' Your prisoner, unable to pull free, can only squirm and moan as you press two fingertips into her vagina, coaxing more clear, oily lubrication to leak from it. When you repeat your question, her response is to bite her lip and remain silent. A part of you is pleased, glad for the excuse to take this further, and you push your fingers into her[if scalevalue of Player > 3], your thick digits spreading her open to accommodate them[end if]. Still groping her bosom and tweaking her hard nipple with your free hand, you pound away at her pussy, stuffing her over and over again. And her body responds to the rough attention, her hips grinding against your palm.";
			say "     'Is... nggg... that all you've got, meatbag?' she taunts. 'I have a harem of robotic females to... mmm... lavish me with attention. You'll... nggg... have to do better than... ohhh yeah... better than that if you want to break me.' Rising to the challenge, you quicken the pace, finding and exploiting any sensitive spot you can find. The android woman's pussy is delightfully life-like - slick, smooth and yielding enough for you to slide into, but also squeezing and milking at your fingers like one made of living flesh. You rub her clit, folds and inner walls even as you hump your crotch against her smooth skin. And while this is only partially satisfying, the excitement of manhandling her like your prison bitch fuels your arousal.";
			WaitLineBreak;
			say "     Going at it hard and fast, the two of you lose track of everything but the lesbian lust, going at it hot and heavy. You give her a thorough frigging before finally driving her to orgasm. Her vagina squeezes down around your fingers and she cries out, warm lube soaking your digits and her crotch. The knowledge that you've pushed the automaton prisoner to orgasm soon has you cumming as well, your hot juices left in streaks across her smooth skin as you hump her all the harder. You grind against her golden ass until you're left panting and heaving for breath. After a few moments to recover, you grab her by the chin and ask her if she's willing to talk now.";
			say "     She grins and grinds her hips against yours. 'Oh that was amusing, little meat puppet,' she says, panting hard. 'That was almost satisfying... though you're welcome to try again soon.' Not one to leave it at that, you drive your fingers back into her sopping cunt, frigging her hard and fast again. But this time once you've gotten her good and worked up, you step away, leaving the smug bitch unsatisfied as you lock up her cell and return the cuffs and keys where you got them.";
		if HP of Master Mind is 2, now HP of Master Mind is 3;




[       HP of Master Mind      ]
[ 0 - not talked to her        ]
[ 1 - talked to her            ]
[ 2 - fucked her               ]
[ 3 - fucked her again         ]

Master Mind ends here.
