Version 1 of Bernard by Prometheus begins here.

[Blanche's fourth son. Steady]

[   hp of Bernard - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]

FamilyMealCooldown is a number that varies. FamilyMealCooldown is usually 0.

[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Courtyard: [Bernard]
				say "     [bold type]As Bernard walks out of the library, fresh back from scavenging, his eyes light up upon seeing you and he runs over to hug you, only parting when Sturm and Lumi call him over to begin sparring.[roman type][line break]";
			if Player is in Grey Abbey 2F: [Maeve]
				say "     [bold type]Maeve waves upon seeing you as she reaches the top of the stairs, smiling at you as she goes to snuggle with Blanche.[roman type][line break]";
			move Bernard to Courtyard;
			move Maeve to Grey Abbey 2F;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Courtyard:
				say "     [bold type]Bernard, sweating profusely from the sparring session, tells you that he is going to the bunker to shower, the scent lingering for a moment as he leaves.[roman type][line break]";
			else if Player is in Bunker:
				say "     [bold type]You can smell the sweat on Bernard as he arrives, the large wolf waving to you before moving towards the showers. It doesn't take him long to return and join the discussion with Ernest and Maeve.[roman type][line break]";
			move Bernard to Bunker;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Bunker:
				say "     [bold type]Having to go and prepare breakfast for his family, Bernard leaves the room, inviting you to come and join them in the break room.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Bernard immediately moves to start up his gas cooker, aware that soon a tide of white fluff will appear for breakfast.[roman type][line break]";
			move Bernard to Breakroom;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Breakroom:
				say "     [bold type]Carefully stowing his cooker for later, Bernard moves towards the door. He hugs you before he leaves, telling you that he is going to the computer room.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Bernard enters the computer room, giving you a wide smile before moving over to join his family in cocconing themselves in blankets.[roman type][line break]";
			move Bernard to Computer Lab;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Computer Lab:
				say "     [bold type]With it being lunch time, Bernard hauls himself to his feet and walks towards the door, inviting you to come and join him in the break room.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Bernard puts on an apron with [']Lick the Cook['] written on it before readying his gas cooker for lunch.[roman type][line break]";
			move Bernard to Breakroom;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Breakroom:
				say "     [bold type]Carefully stowing his cooker for later, Bernard moves towards the door. He hugs you before he leaves, telling you that he is going to the library.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Appearing from towards the breakroom, Bernard gives you a hug before being dragged off by Wendis, her box of magic tricks in her other paw.[roman type][line break]";
			move Bernard to Grey Abbey Library;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Grey Abbey Library:
				say "     [bold type]Eager to prepare dinner for his family, Bernard hurries towards the breakroom, giving you quick hug as he passes by.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Bernard gives a quick hug as he appears in the room before moving on to light his cooker and check to see what food is available for dinner.[roman type][line break]";
			move Bernard to Breakroom;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if Player is in Breakroom:
				say "     [bold type]Carefully stowing his cooker for later, Bernard moves towards the door, telling you that he and Maeve are going out scavenging.[roman type][line break]";
			move Bernard to Nowhere;
	else if Charisma of Blanche > 0:
		if hp of Bernard is 0:
			now hp of Bernard is 1;
			move Bernard to Breakroom;

An everyturn rule:
	if FamilyMealCooldown > 0:
		decrease FamilyMealCooldown by 1;


Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Bernard	"Bernard"

Bernard is a man.
ScaleValue of Bernard is 4. [human sized]
Body Weight of Bernard is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Bernard is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Bernard is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Bernard is 12.
Mouth Circumference of Bernard is 3.
Tongue Length of Bernard is 12.
Breast Size of Bernard is 0.
Nipple Count of Bernard is 2.
Asshole Depth of Bernard is 10.
Asshole Tightness of Bernard is 2.
Cock Count of Bernard is 1.
Cock Girth of Bernard is 4.
Cock Length of Bernard is 10.
Ball Count of Bernard is 2.
Ball Size of Bernard is 3.
Cunt Count of Bernard is 0.
Cunt Depth of Bernard is 0.
Cunt Tightness of Bernard is 0.
Clit Size of Bernard is 0.
[Basic Interaction states as of game start]
PlayerMet of Bernard is false.
PlayerRomanced of Bernard is false.
PlayerFriended of Bernard is false.
PlayerControlled of Bernard is false.
PlayerFucked of Bernard is false.
OralVirgin of Bernard is true.
Virgin of Bernard is true.
AnalVirgin of Bernard is true.
PenileVirgin of Bernard is true.
SexuallyExperienced of Bernard is false.
TwistedCapacity of Bernard is false.
Sterile of Bernard is true.
MainInfection of Bernard is "".
Description of Bernard is "[BernardDesc]".
Conversation of Bernard is { "Woof grrr" }.
The scent of Bernard is "     Bernard smells of sweat and junk food, evidence of his dual past times of eating and working out."

to say BernardDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Bernard] <- DEBUG[line break]";
	if hp of Bernard is 1:
		say "     Bernard is an anthropomorphic male wolf with bushy white fur covering his large form. Thick from head to paw-tip, he is very fond of eating, evidenced by his protruding gut and remains of crumbs on his chin. Despite this, he is likely the most physically strong of Blanche's brood due to the amount of time that he spends working out and exerting himself while scavenging, resulting in an impressive balance between muscle and fat across is hulking frame. Were his siblings not quicker on their feet, you wonder how well they might do in their play fights were he to capture them in a grapple. They may not even want to leave were they to inhale the scent of his sweat for too long. Proud of his body and just as unashamed of it as the rest of his family, he rarely wears clothing, leaving his girthy sheath and fuzzy scrotum on display to any that may wish to admire it.";
		say "     Some instinctual feeling of being watched makes Bernard turn towards you, the herculean wolf smiling and waving to you. While he may be physically blessed, his intellect and common sense are sometimes found lacking, especially when compared to the likes of Ernest. Fortunately, his sister Maeve looks out for him, at least when she isn't taking advantage of his trusting nature for her own ends, the two of them sharing a strong bond despite their differences. While he doesn't wield much authority personally, he is close with all of his siblings, his heart just as large as his muscles if not larger. Sometimes you wonder if he is a wolf or just a very muscular puppy.";

[Character Notes - Bernard:

Species: Canine (Wolf)
Gender: Male
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Musk
- Foodplay
- Sleep-walking Sex
]

Section 2 - Talking

instead of conversing the Bernard:
	if "First Talk" is not listed in Traits of Bernard:
		say "     Hello [BlancheMommyDaddyTitle]! Bernard says as he engulfs you in the soft confines of his customary bear-hug, the scents of the seasonings he tends to use when cooking or baking wafting from his fur to tickle your nose. The fragrant smells causes you to nuzzle into his fur in an attempt to figure what exactly you are smelling. Bernard begins to laugh heartily from the tickilish sensation as he says 'I'm glad to know that mommy and my siblings aren't the only ones to enjoy my cooking hobby, though I'm sorry that I didn't manage to save anything from the meal earlier. Considering that you are always out you probably never get to eat properly cooked meals, next time for sure I will give you a taste of eating a home-cooked meal surrounded by family.'";
		TraitGain "First Talk" for Bernard;
	else:
		say "[BernardTalkMenu]";

to say BernardTalkMenu:
	say "     What do you wish to talk about with the bulky white wolf?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Small Talk";
	now sortorder entry is 1;
	now description entry is "Have an idle conversation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 2;
	now description entry is "Boop Bernard on the nose";
	[]
	if Bernard is in BreakRoom and Charisma of Blanche > 3 and FamilyMealCooldown is 0:
		choose a blank row in table of fucking options;
		now title entry is "Family Meal";
		now sortorder entry is 3;
		now description entry is "Join the family in a meal (Once per day)";
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
				if (nam is "Small Talk"):
					say "[BernardTalk1]";
				if (nam is "Boop"):
					say "[BernardTalk2]";
				if (nam is "Family Meal"):
					say "[BernardTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Bernard looks about to say something before shaking his head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BernardTalk1: [Small Talk]
	say "     '[one of]Could you keep an eye out for any seasonings in the city? They really help with my cooking and I really enjoy collecting them for their aroma as well as their taste[or]I'm happy that Mommy and all my siblings seem to love my cooking ability. Though Mommy seems to like reminding me to exercise to keep up with my culinary crusade[or]I read in a book that somewhere in the world people greet each other with a kiss, though Bianca said that nowadays many greet each other with sex instead[or]Life never seems to be stuck in a rut with Maeve around, though some of her plans tend to be... incredibly adventurous[or]If you ever want to join me cooking or to exercise, I'd be more than happy to accommodate you. Though I hope you don't mind the smell[at random].'";

to say BernardTalk2: [Boop]
	say "     The way that Bernard looks as he revels in your incoming attention reminds you of a shiba inu, leading you to boop him on the nose and causing him to squint his eyes and stick out his tongue. Chuckling at how silly he is being, you begin to take your finger away, only to have Bernard engulf your finger using his muzzle with a playful [']nom['] before slowly suckling upon it. Looking at your finger, you raise an eyebrow at Bernard's antics. 'I heard from Bianca this is supposed to bring you closer together with that certain someone that does the nose poke,' he replies after releasing your finger. With a grin, you pat him on the head.";

to say BernardTalk3: [Family Meal]
	if TimekeepingVar is 7 or TimekeepingVar is -1: [Early Morning] [Bianca, Ernest, Penelope, Wendis, Bernard, Maeve]
		say "     You sit down for breakfast with Bianca, Ernest, Penelope, Wendis, and Maeve while Bernard prepares [one of]pancakes[or]waffles[at random] and fruit juice. It is very reminiscent of the pre-nanite world, though you aren't sure where they found the ingredients. Best not to ask. Instead you discuss [one of]how Bianca's filming is going[or]whether Ernest has learned anything interesting[or]how well Penelope's plant is growing[or]how Wendis is doing with her painting[or]Maeve's progress with her magic tricks[at random]. Overall, it is a very enjoyable and comforting experience, fulfilling your immediate need for food, drink, and company.";
	else if TimekeepingVar is 5 or TimekeepingVar is -3: [Noon] [Sturm, Claude, Bernard, Casper]
		say "     You sit down for lunch with Sturm, Claude, and Casper while Bernard prepares sandwiches and soup. It is very reminiscent of the pre-nanite world, though you aren't sure where they found the ingredients. Best not to ask. Instead you discuss [one of]whether Sturm has managed to beat his mother at chess yet[or]how Claude's friends are[or]Casper's designs for new costumes[at random]. Overall, it is a very enjoyable and comforting experience, fulfilling your immediate need for food, drink, and company.";
	else if TimekeepingVar is 3 or TimekeepingVar is -5: [Evening] [Blanche, Bernard, Maeve, Lumi]
		say "     You sit down for dinner with Blanche, Lumi, and Maeve while Bernard prepares [one of]pasta[or]pizza[at random] and a choice of soda or water. It is very reminiscent of the pre-nanite world, though you aren't sure where they found the ingredients. Best not to ask. Instead you discuss [one of]some of the interesting parts of Blanche's childhood[or]Maeve's progress with her magic tricks[or]whether Lumi is willing to share her balls yet[at random]. Overall, it is a very enjoyable and comforting experience, fulfilling your immediate need for food, drink, and company.";
	SanBoost 10;
	PlayerEat 12;
	PlayerDrink 25;
	now FamilyMealCooldown is 5;


Section 3 - Sex

instead of fucking Bernard:
	say "     'As much as I want to take you up on this chance to get closer with you, I really must get better at my technique before putting this particular bun in the oven.' You aren't sure if he talking about his skills in cooking or his skills in bed, but you do know that he wants to wait for some time in the future. (WIP)";

Section 4 - Events

[]

Bernard ends here.
