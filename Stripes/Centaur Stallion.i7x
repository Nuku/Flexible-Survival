Version 2 of Centaur Stallion by Stripes begins here.
[ Version 1.2 - WS + oral ]
[ Version 2 - Add cock vore - Written by Rizzy, Coded by Kurainyx]
[Adaptation of Centaur Stallion for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Centaur Stallion to Flexible Survival."

Section 1 - Creature Responses

to say centaurstalliondesc:
	setmongender 3; [creature is male]
	say "     A centaur approaches you, galloping across the plains and unslinging his bow. His body is covered in tan, human flesh from the waist up. From the waist down, everything is covered in the short, brown hairs of a horse. His head is mostly that of a human male at first glance, but with a broad flaring nose and pointed ears. His upper body is human and strongly built, with hard muscles and broad shoulders on that tanned, male body. His arms are human in appearance and quite muscular. Being a centaur, his legs are replaced in their entirety from the waist down by the body of a horse. His muscled, equine body has slender legs leading to a set of four shiny black hooves. A long flowing tail trails behind. Below that equine body is a massive sheath, bloated and full, as are the watermelon-sized balls behind it.";

to say losetocentaurstallion:
	if inasituation is false:
		if wslevel is 3 and ( ( Cunt Count of Player is 0 and a random chance of 1 in 5 succeeds ) or a random chance of 1 in 4 succeeds ):
			say "     You are bowled over by the powerful centaur, landing in a heap in the dirt. He chuckles darkly at you as he straddles you, slapping his hefty cock across your [bodytype of Player] body a few times. He then gives a soft, exaggerated sigh as he starts to piss on you, his equine urine covering you with its impressive flow. You end up with a mouthful of it as the stream splashes across your face before finally coming to a halt with a few last squirts.";
			say "     Humiliated at being so used, his abuse of you does not end as his wet horsecock slaps against you a few more times. 'Start licking, you messy mare,' he orders. When you don't comply immediately, he stomps his hooves around you threateningly. Given no other option, you take his equine rod in your hands and guide it to your mouth. You lick and suck at it while your hands play along it, stroking along its impressive length. Still tasting his piss on it as the last drops of it leak out, that is soon replaced by drops of precum instead. You keep it up, forcing yourself to take more and more of his two feet of stallion meat into your mouth and throat. When he cums, he ends up pumping the bulk of his heavy load right into your belly, leaving you feeling full from his semen.";
			say "     Having sated himself, he steps back and pops his cock free of your throat and mouth. In the end, you are left wet and smelling strongly of a stable.";
		else if vorelevel is 3 and a random chance of 1 in 3 succeeds and scalevalue of Player < 4:
			if HP of Player > 0:
				say "     As you throw up your hands to submit";
			else:
				say "     As you lower your defenses";
			say ", the male centaur gets a more twisted look on his face as he paces around you. Finally, he pushes you down to your knees and moves to press his cock to your face. Believing it to be a mere blowjob, you are surprised when he thrusts forwards, his tip sliding over your face and expanding to take your shoulders in. He moves you to a nearby rock, and he happily moans as his flesh tugs on you, pulling your face deeper into the musky tube half your length and bulging with your body as it pushes over your form.";
			say "     Soon, the centaur has you in up to your waist, and he decides to torture you a bit, the male going for a canter and a slow gallop. Your legs smack against the underside of that gut over and over as he runs, each upwards jerk of his cock pulling more and more of you in. Eventually, all that is left is your feet, and even they disappear from view, the bulge you make going down into a tight chamber filled with musky fluid, straining and stretching with your form. Aroused beyond belief now, the stallion gallops, looking for a mate. The swaying isn't as rocky in here, and you can feel the warm cum starting to help you nod off...";
			WaitLineBreak;
			say "     You're abruptly awoken as gravity shifts, and you can hear the sound of a female moaning. Putting two and two together, you realize that the stallion is fucking a mare, and likely plans to get you out of him that way! You push about, trying to get him to stop, but all that does is make him more aroused. Time goes on, the noise of sex muffled, but the ball you're in shakes with each thrust. Thankfully, you don't have to endure that for long as it feels like the tube above your head sucks on you and pulls up into the main part of his cock. Inch by inch, you slide deeper into the mare before you are shot out into her womb, coated in his spunk and desperate to try and avoid a possible scenario where you become the mare's child due to this. The centaur keeps his cock in though, and try as you might, you can feel something prick your belly button, and sleep overwhelms you...";
			if ublevel < 3:
				say "     You awaken sometime later to feel contractions around your body before you spill out onto the dry grounds of the Plains, the mare you had become child to giving birth to you. The nanites in your head scream as you fight the urge to give in to the infection, and with shaky newborn legs, you gallop away.";
			else:	[Goes into womb loop scene in Centaur Mare file]
				say "[CentaurMareWomb]";
		else if Player is female:
			say "     You feel a sudden weight atop you, pinning you to the ground on your hands and knees. Next comes a sudden pressure between your legs as you realize this hugely hung stallion fully intends to mount you[if Cunt Tightness of Player < 6]. You can feel his enlarged, flared glans pressing at your pussy, trying to spread open your hole for him until it finally gives and allows him entry, making you moan loudly as it pushes in[end if][if Cunt Depth of Player < 28]. With one thrust that sends shivers of lustful delight, he drives as much of his huge cock inside you as he can[else]. With a single thrust, he buries his huge cock completely inside your enormous pussy, sending shivers of lustful delight through you and making him whinny excitedly at finding a mare big enough to take him[end if]. He thrusts in and out of you, grunting in a near bestial manner as that gigantic rod pounds into you over and over. With a sound almost like a neigh, he drives deep inside you and cums powerfully, filling you with copious amounts of centaur spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws and trots off proudly.[impregchance]";
		else if Player is submissive and anallevel > 1:
			say "     The centaur stallion snorts in frustration at your lack of a pussy for him to fill and presses you to the ground. He steps overtop you and stomps his hoofs on the hard ground around you. As you cringe to avoid them, your submissive instincts cause you to raise your rear, inadvertently putting it beneath the centaur's slapping cock.";
			say "     As his equine meat slaps against your rear a few times, he shifts his stance and starts grinding it against your backside, then thrusts it into you with a whinny of pleasure. You groan as the centaur's horse cock is driven into you, its flat glans spreading you wide as he starts plowing into you. You moan beneath him as his huge cock as he uses you as his mare. He thrusts in and out of you, grunting in a near bestial manner as that gigantic rod pounds into you over and over. With a sound almost like a neigh, he drives deep inside you and cums powerfully, filling you with copious amounts of centaur spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws and trots off proudly.[mimpregchance]";
		else:
			say "     The centaur stallion snorts in frustration at your lack of a pussy for him to fill and presses you to the ground. He steps overtop you and pounds his hoofs on the hard ground again and again. As you cringe to avoid them, his huge cock slaps against his equine belly again and again, growing fully and harder. His pre dribbles down onto you as a warning of what comes soon after. With a loud whinny, his glans flares and blast after blast of centaur cum splatters onto you, leaving you soaked in his semen. He snorts again and trots off, frustrated and only a little satisfied.";
			decrease HP of Player by 10;
		if "Female Preferred" is listed in feats of Player and FemaleList is not banned:		[change target to Mare for infection]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Centaur Mare":
					now MonsterID is y;
					break;
	else:
		say "";

to say beatthecentaurstallion:
	if inasituation is false:
		if Libido of Player > 24:
			say "     Your eyes are drawn back to the centaur's huge cock and throbbing ballsack. The large, flared glans is poking from his sheath and you can see his black cock is quite large to go with it. A lustful yearning makes you want to lick and suck that throbbing meat and drain those bloated balls for all they'll give.";
			say "     [bold type]Shall you give in to your urges?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Give in.";
			say "     ([link]N[as]n[end link]) - Resist.";
			if Player consents:
				say "     Grabbing the stallion's large sheath, you rub over that warm flesh, getting him to moan and whinny, hopeful at getting some relief after all. As his cock starts to emerge, you eye that thick, black meat hungrily, licking your lips. Leaning further under him, you bring that large cock to your mouth and start licking and kissing at its flared glans, making it swell faster. Soon, centaur pre is leaking onto your tongue. You lick and suck at it until it grows too large and full to fit in your mouth before pulling it to you. Running your hands along the equine member, you fondle those huge balls while tending to the giant horse cock before you. As his glans flares and he starts to whinny excitedly, you hold the end with one hand while rubbing his balls with the other. Holding it in place, you get him to blast shot after shot of hot, equine cum into your mouth and down your throat. You swallow as much of it as you can, though much of his copious flow ends up running down your chest. Satisfied, you give his equine ass a swat, sending him galloping off. As you watch him go and rub your full, bloated tummy, you can feel the warmth of his seed inside you, spreading into tingles of his spreading infection.";
				increase Libido of Player by 5;
				if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 1;
				if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 1;
				PlayerEat 3;
				PlayerDrink 6;
				SanLoss 5;
				if "Strong Psyche" is listed in feats of Player, increase humanity of Player by 2;
				if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 1;
				if "Female Preferred" is listed in feats of Player and FemaleList is not banned:		[change target to Mare for infection]
					infect "Centaur Mare";
				else:
					infect "Centaur Stallion";
			else:
				say "     Not wanting to risk the large amount of infected semen those big balls contain, you pull your eyes away from his huge loins. You give the centaur's equine ass a swat, sending him galloping off.";
		else:
			say "     Having defeated the wild stallion, you give his equine ass a swat, sending him galloping off.";
	else:
		say "";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Centaur"; [name of the overall species of the infection, used for children, ...]
	add "Centaur Stallion" to infections of HybridList;
	add "Centaur Stallion" to infections of FurryList;
	add "Centaur Stallion" to infections of MythologicalList;
	add "Centaur Stallion" to infections of MaleList;
	add "Centaur Stallion" to infections of BluntCockList;
	add "Centaur Stallion" to infections of SheathedCockList;
	add "Centaur Stallion" to infections of TaurList;
	add "Centaur Stallion" to infections of TailList;
	now Name entry is "Centaur Stallion"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The centaur stallion fires his bow at you, piercing your shoulder with an arrow![or]The centaur stallion charges at you, knocking you to the ground roughly![or]The centaur rears up and manages to land a heavy hoof on your shoulder![or]The centaur swings a punch at you, bashing you in the jaw![or]The stallion rears up, causing his semi-hard cock to slap against his equine belly and release a spurt of precum onto you and also giving you a good view of his impressive penis and bloated balls![at random]";
	now defeated entry is "[beatthecentaurstallion]";
	now victory entry is "[losetocentaurstallion]";
	now desc entry is "[centaurstalliondesc]";
	now face entry is "mostly human at first glance, but with a broad flaring nose and pointed ears. It has a male cast to it";
	now body entry is "that of a centaur, with a muscled, human upper torso. Your body is chiseled and has well-defined muscles. Broad shouldered and strongly-built, it evokes the male form. Your arms are strong and muscular, and very human in appearance. Your lower body is that of a horse, with a muscular equine form and slender legs leading to a set of shiny black hooves";
	now skin entry is "tanned human flesh from the waist up. From the waist down, everything is covered in the short brown hairs of horse over your";
	now tail entry is "You have a long, flowing tail like a horse coming from just above your behind. It flicks and swishes from time to time.";
	now cock entry is "[one of]black, equine[or]flared, equine[or]sheathed, equine[or]horse-like[at random]";
	now face change entry is "it takes on a human appearance with hard, masculine features. As the changes continue to progress, your nose flares wide and your ears taper up into points";
	now body change entry is "your torso becomes strong and muscled, with broad, manly shoulders. The muscles on your arm and chest become well-defined, as if having had years worth of muscle training within a matter of moments. But as the changes progress, your legs and hips become unsteady and you are no longer able to stand as they twitch uncontrollably. Spots fill your eyes as the rush of this transformation overwhelms your senses. When your vision finally clears, your lower body has become that of a horse";
	now skin change entry is "a sudden itching from below your waist brings to your attention the short brown hairs completely covering you from your waist down. However, from the waist up your skin is tanned and smooth human skin";
	now ass change entry is "a twitching quiver runs down your spine as it extends and grows a horse's tail";
	now cock change entry is "it twitches and throbs as it stiffens and reshapes itself. The head flares like a horse's and releases several spurts of cum on the ground as it turns a glossy black. As your member grows soft again, a sheath forms around the base to keep the swollen member safe and secure";
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 35; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 28; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "centaur cum";
	now lootchance entry is 33; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]centaur[at random]";
	now type entry is "centaur"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "Centaur Mare"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hoofstomp"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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



