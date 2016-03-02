Version 3 of Rabbit Pack For FS by Guest Writers begins here.
[Version 3.1 - Updated to extended heat table - Stripes]
[- Originally Authored By: Lago Moro -]

"Adds a Rabbit Pack to Flexible Survival's Wandering Monsters table."
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "rabbit pack" } to infections of girl;
	add { "rabbit pack" } to infections of guy;
	add { "rabbit pack" } to infections of furry;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

to say rabpackdesc:
	setmongender 19;	[creatures are mixed/variable]
	choose row monster from the table of random critters;
	say "A little humanoid rabbit appears in front of you! Less than three feet tall and completely naked,it looks like a young human, except for the ears and the short coat of fur covering [one of]his body. He[or]her body. She[at random] is smelling something from you, and you back away quickly.";
	if "One Pair" is listed in feats of player:
		now area entry is "nowhere";		[removes from random intercounters and infection]
		now non-infectious entry is true;
		say "However, something in your scent sends the critter away from you. (They won't attack you if you have the One Pair feat.)[combat abort]";
		now fightoutcome is 19;
	otherwise if "Just One" is listed in feats of player:
		now area entry is "nowhere";		[removes from random intercounters and infection]
		now non-infectious entry is true;
		say "However, something in your scent sends the critter away from you. (They won't attack you if you have the Just One feat.)[combat abort]";
		now fightoutcome is 19;
	otherwise:
		say "However, the creature is not alone. In an instant, you are surrounded by about ten rabbit-like creatures, some females, other males, all wanting YOU!";


to say rabpackvictory:
	if fightstatus is 3, now fightstatus is 2;
	if bodyname of player is "rabbit pack":
		say "The rabbit creatures take all of you into a nearby abandoned building. They... no, it has plans for you, and it doesn't want unwanted guests.[line break]After laying you to the ground, they step back, sitting or crouching around you. Instinctively, you group together all of your copies, for how your injures can afford. One of them slowly creeps closer, making a noise, an attempt to tranquilize you. [one of]He[or]She[at random] hugs you, kissing tenderly your forehead until you calm down. The other part soon join in...";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "It's so slow... not lazy or sluggish, but constantly building up your pleasure, a tiny bit at a time. Couples and groups changes constantly, without a pattern, and you weakly realize that a few of your own copies are making out with each other. Even your thoughts are interweaving with... well... hir, and you find your consciousness passing from male to female in a pinkish blur... either by you or to you, cocks are [one of]jerked[or]sucked[or]inserted[at random], breasts [one of]massaged[or]milked[at random], asses [one of]groped[or]prodded[at random], cunts [one of]licked[or]fingered[or]filled[at random]... every so often a [one of]sweet[or]warm[or]lovely[at random] kiss...";
		say "After at least hours, it finally ends. After a little rest, they escort you back to where they ambushed you, worn-out but satisfied.[impregchance]";
		decrease libido of player by 50;
	otherwise:
		say "The rabbit creatures lift you in unison and transport you into a nearby abandoned building, before any unwanted guest shows up.[line break]They lay you gently on the ground and admire your body, obviously pleased by what they got; they crawl on you, caressing, licking gently...[line break][rabpacka][rabpackb][rabpackc]";
		say "Your body can't resist their attentions, and you orgasm, matting a few of them. This doesn't stop them, as they keeps stimulating you, themselves, and each other, indifferently, no matter how spent any of you is...[line break]When it finally ends, those who can still stand guide the others somewhere else. You curl on the ground and fall asleep, trying to recover.";

to say rabpacka:
	if breast size of player > 6:
		say "They immediately eye your generous bosom; two of them, one for side, kneel down and begin sucking and fondling your [breast size of player] breasts.";
	otherwise:
		say "You feel a weight on your chest as one of them sits on it, smiling happily at you. [one of]She then slides closer, putting her pussy right in front of you. You comply, licking it while she sighs and moans[or]He leans closer and kisses you lovingly, while you can feel a small pressure as his cock slides out on is own, a little spot of pre already matting your skin[at random].";

to say rabpackb:
	if cocks of player > 0:
		if cock length of player > 10:
			say "Meanwhile, you feel someone grabbing your cock and pressing it against its body. It must be a[one of]he, as you can feel his own penis and balls being rubbed against your member[or]she, since you feel two soft breasts being pressed against it[at random]. Sure it feels good...";
		otherwise:
			say "Meanwhile, you feel someone grabbing your cock and slowly jerking it while [one of]licking across its length[or]sucking its tip[or]massaging your balls[at random]. Sure it feels good...";

