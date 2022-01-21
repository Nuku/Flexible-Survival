Jackalboy by Sarokcat begins here.

"Adds a Jackalboy to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses


to say jackalboy attack:
	say "'wow you got here how did that happen.'";
	wait for any key;
	if Player is male:
		say "yay";
		infect "Jackalboy";
	else:
		say "yowza";
		infect "Jackalboy";


To say jackalboy loss:
	say "how the heck did you manage to get this, you are just that awesome I guess.'";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Jackal"; [name of the overall species of the infection, used for children, ...]
	add "Jackalboy" to infections of CanineList;
	add "Jackalboy" to infections of FurryList;
	add "Jackalboy" to infections of NatureList;
	add "Jackalboy" to infections of MaleList;
	add "Jackalboy" to infections of TaperedCockList;
	add "Jackalboy" to infections of KnottedCockList;
	add "Jackalboy" to infections of SheathedCockList;
	add "Jackalboy" to infections of BipedalList;
	add "Jackalboy" to infections of TailList;
	now Name entry is "Jackalboy";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]She riddles you this and that till you cry.[at random]";
	now defeated entry is "[jackalboy loss]";
	now victory entry is "[jackalboy attack]";
	now desc entry is "The jackalboy is watching you!!";
	now face entry is "narrow canine head, with a long, sleek muzzle and a nicely flattened forehead. Your golden eyes seem to take in every aspect of the world around you as your sleek jackal ears swivel around on top of your head to catch the faintest noise. You can't help but enjoy how much your mistress seems to like your new jackal's"; [ Face description, format as "Your face is (your text)."]
	now body entry is "slim and sleek, only lightly muscled with digitigrade legs and jackal-like feet. Your slender body is the perfect shape for a submissive little jackal boy like yourself"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]"; [ skin Description, format as "Your body is covered in (your text) skin."]
	now tail entry is "You have a sleek, black-furred jackal's tail attached to your rear, swaying happily over your tight and sexy ass with every step you take."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canine[or]jackalboy[or]jackal-like[or]knotted[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "Your face tingles as your mouth pushes forward into a sleek black muzzle, and your eyes blur as they shift in both color and position. New sounds and smells explode through your enhanced senses as your new jackal's muzzle finishes forming and your ears complete shifting into proper canine ears, swiveling around on top of your head like a proper jackal's"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it seems to slim down, its form becoming both sleek and slim as it seems to shorten slightly. You can feel your legs shift and change as well, causing you to stumble for a minute as your heels seem to shift upwards on your legs, shifting your weight forward onto the balls of your changing feet. Soon your feet finish their transformation and you find yourself balancing easily on your new jackal-like paws, as you stand on your slender digitigrade legs"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "a soft tingling sensation spreads across your body and soft, sleek, black jackal fur begins to push its way out of it. The fur quickly covers your body in a sexy coat of short dark fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a strange tingling sensation seems to grow in your rear. It softens and flattens somewhat, then with a soft pulling sensation you feel a thin black canine tail slowly extend from your tailbone, lengthening until it is down past your knees before the changing stops"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "its shaft thins and changes, the tip tapering to a point while its base seems to swell up slightly before being covered in a soft black sheath of fur"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 8;
	now dex entry is 20;
	now sta entry is 10;
	now per entry is 22;
	now int entry is 18;
	now cha entry is 26;
	now sex entry is "Male"; 						[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 100;
	now lev entry is 10; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 20; [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls ]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 80; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]slender[at random]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is true;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




to jackalboyify:
	repeat with y running from 1 to number of rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Jackalboy":
			now MonsterID is y;
			break;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [swap to allow infection...]
	infect;
	now non-infectious entry is true;  [...then close to prevent random infection]


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Jackalboy Infection"	"Infection"	""	Jackalboy Infection rule	1000	false

This is the Jackalboy Infection rule:
	if Player has a body of "Jackalboy":
		trigger ending "Jackalboy Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is male:
				say "     Looking around the city, you finally realize your true purpose in life, and hurry back to the shop where your wonderful mistress is waiting. You arrive back just in time as not much later your mistress closes up the doors for a while so the military can hunt through the city without bothering the two of you as you become even better acquainted. Eventually after you have worshiped every inch of your lovely mistress's divine body with your tongue and your hands several times, she decides to reopen the shop for a bit. You are only partially surprised at the fact that when she opens the store front, it now opens out onto a bustling street in some other city entirely. Soon you are happily fetching things and tidying the store for her during the day, while after hours she rewards you for your loyal service by playing with your body and letting you worship her own. As the days pass into years and then decades, you realize that you never seem to grow any taller or stronger, and neither you nor your mistress ever seem to age, taking it as just another sign of the perfection of your wonderful forms. You are a perfectly happy pet jackal boy for your mistress, now and forever, just like you wanted to be, and while you will certainly never be her equal or true mate, you are still happy and filled with the joy of being allowed to serve and pleasure her as often as you can.";
			else:
				say "     Looking around the abandoned city, you finally realize that your true purpose in life is in serving and being a happy little jackal pet. A smile tugs across your muzzle as you hurry back to the mall and your mistress, only to find yourself unable to find the mysterious store any longer, your mistress obviously having given up on you and closed up shop already. You find yourself at a loss for what to do, as you wander aimlessly through the streets, and are soon captured by one of the groups of beasts still roaming the city, hardly even putting up a fight as they take you back to their lair. The beasts seem surprised at the fact that you don't change under the influence of the infection, but you soon become a prized treasure, as your servile nature makes you a happy pet for your new masters, and your belly swells again and again with their fully changed offspring. The fact that you do not seem to age and can bear the offspring of just about any of the beasts in the city, combined with the fact that you are so eager and willing to serve any master now that your mistress has vanished, makes you a valuable treasure in the ongoing struggle in the city. And you find yourself changing hands several times, even ending up in the military's hands several times, only to betray the humans to your bestial masters as soon as you discover they don't intend to use you like a proper little pet and fill you with their seed. Soon the city is left to the beasts, and you spend the rest of your long life in service to one faction or another, sometimes changing factions monthly, other times staying a happy pet of one group for decades. You really find yourself not caring who you serve, your mind completely overcome with the joy of helping your current masters and the simple pleasures of being their well-used fuckpet... You just sometimes wish you could find the store again someday so you could thank the jackal woman properly for all the wonderful help she gave you...";
		else:
			if Player is female:
				say "     Rescued from the city with your mind intact, you still feel somewhat alone and lonely even as you try to fit back into normal society. Most nights your thoughts are filled with worry as you think of the lovely Jackal woman back in the city who made you her helper, and find yourself wondering how she is getting along without you there to help see to her needs. You do ask the military if any of them have come across your one time mistress, only to find that none of them even managed to come across her store no matter how hard they looked. Feeling somewhat despondent, much like a pet without an owner or a servant without a master, you try to fill the time with work, finding pleasure in serving someone, even if it isn't anywhere near as much pleasure as serving your mistress brings. Several people take advantage of your servile nature, and before you know it one of them has sent you to deliver a package to some shady characters in the bad side of town. You are surprised when they seem very eager to see you, and unwrap the package immediately to reveal a small studded collar, you are confused until the person begins to fit the collar tightly around your neck, and realize that you yourself were the real delivery! You struggle slightly, but like any well trained pet, you swiftly find yourself eagerly responding to the commands of your new master, and are soon unable to even think about resisting his commands, glad to finally have someone to serve properly, as a pet and slave instead of as servant. Your new master wastes no time in breaking you in himself, and you soon come to enjoy every minute of your new life spent serving him and his friends both with your talents and your body. Eventually your master gives you the best reward of all by filling your belly with his seed and granting you the joy of bearing more slutty little pets to eventually serve his every whim. You can't even imagine any other fate could be more glorious than this new life is.";
			else:
				say "     Rescued from the city with your mind intact, you still feel somewhat alone and lonely even as you try to fit back into normal society. Most nights your thoughts are filled with worry as you think of the lovely Jackal woman back in the city who made you her helper, and find yourself wondering how she is getting along without you there to help see to her needs. You do ask the military if any of them have come across your one time mistress, only to find that none of them even managed to come across her store no matter how hard they looked. Feeling somewhat despondent, much like a pet without an owner or a servant without a master, you try to fill the time with work, finding pleasure in serving someone, even if it isn't anywhere near as much pleasure as serving your mistress brought you. You wander through many jobs, a number of people enjoying your servile attitude as you do whatever they want, your heart growing heavier with every day as you long for a proper master or mistress to serve again. Eventually while on a task for your current employer, you pass by a familiar looking shop door in the local mall. You immediately stop what you are doing and abandon your task as you happily step into a very familiar shop and find your mistress looking up at you with a grin from across the counter. Your heart sings with joy as you realize that somehow, even after being taken out of the city, you have found your way back to the place you now belong...";

Jackalboy ends here.
