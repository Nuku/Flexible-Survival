Version 2 of Chocolate Lab by Stripes begins here.
[Version 2 - Piggybacking Labs added by GentlemanB]
[Version 2.1 - Removed forced sex on victory with high libido]

"Adds a Chocolate Lab creature to Flexible Survival's Wandering Monsters table, with impreg chance"

labhost is a number that varies. [Tracks number of piggybacking labs/selects modified endings]
labtimerA is a number that varies. labtimerA is usually 0. [tracks how long oldest lab has been piggybacking]
labtimerB is a number that varies. labtimerB is usually 0. [tracks how long most recent lab has been piggybacking]

Section 1 - Creature Responses
[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

when play begins:
	add { "Chocolate Lab" } to infections of hermaphrodite;
	add { "Chocolate Lab" } to infections of humorous;
	add { "Chocolate Lab" } to infections of furry;

to say choclabdesc:
	setmongender 9; [creature is variable]
	say "     Before you is a bizarre creature. At first glance, it seems like a normal dog, a brown Labrador. But it's soon apparent that it's quite unusual. This chocolate Lab is flowing and shifting, leaving brown pawprints as it walks. It seems to be quite literally a [italic type]chocolate[roman type] Lab. Its skin flows and runs like melting chocolate and you can smell the sweet, alluring scent of cocoa as it bounds closer. The creature has a gooey, brown tongue that drips chocolaty syrup. Its eyes are solid black, like pure, dark chocolate.";

to say losetolab:
	choose row MonsterID from the Table of Random Critters;
	let labnum be 0;
	if facename of Player is "Chocolate Lab", increase labnum by 1;
	if bodyname of Player is "Chocolate Lab", increase labnum by 1;
	if skinname of Player is "Chocolate Lab", increase labnum by 1;
	if tailname of Player is "Chocolate Lab", increase labnum by 1;
	if cockname of Player is "Chocolate Lab", increase labnum by 1;
	if inasituation is false and bodyname of Player is "Chocolate Lab" and a random chance of ( ( labnum * 10 ) + ( labhost * 15 ) ) in 100 succeeds:
		if labhost is 2:
			if a random chance of 1 in 5 succeeds:
				say "     Bested by yet another lab, all you can do is groan weakly as the confectionary canine pushes you to the ground. With two labs already inside you working excitedly, the third is already sinking into your softening body by the time you're on the ground. Once the third lab has disappeared inside you, you feel their chocolate forms churning throughout your body. You are helpless to resist with the three labs now making up the majority of your chocolaty body as they begin reshaping your entire form. Your features melt away, replaced by the visage of a flowing chocolate dog. Your mind, however, does not give way as easily. Focusing entirely on what remains of yourself, you manage to block out most of the dogs['] influence, locking the war for your mind in a stalemate.";
				WaitLineBreak;
				say "     However, their attacks are undaunted by your resistance. They continue putting everything they have against you, focusing all their thoughts on the singular goal of breaking you. Before long it no longer feels like three individuals pushing against you, but a single combined force as if their thoughts have begun to flow together in a single collective consciousness. Suddenly, fear. Panic. Terror. You feel the emotions of the labs rolling though you as they come to the same realization as you do. In their combined effort their own minds have begun to merge together under the immense pressure. Caught in the turmoil of the panicking labs your concentration begins slipping, and you find yourself being dragged down with the labs, all four of you melting away into each other as you become one.";
				WaitLineBreak;
				say "     You awaken sometime later, pulling your chocolate body together as you rise to all fours. You flow into the shape of a giant chocolate dog, easily over six feet tall. With a wet bark you set out into the city, eager to sate your powerful canine appetite for chocolate and sex.";
				now tailname of Player is "Chocolate Lab";
				now facename of Player is "Chocolate Lab";
				now skinname of Player is "Chocolate Lab";
				now bodyname of Player is "Chocolate Lab";
				now cockname of Player is "Chocolate Lab";
				attributeinfect;
				now scalevalue of Player is 4;
				now tail of Player is tail entry;
				now face of Player is face entry;
				now skin of Player is skin entry;
				now body of Player is "that of a large quadrupedal canine. Standing over six feet tall, you are a jumbo-sized chocolate lab, with a flowing, shifting chocolate body. Your skin flows and runs like melting chocolate and you carry an overwhelming but alluring scent of cocoa.";
				now cock of Player is cock entry;
				now labhost is 4;
				now humanity of Player is 0;
				now battleground is "void";
				WaitLineBreak;
				end the story saying "Your mind melted away into the chocolate dogs, leaving you one of them.";
				stop the action;
			else:
				say "     Bested by yet another lab, all you can do is groan weakly as the confectionary canine pushes you to the ground. With two labs already inside you working excitedly, the third is already sinking into your softening body by the time you're on the ground. Once the third lab has disappeared inside your body, you feel their chocolate forms churning throughout your body. You are helpless to resist with the three labs now making up the majority of your chocolaty body as they begin reshaping your entire form. Your features melt away, replaced by the visage of a flowing chocolate dog. Your struggle to hold onto yourself against the will of the three labs is a short one, their combined consciousness quickly overwhelming you, leaving the labs to reshape your mind just as easily as they did your body. You feel the last of your human thoughts and desires melt away, quickly replaced by the simple needs of your benefactors.";
				WaitLineBreak;
				say "     With your mind and body fully reshaped into that of a chocolate lab, you bark with excitement as the others separate themselves from your new body, leaving you panting happily as they grin and give you slobbery, chocolaty licks and nuzzles, welcoming you into the pack.";
				now tailname of Player is "Chocolate Lab";
				now facename of Player is "Chocolate Lab";
				now skinname of Player is "Chocolate Lab";
				now bodyname of Player is "Chocolate Lab";
				now cockname of Player is "Chocolate Lab";
				attributeinfect;
				now scalevalue of Player is 4;
				now tail of Player is tail entry;
				now face of Player is face entry;
				now skin of Player is skin entry;
				now body of Player is body entry;
				now cock of Player is cock entry;
				now labhost is 3;
				now humanity of Player is 0;
				now battleground is "void";
				WaitLineBreak;
				end the story saying "Your mind melted away into the chocolate dogs, leaving you one of them.";
				stop the action;
		else if labhost is 1:
			say "     Once again pushed to the ground by a chocolate lab, you are filled with dread as you feel the churning of your unwanted passenger increase. The dog who bested you barks happily as the head of the lab inside you slowly begins to emerge from your chest. The two share several slobbery doggy kisses before setting to work teasing and arousing your chocolaty body. With one working you from the inside and one from the outside, the two labs quickly wear down your resistances, once again bringing your body to a much more fluid state. All you can do is groan in displeasure as the second lab dives headfirst into your belly, and watch as its flailing legs and tail slowly disappear inside you. Once your two passenger finally settle down and you are able to once again pull yourself into a more solid form you slowly rise to your feet, struggling to maintain your form with the powerful churning inside your body and the two labs flowing across your mind.";
			now labhost is 2;
			now labtimerB is 21;
		else if labhost is 0:
			say "     As you are pushed to the ground the chocolate canine looks over your confectionary body, panting happily as it takes in your sweet cocoa aroma. Stepping back momentarily the lab releases one happy bark before burying its muzzle in your groin. You can't help but moan softly as the lab begins [if Player is herm]alternating between licking at your increasingly firm maleness and lapping at your womanly folds, quickly coating your crotch in its warm syrupy saliva[else if Player is female]lapping at your womanly folds, driving its warm sticky canine tongue into your depths[else if Player is male]licking at your increasingly firm maleness, soon coating your entire erect length in its warm syrupy saliva[else]lapping at your featureless groin[end if]. As the chocolate canine continues to pleasure you and your mind slips into the haze of your arousal, you begin to lose focus on maintaining cohesion of your confectionary body, and apparently this is exactly what your attacker wants.";
			WaitLineBreak;
			say "     Confused for a moment as the attention at your groin suddenly stops you look up to see the lab stepping backwards, releasing a few happy yips before crouching down and leaping towards you. Before you can react the chocolate dog lands squarely on your chest, licking your face happily as you try and push it off. It is at this point that your realize the dog is not standing on you, but IN you! You begin to panic as the lab begins to sink deeper into your body, thrashing about wildly as you attempt to separate yourself from the canine, however this only seams to make matters worse, quickening the pace of the sinking lab. You can only watch in horror as the last of the chocolaty canine disappears into your body, giving you one last bark before submerging completely. With little choice and a heavy sigh you rise to a stand on uneasy feet, already feeling the chocolate of your unwanted passenger churning and mingling with your own. You can hear its happy barking in the back of your mind, but with no way to separate yourself from the chocolate canine all you can do is gather your equipment and your resolve before making your way to a safer location.";
			now labhost is 1;
			now labtimerA is 21;
	else:
		now choclabfight is 2; [lost]
		if Player is herm:	[herm]
			say "     You are pushed onto your back as the dog climbs atop you, flowing its molten chocolate body over you. You can feel the firm press of its body at your puss[yfn] and asshole, spreading you open with a cock of hard chocolate for each. Its body also grips around your cock[smn] with a soft, wet pussy[if Cock Count of Player > 1] for each[end if]. Its fluid form flows and ripples, rubbing all over your body and teasing your nipples. The amorous confection stimulates you inside and out until finally it shoots its white chocolate cream into every hole and you pump your hot cum into it in return.[impregchance]";
		else if Player is female:	[female]
			say "     You are pushed onto your back as the dog climbs atop you, flowing its molten chocolate body over you. You can feel the firm press of its body at your puss[yfn] and asshole, spreading you open with a cock of hard chocolate for each. Its fluid form flows and ripples, rubbing all over your body and teasing your nipples. The amorous confection stimulates you inside and out until finally it shoots its white chocolate cream into every hole.[impregchance]";
		else:	[male]
			say "     You are pushed onto your back as the dog climbs atop you, flowing its molten chocolate body over you. You can feel the firm press of its body at your asshole, spreading you open with a cock of hard chocolate. Its body also grips around your cock[smn] with a soft, wet pussy[if Cock Count of Player > 1] for each[end if]. Its fluid form flows and ripples, rubbing all over your body and teasing your nipples. The amorous confection stimulates you inside and out until finally it shoots its white chocolate cream into your mouth and rear, and you pump your hot cum into it in return.[impregchance]";
		say "     Once it's done, it flows off of you slowly, splatters of white chocolate landing on your chest. It flows out of your body, but leaves you with a warm mess of white, creamy filling inside. You pant as you try to catch your breath after the brief, but intensely body-wide, sex you've just had.";
		PlayerEat 12;
		say "[chococheck]";


to say beatthelab:
	now choclabfight is 1; [victory]
	say "     You manage to fend off the strange canine, exhausting it to the point that it has trouble maintaining enough physical consistency to keep fighting. It whimpers softly, looking up at you with large, puppydog eyes of dark chocolate as it flows onto its back, exposing itself to you. It has a brown, canine cock that dribbles enticingly fragrant white chocolate and a wet, dripping pussy that looks deliciously ready to be filled. Along its body are three rows of breasts, each with hard, chocolate-brown nipples. It whimpers again, offering itself to you.";
	if hunger of Player > 24:
		say "     That rich, chocolaty scent becomes too much for you. You are so hungry and your stomach grumbles with the need to fill yourself with the doggy's cream. You stuff that hard cock into your mouth, finding it delicious. You lick and suck the leaking shaft while your hands play with its six leaking tits. They dribble white chocolate cream, much like what you're soon rewarded with in great quantity from the dog. You gulp it all down to satisfy your hunger a little. You lick your lips as you pull your head back, smiling down at the generous canine that's filled your tummy. It seems to smile back up at you. You lean forward and enjoy some slobbery doggy kisses before getting up and heading off.";
		PlayerEat 12;
		say "[chococheck]";
		infect "Chocolate Lab";
		increase Libido of Player by 10;
		if Libido of Player > 100:
			now Libido of Player is 100;
	else:
		say "     Will you accept that offer? ([link]y[as]y[end link]/[link]n[as]n[end link])";
		if Player consents:
			if Player is male:		[m/h - fuck the Lab]
				say "     There is just something enticing about the canine's submissive display and arousing scent that gets you excited. You decide that you and the semi-fluid dog can relieve each other's itch. You take the dog's ever-melting hind legs in your hands and line up your hard cock with its pussy. It releases a wet bark of pleasure as you sink your [cock size desc of Player] [cock of Player] cock into its malleable body. It reforms its pussy around you, [if Cock Count of Player > 1]forming a deliciously snug vagina for each of your cocks[else]making itself deliciously snug for your cock[end if] and flowing all over [itthemm] to continually stimulate you.";
				say "     The dog's thick tongue lolls from its mouth, drooling chocolate as you fuck it. White, chocolate cream leaks from its cock and from its nipples as your thrusts send ripples through its gooey body. As you shoot your hot seed inside it, splatters of thick cream blast from its cock and make a mess of the ground below. Finished, the chocolate Lab sags back, losing a little more cohesion, but smiles up at you with a doggy grin. You lean forward and enjoy some slobbery doggy kisses before getting up and heading off.";
			else:					[f - ride the Lab]
				say "     There is just something enticing about the canine's submissive display and arousing scent that gets you excited. You decide that you and the semi-fluid dog can relieve each other's itch. Taking hold of the brown, canine cock, you point it upwards as you move your pussy into position overtop of it. As you ride that chocolate rod, it shifts and changes, [if Cunt Count of Player > 1]forming one for each of your holes and each [end if]becoming the perfect fit for your vagina. You moan in delight at the clever dog's trick and start to play with its nipples, coaxing more of its white, creamy chocolate to flow from them.";
				say "     The dog's thick tongue lolls from its mouth, drooling chocolate as you ride it. Your motions atop it send ripples through its gooey body. As your puss[yfn] clamp[sfv] down around it in climax, you squeeze a rush of warm, creamy chocolate from the canine, blasting it deep inside you. Finished, the dog sags back, losing a little more cohesion, but smiles up at you with a doggy grin. You lean forward and enjoy some slobbery doggy kisses before getting up and heading off.[impregchance]";
			say "[chococheck]";
			decrease Libido of Player by 5;
			if Libido of Player < 0:
				now Libido of Player is 0;
		else if labhost > 0 and a random chance of 1 in 3 succeeds:
			say "     As you look over the fallen lab, you feel a familiar churning build up inside you. You fall to your knees and clutch your belly with a groan as your canine passenger twists around in your stomach. ";
			if bodyname of Player is "Chocolate Lab":
				say "You feel the lab's movement begin to focus at a single point in your chest, and watch as a canine muzzle slowly pushes through your chocolate flesh. Slowly but surely the lab drags itself out of your body in much the same way as it forced itself in.";
			else:
				say "The rumbling only gets worse and you begin to feel sick, gagging slightly as a thick, warm mass begins moving up your throat. Your mouth is forced open as the mass of chocolate spills out of you, slowly taking the shape of a chocolate canine as more of it emerges from your body. It is a bizarre sight, the head and torso of the lab emerging from your mouth, bracing its front paws on your shoulders as it drags the rest of its body out with a wet slurp.";
			say "     As your guest finally separates itself from you completely it wastes no time in padding over to the other fallen lab, licking and nuzzling its face with a whimper. Despite your still upset stomach you realize this is your best chance to escape the lab, and stagger away as quickly as you can before it can change its mind, or worse yet, try to bring its new friend along for the ride.";
			decrease labhost by 1;
			now labtimerA is labtimerB;
			now labtimerB is 0;
		else:
			say "     You leave as it struggles to regain enough cohesion to get away.";


to say chococheck:
	if bodyname of Player is "Chocolate Lab" or facename of Player is "Chocolate Lab":
		say "     During the course of the sex with the fluidic dog, you could feel some of your chocolate being intermingle with that of the dog. You feel a little more canine and a hunger for more chocolate. Or more sex. Or better yet, more chocolate sex.";
		SanLoss 8;
		increase hunger of Player by 5;



Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Chocolate Lab"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]milk chocolate creature knocks itself into you, trying to push you down[or]semi-fluid canine slashes its forepaws at you, suddenly making them hard and leaving chocolate scraps across your skin[or]The gooey Labrador bites at your wrist, leaking some of its thick, chocolate saliva onto you[or]malleable dog flows around your leg, gripping it firmly. You pull frantically as it starts to flow up over it. You manage to pull free, but wrench your knee in the process[or]chocolate lab snaps at you as you try to fend it off, but you end up splattered with chocolaty syrup. The scent of it makes your head dizzy, draining your will to resist the sweet smelling beast[or]flowing dog pounces at you, trying to push you down, partially collapsing into a wave of chocolate that you have to pull free from[or]milk chocolate dog swipes its paws at you, leaving thick streaks of chocolate across your body. The scent of it weakens your resolve to keep fighting[or]chocolate Lab pounces onto you, covering your face in slobbery, chocolate kisses that weaken your resolve to continue resisting[at random]!";
	now defeated entry is "[beatthelab]";
	now victory entry is "[losetolab]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[choclabdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "dog's head, a smooth, rich brown and somehow made of chocolate. You have a long, slobbery tongue and drool chocolate syrup. Your eyes are a solid, dark black, as if made of dark chocolate, but still able to see. As if being constantly remolded instead of moving flesh and bone, your expression seems to shift the shape of your face"; [ Face description, format as "Your face is (your text)."]
	now body entry is "that of an anthropomorphic canine, strangely somehow chocolate in color and composition. Your body is covered in a confectionary imitation of [skinname of Player] flesh. Your body has become like soft chocolate, bending and reshaping itself to move instead of having any actual bones or muscles[if labhost > 0]. Occasionally, an extra chocolaty tail, or the head of another chocolate lab pushes out of your chocolate form, barking or drooling its thick chocolate saliva as it pants happily, making the presence of your unwanted passenger clear[end if]. The scent of cocoa lingers pleasantly around you. When teased, you leak white chocolate syrup from your nipples"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "a soft layer of milk-chocolate in the place of regular"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a slender, canine tail made of chocolate that wags happily."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "chocolate-brown, canine"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it seems to lose all internal structure. Your nose and mouth push out to form a canine muzzle while your ears and the rest of your head change as well. Your vision blurs momentarily as your eyes change somehow. The scent of cocoa fills you, exciting you, making you hunger for it. Somehow you know your head is made of chocolate, through and through. Your tongue lolls from your mouth, drooling a chocolaty syrup as your dark chocolate eyes look around"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "a strange sensation sinks into you as your whole body changes. Your body becomes that of an anthropomorphic dog, with paw-like hands and feet and digitigrade legs. But that's not strange when compared to the internal changes you're feeling. It is as if your muscles, bones and organs are melting and reforming into flowing chocolate. Your mind tries to maintain cohesion on it, holding your body in a state of semi-solid chocolateness"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "a soft layer of milk chocolate coats you that flexes and shifts as you move"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a short, canine tail grows from your ass. But it is not made of fur and flesh, but instead of malleable chocolate that wags all the same"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes canine in shape, then starts to turn a smooth, even chocolate-brown in color. As this change in color happens, you can feel it becoming made of chocolate. A flexible sheath grows to bundle it up and white, creamy chocolate leaks from its tip"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 14;
	now sta entry is 10;
	now per entry is 15;
	now int entry is 18;
	now cha entry is 18;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 40;
	now lev entry is 4; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking.]
	now area entry is "High"; [ Location of monster, in this case the High Rise District]
	now Cock Count entry is 3; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 2; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 2; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 6;
	now libido entry is 70; [ Set to zero in this monster to control elsewhere ]
	now loot entry is "chocolate milk"; [ Dropped item. Key will be used later ]
	now lootchance entry is 25; [ Chance of loot dropping 0-100 ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]chocolate[or]confectionary[or]flowing[or]malleable[at random]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
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
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
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
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
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



