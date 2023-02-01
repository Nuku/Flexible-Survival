Version 1 of Vixen Kunoichi by Qazarar begins here.
[Version 1 - adds Vixen Kunoichi enemy to the <>]

Section 1 - Monster Responses

VixenKunoichiLust is a number that varies. VixenKunoichiLust is usually 0. [tracks corruption progress]
VixenKunoichiDomScore is a number that varies. VixenKunoichiDomScore is usually 0. [these are used to determine who is in control in scenes]
VixenKunoichiSubScore is a number that varies. VixenKunoichiSubScore is usually 0.


to say VixenKunoichiLoss: [player loses]
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else: [regular scene]
		if VixenKunoichiLust is 0: [groping]
			say "     You find yourself unable to continue the fight, and helpless before the strength of the vixen. She stands over you, leaving you caught in the huge shadow of her equally obscene erection, but contrary to the sheer arousal on display from that member her face is dusted in a blush at odds with the rest of her. 'It seems that my skills are superior to yours, distracted as you were by that lustful gaze of yours.' Her cock seems to twitch involuntarily, and you can tell she's trying her best to ignore it. 'As an honorable warrior, I would never fall prey to such base perversions, no matter what manner of curse has been placed on me.' Her words are resolute, but no matter how much she means them her lewd body seems ready to disagree, and one of her hands seems to be wandering closer to you almost of its own accord.";
			say "     The moment she's about to make contact, she turns her head away and huffs, apparently deciding to simply not confront her own approaching hypocrisy, while instead her extremities are lightly pawing at your truly magnificent backside, a physical expression of lewd curiosity. Even while deliberately ignoring you, it seems that she can't help but enjoy your plush posterior, but eventually she composes herself just enough, and pulls away. 'I suppose there are some merits to a body like that, it's at least pleasing to look at. But don't think for a second that I'm anything like you, with your lustful thoughts.' The vixen appears too flustered to continue berating you, as following that proclamation she turns on her heel and stalks away after the brief encounter.";
		else: [if VixenKunoichiLust < 8:[curious]]
			say "     A";
			increase VixenKunoichiDomScore by 1;
			if a random chance of 1 in 3 succeeds:
				increase VixenKunoichiLust by 1;
		[else if VixenKunoichiLust < 15:[lusty]
			say "     A";
		else: [corrupt]
			say "     A";]

to say VixenKunoichiVictory: [player wins]
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else: [regular scene]
		say "     With a final strike, you cause the vixen to fall to her knees, unable to continue fighting. She hangs her head in shame, but regardless of her feelings her shaft is still throbbing eagerly.";
		say "     [bold type]You could easily have your way with her if you want to.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Play with the Vixen Kunoichi.";
		say "     ([link]N[as]n[end link]) - Walk away.";
		if Player consents:
			LineBreak;
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			choose a blank row in table of fucking options;
			now title entry is "Suck her";
			now sortorder entry is 1;
			now description entry is "Have a taste of her cock";
			[]
			choose a blank row in table of fucking options;
			now title entry is "Sit on her face";
			now sortorder entry is 2;
			now description entry is "Have her user her mouth";
			[]
			if VixenKunoichiLust > 5:
				choose a blank row in table of fucking options;
				now title entry is "Ride her";
				now sortorder entry is 3;
				now description entry is "Use her oversized shaft";
			sort the table of fucking options in sortorder order;
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - Nevermind[as]0[end link][line break]";
			while sextablerun is 0:
				say "Pick the corresponding number> [run paragraph on]";
				get a number;
				if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
					now current menu selection is calcnumber;
					choose row calcnumber in table of fucking options;
					say "[title entry]: [description entry]?";
					if player consents:
						let nam be title entry;
						now sextablerun is 1;
						if (nam is "Suck her"):
							say "[VixenKunoichiSex1]";
						if (nam is "Sit on her face"):
							say "[VixenKunoichiSex2]";
						if (nam is "Ride her"):
							say "[VixenKunoichiSex3]";
						wait for any key;
				else if calcnumber is 0:
					now sextablerun is 1;
					say "     You decide against it, and simply leave her there.";
					wait for any key;
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
			clear the screen and hyperlink list;
		else:
			WaitLineBreak;
			say "     You're not interested, or at least not now, and so you simply ignore the Vixen shemale, and return to your adventures.";

