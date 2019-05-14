Version 1 of Siren by Stripes begins here.
[Version 1.1 - Added DP for submissive males]

[Adaptation for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Siren to Flexible Survival."

when play begins:
	add { "Siren" } to infections of guy;

charcounter is a number that varies.
sirenfight is a number that varies.


Section 1 - Creature Responses

to say sirendesc:
	setmongender 3; [creature is male]
	choose row MonsterID from the Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	now charcounter is Charisma of Player;
	if sirenfight is 0:
		say "     You can hear a haunting song of longing spread out across the water. It seems to mix perfectly into the splashing waves of the sea, the perfect accompaniment to the lovely melody. Lost in the song, you start to head towards the rocks out in the water where the song is coming from. You struggle against the currents, drawn towards its source without concern for your safely. As you get closer, you briefly spot a beautiful, perfect human face, so lovely and attractive. Long, flowing blonde hair, smooth skin, perfect features.";
		say "     As the song fills your ears until it is all you can hear, you try all the harder to make it to that jagged rock to find that beautiful singer. You love it. You love them. They are your everything.";
		let bonus be ( Strength of Player + Stamina of Player - 20 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] vs 16 and score [dice plus bonus]:[line break]";
		if dice + bonus > 15:
			say "     You manage to fight your way through the rough waves and reach the rocky crag tired, but uninjured. You call out in search of the singer and are shocked as they appear.";
		else:
			say "     You are tossed and battered by the rough waters before you finally are bashed up against the rocky crag. You take [special-style-2]12[roman type] damage! You do manage to hang on and not be pulled away by the next wave and scramble up onto the sharp rock. You call out in search of the singer and are shocked as they appear.";
			decrease HP of Player by 12;
		say "     The figure, despite their beauty and lovely face, is male and not entirely human as they first appeared. With the spell of the song breaking as they stop singing for a moment, you shake your head and look the creature over. This siren has a beautifully feminine face, but is otherwise entirely male. His body is mostly human and covered in smooth, perfect skin. But behind his back are a pair of white, feathery wings capable of supporting him in flight. His feet are taloned and bird-like, covered in golden-brown scales. Between his legs, he has a twin pair of very long cocks with a pair of football-sized balls to accompany them. He grins viciously at you, his teeth a little too pointed and his eyes flashing menacingly.";
		increase sirenfight by 1;
	else:
		let bonus be ( Charisma of Player - 20 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]+[sirenfight] vs 16 and score [dice plus bonus plus sirenfight]:[line break]";
		say "     As you travel along, you can hear a siren's song again and it starts to cloud your mind. You struggle against it, trying to maintain control in the face of its hypnotizing effect. ";
		if dice + bonus + sirenfight > 15:
			say "Your will is strong and you are able to resist the haunting tune calling you into the sea. From afar, you hear the angry screech of the siren. They launch themselves off their rocky home and fly across the water, swooping in to attack you moments later.";
		else:
			say "With that lovely song filling your mind, you head out into the water towards the rocky outcropping in the sea, heedless of the danger. As you start swimming out, the siren swoops down from the air to attack you, catching its entranced prey by surprise. You take [special-style-2]8[roman type] damage before you can struggle to land to fight the siren.";
			decrease HP of Player by 8;
		say "     He has a mostly-human body with lovely, feminine features and beautiful, smooth skin. His eyes are sharp and menacing, as are his pointed teeth. Attached to his back are a pair of white, feathered wings and his feet end in bird-like talons. This well-endowed male has a pair of giant cocks and a huge ballsack to go with them. From the way those pricks are growing hard, it's clear he intends to use them on you.";


to say losetosiren:
	let tempnum be 0;
	say "     With the siren's song filling your mind, you become enraptured and stop resisting the beautiful creature. He grins down at you with his sharp teeth and you smile back up at him happily. He pushes you down onto all fours and spreads your legs, still singing softly as he gets his twin meat logs lined up with [if Cunt Count of Player is 1]your pussy and asshole[else if Cunt Count of Player > 1]your pussies[else]your asshole[end if].";
	if Player is female:
		say "     Mounting you slowly, he sinks his cocks into you, making you moan as he stretches out your holes with them. He climbs atop you, singing in your ear the whole while. Even with his lips at your ear, you can't make out the words, but know them to be beautiful. You are filled with increasing pleasure as the well-hung male makes love to you for a long time, proving to be a skilled lover as his fingers and wings tease over your body as he seems to work those cocks at the perfect pace to fill you with ecstasy. Or that may just again be the song.";
	else if the player is submissive and scalevalue of Player > 1 and a random chance of 3 in 5 succeeds:
		now tempnum is 3;
		say "     Mounting you slowly, he sinks one of his cocks into you, making you moan as he stretches out your back door. His other cock is [one of]pressed between you both as he moves atop you, rubbing that thick, hard dick against your back and drooling precum onto you[or]wedged underneath you as he moves atop you, pressing his thick, hard dick against yours[at random]. He sings in your ear the whole while. Even with his lips at your ear, you can't make out the words, but you know them to be beautiful and they awaken your submissive urges. You start to ride back onto his cock, moaning softly along with his tune for more. Hearing your words and with a wide, toothy grin, he pulls most of the way out of you before pressing his second cock alongside the first and wedging it into you as well. You cry out in pained delight, your body overcome with arousal. You are filled with increasing pleasure as the well-hung male stuffs you so full with his twin cocks in your ass. He makes love to you like this for a long time, proving to be a skilled lover as his fingers and wings tease over your body as he seems to work those cocks at the perfect pace to fill you with ecstasy. Or that may just again be the song.";
		say "     It feels like hours that he's thrusting into you before finally you feel a large bulge at the base of one of the cocks wedged inside into you. As it pops into you and starts sliding deeper and there is another one starting to push past your anal ring, you realize that they are eggs. You moan and wriggle beneath him as you feel those eggs sliding into you again and again, filling your belly. While they're about the size of tennis balls, they feel much larger and you start orgasming again and again as you're stuffed with the siren's entire clutch, begging for more. You are so full of warm eggs that your bloated belly presses against the ground. With both cocks stuffed inside you, the eggs alternate between them - as soon as one pops in one hole, another is pressing at the other. Addled as you are by the song and by your submissive urges, having this beautiful creature use your body for his eggs feels wonderfully arousing, as if it's what you were meant for.";
		say "     When he finally pulls his cocks free, he wipes his penises across your body and you can see that they had reshaped themselves to perfectly fit your tight hole and wriggle deep inside you to deposit the eggs. He releases a sing-song laugh and strokes your cheek. 'You should be proud. You make such an eager and enjoyable nest. You should return for more the next time I am with clutch.' While a tiny part of you is disturbed by what he has done and his power over you, your mind as a whole is lost in the sensation of being so full and at pleasing your beautiful, musical lover. With that, he takes to the air quickly, much lighter without the weight of his eggs and flies off among the rocks out in the coastal waters.";
	else if a random chance of 1 in 2 succeeds:
		now tempnum is 1;
		say "     Mounting you slowly, he sinks one of his cocks into you, making you moan as he stretches out your back door. His other cock is pressed between you both as he moves atop you, rubbing that thick, hard dick against your back and drooling precum onto you. He sings in your ear the whole while. Even with his lips at your ear, you can't make out the words, but you know them to be beautiful. You are filled with increasing pleasure as the well-hung male makes love to you for a long time, proving to be a skilled lover as his fingers and wings tease over your body as he seems to work those cocks at the perfect pace to fill you with ecstasy. Or that may just again be the song.";
	else:
		now tempnum is 2;
		say "     Mounting you slowly, he sinks one of his cocks into you, making you moan as he stretches out your back door. His other cock is wedged underneath you as he moves atop you, pressing his thick, hard dick against yours. He sings in your ear the whole while. Even with his lips at your ear, you can't make out the words, but you know them to be beautiful. You are filled with increasing pleasure as the well-hung male makes love to you for a long time, proving to be a skilled lover as his fingers and wings tease over your body as he seems to work those cocks at the perfect pace to fill you with ecstasy. Or that may just again be the song.";
	if tempnum is not 3:
		say "     It feels like hours that he's thrusting into you before finally you feel a large bulge at the base of his cock pressing into you. As it pops into you and starts sliding deeper and there is another one starting to push past your [if Player is female]pussy lips[else]anal ring[end if], you realize that they are eggs. You moan and wriggle beneath him as you feel those eggs sliding into you again and again, filling your [if Cunt Count of Player > 1]wombs[else if Cunt Count of Player is 1]womb and bowels[else]belly[end if]. While they're about the size of tennis balls, they feel much larger and you start orgasming again and again as you're stuffed with the siren's entire clutch. You are so full of warm eggs that your bloated belly presses against the ground[if tempnum is 2] with his second cock wedged beneath. That lower cock has been cumming the whole time, pumping out sticky juices during the whole egg-laying process[else if tempnum is 1]. With his upper cock pressed to your back, it has been cumming the whole time, pumping out sticky juices during the whole egg-laying process[else]. With both cocks stuffed inside you, the eggs alternate between them - as soon as one pops in one hole, another is pressing at the other[end if].";
		say "     When he finally pulls his [if Player is not female]cock[else]cocks[end if] free, he wipes his penises across your body and you can see that they had reshaped themselves to perfectly fit your [if Cunt Count of Player > 1]cunts and slide into your wombs[else if Cunt Count of Player is 1]cunt and ass to slide deep inside you[else]tight hole and wriggle deep inside you[end if] to deposit the eggs. He releases a sing-song laugh and strokes your cheek. 'You should be proud. You make such a lovely and enjoyable nest.' While a small part of you is disturbed by what he has done and his power over you, your mind as a whole is lost in the sensation of being so full and at pleasing your beautiful, musical lover. With that, he takes to the air quickly, much lighter without the weight of his eggs and flies off among the rocks out in the coastal waters.";
	say "     Still lost in the daze of the song and bloated with your lover's eggs, you struggle to make your way back to the sandy beach. You wander around in a haze for quite a while before you feel something shift inside you. Trying to hum the tune to the siren's song, you dig a hole above the tide line and push out the eggs, moaning in painful ecstasy with each golden egg that slips from you. Covering them back up with warm sand, you bury them and wander off. By the time your head clears, you have lost track of the nest and the full weight of how you were used, and how good it felt, strikes you as the song's enchantment fades away. You find a corner of your mind longing to hear that song again, regardless of the consequences[if Player is female], and also hoping you didn't manage to push them all out[end if].[ovichance]";
	if Player is not female, follow the sex change rule;
	if sirenfight > 1, decrease sirenfight by 1; [losing decreases resistance to the song]


to say beatthesiren:
	say "     The defeated siren shrieks angrily and flies off erratically to seek refuge among the sharp rocks out in the choppy waters. With the creature silenced, your head starts to clear and you are ready to continue on your journey soon enough. Having successfully resisted the siren, you feel a little more confident you could do so again.";
	increase sirenfight by 1; [Victory makes you more resistant to the song]


to say sirenattack:
	choose row MonsterID from the Table of Random Critters;
	if cha entry > charisma of Player - 10:
		let bonus be ( Charisma of Player - 10 ) / 2;
		let penalty be ( cha entry - 10 ) / 2;
		let dicedice be a random number from 1 to 20;
		if dicedice + bonus + sirenfight - penalty < 10:
			let tempnum be a random number between 1 and 4;
			decrease HP of Player by tempnum;
			decrease charcounter by tempnum;
			if charcounter < 1:
				now HP of Player is 0;
				say "     The siren's song drains the last of your will to fight and you collapse before it, submitting to the creature's beautiful melody as it knocks you to the ground.";
				continue the action;
			else:
				say "     As you continue to fight the siren, it continues to sing at you, clouding your mind and making it harder and harder for you to keep fighting. You take [special-style-2][tempnum][roman type] additional damage as your will to struggle is drained by the siren's song. It grows more difficult for you to continue to fight the creature. While dazed by the song, ";
		else:
			say "     As you continue to fight the siren, it continues to sing at you, but you manage to block it out and keep fighting. As you try to keep your head clear, ";
	if charcounter > 0:
		say "[one of]he swoops in and claws at you with his sharp talons![or]the siren emits a powerful shriek so loud and focused that you must clutch your hands over your ears![or]those sharp teeth dig into you painfully![or]he slams his hefty cocks against you, spurting his musky pre onto you![or]the siren banks agilely around behind you and slams his taloned feet into your back, slashing at you as he knocks you down![at random]";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Siren"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[sirenattack]";
	now defeated entry is "[beatthesiren]";
	now victory entry is "[losetosiren]";
	now desc entry is "[sirendesc]"; [ Description of the creature when you encounter it.]
	now face entry is "beautifully human, with lovely, feminine features and long, flowing hair. Hidden behind your luscious lips are a set of sharp, pointed teeth. Your voice has a musical quality to it whenever you speak";
	now body entry is "nearly human and quite lovely to behold. You have a pair white wings sprouting from the shoulder blades. Your wings are large and powerful, but not quite enough to allow you to fly. The entire appearance of your body is actually strangely attractive. Your arms and legs are slender and shapely human limbs, until you get to your feet. They like that of a bird of prey, with golden-brown scales and sharp talons";
	now skin entry is "beautifully smooth, pink and normal-looking human";
	now tail entry is "Your rear is strong and muscular with rounded hips and a firm, shapely rear.";
	now cock entry is "human-looking elastic";
	now face change entry is "a tingling feeling washes over your head, leaving it looking completely human. Your features are lovely and feminine, giving you a very attractive face. Your hair grows in long and blond, reaching down the length of your back. You exclaim as you realize that you've become more human, but are surprised when it comes out as musical song. Trying again, you find that anything you say has a musical quality to it";
	now body change entry is "your body feels very cold and strange. Your body reshapes itself, becoming thankfully human in appearance. You don't have much time to enjoy your regained normality before you are struck by an intense pain from your upper back. There is a wet, ripping sound as your skin is torn apart and two lumps push their way out. These lumps grow and change, forming into a pair of large wings, covered in white feathers, flapping wildly in your pain-induced panic. When you finally calm down, you feel yourself gaining control of them and feeling lighter overall. Your arms and legs have also become quite human in shape, though your feet have been replaced by a pair of avian feet, like those of an eagle or hawk";
	now skin change entry is "your skin becomes pink and human-like. It is beautifully smooth and free of blemishes, the kind cosmetic advertisements always promise, but even more lovely somehow";
	now ass change entry is "the change pours over your ass, shaping it into a firm and muscled rear with wide hips";
	now cock change entry is "your groin becomes strangely cold. When you glance down, worried at what may have become of it, you see your cock reshape itself to become human again! You can feel other, more unusual changes happening inside you and inside your balls. It seems they've begun to change as well, though you cannot tell how quite yet. You cannot be certain what is happening, but you do know that your genitals aren't quite human anymore, regardless of how your cock looks. You feel a growing urge in your mind to put your new penis to use filling someone with it, bloating their tummy with what's growing inside you";
	now str entry is 10;
	now dex entry is 18;
	now sta entry is 10;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 20;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 4; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Beach";
	now Cock Count entry is 2; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 18; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 2; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 18;
	now Cunt Tightness entry is 8;
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lovely[or]winged[or]slender[at random]";
	now type entry is "[one of]humanoid[or]siren[purely at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Endings

when play ends:
	if bodyname of Player is "Siren":
		if humanity of Player < 10:
			say "     As your infection takes over, your new instincts draw you to the seaside. You soon join the hidden aerie of the sirens among the sharp rocks.";
			if Player is male:
				say "     The changes deep within you reach full fruition and you can feel eggs growing within you, waiting to be deposited in warm nests. From the rocky spires, you sing out to anyone you find tantalizing, drawing them in with your mesmerizing song. After a long and pleasurable mating, you deposit your eggs into them. Doing this brings you a level of pleasure you've never known before. You always enjoy filling them to capacity, then watching them, still under the effects of your song, complete the eggs['] cycle by burying them on the warm beach to eventually hatch into new sirens for the aerie.";
				say "     When the soldiers come through, you and the others take particular pleasure in luring them in. Between your lovely voices and gorgeous, nearly-human bodies, they are easy prey. The particularly religious ones are the easiest targets of all, your almost angelic appearance and voices overwhelming them with awe. During that time, your colony grows greatly and siren flocks spread up and down the coast, singing their lovely song to draw in sailors to their doom. Their delicious, eggy doom.";
		else:
			say "     You make it through the ordeal in the city and are rescued by the military during their attempt at clean-up. Your predominantly human body receives little scrutiny and your enchanting, musical voice makes it much easier to handle the people there. While not able to overpower anyone with it, it does let you manipulate them a little. With a few well-timed comments and tuneful words, you keep them from examining your abdomen, where you can feel your changes continuing to progress.";
			if XP of Timothy < 3 and Gryphoness is tamed:
				say "     When the military came through, Denise was scared, but you managed to convince her to come with you and kept her close with you during that time. Once released, you are quick to combine your singing talents with hers, forming a powerful duet. Your alluring voice quickly draws in some talented musicians among the other infected you met at the military's camp to form the rest of your band. Denise quickly gets excited about this project and manages to get a small gig booked. With her lovely voice and your alluring tones to back her up, the band's popularity spreads quickly. Soon your group is drawing larger and larger crowds, with the novelty of a band made up entirely of those changed in the outbreak helping you get started before your unique musical abilities can win them over. The two of you are soon happier than ever as you travel around with the band, enjoying your new [if charisma of Player > 17]legendary[else if charisma of Player > 14]international[else]major[end if] success status. You both enjoy spending time together, both on and off the stage, and are happy to include with some of the band's groupies and die-hard fans as well when on tour.";
			else:
				say "     With your release, you use your musical voice to convince several musically talented people among the infected in the camp to form a band with you. Your alluring tones, coupled with the band's unique musical style and lyrics, helps your group's popularity spread quickly. Soon your group is drawing larger and larger crowds, with your promoter using the novelty of a band made up entirely of those changed in the outbreak to help spread the word during the initial wave of public curiosity and excitement over the event. After that initial novelty wears off, your enchanting voice has had its effect and your popularity remains. Your group has a great time as a new [if charisma of Player > 17]superstar[else if charisma of Player > 14]major[else]minor[end if] musical sensation that always keeps a steady level of fan interest. And the best part of this continued fame is the tours and all the fun you can have with the groupies and die-hard fans.";
			if Player is male:							[MALE/HERM]
				say "     During your many travels on tour, you take the opportunity to welcome groupies backstage or to the hotel for some post-show fun. Your inner changes, having reached completion, have given you an inner womb full of eggs which you merrily deposit into your adoring fans. Pushing those golden ova into others is an orgasmic pleasure for you and after the powerful exposure to your voice during the concert, they are easy prey and more than willing to take your eggs. You spread your eggs all across the country, stuffing a few into some fans in every city. Devoted to you, they protect and nurture their eggs after they push them out, raising the young sirens that hatch from them to spread your young all across the country.";
			else:									[FEMALE]
				say "     During your many travels on tour, you take the opportunity to welcome groupies backstage or to the hotel for some post-show fun. Your inner changes, having reached completion, have given you an inner womb full of eggs to be seeded. After being mated and pumped full of cum, you release the eggs with an orgasm of pleasure and bestow them to your adoring fan. After the powerful exposure to your voice during the concert, they are easy prey and more than willing to take your eggs. You spread your eggs all across the country, gifting some to fans in every city. Devoted to you, they protect and nurture their eggs, raising the young sirens that hatch from them to spread your young all across the country.";

Siren ends here.
