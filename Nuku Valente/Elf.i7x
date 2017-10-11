Version 3 of Elf by Nuku Valente begins here.
[Version 3 - Near-complete rewrite, victory altered for consistency]
[ - Originally Written by Nuku Valente - ]
[ - Player Victory Sex written by Stripes -]
[ - Ver. 3 Overhaul by Blue Bishop - ]

"Adds a Wood Elf to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

elfenc is a number that varies. [Elf Encounter, linear memory value]

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]
Elfdefeat is a number that varies.
to say Elf attack:
	if hp of player < 1:
		say "     Finally overtaken, you slump to your feet in exhaustion, the elf laughs, grinning as she approaches to pin you onto the ground, seating herself atop you.";
		say "     '[one of]Hmm[or]Oh[or]Yes[at random], [one of]I love to play with my prey[or]I think you'll do[or]you should've ran. I love it when they run[at random]...' Tracing";
	else:
		say "     When you surrender to the lady, she can't help but sneer slightly at you, approaching to pin you onto the ground and seat herself atop you.";
		say "     '[one of]Hmpf[or]Well[or]Ha[at random], [one of]I was hoping you'd be of better use to me than as a mere pet[or]Such a naughty one, relegating themselves as a plaything to the first lady they find[or]there's little fun to be have in hunting such submissive prey[at random]!' Tracing";
	say " along your [bodydesc of player] form";
	if cocks of player > 0 and cock length of player < 13 and a random chance of 1 in 2 succeeds:
		say ", her delicate hands eventually descend to grip[if cocks of player > 1] one of[end if] your [cock size desc of player] cock[smn], giving you a smug expression as you writhe against her touch, more than enough to drive you to arousal[if hp of player < 1] in spite of your protests[end if].";
		say "     Repositioning herself, she descends slowly descends upon the tool, supple folds enveloping the head as she acclimates herself to your irreverent, imposed intrusion. Taught hole obfuscated by her scarce, viridian attire, she leans back against you, freeing her hands to caress her body during her descent, eventually the entirety of your dick disappearing within the creature's flesh[if cockname of player is listed in infections of knotlist], save for the knot[end if]. Fondling her ample breasts, she revels in making you wait for her to continue, moaning[if hp of player < 1] weakly[end if] until she finally begins a proper motion of riding her new toy.";
		say "     '[one of]That's a good little one[or]Typical that you whine so[or]Oh, I think they like it when I do that[at random]...' Biting her lower lip, her motion becomes increasingly frantic, spurred on by her rising, overwhelming need, the air soon very quickly filling with the lady's loud moaning, drowning out anything else you might be able to hear. Yourself also quickly becoming overwhelmed, you twitch with every gout of pre that spurts from your dick her vice-like grip.";
		if a random chance of 1 in 2 succeeds:
			say "     Just as you're about to unload, she pulls free of your throbbing organ, grinding it against her supple flesh to push the both of you past the edge. Aiming [if cocks of player > 2]two of your cocks[else if cocks of player is 2]both of your cocks[else]your cock[end if] at you, she paints you with your [cum load size of player] seed, her exhausted laughter filling the air even after you are completely spent.";
			say "     '[if cock width of player > 20][one of]Hm, good thing I avoided that[or]Oh, what a horrible mess you've made of yourself[or]Well then, seems you've got a lot to clean up[at random][else][one of]Ha, that serves you[or]Hopefully you learned your lesson, this time[or]A suitable end for one so naughty[at random][end if]!' Still grinning, she steps off you and adjusts her meager, silken attire before setting off, no doubt satisfied with her task, and leaving you to recover. Eventually, you've sufficiently recovered to depart yourself, the mess that you are now.";
		else:
			say "     In the mere moments that follow, you find yourself unable to hold back any longer, the elf -- no doubt sensing this -- deliberately setting you off by [if cockname of player is listed in infections of knotlist]tieing with you[else]hilting with you one last time[end if], aching organ finally exploding its [cum load size of player] load into her[if cocks of player > 2], its unattended brothers staining your torso[else if cocks of player is 2], its unattended brother staining your torso[end if]. Crying and moaning out, the lady's cunt squeezes and milks your throbbing tool, [if cunt width of player > 20]she's eventually popped free of it by how overwhelming your payload is, the remainder spilling onto the earth[else]she eagerly abides every last drop of your payload, until it leaks from the stuffed hole[end if].";
			say "     '[one of]Whew[or]Oh[or]Ah[at random], [one of]that'll do[or]you might prove useful to me[or]that's just the fun I needed[at random]...' Grinning at you as she takes a moment to catch her breath, she eventually [if scalevalue of player > 3]climbs[else]pulls[end if] off you, a trail of your seed following in her wake. She takes a moment to adjust her meager, silken attire before setting off, no doubt satisfied with her task, and leaving you to recover. Eventually, you've sufficiently recovered to depart yourself, spent and lust-worn as you are.";
	else:
		say ", she briefly steps off of you, repositioning yourself to expose your behind for her. Setting herself down before it and wrapping her arm around, she slings her large bow along your rump[if scalevalue of player > 3], a feat not particularly easy given your size[end if]. Slowly drawing the string back, she unleashes it to loudly smack against your back, making you visibly twitch and cry out from the harsh sensation, much to her amusement.";
		say "     She continues this hard ritual, reveling in each protesting twitch and writhe with each loud snap. Overwhelmed by such rough treatment, you can't help but become aroused from it, [if cocks of player > 0]unattended cock[smn] dripping onto the ground[else if cunts of player > 0]unattended cunt[sfn] dripping onto the ground[else]though you lack a proper outlet[end if][if cocks of player is 0 and cunts of player is 0 and hp of player < 1] and in spite your better judgment[else if hp of player < 1], much in spite your better judgment[end if].";
		say "     '[if hp of player < 1][one of]Oh, all the amusing ways you writhe[or]Maybe this will teach my new toy to watch where they wander[or]The Hunt has been generous to me[at random][else][one of]Just like the wanton beast, to take so well to their punishment[or]I bet I could do anything to you and you'd take it like a slut[or]Oh, you at least suffice as an amusing toy[at random][end if]...!' Laughing at the pitiful state she's placed you in, ";
		if cocks of player > 0 or cunts of player > 0:
			say "she nonetheless teases your apparent arousal, fingers tracing along the length of [if cocks of player > 1]one of your [cock size desc of player] cocks[else if cocks of player > 0]your [cock size desc of player] cock[else if cunts of player > 1]one of your [cunt size desc of player] pussies[else]your [cunt size desc of player] pussy[end if], a meager balm she's eager to undermine with another lashing.";
		else:
			say "she teases your apparent arousal, fingers tracing along your [bodytype of player] thighs, since you lack anything of real interest to her for the elf to play with, a meager balm she's eager to undermine with another lashing.";
		say "     The elf's endeavours persist for what seems like forever, until you finally cry out, finding twisted bliss after being rendered so sensitive[if cocks of player > 0], wasting your [cum load size of player] load onto the earth[else if cunts of player > 1], aching cunt[sfn] making a further mess of the earth[end if]. Mocking and chastising you, the elven lady does thankfully relent, pulling her bow free from you and giving one final, playful swat with it before parting. It takes a fair amount of time to recover, no doubt your behind very red and sore following the whole ordeal.";

