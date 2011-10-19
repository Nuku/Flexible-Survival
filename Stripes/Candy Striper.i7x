Version 1 of Candy Striper by Stripes begins here.
[Version 1]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Naughty Nurse Vixen creature to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

when play begins:
	add { "Raccoon" } to infections of guy;
	add { "Raccoon" } to infections of furry;

to say losetocandycoon:
	If cocks of player > 0:
		say "     Victorious, the girlish coon giggles happily and pushes you to the ground.  Working off your remaining clothes with nimble fingers, the candy striper raises his skirt and lines his cock up with your butt.  After a few strokes to enjoy the feel of your bottom against his hot-pink shaft, it presses its glans against your back passage and slowly sinks it into you.  Its paws move around to play with your [if cocks of player > 1]cocks[otherwise]cock[end if] while it pounds away at your ass with soft moans and squeals of pleasure.  His hot-pink cock sinks into you again and again with practiced strokes.  The stimulation quickly gets you quite aroused and you're leaking precum all over the coon's paws.  Leaning overtop you, he licks and nibbles at your ears, moaning that you're such a nice fuck and a good patient who'll get his hot medicine real soon.  True enough, in a few more strokes you can feel the pink raccoon thrust hard into you and pump his hot seed deep into your bowels.  His paws work at your cock frantically, coaxing you to climax moments later.";
		say "     Finished with you, the coon slides his spent shaft out and gives you a kiss, rich with the taste of cotton candy before leaving you to recover.";
	otherwise:
		say "     The pink highlighted raccoon shoves you down to your knees in front of him.  With a flourish, he flips up his skirt to expose his hot pink six incher to you.  You resist the urge to make a comment about its size, given the size on most other creaturers you've seen running around these days.  He pulls your head forward, sliding his cock into your mouth with a soft moan.  'You're no sexy boi, but you'll have to do.  Any port in a storm, as it were,' he giggles as he thrusts.  His hard shaft leaks cotton candy flavoured pre onto your tongue.  Its sweetness surprises you and makes you lick and suck more eagerly.  Glancing up, you can see he's closed his eyes, perhaps imagining a horny male in your place.";
		say "     This upsets you a little and makes you try all the harder to please him, eager to get this gay boi to cum for you.  Your tongue plays over his cock as you fondle his balls, making him release more girly moans and squeaks until he finally does cum, shooting his sugary seed down your throat.  He strokes your head and smiles down at you as he slips his cock from your lips.  You can see that the dangling strand of cum connecting you has a light, rose tint to it before it snaps.  He grins down at you and dashes off, yelling 'Not bad... for a girl.'";


to say beatthecandycoon:
	if libido of player < 40:
		say "     You manage to knock the fight out of the coon boytoy.  He moans and plays with himself, rolling over to expose his bottom to you, but you leave him to deal with his own lusts.";
	otherwise:
		say "     You manage to knock the fight out of the coon boytoy.  He moans and plays with himself, rolling over to expose his bottom to you.  You licks your lips, finding yourself quite tempted to have your way with him and use him like your own pink plaything for a bit.";
		if the player consents:
			If cocks of player > 0:
				say "     You step over to him and grab his cute bottom, giving it a squeeze.  He moans and wiggles his rear back against your hands as you line up your cock with that tight pucker.  His back door spreads open for you rather easily, though still squeezes quite nicely around your cock as you mount him.  You grip his shoulders firmly and pound into him, making the girly boi moan in delight again and again.  The coon's cock, hot pink in colour and six inches in length, twitches between his legs, dripping precum onto the ground beneath him as he's fucked.  Eventually, your excitement becomes too great and you climax, shooting your hot seed deep inside the effeminate coon boi, much to his delight.  As the raccoon sprays his pink seed onto the ground, the air fills with the scent of cotton candy.  Done with him, you leave him there, moaning and panting in pleasure.";
			otherwise:
				say "     You give the coon's tight tush a slap and roll him over into a seated position.  Straddling his hips, you bring your wet pussy overtop of his cock.  His erection wavers slightly, but you grab a hold of it and slide this hot-pink rod into you.  The pink coon releases a girlish moan and you bury his muzzle in your bosom.  As you ride his cock, he starts to thrust, responding to the hot, wet hole gripping his cock.  When his lips find one of your nipples and start suckling at it, you moan soft and scritch his neck.  'That's my good, gay boytoy.  Fuck that pussy,' you tease, making his ears fold down a little, but he doesn't stop or slow at all.";
				say "     The girly coon you've found makes a wonderful plaything, able to give you a long, satisfying ride with several orgasms before he finally gives in to his instincts and shoots his hot seed deep inside you.  The cotton candy smell that hangs around him grows stronger as he cums.  You let the cute coon drain his balls inside you before pulling off.  A mix of your juices and his pink cum clings to his cock as he sags back to the floor, panting and blushing as you tell him what a fine job he's done before leaving.";
		otherwise:
			say "     You decide it best to just leave the horny coon to his own devices.";

