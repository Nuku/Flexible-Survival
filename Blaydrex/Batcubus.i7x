Version 2 of Batcubus by Blaydrex begins here.
[Version 2.2 - Neuter scenes + another M/F player loss scene added - Stripes]
[Version 2.1 - Stat adjustments and moved to Warehouse area ]

"Adds a Batcubus to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say Batcubus attack:
	if Player is female and ( Cock Count of Player is 0 or a random chance of 2 in 3 succeeds ):
		say "     The batcubus saunters over to your defeated form. 'Well, well. Smells like somebody is a little excited,' she says as she starts to look over your body, especially your groin. She wastes no time in removing your clothes and giggles with delight when she sees your aroused cunt. She lowers her head and begins to kiss your pussy, practically making out with it. Her technique is remarkable, bringing you close to the edge countless times, but always stopping just before you can climax. She spends what seems like an eternity denying you release before she decides you are ready. You feel a little pressure against your pussy and a small insertion. You look down to see she has put her nipple in you. She squeezes her breast, making milk pour into your desire-filled fuckhole. She fills you with her milk before kissing your tummy where your uterus is. A warm feeling fills your womb as your pussy clamps down to stop the milk from leaking. You writhe on the ground as your body desires release heavily while being denied the pleasure once again. As quickly as the feeling began, it stops. You see some of her milk pour out, but for some odd reason it seems more consistent with sperm. She stands up and licks her purple lips, giggling to herself. 'That was fun. I hope we can meet again sometime,' she says before kissing you passionately on the lips and walking off, with you still needing release.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Batcubus";
	else if Player is male and a random chance of 2 in 3 succeeds:
		say "     She takes a deep breath in through her bat-like nose and shudders as she moans. Her eyes quickly snap to the bulge in you pants. She smiles and rips your pants off and gazes at your prick, eyes burning with lust. 'Oooooh. Hopefully this can get me the relief I need,' she says as she lowers her dripping cunt to grind against your stiff member. She sighs in bliss as she lowers until you are fully hilted in her. She begins to ride you like a slut who has been denied sex for a long time. Her cunt grips you tightly, like that of a virgin. Soon, it becomes too much for you to bear and you begin to shoot your load into her waiting womb, causing her to orgasm on your cock. She rewards you with bringing her large breasts to your face, forcing you to suckle her nipple until milk floods into your mouth. You stay there until you've had your fill. She gets up and kisses you sweetly on the lips before walking off to find another victim.";
		CreatureSexAftermath "Batcubus" receives "PussyFuck" from "Player";
	else if Player is male:
		say "     She takes a deep breath in through her bat-like nose and shudders as she moans. Her eyes quickly snap to the bulge in you pants. 'Mmm... I'm so thirsty...' she says sensually while running her long tongue disturbingly across her fang. She rips your pants off and gazes at your prick, eyes burning with a hungry lust. The sight of her fanged maw approaching your cock sends a shiver of fearful anticipation through you...";
		say "     Thankfully though, she only slides her purple-lipsticked lips down over your cock and starts sucking it in the conventional manner. Your [Cock of Player] manhood pulses and throbs as she sucks your pre down while [if Player is female and a random chance of 3 in 5 succeeds]fingering your cunny mercilessly[else if CockName of Player is listed in infections of InternalCockList]groping your ass[else]kneading your balls with a lustful desire for their contents[end if]. You pant and moan under her oral assault as she expertly works her lips, tongue and [if Cock Length of Player < 6]palate[else]throat[end if] over your drooling shaft.";
		say "     She tantalizes and teases you for a long time, to the point that you're almost begging her to let you cum. She grins maliciously at your torment, delighting in it almost as much as she's delighting in sucking your [cock size desc of Player] cock. Eventually though, she does let you cum. When you do, she slurps down every last drop of your [Cum Load Size of Player] load, even milking the final dregs from you by winding her tongue around your shaft and orally jerking you off to get every last drop you'll give. You're left exhausted and drained from the experience, barely noticing as the slutty bat creature strides off.";
		CreatureSexAftermath "Batcubus" receives "OralCock" from "Player";
	else:
		say "     She takes a deep breath in through her bat-like nose and seems a little disappointed. She slides up closer to you, sniffing again and again as her face drifts down to your crotch. Finding you lacking any loins, she gives a pouting [']harrumph['] before grinning playfully. She gives your bare crotch several slow licks with her long tongue, sending shivers through you.";
		say "     'Oh, you poor thing. Perhaps I can help with that,' she says, rising back up. Grabbing your head, she mashes your face between her giant tits and squeezing them around your head. Left woozy and vaguely aroused from the experience, your lips wrap around one of her nipples when it's offered to you. You suckle hungrily from her breast, getting fed a meal of the bat woman's warm milk. By the time the bat creature has finished feeding you and heads off, you're left feeling warm and sleepy even as tingles of infection spread through you.";
		CreatureSexAftermath "Player" receives "Other" from "Batcubus";