Section 3 - Piggybacking Labs

an everyturn rule:
	if ( labhost is 1 or labhost is 2 ) and skipturnblocker is 0:
		follow the Choclab piggyback rule;

this is the Choclab piggyback rule:
	let playernum be a random number between 1 and 12;
	let labnum be 0;
	if facename of Player is "Chocolate Lab", increase labnum by 1;
	if bodyname of Player is "Chocolate Lab", increase labnum by 1;
	if skinname of Player is "Chocolate Lab", increase labnum by 1;
	if tailname of Player is "Chocolate Lab", increase labnum by 1;
	if cockname of Player is "Chocolate Lab", increase labnum by 1;
	if labhost is 2, now labnum is labnum * labhost;
	if Playernum is 12 or labnum is 0:
		say "     You pause for a moment as you feel a rather powerful rumbling in your belly. Slowly but surely the churning feeling begins to intensify as the lab[if labhost is 2]s continue their efforts[else] continues its effort[end if] to infect you further. You groan as the rolling in your stomach reaches a new peak, but strangely enough you don't feel the familiar tingling sensation of the infection taking root. As if just as confused by this development as you are, you feel the lab's activity slowly begin to calm until it's almost completely dormant again. Then there is another sudden audible rumbling from your belly, but this time it feels quite different and you realize it's you, not the unwanted passenger.";
		if a random chance of 1 in 4 succeeds:
			if bodyname of Player is "Chocolate Lab":
				say "     You feel your body rolling and churning around the trapped lab, turning the tables on the intruder. Realizing this the lab suddenly begins to struggle, pushing and flailing against your body, but unprepared for your body's sudden counterattack, the lab is unable to push through your chocolate form to escape. Slowly but surely the struggles begin to diminish as the movement of the lab's form begin to synchronize with the movement of your own chocolate body until you can no longer feel the lab's presence within you.";
			else:
				say "     As the rumbling continues to intensify you realize your body is turning the tables on the intruder, and apparently the lab realizes the same thing as it begins violently pushing and flailing inside you. Unfortunately for the lab, it is no longer able to escape the same way it entered your body, and it quickly tires itself out fruitlessly trying to escape. You feel the pressure and movement slowly dissipate as the last of the lab's strength wanes and with a final muffled whine from deep inside you the movement stops.";
			say "     [if labhost is 2]You feel a wave of emotion roll through your mind from the other lab, mostly sadness, but there's a hint of fear as well. [end if]As the action inside you finally settles down you find yourself feeling quite full, releasing a loud belch as you continue on your way you feel somewhat at ease, taking solace in the knowledge that the lab's strange attempt to convert you has failed.";
			PlayerEat 15;
		else:
			if bodyname of Player is "Chocolate Lab":
				say "     You feel your body rolling and churning around the trapped lab, turning the tables on the unwanted intruder. Realizing this, the lab suddenly begins to struggle, pushing and flailing against your body. You feel the lab's movement begin to focus at a single point in your chest, and watch as a canine muzzle slowly pushes through your chocolate flesh. Slowly but surely the lab drags itself out of your body in much the same way as it forced itself in. Landing on the ground with a wet smack the lab pulls itself together into a familiar canine shape before turning to face you. The lab's dark chocolate orbs stare into your eyes for a few moments before it releases several wet barks and licks your cheek. Soon after the lab turns away and begins happily padding down the street, leaving you alone to gather your wits and continue on your way.";
			else:
				say "     As the rumbling continues to intensify you realize your body is turning the tables on the intruder, and apparently the lab realizes the same thing as it begins violently pushing and flailing inside you. Despite not being able to escape the same way it got in, the lab finds a new way out of your body. You drop to your hands and knees, gagging a little as you feel the thick, warm mass pushing up your throat. Your mouth is forced open as the mass of chocolate spills out of you, slowly taking the shape of a chocolate canine as more of it emerges from your body. It is a bizarre sight, the head and torso of the lab emerging from your mouth, bracing its front paws on your shoulders as it drags the rest of its body out with a wet slurp. Landing on the ground with a wet smack, the lab pulls itself together into a familiar canine shape before turning to face you. The lab's dark chocolate orbs stare into your eyes for a few moments before it releases several wet barks and licks your cheek. Soon after, the lab turns away and begins happily padding down the street, leaving you panting heavily on the ground to recover from your strange ordeal.";
			say "     As you watch the chocolate canine walk away[if labhost is 2], you feel a ripple of emotion roll through your mind from the other lab, mostly loneliness, but there's a hint of fear as well. However[end if], you can't help but feel relieved, knowing its strange attempt to convert you has come to an end.";
		decrease labhost by 1;
		now labtimerA is labtimerB;
		now labtimerB is 0;
	else if labnum > playernum:
		if bodyname of Player is "Chocolate Lab":
			say "     While traveling, you find your body filling with a warm tingling sensation. Your [one of]body begins losing cohesion[or]form starts drooping slightly[or]body begins to shift slightly[at random] and you [one of]have a sudden craving for chocolate[or]find yourself becoming quite aroused[or]have a sudden hunger for chocolate... and sex[at random][if humanity of Player > 4]. You quickly lose track of time as your mind continues to wander, but a [one of]sudden sound[or]loud bang[or]scream[or]cry of ecstasy[at random] in the distance breaks the haze, snapping your attention back to reality[one of] just before your increasingly paw-like hand touches the ground[or]. You quickly pull yourself back together, both mentally and physically[or] and you feel the lab's disappointment roll through you[at random]. Realizing just how close you came to losing yourself to the influence of your canine piggybacker, you resolve to stay much more focused, but fear how much of yourself you've already lost in this lapse[end if].";
		else:
			say "     While traveling, you find your body filling with a warm tingling sensation. [one of]You begin panting heavily[or]Your tummy begins rumbling[or]You begin licking your lips[at random] and you [one of]have a sudden craving for chocolate[or]find yourself becoming quite aroused[or]have a sudden hunger for chocolate... and sex[at random].";
			if humanity of Player > 4:
				say "     As your mind continues to wander, the warm sensation intensifies, but a [one of]sudden sound[or]loud bang[or]scream[or]cry of ecstasy[at random] in the distance breaks the haze and you finally you catch yourself, realizing you're being influenced by the chocolate lab[if labhost is 2]s[end if] trapped in your body. You resolve to stay more focused in the future, but deep down you know you've already lost some small part of yourself as a result of this lapse.";
		let rbchance be 2 + labhost;
		if a random chance of rbchance in 5 succeeds, now researchbypass is 1;
		infect "Chocolate Lab";
		now researchbypass is 0;
		decrease humanity of Player by 4;
		increase hunger of Player by 2;
		if Libido of Player < 70, increase Libido of Player by 5;
		if humanity of Player < 1 and bodyname of Player is "Chocolate Lab":
			say "     Subject to the constant influence of the chocolate lab[if labhost is 2]s[end if] infesting your body, your mind slowly begins to melt away, leaving it and your body to be freely reshaped by the chocolate canine[if labhost is 2]s[end if]. The last of your resistance fades and you slowly sink to the ground, melting into a gooey chocolate mess. You feel the [if labhost is 2]labs rejoice as they set about finishing their[else]lab rejoice as it sets about finishing its[end if] work. Sometime later your [if labhost is 2]pack[else]companion[end if] finally separates from your body, waiting eagerly as you pull yourself together, taking the shape of another flowing, chocolate dog. You happily lick and nuzzle your [if labhost is 2]new pack[else]companion[end if] as they return the love, finally welcoming you into the pack properly. With a wet bark they bound off into the city, and you follow behind eagerly, marking the beginning of your simple new life as a chocolate lab.";
			[puts Chocolate Lab as lead monster for infection and impregnation]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Chocolate Lab":
					now MonsterID is y;
					break;
			now tailname of Player is "Chocolate Lab";
			now facename of Player is "Chocolate Lab";
			now skinname of Player is "Chocolate Lab";
			now bodyname of Player is "Chocolate Lab";
			now cockname of Player is "Chocolate Lab";
			attributeinfect;
			now tail of Player is tail entry;
			now face of Player is face entry;
			now skin of Player is skin entry;
			now body of Player is body entry;
			now cock of Player is cock entry;
			now humanity of Player is 0;
			now battleground is "void";
			now labhost is 3;
			wait for any key;
			end the story saying "Your mind melted away into the chocolate dogs, leaving you one of them.";
			stop the action;
	if labtimerB > 0:
		decrease labtimerB by 1;
	if labtimerB is 1:
		if bodyname of Player is "Chocolate Lab":
			say "     A sudden rumbling in your stomach draws your attention to the fact that the lab[if labhost is 2]s stowed away in your body have[else] stowed away in your body has[end if] been less active recently. You feel [if labhost is 2]one of the dogs['] liquid chocolate forms[else]the dog's liquid chocolate form[end if] pushing against your body as if trying to escape. There's even a noticeable bulge in your [one of]torso[or]stomach[or]side[at random] where the lab is pushing against you. Unfortunately for the lab, weakened by its ongoing effort to convert you, it no longer has the strength to separate itself from your body. You feel the pressure and movement slowly dissipate as the last of the lab's strength fades and with a final muffled whimper from deep inside you, you feel the lab's presence slowly disappear as it is absorbed entirely into you.";
		else:
			say "     A sudden rumbling in your stomach draws your attention to the fact that the [if labhost is 2]s stowed away in your body have[else] stowed away in your body has[end if] been less active recently. You feel [if labhost is 2]one of the dogs['] liquid chocolate forms[else]the dog's liquid chocolate form[end if] churning inside your body and hear a weak, muffled whimper from inside your belly. You feel the dog pushing weakly against the inside of your body, as if trying to escape. Unfortunately for the lab, weakened by its ongoing effort to convert you, it no longer has the strength to escape your body. You feel the pressure and movement slowly dissipate as the last of the lab's strength wanes and with a final muffled whine from deep inside you the movement stops.";
		say "     [if labhost is 2]You feel a wave of emotion roll through your mind from your other passenger, mostly sadness, but there's a hint of fear as well. [end if]As the action inside you finally settles down you find yourself feeling quite full, releasing a loud belch. As you continue on your way you feel somewhat at ease, taking solace in the knowledge that the lab's strange attempt to convert you has failed.";
		PlayerEat 15;
		now labtimerB is 0;
		decrease labhost by 1;
	if labtimerA > 0:
		decrease labtimerA by 1;
	if labtimerA is 1:
		if bodyname of Player is "Chocolate Lab":
			say "     A sudden rumbling in your stomach draws your attention to the fact that the [if labhost is 2]s stowed away in your body have[else] stowed away in your body has[end if] been less active recently. You feel [if labhost is 2]one of the dogs['] liquid chocolate forms pushing against your body[else]the dog's liquid chocolate form pushing against your body[end if] as if trying to escape. There's even a noticeable bulge in your [one of]torso[or]stomach[or]side[at random] where the lab is pushing against you. Unfortunately for the lab, weakened by its ongoing effort to convert you, it no longer has the strength to separate itself from your body. You feel the pressure and movement slowly dissipate as the last of the lab's strength fades and with a final muffled whimper from deep inside you, you feel the lab's presence slowly disappear as it is absorbed entirely into you.";
		else:
			say "     A sudden rumbling in your stomach draws your attention to the fact that the [if labhost is 2]s stowed away in your body have[else] stowed away in your body has[end if] been less active recently. You feel [if labhost is 2]one of the dogs['] liquid chocolate forms[else]the dog's liquid chocolate form[end if] churning inside your body and hear a weak, muffled whimper from inside your belly. You feel the dog pushing weakly against the inside of your body, as if trying to escape. Unfortunately for the lab, weakened by its ongoing effort to convert you, it no longer has the strength to escape your body. You feel the pressure and movement slowly dissipate as the last of the lab's strength wanes and with a final muffled whine from deep inside you the movement stops.";
		say "     [if labhost is 2]You feel a wave of emotion roll through your mind from your other passenger, mostly sadness, but there's a hint of fear as well. [end if]As the action inside you finally settles down you find yourself feeling quite full, releasing a loud belch. As you continue on your way you feel somewhat at ease, taking solace in the knowledge that the lab's strange attempt to convert you has failed.";
		PlayerEat 15;
		now labtimerA is labtimerB;
		now labtimerB is 0;
		decrease labhost by 1;

