Version 1 of Amazonian for FS by Stripes begins here.
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]

"Adds Amazonian to Flexible Survival."

when play begins:
	add { "Amazonian" } to infections of hermaphrodite;

noamazoniansex is a number that varies.

to say losetoamazonian:
	now noamazoniansex is 0;
	if hp of player > 0:
		say "     Unwilling to continue to resist this powerful woman, you drop to your knees before her, intent on letting her have her way with you.  She seems displeased that you've given up so easily and pushes you roughly to the ground with her heel.  'Why should I [if cunts of player > 0]breed with one such a you if you will not fight to the last[otherwise]want one such as you as a mate if you will not fight to the last[end if]?' she growls.  'You are useless to me but as a means of amusement.'";
		say "     With that said, she grabs your head and pushes your face to her loincloth, forcing you to take in the heady scent of her arousal.  Despite the short fight, it seems it's gotten her blood flowing and she needs some relief.  Pushing back the furry cloth, she frees her sixteen inch cock and presses it to your face, forcing you to take it in your mouth.  The scent of her pussy is there as well, but you are not allowed near it, instead forced to suck her off.";
		say "     She thrusts into your mouth rather brutally, cramming that massive cock of hers down your throat.  It seems like hours go by before she is moaning above you.  Her hand grips the top of your head in a painfully tight hold as she pull out all but the last inch.  'Swallow it all, my little pretty, or you'll never be big and strong.  Big girls need to drink lots to get big muscles.'";
		say "     The flow of semen is almost enough to pour back out your nostrils before you even have a chance to swallow the first shot.  Subsequent pulses of sperm also threaten to flow in too fast to swallow or spit out.  Some overflow sprays out of your mouth, covering the ground, and this is immediately followed by a swift blow to the back of your head that leaves you seeing stars followed by blackness as you feel the bulbous head of Amazonian's cock pop out of your mouth and the last few spurts of seed spray onto your chest as you collapse.";
	otherwise:
		say "     Beaten to the ground by the powerful amazonian's last blow, you are pinned down by her.  'You fought well, little [if cunts of player > 0]girl[otherwise]man[end if], but you are mine now,' she says with a lustful grin.  Pushing aside her loincloth, she frees her large, sixteen inch member and presses it to your [if cunts of player > 0]hot pussy[otherwise]tight asshole[end if].  'It's time for me to claim my prize[if cunts of player is 0] and show you the only thing men are good for[end if],' she says, thrusting her thick rod into you.";
		say "     [if cunts of player > 0]Your cunt is spread open by her large shaft as she starts fucking you, pounding into your juicy hole with the intent of breeding another powerful amazon in you[otherwise]Your asshole is spread open by her large shaft as she starts fucking you, pounding your tight anus to drain her balls into you like a sex slave for her needs[end if].  She keeps you pinned down with her strong body and drives her pulsing rod into you again and again, fucking you until she finally cums, emptying her hot seed inside you.  Once she's done with you, she pulls out and gets up, dragging you to your feet and sending you on your way with a firm spank on your rear.[impregchance]";


to say beattheamazonian:
	say "     Having beaten the powerful woman, you look down at her.  Beneath her loincloth you can see both her juicy cunt and her thick cock.  It's clear she's gotten quite excited from the fight and is quite aroused in her defeat";
	if noamazoniansex > 2:
		say ".  As with the others of her kind, you send her on her way with a firm swat on her rear to remind her of her defeat.";
	if cocks of player > 0:
		say ".  Shall you claim your prize and fuck her?";
	otherwise:
		say ".  Shall you claim your prize and use that cock of hers as you'd please?";
	if the player consents:
		if cocks of player > 0 and cunts of player is 0:
			say "     Pinning the amazonian woman down, you pull aside her loincloth and press a pair of fingers into her juicy cunt.  She moans and tries to struggle, claiming she needs no man, but her clear arousal and her eyes on your throbbing cock betray her desires for you to prove otherwise.  Getting your pulsing rod lined up with her, you sink it into her hot pussy, making her moan loudly as you start fucking her.  You pound away at the warrior woman, thrusting into her again and again.  Despite her protests, she cums several times before you are done with her, clearly aroused at being fucked by a man who could beat her in combat.";
			say "     When you're done with her, you pull her up and grope her leaking, cum-filled pussy, reminding her that she was taken by a male.  Despite her anger at this, its clear that she's quite turned on by it as well, as if she's had something forbidden, taboo and therefore wonderfully arousing.  You send her on her way with a firm swat on her rear as an added reminder of her defeat.";
		otherwise if cocks of player > 0:
			say "     Pinning the amazonian woman down, you pull aside her loincloth and press a pair of fingers into her juicy cunt.  She moans and pants, clearly aroused by another herm who could best her.  She spreads her legs, offering her hot pussy to you as you thrust into her.  She clutches you tightly as you fuck her, moaning that she wants you to cum inside her, to breed a strong girl inside her.  In your lust and excitement, you are more than happy to do so, pounding her hard and fast until she's cum several times and you've drained your hot seed into her, claiming her womb with your seed.  When you're done with her, you pull and and pull her to her feet, fingering her cum-slick pussy with a grin before swatting her ass as a reminder of her defeat.";
		otherwise:
			say "     Pinning the amazonian woman down, you grab her cock and rub over it, intent on taking what you want from her.  She moans softly as you stroke her cock to its full sixteen inches before climbing atop it.  Her large, throbbing rod feels wonderful inside you as you start riding it, pushing it into your [if cunts of player > 0]juicy cunt[otherwise]tight ass[end if] and bouncing atop it hard and fast.  You ride the warrior woman's cock until she cums hard, pumping her hot load into you, claiming it for yourself with a moan of delight.  When you're done with her, you pull her to her feet, squeeze her drained cock and swat her ass firmly as a reminder of her defeat.[impregchance]";
	otherwise:
		say "     Having beaten the amazonian woman and having no more use for her, you pull her to her feet and send her on her way with a firm swat on her rear as a reminder that she was beaten by you.";
		increase noamazoniansex by 1;