to say beatthebatcubus:
	say "     The batcubus falls down to the ground, fingering herself, trying to get some form of relief. The sight of her like this is enticing, tempting you to do something naughty with her to celebrate your victory. Shall you give in to these urges?";
	if Player consents:
		if Player is male:
			say "     The scent of her arousal fills your nose and you feel your cock rapidly stiffening. Your lust brings you to turn around and look at her, unable to do anything other than start jerking off while watching her masturbate. She notices your actions and smiles warmly before spreading her legs and presenting her needy cunt to you.";
			if Cock Length of Player > 17 or Ball Size of Player > 3:
				say "     Something about her cunt makes you want to shove your large cock in her, so that is exactly what you decide you must do. You line up your cock with her cunt and ram it into her nice and hard. Her passage gives little resistance, but is extremely tight on your cock. Before you can do anything she begins kissing you, repeatedly. Each kiss spreads warmth at the site and increases your lust more. You soon lose control and begin fucking her mercilessly, her tight passage bringing you to orgasm quickly. But your cock doesn't soften and your lust only grows. You begin fucking her harder and faster. You cum in her a total of five times before you begin to calm down. She gives you yet another kiss on your lips, placing your hand on her wonderful globes. You get the message and begin to suckle the milk from her nipple greedily. You drink your fill and realize she is fast sleep, obviously from exhaustion due to all the pleasure. As you begin to leave you whimper softly, missing the feeling of her kisses and her pussy as your cock lets out some cum at the thought and you feel strangely odd, but quickly dismissing the thought and continuing.";
				CreatureSexAftermath "Batcubus" receives "PussyFuck" from "Player";
			else:
				say "     The invitation may look like fun, but something about those beautiful lips draws you to desire that much more than her cunt. She smiles softly and gets on her knees, crawling to you. She nuzzles against your cock affectionately before placing a gentle kiss on your balls. Something churns in your balls and they feel fuller and the need to release becomes more prominent. This just makes her giggle before kissing the head of your cock, making your eyes go wide as heat spreads across your cock as if an invisible pussy or mouth were wrapping around it. You whimper in need as she places kiss after kiss on your rod, driving your lust to heights you never thought possible. Your cock begins to throb insanely, pre coming out by the bucket. She giggles and looks up at you, giving an orgasmic face. This is too much for you, bringing you to cum. Your cock is basically a cum hose now, shooting the biggest load of your life all onto her face and her breasts. When you are done, it looks like she just had a cum bath, which she technically did. She just smiles. She lifts your balls and cock gently and kisses [if Player is female]your puss[yfn][else]where your pussy would be if you had one[end if]. You walk away from the beautiful bat-girl thinking of how weird her thanks was...";
				CreatureSexAftermath "Batcubus" receives "OralCock" from "Player";
		else if Player is female:
			say "     The scent of her arousal fills your nose and you feel your cunt getting more and more wet by the second, soon having a thick trail of your liquid need running down your leg. You turn around and look at her, unable to do anything other than slide your hand under your clothes and start masturbating yourself. She notices your actions and smiles softly and beckons you to come over and have some fun.";
			if Cunt Tightness of Player < 3 or Cunt Depth of Player < 6:
				say "     Your eyes hone in on her perfect breasts. You can see small trails of milk leaking from her large nipples. You smirk as a nice thought comes to your mind. You want something to fill your cunt and womb, might as well try milk. You walk up to her and roughly grab her breast. She looks surprised, obviously not used to someone being so rough and forceful. Her milk leaks out more rapidly as a sign of her growing arousal. You push her breast against your cunt, her nipple and some breast going inside. You smile and squeeze, making her milk flood into your cunt. You whimper, your pussy drinking up all that delicious milk. After you finish emptying one breast you move to the next, until that one empties as well. You pop it free, milk pouring from your cunt. She smiles, something made her happy. She kisses your abdomen where your womb is. Your uterus feels strange and your body heats up. You drop to your knees as your pussy tightens, no more milk escaping from it. You go through an intense orgasm that lasts a while. When you come down you see some more milk leaking out, but not much. But something seems off. It is thicker and looks more like cum. Her kiss must have changed the milk to sperm.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Batcubus";
			else:
				say "     Your eyes remain glued to her lovely lips covered with her purple lipstick. Something about them makes you just want to kiss them. She smiles and waits patiently for you to close in before kissing you passionately on the lips, making you more horny. You stand up and place your pussy near her lips. She kisses your pussy and clit lovingly before licking with passion. Her technique is incredible, quickly bringing you to the edge. You can't help but cum, covering her face in your juices. She waits a second and begins her assault again. Your sensitive pussy is even more sensitive, causing you to moan like a little whore. She makes you cum countless times before you drop out of exhaustion. She gets up and walks away, leaving you oddly more horny than when you started.";
				CreatureSexAftermath "Batcubus" receives "OralPussy" from "Player";
		else:
			say "     The scent of her arousal is enticing, even to your genderless body. You lick your lips and eye her sopping wet crotch hungrily. She spreads her legs a little further and smiles enticingly. You head over to her and bury your face in between her legs. Grabbing her thighs, you raise her legs up and apart while diving your tongue into her dripping cunny. You lap up her flowing juices as she pants and moans like a horny slut in a porno film.";
			say "     You eat her out through several messy orgasms, sometimes lapping up her juices while other times fingering her frantically through her climax. Despite your neutered state, you feel a rush of sexual delight at each of these. And while a little muted and unfocused, it still feels good. Eventually, you feel sated and manage to pull yourself away from her. The bat creature gets up with a happy grin, stretches and strides off.";
			CreatureSexAftermath "Player" receives "OralPussy" from "Batcubus";
	else:
		say "     Managing to resist this final temptation, you grab the bat creature by one arm, pull her up and shove her on her way. She pouts, clearly upset that you've not fallen for her trap and strides off indignantly in search of some new, more cooperative victim.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Batcubus" to infections of FurryList;
	add "Batcubus" to infections of NatureList;
	add "Batcubus" to infections of FemaleList;
	add "Batcubus" to infections of BipedalList;
	add "Batcubus" to infections of FlightList;
	add "Batcubus" to infections of TailList;
	now Name entry is "Batcubus"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]She grabs your groin roughly with her gloved hand while giggling.[or]She slaps you hard on the face, leaving a red mark of a hand.[or]The batcubus knocks you down and places the heel of her purple boot hard on your chest, blowing a kiss before jumping away, giggling.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beatthebatcubus]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Batcubus attack]"; [ Text used when monster wins, can be directly entered like combat text or description. Or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 4]     An anthropomorphic bat, but she seems different than a normal bat. Her lips are coated in a purple lipstick, which obviously contains a powerful aphrodisiac judging by the smell. Her breasts are rather large, JJ cups it looks like. Her torso appears to be covered by some red corset, but that is obviously just fur when you spot a drop of milk come out from her nipple. Her arms are in elegant white gloves that go almost all the way to her shoulders. Her legs are covered in purple high heel boots that cover them completely. Her fur is snow white. Her face and head is that of a bat's with its upturned nose and triangular ears. She simply smiles at you, licking her lips as she saunters over to you, obviously wanting to kiss you."; [ Description of the creature when you encounter it.]
	now face entry is "that of a female bat. It is beautiful and elegant, and your lips are covered with purple lipstick that is sweet when you lick it"; [ Face description, format as 'Your face is (your text)']
	now body entry is "slender and elegant. Your torso looks like it is covered with a red corset, but it is actually fur"; [ Body Description, format as 'Your Body is (your text)']
	now skin entry is "white furred"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "Your ass is that of a bat. It is really cute."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "pteropine"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you feel something weird on your lips. You lick them just to find they taste sweet and your mouth and groin quickly fill with lust-filled warmth. They are coated in the batcubus's purple lipstick. You can't help but lick your lips over and over, each lick making you more and more horny and advances your transformation further. Your face pulls forward into a bat muzzle and your ears extend into triangles and pulled to the top of your head. You soon finish your transformation, with your face resembling that of a beautiful bat. You lick your lips once again"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your body begins to slender out, becoming beautiful and elegant. Your hands are covered in white gloves. Your legs end up covered in purple high-heeled boots that go all the way up your legs. A strange red fur covers your torso, making it look like you are wearing a red corset, even though you are actually naked"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it is covered in beautiful white fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you bend over, panting in lust. Your ass and hips fill out, making you look oh so fuckable and fertile in your position"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes pteropine"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 13;
	now dex entry is 19;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Female";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 49;                 [ How many HP has the monster got? ]
	now lev entry is 6;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Warehouse";        [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;          [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 16;        [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 16;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;        [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 7;          [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is false;
	now libido entry is 80;             [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "batcubus milk";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 75;         [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]elegant[cycling]";
	now type entry is "[one of]bat[or]batty[or]bat-like[at random]";
	now magic entry is true;            [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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
   [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Drop Item

Table of Game Objects (continued)
name	desc	weight	object
"batcubus milk"	"A small plastic bottle, filled with fresh batcubus milk."	1	batcubus milk

instead of sniffing batcubus milk:
say "You open the lid of the bottle and smell the milk. Seems fresh and drinkable, even though it isn't refrigerated. Must be a side effect of the nanites in it.";

batcubus milk is a grab object.
Usedesc of batcubus milk is "[batcubus milk use]";

to say batcubus milk use:
	say "Taking the cap of the bottle of milk, you greedily drink down its contents, swallowing the tasty milk.";
	PlayerDrink 6;
	infect "Batcubus";

Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Batcubus Infection"	"Infection"	""	Batcubus Infection rule	1000	false

This is the Batcubus Infection rule:
	if Player has a body of "Batcubus" and matriarchdefeated is 0 and matriarchowned is 0:
		trigger ending "Batcubus Infection";
		if humanity of Player < 10:
			say "You search the city looking for males to impregnate you and anybody to kiss, your cunt always dripping, ready to be fucked at any time. Sometimes thoughts of your past return, but a single lick of your lips quickly sends your lust soaring and you can't help but forget again and go look for relief you so desperately need.";
		else:
			say "Life as a batcubus proves fun. Every time you find someone you enjoy all you have to do is kiss them and they are putty in your hands. Thanks to this you have a good life, letting you have everything you want, never needing to work a day in your life";
			if Player is herm:
				say "You spend your days fighting the urge to lick your lips. Being one gender or the other would allow you to instinctively lick them safely, but the combined lust of your female and male sex organs would be too much. A single lick could send you into a sexual fury. Last time it happened you tried to turn a whole town into batcubuses. Hopefully one day someone can find out how to get this lipstick off you.";
			else if Player is male:
				say "You find that having a cock isn't as fun as having a slavering cunt like most other batcubuses, but you make do. Your cock is insatiable, no matter how much you cum and fuck. One day you find a tigress hooker, who takes an interest in you. She wastes no time in raping you and dominating you until you submit to her. She claims you as her own and she is actually able to keep up with your sex drive, so it works out. You spend the rest of your days happily mated to her.";
			else:
				say "...";

Batcubus ends here.