to say VixenKunoichiDesc:
	if VixenKunoichiLust > 15: [corrupt desc]
		say "     ";
	else if VixenKunoichiLust > 8: [lusty desc]
		say "     'Don't move any further!' When you turn towards the sound of the voice, you see the vixen kunoichi perched on the hood of a stopped vehicle, hopping down and striding closer to you. You can see that her even more egregious endowments have limited her ability to do some of her prior acrobatics, and even further you can see that she appears significantly distracted. When you first saw her she was poised and composed, ready for battle, but now you can see that she is continuously fidgeting. Whether adjusting her reduced clothing nervously, or unconsciously tracing a finger up her shaft, she seems unable to focus completely on combat readiness. 'It's your fault that I'm feeling like this, with your lewd body and actions, so you're going to fix it!'";
	else: [pure desc]
		say "     'Stop right there, not another step!' You turn just in time to witness a figure standing dramatically atop a nearby build leap forward, gracefully flipping in the air before landing smoothly in front of you. Up close, you can clearly tell that you're looking at a particularly elegant vixen, wearing nice-looking clothing in purples and grays in stark contrast to her vibrant golden yellow fur. Her pose is also strikes you as a practiced display of skill, clearly marking her as a trained combatant of some sort. However, the impressive elegance is somewhat diminished by the fact that her large breasts are uncovered by her outfit, and even more so that an absolutely massive cock is exposed, still bouncing from her drop. 'Stop looking at me with your lustful gaze and fight me!'";

to say VixenKunoichiSex1: [sucking]
	say "     Really, the only reasonable choice you have is to have a closer look at the huge shaft sitting there attached to the defeated vixen. The sheer size is enchanting, an endowment rarely seen even in this transformed city, and it's the least you can do to give it a little bit of affection. Besides, while you're sure that she'll enjoy the treatment, you know it will be just as much fun for you to tackle something like that with your mouth. You begin by reaching forward, and grasping the shaft, feeling the affirming weight under your fingers. As your fingers touch her, the vixen lets out a shocked gasp and freezes in place, clearly unused to the sensation. Her face is a mess of conflicted emotion, her sense of dignity at war with her sensitive member. However, that war is one you're about to weight in favor of her lovely cock.";
	say "     Eventually you make the first real move, and lean forward. You switch from having a smile on your face to the head of her shaft in your mouth, and you think the trade is more than fair. Your gaze is focused on what's directly in front of you, allowing you to see how eagerly her member throbs in response to even this initial taste of pleasure, the sight closely confirmed by the stuttering moan you hear from above. Still, you must continue, as you are not content to simply leave her with a mere taste – for both your sakes. Instead you push onward, testing the limits of your ability by steadily swallowing more and more of her impressive shaft, pausing for a moment once more as you reach nearly halfway to listen to the conflicted whimpers as the vixen attempts to resist the sensations.";
	WaitLineBreak; [later made a one-off scene]
	say "     It takes very little time before your gradual progress starts approaching the base, each bobbing motion drawing out another reluctant gasp of sensational pleasure from the vixen. You start to increase your speed long before you hit that point, focusing more on the raw intensity of the feeling rather than going as deep as you can at this point. For a moment it seems as if her unfamiliar organ is about to reach its peak, as the telltale signs are firing on all cylinders, but the prophesized orgasm fails to manifest. A glance upwards shows that the pleasure struck expression on the vixen's face is clearly overwhelming her pride, leaving you briefly confused. However, once you look more closely at the overly full sack holding the grand prize hostage, an answer appears. Though her balls are clearly contracting in an effort to shoot a mighty load, they are overtaken each time with a faint glow. It seems that part of the drake's gift to this vixen is preventing her from properly climaxing, at least until something changes that.";
	say "     Your experience with the magic drake is sufficient to give you an educated guess, particularly since the vixen is apparently considered a gift to you. You doubt that the sorceress would truly prevent the kunoichi from ograsming entirely, so it is merely waiting for the right moment, which is almost certainly to be part of that gift to you. Trusting your instincts, you prepare to truly change the vixen's fate. You pull back so that your mouth is free, for a moment at least. 'I order you to cum.' It's as if a bolt of lightning shoots through her spine, leaving her completely unable to resist the sudden onset of the bottled pleasure. You have a split second to react yourself, as you see her cum tanks rapidly twitching in preparation for their role, so you quickly entrap her shaft once more in your welcoming maw. Her gasping moans transition into uncontrolled yowls of pleasure, a primal lust overtaking her rational thought as the sorcerously delayed orgasm tears through her entire being.";
	say "     In that moment, her pride, her resistance, everything holding her back is simply more fuel for the powerful rush. The tsunami flows through her, unable to be stopped, and manifests finally as an unmatched torrent of vixen jizz being launched from her enchanted cock in mighty spurts, each one surely enough to spray a jet several feet if it weren't positioned to instead directly go down your throat. Before this moment, perhaps it was possible for the vixen to resist the plans that the magic drake has made for her, and however unlikely she may even have been able to return to her own normalcy – but that chance is surely gone now. Her fate is sealed, and there is no way for her to fully resist the siren song of the lustful spell any more. Finally the sticky tide comes to a rest, and you're able to disentangle yourself from the vixen, who is seemingly exhausted from the full body orgasm she just had. She tries to speak, but is unable to muster her customary words of resistance and refutation, instead merely letting out a defeated sigh. You yourself are satisfied, and simply leave her to recover her energy, if not her dignity.";
	[increase VixenKunoichiSubScore by 1;]
	CreatureSexAftermath "Player" receives "OralCock" from "Vixen Kunoichi";

