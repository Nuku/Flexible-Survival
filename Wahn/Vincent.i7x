Version 1 of Vincent by Wahn begins here.

Table of GameCharacterIDs (continued)
object	name
Vincent	"Vincent"

Vincent is a man.
ScaleValue of Vincent is 3. [human sized]
Body Weight of Vincent is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Vincent is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Vincent is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Vincent is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Vincent is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Vincent is 4. [length in inches]
Breast Size of Vincent is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Vincent is 2. [count of nipples]
Asshole Depth of Vincent is 14. [inches deep for anal fucking]
Asshole Tightness of Vincent is 4. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Vincent is 1. [number of cocks]
Cock Girth of Vincent is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Vincent is 8. [length in inches]
Ball Count of Vincent is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Vincent is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Vincent is 0. [number of cunts]
Cunt Depth of Vincent is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Vincent is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Vincent is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Vincent is false.
PlayerRomanced of Vincent is false.
PlayerFriended of Vincent is false.
PlayerControlled of Vincent is false.
PlayerFucked of Vincent is false.
OralVirgin of Vincent is false.
Virgin of Vincent is true.
AnalVirgin of Vincent is false.
PenileVirgin of Vincent is false.
SexuallyExperienced of Vincent is true.
TwistedCapacity of Vincent is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Vincent is false. [steriles can't knock people up]
MainInfection of Vincent is "Orc Breeder".
Description of Vincent is "[VincentDesc]".
Conversation of Vincent is { "Mew!" }.

instead of sniffing Vincent:
	say "     Vincent has a slightly animalistic scent of clean fur.";

to say VincentDesc:
	say "     Vincent is a an anthro fox with a wiry frame, wearing a black sleeveless t-shirt with some band's colorful logo printed on the front, as well as a somewhat ragged pair of jeans to cover his slender legs. Being clearly built more for speed than any great amount of strength, he must have found it a challenge to survive in a city turned feral, with all sorts of monstrous and brutish beings battling it out on the streets day by day. He has a sly look to him, with attentive eyes carefully observing his surroundings, but sometimes all the cunning in the world can't save you, as evidenced by the fact that you first met him as a captive of three orc brothers...";
	say "     As Vincent notices your intense gaze upon him, he gives you a two-finger salute, combined with a friendly smirk on his muzzle. The scrappy fox knows to give you an appropriate level of respect to the person who saved him from a future as an orc slave, and who's now giving him refuge.";

instead of conversing the Vincent:
	if FaceName of Player is "Orc Warrior" and player is pure:
		say "     Seeing your orc warrior self approach, Vincent reflexively tenses up a little, but he quickly catches himself and shakes his head to dispel the memory of his capture at the hands of green-skinned brutes. With a slightly embarrassed expression, he blows out the breath he was holding, then puts on a friendly smile as he asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	else if FaceName of Player is "Orc Breeder" and player is pure:
		say "     Seeing you approach, Vincent lets an appreciative gaze wander up and down your body, then asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	else:
		say "     Seeing you approach, Vincent gives you a friendly nod, then asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	wait for any key;
	say "[VincentTalkMenu]";

to say VincentTalkMenu:
	say "     [bold type]What do you want to talk with Vincent about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about him";
	now sortorder entry is 1;
	now description entry is "Let him tell you about himself";
	[]
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Talk about him"):
					say "[VincentTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the slender fox, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say VincentTalk1: [ask about him]
	say "     As you ask the fox about himself, Vincent blows out a breath and half raises his arms in a shrug. 'You wanna hear more about me? I'm nothing special really... just your average 22 year old guy from northeast in the desert. Hah, my home town is literally called 'wilderness' in Spanish. Nothing much to see there - its all dry, dusty and baking in the heat of the sun. Hell of a place to grow up in, with just a few houses and fuck-all around, I can tell you that. Got so bored off my gourd that I even was a boy-scout for a few years as a kid - so yeah, I can tell you which cactus you can eat (most you can't), and to keep the fuck away from scorpions, got the badges to prove it, hah!' With a sardonic chuckle, Vincent mimes a crawling arachnid with one hand while gripping his wrist with the other, raising one finger as a mock [']stinger[']. 'I had one as a pet, you know. Not that I was allowed to keep it in the house, it just kinda... lived under a rock behind our garden. But I fed it and watched it molt and all.'";
	say "     'Anyways I got the fuck out of that town as soon as I could, came to the coast to go to college. Dropped out in the third year, then got a job downtown as a clothing store attendant last Fall.' Rolling his eyes, Vincent grumbles, 'Manning the retail trenches during Black Friday is just the worst! I was slapped, twice, by rabid shoppers! Really made me wish I'd kept some of those venomous creepy crawlies from back home. To throw them at the bitches!' Baring his fangs, he seems to imagine someone running away screaming, then chuckles and turns his attention back to you. 'Anyways, a job's a job, so you learn to smile and bear it... long hours, rude customers, picking up all sorts of stuff they dump on the ground if they don't like it, all that jazz. So yeah, that's what I was doing when this whole thing started. Putting away some of the not quite current fashion trends. Had this vintage, really gaudy vest in my hands, trimmed with red fur. Didn't really think it was real as the label was claiming, but... well, moments later I started transforming into this. Guess I should be thankful that that designer actually went with a red animal, and didn't just color some rodent fuzz red.'";
	WaitLineBreak;
	say "     While slowly shaking his head, Vincent looks down at his hand and arm, then strokes a finger over the fur covering it. 'So thanks to my poor foxy compatriot, not that I ever knew him in life, I guess I'm a real life furry now. Never thought I'd get into that stuff, but then... life isn't actually so bad, as an animal person. Fur's pretty nice, and I dig the tail. Of course, life's still got its upsides and downsides. Less snooty bitches these days, more rampaging orcs. But you gotta do what you have to survive. Things were mostly going my way, until... you know. And then you saved my bacon, so that worked out alright too, eh?' Giving you a friendly smile, the fox winks appreciatively.";

[
Scene Idea:
Player arrives at the library and sees Vincent talking to someone (making a deal of getting some weed for a BJ). Multi choice point of:
- Walking up and saying hello (and the dealer runs off)
- Standing back and watching what happens (V and dealer go to an alley - option to follow and watch the BJ)
- Ignore this and anything of the kind.

Followup talk options with V:
- Player would prefer nothing of this sort while V lives at the Library
- You're fine with things, but he should be discreet (no further visibility to the player, but stuff goes on)
- You're totally fine with it. Might be hot to watch too.
]

Instead of fucking the Vincent:
	if (lastfuck of Vincent - turns < 2):
		say "     Vincent puts a hand on your chest to hold you back and says, 'Please, I need a break for a moment, okay?";
	else:
		say "[VincentSexMenu]";

to say VincentSexMenu:
	setmonster "Orc Breeder";
	LineBreak;
	project the Figure of OrcBreeder_random_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 1;
		now description entry is "Take the orc breeder's ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 2;
	now description entry is "Slide yourself down on the orc breeder's cock";
	[]
	Sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck his ass"):
					say "[VincentSex1]";
				if (nam is "Ride his cock"):
					say "[VincentSex2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc breeder, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say VincentSex1: [fucking him]
	say "     Stepping up to Vincent, you put your arms around him and grope the firm, round cheeks of his butt. The orc breeder moans deeply as you touch him, leaning in against you with the eagerness of a true submissive, his own cock quickly hardening to press against your stomach. Pulling his cheeks apart, you rub a finger up and down the orc's crack, teasingly stroking over his pucker before pushing in. Vincent's muscle yields readily to your invasion, well-used to such treatment by now - as becomes apparent when you feel the wetness of cum around your probing digit. Seems like the panting breeder already got fucked by his masters today, and likely more than once. You continue to finger him for a while, delighting in the little gasps and groans you can make him do, then tell him to get on the padded bench in the middle of the cell.";
	say "     Giving a reflexive 'Yes [master],' Vincent immediately obeys, quickly stepping over to the fuck-bench and lying down on it lengthwise on his back. Then he raises and spreads his legs, holding them open so you have full access to his oh so fuck-able butt. You take a moment to savor the sight of this strong and muscular yet totally submissive orc presenting himself to you, idly dropping your gear and clothes as you do so. After the last piece of cloth falls to the ground, you do what seems natural, stepping up to the enticing breeder to rub your hard cock over his waiting hole. Vincent gives a needy moan as you brush against him, then gasps 'Yeah, fuck me. I need it!' as you push forward and sink your manhood into his welcoming depths.";
	WaitLineBreak;
	say "     It's amazing how tight the orc's cum-lubed hole is around your shaft, given that Vincent is constantly getting fucked by his masters['] thick cocks. Might be that he's just a natural at bottoming or maybe part of the whole orc breeder infection - not that you care that much about which it is currently, being balls-deep inside him and running your hands over Vincent's muscled chest and abs. After stroking down over his stomach, you give Vincent's own hard cock a few strokes, then put your hands on his hips, gripping him tightly. Then you pull your cock out almost all the way and start fucking him with deep and hard strokes, filling the cell with slapping noises as you pound against his butt.";
	say "     Vincent just takes everything you can give, even moaning to take him ever faster and harder, while at the same time flexing his inner muscles to grip and squeeze your thrusting shaft for maximum pleasure. Getting a good ass-fucking drives the eager orc breeder over the edge before much longer, almost shouting 'Just like that, yeah, YEAH - aahhh - I'm coming!' as his cock sprays a pretty hefty load of cum all over his chest. His inner muscles twitch and flex with each shot of seed erupting from Vincent's cock, giving you all new stimulating sensations as you move in and out of him. Just a moment later, you reach the climax of your arousal and come, filling the orc's insides with spurt after spurt of your warm seed.";
	WaitLineBreak;
	say "     After that, the slutty little orc breeder just stays lying on the bench, enjoying the afterglow of his orgasm and the full feeling you gave him. You on the other hand go and grab your gear and clothes to get dressed, as you don't have the time to lounge around all day like this kept slave.";
	NPCSexAftermath Vincent receives "AssFuck" from Player;
	infect "Orc Warrior";

to say VincentSex2: [riding him]
	if Player is female:
		say "     Stepping up to Vincent, you put your arms around him and grope the firm, round cheeks of his butt. The orc breeder moans deeply as you touch him, leaning in against you with the eagerness of a true submissive, his own cock quickly hardening to press against your stomach. Pulling his cheeks apart, you rub a finger up and down the orc's crack, teasingly stroking over his pucker before pushing in. Vincent's muscle yields readily to your invasion, well-used to such treatment by now - as becomes apparent when you feel the wetness of cum around your probing digit. Seems like the panting breeder already got fucked by his masters today, and likely more than once. You continue to finger him for a moment longer, delighting in the little gasps and groans you can make him do, then switch over to his front and take hold of the orc's hard cock. After stroking the thick piece of man-meat a few times and cupping Vincent's full balls, you tell him to get on the cot at the back of the cell.";
		say "     Giving a reflexive 'Yes [master],' Vincent immediately obeys, quickly walking over to his bed and lying down on his back. Then he raises and spreads his legs, holding them open so you have full access to his oh so fuck-able butt. You take a moment to savor the sight of this strong and muscular yet totally submissive orc presenting himself to you, idly dropping your gear and clothes as you do so. But after the last piece of cloth falls to the ground, you surprise Vincent by ordering him to lower his legs and climbing on the bed to kneel over his body, your legs left and right of his hips. The orc breeder's eyes go wide as you reach down to find his cock, holding it straight up as you lower your hips bit by bit. Vincent pants in need as his erection presses against your nether lips, then sinks inside between them. He gasps 'Yeah, feels so good. Thank you!' as you impale yourself fully on his shaft, gripping it tightly with your inner muscles.";
		WaitLineBreak;
		say "     It's amazing how quickly the usually so submissive orc breeder starts to get into thrusting up against you hard and deep. Might be that it's all his pent-up urges from just bottoming all the time or maybe there's a bit of his old self Vincent left in there somewhere - not that you care that much about which it is currently, riding Vincent's shaft and gasping as he hammers into you from below. You just lean back, enjoying the thorough fucking you're getting while supporting yourself with both hands gripping Vincent's legs.";
		say "     The lithe orc breeder really knows what he's doing, rotating his hips a bit to give you all kinds of great sensations and often hitting your g-spot. Well, as often as he gets fucked, he almost has to know all the tricks by now. Vincent keeps fucking you with admirable stamina for quite a while, then finally his moans rise in volume and urgency and his thrusts get faster and faster. Not much later, he almost shouts 'Yeah, YEAH - aahhh - I'm coming!' as his cock blasts a hefty load of cum deep into you. Getting bred by the green-skinned slave and feeling his cock pulse inside you was the last little push you yourself needed to get off, so you join him in orgasm only a second later.";
		WaitLineBreak;
		say "     Sinking down to sit on Vincent's hips with his cock still inside you, you lean forward and kiss him, then just lie on the bed for a while, basking in your orgasms afterglow together. You wish you could stay like this for some more time, but eventually you have to get back to the tricky business of surviving in this chaotic city...";
		NPCSexAftermath Player receives "PussyFuck" from Vincent;
	else:
		say "     Stepping up to Vincent, you put your arms around him and grope the firm, round cheeks of his butt. The orc breeder moans deeply as you touch him, leaning in against you with the eagerness of a true submissive, his own cock quickly hardening to press against your stomach. Pulling his cheeks apart, you rub a finger up and down the orc's crack, teasingly stroking over his pucker before pushing in. Vincent's muscle yields readily to your invasion, well-used to such treatment by now - as becomes apparent when you feel the wetness of cum around your probing digit. Seems like the panting breeder already got fucked by his masters today, and likely more than once. You continue to finger him for a moment longer, delighting in the little gasps and groans you can make him do, then switch over to his front and take hold of the orc's hard cock. After stroking the thick piece of man-meat a few times and cupping Vincent's full balls, you tell him to get on the cot at the back of the cell.";
		say "     Giving a reflexive 'Yes [master],' Vincent immediately obeys, quickly walking over to his bed and lying down on his back. Then he raises and spreads his legs, holding them open so you have full access to his oh so fuck-able butt. You take a moment to savor the sight of this strong and muscular yet totally submissive orc presenting himself to you, idly dropping your gear and clothes as you do so. But after the last piece of cloth falls to the ground, you surprise Vincent by ordering him to lower his legs and climbing on the bed to kneel over his body, your legs left and right of his hips. The orc breeder's eyes go wide as you reach down to find his cock, holding it straight up as you lower your hips bit by bit. Vincent pants in need as his erection presses against your waiting hole, then sinks inside as your pucker yields to his member. He gasps 'Yeah, feels so good. Thank you!' as you impale yourself fully on his shaft, gripping it tightly with your inner muscles.";
		WaitLineBreak;
		say "     It's amazing how quickly the usually so submissive orc breeder starts to get into thrusting up against you hard and deep. Might be that it's all his pent-up urges from just bottoming all the time or maybe there's a bit of orc warrior sexual dominance even in the most docile breeder - not that you care that much about which it is currently, riding Vincent's shaft and gasping as he hammers into you from below. You just lean back, enjoying the thorough fucking you're getting while supporting yourself with both hands gripping Vincent's legs.";
		say "     The lithe orc breeder really knows what he's doing, rotating his hips a bit to give you all kinds of great sensations and often hitting your prostate. Well, as often as he gets fucked, he almost has to know all the tricks by now. Vincent keeps fucking you with admirable stamina for quite a while, then finally his moans rise in volume and urgency and his thrusts get faster and faster. Not much later, he almost shouts 'Yeah, YEAH - aahhh - I'm coming!' as his cock blasts a hefty load of cum deep into you. Getting bred by the green-skinned slave and feeling his cock pulse inside you was the last little push you yourself needed to get off, so you join him in orgasm only a second later[if Player is male]. Your [Cock of Player] cock twitches and jerks as your body trembles in pleasure, spraying your own creamy load all over Vincent and the bed[end if].";
		WaitLineBreak;
		say "     Sinking down to sit on Vincent's hips with his cock still inside you, you lean forward and kiss him, then just lie on the bed for a while, basking in your orgasms afterglow together. You wish you could stay like this for some more time, but eventually you have to get back to the tricky business of surviving in this chaotic city...";
		NPCSexAftermath Player receives "AssFuck" from Vincent;
	infect "Orc Breeder";

Vincent ends here.
