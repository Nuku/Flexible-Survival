Version 1 of Cerberus by Stripes begins here.
[ Version 1.2 - Alt attack and Anime Babe vulnerability tweaked ]
[Adaptation for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Cerberus to Flexible Survival."

cerbfight is a number that varies.
cerberusarousal is a number that varies.
cerbmaulcount is a number that varies.

to say cerberusdesc:
	setmongender 5; [creature is herm]
	now cerbmaulcount is 0;
	say "     You find yourself facing a creature of legend, a three-headed hound like Cerberus of Greek myth. This beast's large, canine body has three heads and its muscled body is covered in a coat of rough fur as black as coal. The creature pads towards you on all fours, then rises up on its hind legs, displaying its powerful body to you as it growls. The monster's chest is quite broad, expanded to make room for the three heads as well as the powerful organs to drive its altered body. It has six rows of breasts. The uppermost pair are of above-average size and they become progressively smaller until the last row are slight bumps with nipples. Its arms and legs are muscled and strong to be able to bear the weight of this large creature. Between the mythic creature's legs is a wet, dripping slit. Behind it, you catch a glimpse of its long, thick tail. As you examine the tail, you notice a slit at the very end of it from whence her male genitals are just now peeking out. Something tells you that her testicles are in that tail as well. The cock on the end of her tail is quite large, with a swelling knot and several large ridges along its canine length. The three heads growl at you again, drawing your focus back to them in time see the Cerberus herm charge at you with lust in her six wild eyes.";
	if BodyName of Player is "Anime Babe":
		say "     Your anime girl body, particularly vulnerable to tentacle attack, is entranced by the Cerberus's tail and cock tip, so like a tentacle eager to fill you. You moan and squeal in barely suppressed pleasure as that tail sways, quickly draining your resistance.";
		decrease plfleebonus by 2;
		decrease pldodgebonus by 2;
		decrease plmindbonus by 2;
		now HP of Player is ( 3 * HP of Player ) / 4;
		now Libido of Player is ( 100 + Libido of Player + Libido of Player + Libido of Player ) / 4;


to say losetocerberus:
	now cerbfight is 2;
	if HP of Player > 0:			[submit]
		say "     Drawn in by this herm canine's exotic body, you give in to her and offer yourself for her amusement. She runs her paws over her body and releases a chuckle that is partially a howl from all three heads. She takes you into her arms and runs her paws over your body, groping and fondling you as she slips off your clothes and backpack to better see what her new bitch has brought her to play with.";
	else:					[beaten]
		say "     Beaten by the strange, three-headed dog-beast, you are knocked to the ground. The three snarling heads sniff and nuzzle over you, inspecting their prize. You try to resist as those maws drool onto you, showing three vicious sets of teeth. The hermaphrodite canine pushes your legs apart with her large paws and sniffs at your crotch.";
	if Player is herm:		[HERM]
		say "     The trio of heads bark happily at having found another herm to play with. They start licking at your face happily and she eagerly picks you up and starts rubbing her hard cock against you. Pushing you onto all fours, the three-headed beast mounts you and drives her large, canine cock into your pussy without delay. The dog heads howls happily and she takes your [CockName of Player] penis in one paw while fucking you like an animal. The central head bites down on the back of your neck while the other two take your upper arms, keeping you trapped beneath them while she fucks you with her cock-ended tail. Not that you could resist anyhow, with that wonderful cock pumping inside you and that doggy knot swelling and locking you like a bitch to the big dog creature atop you. Lost in the lustful pleasure of the wild fucking, you cum hard as the Cerberus herm pumps her seed into your womb, fully claiming you as her bitch. Your cum paints the ground beneath you as you're bred by your powerful lover.";
		say "[impregchance]";
		say "     When the knot finally goes down, the canine herm pops it out of you and a waterfall of doggy seed flows from your well-used hole. You moan softly and pass out, lost in the bliss of being so thoroughly bred by the mythic beast.";
	else if Player is female:				[FEMALE]
		say "     The trio of heads bark happily at having found a female to breed. They licking at your face and she eagerly picks you up and rolls you over onto your back. The large creature climbs atop you, rubbing her hard cock against your belly. The three-headed herm mounts you, driving that large cock at the end of her tail into your pussy without further delay. The heads howl in pleasure and she starts fucking you like an animal. The two side heads latch onto your breasts and start sucking and licking at your nipples, making you moan. As you do, the central head kisses you with its canine muzzle, pushing its long, slobbery tongue into your mouth. her powerful body keeps you pinned down while she fucks you, keeping you trapped beneath her. Not that you could resist anyhow, with that wonderful cock pumping inside you and that doggy knot swelling and locking you like a bitch to the big dog creature atop you. Lost in the lustful pleasure of the wild fucking, you cum hard as the Cerberus herm pumps her seed into your womb, fully claiming you as her bitch. Your cum paints the ground beneath you as you're bred by your powerful, bestial lover.";
		say "[impregchance]";
		say "     When the knot finally goes down, the canine herm pops it out of you and a waterfall of doggy seed flows from your well-used hole. You moan softly and pass out, lost in the bliss of being so thoroughly bred by the mythic beast.";
	else:								[MALE]
		if HP of Player > 0:		[male submit]
			say "     The trio of heads growl in disappointment at having only found a male, but at least it is one willing to play with her. 'And perhaps, with a little help, he'll become more fun to play with in the future,' the heads discuss, nodding to one another. She pushes you to your knees and strokes a paw over her thick tail, bringing the cock at its end to your lips. You lick your lips as you eye the huge, throbbing meat. You should be concerned given its great size, but its musky, arousing scent is overwhelming. Soon you're licking and kissing along it, running your tongue up and down its length. You suck eagerly at its pointed tip, drinking down her precum. When she takes your head in her paws, she guides your mouth over her cock, steadily driving it down your throat until the whole thing is stuffed down into you. You ache a little from its size, but that hardly seems to matter as you're all too eager to accept that as long as you have that big bone buried in you. You suck and lick until finally she cums hard, blasting half her load into your belly and the rest across your face when she pulls out. You fall back, cumming hard all over yourself as you collapse, panting for breath and passing out. You drift off into wild, wet dreams. Perhaps, if you are lucky, you will awaken as a beast like her and be able to please the powerful Cerberus as her bitch as those dreams make you long to be.";
		else:				[male beaten]
			say "     The trio of heads growl at having only found a male. She seems to have a conversation between her three heads for a moment before reaching down and picking you up. You're too beaten up to resist her at that point as she forces you to drink from her breast, feeding you her infected milk. As the tainted milk gets you aroused, she grabs your stiffening cock and spears her wet pussy down onto it. 'If only you were a herm or female, then we could really have some fun.' She holds you tightly and doesn't make any attempt to ride your cock and prevents you from thrusting into her, letting her leaking juices soak into you while you drink down her milk until you pass out from your injuries into wild, wet dreams. Perhaps, if you are lucky, you will awaken a beast like her and be able to please the powerful Cerberus as her bitch as those dreams make you long to be.";
		increase Libido of Player by 12;
		follow the sex change rule;

to say beatthecerberus:
	choose row MonsterID from the Table of Random Critters;
	now cerberusarousal is 0;
	let godoggygo be 0;
	now cerbfight is 1;
	say "     After your hard-fought battle, you manage to knock the triple-headed herm to the ground. She moans and pants, tailcock leaking precum and pussy dripping juices from her pent-up and unsatisfied arousal. You look her over, trying to decide what to do with her now that you've knocked the fight out of her.";
	if FaceName of Player is "Cerberus":
		say "     Your other two heads end up making the decision for you, wresting control of your body from you and pushing you into her arms. You share slobbery, canine kisses with her, quickly losing yourself in the pleasure as you somehow share in the sense of them all. You soon give in as your three brains of you become of like mind and seek to sate your collective lusts with this attractive herm.";
		if Libido of Player < libido entry:
			increase Libido of Player by 1;
			increase Libido of Player by (libido entry - Libido of Player ) / 3;
		now godoggygo is 1;
	else if a random number between 25 and 125 < Libido of Player:
		say "     You find yourself oddly attracted to the lustful herm beast and the many possibilities for enjoyment her body offers.";
		say "     [bold type]Shall you satisfy your lusts on her wondrous body?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			now godoggygo is 1;
		else:
			say "     You manage to fight down your lustful urges and decide to leave while you safely can";
	if godoggygo is 1:
		say "     Giving into your unnatural attraction to this mythic beast's body, you run your hands over her while kissing her. her slobbery, canine tongue plays in your mouth as you run your fingers across her breasts, then down her rough-furred sides to her tail and its cock. You stroke her large meat, then move a hand down that tail to tease her wet slit. You dive a pair of fingers into her hot cunt and pump them into her while you ponder what you'd like to do to her.";
		if Cock Count of Player > 2 and Cock Length of Player > 5:		[3+ COCKS ORAL]
			say "     As your many cocks throb, you ponder her three muzzles. This would certainly be a rare opportunity to orally satisfy several of them at once.";
			say "     [bold type]Shall you have your three-headed bitch service your cocks with her many muzzles?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents:
				say "[cerberus3oral]";
				continue the action;
			else:
				say "     Not in the mood for oral pleasures, you consider your other options for how to use your prize";
		if Player is herm:			[HERM]
			say "     [bold type]Being dual-equipped yourself, would you prefer to slake your urges by fucking her or riding that hard cock between her legs?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fuck her.";
			say "     ([link]N[as]n[end link]) - Ride her cock.";
			if Player consents:
				say "[cerberusfuck]";
			else:
				say "[cerberusride]";
		else if Player is male:					[MALE]
			say "     As you continue to stroke her cock and finger her pussy, enjoying listening to her moan lustfully, you try to decide which of them you'd prefer.";
			say "     [bold type]Do you want to slake your urges by fucking her or riding that hard cock between her legs?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Fuck her.";
			say "     ([link]N[as]n[end link]) - Ride her cock.";
			if Player consents:
				say "[cerberusfuck]";
			else:
				say "[cerberusride]";
		else:									[FEMALE]
			say "     As you continue to stroke her tailcock while kissing her, enjoying listening to her moan lustfully, you try to decide which of them you'd prefer.";
			say "     [bold type]Do you want to slake your urges by having those slobbery dog tongues in your cunt[sfn] or do you want her meatier cock to fill you?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Get licked.";
			say "     ([link]N[as]n[end link]) - Get fucked.";
			if Player consents:
				say "[cerberusfemmeoral]";
			else:
				say "[cerberusride]";
	else:
		say "     Able to resist her wanton display, she whines softly in disappointment as you turn and walk off, getting back to accomplishing your other goals.";

to say cerberus3oral:
	say "     Your [Cock Count of Player] cocks twitch in anticipation of shared oral satisfaction from the triple-headed herm you've captured. You step up to her and present your throbbing rods to her, grabbing her middle head and pulling her wet muzzle over one of your cocks. She, having eyed your numerous penises hungrily as you approached, sets to licking and sucking at it eagerly. The other two nuzzle in and seek out erections of their own to suck upon. Your eyes roll back in your head, moaning in pleasure as the triple muzzles lick at your throbbing cocks with their canine tongues[if Cock Length of Player < 9]. The three heads bump and press at one another, each trying to take as much of the cock they're sucking into their muzzle[else]. Your lengthy [CockName of Player] cocks allow all three heads to suck comfortably at your cocks, lavishing them with attention[end if][if Cock Count of Player > 3]. The muzzles swap around from time to time to one of your other free cocks, sharing them all around between them[end if].";
	say "     You are unable to hold back against all this simultaneous attention to your multiple genitals and soon cry out in orgasm. You pump your hot seed into those eager, canine muzzles, pumping your load into the eager Cerberus herm's maws. her muzzles licks their chops happily and she pads off, satisfied with the tasty treat her trio of heads got to share.";

to say cerberusfuck:
	if Libido of Player > 55 and player is female, now cerberusarousal is 1;
	say "     Fingering her cunt, you press her down onto her back with your other hand. The lustful creature obeys readily, somehow sensing she'll receive some form of release. As you move into position, you keep pumping those fingers into her while your other hand strokes over your growing erection, getting it fully hard. Once you're ready, you slip your wet digits out and spread her canine muff with them as you guide your stiff [CockName of Player] cock into her.";
	say "     You move your hands to her many breasts, stroking over them as you watch her three canine heads pant and whine in pleasure. As you drive your cock into that wet, canine pussy again and again, you moan in pleasure. You tease and pinch her many nipples, watching as her milk starts to flow from them[if cerberusarousal is 1]. As your pleasure continues to grow, you find yourself unable to resist the beast's tail and guide it to your dripping pussy even as you fuck her own. You push it into you, taking several inches in one go, then letting it pound away at you, driving your meat down into her snatch[end if].";
	say "     You keep thrusting into her, enjoying the feel of her hot, squeezing pussy around your cock. her body squirms in delight beneath you as you pound away at his until finally you thrust hard into her one last time and start pumping your cum into her. She growls in pleasure from her three muzzles and cums as well, sending quivers through her pussy to milk you for all you'll give[if cerberusarousal is 1]. her cock thrusts hard into you one last time, tying with you and unleashing her hot seed deep inside you, painting the walls of your womb with her virile semen[end if].";
	if cerberusarousal is 1, say "[impregchance]";
	say "     You collapse atop the mythic creature, panting and moaning happily as her three muzzles lick and kiss at you with their slobbery tongues. Eventually, your cock grows soft and you pop it free of her well-bred hole[if cerberusarousal is 1]. her cock slips free from your pussy as the knot goes down, releasing her tail from you[end if]. She gets up slowly and heads off, quite satisfied after her rather rough encounter with you.";

to say cerberusride:
	if Libido of Player > 55 and player is male, now cerberusarousal is 1;
	if CockName of Player is "Cerberus" and player is male, now cerberusarousal is 2;
	say "     Running your hand over her tail, your push her to roll over with the other. The lustful creature obeys readily, somehow sensing she'll receive some form of release. You sit atop her waist and move her tail into position, lining it up with your [if Player is female]wet cunt[else]tight pucker[end if]. You rub back against it, smearing her leaking pre against your hole before pushing that tailcock into you where you most need it. You moan softly as you guide her thick meat into you, then release the tail once it's far enough to start thrusting into you on its own.";
	say "     You move your hands to her many breasts, stroking over them as you watch her three canine heads pant and whine in pleasure. As that ridged, canine cock plows into you again and again, you moan in pleasure. You tease and pinch her many nipples, watching as her milk starts to flow from them[if cerberusarousal is 1]. As your pleasure continues to grow, you find yourself lusting for more and you shift your hips and thrust your own cock into her wet snatch, fucking her even as you have her fuck you[else if cerberusarousal is 2]. As your pleasure continues to build, you find yourself lusting for more and bring your tailcock into position, guiding it into her wet snatch, fucking her even as you have her fuck you[end if].";
	say "     You keep this up as you start clenching and relaxing your [if Player is female]pussy[else]anus[end if] around her cock until finally she drives her knot into you, locking that twisted, canine cock into you. She growls in pleasure from her three muzzles and unleashes her hot seed into your [if Player is female]womb[else]ass[end if], filling you with her virile semen[if cerberusarousal > 0]. You drive your own cock deep into her and unleash as well, pumping your seed into her waiting womb[end if].";
	say "[impregchance]";
	say "     You collapse atop the mythic creature, panting and moaning happily as her three muzzles lick and kiss at you with their slobbery tongues. Eventually, her knot goes down and you are back to pop her tail free, releasing a gush of her seed before you can clench down to keep the rest of it in you. She gets up slowly and heads off, quite satisfied after her rather rough encounter with you.";

to say cerberusfemmeoral:
	say "     Preferring to get set those canine tongues to work, you spread your legs and guide the middle head between your thighs, pressing her wet nose to your wetter pussy. She starts lapping at your dripping folds obediently and is soon diving her tongue into you. You moan happily and run your fingers over her canine head. her other heads, as if getting jealous of the treat the center one is enjoying, start nudging and bumping against it, trying to push it out of the way so they can have a taste[if Cunt Count of Player > 1]. Despite having several pussies, there's still only really room for one to easily get at them at a time, though the others take what swipes they can with their long tongues[end if]. Soon enough, the three heads are taking turns, though it seems they each want to keep your dripping juices all to themselves. The middle one, given its position, gets the most time lapping at your cunt[sfn].";
	say "     All this licking from the competing heads, who seem to be going all out to please you so you'll let that head keep at it longer, drives you to great heights of pleasure, cumming hard several times, soaking those broad, canine muzzles in your juices again and again. Eventually, you've had as much as you can take, becoming too oversensitive and very fulfilled and have to push her heads back. They whine in frustration and she grabs her tail and they all start licking at in instead, fighting for the chance to suck it off. You leave her like that, lost in her own lustful, internal squabble.";


to say cerberusdesc:
	setmongender 5; [creature is herm]
	now cerbmaulcount is 0;
	say "     You find yourself facing a creature of legend, a three-headed hound like Cerberus of Greek myth. This beast's large, canine body has three heads and its muscled body is covered in a coat of rough fur as black as coal. The creature pads towards you on all fours, then rises up on its hind legs, displaying its powerful body to you as it growls. The monster's chest is quite broad, expanded to make room for the three heads as well as the powerful organs to drive its altered body. It has six rows of breasts. The uppermost pair are of above-average size and they become progressively smaller until the last row are slight bumps with nipples. Its arms and legs are muscled and strong to be able to bear the weight of this large creature. Between the mythic creature's legs is a wet, dripping slit. Behind it, you catch a glimpse of its long, thick tail. As you examine the tail, you notice a slit at the very end of it from whence her male genitals are just now peeking out. Something tells you that her testicles are in that tail as well. The cock on the end of her tail is quite large, with a swelling knot and several large ridges along its canine length. The three heads growl at you again, drawing your focus back to them in time see the Cerberus herm charge at you with lust in her six wild eyes.";
	if BodyName of Player is "Anime Babe":
		say "     Your anime girl body, particularly vulnerable to tentacle attack, is entranced by the Cerberus's tail and cock tip, so like a tentacle eager to fill you. You moan and squeal in barely suppressed pleasure as that tail sways, quickly draining your resistance.";
		decrease plfleebonus by 2;
		decrease pldodgebonus by 2;
		decrease plmindbonus by 2;
		now HP of Player is ( 3 * HP of Player ) / 4;
		now Libido of Player is ( 100 + Libido of Player + Libido of Player + Libido of Player ) / 4;


to say cerberusfacetf:
	say "your neck and shoulders erupt into intense feelings of numbness and pinpricks. These feelings quickly shift into a burning fire as the impossible happens. Your upper shoulders actually widen as two lumps form at either side of your neck, growing and bubbling like a stew of flesh. You hear bones cracking and you find that you can't move your head as it is changing as well, becoming that of a broad-muzzled canine. Something brushes your cheeks as the lumps grow, ";
	if BodyName of Player is "Cerberus":
		say "each one growing its own connections to the surplus organs within your chest. Seconds later, you hear two new voices join yours in a shocked howl as the new growths finally complete their development. You finally get the ability to turn your head, only to bump into two other canine heads which have bewildered expressions on their faces. They also seem to have their own brains and personalities and are just as smart as you are";
	else:
		say "forming into two canine heads quite similar to yours that look bewildered, but unable to speak or breathe on their own, instead being kept alive by your single circulatory system";

to say cerberusbodytf:
	if FaceName of Player is "Cerberus":
		say "your chest erupts into intense pain all of a sudden. You hear bones cracking and growing, and you feel short on breath as your lungs shut down, only to get violently ill as and stagger as your major organs revolt followed by even more intense pain as they seem to undergo massive mitosis simultaneously. Not just once, but twice. Within moments you've got three pairs of lungs, three hearts, three stomachs, all interconnected. But you still only have one reproductive system, such as it is, and one digestive system to use though it now has a much higher capacity and is much more efficient. And finally your new extra lungs and hearts grow connections to your two extra heads, allowing them to gasp their first breaths and take the strain off your primary circulatory system. You feel much better afterward, though some instinctual part of you worries that another infection from a different strain could strip you of your new, redundant extra organs to weaken your united body.";
	else:
		say "your chest erupts into intense pain all of a sudden. You hear bones cracking and shifting as you become over seven feet tall. You can feel your internal organs growing in size and causing your upper torso swell to accommodate them as they shift and split into a triplicate set to power your oversized body. You feel much better afterward. However, you just know that an infection from another nanite strain could change your torso within an instant, stripping you of the added power you feel coursing through you.";
	say "The sensation of change continues through you, spreading into your limbs as they grow stronger and more muscled. You are able to switch from standing upright to a quadrupedal stance easily. Your hands become canine hands with wicked claws and your feet turn into large, padded paws to carry your heavy body. Your strong limbs can carry you swiftly on all fours, allowing you to charge down and pounce upon your prey";

to say cerberustailtf:
	if Player is male:
		say "your ass suddenly emits a sharp, painful CRACK as the bones spontaneously and painlessly break. Your hips quiver a little, but you else manage to hold your position as more cracks occur as a new tail forms behind you. It shifts and grows into a thick, demonic tail. At the same time, your groin burns with pain as does the end of your new tail as a small slit appears on the very end of it. You look down and realize that your penis[esmn] as well as your testicles have vanished from your crotch, leaving a smooth surface behind. You look at your tail again just in time to see your penis[esmn] emerge from the slit at the end of your tail, spurting virile seed excitedly onto the ground as [if Cock Count of Player is 1]it settles[else]they settle[end if] into place. [if Cock Count of Player is 1]It is[else]They are[end if] exactly the same size and form as before the shift in position. You can feel your balls spreading out in the tail's tissue as well, equal in size as before, but spread out across the whole of your tail to hide them while keeping them ready to perform their duty when needed. But you have a feeling that your dick[smn] will go back where [if Cock Count of Player is 1]it belongs[else]they belong[end if] if your ass gets mutated again. On the other hand, you could get used to having a [if Cock Count of Player is 1]tailcock[else]set of tailcocks[end if]";
	else:
		say "your ass emits a loud but painless CRACK as the bones shift, a new growth emerging in the form of a very thick tail with a slit at the very end of it. You don't know yet what that slit is for, but it feels sensitive like an erogenous zone. You get the feeling that something is supposed to be coming out of that slit, but another thought tells you that it will vanish completely if your tail is mutated again by something else";

to say cerberuscocktf:
	say "it changes shape with an intense rush of pleasure. The pleasure only gets stronger as you feel changes running through your genitals, altering them. You aren't able to look down and check what's going on because you're too busy writhing in a sudden series of orgasms, but your genitals do somehow feel different. You obviously will be checking your downstairs equipment once you stop climaxing to see what changes have occurred";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Cerberus" to infections of CanineList;
	add "Cerberus" to infections of FurryList;
	add "Cerberus" to infections of FeralList;
	add "Cerberus" to infections of MythologicalList;
	add "Cerberus" to infections of HermList;
	add "Cerberus" to infections of TaperedCockList;
	add "Cerberus" to infections of KnottedCockList;
	add "Cerberus" to infections of SheathedCockList;
	add "Cerberus" to infections of QuadrupedalList;
	add "Cerberus" to infections of TailList;
	now Name entry is "Cerberus"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The Cerberus herm growls and swings her powerful arms at you, striking you with her heavy paws![or]The Cerberus herm presses her body to yours, leaking milk from her many nipples across your body. The scent of that warm milk running across your body and the scent of it filling your nose weakens your resolve to keep fighting her![or]The canine foe releases spurts of her pre from her tail's cock across your face. You can't help but lick it up and find yourself thirsting for more![or]As she grapples with you, her tailcock rubs against you, spurting precum onto your body. The scent of it excites you, making you want to cease struggling![or]Dropping briefly to all fours, the Cerberus herm pounces at you and knocks you over, her triple heads panting and drooling as she grinds her wet pussy against you until you manage to push away![at random]";
	now defeated entry is "[beatthecerberus]";
	now victory entry is "[losetocerberus]";
	now desc entry is "[cerberusdesc]";
	now face entry is "really three heads, as confusing as that is for you. Your three heads are canine in form, with broad muzzles and slobbery tongues. Your primary head, the one that is YOU, is in the middle and seems to have control over your body most of the time, though you can faintly feel the others there are well. The other heads have their own personalities and minds, and are able to seize control of your shared body at times when something catches their interest";
	now body entry is "broader near the top, with a wide chest with numerous strong lungs and a trio of powerful hearts to fuel your muscled form. Your arms and legs are well muscled and end in clawed, canine hands and paws";
	now skin entry is "[if looknow is 1]a coat of short, coarse fur. It is as black as coal, covering your dark, rough[else][one of]dark[or]furred[or]black furred[at random][end if]";
	now tail entry is "You have a tight, muscled ass with very little jiggle in it. A long and thick tail extends from right above your ass[if Player is male]. As you examine the tail, you notice it has a slit at the very end of it from whence your male genitals are just peeking out of. You can somehow sense that your testicles are in that tail as well[end if]."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]black, ribbed canine[or]ebon, knotted and ribbed[or]black, ridged and knotted[or]ebon, ridged canine[at random]";
	now face change entry is "[cerberusfacetf]";
	now body change entry is "[cerberusbodytf]";
	now skin change entry is "you feel the infection spreading across it and soon you feel a burning sensation spread all over you. It is as if you are on fire. As you watch, your body hair grow thicker and turn a charred black like that of a completely burned out piece of wood";
	now ass change entry is "[cerberustailtf]";
	now cock change entry is "[cerberuscocktf]";
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 15;
	now per entry is 16;
	now int entry is 14;
	now cha entry is 8;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 55; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 11; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Museum"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 18; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 12; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 5; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 18;
	now Cunt Tightness entry is 8;
	now SeductionImmune entry is false;
	now libido entry is 75; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]widened[or]broad-chested[as decreasingly likely outcomes]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "cerberus"; [ Row used to designate any special combat features, "default" for standard combat. ]
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



