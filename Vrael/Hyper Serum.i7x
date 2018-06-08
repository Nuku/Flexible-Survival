Hyper Serum by Vrael begins here.

HyperSerumTracker is a number that varies.

Mysterious Briefcase is a situation 
The sarea of Mysterious Briefcase is "Outside".

instead of resolving Mysterious Briefcase:
	Say "     Roaming through the city, always on the lookout for supplies or other interesting objects that might help you survive, you spot an abandoned car some distance ahead. Glancing left and right for any creatures that might be lying in ambush for scavengers, you approach slowly, carefully stepping around pieces of glass and trash that might make a noise. There is no trace of the occupant of the car, just a wide-open driver's door. Maybe he or she escaped whatever creature that left some deep rents in the car's hood and brought it to a standstill. A few steps from the car, you spot an unusual briefcase lying on the ground, emblazoned with a rounded company logo. The sturdy case looks intact and was most likely dropped by the fleeing driver, with the chasing monster more interested in the person than their posessions. A lucky break for you it seems.";
	say "     Checking over the briefcase, you notice the sturdy locks at the front, making you worry about having to hunt for a key. But as luck will have it, you find it is not locked! Inside the briefcase are several vials of a murky blue liquid and a jumbled mess of papers, no doubt from when the briefcase was dropped and thrown around. As you do not really have the time to read through all of it on the street you begin to skim through the first few pages, gleaning that whoever this briefcase belonged to was some sort of scientist before the outbreak. He was apparently working on ways to increase virility for males as well as their endowments but his experiments were just too potent and extreme for any normal male to handle without passing out after a while. Thankfully, the effects were only temporary, so no one came to harm, but the researcher was working on a way to weaken the formula.";
	say "     [bold type]What do you want to do with this?[roman type][line break]";	
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take the briefcase. It might just allow some fun times to be had.";
	say "     ([link]N[as]n[end link]) - Leave it. Bad things can happen if one messes around with experimental chemicals.";
	if player consents:
		LineBreak;
		say "     Stuffing everything back in the briefcase, you grab your new acqusition and make a beeline for the Grey Abbey Library since it would be a bit much to lug around during further exploration. (...more scene...)";
		move player to Grey Abbey Library;
		now HyperSerumTracker is 1;
	else:
		LineBreak;
		say "     With a shrug, you drop the papers and briefcase, then go to check over the car itself. Sadly, there isn't anything worthwhile inside, so you continue on your way.";
	now Mysterious Briefcase is resolved;

instead of navigating Grey Abbey Library while (Fang is in Grey Abbey Library and HP of Fang > 2 and HyperSerumTracker is 1 and a random chance of 1 in 3 succeeds): [alpha Fang present, Serum Found]
	say "     As you return to the library, <more scene text HERE>";
	say "     [bold type]How do you want to deal with a now hyper-endowed Fang?[roman type][line break]";	
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take your accustomed position before him and present yourself for fucking.";
	say "     ([link]N[as]n[end link]) - Get out of there! Having an alpha is one thing, but that hyper dick could seriously mess you up.";
	if player consents:
		LineBreak;
		say "     <Player gets fucked>";
	else:
		LineBreak;
		say "     <Player runs off>";

Hyper Serum ends here.