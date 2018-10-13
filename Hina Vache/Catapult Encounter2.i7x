Catapult Encounter2 by Hina Vache begins here.

Diego has a Grab Object called Bait.
The Bait of Diego is usually journal.
BaitList is a list of objects that varies.[@Tag:NotSaved]
the BaitList is {medkit, water bottle, soda, chips, food}.

Table of GameEventIDs (continued)
Object	Name
Loaded Catapult	"Loaded Catapult"

Loaded Catapult is a situation.
The sarea of Loaded Catapult is "Outside".

instead of resolving Loaded Catapult:
	if the Bait of Diego is journal:
		now demandIndex is a random number from 1 to the number of entries in BaitList;
		now the Bait of Diego is entry demandIndex of BaitList;
	say "     As you walk down the street you find something you had only seen illustrated in old history textbooks: a catapult. Looking around and deciding it is safe to check it out you approach the medieval siege weapon. The design is proper but rather simple compared to what most illustrations had depicted of one, seeming to be made of spare parts and somewhat worn 2x4 boards the creator must have scavenged somewhere. But the biggest surprise has to be what is in the spoon of the contraption. A massive, industrial grade bag lays in wait, ready to be tossed far and high by whomever decides to fire the weapon. At first you think nothing of the bag, but your curiosity gets the better of you and you soon find yourself carefully opening the bag to see what is inside.";
	say "     [if level of player > 4]To no surprise[else]Shockingly[end if] the bag is filled with gallons of seed. Far too much to be from a single source. You quickly close the bag, careful to not get any of the nanite infused baby batter on you. As you continue to inspect the machine you notice ";
	if Bait of Diego is medkit:
		say "a medkit ";
	else if Bait of Diego is water bottle:
		say "a water bottle ";
	else if Bait of Diego is soda:
		say "a soda bottle ";
	else if Bait of Diego is chips:
		say "a bag of chips ";
	else if Bait of Diego is food:
		say "some food ";
	say "placed near the firing mechanism. It is connected to the trigger by means of an almost invisible piece of fishing line, creating an effective trap for anyone out to grab it. That makes it very easy to fire off this infernal device by simple accident...";
	say "     [bold type]Will you try to obtain the supplies?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, it'll be useful for you!";
	say "     ([link]N[as]n[end link]) - Better not - who knows what this thing is aimed at!";
	if player consents:
		LineBreak;
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 15:
			say "     You carefully maneuver your hands around the well-placed trap on the machine, focused on only the prize and making sure no unintended consequences occur. It takes a bit of time and patience, but you soon have your trophy in your grasp, taking it back just as carefully as you reached for it. As soon as you are in the clear you stash your prize into your pack, sighing in relief that you were able to outwit whomever tried to trick you with this trap.";
			LineBreak;
			say "[bold type]You gain 1 [Bait of Diego]![roman type][line break]";
			increase carried of Bait of Diego by 1;
			say "     Hm, despite having 'won', you can't quite help wondering what would happen if this device was actually fired. Then a little voice at the back of your mind whispers that you should simply try it - just for the fun of it.";
			say "     [bold type]Fire the catapult?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - All cum-cannons to full blast!";
			say "     ([link]N[as]n[end link]) - Hell no!";
			if player consents:
				LineBreak;
				say "     An evil grin crosses your face. It's the apocalypse! Who cares if something like this gets flung through the air? People have been going through much worse lately than a bag of monster cum splashing around them. Surely. Well, probably anways. You <...>";
			else:
				LineBreak;
				say "     <...>";
		else:
			say "     As you manage to get your fingers on your prize, you accidentally put a little too much pressure on the mechanism, causing the fishing line to rub up against a sharp edge and snap with a twang. Gears spin and the catapult fires with a resounding noise of the firing arm thumping against the holding bar in the blink of an eye. Thankfully, you manage to avoid being hit by any moving part and just fall on your ass as you jump to safety. From your position on the ground, you see the bag sail high into the air, above the nearby buildings and further on after that, making you lose sight of it. You wince a little as a loud splash of the thing hitting the ground can be heard a few heartbeats later - no doubt having made an unholy mess of whatever was its designated target. Whatever it was - surely, now the place is painted a creamy white. Whelp, better get out of here before someone figures out what idiot fired this thing. So you take your trophy of a job poorly done and make a run for it!";
			LineBreak;
			say "[bold type]You gain 1 [Bait of Diego]![roman type][line break]";
			increase carried of Bait of Diego by 1;
	else:
		LineBreak;
		say "     <...>";


[
Old Event:

Section 1 - Catapult Encounter
catafire is a number that varies.


to say catapult fire:
	now catafire is 1;
	say "The catapult lurches as the bag is lifted into the air and thrown. Almost immediately there is a commotion among the armed men, they start firing at it, big bullets ripping through the bag and releasing the mess inside. You realize the maker probably intended this to happen, and watch as the spraying mess soaks most of the soldiers. They immediately begin to moan and sprout multiple infections after a couple seconds.";
	if a random chance of one in two succeeds:
		say "The nearby soldiers shoot the changing ones, bringing down some but not enough. The lines are broken, and hordes of the infected charge through the defenses and take down the soldiers.";
	else:
		say "The nearby soldiers are overtaken with surprise, and the lines fall.";
	say "The rescue just got set back REALLY far.";
	extend game by (14 times 8);
	now loaded catapult is resolved;

gotcatares is a number that varies.

catadiff is a number that varies.
catadiff is 20.

instead of resolving a loaded catapult:
	say "You find a loaded catapult, a large plastic grocery bag filled with a thick liquid in the cup, and the arms just waiting to let fly.";
	say "You look up to find the target, tilting your [face of player] head into the distance. There seems to be a large military blockade there, a huge earthen wall with turrets and barbed wire, giant tanks in lines behind that, and then armed men stretching as far as the eye can see. They are all alert and tense, probably from the one who set this up.";
	say "Do you want to check out what the bags are filled with?";
	if player consents:
		say "You tear a bag open at random, and find they are containing large volumes of cum, milk, and piss. Whoever did this was not on the side of the rescuers. ";
		say "You could drink some of the reeking liquids, though that would not be without consequences for your health.";
		if player consents:
			say "Overcoming your disgust, you dip your [face of player] head into the mess, slurping it up.";
			decrease thirst of player by 25;
			decrease humanity of player by 10;
			if "Iron Stomach" is not listed in feats of player:
				weakrandominfect;
				weakrandominfect;
			WaitLineBreak;
		else:
			say "You leave the bag where it is.";
	else:
		say "You watch your step, careful not to get too close to the bags lest they pop.";
	say "Do you wish to fire the catapult?";
	if player consents:
		say "[catapult fire]";
	else:
		if gotcatares is 0:
			say "Upon close inspection, there appears to be bags of supplies near the firing mechanism. Maybe you could wriggle them free without discharging the catapult?";
		else:
			say "You find that someone has renewed the supplies, though they seem harder to get this time. Do you wish to try to get them anyway?";
			increase catadiff by 10;
		if player consents:
			say "You begin to wriggle into the tangle of ropes.";
			if a random number between one and catadiff is greater than the dexterity of the player:[the catapult fires]
				say "You accidentally bump a trigger rope, and the contraption begins to swing. You get out of there fast. [catapult fire]";
			else:
				say "You manage to get the resources without touching the ropes.";
				repeat with T running from one to three:
					increase carried of food by 1;
					increase carried of water bottle by 1;
					now gotcatares is 1;
		else:
			say "You look at the resources, tortured by their nearness, but decide to leave them be.";

]

Catapult Encounter2 ends here.
