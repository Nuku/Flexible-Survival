Version 4 of Elf by Nuku Valente begins here.
[ Version 1.0 - Original creature - Nuku Valente                                                  ]
[ Version 2.0 - Player victory sex - Stripes                                                      ]
[ Version 3.0 - Near-complete rewrite, victory altered for consistency - Blue Bishop              ]
[ Version 4.0 - Comprehensive writing cleanup. Added support for neuters in victory scenes - Song ]

"Adds a Wood Elf to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

ElfEncounters is a number that varies. ElfEncounters is usually 0.
ElfRimming is a number that varies. ElfRimming is usually 0.

to say ElfWins:
	if HP of Player < 1:
		say "     Finally overtaken, you slump to your feet in exhaustion. The elf laughs, grinning as she approaches to pin you onto the ground and seating herself atop you.";
		say "     '[one of]Hmm[or]Oh[or]Yes[at random], [one of]I love to play with my prey[or]I think you'll do[or]you should've ran. I love it when they run[at random]...' ";
	else:
		say "     When you surrender to the lady, she can't help but sneer slightly at you, approaching to pin you onto the ground and seat herself atop you.";
		say "     '[one of]Hmpf[or]Well[or]Ha[at random], [one of]I was hoping you'd be of better use to me than as a mere pet[or]Such a naughty one, relegating themselves as a plaything to the first lady they find[or]there's little fun to be have in hunting such submissive prey[at random]!' ";
	say "Tracing along your [bodydesc of Player] form";
	if Player is male and Cock Length of Player < 13 and a random chance of 1 in 2 succeeds:
		say ", her delicate hands eventually descend to grip[if Cock Count of Player > 1] one of[end if] your [cock size desc of Player] cock[smn], giving you a smug expression as you writhe against her touch, more than enough to drive you to arousal[if HP of Player < 1] in spite of your protests[end if].";
		say "     Repositioning herself, she slowly descends upon your tool, supple folds enveloping the head as she acclimates herself to your irreverent, imposed intrusion. Taut hole obfuscated by her scarce, viridian attire, she leans back against you, freeing her hands to caress her body during her descent, the entirety of your dick eventually disappearing within the creature's flesh[if Player is knotted], save for the knot[end if]. Fondling her ample breasts, she revels in making you wait for her to continue, moaning[if HP of Player < 1] weakly[end if] until she finally begins a proper motion of riding her new toy.";
		say "     '[one of]That's a good little one[or]Typical that you whine so[or]Oh, I think they like it when I do that[at random]...' Biting her lower lip, her motion becomes increasingly frantic, spurred on by her rising, overwhelming need, the air very quickly filling with the lady's loud moaning, drowning out anything else you might be able to hear. Quickly becoming overwhelmed, you twitch with every gout of pre that spurts from your dick in her vice-like grip.";
		if a random chance of 1 in 2 succeeds:
			say "     Just as you're about to unload, she pulls free of your throbbing organ, grinding it against her supple flesh to push the both of you past the edge. Aiming [if Cock Count of Player > 2]two of your cocks[else if Cock Count of Player is 2]both of your cocks[else]your cock[end if] at you, she paints you with your [Cum Load Size of Player] seed, her exhausted laughter filling the air even after you are completely spent.";
			say "     '[if Ball Size of Player > 5][one of]Hm, good thing I avoided that[or]Oh, what a horrible mess you've made of yourself[or]Well then, seems you've got a lot to clean up[at random][else][one of]Ha, that serves you[or]Hopefully you learned your lesson, this time[or]A suitable end for one so naughty[at random][end if]!' Still grinning, she steps off you and adjusts her meager, silken attire before setting off, no doubt satisfied with her task. Eventually, you recover enough to stand up and depart, still coated in your [Cum Load Size of Player] output.";
		else:
			say "     In the mere moments that follow, you find yourself unable to hold back any longer. The elf - no doubt sensing this - deliberately sets you off by [if Player is knotted]tying with you[else]hilting with you one last time[end if], aching organ finally exploding its [Cum Load Size of Player] load into her[if Cock Count of Player > 2], its unattended brothers staining your torso[else if Cock Count of Player is 2], its unattended brother staining your torso[end if]. Crying and moaning out, the lady's cunt squeezes and milks your throbbing tool. [if Ball Size of Player > 5]She eventually pops free of it with how overwhelming your payload is, the remainder spilling onto the earth[else]She eagerly abides every last drop of your payload until it leaks from the stuffed hole[end if].";
			say "     '[one of]Whew[or]Oh[or]Ah[at random], [one of]that'll do[or]you might prove useful to me[or]that was just the fun I needed[at random]...' Grinning at you as she takes a moment to catch her breath, she eventually [if scalevalue of Player > 3]climbs[else]pulls[end if] off you, a trail of your seed following in her wake. She takes a moment to adjust her meager, silken attire before setting off, no doubt satisfied with her task. Eventually, you recover enough to stand up and depart, spent and exhausted by the experience.";
	else:
		say ", she briefly steps off of you, repositioning yourself to expose your behind for her. Setting herself down before it and wrapping her arm around, she slings her large bow along your rump[if scalevalue of Player > 3], a feat not particularly easy given your size[end if]. Slowly drawing the string back, she unleashes it to loudly smack against your back, making you visibly twitch and cry out from the harsh sensation, much to her amusement.";
		say "     She continues this hard ritual, reveling in each protesting twitch and writhe with each loud snap. Overwhelmed by such rough treatment, you can't help but become aroused by it, [if Player is male]unattended cock[smn] dripping onto the ground[else if Player is female]unattended cunt[sfn] dripping onto the ground[else]though you lack a proper outlet to vent your rising lusts[end if][if Player is not neuter and HP of Player < 1] in spite of your better judgment[end if].";
		say "     '[if HP of Player < 1][one of]Oh, all the amusing ways you writhe[or]Maybe this will teach my new toy to watch where they wander[or]The Hunt has been generous to me[at random][else][one of]Just like the wanton beast, to take so well to their punishment[or]I bet I could do anything to you and you'd take it like a slut[or]Oh, you at least suffice as an amusing toy[at random][end if]...!' Laughing at the pitiful state she's placed you in, ";
		if Player is not neuter:
			say "she nonetheless teases your apparent arousal, fingers tracing along the length of [if Cock Count of Player > 1]one of your [cock size desc of Player] cocks[else if Player is male]your [cock size desc of Player] cock[else if Cunt Count of Player > 1]one of your [cunt size desc of Player] pussies[else]your [cunt size desc of Player] pussy[end if], a meager balm that she's eager to undermine with another lashing.";
		else:
			say "she teases your apparent arousal, fingers tracing along your [bodytype of Player] thighs since you lack anything of real interest to her for the elf to play with. It's a meager balm that she's eager to undermine with another lashing.";
		say "     The elf's endeavors persist for what seems like forever until you finally cry out, finding twisted bliss after being rendered so sensitive[if Player is male], wasting your [Cum Load Size of Player] load onto the earth[else if Cunt Count of Player > 1], aching cunt[sfn] making a further mess of the earth[end if]. Mocking and chastising you, the elven lady does thankfully relent, pulling her bow free from you and giving one final, playful swat with it before parting. It takes a fair amount of time to recover, your behind no doubt very red and sore following the whole ordeal.";

