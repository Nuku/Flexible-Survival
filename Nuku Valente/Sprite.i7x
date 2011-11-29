Sprite by Nuku Valente begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Sprite to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
Spritedefeat is a number that varies.
Spriteconsent is a number that varies.
to say Sprite attack:
	if hp of player is greater than 0:
		say "Noticing that you've stopped resisting their efforts, the swarm gives a collective 'YAY!' and dances around you in an ecstatic dance of welcoming before they buzz in all the closer, getting to work.";
		now Spriteconsent is 1;
		wait for any key;
	if a random chance of 1 in 2 succeeds and cunts of player is greater than 0:
		say "You look down to see [(cunt length of player divided by 4) plus one] sprites working their way into you, one after the other. Despite their forms, they slip in smoothly, wings buzzing inside of you, exciting your tunnel and clit and sensing pleasure pulsing through your form as they slowly penetrate with their tiny forms, making their way towards your waiting womb.[impregchance]";
		wait for any key;
	if a random chance of 1 in 2 succeeds:
		say "Your body is swarmed with the cloud, lifted up into the air and caressed from all sides. It's like sleeping on a cloud as they hold you up with hundreds of tiny hands while another hundred work on rubbing your every erogenous zone in alternating waves that has you paralyzed with pleasure.";
		wait for any key;
	if a random chance of 1 in 2 succeeds and cocks of player is greater than 0:
		if cock length of player is greater than 12:
			say "Your mammoth cock draws the interest of the cloud as they swarm over it, coating its length in buzzing, rubbing, forms. At the very end of it, they rub their cunts across your head and cum slit, moaning loudly as they work as if eager to somehow bare your child despite the wild size difference.";
			if cocks of player is greater than 1:
				say "Your other male meat gets assaulted in kind, each becoming lost under a blanket of excited sprites. Your [ball size] balls are tingling with the need to cum, and you cannot muster the urge to hold back anymore, spraying down, and filling up, dozens of the sprites at a time.";
		otherwise:
			say "One of the largest sprites there descends in front of you with a disturbing smile, 'You will make such a pretty sprite,' she says as she grabs your [cock of player] cock and strokes it slowly, 'But before then, I don[apostrophe]t plan to let this go to waste...'";
			wait for any key;
			say "She guides your cock to her hairless entrance and thrusts her hips forward, taking you deeply even as you spread her quite wide on your tool. She squeals and shudders around you, working herself deeper and deeper until you are hilted in her willing form, like a tiny hot vice that ripples and pulls at your cock urgently.";
			if cocks of player is greater than 1:
				say "Your extra manliness gets trapped between her and you, her small hands grabbing and jerking at them in wanton abandon as she rocks her hips up and down along your thick, virile, pole. It all becomes too much with all of them being stimulated and you make her swell powerfully with your climax, the excess seed gushing out between her thighs even as you spray wildly over her and the rest of the swarm.";
			wait for any key;
		say "The swarm stays close to you, tickling, rubbing, and sucking at you until you are ready to collapse in a nerveless pile of sated flesh. Sensing your fatigue, they heft you up and carry you back to a safe place, setting you down carefully before flittering off on the breeze in a mass of giggles.";
		wait for any key;