to say rabpackc:
	if cunts of player > 0:
		if cunt width of player > 7:
			say "At the same time you feel at least a pair of tongues licking your feminine folds. You can't see what exactly is going on, but the increasing moistness of your groin is a sure indication...";
		otherwise:
			say "At the same time you feel someone gently licking your feminine folds. It's not invasive, but constant and agonizingly slow, just like everything else they are doing to you...";


to say rabpackbeaten:
	if fightstatus is 3, now fightstatus is 1;
	say "You finally manage to incapacitate most of them. You go away while those still conscious are dragging their comrades to safety.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "rabbit pack"; [Name of your new Monster]
	now attack entry is "[one of]They pounce on you all at the same time![or]One of them crawls on your back and hits you in the head. More than once.[or]You lose your balance and fall on the ground! They try to pin you down![or]One of them manages to flank you and attack by surprise.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[rabpackbeaten]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[rabpackvictory]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[rabpackdesc]";[ Description of the creature when you encounter it.]
	now face entry is "rabbit ears sprouting from the top of your head and flopping around the sides of your";[ Face description, format as the text "You have a (your text) face."]
	now body entry is "short but agile";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "short fur covering almost every inch of your body";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a [one of]short[or]fluffy[or]twitchy[at random] rabbit tail.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human-like";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "floppy bunny ears sprout from the top of your head and hang on the sides of your face"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you feel your head spin and lose consciousness. When you wake up, you open your eyes... your multiple pair of eyes. To your horror, you see that you have been split into many smaller copies of your previous form! Luckily, you retained your personality and mental sanity... but for how long?"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a little coating of fur covers you from head to toe. Feels almost like velvet"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "A little tail sprouts, waggling"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes humanlike, covered with foreskin. A pair of soft balls descends as well"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 6;
	now dex entry is 15;
	now sta entry is 10;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 80;			[ How many HP has the monster got? ]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 4;			[Amount of Damage monster Does when attacking.]
	now area entry is "High";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 5;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 4;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 3;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 10;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 5;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 4;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 3;		[ Width of female sex  infection will try and give you ]
	now libido entry is 10;			[ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";
	now lootchance entry is 0;
	[ These represent the new additions to the table of random critters ]
	now scale entry is 1;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]youthful[or]slender[or]cute[at random]";
	now type entry is "[one of]bunny[or]rabbit[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname is "rabbit pack":
		if humanity of player is less than 10:
			say "Your memories dissolves as the infection makes you a feral. A pack of mutants, guided by a single consciousness, always trying to fight for survival or to quench your thirst of sex.";
		otherwise:
			say "You need some psychiatric help, but you finally manage to adapt to your strange condition. You then manage to find a work in a [one of]restaurant[or]hotel[or]supermarket[or]theme park[at random]. A little team working together in synchronicity for the price of one-and-a-half normal worker is convenient, after all...";




[ +++++ ]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "rabbit pack"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 400; [ This is the number of days a heat "cycle" lasts, usually 7 ]
	now heat duration entry is 400; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "[rabpacktrigger]"; [ This is the text that is written to the screen when the player comes into heat]
	now inheat entry is "[rabpackinheat]"; [this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "[rabpacktrigger]";

to say rabpackinheat:
	if bodyname of player is "rabbit pack" and ( cocks of player + cunts of player > 1 ):
		say "[one of]Repeat: there is only a me. A single me. A single consciousness. There is no 'we', only 'I'. I can't go insane now.[or]Maybe is the infection, but you find yourself calling a male body a 'cock', and a female one a 'pussy', or similar... what the hell...[or]Even if your individual bodies are weaker, you can coordinate them with ease. And two pair of eyes are better than just one, for example.[or]You realize one of your copies is acting affectionately towards another one, on its own. You can't help it: it's like a tic.[or]How was it? A female copy for every cunt and a male one for every penis? So what would happen if you were to lose both?[or]Note to self: talking and generally do things in perfect synchrony tends to unnerve people.[or]It is a bit odd to define the whole bunch of your copies [']your body[']. You still want to cling to how much sanity you have left, though.[at random]";
		increase libido of player by 1;
		decrease humanity of player by 1;
	otherwise:
		now turns in heat is 0;
		now animal heat is False;
		now inheat is False;

to say rabpacktrigger:
	if bodyname of player is "rabbit pack" and ( cocks of player + cunts of player > 1 ):
		say "This is probably the strangest situation you have ever been into. Instinctively you know what exactly is going on, but in practice you are scared and confused. Let's see... you can have female or male 'bodies', but not herms... you have a 'body' for every cock or pussy you had... and what else...";
	otherwise:
		now turns in heat is 0;
		now animal heat is False;
		now inheat is False;


[ +++++ ]

[ Edit this to have the correct name as well]
Rabbit Pack For FS ends here.