To say ElfLoses:
	say "     You knock the elf back and she topples to her bottom";
	if Libido of Player > 29:
		say ". Shall you try to have your way with her before she flees?";
		if Player consents:
			if ElfEncounters < 6, increase ElfEncounters by 1;
			if ElfEncounters < 4:
				say "     You advance on her, but a sudden breeze of forest air whisks her away in a blur. [if ElfEncounters is 2]You'll probably have to try again next time you run into her[else]You almost managed to grab her that time[end if].";
			else if ElfEncounters is 4 or ElfEncounters is 5:
				say "     Frustrated by her earlier escapes, you are ready for her this time and grab her right at the last moment, pulling her dazed body into your arms before she can get away on the wind. Despite her strong blows, she's quite light and easily held now that she's defeated. Having caught her, you smile and push her to the ground on a pile of leaves, then move atop her, always careful to keep a grip on her lest she escape again. Laying back against the foliage, the elf woman is a beautiful, lovely sight and one you'll enjoy despoiling with your lustful intentions for her.";
				if Player is male:
					say "     Stroking your cock until it's nice and hard, you move into position at her wet folds. She moans softly as you brush it against her damp lips, then thrust into her lovely pussy, enjoying her moan of pleasure even as she tries to hide it[if Cock Length of Player > 15]. Your penis is quite large for her, and she whimpers a few times as well, though the moans of pleasure far outnumber those until it is all lustful cries as she's fully stuffed to the back of her smaller cunt[else if Cock Length of Player > 7]. With a few pushes that make her moan aloud, you sink your cock into her until she's fully stuffed to the back of her cunt[else]. You manage to slide your full length into the elf's cunt easily enough, drawing more moans of pleasure from her[end if]. Holding her by the wrists, you thrust into your elven prize again and again with your [cockname of Player] cock until finally you groan and cum inside her. She bites her lip and tries to fight it back, but ends up crying out as she climaxes as well, having enjoyed the rough fucking immensely. Grinning, you let her up and watch as she's whisked away by the wind, leaking your cum as she goes.";
				else:
					say "     Bringing a hand between her legs, you get her to spread them and let you at her wet snatch. She moans softly as you brush against it, then slip a pair of fingers into her, enjoying her moan of pleasure even as she tries to hide it. Holding her down by one shoulder, you keep fingering her cunt to watch her squirm and moan beneath you. You pump in and out of her hard and fast, feeling her cunt quiver around your digits. She bites her lip and tries to fight it back, but ends up crying out as she climaxes, having enjoyed the rough fingering immensely. [if Player is female]Greatly aroused, you grab her head and press her face to your puss[yfn], forcing her to lick you until you cum as well, soaking her face in your juices even as you lick hers from your hand. [end if]Grinning, you let her up and watch as she's whisked away by the end, still dripping female juices from her cunt.";
			else:
				say "     Grabbing her wrist, she submits to you this time. 'You have bested me, warrior, time and again. I must accept my fate,' she says, head bowed. Grinning and quite pleased, you run your hand through her lovely hair ";
				if Player is male:
					say "as you guide her head between your legs. With your growing erection before her, she whimpers softly before giving it a few licks, then kisses and sucks at it more eagerly.";
					say "     You run your fingers through her hair and stroke her pointed, and very sensitive, ears. She blushes as you tell her how lovely she looks with your penis in her mouth and what a fine cocksucker she is, embarrassed by your words as well as her own eagerness to continue. After you've gotten quite excited and given her a good taste of your [cockname of Player] precum, you let her release it and have her climb into your lap instead. She whimpers a little, in both reluctance and anticipation, but does as ordered. Her cunt [if Cock Length of Player > 15]is a tight fit for your huge cock, so you let her take her time and enjoy watching her moan and struggle to take you in, eventually stuffing as much as she can fit into her much smaller vagina[else if Cock Length of Player > 8]is a little bit small for you, but she eventually ends up stuffing as much as she can fit into her smaller vagina[else]takes your cock's full length in easily enough[end if]. Gripping her ass, you lick and suck at her large, lovely breasts while she rides in your lap, whimpering and moaning in pleasure. You suck and nibble at her big, pink nipples while pumping your [cock size desc of Player], [cock of Player] shaft into her until finally climaxing and sending your hot seed inside her. Not bothering to hold back any more, the lustful elf woman arches her back and cums hard as well. Both spent, you relax your hold on her and lean back, resting on your hands as she's taken up by the wind, lightly easing off your cock as she rises into the air. She drifts off on the breeze, leaking a trail of your cum from her recently filled cunt.";
				else if Player is female:
					say "as you guide her head between your legs. With your damp pussy before her, she slowly slides her tongue over it with a soft moan before diving in eagerly.";
					say "     You run your fingers through her hair and stroke her pointed, and very sensitive, ears. She blushes as you tell her how lovely she looks between your legs where she belongs and what a fine job she's doing eating you out, embarrassed by your words as well as her own eagerness to continue. And your words are not just to tease her, her tongue is quite artful in its approach, clearly having had considerable practice before. She alternates between licking and nibbling your folds, playing with your clit and diving deep within you to lap up your juices. You grin as you notice her hands drift between her legs to play with herself while she lavishes attention upon you. After a lovely session of her tongue-work, you can take no more and reach a powerful climax, crying out in delight. You grin and cum even harder as you hear the elf woman moan in orgasm as well, unable to contain her pleasure any longer. Both spent, you release her head and stroke your fingers lightly across her cheek she is picked up by the air and drifts away from you. As she rides away on the breeze, she dribbles female juices from her wet cunt.";
				else:
					say "before lowering the elf onto her back. Given your lack of a proper outlet, you decide to ";
					if anallevel is 3 and a random chance of 1 in 2 succeeds: [Rimming]
						say "walk around her proffered form and kneel atop her head, your [skin of Player] ass perched above her lips.";
						if ElfRimming is 0:
							say "     The elf hesitates at first, clearly inexperienced with anal play. 'Are you sure about this?' she asks, her nervous breath beating warmly over your rim. When you insist with gentle pressure, she complies to your demands and snakes her smooth, wet tongue through the crack of your ass, leaving a thin film of saliva in that wayward motion's wake. Her first stroke is followed by a pause to bask in your scent, then another testing lick, gauging your rump's flavor with a soft, hazy moan. Every application grows more confident and lustful, her initial trepidation replaced with genuine enjoyment and fingers straying below to stuff her nectar-rich folds. Soon, the elf is feasting on your ass";
						else:
							say "     The elf leans in to give your rim a gentle kiss, and you swear you hear her giggle as her supple lips withdraw. Her hands roam over your hips before her arms rope around you, pulling you down further to burrow her face in your backside. Her smooth, wet tongue snakes through the cleave, leaving a film of warm saliva in that hungry pressure's wake. Her first sensuous stroke is followed by cool exhale, sending damp, soothing warmth through your sensitive inner lining. Greatly aroused by your aroma, her fingers stray below to stuff her nectar-rich folds, and soon, the elf is gorging on your ass again";
						say ", her teeth grazing over your flesh as she hungrily laps through the cleft. Lathering your skin in a sheen of tainted spit, its scintillating heat suffuses your bottom, quickly cooling in the air before warmth blossoms anew with another slick coating. You tremble and moan above the woman, grabbing fistfuls of her silken garments to sturdy yourself as you urge her for more with needful gyrations.";
						WaitLineBreak;
						say "     Heeding your command, the point of her tongue circles your rim, teasing you with the prospect of the bliss yet to come. When you give a needful whine, her cruel temptation relents, saliva-soaked muscle snaking sinuously into your bottom. Ripples of undirected pleasure surge through your loins at the wondrous intrusion, rendering rational thought void as she explores your anal lining. Curling and probing your elastic inner walls, her assault has you rhythmically squeezing around her, slimy tongue working your ass until it's frothing with her bubbly, ticklish spit. She seals her lips to your rim in a sordid kiss, sending every hot breath to blow through your reflexively clenching channel. Aching to reward her skillful ministration, you lean over to press a kiss to her honey-damp petals, tongue gliding over her clit before burrowing into her nethers to join her jilling digits. The added stimulation quickly pushes your partner over the edge, loosing a muffled cry in your bowels as her sticky juices spill all over your face. What you fail to chase after gathers between her thighs, forming a sticky, heady puddle of her intoxicating quim.";
						say "     Sated and dizzy with arousal, you rise unsteadily from the elf's skillful tongue. She pants hotly for air as you ascend, a blush burning bright on her once-proud countenance. [if ElfRimming is 0]'Th-Thank you...' she murmurs, grateful for the privilege of feasting on your ass once more[else]'That was...' she murmurs, only to go quiet again, still gathering her thoughts after the prolonged ordeal[end if]. She fishes her fingers out of her sex to stand, then pulls you into a deep and passionate kiss, showing you just how much she enjoyed your kinky fun. After pulling back from you again, the elf smiles fondly and drifts off on that familiar breeze, leaving only the fluids on the ground and the warmth of her nanite-laden saliva within to remember her by.";
						if ElfRimming is 0, now ElfRimming is 1;
					else: [Cunnilingus and Fingering]
						say "part her curvy legs, stroking over the swell of her thighs and squeezing into the pliant plush of her hips. Dipping down between the part, you nip what sheer, silky clothing may obstruct you and hoist it all aside. Fully exposed before you, her pouting petals drool with glistening wetness, already trickling down to taint the earth beneath her. The elf admits a smirk at your reverent admiration, only to tremble and crane her head back as your breath blows over her folds.";
						say "     Without hesitation, you wrap your arms around her waist and burrow your head between those sumptuous thighs. Your tongue extends to sweep and curl over her lust-slick labia, oh-so-gently parting her flesh with its nimble, flexing tip. Each stroke explores from base to supple clit, at times pausing to curl and suck on her cute pink button. Her back arches stiffly when at first one finger, then a second press into her welcoming depths, sliding all the way to the knuckle in that warm, damp passage. 'Oh, I want more!' your lover pleads, her breath somewhat strained by the time you're pumping back and forth in that slavering vise, seeking out all those special spots where you sense her tense against you. In time, the once-proud elf is reduced to hazy, raspy exultations, her hips rocking in tandem with your digits['] steady pumping. A stream of feminine nectar greets your roving tongue, as nourishing as it is intoxicating, the fluid soaking your palate as you orally pleasure your partner.";
						WaitLineBreak;
						say "     It's not long before your service overwhelms the needy elf. Her fluids spill across your face in heady squirts and splatters, making quite the mess with her impressive, sticky output. Her hands slide below to push your head down, keeping your lips locked to her folds as she quivers and moans in the throes of carnal ecstasy. You eagerly works to prolong her peak, slathering over her vaginal walls and swallowing down her nectar. Once her climax tapers down, you pull away from her slavering folds again, licking your lips and looking back at the thoroughly exhausted elf. She meets your gaze with a soft and sultry smile, through her heart still races after your intense stimulation.";
						say "     'Th-Thank you,' the elf murmurs quietly, slowly pushing herself back to her feet. With a somewhat staggering saunter, she sidles up against you and ropes her arms around our shoulders. 'You would make a wonderful partner. If you only you ceased your aimless wandering and joined us...' Purring gently, a finger traces down your fore in a serpentine slalom, delicately running over your [skin of Player] skin until it stops at your barren groin. She gropes your featureless pelvis, then grins up at you slyly. 'And perhaps grew something fun to play with down here.' Without further word, she steps away and picks up on the forest breeze, leaving only the pleasant taste of her honeys to remember her by.";
		else:
			say "     You choose to let her off, a breeze of forest air whisking her away in a blur.";
	else:
		say ". Having nothing in particular you require from the individual, you instinctively let her go, a breeze of forest air whisking her away in a blur.";

