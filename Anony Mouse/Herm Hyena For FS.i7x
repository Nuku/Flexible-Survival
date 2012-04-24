Version 8 of Herm Hyena For FS by Anony mouse begins here.
[Version 8 - Victory sex]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Herm Hyena to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say herm hyena attack:
	if cunts of player > 0:
		Say "She lets out a victorious laugh and quickly throws you to the ground, stripping you as you fall. You can only stare wide-eyed as she slowly strips, enjoying the anticipation (and the look on your face) as much as possible. When her black, knotted spear finally pops free she gasps with pleasure and grabs your legs, pulling you cunt first toward her waiting shaft. She begins pumping torturously slowly, ponderously drawing her cock out before slamming it back in. Eventually, you can't take it anymore and begin whimpering for release. Taking that as the sign of your complete submission, she begins fucking you with wild abandon. Very soon you are both howling with pleasure as she is pounding your [cunt size desc of player] snatch like a jackhammer, knot pressing urgently against your entrance with each thrust. With one final thrust she slips her knot inside you, bringing you both to a screaming orgasm as she paints your womb white with her seed. 'You're pretty good, come and see me again some time if you wanna fool around some more.' She says as she slips her clothes back on and walks off, leaving you panting in a puddle of fluids. [impregchance]";
	else:
		say "She laughs loudly, stripping you stark naked in the blink of an eye. As she eyes your nude form she seems a bit disappointed at what she sees or rather, what she doesn't see. But, you've got two other perfectly good holes and she intends to make use of them. She removes her clothes, letting her knotted cock free and presses it against your lips. You obey her and open your mouth, letting her shaft in as you begin to softly suck her head. Her eyes glaze over and her tongue lolls out of her mouth as you begin to bob up and down on her shaft, licking and sucking as you go. Soon you find your lips bumping against her rapidly growing knot, and when you decide to engulf it you are rewarded with a sharp cry of pleasure from your 'rapist'. She begins to rapidly pant and moan as her knot swells far larger than you anticipated, locking it in you mouth. Suddenly, she howls loudly and orgasms, flooding your throat with her seed as her knot forces you to swallow it all. 'Not bad, I haven't had head that good in a long time. If we run into each other again we can pick up from here.' She says, dressing herself and walking away. At the moment all you can do in response is gurgle, you may not have to eat again for some time. ";

to say beatthehyena:
	say "     With a bit of delirious sounding laughter the Herm Hyena hits the ground, unconscious";
	let diceroll be a random number between 50 and 125;
	if diceroll < libido of player and cocks of player > 0:
		say ".  You are about to walk away when your arousal makes you stop and look back at the strong, but incapacitated, herm.  Giving in to your urges after the excitement of the battle, you move over to her carefully.  You open her jeans and expose her crotch, taking in the sight of her hard cock, hefty balls and more to the point, her wet pussy under those furry balls.  Your cock aches for relief and the hyena will do fine for sating those needs.  You stroke your stiff cock as you kneel atop her, raising her balls and fully exposing her pussy before thrusting into her.";
		if cock length of player > 17 or cock width of player > 9:
			say "     She moans a little in discomfort as you drive your huge cock into her, but eventually stretches open to take you.  You feel little urge to hold back, something about her aroused scent making you want to take her rough and fast.  Her belly bulges from the size of the manmeat you're driving into her and soon enough her moaning turns to sounds of lustful pleasure as you bang away at her wet hole.  Still in a semi-conscious state, her body is yours to use and your sex-addled mind is intent on using it as your own fucktoy.  Each hard thrust you make into her causes her hard cock to bound against her belly and spill out more pre into her fur.";
		otherwise:
			say "     As you pump your cock into her deep pussy, you feel little urge to hold back, something about her aroused scent making you want to take her rough and fast.  Soon enough, she is releasing moaning sounds of lustful pleasure as you bang away at her wet hole.  Still in a semi-conscious state, her body is yours to use and your sex-addled mind is intent on using it as your own fucktoy.  Each hard thrust you make into her causes her hard cock to bound against her belly and spill out more pre into her fur.";
		say "     Your pace is hard and fast, rocking her body and slapping your balls against her.  You grab her hips to keep her from sliding across the ground and redouble your efforts.  As your peak is building, you notice that she's come to, but makes not attempt to resist your forceful fucking.  She moves a paw to her breast and the other to her cock, stroking them as she closes her eyes, lost in lustful pleasure of being taken by a more powerful [if cunts of player is 0]male[otherwise]herm[end if].  When your orgasm is reached, you grab her hips firmly and drive your cock deep inside her, unleashing your hot seed to paint her womb with your virile seed[if cock width of player > 10], bloating her belly with your ample seed[end if].  She cums hard as well, soaking you in her juices and spraying her seed across her body before passing out.  You withdraw and leave her like that, unconscious and reeking of sex.";
	otherwise:
		say ".";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Herm Hyena"; [Name of your new Monster]
	now attack entry is "[one of]rakes her claws across your midsection, leaving bloody gashes in their wake[or]suddenly clocks you with one hell of a haymaker, you kind of want to sit down for a moment now [or] leaps at you bringing her knee to your face with alarming speed [or] sweepkicks your legs out from under you, then swiftly and painfully drops herself elbow first directly onto your sternum [at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beatthehyena]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Herm Hyena attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "An anthropomorphic hyena. She has bright [one of] brown [or] amber [or] green [at random] eyes and a grinning mouth full of saber-like teeth. She is wearing jeans and a leather jacket with no shirt whatsoever leaving her full breasts exposed to the world. When she spots you a low chuckling begins to emanate from her throat and her mouth opens into a toothy smile as she begins to run toward you. As she approaches it becomes very clear that 'she' is also a he, a large bulge in her pants growing ever larger";[ Description of the creature when you encounter it.]
	now face entry is "brown-furred, hyena-like";[ Face description, format as the text 'Your face is (your text)'] 
	now body entry is "lean and tightly muscled.";[ Body Description, format as the text 'Your Body is (your text)'] 
	now skin entry is "brown furred";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "black, knotted";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it rapidly stretches outward, your mouth suddenly feeling very full as your new teeth settle into place"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you lose any trace of fat you may have had on you, it being replaced with tightly compacted muscle"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it is covered in shaggy brown fur"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it tightens noticeably and becomes attractively muscled"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it turns pitch black, a knot forming at the base"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 18;
	now sta entry is 14;					
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 6;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 12;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 7;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 20;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