to say candycoondesc:
	say "[line break]     You have encountered a cute raccoon in a pink, candy striper outfit.  The uniform is a bright pink with a white apron and skirt.  It has a few white stains scattered on it.  The raccoon has a slender, feminine build.  The fur that should normally be the dark mask around its eyes is a cotton-candy pink, as are the stripes to ring its tail, matching the striped top it wears.  The raccoon looks you over, licking its lips and smiling at you with a girlish grin, running its paws down its body.  That's when you notice that this rather flat-chested girl has a bulge in 'her' skirt.  The gay boytoy grins playfully as you notice the growing bump in his mini skirk and moves in to play with you.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Raccoon"; [Name of your new Monster]
   now attack entry is "[one of]The uniformed raccoon gropes you firmly![or]The candy-striped raccoon beats you mercilessly with his teddy bear![or]The effeminate raccoon scratches at you with his claws![or]The effeminate raccoon shrieks and kicks you in the shin![or]The raccoon gives you a firm slap across the face![or]The girly coon slaps at you repeatedly![or]The candy striper manages a hard bite to your upper arm![or]The uniformed coon latches onto you and humps itself against you![or]The raccoon pulls you into a sudden, cotton-candy flavoured kiss while its paws grope your ass![or]The raccoon turns and grinds his butt against your crotch, moaning with arousal![or]The raccoon turns and flips up the back of his skirt with his tail, exposing his cute bottom, hard cock and full balls, and his tailhole to you, in an effort to entice you to play![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatthecandycoon]"; [ Text or say command used when Monster is defeated.]
   now victory entry is "[losetocandycoon]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[candycoondesc]"; [ Description of the creature when you encounter it.]
   now face entry is "girlish, raccoon head with luscious lips and a pink mask of fur on your"; [ Face description, format as the text "You have a (your text) face."]
   now body entry is "slender and effiminate, with nimble little hands with pink claws.  You smell faintly of cotton candy and lust."; [ Body Description, format as the text "Your Body is (your text)"]
   now skin entry is "soft, gray fur with pink highlights over your"; [ skin Description, format as the text "You have (your text) skin"]
   now tail entry is "From the base of your spine, you have fluffy raccoon tail with pink stripes banding it."; [ Tail description, write a whole Sentence or leave blank. ] 
   now cock entry is "hot-pink"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it grows the pointed muzzle of a raccoon with a cute, pink nose and whiskers.  Grey and white fur coats your muzzle, with a mask of pink around your eyes."; [ face change text. format as "Your face feels funny as (your text)" ]
   now body change entry is "it becomes a slender and effeminate.  You can feel your butt shift as it becomes a taut bubble butt, ripe for mounting.  Your hands become nimble paws, with little pink claws at the tips of your grey-furred fingers"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "it grows a soft, gray fur with pink highlights."; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "a fluffy raccoon's tail extends from your spine.  Where there would be dark fur, it instead has bright pink bands to ring it"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it takes becomes hot-pink in colour and otherwise human-like in shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 10;
   now dex entry is 14;
   now sta entry is 12;                    
   now per entry is 10;
   now int entry is 14;
   now cha entry is 16;
   now sex entry is "Male";     [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
   now hp entry is 28;            [ How many HP has the monster got? ]
   now lev entry is 2;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 4;            [Amount of Damage monster Does when attacking.]
   now area entry is "Hospital";    [ Location of monster, in this case the City Hospital]
   now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 6;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 2;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 0;            [ Number of Breasts infection will give you. ]
   now breast size entry is 0;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 0;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 0;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 0;        [ Width of female sex  infection will try and give you ]
   now libido entry is 50;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "healing booster";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 10;        [ Chance of loot dropping 0-100 ]


when play ends:
	if bodyname of player is "Raccoon":
		if humanity of player is less than 10:
			say "     Succumbed as raccoon candy striper.";
		otherwise:
			say "     Survive as raccoon candy striper.";



[ Edit this to have the correct Name as well]
Candy Striper ends here.