to say amazoniandesc:
	say "     Before you is a tough, muscled woman with a no-nonsense expression on her beautiful face.  She has a deep, bronze tan to her toned flesh.  Her long, brown hair is tied back in a ponytail with a metal clasp, keeping it out of her eyes.  This physically imposing woman wears a leather breastpiece with a fur ruff at her crotch.  You notice a clear bulge down there, showing you just how self-sufficient this Amazonian woman is without a man.";
	say "     Raising her weapon, she glares at you[if cunts of player is 0].  'You are unneeded here, worthless male.  You will be shown your place,' she growls[otherwise if cunts of player > 0 and cocks of player > 0].  'Ahh, another warrior woman to test myself against.  Come, prove your might and you may be my mate,' she says with a lustful grin[otherwise if cunts of player > 0].  'Come here, sweet lass.  Let me show you that you don't need a worthless male to please you,' she says with a lustful grin[end if].";



Section 2 - Monster Insertion
 
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
 
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Amazonian"; [Name of your new Monster]
	now attack entry is "Amazonian uses their [one of]Superior Fist[or]Penetrating Stare[or]Snap Kick[or]mutant power[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beattheamazonian]";
	now victory entry is  "[losetoamazonian]";
	now desc entry is "[amazoniandesc]";
	now face entry is "human in shape, though with beautifully shaped bone structure.  Your hair is long and has a silken shimmer, falling all the way down to your ass";
	now body entry is "[if cunts of player > 0 and cocks of player is 0]musclebound, but feminine, with a wasp-thin waist and wide, child-bearing hips[otherwise if cunts of player is 0 and cocks of player > 0]muscular and strong, though with a somewhat narrow waist and slightly wider hips that give them an almost hourglass figure... although a very slight one[otherwise if cunts of player is 0 and cocks of player is 0]muscular and androgynous, a very athletic build that could be male or female... depending on the lighting[otherwise if cunts of player > 0 and cocks of player > 0]musclebound, but feminine, with a wasp-thin waist and wide, child-bearing hips.  The muscles are somewhat bulkier than is typical for a woman though[end if].  Your body bears the telltale definition of someone who works out continuously, who is extremely proud of their strength.  Your arms are slender, but with a great deal of muscular definition under the taut skin.  Your legs are muscular in an athletic way.  Fine toned thighs and calves that lead into almost-dainty feet that never quite sit flat on the ground; always ready to move in some way";
	now skin entry is "bronze-toned";
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]uncircumcised[or]human[or]normal, flesh-toned[or]thin, mushroom-shaped[at random]";
	now face change entry is "you feel your head alter, bones reshaping as a warmth suffuses your skin.  There is a sense of pressure and almost taffy-like stretching as your skull reforms into a delicate and feminine shape.  It is once again human... but beautifully so in a way that is undeniable"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you feel muscles and bones shifting as many changes occur.  Many pounds of pure muscle begin stretching your skin almost to the point where you fear it will split!  You feel more muscles threatening to split your skin wide open as it is drawn tight against the emerging strength on your bones.  A burning and stretching sensation fills your legs and feet, muscles and tendons stretching as raw strength is quickly gained.  Your Achilles tendon shortens suddenly, forcing you to walk on the balls of your feet.  Interestingly, this is to your advantage as it keeps you ready to react to danger more quickly than if your feet sat flat on the ground"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "any hair or fur you may have immediately falls out as your skin begins to take on a heavily tanned tone.  The only hair left is on top of your head and your eyebrows, even those look to be shaped in a vain and beautiful way";
	now ass change entry is "you feel your ass tensing up, the flesh tightening with a sudden expansion of muscle and a bit of fatty padding";
	now cock change entry is "you feel a burning sensation in your cock as it reforms into a perfectly normal human one... though uncircumcised";
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 66;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 9;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 12;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Museum";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 16;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 16;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
 	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]strong[or]toned[or]feminine[at random]";
	now type entry is "[one of]human[or]amazonian[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


[
when play ends:
	if bodyname of player is "Amazonian":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Amazonian for FS ends here. 