Section 3 - Alt Attack

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"cerberus"	cerberus rule	--	--	--	--	--	--	--	--	--

this is the cerberus rule:
	choose row MonsterID from the Table of Random Critters;
	increase cerbmaulcount by 1;
	if cerbmaulcount is 3:				[tries special attack every third time]
		now cerbmaulcount is 0;
		say "Growling, the [one of]Cerberus[or]triple-headed dog[or]three-headed canine[purely at random] starts snapping at you with all three heads trying to [one of]bite onto[or]snap at[or]tear into[purely at random] you at once!";
		let cmdmg be 0;
		let cmdmgtotal be 0;
		standardstrike; [head 1]
		if monsterhit is true:
			choose row MonsterID from the Table of Random Critters;
			let rangenum be ( 80 - ( peppereyes * 4 ) );
			now cmdmg is 0;
			now cmdmg is ( ( wdam entry times a random number from rangenum to 120 ) / 133 ); [dmg/hit at 75%]
			if HardMode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
				now cmdmg is (cmdmg * 150) divided by 100;
				say "Critical Hit! ";
			say "The [one of]first[or]right[at random] head [one of]bites[or]chews on[or]latches onto[or]clamps onto[purely at random] your left [one of]arm[or]shoulder[or]wrist[or]hand[or]side[or]hip[or]thigh[or]leg[at random], doing [special-style-2][cmdmg][roman type] damage!";
			increase cmdmgtotal by cmdmg;
		else:
			say "The [one of]first[or]right[at random] head misses!";
		standardstrike; [head 2]
		if monsterhit is true:
			choose row MonsterID from the Table of Random Critters;
			let rangenum be ( 80 - ( peppereyes * 4 ) );
			now cmdmg is 0;
			now cmdmg is ( ( wdam entry times a random number from rangenum to 120 ) / 133 ); [dmg/hit at 75%]
			if HardMode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
				now cmdmg is (cmdmg * 150) divided by 100;
				say "Critical Hit! ";
			say "The [one of]second[or]middle[or]central[at random] head [one of]bites[or]chews on[or]latches onto[or]tears into[purely at random] your [one of]shoulder[or]chest[or]side[or]hip[or]waist[at random], doing [special-style-2][cmdmg][roman type] damage!";
			increase cmdmgtotal by cmdmg;
		else:
			say "The [one of]second[or]middle[or]central[at random] head misses!";
		standardstrike; [head 3]
		if monsterhit is true:
			choose row MonsterID from the Table of Random Critters;
			let rangenum be ( 80 - ( peppereyes * 4 ) );
			now cmdmg is 0;
			now cmdmg is ( ( wdam entry times a random number from rangenum to 120 ) / 133 ); [dmg/hit at 75%]
			if HardMode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
				now cmdmg is (cmdmg * 150) divided by 100;
				say "Critical Hit! ";
			say "The [one of]last[or]left[or]final[at random] head [one of]bites[or]sinks its teeth into[or]chomps into[purely at random] your left [one of]arm[or]shoulder[or]wrist[or]hand[or]side[or]hip[or]thigh[or]leg[at random], doing [special-style-2][cmdmg][roman type] damage!";
			increase cmdmgtotal by cmdmg;
		else:
			say "The [one of]final[or]left[or]last[at random] head misses!";
		if cmdmgtotal > 0:
			now damagein is cmdmgtotal;
			say "[noshieldabsorbancy]"; [unable to use shield while pinned]
			if absorb > cmdmgtotal:
				now absorb is cmdmgtotal;
			if absorb > 0:
				say "You prevent [special-style-1][absorb][roman type] damage!";
			decrease HP of Player by cmdmgtotal;
			increase HP of Player by absorb;
			follow the player injury rule;
			say "You are [descr].";
		now peppereyes is 0; [pepperspray wears off]
		if HP of Player > 0 and Libido of Player < 110:
			wait for any key;
		else:
			if HP of Player <= 0, now fightoutcome is 20;
			if Libido of Player >= 110, now fightoutcome is 21;
			Lose;
		rule succeeds;
	else:
		standardretaliate;



Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Cerberus Infection"	"Infection"	""	Cerberus Infection rule	1000	false