[ [Sprite loss] ]
To say Sprite loss:
	say "The sprites disperse in an unhappy cloud of defeated fae kind, taking off in all directions.";
	
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "city sprite"; [Name of your new Monster]
	now attack entry is "[one of]The swarm of sprites rushes over you, tickling at your sides in a maddening onslaught of the senses, leaving you giggling.[or][if cocks of player is greater than 0]A sprite zips between your thighs and grabs at your [cock of player] organ, tickling at the very tip of it with her wings as she holds on tight.[otherwise]The sprites focus on your chest, licking and rubbing against you in an excited swarm![end if][or][if cunts of player is greater than 0 and cunt length of player is greater than 5]With a sudden wet noise, you feel your vulva spread apart as a sprite flies up into you with astounding accuracy. She begins to wriggle in deeper, lost to sight, but certainly not to your slick tunnel which spasms in forced delight.[otherwise]The sprites get a sudden violent fit, grabbing tiny pebbles and rocks and pelting you with them in a hail of tiny debris.[end if][at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Sprite loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Sprite attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "A faint sparkling catches your eyes on the horizon. Squinting to look at it, you notice it getting larger by the moment. All too suddenly, it is upon you, a swarm of naked, elfin females. The tallest of them is two feet tall, many are less. They swarm about you with loud excited giggles and the buzz of their dragonfly wings.";[ Description of the creature when you encounter it.]
	now face entry is "exceptionally cute and young human female, with elfin ears at either side of your head";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "largely human, if not for the great set of dragonfly wings that rest on your back, with blackened flesh and clear for most of their length. Your form is also quite short and feminine.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "flawless human";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]human[or]uncut[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your ears become long and elfin, pudgy and youthful, you could almost pass for human."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "you shrink dramatically and swiftly. Your form becoms more female looking as curves develop. Behind you, dragonfly like wings extend outwards, buzzing excitedly for a moment before folding neatly against your reduced form."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it becomes soft and supple, perfect human flesh."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your rump becomes round and grabbable."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes human like, uncut and dangling between your thighs."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 8;
	now dex entry is 18;
	now sta entry is 10;					
	now per entry is 16;
	now int entry is 12;
	now cha entry is 18;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 26;			[ How many HP has the monster got? ]
	now lev entry is 2;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 5;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 2;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 6;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 40;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Fish";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

Table of Game Objects(continued)
name	desc	weight	object
"Fish"	"A fish. It could be a big fish or a small fish, but it has scales on it. A sniff of it oddly reminds you of otters."	1	Fish

Fish is a grab object. 

Fish is infectious. The strain of Fish is "sea otter".
usedesc of Fish is "[Fish]";
The purified of fish is "food";

To say Fish:
	decrease the hunger of the player by 15;
	if the hunger of the player is less than 0, now the hunger of the player is 0;

when play ends:
	if bodyname of player is "city sprite":
		if humanity of player is less than 10:
			if Spriteconsent is 1:
				say "You feel everything getting smaller around you as you lose mass rapidly. The extra flesh is burned away in bright rainbow lights. Perhaps it is this light that guides the swarm of sprites to find you so quickly. They hug and kiss at you, welcoming you into their swarm. You follow them away from the city. The forest where you all eventually settle earns a reputation for being haunted, but, oddly, hikers still come regularly to visit you and the swarm.";
			otherwise:
				say "Your memories of your old life begin to fade away and you take off in a sudden buzz, flying around the city in search of... something, but you never quite find it. It's quite a surprise when a net falls down on you a few days later and you're hauled out of the city. Your captor proves to be reasonably kind, but never treats you as more than an interesting and delicate looking animal, despite your protests.";
		otherwise:
			if Spriteconsent is 1:
				say "Great glows of bright colors eminate off your body as you begin to shrink down. The sprite cloud arrives moments later, trying to lead you away. Your mind still sharp, you give another idea. They seem confused at your idea, and the leader steps forward to challenge her. Rather than fight her, you grab her up in a fierce kiss, hands wandering over her back and buttocks.[line break] [line break]When the kiss parts, she agrees to your terms, and you guide the sprites to a city, becoming a source of mystery and predating on the people there who need it most. Lonely Friday nights are a thing of the past.";
			otherwise:
				say "You are picked up by the rescuers just moments before you start to shrink down the rest of the way to Sprite size. You have a hard time getting a job being so small, at least until that advertising firm found you. You did quite well as a model, where scale meant a lot less. Besides, how could Sprite resist using you?";

			


[ Edit this to have the correct Name as wall]
Sprite ends here.