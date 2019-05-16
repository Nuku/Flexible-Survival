Rubber Sneakers by Kernog begins here.

"Adds a rubber sneakers item for Flexible survival. The shoes are a trapped item, offering 100% escape chance against a progressive transformation, then raise of libido, then drop of humanity"

Section 1 - Object Declaration

Table of Game Objects (continued)
name	desc	weight	object
"rubber sneakers"	"Dark blue sport shoes made of a shiny rubbery material. A stylized feline figure is painted on the side."	2	rubber sneakers

When play begins:
	add "Rubber Puma" to infections of furry;
	add "rubber sneakers" to invent of Astroslide Field Locker-room;

rubber sneakers is a grab object.
rubber sneakers is equipment.
rubber sneakers is not temporary.
The plural of rubber sneakers is true.
The taur-compatible of rubber sneakers is false.
The size of rubber sneakers is 0.
The AC of rubber sneakers is 0.
The effectiveness of rubber sneakers is 0.
The placement of rubber sneakers is "feet".
The descmod of rubber sneakers is "You wear rubbery, dark blue sport shoes. Each step you take sends a small tingle throughout your body.".
The slot of rubber sneakers is "feet".

the scent of rubber sneakers is "The rubber sneakers smell mostly of rubber, with a faint hint of sweat.".

rubber sneakers is in Astroslide Field Locker-room.

Section 2 - Usage specifics

Instead of taking rubber sneakers:
	if Furry is banned or Furry is warded:
		say "     As you are about to pick the shoes, you notice the puma motif on the sides. The sight makes you have second thoughts, and you step away from the footwear.";
	else:
		say "     As you bend to pick up the pair of sport shoes, you notice that they are made of rubber. You have never seen footwear such as this. You pick them up and turn around, in order to ask whose shoes it is. The locker-room being in its usual state of chaotic orgy and football chatter, you abandon the idea and stash the shoes in your bag.";
		increase carried of rubber sneakers by 1;

Instead of using the rubber sneakers:
	if the rubber sneakers are equipped:
		if Doctor Matt is visible:
			say "     Doctor Matt stares at your shoes. 'This is a rather uncommon infection', he finally says, after studying your body extensively. 'It seems that the nanites infecting these shoes have integrated a defense mechanism, which explains why removing them is so difficult. Talking to me about it was a good call. Matt fetches a small pot filled with a yellow-green powder. 'You will make geiger counters scream for a few days, but your nanites will protect you from any lasting effect. I think. Anyway, try removing your shoes, now.'";
			say "     You do as asked, and grit your teeth, expecting another painful backlash. However, this time, the sneakers remove themselves, like an ordinary pair of shoes. 'Your current infection marks remain, but with their source gone, they will behave like any other strain and disappear when the next strain takes over,' the scientist explains. 'Just don't try and put on these shoes again.'";
			now the rubber sneakers are not equipped;
		else if Doctor Mouse is visible:
			say "     'Where did you find that?' Mouse asks excitedly, as soon as you bring the issue. 'This is quite mysterious. And exciting. Is a nanite colony living [italic type]in[roman type] the shoes? Is it a living species so infected it has transformed into shoes? A new parasitic species brought from the spread of the nanites. Oh, dear, so many things to...' The deadpan look you give the doctor makes him stop his monologue. 'I think I know what they need. Bear with me a moment.' Doctor Mouse prepares a syringe, and plants it into each of your feet. You wince as you feel the syringe prick you, despite the shoe. 'And done. Wait for a couple minutes, then try to remove them again.'";
			say "     You do as asked, and grit your teeth, expecting another painful backlash. However, this time, the sneakers remove themselves, like an ordinary pair of shoes. 'The rest of the infection will be overtaken by the other strains, in the usual ways. I can ask some of my nurses to help if you want,' the scientist says with a green. 'If you notice extra limbs sprouting from unusual places on your body, just come to see me again. I need the extra data on this experimental retro-nanite treatment.'";
			now the rubber sneakers are not equipped;
		else if Doctor Moffatt is visible:
			say "     'As much as I would like to help you remove these disgracious things from your feet, I am a [italic type]psychologist[roman type], not a physician,' Moffatt replies. 'Sorry.'";
		else if Doctor Utah is visible:
			say "     'What do you think I am? A shoemaker?' Doctor Utah hisses when you ask him for help. 'You should go find a medical doctor. If there's still one in this city, that is.'";
		else if Nermine is visible:
			say "     'Oh my, you brought me quite the item,' Nermine says, when you show her your rubber sneakers. 'I could remove them, yes. Yes... Just go sit on that chair and stay still. Good. Now, stretch your legs in front of you. Like that. Yes.' Nermine kneels in front of you, giving you a straight view into her cleavage. The jackal begins to rub your legs. She starts at your knees, then slowly goes down towards your feet. Several times, you cannot help but let a moan escape from your lips, as the massage is more than pleasurable in your state.";
			say "     Nermine's hands reach your feet. She massages your feet through the rubber, tracing forms between your toes and on your soles. You close your mind in content, when... 'Done.' You open your eyes in surprise. Nermine was indeed done, holding your sneakers in her hands with a soft smile. Your eyes go from the shoes to your now naked feet, in amazement. 'They simply needed some encouragement,' was her only answer, as she gives you back the shoes.";
			now the rubber sneakers are not equipped;
		else:
			say "     You reach down to your shoes and attempt to remove them. An intense burning sensation makes you stop right away, and it repeats with every new attempt. You realize that you are in trouble and will need help in order to remove these shoes. [bold type]You need to go to a medical doctor, or a person knowledgeable in these kinds of items, and try to remove these rubber sneakers with them around[roman type].";
	else:
		repeat with z running through equipped equipment:
			if slot of z is "feet":
				say "     [bold type]Your [z] is in the way![roman type][line break]";
				continue the action;
		if (bodyname of Player is listed in infections of TaurList or bodyname of Player is listed in infections of NoLegList):
			say "     [bold type]Sadly, the rubber sneakers are incompatible with your body type![roman type][line break]";
			continue the action;
		else:
			say "     [one of]As you ponder putting the shoes on, you have a bad feeling about this[or]You remember how useful, yet dangerous these shoes can be[stopping]. [bold type]Should you really put them on?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - What's the worst that could happen?";
			say "     ([link]N[as]n[end link]) - Better listen to your instinct.";
			if Player consents:
				say "     You put the rubber sneakers on. [one of]The shoes are surprisingly comfortable. Your feet feel warm, comfortable and, most of all, so light. Your mind fill with confidence. As you take a few steps, you feel small tingles going up your legs. Is it because you need to get used to them? At least it does not feel uncomfortable or painful. Actually, it feels quite pleasurable.[or]The pleasurable tingles come back as soon as you take a few steps in your rubbery footwear.[stopping]";
				say "     [bold type]With these rubber sneakers on, you feel like you can outrun anything.[roman type]";
				now the rubber sneakers are equipped;