This is the Cerberus Infection rule:
	if Player has a body of "Cerberus":
		trigger ending "Cerberus Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As your mind unravels, you start to give in to your body's instinctual urges and wander off into the city as your humanity fades away into the background of your mind.";
			if FaceName of Player is "Cerberus":
				say "     With the help of your two other heads, you make your way back to the Museum and follow the scents down the halls to find a service door down into the basement. Tracking those scents easily with your three noses, you made your way down and find the Cerberus den, joining the others of your kind. You receive a very lustful welcome from the other three-headed dog people, who share triple-kisses with you. Soon enough, you are rolling around with them, mating one another. ";
				if Player is herm:
					say "You take turns mounting them and being mounted, sometimes enjoying one bitch's pussy while another takes you as her bitch with her tailcock.";
				else if Player is male:
					say "You take turns mounting several of them, filling their hot pussies. You don't seem as popular as the fully herm Cerberuses that make up the bulk of the pack, but you still have plenty of sex.";
				else:
					say "You are taken as a bitch by most of the pack, filling your hot puss[yfn] over and over again. You don't seem as popular as the fully herm Cerberuses that make up the bulk of the pack, but you are still bred often.";
				say "     The lustful, animalistic orgy goes on for a few hours before things calm down into a more regular routine of sex and searching the Museum and surrounding area. When the military moves into the city, your pack is on guard to defend the Museum from any who would seek to disturb it. Several soldiers are overpowered by you and your powerful pack-mates, brought back to the basement den and mounted until they are more Cerberus herms to breed and be bred by.";
			else if Player is herm:
				say "     You feel as if something is missing, but you know not what nor where to find it. You wander out into the city and find your way into the park. Your powerful, canine body pounces upon one of the Painted Wolf Herms you find. After a bit of a scuffle, you two are rutting wildly, swapping places until you've both been thoroughly filled with cum. You head off together to her den and make plans for the future of the pack growing in both your wombs.";
			else if Player is male:
				say "     As you roam the city, feeling as if something is missing by not quite able to figure out what, you are found by a mostly-unchanged human. She has four enlarged breasts and featureless golden eyes, but no other visible changes. You approach her eagerly, hoping to satisfy your animal lusts upon her, but there is something about her gaze and her stance that makes you come up short. Clearly experienced at handling dogs, she soon has you obediently taking treats and is calling you by pet names. Your canine body quickly submits to her training during the remaining time in the city; teaching you to be a good dog and rewarding you with treats or hand jobs. Your mind slips further and further away during this time until you're nothing be an obedient and powerful guardian for your mistress.";
				say "     When the military comes through, she is extracted along with you. At first, they have some concern about taking you along, but she's quite persuasive and has you demonstrate what a good doggy you are. Eventually released, she sets up a new life for herself with you as her loyal pet and guardian. Somewhere in your instincts, you are a powerful protector and defend your mistress and her home with your muscled body. Having been treated to prevent infection, she now happily takes you into her bed, letting you rut your mistress. These matings eventually bear fruit as she becomes pregnant with Cerberus puppies with six lovely, alluring, golden eyes.";
			else:
				say "     As you roam the city in search of something, though you know not what, you go into heat. With your dripping pussy leaking pheromones, you are found by one of the German shepherd males, who mounts you and pounds his knotted cock into you repeatedly. Despite your larger size, you submit to him readily, allowing him to take you as one of his many mates, breeding you full of large, strong puppies to add to his pack. Your instincts as a guardian make you a perfect guard for the pack's den while they are searching the city for potential mates to add to the pack.";
		else:
			if FaceName of Player is "Cerberus":
				say "     Your trio of heads and altered anatomy draw some interest from the scientists who are working with the army. You are put through a series of physical, psychological and awareness tests, as well as discussions between the three of you and psychoanalysts. As different minds sharing the same body, it is quite an intriguing situation to study, but the military personnel stop the research when they notice that it has ceased to be of worthwhile military application. It does have the benefit of helping you come to a greater understanding with your companion heads, increasing your cooperation. Better able to share your Cerberus body with the other two, you become a team working to make a life together after your release.";
				say "     Your right head is very forward and honest, especially about its sexual desires. But it is your left, the quieter one who really runs the show in that regard. It doesn't speak often and seems quite shy, but is by far the kinkiest of all, whispering such wantonly sexual and slutty things in your ear. There is almost no perversion that it won't try and none that it tries it doesn't want to do again and again. It is responsible for getting you into many kinky situation through its whispered desires.";
				say "     You go through a couple of small jobs as a secretary team fielding calls, as a trio of telemarketers and some any other work you can find to pay the bills. It is only once you land a job as a night watchman that you really feel that you've found something that you all enjoy. Given your size and strength, as well as your intimidating body and snarling heads, you have little trouble with anyone trying to break into the museum where you work. And whenever an Ancient Greek or Roman exhibit is on display, you get to join the display in an interactive role.";
				say "     You and your other heads have a happy life together, finding a collection of lovers over the years who're willing to have sex with someone as radically transformed as you three. Your favorite mate is a psychologist you started to see after your release, having decided together it would be best to continue the work which was started at the holding facility.";
				if Player is male:
					say "     After visiting her several times, your left head whispered to you that it could smell her becoming aroused as you spoke about the events you witnessed in the city. Told to keep it up, you continued talking, getting into more graphic detail about the events and do indeed notice her shifting in her seat and crossing and recrossing her legs as her arousal built. When your right head clued in and made a pass at her, she gave in rather readily and you had a long and lustful session with her. Over the years, you became mates as well as lovers and she gave you several litters of Cerberus puppies. They all grow up into strong and powerful lovers and guardians for their mates, much like yourself.";
				else:
					say "     After visiting him several times, your left head whispered to you that it could smell him becoming aroused by your discussion of the events you witnessed in the city. Told to keep it up, you continued talking, getting into more graphic detail about the events and you indeed notice the growing bulge in his crotch as his arousal increased. When your right head clued in and made a pass at him, he gave in rather readily and you had a long and lustful session with him. Over the years, you became mates as well as lovers and he filled you with several litters of Cerberus puppies. They all grow up into strong and powerful lovers and guardians for their mates, much like yourself.";
			else:
				say "     Your large, powerful body and its trifold chest cavity draw some interest from the scientists, who run several physical tests on you. These go on for a time, but are stopped abruptly when the military pulls the scientists onto other, more pressing projects. While your powerful body is of some interest, there are more dangerous and hyper-infectious strains to be analyzed. After your eventual release, a few scientists keep in touch with you for a little while, but their interest is soon caught up by other projects.";
				say "     You get work as a manual laborer, with your strong body suitable for the work. Your heavy-duty lungs and hearts are able to push you longer and harder any of the other workers, allowing you to do the work of two men easily. Recognized for your physical ability, your boss quietly starts paying you more than the others and you are smart enough not to let them know. And it really helps, as your big body comes with a big appetite.";
				say "     Your large, canine body draws the interest of several infected canines and lupines and soon you have a collection of lovers and mates[if Player is herm]. You sire and give birth of several large, canine pups over the years from various lovers and breeds[else if Player is male]. You sire a variety of large, canine pups with various lovers and breeds[else]. You give birth to several large, canine pups over the yours for various lovers and breeds[end if]. And while you sometimes feel as if something is missing, your large family and numerous lovers help fill that longing for companionship.";
	else if FaceName of Player is "Cerberus" and Player has no body of "Hydra Beast":
		if humanity of Player < 10:
			say "     As you succumb to the infection, your two silent heads start taking over more. But they have succumb as well to your changing instincts and seek to follow their lustful urges as well. You still remain the primary leader, but the others take control more often, usually when an idea for sex crosses their minds. Not that you really mind, as you share the enjoyment of their plans with them, often pleasantly surprised by the varied, kinky desires of the left one and by the wild, lustful urges of the right one. Thanks to them, your existence is a much more varied and pleasurable one than it may have else been.";
		else:
			say "     Your trio of heads draw some interest from the scientists who are working with the army. You are put through a series of psychological and awareness tests before the military personnel stop the research when they notice that it has ceased to be of worthwhile military application. It does have the benefit of helping you come to a greater understanding with your companion heads, increasing your cooperation. Better able to share your body with the mute, dependent pair, you are able to get on with your life with only the occasional interruption of control when one of them is feeling particularly strongly about something, which is usually sex of some kind.";


Cerberus ends here.
