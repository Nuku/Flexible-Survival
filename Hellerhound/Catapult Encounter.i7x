Catapult Encounter by Hellerhound begins here.


Section 1 - Catapult Encounter

Table of GameEventIDs (continued)
Object	Name
Loaded Catapult	"Loaded Catapult"

Loaded Catapult is a situation.
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
	now Resolution of Loaded Catapult is 1; [fired]
	now loaded catapult is resolved;

gotcatares is a number that varies.

catadiff is a number that varies.
catadiff is 20.

instead of resolving a loaded catapult:
	say "You find a loaded catapult, a large plastic grocery bag filled with a thick liquid in the cup, and the arms just waiting to let fly.";
	say "You look up to find the target, tilting your [face of Player] head into the distance. There seems to be a large military blockade there, a huge earthen wall with turrets and barbed wire, giant tanks in lines behind that, and then armed men stretching as far as the eye can see. They are all alert and tense, probably from the one who set this up.";
	say "Do you want to check out what the bags are filled with?";
	if Player consents:
		say "You tear a bag open at random, and find they are containing large volumes of cum, milk, and piss. Whoever did this was not on the side of the rescuers. ";
		say "You could drink some of the reeking liquids, though that would not be without consequences for your health.";
		if Player consents:
			say "Overcoming your disgust, you dip your [face of Player] head into the mess, slurping it up.";
			decrease thirst of Player by 25;
			SanLoss 10;
			if "Iron Stomach" is not listed in feats of Player:
				weakrandominfect;
				weakrandominfect;
			WaitLineBreak;
		else:
			say "You leave the bag where it is.";
	else:
		say "You watch your step, careful not to get too close to the bags lest they pop.";
	say "Do you wish to fire the catapult?";
	if Player consents:
		say "[catapult fire]";
	else:
		if gotcatares is 0:
			say "Upon close inspection, there appears to be bags of supplies near the firing mechanism. Maybe you could wriggle them free without discharging the catapult?";
		else:
			say "You find that someone has renewed the supplies, though they seem harder to get this time. Do you wish to try to get them anyway?";
			increase catadiff by 10;
		if Player consents:
			say "You begin to wriggle into the tangle of ropes.";
			if a random number between one and catadiff > the dexterity of the player:[the catapult fires]
				say "You accidentally bump a trigger rope, and the contraption begins to swing. You get out of there fast. [catapult fire]";
			else:
				say "You manage to get the resources without touching the ropes.";
				now Resolution of Loaded Catapult is 2; [got some supplies]
				repeat with T running from one to three:
					increase carried of food by 1;
					increase carried of water bottle by 1;
					now gotcatares is 1;
		else:
			say "You look at the resources, tortured by their nearness, but decide to leave them be.";



Catapult Encounter ends here.
