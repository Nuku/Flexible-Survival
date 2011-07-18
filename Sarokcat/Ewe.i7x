Ewe by Sarokcat begins here. 
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Ewe to Flexible Survivals Wandering Monsters table, With no Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say ewe attack:
	say "'Mary blushes eagerly at your advances, nodding shyly she quickly looks around the store before ducking outside with you. Quickly heading over to her nearby hideout she kisses you as soon as the two of you are safe and alone. Breaking off the kiss Mary says, 'I'm so glad to see you again,' she pants eagerly, 'I haven't been able to stop thinking about you since last time.' Before you know it she has quickly stripped you naked and is pushing you down onto the couch.";
	wait for any key;
	if cocks of player is greater than 0:
		say "Her eyes slowly drift down your body only to stop at your erect (player cock type) cock, staring in licking her lips in anticipation she lowers her head to it and runs her long tounge along the base of it, her eyes crossing as she savors the taste. Unable to wait any longer, she quickly moves herself over you, straddling you as she positions herself over your erect maleness.  Before you can say anything she lowers herself onto you in one swift movement, moaning in ecstasy as her soft cavern wraps around your cock. ";
		wait for any key;
		say "Unable to resist the soft feel of her wet folds enveloping you, you bury your hands in the soft wool of her hips, gripping tightly as you thrust upwards.  Mary moans in pleasure as you take charge, her inner muscles tightening around you deliciously with your every movement.  Soon you settle into a rhythm of short quick thrusts into your willing ewe, her soft body rubbing up against your (player skin type) with every thrust, her face full of animalistic pleasure as she makes soft bleating and moaning noises in time with your thrusting.  Before you know it you feel your muscles tense in orgasm, as your cock empties its load into her fertile belly, causing her to shudder in orgasm as well as your seed fills her belly. Panting, she collapses on top of you, your cock still twitching in her, as you both lie there exhausted.";
		wait for any key;
		say "Waking up after a couple hours, you find yourself alone on the couch, quickly gathering up your belongings you find a short note left behind from Mary.  'I had to return to the store to take care of a few things, though I am definitely looking forward to spending more time with you as soon as we can. Signed, Your loyal ewe.'  Smiling as you read the note, you feel a surge of satisfaction at having taken care of your ewe properly, and tuck the note into your backpack before heading back over to the store yourself.";
	otherwise:
		say "Mary's sheeplike face pouts slightly as she takes in your female form, 'It looks like you aren't quite ready to be the ram of the flock yet.' She says as she runs her hands over your body. 'But that doesn't mean we can't have a little bonding time in the flock anyways,' She finishes as she leans over you to lick the side of your face erotically.  Wasting no time she begins running her hands up and down your body, teasing and exciting you as she begins to lick and kiss her way down your body.  She pays special attention to your nipples and stomach, before finally lowering her head to your wet pussy, which she begins to nibble and tease with her soft lips and flexible tounge.  Unable to help yourself you bury your hands in the soft fleece around her head as you moan and writhe underneath her, her marvelously skilled tounge quickly bringing you to the edge of orgasm, before finally making you cry out as you cum, your juices eagerly licked up by her wonderful tounge.";
		wait for any key;
	say "As you collapse back onto the couch from your amazing orgasm, Mary slowly moves back up your body in order to kiss you again, the taste of your own sexual fluids exploding into your mouth from the deep kiss. Eventually breaking the kiss off, she lies next to you as you drift off into an exhausted sleep.  You can vaguely here her comment as you drift off, something about not being able to wait for next time...";
		
		

		
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	add "ewe" to infections of girl;
	add "ewe" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "ewe"; [Name of your new Monster]
	now attack entry is "[one of]She moves forward and rubs her soft wool over your body[or]She lowers her head down and charges, knocking you back.[or]The ewe eyes you carefully, before striking at your weak spots!.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "With the sheep defeated, you are free to continue."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[ewe attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "Mary approaches you with a blush on her muzzle, before charging into battle suddenly.";[ Description of the creature when you encounter it.]
	now face entry is "short blunt muzzle on your flattened face, your sheeplike ears sticking straight out from the side of your head, and two small horns extending from your forehead and curling backwards.";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is “strong and rugged, equally well built for fighting other rams or keeping predators at bay, your strong leg muscles giving you extra power when charging forward. Though your sheeplike hands and hooved feet can make handling items and climbing things difficult.";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]thickly wooled[or]wool covered[or]a thick fleeced[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "A short round sheeplike nub of a tail sits right over your ass, occassionlly flicking one way or another in response to some stimulus. ";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]beastial[or]ram[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your face pushes forwared into a short blunt muzzle, like a Rams, as two small horns push their way out of the sides of your forehead."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "[one of]your frame grows larger and more bulky, and your hands and feet fuse into darker and more hooflike versions of themselves, though they still seem more then adequate for manipulating objects.[or]it grows thicker and more muscular, your hands and feet becoming more like a sheeps hooves, as your leg muscles bunch and shift, perfect for propelling yourself forward quickly[at random]"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a strong itching seems to spread underneath the skin, as before your eyes a thick coat of coarse woolly hair begins to cover your body.."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your ass expands into a more rounded shape. A short round nub of a tail startling you as it pushes its way out above your ass."; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it twists and warps between your legs, growing thicker as it takes on a black and pink tint, before drawing up into a new sheath between your legs."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 20;
	now dex entry is 12;
	now sta entry is 18;					
	now per entry is 12;
	now int entry is 12;
	now cha entry is 8;
	now sex entry is “Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 4;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 7;			[Amount of Damage monster Does when attacking.]
	now area entry is "Store";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 9;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Food";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

when play ends:
	if bodyname of player is "ewe":
		if humanity of player is less than 10:
			say "Someone should write a low humanity ewe ending";
		otherwise:
			say "Someone should write a high humanity ewe ending";


to ewefy:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "ewe":
			now monster is y;
			break;
	infect;
	infect;
	infect;
			


[ Edit this to have the correct Name as wall]
ewe ends here.