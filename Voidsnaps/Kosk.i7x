Kosk by Voidsnaps begins here.

[Hunger of Kosk: Affects exhibitionism oral scene. Higher means it's a more common occurrence to see you on his cock, for various residents.]
[Thirst of Kosk: Affects exhibitionism breeding scene. Higher means it's a more common occurrence to see you on his cock, for various residents.]
[Traits: "Seasoning Search" Opens up quest. Gained from talking to him.]
["Seasonings Found": Ends seasoning quest. Gain entry to lizard village and access to Kosk sex scenes after turning them in to him.]
["Lizard Village Welcome": Access to village.]


Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Kosk	"Kosk"

Kosk is a man.
ScaleValue of Kosk is 4. [human sized]
Body Weight of Kosk is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Kosk is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Kosk is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Kosk is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Kosk is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Kosk is 12. [length in inches]
Breast Size of Kosk is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Kosk is 2. [count of nipples]
Asshole Depth of Kosk is 10. [inches deep for anal fucking]
Asshole Tightness of Kosk is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Kosk is 2. [number of cocks]
Cock Girth of Kosk is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Kosk is 15. [length in inches]
Ball Count of Kosk is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Kosk is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Kosk is 0. [number of cunts]
Cunt Depth of Kosk is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Kosk is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Kosk is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Kosk is false.
PlayerRomanced of Kosk is false.
PlayerFriended of Kosk is false.
PlayerControlled of Kosk is false.
PlayerFucked of Kosk is false.
OralVirgin of Kosk is false.
Virgin of Kosk is false.
AnalVirgin of Kosk is false.
PenileVirgin of Kosk is false.
SexuallyExperienced of Kosk is true.
TwistedCapacity of Kosk is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Kosk is true. [steriles can't knock people up]
MainInfection of Kosk is "Lizardman". [Always match the capitalization of the infection. Case sensitive.]
Description of Kosk is "[KoskDesc]".
Conversation of Kosk is { "<This is nothing but a placeholder!>" }.
The scent of Kosk is "[KoskScent]".
Kosk is in Lizard Village Entrance.

to say KoskDesc:
	say "     An all-black, muscular lizardman with no clothes to speak of besides a loincloth that barely covers a smooth crotch with a barely visible slit that appears occasionally when he adjusts his position. Dark red eyes that shine like rubies regard you without fear, though you get a sense of danger from the guard. It would be best not to get on his bad side!";

to say KoskScent:
	say "     Kosk smells like autumn leaves, mixed with a hint of mesquite wood. Does he spend a lot of time around smoke?";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Lizardfolk";
	add "Lizardman" to infections of ReptileList;
	add "Lizardman" to infections of FurryList;
	add "Lizardman" to infections of NatureList;
	add "Lizardman" to infections of MaleList;
	add "Lizardman" to infections of TaperedCockList;
	add "Lizardman" to infections of BipedalList;
	add "Lizardman" to infections of TailList;
	now Name entry is "Lizardman";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]He rakes you with his claws, leaving long bloody marks on your body.[or]Sharp fangs pierce your skin as the Lizardman bites you.[or]With a lightning-quick move, he vaults over you, dragging a clawed hand down your back as he lands.[at random]";
	now defeated entry is "[Lizardman_Loses]";
	now victory entry is "[Lizardman_Wins]";
	now desc entry is "[Lizardman_Desc]";
	now face entry is "a mixture of lizard and human, with masculine features and a mouth full of pointy teeth. Cold eyes and a smooth scaled head devoid of hair complete the picture";
	now body entry is "bulky and well muscled, built for power and stamina. Your hands are mostly human, although equipped with sharp claws, while your long legs end in large lizard paws with talons";
	now skin entry is "smooth and scaly with dark green coloration";
	now tail entry is "You have a long, thick tail over the tight muscular buns of your behind. It's pretty useful for sweeping aside your enemies.";
	now cock entry is "A reptilian shaft that tapers to a point, giving you a lizard";
	now face change entry is "it reshapes itself, giving you masculine features and a pointed muzzle. You feel your mouth filling with a predator's sharp teeth as your ears shrink and disappear, turning into reptilian ear holes";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a bulky, masculine new shape. Your hands acquire sharp claws, while your feet take the shape of taloned lizard paws";
	now skin change entry is "scales grow and cover your skin, covering you in natural armor";
	now ass change entry is "it becomes tight and firmly muscled. This is followed by a very strange feeling as a long tail rapidly forms above it, making you stumble around for a moment before you adjust to using it for balance";
	now cock change entry is "it takes on a more lizard-like shape, turning deep red in color and splitting into two identical cocks that taper into a pointed end";
	now Cock Count entry is 2;
	now str entry is 22;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 11;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80; [ How many HP has the monster got? ]
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "lizardman milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]muscular[at random]";
	now type entry is "reptilian";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say Lizardman_Loses:
	say "How the heck did you get here?";

to say Lizardman_Wins:
	say "How the heck did you get here?";

to say Lizardman_Desc:
	say "How the heck did you get here?";

instead of conversing Kosk:
	say "[KoskConversationMenu]";

instead of fucking Kosk:
	if lastfuck of Kosk - turns < 6:
		say "     Kosk holds up a hand as you approach him. 'Sorry. As much as I'd love to fuck you silly, I do have other interests. After our last fuck, I started some fish jerky. Can't leave those babies alone. Burning food is a cardinal sin.' Still, he pats your ass amiably, leaning against his spear and capturing your lips in a lazy kiss. 'Once I've refueled I'll breed you silly. Come back then.'";
	else:
		say "[KoskFuckMenu]";

to say KoskConversationMenu:
	say "     [if PlayerMet of Kosk is false]The lizard [else]Kosk [end if]regards you with a bored expression, leaning on his spear with hunched shoulders. After a moment, he sighs. 'Are you going to stare at me? Or do you have something to ask. It may not seem like my time is important, but it's still rude.' [if PlayerMet of Kosk is false]Before you can speak, his face splits into a grin, revealing sharp, dagger-like teeth. 'And since you're so rude- the name's Kosk. I'm sure you'll forget to ask.'[end if][line break]";
	now PlayerMet of Kosk is true;
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Lizard Village Welcome" is not listed in Traits of Kosk:
		choose a blank row in table of fucking options;
		now title entry is "Ask Kosk if he'll let you into the village";
		now sortorder entry is 1;
		now description entry is "You're curious about the village behind Kosk. Will he let you through";
	[]
	if "Lizard Village Welcome" is listed in Traits of Kosk:
		choose a blank row in table of fucking options;
		now title entry is "Ask Kosk what he's been cooking";
		now sortorder entry is 2;
		now description entry is "Kosk's excitement at receiving your 'bribe' has your curiosity piqued. Has he used them yet";
		sort the table of fucking options in sortorder order;
	[]
	if "Guilty Coward" is listed in Traits of Player:
		choose a blank row in table of fucking options;
		now title entry is "Tell Kosk about the naga trafficker";
		now sortorder entry is 3;
		now description entry is "Despite your earlier cowardice, you should probably tell someone about the naga before more people disappear";
	[]
	if "Burned Down" is listed in Traits of Riker:
		choose a blank row in table of fucking options;
		now title entry is "Ask what happened to the cabin after Kosk investigated it";
		now sortorder entry is 4;
		now description entry is "What happened after you ran away? Ask Kosk";
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
				if (nam is "Ask Kosk if he'll let you into the village"):
					say "[KoskVillageAsk]";
				else if (nam is "Ask Kosk what he's been cooking"):
					say "[KoskBarbecueTalk]";
				else if (nam is "Tell Kosk about the naga trafficker"):
					say "[KoskPosseGathering]";
				else if (nam is "Ask what happened to the cabin after Kosk investigated it"):
					say "[KoskRikerEnd]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the stalwart guard, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KoskVillageAsk:
	LineBreak;
	say "     Warily approaching the lizardman guard blocking the path to the village, you ask if he'll let you past him. You could easily swim around the wooden bridge beneath him, but you don't know what's waiting for you in the water, and it looks vaguely slimy. Who knows what that would do to you! 'Nope. No offense, but you're new around here. Not letting you in without proof that you'll keep your hands to yourself. Everything wants to eat you or fuck you these days.' Yawning and stretching, the lizard cracks his neck, then trails his wicked-looking claws down his chest, scratching the space above where a navel would be on a mammal. 'Though I guess standing here gets kinda boring. I won't kick you out if you do something for me.'";
	say "     Curious, you ask what the lizard wants from you. You have a feeling you know what Kosk will ask for, but you hope for the best. Maybe he'll be one of the few mutants that isn't sex-crazed. The lizard stares at you with an air of a predator looking for prey, face cracking into a wide grin. Licking his lips and running a long, dark red tongue over pearly white fangs, he leans in, his mouth inches from yours and his hulking stature blotting out the sun filtering through the trees above. His voice rumbles, and he shudders, a drop of drool dripping from the corner of his mouth. 'I want you to bring me...' Pausing to swallow, his gaze grows more intense. 'Seasoning. I've been craving good barbecue, and everything here is so fucking bland.' Hypnotized by the lizardman's teeth, you almost don't register the absurdity of his request. Blinking as you get past how long and wet his tongue is, you let out a nervous laugh at how earnest he is. It doesn't seem like a joke, so you agree to his terms, reminding yourself to search for seasoning the next time you scavenge in the city.";
	TraitGain "Seasoning Search" for Kosk;
	now Spicy Encounter is active;

to say KoskBarbecueTalk:
	if "Barbecue Received" is listed in traits of Kosk:
		say "     Kosk leans against his spear, staring off into the distance as you ask him about his culinary exploits. [one of]'I've been thinking. Maybe I should set up a smoker. Pretty sure I could make some great jerky.' [or]'Maybe I should try baking some veggies. You ever had ratatouille? Shit's great.' [or]'Tried some frog legs with dry rub. The little hoppy kind, don't worry. Surprisingly tasty.' [or]'Seen any chickens in the city? I've been craving wings. Maybe a nice honey barbecue glaze.' [at random] Leaving him to daydream as he rambles about various foods, you pat him on the back, thanking him for his time.";
	else:
		say "     Curious, you approach Kosk, returning his companionable nod and asking if he's been enjoying his new seasonings. Silently, you hope he'll have something to offer you, but you're unsure if you know him well enough to ask. Good cooking is relatively rare these days. 'Perfect timing!' Kosk beams, licking his lips and clapping you on the back as he leads you to a mound nearby. 'I've been cooking nonstop since you brought those little gems back. I thought I'd try some Barbacoa. Less chance of attracting unwanted attention that way. Skewering people for trying to steal my shit isn't all that fun.' Carefully, he dusts off the mound, digging with the bladed tip of his spear until he uncovers a smoldering pile of foil beneath the dirt. Slowly opening it, he breathes in deeply, tilting it until you can see a whole roasted fish dusted with a generous coating of orange and brown. 'Fuck yeah. Nothing like it.'";
		say "     The scent is mouthwatering, though the whole fish isn't as pleasant as something more professionally prepared. Still, your stomach growls as you stare, and you wipe your mouth on the corner of your sleeve, drooling slightly at the thought of some homemade food after who-knows-how-long spent eating canned and dried foods. 'Take it! I've got some more steaming in there, and thanks to you, I can make as much as I want.' Pressing the steaming fish package into your hands, Kosk gives you a conspiratorial wink. 'I'll even help you work up an appetite if you want. Call it a down payment on refills.' His language might be ambiguous, but the hand on your left asscheek is anything but subtle. It seems you've made a friend.";
		ItemGain Roasted Barbecue Fish by 1;
		TraitGain "Barbecue Received" for Kosk;

to say KoskPosseGathering:
	say "     Quickly explaining everything that happened since you followed Ignacio to the flooded mall, you tell Kosk where the latest lizardman's been abducted, then clarify that it was someone more sinister perpetrating the earlier ones. Giving detailed instructions to the naga's hideout, you leave things in Kosk's hands, taking your leave as he runs off into the village, a horrified expression on his face. No doubt he's going to find others to 'storm the castle.' Thankfully he doesn't ask you to come with him, but you still feel a twinge of guilt at letting others fight your battles.";
	now Ignacio is nowhere;
	now Matteo is nowhere;
	now Riker is nowhere;
	TraitGain "Burned Down" for Riker;

to say KoskRikerEnd:
	say "     Broaching the subject of what happened to the cabin in the woods where Riker kept his victims, you pointedly ignore your own involvement, asking Kosk what happened after you reported to him. He sighs and shrugs his shoulders at your questioning stare. 'We had a look, but by the time we got there, the place was trashed. Nothing and no one left inside. Someone must have left us a little gift because before we could even leave the place, it went up. Burned to the ground in minutes.' Shaking his head, Kosk looks regretful. 'Be careful out there. That sick fuck might still be wandering around. Anyone willing to set fire to a place surrounded by trees can't be sane. Might not be lucky enough to get away next time.'";

Table of Game Objects (continued)
name	desc	weight	object
"Roasted Barbecue Fish"	"Tasty fire-roasted barbecue fish Kosk gave you. Cooked with love and a secret seasoning blend and wrapped in tin foil."	2	Roasted Barbecue Fish

Roasted Barbecue Fish is a grab object.
the scent of Roasted Barbecue Fish is "The fire-roasted fish smells like something you'd find at a backyard barbecue. Though it's no longer piping hot, the savory, salty scent wafting from it promises it's still good.".

Usedesc of Roasted Barbecue Fish is "[Roasted Barbecue Fish use]";

to say Roasted Barbecue Fish use:
	say "     Biting into the whole fish despite the silliness of eating it like a bear without utensils or a plate, you widen your eyes at the juicy, salty combination of flavors that bursts into your mouth, mingled with a slight char. You can't resist eating the whole thing in ravenous bites, leaving it with nothing but bones and the fish's face, which you can't bring yourself to taste. Balling up the tin foil around the remainder, you contemplate finding a trashcan, but shrug, tossing it aside and wiping your mouth on your arm. It's the apocalypse, no one's going to judge you for littering!";
	MoraleBoost 15;
	PlayerEat 24;

Section 2 - Barbecue Quest

Table of GameEventIDs (continued)
Object	Name
Spicy Encounter	"Spicy Encounter"

Spicy Encounter is a situation.
Spicy Encounter is inactive. [default inactive, activated by talking to Kosk]
ResolveFunction of Spicy Encounter is "[ResolveEvent Spicy Encounter]".
Sarea of Spicy Encounter is "Outside".

to say ResolveEvent Spicy Encounter:
	say "     Your thoughts wander back to your encounter with the lizardman guard as you pass a broken shop window. The bodega looks picked over, with various fluids covering just about every surface, but you wonder whether survivors would have prioritized things like seasoning when scavenging. It should be easy enough to take a quick look around. Grabbing a nearby plastic basket, you step through the broken window, avoiding the bits of fur and cum that cover the glass on the floor and scanning the aisles for any mutants. ";
	if a perception check passes 12:
		say "     As you look around, you notice a door to the backroom of the store hanging slightly ajar. Labored breathing wafts from inside, and a peek into the room reveals a mismatched pile of feathers, fur and sexual organs. With your heart pounding, you slowly slide the door shut, testing the knob once it clicks shut and sighing in relief as it seems to have automatically locked. It could have been bad if you woke that thing up! Carefully, you pick your way through the destroyed shop, searching for something that might satisfy Kosk's request. It's slow going as you try your best to avoid stepping in puddles of mystery goo and old food, but soon enough, you find yourself standing in front of a remarkably intact shelf lined with every spice you can think of. Staring at the cardboard display and shaking your head, you realize you don't know WHAT the lizardman wants. You doubt you'll find another place like this, so you stick your arm behind the inventory, sweeping everything you can carry into your basket and wincing at the clatter of plastic on plastic. Hopefully, that creature didn't hear you.";
		TraitGain "Seasonings Found" for Player;
	else:
		say "     Shrugging, you pick your way through the destroyed shop, searching for something that might satisfy Kosk's request. It's slow going as you try your best to avoid stepping in puddles of mystery goo and old food, but soon enough, you find yourself standing in front of a remarkably intact shelf lined with every spice you can think of. Staring at the cardboard display and shaking your head, you realize you don't know WHAT the lizardman wants. You doubt you'll find another place like this, so you stick your arm behind the inventory, sweeping everything you can carry into your basket and wincing at the clatter of plastic on plastic. Hopefully, nothing heard you. The heavy breathing behind you confirms your suspicions- tossing aside your find, you ready yourself for combat with a hulking creature! Its species is unclear, with various parts thrown together and a bouquet of cocks jutting out at full-mast, drooling colored fluids onto scales, fur, and feathers. Breasts cover its front, following no rhyme or reason in their placement, and its teeth are as mismatched as the rest of it, crowding its mouth until its barely able to close its jowls. With a bellowing, strangled sound, it lunges at you.";
		challenge "Nightmarish Mutant";
		if fightoutcome < 20: [Player Won.]
			say "     The nightmarishly twisted mutant mewls and falls to the floor as you strike the final blow, its eyes rolling back in its head. Quickly gathering your spilled seasonings, you leave the still obviously aroused creature to recover, mentally marking the store as a place to avoid in the future. There's no redeeming features for that disgusting creature, and you doubt anything good will come out of crossing its path again!";
			TraitGain "Seasonings Found" for Player;
			now Resolution of Spicy Encounter is 2;
		else if fightoutcome > 19 and fightoutcome < 30: [Player lost. Bad End.]
			say "     As you fall to your knees, defeated, the creature follows you down, crushing you beneath its form. You only have time to cough at the strong odor of its manhoods before your face is swamped in so much cock that you're afraid to open your eyes. Greasy manhoods slop over your face, seeking entrance and leaking tainted, multicolored cum, until the creature finds your mouth, humping away and cramming three of its smaller cocks past your lips, stretching them to their limit! Desperately, you try to breathe, but all that does is force another of the monster's dicks against your nostrils, drowning you in leaking fluids and cutting off your breathing. Helplessly, you gag and cough, your face covered in disgustingly potent, dirty masculinity.";
			say "     Choking down thick fluids, you try your best to hurry things along, hoping that you'll be able to escape once the monstrous chimera finishes. Unfortunately, it seems the creature has other plans, slapping heavy sets of balls against your chin as it fires off sloppy strings of endless cum down your helplessly swallowing throat. As soon as one cock softens and flops free, another takes its place, plastering your face to the floor in sticky goo and forcing you to endure the sloppy facefuck. You lose track of time by the eighth cum you're forced to drink, and as your stomach bloats, you can feel the telltale tingle of changes racing across your body, turning you into a twisted abomination like the eager creature. Your thoughts fade away, replaced by the sounds of grunting moans, and like a bursting bubble, your humanity gives way to depravity.";
			trigger ending "Drowned In Cock";
			the Player was ended by "Drowning in cocks and cum until their humanity was destroyed.";
			end the story saying "You became the Nightmarish Mutant's mismatched mate.";
		else: [Fleeing]
			say "     Seeing an opening, you snatch up what you can and dart past the mismatched creature, wincing as it roars in frustration and crashes into a shelf behind you. It wasn't the most elegant exit, but as you reach the end of the street and turn around, you realize you've lost your pursuer. Kosk had better be grateful! You could have ended up as that THING's fucktoy.";
			TraitGain "Seasonings Found" for Player;
			now Resolution of Spicy Encounter is 2;
		now Spicy Encounter is Resolved;

[Ending during quest]
Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Drowned In Cock"	"BadEnd"	"Sex Slave"	Drowned In Cock rule	1	false

This is the Drowned In Cock rule:
	if ending "Drowned In Cock" is triggered:
		say "     You live out your days as the mismatched, irredeemably changed mate of a nightmarish mutant chimera, fucking in every possible position, with every set of genitals imaginable. Your fur and feathers are matted with sexual effluvia, and you attack anything you see, seeking to change it into an abomination like you. Eventually, you break free of the city's walls and roam the countryside, spreading your corrupted influence.";

[Enemy used for Kosk's quest. Not shift-recommended.]
Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Nightmarish Mutant"	"[PrepCombat_Nightmarish Mutant]"

to say PrepCombat_Nightmarish Mutant:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Nightmarish Mutant"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Nightmarish Mutant" to infections of MagicalList;
	add "Nightmarish Mutant" to infections of MythologicalList;
	add "Nightmarish Mutant" to infections of MaleList;
	add "Nightmarish Mutant" to infections of BipedalList;
	now Name entry is "Nightmarish Mutant"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The mutant slashes you with one of its long claws.[or]With a back-handed blow, the mutant throws you to the ground.[or]Grabbing your arm, the monstrous mutant sinks its mismatched teeth into it.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now ass change entry is ""; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "";
	now str entry is 25; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 25; [ These values may be used as part of alternate combat.]
	now per entry is 8;
	now int entry is 2;
	now cha entry is 2;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 75; [ The monster's starting HP. ]
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 7; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 5; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 2; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 5; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "nightmarish mutant milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "";
	now type entry is "";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of WalkinEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Taste Of Home"	Taste Of Home	"[EventConditions_Taste Of Home]"	Lizard Village Entrance	2500	3	100

to say EventConditions_Taste Of Home:
	if "Seasonings Found" is listed in Traits of Player:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Taste Of Home	"Taste Of Home"

Taste Of Home is a situation.
ResolveFunction of Taste Of Home is "[ResolveEvent Taste Of Home]".
Sarea of Taste Of Home is "Nowhere".

to say ResolveEvent Taste Of Home:
	say "     Kosk looks surprised when you return to him, his eyes widening as you present him with an armful of seasoning. Leaning against his spear, he takes each jar from you like a priceless treasure, cradling them to his chest. 'Woah. I didn't expect you to come back. You're pretty determined.' He says with an infectious grin, his sharp teeth shining as he reads labels and gently trails claws over them. Suddenly, you feel those bulging biceps sweep you up, accompanied by a mashing pair of lips against yours. The excited lizard spins you around, crushing you in a scaly grip, then breaking the kiss to fix you with a smirk. 'You can walk right into the village now if you want. Visit me sometime, and I'll show you how thankful I am! Might even give you some of what I cook with these babies.' Blinking in surprise from the sudden kiss, you turn toward the open path to the village, leaving Kosk to sort through the gifts you brought him.";
	TraitLoss "Seasonings Found" for Player;
	TraitGain "Lizard Village Welcome" for Kosk;
	now Taste Of Home is Resolved;

Section 3 - Kosk Sex Scenes

to say KoskFuckMenu:
	say "     [bold type]Approaching the seated Lizardman, you can't help your excitement. What do you want to ask to do?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Lizard Village Welcome" is listed in Traits of Kosk:
		choose a blank row in table of fucking options;
		now title entry is "Ask to suck Kosk off";
		now sortorder entry is 1;
		now description entry is "That genital slit seems interesting. What's hiding inside it";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Ask Kosk to fuck you";
		now sortorder entry is 2;
		now description entry is "You could use some fun. Ask Kosk to breed you";
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
				if (nam is "Ask to suck Kosk off"):
					say "[KoskSuckoff]";
				else if (nam is "Ask Kosk to fuck you"):
					say "[KoskBreeding]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the lizardman, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KoskSuckoff:
	say "     Deciding that it's time to take Kosk up on his offer to 'work up an appetite,' you approach him, asking if he's still willing to honor it. Letting your gaze drip down his muscular, dusky-colored body, you lick your lips, wondering what sort of surprise hides within his genital slit and barely resisting the urge to drop to your knees and stick your face in it. Just the slightly sweaty smell coming off of his body from this close has your chest feeling tight and your arousal beginning to grow. 'Of course. Why wouldn't I reward you? I've been eating well lately because of you.' Kosk says with a chuckle, tugging at his loincloth until it falls into a leathery heap at his feet. Admittedly, with his slit hiding his modesty, it's not that different, but the implication that it brings makes the motion that much more sexy. Tilting your face up with one clawed finger, he strokes along your chin, stealing a kiss that nearly makes you collapse into his body, his thick tongue invading your mouth and smothering yours in a flavor that reminds you of smoked meat. 'Hope you don't mind an audience, though. I'm not leaving my post and risking some asshole raising havoc.'";
	if PlayerFucked of Kosk is false:
		say "     Still reeling from Kosk's tongue, you contemplate your options. [bold type]Are you okay with sucking cock where everyone can see you?[roman type][line break]";
		say "     [link](Y)[as]y[end link] - Fuck yes. That's so fucking hot.";
		say "     [link](N)[as]n[end link] - No. You're just not into the spotlight.";
		if Player consents: [Exhibitionist Cocksucking]
			say "[SuckingKosk]";
			now PlayerFucked of Kosk is true;
		else: [No sex for you.]
			say "     Shaking your head sadly, you decline Kosk's advances, disappointed by the need to fuck in public. You were hoping for something more one-on-one where you could enjoy his attention without an audience, and you tell him so. 'Sorry. Not exactly free to come and go as I please. I'm the only one in the village willing to get down and dirty to protect it.' Kosk shrugs, still standing there in the nude, and picks up his loincloth, tying it around his spear. 'If you ever change your mind, I'll still be here. No expiration date.' Punctuating his words with sticking that talented tongue out and tugging one side of his slit open to show off the barest flash of the twin cocks hidden beneath, he tilts his head to the side, as if asking you to move along.";
	else:
		say "[SuckingKosk]";

to say SuckingKosk:
	say "     Dropping to your knees immediately, you nod emphatically. It's impossible to fuck anywhere in the city without someone watching, listening in, or smelling what you're doing anyway! You may as well enjoy the audience. At least with Kosk around, you can guarantee that one of them won't jump on you and try to join in.'Hope you don't mind going slow. Never been a two-pump chump.' Kosk grins down at you, one heavy hand resting on your head and bringing you to that musky slit. It's vaguely moist and a little sweaty but doesn't smell terrible. It reminds you of pure masculinity, unwashed and basting in the summery heat. Leaning in, you shake your head, saying you don't mind a slower approach. Charmed as you are with his sheathed cocks, you prefer it! Slowly, you nuzzle between those lips, licking as you go and tasting the mix of musk and salt until something wet taps your nose, prompting you to pull back and watch in amazement as twin shafts grow before your nose, practically pissing precum. They're long even for his size, though they taper off, their skin shining a deep blood red that contrasts with his pink slit and black scales. They're at LEAST a foot long, if not more!";
	say "     'Mm. Don't stop.' Kosk grunts, smearing those twin shafts over your face with uncharacteristic impatience until one tapered tip finds your lips, invading your mouth and bathing your senses in thick virile squirts of pre. 'It's been a while. Breathe through your nose.' Slowly, you lavish care on that shaft, gripping its twin and feeling its heft in your palm, firing off into space. Your tongue mashes against the bottom of your mouth from the sheer girth of that jawbreaker's base, but thankfully the tip is easy enough to take, giving you somewhere to retreat whenever your overworked mouth aches.";
	WaitLineBreak;
	if hunger of Kosk is 0:
		say "     'Busy day, Kosk?' A giggling feminine voice says from behind you. 'Didn't think you had it in you. Why didn't you take me up on my offer?' Out of the corner of your eye, a pale pink form materializes, standing there while you suck patiently as though this is the most normal thing in the world. 'I can fit both in MY mouth.' She seems prideful, as though she's competing with you. 'Uh-huh. I wouldn't trust that barbed tongue anywhere near my dick, Thressa. I've heard the stories. I don't want to get bitten because I don't tell you how big your tits are.' A possessive, insistent hand presses at the back of your head as Kosk insults the woman, encouraging you deeper while those twin shafts throb, seemingly excited by the audience, though Kosk seems to have an unpleasant relationship with the female lizard. 'I'll have you know they used to be G-cups! Stupid transformation stole my boobs!' Thressa replies,  her pouting face coming into your view as she crosses her arms beneath two tiny breasts, barely A-cups. 'I'm much better than some random person outside the village! Just ask, and I'll show you.' Again, she tries to pull Kosk away from your efforts. What a bitch! 'No thanks.' Kosk shrugs, letting you up to breathe and looking down at you with a doting smile that seems to apologize for nearly choking you. 'I think my friend here will do just fine. Find someone else to annoy.'";
		now hunger of Kosk is 1;
	say "     Slowly, up and down, you work that shaft, your cheeks burning each time footsteps stop outside of view, and Kosk starts small talk with their owner. It's almost as though you've always been there, tending to those twin cocks, and your slightly numbed lips agree. He wasn't kidding when he said he takes a while! 'You're a hell of a trooper.' Kosk murmurs as you swap cocks, cupping the back of your head and giving an experimental thrust that bulges your throat and sends a healthy dose of lizard pre squirting from your nostrils to join the mess dripping down your chin. 'It usually gets a bit slow about this time of day. Why don't I show you a good time?'";
	say "     You're unsure what Kosk means until you feel both hands on the back of your head, shoving you to the base of that pulsing cock and sandwiching you between muscular thighs. Lightning-quick thrusts plunder your throat, working a symphony of gagging sounds from your mouth. You're lost in your little world, thrashing your tongue against the underside and staring at him with half-glazed eyes, your body nothing more than a receptacle for cock. 'Fuck!' Kosk groans aloud as his cock bounces against the roof of your mouth, heralding a messy finish. Tugging free of your lips, he mashes his twin cocks into your overworked mouth, spreading it open just as the flood belches from their tips and holding you in place, leaving no option besides gulping noisily in an attempt to prevent yourself from drowning. 'Drink it down!' He moans, his thick tail thrashing behind him and drool dripping from his clenched jaws through sharp white teeth.";
	say "     'I don't suppose you're looking for something more permanent?' Kosk teases as strong arms tug you to your feet. 'I could use some company. I'll make it worth your while. All you can eat.' Your foggy brain can't tell whether he means cock or actual food, but you don't care, melting in his arms as he tugs you to your feet and messily kisses you, sharing the taste of his gooey virility and cleaning your face with his tongue. All too soon, you depart, favored by one last grope from the sated lizardman. As you walk away, you can still see Kosk's cocks hanging free while he waves at you, leaning on his spear. No doubt a cum that hard took a lot out of him!";
	NPCSexAftermath Player receives "OralCock" from Kosk;
	[TraitGain "Thressa Met" for Thressa;]

to say KoskBreeding:
	say "     Deciding that it's time to take Kosk up on his offer to 'work up an appetite,' you approach him, asking if he's still willing to honor it. Letting your gaze drip down his muscular, dusky-colored body, you lick your lips, wondering what sort of surprise hides within his genital slit and barely resisting the urge to drop to your knees and present your ass to him. Just the slightly sweaty smell coming off of his body from this close has your chest feeling tight and your arousal beginning to grow. 'Of course. Why wouldn't I reward you? I've been eating well lately because of you.' Kosk says with a chuckle, tugging at his loincloth until it falls into a leathery heap at his feet. Admittedly, with his slit hiding his modesty, it's not that different, but the implication that it brings makes the motion that much more sexy. Tilting your face up with one clawed finger, he strokes along your chin, stealing a kiss that nearly makes you collapse into his body, his thick tongue invading your mouth and smothering yours in a flavor that reminds you of smoked meat. 'Hope you don't mind an audience, though. I'm not leaving my post and risking some asshole raising havoc.'";
	if PlayerFucked of Kosk is false:
		say "     Still reeling from Kosk's tongue, you contemplate your options. [bold type]Are you okay with taking cock where everyone can see you?[roman type][line break]";
		say "     [link](Y)[as]y[end link] - Fuck yes. That's so fucking hot.";
		say "     [link](N)[as]n[end link] - No. You're just not into the spotlight.";
		if Player consents:
			if Player is female:
				say "[KoskPussyFuck]";
			else:
				say "[KoskAnalFuck]";
		else:
			say "     Despite the fire burning in your innards, begging for lizard cock, you decline Kosk's offer. You're just not comfortable being fucked in front of an audience, and you tell him so. 'No need to apologize. I know it's not for everyone. Come see me if you change your mind. I'll rock your world.' Kosk winks at you, pressing a soft kiss to your cheek and groping your ass as you break contact.";
	else:
		if player is female: [straight vaginal/dp]
			say "[KoskPussyFuck]";
			NPCSexAftermath Player receives "PussyFuck" from Kosk;
		else if player is male: [gay anal]
			say "[KoskAnalFuck]";
			NPCSexAftermath Player receives "PussyFuck" from Kosk;

to say KoskPussyFuck:
	say "     [if Player is not barecrotch]Trailing his fingers over your hips and slowly tugging down the garments covering your sex from his view [else]Trailing his fingers over your bare sex [end if]Kosk nuzzles into you from behind, flicking his fingers over your lower lips and lavishing care on your sex until you drip with excitement. 'You're a bit tight. I hope you don't mind getting stretched out.' He coos as one thick finger pierces your sex, slurping deep enough that you barely suppress a moan. 'I'm not one to rush things, though. I'll ease into it.' You can barely think as a finger fucks your pussy open with slow pumps, their dextrous neighbor swirling over your clit. A second finger slips in once you've gotten wet enough, then a third, gently seeking all the spots that make you whimper and push back, until just before you feel like you'll finish, they withdraw, leaving you empty and wanting. You wiggle your hips like a bitch in heat, indignantly demanding more stimulation. 'I know, I know. Don't worry.' Kosk chuckles at your wanton behavior as he lines up one of his prodigious cocks, spearing you open on his tapered length and sliding in on your drooling wetness. The other shaft splits your cheeks, hotdogging your ass while he explores your needy cunt.";
	if thirst of Kosk is 0:
		if anallevel is 3:
			say "     Biting your lower lip, you reach behind you to guide that second shaft against the soft button of your hole. You're so needy that you don't think you can settle for only one cock, and you're not above begging to get double-fucked, so you shove back, hissing through clenched teeth as your ass opens up for the second dick. It's a strange sensation to feel those twin cocks rubbing against each other with only a thin barrier between them, but the stretch has you squirming with desire. Slow, rhythmic thrusts core out both your holes as Kosk holds your hips, hunched over you and using your body to stay upright. It's less of a fuck and more using your whole body to stroke those two cocks as they fire off so much pre that you're positively sloshing, but you can't complain, widening your stance to encourage heavy thrusts. There's something so primally satisfying about being used.";
			say "     'No fair! You told me you don't like butt stuff.' A masculine voice pouts as a slight male lizard walks up, arms full of a basket of some unknown fruit. 'Why are you letting some outsider take your dick? I thought you said you'd hit me up if you ever changed your tune.' Stamping his foot, the skinny pale-yellow-scaled boy looks at Kosk disdainfully, ignoring you. 'Hah, I guess I did, didn't I?' Kosk says with an oddly normal tone despite his cocks' steady pace. 'Not like I was planning on calling you around anyway, Strass. I've heard the stories. You're all bark! Crazz told me how much you begged him to stop after you sat on his dick. If he's too big for you, I'd rip you apart.' The indignant boy casts a jealous stare your way, then stamps off, calling over his shoulder. 'You don't have to be a dick, Kosk. You could have just said you're not interested!'";
			WaitLineBreak;
			say "     A few more lizard men and women pass by as Kosk stirs your innards into a froth, each pausing to chat with Kosk and barely acknowledging you. Strangely, the fact that they treat you as nothing more than the furniture turns you on, and you cover your face in their company, twitching through slow-building orgasms that last far too long, aided by Kosk's stamina and steady shoves. You swear you finish at least a dozen times before Kosk shows any signs of stopping, basting your innards in so much pre that you feel the excess dripping down your thighs. 'Usually gets pretty slow around this time.' Kosk grunts after a few minutes in panting silence. It seems he's finally lost his composure, and the way he's shoving inward, slapping your ass cheeks against his lower stomach, tells you he's close to his finish. 'Why don't we finish up? Clench for me.' With that little warning, he speeds his thrusts, slamming into you with such force that you swear he's bruising your cervix AND colon.";
			say "     Nodding emphatically, you clamp your inner muscles, going limp under the sudden onslaught of lightning-quick thrusts. It's even better than the steady fucking you've received over the past hours, and just as you crest a baker's dozen orgasms, you feel the cocks inside you erupt, stuffing your holes with so much hot liquid lizard that you can feel your stomach stretch to accommodate it. 'Fuck. I needed that.' Kosk pants, leaning over your back and tilting your head to favor you with a sloppy kiss that smears his drool over your face, slathering your tongue in a smoky flavor. It's a few minutes before he tugs his softening shafts out of your holes, and when he does, he spends another few playing with your stretched cunt, fingering your oversensitive walls, and squeezing your ass. Sadly, all good things come to an end, and you have to say goodbye to the vigilant lizard, leaving him to lean against his spear and lazily wave, his cocks still dripping outside of their slit.";
		else:
			say "     Biting your lower lip, you reach behind you to guide that second shaft against the soft button of your hole. You're so needy that the added friction between your cheeks adds something, and you're not above letting him make a mess of you, groaning as he settles into your ass crack and paints it with gooey lizard pre. It's a strange sensation to feel those twin cocks working in tandem, one inside you and the other marking your rump, but the stretch has you squirming with desire. Slow, rhythmic thrusts core out your hole as Kosk holds your hips, hunched over you and using your body to stay upright. It's less of a fuck and more using your whole body to stroke those two cocks as they fire off so much pre that you're positively sloshing, but you can't complain, widening your stance to encourage heavy thrusts. There's something so primally satisfying about being used.";
			say "     'No fair! You told me you don't like butt stuff.' A masculine voice pouts as a slight male lizard walks up, arms full of a basket of some unknown fruit. 'Why are you letting some outsider take your dick? I thought you said you'd hit me up if you ever changed your tune.' Stamping his foot, the skinny pale-yellow-scaled boy looks at Kosk disdainfully, ignoring you. 'Never said I didn't like pussy, and a pretty bun like this is just begging for a hotdog' Kosk says with an oddly normal tone despite his cock's steady pace and spare shaft's fountaining show between your gooey ass cheeks. 'Not like I was planning on calling you around anyway, Strass. I've heard the stories. You're all bark! Crazz told me how much you begged him to stop after you sat on his dick. If he's too big for you, I'd rip you apart.' The indignant boy casts a jealous stare your way, then stamps off, calling over his shoulder. 'You don't have to be a dick, Kosk. You could have just said you're not interested!'";
			WaitLineBreak;
			say "     A few more lizard men and women pass by as Kosk stirs your innards into a froth, each pausing to chat with Kosk and barely acknowledging you. Strangely, the fact that they treat you as nothing more than the furniture turns you on, and you cover your face in their company, twitching through slow-building orgasms that last far too long, aided by Kosk's stamina and steady shoves. You swear you finish at least a dozen times before Kosk shows any signs of stopping, basting your innards in so much pre that you feel the excess dripping down your thighs. 'Usually gets pretty slow around this time.' Kosk grunts after a few minutes in panting silence. It seems he's finally lost his composure, and the way he's shoving inward, slapping your ass cheeks against the base of his upper dick, tells you he's close to his finish. 'Why don't we finish up? Clench for me.' With that little warning, he speeds his thrusts, slamming into you with such force that you swear he's bruising your cervix.";
			say "     Nodding emphatically, you clamp your inner muscles, going limp under the sudden onslaught of lightning-quick thrusts. It's even better than the steady fucking you've received over the past hours, and just as you crest a baker's dozen orgasms, you feel the cock inside you erupt, stuffing your hole with so much hot liquid lizard that you can feel your stomach stretch to accommodate it. 'Fuck. I needed that.' Kosk pants, leaning over your back and tilting your head to favor you with a sloppy kiss that smears his drool over your face, slathering your tongue in a smoky flavor. It's a few minutes before he tugs his softening shaft out of your hole, and when he does, he spends another few playing with your stretched cunt, fingering your oversensitive walls, and squeezing your well-coated ass. Sadly, all good things come to an end, and you have to say goodbye to the vigilant lizard, leaving him to lean against his spear and lazily wave, his cocks still dripping outside of their slit.";

to say KoskAnalFuck:
	say "     [if Player is not barecrotch]Trailing his fingers over your hips and slowly tugging down the garments covering your ass from his view [else]Trailing his fingers over your bare cock [end if]Kosk nuzzles into you from behind, flicking his fingers over the underside of your shaft and lavishing care on the tip until you drip with excitement. 'You look a bit tight. I hope you don't mind getting stretched out.' He coos as one thick finger pierces your asshole, slurping deep enough that you barely suppress a moan. 'I'm not one to rush things, though. I'll ease into it.' You can barely think as a finger fucks your hole open with slow pumps, their dextrous neighbor swirling over your perineum. A second finger slips in once you've gotten wet enough, then a third, gently seeking all the spots that make you whimper and push back, until just before you feel like you'll finish, they withdraw, leaving you empty and wanting. You wiggle your hips like a bitch in heat, indignantly demanding more stimulation. 'I know, I know. Don't worry.' Kosk chuckles at your wanton behavior as he lines up one of his prodigious cocks, spearing you open on his tapered length and sliding in with the aid of his copious pre. The other shaft rubs between your thighs, tickling your taint.";
	say "     Biting your lower lip, you reach beneath you to stroke that second shaft, clamping your thighs together to provide a soft place for it to slip and slide. You're so needy that you don't think you can settle for only one cock, and the hot, wet pulse of pre basting your shaft with each push feels so good that you shove back, hissing through clenched teeth as your ass opens up for the first dick, the second one following your perineum up to grind along the underside of your manhood. It's a strange sensation to feel one inside you and the other thigh fucking you, but not at all unwelcome, and you demand more with needy clenches, begging to get fucked like the whore you are.";
	WaitLineBreak;
	if thirst of Kosk is 0:
		say "     'No fair! You told me you don't like butt stuff.' A masculine voice pouts as a slight male lizard walks up, arms full of a basket of some unknown fruit. 'Why are you letting some outsider take your dick? I thought you said you'd hit me up if you ever changed your tune.' Stamping his foot, the skinny pale-yellow-scaled boy looks at Kosk disdainfully, ignoring you.'Hah, I guess I did, didn't I?' Kosk says with an oddly normal tone despite his cocks' steady pace. 'Not like I was planning on calling you around anyway, Strass. I've heard the stories. You're all bark! Crazz told me how much you begged him to stop after you sat on his dick. If he's too big for you, I'd rip you apart. No way in hell you can take cock this good.' The indignant boy casts a jealous stare your way, then stamps off, calling over his shoulder. 'You don't have to be a dick, Kosk. You could have just said you're not interested!'";
		now thirst of Kosk is 1;
	WaitLineBreak;
	say "     A few more lizard men and women pass by as Kosk stirs your innards into a froth, each pausing to chat with Kosk and barely acknowledging you. Strangely, the fact that they treat you as nothing more than the furniture turns you on, and you cover your face in their company, twitching through slow-building orgasms that last far too long, aided by Kosk's stamina and steady shoves. You swear you nearly cum half a dozen times before Kosk shows any signs of stopping, basting your innards in so much pre that you feel the excess dripping down your thighs to lubricate his second shaft's gooey thighfuck. Thankfully, you manage to hold it in, hoping to finish when the stud does. 'Usually gets pretty slow around this time.' Kosk grunts after a few minutes in panting silence. It seems he's finally lost his composure, and the way he's shoving inward, slapping your ass cheeks against his lower stomach, tells you he's close to his finish. 'Why don't we finish up? Clench for me.' With that little warning, he speeds his thrusts, slamming into you with such force that you swear he's bruising your colon.";
	say "     Nodding emphatically, you clamp your inner muscles, going limp under the sudden onslaught of lightning-quick thrusts. It's even better than the steady fucking you've received over the past hours, and just as you crest your peak, firing off several strings into the muddy path below, you feel the cocks inside you erupt, stuffing your hole with so much hot liquid lizard that you can feel your stomach stretch to accommodate it. 'Fuck. I needed that.' Kosk pants, leaning over your back and tilting your head to favor you with a sloppy kiss that smears his drool over your face, slathering your tongue in a smoky flavor. It's a few minutes before he tugs his softening shafts out of your hole, and when he does, he spends another few playing with your stretched ass, fingering your oversensitive walls, and squeezing your cheeks as he strokes your prostate. Sadly, all good things come to an end, and you have to say goodbye to the vigilant lizard, leaving him to lean against his spear and lazily wave, his cocks still dripping outside of their slit.";


Kosk ends here.