When play ends:
	if bodyname of player is "Herm Hyena" and matriarchdefeated is 0 and matriarchowned is 0:
		if humanity of player < 10:
			say "You prowl the city, owing allegiance to no one but your own feral appetites. Any time you happen on something with compatible parts, or that looked particularly tasty when you were feeling peckish, would be ambushed. You proved to be quite good at your trade, keeping your corner of the city largely devoid of interlopers, until the bus went by. They were just skirting the city, trying to get past, when the motor died. What fortune... You were on them the moment the door opened, knocking the driver down, growling at the others. When all was said and done, you had created a pack of twenty some odd people, and celebrated with a riotous orgy that went on until every womb was full of the next generation. Your cackling giggles would fill the city.";
		otherwise:
			say "Life as a hyena proves difficult in civilized life. Your laugh unnerves most, to say nothing of that grin. You wander a bit aimlessly, finding a job in a local coffee shop and keeping the cups full and your mouth shut for most of the day.";
			if cocks of player is greater than 0 and cunts of player is greater than 0:
				say "One day, your monotony is interrupted when a mutant wanders in. Your heart skips a beat and your nose flares. Another hyena! Shi approaches you directly, and stuffs a card into your numb hands before leaving, her tail wagging in a way that invites attention, making you ragingly hard. You duck to the bathroom, to take care of that problem, and to check out the card. An address. You rush over as soon as your shift is over to find a small suburban house. A knock at the door has it swinging open quickly. Shi grabs you and hauls you into the house and into hir arms. Maybe this hyena thing won't be so bad, after all.";
			otherwise if cocks of player is greater than 0:
				say "You notice a particular college student, female, who comes in quite frequently. She's getting a degree in anthropology, and seems quite fascinated with how the virus has changed the human condition in some ways, and not in others. She gabs on at you for hours, leaving you nodding softly. You fail to grasp most of it, but you know you like her, and your body likes her, soft scent teasing you to a half firm arousal every time she stops by. She comes in one time, crying, and tells you a story about how her boyfriend cheated on her and left her. Unable to hold back any longer, you admit your love for her. This scares her at first, and she vanishes from the shop for several weeks, leaving you despondent and alone.[line break][line break]But she does return, and holds your hands, and asks to go slow. A date at the park, a trip to the movies. You get more chances to talk with her and be with her, and something builds. There is no one 'moment', it simply grows into a deep, satisfying, relationship. You eventually marry and sire pups in the woman of your life.";
			otherwise:
				say "You have escaped as a hyena, though you avoided that cock that the original had, through luck or otherwise. Many confuse you for a dog person of some kind, one person thought you were some kind of cat. You didn't much mind. You were sexy and felt it. You presented your exotic body to any who wanted to see it, and started gathering many friends around yourself, some true, many shallow. You could tell the difference. Your lovers were usually casual, but there were two that kept your interest, a man and a woman that you kept close at your side even as the rest of the world fluidly shifted around. You bore two litters of pups in your life. The father of them was never entirely certain, due to the virus, but you were pretty sure the man was at least father to one. He took care of both with you though, and even gave your lady friend a baby as well. A close, if unconventional, family.";


[ Edit this to have the correct Name as wall]
Herm Hyena For FS ends here.
