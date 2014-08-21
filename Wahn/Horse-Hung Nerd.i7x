Version 1 of Horse-Hung Nerd by Wahn begins here.
[Version 1    - Initial setup]
[Version 1.1  - Player Victory Sex]

"Adds a Horse Hung Nerd to Flexible Survivals Wandering Monsters table, with impreg chance"

NerdMeetings is number that varies.

when play begins:
	add { "Horse-Hung Nerd" } to infections of guy;

Section 1 - Monster Responses

to say HHNerd wins:
	setmonster "Horseman";
	choose row monster from the table of random critters;
	if hp of player > 0: [player submits]
		if anallevel is 0 or (cocks of player is 0): [blowjob for females, neuters and those who don't like anal]
			say "     As you submit and fall to your knees, Clyde grins down at you and says, 'So you do know how to treat your betters after all. This is how it should be - with the smartest people at the top, not the most violent. Good that you've seen the light.' Chuckling, he grabs hold of his cock, jerking its long shaft with both hands. As it quickly gets fully hard, Clyde steps up to you and says 'Now open wide...'";
			say "     [HHNerd Sucking]";
		otherwise: [random fuck/suck]
			if a random chance of 1 in 3 succeeds:
				say "     As you submit and fall to your knees, Clyde grins down at you and says, 'So you do know how to treat your betters after all. This is how it should be - with the smartest people at the top, not the most violent. Good that you've seen the light.' Chuckling, he grabs hold of his cock, jerking its long shaft with both hands. As it quickly gets fully hard, Clyde steps up to you and says 'Now open wide...'";
				say "     [HHNerd Sucking]";
			otherwise:
				say "     As you submit and fall to your knees, Clyde grins down at you and says, 'So you do know how to treat your betters after all. This is how it should be - with the smartest people at the top, not the most violent. Good that you've seen the light.' Chuckling, he grabs hold of his cock, jerking its long shaft with both hands. As it quickly gets fully hard, Clyde steps up to you and says 'Lie down and spread your legs - I'm gonna fuck you now...'";
				say "     [HHNerd Fucking]";
		say "[line break]";
		infect "Horseman";
	otherwise: [player loses]
		if anallevel is 0 or (cocks of player is 0): [blowjob for females, neuters and those who don't like anal]
			say "     As you fall to your knees in front of him in exhaustion, Clyde grins down at you and says, 'See - I'm superior in every way. Mentally, as well as physically. Let this be a lesson how to treat your betters. This is how it should be - with the smartest people at the top.' Chuckling, he grabs hold of his cock, jerking its long shaft with both hands. As it quickly gets fully hard, Clyde steps up to you and says 'Now open wide...'";
			say "     [HHNerd Sucking]";
		otherwise: [random fuck/suck]
			if a random chance of 1 in 3 succeeds:
				say "     As you fall to your knees in front of him in exhaustion, Clyde grins down at you and says, 'See - I'm superior in every way. Mentally, as well as physically. Let this be a lesson how to treat your betters. This is how it should be - with the smartest people at the top.' Chuckling, he grabs hold of his cock, jerking its long shaft with both hands. As it quickly gets fully hard, Clyde steps up to you and says 'Now open wide...'";
				say "     [HHNerd Sucking]";
			otherwise:
				say "     As you fall to your knees in front of him in exhaustion, Clyde grins down at you and says, 'See - I'm superior in every way. Mentally, as well as physically. Let this be a lesson how to treat your betters. This is how it should be - with the smartest people at the top.' Chuckling, he grabs hold of his cock, jerking its long shaft with both hands. As it quickly gets fully hard, Clyde steps up to you and says 'Lie down and spread your legs - I'm gonna fuck you now...'";
				say "     [HHNerd Fucking]";
		say "[line break]";
		infect "Horseman";

to say HHNerd Sucking:
	if "Submissive" is listed in feats of player: [sub players]
		say "     Feeling a shiver of arousal run down your spine as you're ordered around, you open your mouth and obediently await Clyde's cock. Grinning widely at your eagerness to serve, the horse-hung nerd rubs the flared tip of his horsecock against your face first, smearing it with precum. Then he holds it out for you, at which point you happily slide your lips over his shaft and start sucking. 'Oh yeah,' the young man grunts as you bob up and down on his shaft, 'Just like that. That's a good [if cunts of player > 0]girl[otherwise]boy[end if].'";
		say "     With you using your hands to jerk your master's cock and fondle his balls while you suck him, Clyde gets treated to a very nice and stimulating blowjob. It's quite clear that he likes your lips and tongue working on his shaft - a lot - judging from all the moans and grunts he's making. In fact, you seem to have such a strong effect on his arousal that it doesn't take all that long to drive him over the edge. Grabbing your head in a hasty and sudden movement, he pulls you down on his shaft as far as you can take, grunting deeply as the first blast of cum is pumped directly into your stomach. Another and another thick pulse of his seed follows, giving you a pretty full feeling. Soon you feel that you just can't take much more and push against Clyde's hips to show him to pull out. As he does so, one last big spurt of cum shoots directly into your mouth and covers your tonsils, with everything afterwards just splattering your face and chest with horse-cum.";
		say "     [WaitLineBreak]";
		say "     When Clyde's orgasm finally starts to ebb and the amount of cum in each new spurt diminishes until they cease, the young man looks down on your cum-splattered form with a grin. He says 'Rub it in, all over your face and chest.' - which you're only too happy to do for him, aroused at him using and commanding you. 'Remember this for next time, so you know what to do and how to please me,' Clyde says while pushing his still cum-dripping horsecock down the [one of]left[or]right[at random] leg of his pants, then he zips up and struts off with a spring in is step.";
	otherwise:
		say "     Reluctantly, but unwilling to face another beating by the randy nerd, you open your mouth and sullenly await Clyde's cock. Grinning widely at being able to force you into this, the horse-hung nerd rubs the flared tip of his horsecock against your face first, smearing it with precum. Then he holds it out for you, slapping its meaty shaft against your cheeks a few times as you don't react quick enough for his taste. After a humiliating bit of getting slapped in the face by this young man's giant cock, you are allowed to start sucking. 'Oh yeah,' the young man grunts as you bob up and down on his shaft, 'Just like that. That's a good [if cunts of player > 0]girl[otherwise]boy[end if].'";
		say "     Having no choice but to do this, you try to get it over with quickly at least and start to use your hands to jerk and fondle Clyde's cock and balls while you suck him. It's quite clear that he likes your lips and tongue working on his shaft - a lot - judging from all the moans and grunts he's making. In fact, you seem to have such a strong effect on his arousal that it doesn't take all that long to drive him over the edge. Grabbing your head in a hasty and sudden movement, he pulls you down on his shaft as far as you can take, grunting deeply as the first blast of cum is pumped directly into your stomach. Another and another thick pulse of his seed follows, giving you a pretty full feeling. Soon you feel that you just can't take much more and push against Clyde's hips to show him to pull out. As he does so, one last big spurt of cum shoots directly into your mouth and covers your tonsils, with everything afterwards just splattering your face and chest with horse-cum.";
		say "     [WaitLineBreak]";
		say "     When Clyde's orgasm finally starts to ebb and the amount of cum in each new spurt diminishes until they cease, the young man looks down on your cum-splattered form with a grin. He says 'Rub it in, all over your face and chest.' - which you do after a little shrug. He's fed you quite a bit of his cum, so what's a bit rubbed into your skin after that. 'Remember this for next time, so you know what to do and how to please me,' Clyde says while pushing his still cum-dripping horsecock down the [one of]left[or]right[at random] leg of his pants, then he zips up and struts off with a spring in is step.";

to say HHNerd Fucking:
	if "Submissive" is listed in feats of player: [sub players]
		say "     Feeling a shiver of arousal run down your spine as you're ordered around, you quickly strip and layer your clothes on the ground as an improvised pad to lie on. Obediently following Clyde's wishes, you get down on the ground, spreading and holding your legs open to present your asshole to him, just waiting to be taken. Grinning widely at your eagerness to serve, Clyde kneels and rubs his horsecock against your ass before aligning it with your pucker. You feel wetness against your skin as the horse-hung nerd milks a copious amount of pre-cum out of his cock, smearing it over your hole and pushing it in with two fingers of his other hand. Moaning at feeling your master's probing fingers inside your hole, you relax for him as best as you can.";
		say "     [WaitLineBreak]";
		say "     After loosening you up with his fingers, adding first one more, then another, Clyde groans 'Time for you to feel me inside you. Get ready.' With that, he nudges your back door with the flared tip of his equine cock, then steadily presses in, stretching your insides around his invading member. You can see on the slender young man's face how he savours every moment, not just because of the sensations being inside you gives him, but also because of having power over another being and seeing his demands fulfilled. He gives sudden little thrusts in between the slow and smooth push into you, enjoying the gasps and pants he can draw out of you with that.";
		say "     When he's finally all the way in some time later, his big balls resting against your ass, Clyde pants 'Now beg me to fuck you. Beg to be fucked by a nerd!' Incredibly turned on by the horse-hung student's demands, you plead for him to take you, dominate you completely and fill you with his seed. He listens a moment with a superior grin on his face, then coos, 'As you wish.' Pulling back out until only the very tip of his flared member is inside of you, he then rams it all back in with a deep thrust that can't help but make you wince. The pounding your ass gets after that really shows all the stored-up anger in this young man, stemming from always having been pushed around by more athletic men and never respected for what he was. It's a wild ride, rough and hard, though you actually have a pretty amazing time, getting off from just being used as his fucktoy as well as him hitting your prostate again and again.";
		say "     [WaitLineBreak]";
		say "     Finally, the limits of Clyde's stamina are reached and he thrusts in all the way one last time and floods your insides with his cum. You can feel his shaft pulse with blast after blast of equine seed exploding into you and the great satisfaction of having made your master come runs through your innermost depths. In fact, it's even enough to drive you over the edge yourself, wound-up as you are. Long squirts of cum arc up from your erect cock to splash down on your chest and face.[mimpregchance]";
		say "     'Remember this for next time, so you know what to do and how to please me,' Clyde says after catching his breath, then pulls out and stands up. Pushing his still cum-dripping horsecock down the [one of]left[or]right[at random] leg of his pants, he zips up, then struts off with a spring in is step.";
	otherwise:
		say "     Reluctantly, but unwilling to face another beating by the randy nerd, you strip and layer your clothes on the ground as an improvised pad to lie on. Then you get down on the ground, just as per Clyde demanded, spreading and holding your legs open to present your asshole to him. Grinning widely at your unhappy expression, Clyde kneels and rubs his horsecock against your ass before aligning it with your pucker. You feel wetness against your skin as the horse-hung nerd milks a copious amount of pre-cum out of his cock, smearing it over your hole and pushing it in with two fingers of his other hand. At first it's not easy for him, as you're pretty tense back there, but you force yourself to relax after getting a stinging slap on the butt from the impatient nerd.";
		say "     [WaitLineBreak]";
		say "     After loosening you up with his fingers, adding first one more, then another, Clyde groans 'Time for you to feel me inside you. Get ready.' With that, he nudges your back door with the flared tip of his equine cock, then steadily presses in, stretching your insides around his invading member. You can see on the slender young man's face how he savours every moment, not just because of the sensations being inside you gives him, but also because of having power over another being and seeing his demands fulfilled. He gives sudden little thrusts in between the slow and smooth push into you, enjoying the gasps and pants he can draw out of you with that.";
		say "     When he's finally all the way in some time later, his big balls resting against your ass, Clyde pants 'Now beg me to fuck you. Beg to be fucked by a nerd!' Forced to comply with the horse-hung student's demands, you plead for him to take you, doing your best to sound as if you really want him. He listens a moment with a superior grin on his face, then coos, 'As you wish.' Pulling back out until only the very tip of his flared member is inside of you, he then rams it all back in with a deep thrust that can't help but make you wince. The pounding your ass gets after that really shows all the stored-up anger in this young man, stemming from always having been pushed around by more athletic men and never respected for what he was. It's a wild ride, rough and hard, though you just can't help but feel lust boil up inside you as he hits your prostate again and again.";
		say "     [WaitLineBreak]";
		say "     Finally, the limits of Clyde's stamina are reached and he thrusts in all the way one last time and floods your insides with his cum. You can feel his shaft pulse with blast after blast of equine seed exploding into you and giving you a nice and full feeling. Momentarily pacified by getting his rocks off, the panting young student even grabs hold of your own cock and jerks it a few times, quickly pushing you over the edge too. Long squirts of cum arc up from your erect cock to splash down on your chest and face.[mimpregchance]";
		say "     'Remember this for next time, so you know what to do and how to please me,' Clyde says after catching his breath, then pulls out and stands up. Pushing his still cum-dripping horsecock down the [one of]left[or]right[at random] leg of his pants, he zips up, then struts off with a spring in is step.";

to say HHNerd loses:
	if a random chance of 1 in 3 succeeds:
		say "     Finding himself on the losing side of your confrontation, Clyde quickly pulls a small test-tube out of his pocket, popping off its cork and throwing its contents at you. You do your best to evade, but even so, some of the stuff splashes on you - and forces you almost to your knees with its stench. Man - what kind of chemical was that? A bit dazed by this unexpected attack, you stumble backwards and frantically throw off soiled clothing and try to rub the scent off your skin... which gives Clyde easily enough time to run off. The last you hear from him are the words 'You'll regret resisting against me!', shouted over his shoulder.";
	otherwise:
		say "     Finding himself on the losing side of your confrontation, Clyde quickly pulls a small test-tube out of his pocket, getting ready to... do something with it you guess. As you don't want to find out, you react instantly and slap his hand to the side, sending the glass vial flying away. After that, you set an end to the fight with a punch to Clyde's nose, sending the nerdy guy sprawling on the ground. Groaning, he sits up on the ground, wiping a small amount of blood from his nose as he says 'Okay, you win. The cleverer give in, so stop hitting me.'";
		say "     Now that you've got him at your mercy, what do you do with Clyde?";
		wait for any key;
		say "     [HHNerdSexMenu]";

to say HHNerdSexMenu:
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 1;
		now description entry is "Pound Clyde's butt.";
		now toggle entry is HHNerdSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Blow him off";
	now sortorder entry is 2;
	now description entry is "Suck the nerd's horsecock.";
	now toggle entry is HHNerdSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Give him a kick and leave";
	now sortorder entry is 10;
	now description entry is "Just walk away from the nerdy bastard.";
	now toggle entry is HHNerdSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the HHNerdSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Fuck his ass"):
			say "[HHNerdSex1]";
		if (nam is "Blow him off"):
			say "[HHNerdSex2]";
		otherwise if (nam is "Give him a kick and leave"):
			say "     Giving Clyde a kick, you turn around and walk away. It's doubtful that he'll learn anything from this, but sometimes kicking people just feels good.";
		wait for any key;

to say HHNerdSex1:
	say "     Standing over Clyde, you undo your pants and drop them, letting your [cock size desc of player] [cock of player] shaft dangle before his eyes. [if cock length of player < 10]He scoffs 'You call that a penis? Such a little - *hnggg*' ...as it turns out, a quick pull on his mane of hair is an effective way of shutting this pain in the ass up. [otherwise if cock length of player < 20]He scoffs 'You think you're big, don't you? If you had just submitted as you're supposed to, I'd have shown you - *hnggg*' ...as it turns out, a quick pull on his mane of hair is an effective way of shutting this pain in the ass up. [otherwise]He scoffs 'You might be hung like me, but I bet I'm much better in - *hnggg*' ...as it turns out, a quick pull on his mane of hair is an effective way of shutting this pain in the ass up. [end if]Telling the stuck-up student that you'll show him what his behaviour gets him, you order him to get on all fours. After a moment's hesitation, he complies, getting into position with his ass raised high, though not without giving a little annoyed grunt as he does so.";
	say "     You jerk yourself to full hardness, then kneel down behind him and put both hands on the tight buttcheeks he presents to you. They're nice and firm, feeling warm and smooth under your groping fingers, and as you pull them apart you see Clyde's pink, winking pucker. Putting a bit of spit on your fingers, you poke them into his hole, finding it pretty relaxed and easily stretching around your probing digits. Seems like your nerd-boy here has been playing with his ass for quite a while. Seeing how easily he takes two, then three fingers, you decide it's time for the main event and align your hard cock with Clyde's hole. He gives a lust-filled pant as you push forward and pop past his ring-muscle, then sink deeper and deeper into him. Finally your balls touch his ass, with your whole [cock length of player] inches of cock inside his passage.";
	say "     [WaitLineBreak]";
	say "     Yielding, but tight - Clyde really does have a very nice bottom, though you'd wish it was attached to a nicer person. It doesn't take long before the horse-hung nerd gets over the feelings of being penetrated and starts getting bossy again, calling over his shoulder 'Fuck me already, you stupid brute!' Well, he asked for it, so you pull out most of the way and slam your manhood back in quickly until your hips meet Clyde's cheeks with a meaty slap. He winces a little under is breath, but mostly just moans and pushes back against you, obviously enjoying getting a rough fuck. Clyde even pants 'Yeah, just like that. Keep going!' in between all the groans and gasps.";
	say "     He keeps riling you up with snotty comments and grumbling, making you fuck him in a rapid pace and with pretty hard strokes, just as he likes it. You can feel yourself getting closer to orgasm by the second - and you're not the only one. Suddenly Clyde gives a shout 'I'm coming!' and starts trembling under you, his whole body twitching as cum blasts from his equine shaft and hits the ground. His anal muscles tighten around your manhood with each spurt, driving you over the edge just moments later. Breathing heavily, you thrust into him all the way and unload your big load deep inside him. After staying balls-deep in Clyde's hole until your last spurts of cum ebb away, you pull out of him with a wet slurp then just grab your clothes and go, leaving the panting student to pick himself up later.";

to say HHNerdSex2:
	say "    Kneeling down besides the downed student, you take hold of his meaty, equine shaft. Fingers around the long member, you start jerking on it, causing the guy to pant and moan as you stroke him. True to his contrary character, Clyde opens his mouth to say something (very likely demeaning), but you quickly get him to shut up with the threat of just stopping what you're doing. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the beat of his heart as it sends blood to this priority organ. Setting down your other hand on the full, weighty globes of his balls, you stroke and fondle your horse-hung nerd boy a bit, grinning as he gives aroused grunts at your touch. Leaning forward, you lick up the glistening bead of precum forming at the tip of his hard cock, and finding it nicely tasty, you immediately slide your lips over his cockhead and start blowing him off.";
	say "     With both your hands on his long pole while you bob your head up and down and tease him with your tongue, you quickly push the young man to higher and higher arousal. Before that much longer, his grunts and moans betray a growing urgency as they rise in volume, and you can feel him getting pretty close. Eager to taste what he has to offer, you proceed to go down on him with even greater relish and just moments later, a shudder runs through the slender man's supine body and he orgasms. Accompanied by loud lust-filled grunts, blast after blast of his creamy horse-cum fills your mouth. You do your best to swallow it all, though with the sheer volume he puts out, you soon can't keep up. Forced to pull off his cock, you're sprayed with several big blasts of his cum, covering your face and chest with the horsey nerd's seed. Demanding he take his shirt off, you use it to wipe yourself clean again afterwards, then drop it on his chest afterwards and walk away, leaving the panting student to pick himself up later.";

to say HHNerdDesc:
	if NerdMeetings is 0:
		say "     A tall and pretty slender guy comes into your line of sight on the campus grounds, some distance ahead of you. Dressed in tight jeans and a t-shirt, your first impression of him says human, though as he walks closer to you with swaggering steps, you do notice some qualities that show at least a partial infection with some strain of the nanites. He's got hooves, for example, as well as pointed and very mobile horse's ears. The young man's hair might be called a mane and seems to have been part of the transformation too. And finally, as your eyes wander lower again, you spot something that's definitively not human - as he's got a pretty big bulge in his pants and the outline of an enormous schlong of a cock is visible stuffed down one of his pants legs.";
		say "     [WaitLineBreak]";
		say "     Coming to stand before you with his hands on his hips, the slender guy strikes a boastful stance, presenting his chest as if demanding that you read the inscription printed on it - [one of]'The bigger the brains, the bigger the...' [or]'My brain isn't the only thing that's big.' [or]'Sexy Nerd' [or]'I have a PHD (pretty huge dick)' [at random] In a haughty voice, he says 'Hey there [if cunts of player > 0]baby[otherwise]stud[end if]. Haven't seen you around here before. I'm Clyde Kaskell.' He waits a second, then continues with an undertone of annoyance in his voice, '...THE Clyde Kaskell, you know? Winner of the McUldridge Excellency Award last year? Certified genius here?' Having never heard about that before, you give him a nod to acknowledge his achievement, which leaves Clyde well short of whatever reaction he was hoping for.";
		say "     'Hmpf - I bet you couldn't even understand a word of my research project in bioengineering that got me the prize.' He mumbles under his breath 'All those imbeciles around here,' then looks at you with a piercing glare and starts to rub his crotch. 'I'll show you what I can do! When all this chaos started, I was smart enough to isolate just what I wanted and improve my body - without suffering a creeping degeneration of my intellect like all those sheep stumbling through the city. Here -' With that, he undoes his zipper and pushes his pants down his hips, freeing the enormous horsecock he had packed away and letting it swing before you. Under the equine manhood, a full and heavy pair of balls dangle, showing that he'll be able to come like a horse too.";
		say "     [Line Break]";
		say "     Shouting the words 'If you're too stupid to recognize my genius, you'll have to worship my cock instead!', Clyde throws himself on you, clearly wanting to force the issue.";
		now NerdMeetings is 1;
	otherwise if NerdMeetings > 0:
		say "     A tall and pretty slender guy comes into your line of sight on the campus grounds, some distance ahead of you. Dressed in tight jeans and a t-shirt, recognize Clyde again, the partly horse nerd you met before. As he walks closer to you with swaggering steps, your eyes search out and identity the signs of his partial horseman infection. He's got hooves, as well as pointed and very mobile horse's ears and hair in the shape of an equine mane. Finally, as your eyes wander lower again, you see the outline of his piece of pride again - an enormous horsecock he's got stuffed down one of the legs of his tight pants.";
		say "     Coming to stand before you with his hands on his hips, the slender guy strikes a boastful stance, presenting his chest as if demanding that you read the inscription printed on it - [one of]'The bigger the brains, the bigger the...'[or]'My brain isn't the only thing that's big.'[or]'Sexy Nerd'[or]'I have a PHD (pretty huge dick)'[at random]. In a haughty voice, he says 'Hey there [if cunts of player > 0]baby[otherwise]stud[end if]. Haven't seen the error of not acknowledging my genius yet? Let me show you what you're missing -' With that, he undoes his zipper and pushes his pants down his hips, freeing the enormous horsecock he had packed away and letting it swing before you. Under the equine manhood, a full and heavy pair of balls dangle, showing that he'll be able to come like a horse too.";
		say "     [Line Break]";
		say "     Shouting the words 'Come here and worship my cock!', Clyde throws himself on you, clearly wanting to force the issue.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Horse-Hung Nerd"; [Name of your new Monster]
	now attack entry is "[one of]Clyde gives you a hard kick with one of his hooves - ouch, that hurt.[or]He punches you with a balled fist.[or]Grabbing you by the neck, Clyde pushes you down and slaps his big cock against your face.[at random]";
	now defeated entry is "[HHNerd loses]";				[ Text or say command used when Monster is defeated.]
	now victory entry is  "[HHNerd wins]";					[ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[HHNerdDesc]";							[ Description of the creature when you encounter it.]
	now face entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now body entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now skin entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now tail entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now cock entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now face change entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now body change entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now skin change entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now ass change entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now cock change entry is "<This creature is supposed to be infective with the horseman strain, how did you see this?>";
	now str entry is 12;
	now dex entry is 14;
	now sta entry is 14;
	now per entry is 16;
	now int entry is 24;
	now cha entry is 12;
	now sex entry is "Male";
	now hp entry is 45;
	now lev entry is 5;
	now wdam entry is 8;
	now area entry is "Campus";								[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;											[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 22;							[ Length infection will make cock grow to if cocks]
	now cock width entry is 12;								[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;										[ Number of Breasts infection will give you. ]
	now breast size entry is 0;								[ Size of breasts infection will try to attain ]
	now male breast size entry is 0;					[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;											[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;								[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;								[ Width of female sex  infection will try and give you ] 
	now libido entry is 10;										[ Amount player Libido will go up if defeated ]
	now loot entry is "";											[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;								[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;											[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "lean";			[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "human";								[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;									[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;							[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;			  	[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;						[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";					[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

[
when play ends:
	say "     ";
]

Horse-Hung Nerd ends here.