Section 3 - Everyturn rule

an everyturn rule:
	if the rubber sneakers are equipped:
		if skinname of Player is not "Rubber Puma":
			say "     The tingles coming from your rubber shoes, which you got used to until now, suddenly peak. You get goosebumps, while the rubber quickly spreads over your entire body, save your face. The goosebumps are then replaced by the comfortable warmth of dark blue rubber clinging to your body, and having you lose your [skinname of Player] skin.";
			now skinname of Player is "Rubber Puma";
			now skin of Player is "shiny black";
		else if cockname of Player is not "Rubber Puma":
			say "     A sudden pang of pain in your genital area makes you double over. The pain recedes as fast as it came and, when you remove your hands from your crotch, you feel changed[if Player is male]. Your [cockname of Player] cock[smn] changed into a single human-sized, feline-shape rubber penis, which quickly retracts, barbs and all, into a smooth and shiny latex sheath[end if][if Player is female]. A quick prodding of your cunt[sfn] indicates you that the rubber slipped inside, covering your entire vagina with very sensitive latex[end if].";
			now cockname of Player is "Rubber Puma";
			now cock of Player is "feline";
			if Cock Count of Player > 1:
				now Cock Count of Player is 1;
			if Cock Count of Player is 1:
				now Cock Length of Player is 7;
				now Ball Size of Player is 5;
		else if tailname of Player is not "Rubber Puma":
			say "     This time, the tingles focus on the small of your back, then your coccyx. A long blue tail sprouts out. A flexible rubbery tube, which feels like a natural part of your body, as the electric tingles running back to your brain tell you as soon as you grab it.";
			now tailname of Player is "Rubber Puma";
			now tail of Player is "thin, long and rubbery.";
		else if bodyname of Player is not "Rubber Puma":
			say "     Your body shifts and changes. You feel your body become a little smaller and more flexible. Muscles grow all over the place, especially on your thighs, giving you legs made for running. Overall, you take a more feline stance.";
			now bodyname of Player is "Rubber Puma";
			now body of Player is "slim and flexible, akin to a feline";
			attributeinfect;
		else if facename of Player is not "Rubber Puma":
			say "     The rubber suddenly creeps up to your head and closes around it. The substance melds with your skin, then your skull, which shapes into a puma head. You palp it, and realize that it is entirely made of rubber, even your teeth. The need for running begins to addle your mind.";
			now facename of Player is "Rubber Puma";
			now face of Player is "feline, and in the distinctive shape of a puma";
		else:
			say "     The rubber puma infection, having spread to your entire body, now starts to affect your mind, and sexually stimulates you. [bold type]Your libido increases.[roman type]";
			LibidoBoost 20;
			if Libido of Player > 100:
				say "     The arousal becomes too strong for you to resist. Abiding to the stimulation of the sneakers, you keep walking, hoping to orgasm quickly. But this is not enough stimulation for the shoes, which keep you tantalizingly in the edge. Groaning, you cede and begin to jog at a brisk pace. The tingles raise in intensity, until it feels like your [if Player is male]cock[smn] [ismv][else]cunt[sfn] [isfv][end if] covered with electrodes, shocking you each time one of your feet hits the ground. You unconsciously run faster and faster, until a final stride manages to make you go. You arch your back and roar in orgasmic joy as you cum hard, splashing the floor under and in front of you with your sexual fluids. You eventually stop to feel the need to run, and stop your jogging. While you get your breath back, you look back, and can only admire the long trail you made during your climax.";
				SanLoss 15;
				now Libido of Player is 20;