Section 4 - Endings

when play ends:
	if bodyname of Player is "Chocolate Lab":
		if humanity of Player < 10:
			if labhost is 4: [lost to three labs; big dog ending]
				say "     You wander the streets, drawn by your nose to seek out chocolate, which you ingest ravenously wherever found, and eventually your nose has you cross paths with another of those confectionary canines. Your mouth fills with thick, chocolaty saliva as you eye the smaller dog hungrily, but before you can make your move, the smaller lab spots you and makes a run for it.";
				say "     You chase the lab back to a chocolate maker's shop at the edge of the high rise district, finally cornering it between some dumpsters at the back of the building. The small dog whines in fear as you swallow it whole, enjoying the feeling of it struggling inside you just as much as the wonderful chocolate taste.";
				say "     After you snack, you turn your attention to the shop the lab lead you to. Hearing movement and smelling more chocolate inside, you quickly set about finding a way in. The small double doors at the front of the building are no match for your immense size, and upon smashing your way inside, you are excited to find a pack of tasty chocolate labs waiting for you. The pack scatters as you bound into the building, many of them escaping out small windows or outmaneuvering you and running out the smashed door. However, you manage to catch and gobble up more than your fill of the tasty hounds before laying down for a rest after your feast.";
				say "     You awaken to a loud rumbling in your belly and watch as your body ripples with movement, teeming with life. You howl in pleasure as [if Player is female]you birth a small pack of labs[else]a small pack of labs begin separating from your gooey chocolate body[end if], each of those you consumed before emerging fully intact, but now seemingly fully loyal to you. You and your new pack take the chocolate shop as your own den, and you roam the surrounding district freely in search of chocolate and new playmates. While chocolate is your favorite, anyone unfortunate enough to cross your path, chocolate lab or otherwise, proves to be a special treat, and you grow to love the feeling of your prey struggling against your gooey chocolate form as you swallow them whole, only to [if Player is female]birth[else]expel them[end if] later in the safety of your den as fully formed chocolate labs, further bolstering your numbers.";
			else:
				if labhost is 3: [lost to three labs; pack ending, or any other pack ending.]
					say "     You and your new pack wander the streets, drawn by your noses to seek out chocolate, which you ingest ravenously wherever found. Soon, your nose has you cross paths with another small group of confectionary canines and, after a very sticky romp where you thrust and melt into one another, you follow them back to a chocolate maker's shop at the edge of the high rise district.";
				else if labhost is 2 or labhost is 1: [succumb through standard means while carrying one or more labs]
					say "     Subject to the constant influence of the chocolate lab[if labhost is 2]s[end if] infesting your body, your mind slowly begins to melt away, leaving it and your body to be freely reshaped by the chocolate canine[if labhost is 2]s[end if]. As the last of your resistance fades you slowly sink to the ground, melting into a gooey chocolate mess. You feel the lab[if labhost is 2]s rejoice as they set about finishing their[else] rejoice as it sets about finishing its[end if] work. Some time later, your [if labhost is 2]pack[else]companion[end if] finally separates from your body, waiting eagerly as you pull yourself together, taking the shape of another flowing, chocolate dog. You happily lick and nuzzle your [if labhost is 2]new pack[else]companion[end if] as they return the love, finally welcoming you into the pack properly before they lead you back to a chocolate maker's shop at the edge of the high rise district.";
				else: [normal succumb ending.]
					say "     The strain of trying to keep a cohesive hold on your body eventually becomes too much. You collapse onto all fours and melt into a more fluid, gooey chocolate Labrador. You wander the streets, drawn by your nose to seek out chocolate, which you ingest ravenously wherever found. Soon, your nose has you cross paths with one of those confectionary canines and, after a very sticky romp where you thrust and melt into one another, you follow it back to a chocolate maker's shop at the edge of the high rise district.";
				say "     You and the others live there, mating and roaming around in search of more chocolate. When you and the other canines mate, you both lose cohesion and melt in with your lover. When you separate, you lose more and more of who you used to be, though the pack grows smarter and more united as well.";
				say "     Over time, you become more and more a creature of instincts, hungering to feed its chocolaty fluids to others. Your group, while searching for chocolate, also hunts for new playmates. Your pack snags several soldiers rather easily. Looking like a normal dog at a distance, one of you can often get close before they realize their mistake. And by then, your scent is around them and it is too late. After all, they are easy prey for a creature immune to bullets.";
				if intelligence of Player > 16:
					say "     Having grown clever enough, your pack manages to get the gas running to the large chocolate melting pot. You all add your gathered chocolate, as well as each of you putting in your own individual cream to it. When the resulting mix is poured out, you create new chocolate dogs to join your pack, greatly increasing your numbers and the area in which you are able to scavenge more chocolate and playmates. With your swollen numbers, you are able to control a substantial portion of the city despite not being as powerful as some other creatures out there.";
			if hellHoundLevel > 0: [Hellhound while swarmed into conversion]
				say "[line break]     Lost to your lustful hungers with the other chocolate labs, you forget about your deal with the hellhound, troubled only by the occasional, unremembered dream. But he does not forget. Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
				say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual treat to the countless foul hellhounds who guard the gates of Hell. Your confectionary body is fucked over and over again while you are milked for your white chocolate cream. Some even take to biting at you, eating away at your flowing body. This is strangely painful and yet pleasurable to you, feeling part of your eternal soul torn away to be consumed by the demonic hound. This damage never lasts as your chocolate body continually reforms, eager to feed the lusts of the countless horde.";
				say "     The fel beasts breed you incessantly, filling your womb with litters of their spawn. Your pups are twisted, flowing creatures like yourself, but made of lava and flame encased in ashen crusts. They nurse from your teats and grow strong, eventually joining the others in mating you until the ends of time. Their piss and cum are like molten lava, yet somehow wonderfully warm and exciting to you but torture to their other victims among the damned.";
		else:
			say "     You manage to maintain cohesion throughout your ordeal in the city, though it does get easier over time. Upon rescue, the soldiers and scientists are confused by your chocolaty body. You are put through a series of inconclusive tests, but eventually you are released, as there are so many more to process. While you are certainly intriguing, they don't feel you're dangerous. The soft scent of chocolate you emit does help, everyone being happier around you.";
			if labhost > 0:
				if humanity of Player < 40:
					say "     During your time in the camp you feel compelled to keep the lab[if labhost is 2]s you've been carrying secret, feeling them[else] you've been carrying secret, feeling it[end if] curled up and shivering somewhere deep inside you. You worry for [if labhost is 2]their[else]its[end if] wellbeing if you were to allow the military to capture [if labhost is 2]them[else]it[end if]. Fortunately the military is unable to distinguish your chocolate form from that of your passenger[if labhost is 2]s[end if], and you easily manage to smuggle [if labhost is 2]them[else]it[end if] out. After being released you find a secluded private place outside the city to release the lab[if labhost is 2]s[end if]. Once released, the lab[if labhost is 2]s nuzzle you and give[else] nuzzles you and gives[end if] you slobbery doggy kisses before departing in search of new playmates and chocolate outside the quarantined city, but not before pausing and looking back at you with those dark chocolate puppydog eyes, as if giving you one last chance to join them before they leave.";
					if humanity of Player >= 25:
						now humanity of Player is 20;
				else:
					say "     During your time at the camp, you inform the scientists of the lab[if labhost is 2]s[end if] hidden within your body, and eager for more data on your bizarre infection, they set about finding a way to separate the lab[if labhost is 2]s[end if] from you right away. When you awaken from the procedure, you no longer feel the lab[if labhost is 2]s['][else]'s[end if] presence within you, but despite being happy to be rid of them, you find yourself concerned for the lab[if labhost is 2]s[end if] now that they're in the military's hands.";
			say "     You eventually settle down and become a chocolatier, having some innate feel for preparing it coming from your altered composition. You do have a few close calls early on while near the oven, but manage to move away and re-solidify while you still can. As time goes on, your products become in high demand to those who can afford your gourmet chocolates.";
			if humanity of Player < 50: [Going a little mad]
				say "     You even start adding some of your white chocolaty cream from your [if Player is male and Breast Size of Player > 0]cock and breasts[else if Player is male]cock[else if Breast Size of Player > 0]breasts[else]nipples[end if] to special items for special patrons. While not infectious, they do prove to be powerful aphrodisiacs that are most enticing. You keep their special ingredient secret from your clients. Their undocumented addition to your selection further increases your profits and success.";
			if humanity of Player < 25: [...and then going completely mad]
				say "     After a few years, you are struck with the sudden idea for your most daring and elaborate project yet. With the help of all your apprentices over several uninterrupted days, you are milked for as much white chocolate syrup as you'll give over and over. During this time, you're fed only a diet of pure, white chocolate by your assistants who slowly change, becoming chocolate Labs like you. You insist on only using your own chocolate on this project though, despite many volunteering to give as well.";
				say "     The chocolate is prepared and heated, then poured into the elaborate, segmented mold you had specially commissioned for this project. When it cools, your team opens it carefully, releasing the large, white chocolate figure. It is a solid, white chocolate version of the creature you met in the city so long ago. You nervously nibble the ends off your fingers as you watch and wait, elated when it starts to move.";
				say "     The white chocolate Lab is in your arms as soon as it can walk and fucking you moments after that. The flowing, ivory creature you've created becomes your mate and is capable of changing others into chocolate canines like yourself.";
				if Player is female and "Sterile" is not listed in feats of Player: [BREEDABLE+H-SIRING]
					say "     A few days later, while the creamy filling of his pups swirls with life in your womb[if Player is male] and your mate's womb similarly filled[end if], you head back to the kitchen to help your assistants create mates of their own. Meanwhile, your mate is in your office, vigorously screwing your distributor. She had come by to talk to you about wasting time on projects instead of sales. When you left, the canine was well on his way to making her into chocolate Lab like you, giving her a much greater appreciation for the creative vision you would soon share with the world.";
				else if Player is male: [SIRING ONLY]
					say "     A few days later, while a creamy filling of your pups swirls with life in your mate's womb, you head back to the kitchen to help your assistants create mates of their own. Meanwhile, your mate is in your office, vigorously screwing your distributor. She had come by to talk to you about wasting time on projects instead of sales. When you left, the canine was well on his way to making her into chocolate Lab like you, giving her a much greater appreciation for the creative vision you would soon share with the world.";
				else: [NO BREEDING]
					say "     A few days later, you head back to the kitchen to help your assistants create mates of their own. Meanwhile, your mate is in your office, vigorously screwing your distributor. She had come by to talk to you about wasting time on projects instead of sales. When you left, the canine was well on his way to making her into chocolate Lab like you, giving her a much greater appreciation for the creative vision you would soon share with the world.";
	else:
		if labhost > 0:
			say "     Trapped inside your new [bodyname of Player] form, the chocolate lab[if labhost is 2]s[end if] infesting your body are eventually overwhelmed by your own body, slowly absorbed into your form until one day you realize [if labhost is 2]their[else]its[end if] presence has disappeared entirely. While you show no outward signs of the labs influence, you find you have a powerful craving for chocolate from that day onward.";


Chocolate Lab ends here.