to say ElfDesc:
	setmongender 4; [creature is female]
	say "     [if ElfEncounters is 0]At first glance, you run into what appears to be a human, but something's a little off[else]You run into an elven woman[end if]. Vaguely Asian, lightly tanned features exposed before you, the lady's lithe build is betrayed by her voluptuous curves, barely contained within the confines of her paltry, silken attire.";
	say "     '[one of]You've overstepped your bounds, stranger[or]These woods shall own all that dwell within[or]Ah, yes, you'll suffice[or]Just the kind of fun I was looking for[at random]!' Grinning fiercely, she makes her long, ornate bow very apparent to you, her golden hair flowing in the open air. It's clear she's not going to let you off without a fight.";
	if ElfEncounters is 0, now ElfEncounters is 1;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Wood Elf" to infections of girl;
	add "Wood Elf" to infections of humanoid;
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Wood Elf"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The Elf[or]She[at random] [one of]fires an arrow to pin you to the earth by a bit of your attire, pulling close as you try to free yourself to knock you onto your ass [if scalevalue of Player > 3]- a feat particularly impressive for a lady of her size - [end if]before pulling out of range[or]slings a peculiar arrow and fires it directly into your face, its apparently cloth end puffing out a gust of strange dust to fill your lungs, leaving you fairly disoriented[or]pulls in close to trip you with the end of her bow, laughing and taunting you as you scramble back to your feet[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[ElfLoses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[ElfWins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[ElfDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "otherwise human-looking, except the set of deep, soul piercing, blue eyes framed in a face that seems somewhat oriental. Your ears are quite long and tapered, inhumanly so"; [ Face description, format as "Your face is (your text)."]
	now body entry is "largely slender and agile, with long arms and slim fingers. Your legs are shapely and athletic"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "smooth and flawless"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a large, firm buttocks, waiting to be grabbed."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]human[or]normal-looking[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "a strange warping ripple runs across the flesh of your cheeks as your face changes and smooths out to new, elfin, proportions, but otherwise appears human"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "waves of heat run through your altering form. Appearing human, your figure nonetheless becomes lithe and slender and your fingers lengthen to agile digits"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your skin evens out its blemishes, becoming youthful and smooth, but otherwise seems fairly normal"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your rump begins to swell, along with your lust, leaving you breathing hard as you gain a large, grabbable, ass"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it thrums with an alien pleasure. Checking things out, [if Cock Count of Player > 1]they look[else]it looks[end if] perfectly human"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 17;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 45;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 9; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 8; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 6; [ Width of female sex infection will try and give you ]
	now libido entry is 10; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]effeminate[or]slender[at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
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
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


when play ends:
	if bodyname of Player is "Wood Elf":
		if humanity of Player < 10:
			say "     Your last vestige of humanity lost to the pull of your elven kin's influence, you feel yourself compelled to meet up with them, eventually brought into their tribe. Over time, you learn the purpose of the tribe as some manner of scouting party, checking to see if they should make their move on this realm or not, ";
			if ElfEncounters > 4:
				say "a matter of some importance to you as you quickly rise up in the ranks.";
				say "     Your dominant prowess eventually granting a chance to return to this realm, a great portal is opened before you. You step through without hesitation and a great feline beast waits patiently in a jungle. You mount the beast and he carries you back to your destination swiftly. Brought to the city of your people, you would suggest to the queen that your tribe take over a city of them. They would make delightful pets...";
			else:
				say "not that this seems particularly pressing to you.";
				if Player is submissive:
					say "     Given your submissive tendencies, you find yourself relegated to a fairly lowly standing in the tribe. Not that this is of much issue to you, given the simple work you are made to attend to when you are not relegated to being a wanton plaything for those of higher standing than you...";
				else:
					say "     You maintain a fairly modest standing in the tribe, pulling your weight where need be. When there isn't the matter of hunting or bringing in new [']Recruits['], you fill the forest with the sounds of sex for many long hours. You couldn't be more content...";
		else:
			say "     Once the military picks you up, you get through processing with almost zero issue. You quickly find that society is eager to embrace an infected so conventionally attractive and normal-looking, allowing you to go about your daily life with extreme ease";
			if "Horny Bastard" is listed in feats of Player:
				say ". Given your infection's overwhelming influence to sate your lust, you manage to turn this to your benefit by becoming an owner of an upper-class night club. It proves to be quite effective at bringing coin in, and you get the benefit of picking and choosing whomever satisfies your desire at the time.";
			else:
				say ". Of course, your infection's influence does compel from you a very pressing need to sate your lust, but attending to this matter is generally not all that difficult, though it also seems to have an effect of drawing you closer to nature, an itch you eventually attend to by caring for a fairly large garden.";

Elf ends here.