Section 4 - Endings

when play ends:
	if bodyname of Player is "Rubber Puma":
		if humanity of Player < 10:
			say "     Having never found a way to remove the infected sneakers (or tried to), you succumb, body and mind, to the Rubber Puma infection. You elude the military countless times, thanks to your extraordinary athletic abilities, until your very existence becomes an urban legend. Soon, every jogger and sportsman of the area know of the Rubber Puma. They say that, if you run or exercise alone, during the night, the Puma chases you. [subjpro_cap of Player] outruns you; [subjpro of Player] always do. Then, [subjpro of Player] molests you all night, before leaving by your body a pair of rubber sport shoes. They say that those who choose to wear these shoes never come back.";
		else:
			say "     The infected rubber sneakers forced you to remain trapped in the form of a Rubber Puma. Fortunately, you managed to remain in control of your sanity, thanks to a careful planning of your physical efforts, convincing the military to let you go, under surveillance. During a particularly intense session on your treadmill, you discover that your rubber body begins to exude pools of latex which quickly reforms as new pairs of sport shoes. This gives you a great idea, and you rush to your phone, to make some calls to your bank. Several months later, 'Rubber Pumas' become the new fashion among youngsters and sportsmen alike. Most of your sells comes from your microwaved line, which presents no risk of infection, but you let slip, from time to time, 'original' versions, which sell for gold on the black market, ensuring that your company a steady flow of money from 'thankful' investors.";

Section 5 - Creature Insertion

[The Rubber Puma is not an enemy proper (yet), but I leave the code there for the infection]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Rubber Puma"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "feline, and in the distinctive shape of a puma";
	now body entry is "slim and flexible, akin to a feline";
	now skin entry is "shiny black";
	now tail entry is "thin, long and rubbery.";
	now cock entry is "feline";
	now face change entry is "rubber suddenly creeps up to your head and closes around it. The substance melds with your skin, then your skull, which shapes into a puma head. You palp it, and realize that it is entirely made of rubber, even your teeth. The need for running begins to addle your mind";
	now body change entry is "your body shifts and changes. You feel your body become a little smaller, and more flexible. Muscles grow all over the place, especially on your thighs, giving you legs made for running. Overall, you take a more feline stance";
	now skin change entry is "you get goosebumps, while the rubber quickly spreads over your entire body, save your face. The goosebumps are then replaced by the comfortable warmth of dark blue rubber clinging to your body, and having you lose your [skinname of Player] skin";
	now ass change entry is "a long blue tail sprouts out. A flexible rubbery tube, which feels like a natural part of your body, as the elecritc tingles running back to your brain tell you, as soon as you grab it";
	now cock change entry is "a sudden pang of pain in your genital area makes you double over. The pain recedes as fast as it came and, when you remove your hands from your crotch, you feel changed. Your [cockname of Player] cock[smn] changed into a single human-sized, feline-shape rubber penis, which quickly retracts, barbs and all, into a shiny smooth latex sheath";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 16;
	now int entry is 16;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 38; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 3; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 7; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 4; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 3; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 8;
	now libido entry is 75; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]shifting[or]malleable[or]ever-changing[at random]";
	now type entry is "humanoid";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 2; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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


Rubber Sneakers ends here.