to say VixenKunoichiSex2: [face sitting]
	say "     It occurs to you that the best way to have fun with her might just be to find something she can't complain about the lewdness of, and a particularly appealing method of doing that is to keep her mouth busy otherwise. Besides, she seemed quite enamored with your back end before, so it would only be polite to give her a closer look at the same time. She is hardly able to resist as you get her onto her back, too exhausted to put up much of a fight. As you start to position yourself above her however, she seems about to renew her struggles, though not quite fast enough. You lower down into position, and then it's too late – your sorcerously granted caboose is more than enough to keep her in one place until you're done with her.";
	say "     Despite her former protestations, it seems that being buried under your most impressive ass is enough to convincer her to play along, at least somewhat, as you can feel the vixen below you starting to cautiously lick at you. Her efforts start off slowly, but the otherwise refined combatant seems to quickly develop a knack for oral pleasure, as she is able to quickly move up to a far more enthusiastic series of motions. More and more she begins to lick and suck with greater fervor, her tongue darting out and leading to a slowly rising pleasure within you. It rapidly becomes downright impressive, the speed at which she begins to exhibit more advanced oral technique in the face of your rear passaeg, enough to make you wonder if this was another gift from the drake, or of she always had the potential to worship a fat ass like a fiend deep down.";
	say "     Regardless of the source of her skill, the growing pleasure starting to echo outwards from your rear to the rest of your body is undeniable proof that it exists. You arch your back and rock faintly back and forth, grinding just that little bit harder against her to eke out additional traces of sensation for your overflowing lusts, and she meets each motion with further work from her vulpine tongue until it is finally too much for you. In a surge of uncontrollable energy, you can feel a powerful anal orgasm shooting through your body, collecting and magnifying until it finally escapes in the form of powerful lewd moans. Satisfied with the care given to you, you are prepared to offer mercy to the vixen, and release her from beneath you. For a time she merely gasps, her gaze unfocused, but as you prepare to leave you can hear a faint call from behind you. 'This... you were lucky this time, with your strange lustful spell you cast upon me. Next time I shall not be so easily fooled.' It seems that she isn't quite ready to accept that she willingly gave in, but perhaps in time she'll realize the truth.";
	[increase VixenKunoichiSubScore by 1;]

to say VixenKunoichiSex3: [riding her]
	say "     A";
	increase VixenKunoichiSubScore by 1;
	CreatureSexAftermath "Player" receives "AssFuck" from "Vixen Kunoichi";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Vixen"; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Vixen Kunoichi";
	add "Vixen Kunoichi" to infections of HermList;
	add "Vixen Kunoichi" to infections of BipedalList;
	add "Vixen Kunoichi" to infections of TailList;
	add "Vixen Kunoichi" to infections of FurryList;
	now enemy title entry is "Vixen Kunoichi"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Rena"; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "She [one of]rakes at you with her claws[or]deftly launches a kick[or]dashes in for a rapid blow[at random]!";
	now defeated entry is "[VixenKunoichiVictory]";
	now victory entry is "[VixenKunoichiLoss]";
	now desc entry is "[VixenKunoichiDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "A"; [ Face description, format as "Your face is (your text)."]
	now body entry is "A"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]A[or]A[or]A[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "A"; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]A[or]A[or]A[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "A"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "A"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "A"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "A"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "A"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 17;
	now dex entry is 20;
	now sta entry is 15;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 88;
	now lev entry is 12; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 13; [Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 20; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 5; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 10; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 10; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 9;
	now Cunt Tightness entry is 10;
	now SeductionImmune entry is false;
	now libido entry is 60; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is ""; [TODO]
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]A[or]A[or]A[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "vulpine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Vixen Kunoichi Infection"	"Infection"	""	Vixen Kunoichi Infection rule	1000	false

This is the Vixen Kunoichi Infection rule:
	if Player has a body of "Vixen Kunoichi":
		trigger ending "Vixen Kunoichi Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "";
		else:
			say "";


Vixen Kunoichi ends here.