To say Elf loss:
	say "     You knock the elf back and she topples to her bottom.";
	if libido of player > 29:
		say ". Shall you try to have your way with her before she flees?";
		if player consents:
			if elfenc < 6, increase elfenc by 1;
			if elfenc < 4:
				say "     You advance on her, but a sudden breeze of forest air whisks her away in a blur. [if elfenc is 2]You'll probably have to try again next time you run into her[else]You almost managed to grab her that time[end if].";
			else if elfenc is 4 or elfenc is 5:
				say "     Frustrated by her earlier escapes, you are ready for her this time and grab her right at the last moment, pulling her dazed body into your arms before she can get away on the wind.  Despite her strong blows, she's quite light and easily held now that she's defeated.  Having caught her, you smile and push her to the ground on a pile of leaves and move atop her, always careful to keep a grip on her, lest she escape again.";
				say "     Laying back against the foliage, the elf woman is a beautiful, lovely sight and one you'll enjoy despoiling with your lustful intentions for her";
				if cocks of player > 0:
					say ".  Stroking your cock until it's nice and hard, you move into position at her wet folds.  She moans softly as you brush it against her damp lips, then thrust into her lovely pussy, enjoying her moan of pleasure even as she tries to hide it[if cock length of player > 15].  Your penis is quite large for her and she whimpers a few times as well, though the moans of pleasure far outnumber those until it is all lustful cries as she's fully stuffed to the back of her smaller cunt[else if cock length of player > 7].  With a few pushes that make her moan aloud, you sink your cock into her until she's fully stuffed to the back of her cunt[else].  You manage to slide your full length into the elf's cunt easily enough, drawing more moans of pleasure from her[end if].  Holding her by the wrists, you thrust into your elven prize again and again with your [cockname of player] cock until finally you groan and cum into her.  She bites her lip and tries to fight it back, but ends up crying out as she climaxes as well, having enjoyed the rough fucking immensely.  Grinning, you let her up and watch as she's whisked away by the wind, leaking your cum as she goes.";
				else:
					say ".  Bringing a hand between her legs, you get her to spread them and let you at her wet snatch.  She moans softly as you brush against it, then slip a pair of fingers into her, enjoying her moan of pleasure even as she tries to hide it.  Holding her down by one shoulder, you keep fingering her cunt to watch her squirm and moan beneath you.  You pump them in and out of her hard and fast, feeling her cunt quiver around your digits.  She bites her lip and tries to fight it back, but ends up crying out as she climaxes, having enjoyed the rough fingering immensely.  Greatly aroused, you grab her head and press her face to your pussy, forcing her to lick you until you cum as well, soaking her face in your juices even as you lick hers from your hand.  Grinning, you let her up and watch as she's whisked away by the end, still dripping female juices from her cunt.";
			else:
				say "     Grabbing her wrist, she submits to you this time.  'You have bested me, warrior, time and again.  I must accept my fate,' she says, head bowed.  Grinning and quite pleased, you run your hand through her lovely hair as you guide her head between your legs";
				if cocks of player > 0:
					say ".  With your growing erection before her, she whimpers softly before giving it a few licks, then kiss and suck at it more eagerly.";
					say "     You run your fingers through her hair and stroke her pointed, and very sensitive, ears.  She blushes as you tell her how lovely she looks with your penis in her mouth and what a fine cocksucker she is, embarrassed by your words as well as her own eagerness to continue.  After you've gotten quite excited and given her a good taste of your [cockname of player] precum, you let her release it and have her climb into your lap instead.  She whimpers a little, in both reluctance and anticipation, but does as ordered.  Her cunt [if cock length of player > 15]is a tight fit for your huge cock, so you let her take her time and enjoy watching her moan and struggle to take you in, eventually stuffing as much as she can fit into her much smaller vagina[else if cock length of player > 8]is a little bit small for you, but she eventually ends up stuffing as much as she can fit into her smaller vagina[else]takes your cock's full length in easily enough[end if].  Gripping her ass, you lick and suck at her lovely large breasts while she rides in your lap, whimpering and moaning in pleasure.  You suck and nibble at her big, pink nipples while pumping your [cock size desc of player] [cock of player] shaft into her until finally climaxing and sending your hot seed into her.  Not bothering to hold back any more, the lustful elf woman arches her back and cums hard as well.  Both spent, you relax your hold on her and lean back, resting on your hands as she's taken up by the wind, lightly easing off your cock as she rises into the air.  She drifts off on the breeze, leaking a trail of your cum from her recently filled cunt.";
				else:
					say ".  With your damp pussy before her, she slides her tongue slowly over it with a soft moan before diving in eagerly.";
					say "     You run your fingers through her hair and stroke her pointed, and very sensitive, ears.  She blushes as you tell her how lovely she looks between your legs where she belongs and what a fine job she's doing eating you out, embarrassed by your words as well as her own eagerness to continue.  And your words are not just to tease her, her tongue is quite artful in its approach, clearly having had considerable practice before.  She alternates between licking and nibbling your folds, playing with your clit and just straight diving deep into you to lap up your juices.  You grin as you notice her hands drift between her legs to play with herself while she lavishes attention upon you.  After a lovely session of her tongue-work, you can take no more and have a powerful climax, crying out in delight.  You grin and cum all the harder as you hear the elf woman moan as she cums as well, unable to contain her pleasure any longer as well.  Both spent, you release her head and stroke your fingers lightly across her cheek she is picked up by the air and drifts away from you.  As she rides away on the breeze, she dribbles female juices from her wet cunt.";
		else:
			say "     You choose to let her off, a breeze of forest air whisking her away in a blur.";
	else:
		say ". Having nothing in particular you require from the individual, you instinctively let her go, a breeze of forest air whisking her away in a blur.";

