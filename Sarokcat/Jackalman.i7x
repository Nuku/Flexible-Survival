Jackalman by Sarokcat begins here.

"Adds a jackalman to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses


to say jackalman attack:
	say "'wow you got here how did that happen.'";
	wait for any key;
	if Player is male:
		say "yay";
		infect "Jackalman";
	else:
		say "yowza";
		infect "Jackalman";


To say jackalman loss:
	say "how the heck did you manage to get this, you are just that awesome I guess.'";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Jackalman";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She riddles you this and that till you cry.[at random]";
	now defeated entry is "[jackalman loss]";
	now victory entry is "[jackalman attack]";
	now desc entry is "The jackalman is watching you!!";
	now face entry is "narrow canine face, with a long sleek muzzle full of sharp teeth and a nicely flattened forehead, your golden eyes seem to take in every aspect of the world around you, as your sleek jackal ears swivel around on top of your head to catch the faintest noise. Your powerful jaws pull your lips back in a feral grin as you admire your new face"; [You have a (your text) face."]
	now body entry is "strong and powerful, nicely muscled with bestial digitigrade legs and jackal-like feet, your hands ending in sharp jackal-like claws. Your tough body displays your feral power for all to see, and is a perfect type of body for such a powerful jackal man like yourself"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a long, sleek jackal's tail attached to your rear, swaying happily over your thickly muscled ass in a predatory manner as you move."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canine[or]jackalman[or]jackal-like[or]knotted[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "as your mouth stretches and pushes forward in a massive yawning motion, the muscles reforming as it pushes out into a sleek black muzzle, while your eyes blur as they shift in both color and position, new sounds and smells explode through your enhanced senses as your new jackal's muzzle finishes forming and your ears finish shifting into proper canine ears, swiveling around on top of your head like a proper jackal's"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your shape changes and seems to grow slightly more powerful, the muscles moving around under the skin as it becomes both stronger and sleeker. You can feel your legs shift and change as well, causing you to stumble forward slightly as your heels seem to shift upwards on your legs, shifting your weight forward onto the balls of your changing feet as they shift into a more powerful predatory stance. Soon your feet finish changing and you find yourself balancing easily on your new jackal-like paws, as you stand on your new digitigrade jackal legs, and flex your new strong clawed hands"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "A soft tingling sensation spreads across your skin as soft, sleek, black jackal fur begins to push its way out of your body, swiftly covering your body in a sexy coat of thick dark fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a strange tingling sensation seems to come from your rear, as it tightens somewhat, then you can feel a strong pulling sensation as a thick black canine tail pushes out from your rear, lengthening until it is down past your knees before your new appendage is finished growing"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your shaft thins and changes, its tip tapering to a point while its base seems to swell up slightly before being covered in a soft black sheath of fur. Your balls tingle slightly as they swell with strongly fertile jackal seed"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 22;
	now dex entry is 18;
	now sta entry is 20;
	now per entry is 20;
	now int entry is 16;
	now cha entry is 28;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 100;
	now lev entry is 10;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 30;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Shop";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 9;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 9;
	now Cunt Tightness entry is 4;
	now libido entry is 30;  [ Amount player Libido will go up if defeated ]
	now loot entry is "";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]powerful[at random]";
	now type entry is "canine";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
	now resbypass entry is true;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


to jackalmanify:
	repeat with y running from 1 to number of rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Jackalman":
			now MonsterID is y;
			break;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [swap to allow infection...]
	infect;
	now non-infectious entry is true;  [...then close to prevent random infection]