Section 3 - Hoof Stomp

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"hoofstomp"	retaliation rule	--	--	hoofstomp rule	20	--	--	--	--	--


this is the hoofstomp rule:		[double-damage hoof stomping]
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 ); [Double damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The centaur rears up to attack you, slamming both hooves into [one of]you[or]your chest[purely at random], knocking your over briefly. [one of]While you're prone,[or]This allows it to use[purely at random] its hard, heavy hooves to [one of]pound at you[or]stomp away at you[or]strike you repeatedly[purely at random] until you manage to get out of the way and get back on your feet. This [one of]powerful[or]strong[or]devastating[purely at random] attack does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]"; [unable to use shield while pinned]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";



Section 4 - Centaur Cum and Centaur Hair

Table of Game Objects (continued)
name	desc	weight	object
"centaur cum"	"Some centaur cum you've managed to collect... Why would you do that!?"	1	centaur cum
"centaur hair"	"Some thick, dark brown hair."	0	centaur hair

centaur cum is a grab object.
the usedesc of centaur cum is "[centaurcumuse]".
it is part of the player.
It is temporary.
centaur cum is cum.

centaur hair is a grab object.
the usedesc of centaur hair is "[centaurhairuse]".
it is part of the player.
It is temporary.

to say centaurcumuse:
	say "     With a little shrug, you tilt your head back and slam down the centaur cum, letting the thick, gooey contents of the jar slide down your throat. While it does slake your thirst a little, it also floods your body with infection.";
	PlayerDrink 6;
	if "Female Preferred" is listed in feats of Player and FemaleList is not banned:		[change target to Mare for infection]
		infect "Centaur Mare";
	else:
		infect "Centaur Stallion";

to say centaurhairuse:
	say "     You take the long strands of thick horsehair and stare at them. Feeling a growing compulsion, you place the roots of the tail at [one of]the base of your spine[or]at the back of your head[at random] and feel them start to grow into you.";
	if "Male Preferred" is listed in feats of Player and MaleList is not banned:			[change target to Stallion for infection]
		infect "Centaur Stallion";
	else:
		infect "Centaur Mare";

the scent of centaur cum is "The contents of the jar smell of men and horses, and musky, male arousal.".

the scent of centaur hair is "The hairs smell of women and horses, and the dry plains outside the city.".



Section 5 - Endings

when play ends:
	if BodyName of Player is "Centaur Stallion" or BodyName of Player is "Centaur Mare":
		if humanity of Player < 10:
			say "     As your infection spreads within you, you find yourself drawn back to the open plains at the edge of the city. There, you seek out the other centaurs and join their herd";
			if Player is herm:
				say ". As a herm centaur, you are popular among the other members of the herd and are often mounted by the stallions and sought out by the mares in heat. You happily have sex with them all, whinnying lustfully as you mate with them";
			else if Player is male:
				say ". As a male centaur, you help to guard the territory. When they come into season, you are sought out by several of the mares in heat looking for you to give them a foal";
			else:
				say ". As a female centaur, you help gather food and tend to the young foals. When the time comes and you go into heat, you are mounted often by the stallions, ensuring you bear the herd a foal";
			say ".";
			if centaurmate is 1 or centaurmate is 2:
				say "     Your people are locked in a constant conflict with the tainted, mutant centaurs. You are careful not to tell them that you accidentally let the first of these escape the corrupted tree, but you do inform them of the apple tree and its sinister fruits. Your people eradicate these trees whenever they are found with fiery arrows. Without the apples, the mutant centaurs are more easily contained if never fully purged from your lands. The military, having erected a barricade around the plains, strive to contain the centaur menace in their own way. But the pure centaurs don't see it that way and instead are happy that it keeps the soldiers off their lands.";
		else:
			say "     Your unusual body makes modern life rather difficult for you, as most building, vehicles and even tools are not designed for a body as different as yours. You take to living a simpler, country life, making a comfortable home in a barn you buy and renovate with many modern conveniences. It is roomy and comfortable for someone like you and your home becomes envied by the few other tauric infected in the area, who start to emulate your example. Becoming friends with them, they provide you with a stable of various lovers to satisfy your lustful, equine passions.";


Centaur Stallion ends here.