to say Elf description:
	setmongender 4; [creature is female]
	say "     [if elfenc is 0]At first glance, you run into what appears to be a human, but something's quite off...[run paragraph on][else]You run into an elven lady[end if]. Vaguely asian, lightly tanned features exposed before you, the lady's lithe build is betrayed by her voluptuous curves, barely contained within the confines of her paltry, silken attire.";
	say "     '[one of]You've overstepped your bounds, stranger[or]These woods shall own all that dwell within[or]Ah, yes, you'll suffice[or]Just the kind of fun I was looking for[at random]!' Grinning fiercely, she makes her long, ornate bow made very apparent to you, her golden hair flowing in the open air. It's clear she's not going to let you off without a fight.";
	if elfenc is 0, now elfenc is 1;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Wood Elf" to infections of girl;
	Choose a blank row from Table of random critters;
	now name entry is "Wood Elf"; [Name of your new Monster]
	now attack entry is "[one of]The Elf[or]She[at random] [one of]fires an arrow to pin you to the earth by a bit of your attire, pulling close as you try to free yourself to knock you onto your ass[if scalevalue of player > 3] -- a feat particularly impressive for a lady of her size --[end if] before pulling out of range[or]slings a peculiar arrow and fires it directly into your face, it's apparently cloth end puffing out a gust of strange dust to fill your lungs, leaving you fairly disoriented[or]pulls in close to trip you with the end of her bow, laughing and taunting you as you scramble back to your feet[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[Elf loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Elf attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[Elf description]";[ Description of the creature when you encounter it.]
	now face entry is "set of deep, soul piercing, blue eyes framed in a face that seems somewhat oriental. Your ears are quite long and tapered, inhumanly so, along your otherwise human-looking";[ Face description, format as the text "You have a (your text) face."]
	now body entry is "largely slender and agile, with long arms and slim fingers. Your legs are shapely and athletic";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "smooth and flawless";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a large, firm, buttocks, waiting to be grabbed.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]human[or]normal-looking[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "a strange warping ripple runs across the flesh of your cheeks as your face changes and smooths out to new, elfin, proportions, but otherwise appears human"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "waves of heat run through your altering form. Appearing human, your figure nonetheless becomes lithe and slender and your fingers lengthen to agile digits"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your skin evens out its blemishes, becoming youthful and smooth, but otherwise seems fairly normal"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your rump begins to swell, along with your lust, leaving you breathing hard as you gain a large, grabbable, ass"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it thrums with an alien pleasure. Checking things out, [if cocks of player > 1]they look[else]it looks[end if] perfectly human"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 17;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;
	now lev entry is 5; [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 9; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 8; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 6; [ Width of female sex infection will try and give you ]
	now libido entry is 10; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]effeminate[or]slender[at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Wood Elf":
		if humanity of player is less than 10:
			say "     Your last vestige of humanity lost to the pull of your elven kin's influence, you feel yourself compelled to meet up with them, eventually brought into their tribe. Over time, you learn the purpose of the tribe as some manner of scouting party, checking to see if they should make their move on this realm or not, ";
			if elfenc > 4:
				say "a matter of some importance to you as you quickly rise up in the ranks.";
				say "     Your dominant prowess eventually granting a chance to return to this realm, a great portal is opened before you. You step through without hesitation and a great feline beast waits patiently in a jungle. You mount the beast and he carries you back to your desination swiftly. Brought to the city of your people, you would suggest to the queen that your tribe take over a city of them. They would make delightful pets...";
			else:
				say "not that this seems particularly pressing to you.";
				if player is submissive:
					say "     Given your submissive tendencies, you find yourself relegated to a fairly lowly standing in the tribe. Not that this is of much issue to you, given the simple work you are made to attend to, when you are not relegated to being a wanton plaything for those of higher standing than you...";
				else:
					say "     You maintain a fairly modest standing in the tribe, pulling your weight where need be. When there isn't the matter of hunting or bringing in new 'Recruits' you fill the forest with the sounds of sex for many long hours, you couldn't be more content...";
		else:
			say "     Once the military picks you up, you get through processing with almost zero issue. You quickly find that society is eager to embrace an infected so conventionally attractive and normal-looking, allowing you to go about your daily life with extreme ease ";
			if "Horny Bastard" is listed in feats of player:
				say ". Given your infection's overwhelming influence to sate your lust, you manage to turn this to your benefit by becoming an owner of an upper-class night club. It proves to be quite effective at bringing coin in, and you get the benefit of picking and choosing whomever satisfies your desire at the time.";
			else:
				say ". Of course, your infection's influence does compel from you a very pressing need to sate your lust, but attending to this matter is generally not all that difficult, though it also seems to have an effect of drawing you closer to nature, an itch you eventually attend to by caring for a fairly large garden.";

Elf ends here.