when play ends:
	if BodyName of Player is "Jackalman":
		if humanity of Player < 10:
			if Player is male:
				say "Finally giving in to the dark primal urges within, you swiftly return to the shop in the mall, Nermine welcoming you back eagerly as you pin her to the counter, and fuck her again and again. She eagerly submits to your needs, your strong jackal-like body and male musk making you irresistible to the strange shopkeeper, as with every strong thrust of your canine cock you make her even more subservient to your will. Eventually sated, you enjoy looking around your new shop with amusement, while your new little jackal fucktoy licks your paws eagerly. An evil grin stretches across your jackal muzzle as you ponder all the amusement this store full of unusual treasures could bring you. You and Nermine quickly pack up her shop as the military close in, and she shows you how to change the location of the store, soon you are setting up in a lovely and unsuspecting college town. The foolish students are soon flocking to your store to buy all sorts of strange and unusual transformative trinkets, and you are more than happy to have your pet shopkeep sell them to them. The amusing sights of the people who fail to use the items carefully make you and Nermine laugh heartily, as you both begin to enjoy the game of seeing how badly your customers can misuse the items, enjoying their new forms immensely. Some few manage to 'win' by being careful and using their purchases responsibly, and those few you often give even nicer toys to as a reward, some of them you even reward personally by making them into your own personal pets. When the military comes to investigate the strange outbreak of infection in the town, they find your shop already gone, moved on to a new town already, and looking forward to a long and enjoyable existence with your lovely pet jackalwoman...";
			else:
				say "Finally giving in to your darker desires, you quickly head back to the strange shop and the shopkeeper you know so well. Nermine greets you eagerly as you return, and is soon on her knees before you like a good little submissive as you pet her head. You enjoy reveling in her submission for several moments, her body helpless to resist the strong urges you bring out in her, you are about to take her to the back room to enjoy your new pet fully, when the door jingles as someone walks in. You look around to see who it is, only to gasp as an amazingly arousing scent washes over you, making you feel both incredibly horny and submissive at the same time. 'Ah here you both are,' the jackal headed man from before says as he looks at the two of you with a grin on his muzzle. You find yourself moaning as you drop to your knees next to Nermine, realizing that that wonderful dominant scent is coming from the jackalman, making your pussy clench with a deep need that you know only he can fulfill.";
				say "Seeing your reaction, the jackal headed man grins as he pets you with one of his clawed hands, sending pleasure shooting through your body at his touch. 'Surely you didn't think I used all of that mixture on your little ankh?' he says in a teasing voice, 'Not when I have been waiting so very long to see this one on her knees before me like this?' the jackal man says as he gestures at Nermine. 'And now I get to have you too as a bonus,' he says in amusement. He takes your paw and Nermine's and leads you both into the back room. You find yourself almost wanting to protest as he pushes you both down onto the mattress, but his strong powerful scent, and dominant attitude soon has your body responding eagerly to his touches, as it goes into heat for this strong male jackal. He breeds both you and Nermine deep into the night, and for several days following, the two of you writhing underneath him in turn, as he fills you both up with his divinely amazing seed.";
				say "You are unable to resist his scent and touches as he masters your mind and tames your body to his touch, his soft suggestions of how a proper little jackal-woman should be settling into your mind like commands, as he ensures your obedience now and forever. Eventually he leaves the two of you lying there together in the back room of the shop, two well-fucked jackalwomen panting like animals. When the two of you eventually come back to your senses, you realize that you look just like Nermine does, and this fact seems to please you on some deep level, since your powerful mate likes you like this. Soon you and Nermine reopen the shop, the other jackalwoman being slightly submissive towards you still, even though you both know that you are really both pets for the more powerful jackalman. The shop open, you both take turns manning the counter, and selling all sorts of strange and unusual items to the unsuspecting populace outside the city, often amused at how they fail to read the instructions or take care when using dangerous transformative magic. Running the shop becomes more of a chore as you and Nermine both soon begin to show signs that your night with the wonderful Jackal man was productive, your bellies swelling large with his offspring. The feeling of his children growing in your belly makes you both smile eagerly as you wait for them to be born, looking forward both to the children themselves, but to his promises of the many more breedings to come...";
		else:
			if Player is male:
				say "When the rescue comes, you are ready and waiting for it, and while your new jackal man form disturbs some of the military who have come to rescue you, you are easily able to convince them you aren't a threat. Quickly released from military custody due to your persuasive ways and dominant manner, you soon begin looking around for your place in the outside world. Discarding most regular jobs as beneath you at this point, you begin picking up strange odd jobs, and hunting down rare items for your contacts. While not all of the items you retrieve for people may necessarily have been retrieved legally, you don't really mind, in fact that just makes it all the more challenging. Soon you are rather well off money wise, with a nice little collection of rare items of your own, and you stop taking jobs for just the money, demanding your clients service you in whatever manner you wish before you retrieve their items. Occasionally some of them try to evade your terms, especially the men, agreeing and then trying to talk their way out of it, these fools learn not to mess with you, as you demonstrate that even outside of the city, you still retain the ability to alter others forms. These clients quickly become your favorite pets, once transformed into submissive little jackal women for your pleasure, also serving as a lesson to others about trying to cheat you. Strangely enough, sometimes even the clients you only enjoy for several nights become so addicted to your jackal body they ask to join your harem of pets, and you certainly don't refuse them. You occasionally wonder how Nermine is doing in her shop that started it all, but for the most part are more than happy living your new life as a rich and powerful modern day lord...";
			else:
				say "When the rescue comes, you remember all you have learned from survival in the city and your time working with mysterious items, and use that knowledge to secure a number of valuable items from the city and smuggle them out when you are rescued. Once outside, you retrieve the unique and generally impossible to find items, and quickly open up a small shop of your own in a large city, advertising items from within the city to an elect clientele. Your business, while secret to most, is a booming success, selling the infectious samples of creatures from within the city to those who want to try being something more unusual. Though usually your items are purchased with the intent to turn someone else, usually a rival, into a little sexpet for the buyer, you don't generally care too much, although you always find it amusing when they forget to read the instructions and end up changing themselves instead. Your shop eventually gains a wider variety of items traded for or acquired from all over the world, many of them strange and unusual in their own ways. While you never quite manage to get as impressive a collection as the jackal-woman you first worked with, your shop soon becomes a close rival to her own, and you even begin to stock and carry items for the portion of the populace that can do 'special' tricks. Eventually trading with them for some simple tricks and enchantments on the shop itself, much like those on the shop you first encountered, and if your stock isn't as impressive yet, well you figure you have plenty of time to fix that, as you don't seem to be aging anymore either. You are definitely looking forward to a long and prosperous life of trading in unusual and strange things, and you especially look forward to those few fools who try to cheat or steal from your shop... they make such wonderful sexy pets after all...";

Jackalman ends here.
