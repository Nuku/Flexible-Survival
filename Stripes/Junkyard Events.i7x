Version 1 of Junkyard Events by Stripes begins here.
[ Version 1.1 - Update to Stray Cat event ]

"Adds a batch of random events in the Junkyard area to Flexible Survival."


Section 1 - Goblin Trap

Table of GameEventIDs (continued)
Object	Name
Goblin Trap	"Goblin Trap"

Goblin Trap is a situation.
ResolveFunction of Goblin Trap is "[ResolveEvent Goblin Trap]". The level of Goblin Trap is 2.
Sarea of Goblin Trap is "Junkyard".
goblinfight is a number that varies.
when play begins:
	if (MaleList is banned or MaleList is warded) and (FemaleList is banned or FemaleList is warded):
		add Goblin Trap to BadSpots of MaleList;
		add Goblin Trap to BadSpots of FemaleList;

to say ResolveEvent Goblin Trap:
	now inasituation is true; [For gobdem check to prevent challenge giving a dumb goblin, since they likely wouldn't be smart enough to make traps]
	say "     As you're traveling through the cluttered junkyard, trying to ignore the moldy smell of the area, you somehow notice a junk-filled car with its driver side tilted up onto another, as well as what looks like a small bag with water and food that someone has tried to hide amongst the junk, badly. You slowly approach the car keeping a lookout in case the owner of the hidden items return. As you get closer to the car you see that you could crawl through the passenger side door to reach the bag. ";
	if dexterity of player < (15 minus Resolution of Goblin Trap): [Dex check to see if player notices the trap]
		LineBreak;
		say "[bold type]Do you want to crawl into the car for the bag, or just ignore it and leave?[roman type]";
		LineBreak;
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go for the bag.";
		say "     ([link]N[as]n[end link]) - Ignore it and leave.";
		LineBreak;
		if player consents: [Failed dex check, Player goes for the bait and is trapped]
			LineBreak;
			say "     You approach the car and take another look around for anyone else before starting to crawl over the passenger seat. After getting partway across the seat something slams onto your back forcing onto your knees with your upper body being forced into the passenger seat. You manage to realize you were just caught in a trap after craning your head enough to see that a strong-looking net is compressing you from the back. You hear something shifting the junk in the back seat and crane your head the other way to see a goblin crawling its way out of the passenger rear window. You hear it say 'He heh, yes! I got [if scalevalue of Player > 3]a real big one[else if scalevalue of Player is 3]me a big one[else]one[end if]!' before you feel their hand slap your ass cheeks. Do you want to try to [bold type]escape the trap[roman type], or wait and [bold type]see what happens?[roman type]";
			LineBreak;
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Try to escape.";
			say "     ([link]N[as]n[end link]) - Wait and see.";
			LineBreak;
			if player consents: [Failed dex check, player was trapped and tries to escape]
				say "[Goblin Trap Escape]";
			else: [Failed dex check, player was trapped and doesn't try to escape]
				LineBreak;
				say "     You feel like you could indulge yourself with whatever fun the goblin has in mind for you. The goblin, noticing your lack of struggling, says 'Wow, you're one of the smart ones, not many like you! The dummies all try to escape!' before they start to amuse themselves by groping your butt. Playing along, you adjust yourself on your knees, pushing your ass back, to give the goblin better access. The goblin decides to move on to the fun stuff and pulls down any clothing from your lower half, revealing your [if Cunt Count of Player > 1 and Cock Count of Player > 1]ass, erect cocks, and dripping cunts[else if Cunt Count of Player is 1 and Cock Count of Player is 1]ass, erect cock, and dripping cunt[else if Cunt Count of Player > 0 and Cock Count of Player > 1]ass, erect cocks, and dripping cunt[else if Cunt Count of Player > 1 and Cock Count of Player > 0]ass, erect cock, and dripping cunts[else if Cunt Count of Player is 1]ass and dripping cunt[else if Cock Count of Player is 1]ass and erect cock[else]ass[end if].";
				say "[Goblin Trap Outcomes]";
		else: [Failed dex check, player ignores bait and leaves]
			LineBreak;
			say "     Deciding that the small amount of water and food isn't worth the effort or risk, you cautiously move away from the car and continue your business in the junkyard. ";
	else: [Passed dex check, player notices trap]
		say "However, you also notice what looks like a net hung above the passenger seat. It's a trap! With extra caution, you examine your surroundings in more detail looking to see if the trapper is still around. As you're doing so you notice slight movement amongst the junk in the back seats of the car, and upon closer examination, you see a small creature that you believe to be a  goblin. You could try to [bold type]ambush the goblin[roman type], trigger the trap and [bold type]get caught on purpose[roman type], or ignore the loot and [bold type]leave.[roman type]";
		LineBreak;
		LineBreak;
		say "     [link](1)[as]1[end link] - Sneak up and ambush the goblin.";
		say "     [link](2)[as]2[end link] - Get caught on purpose.";
		say "     [link](3)[as]3[end link] - Ignore the loot and leave.";
		LineBreak;
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to ambush the goblin, [link]2[end link] to get caught in the trap, or[link]3[end link] to leave..";
		if calcnumber is 1: [Passed dex check, player notices trap, ambushes the goblin]
			say "     Deciding to take advantage of the goblin being distracted by keeping watch on its trap, you carefully sneak up to the back of the car where the goblin is hiding. ";
			LineBreak;
			now goblinfight is 3;
			challenge "Goblin";
			if goblinfight is 1: [Passed dex check, player notices trap, ambushes the goblin, wins]
				say "     Having beaten the goblin, you take a minute to catch your breath before going back to the trapped car and taking the bag of food and water. You also take the time to examine the trap so you'll hopefully be able to recognize more of its type in the future.";
				say "[Goblin Trap Finish]";
				increase score by 1;
				ItemGain food by 1;
				ItemGain water bottle by 1;
			else if goblinfight is 2: [Passed dex check, player notices trap, ambushes the goblin, loses]
				say "     Even though you had the advantage due to your ambush, you still ended up used by the goblin after losing in battle. The goblin grabs the food and water from the car, presumably bait for future traps, before running away leaving you to recover on your own. After a few minutes of doing such, you rise to your feet and examine the trap so you'll hopefully be able to recognize more of its type in the future.";
				say "[Goblin Trap Finish]";
			else: [Passed dex check, player notices trap, ambushes the goblin, flees]
				say "     Deciding you've had enough of this, you dodge the goblin's charge before running off into the maze-like junkyard. The goblin tries giving chase but ends up cursing about his prize getting away as you lose him. After you run far enough to feel safe, you take a minute to catch your breath, and to try and remember as much as you can about the trap so you can recognize more of its type in the future.";
				say "[Goblin Trap Finish]";
		else if calcnumber is 2: [Passed dex check, player notices trap, caught in trap on purpose]
			LineBreak;
			say "     While watching the goblin you come with an idea that will let you have some naughty fun, hopefully. Abandoning all pretenses of stealth, you confidently walk up to the car and start crawling across the passenger seat. Partway across the seat the net slams onto your back forcing onto your knees with your upper body being forced into the passenger seat. You hear the junk in the back seat being shifted around and crane your head to see the goblin crawling its way out of the passenger rear window. You hear it say 'He heh, yes! I got [if scalevalue of Player > 3]a real big one[else if scalevalue of Player is 3]me a big one[else]one[end if]!' before you feel their hand slap your ass cheeks. Now that you've let yourself get caught, do you want to wait and [bold type]see what the goblin has planned for you[roman type], or have you changed your mind and want to [bold type]try to escape?[roman type]";
			LineBreak;
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Wait and see.";
			say "     ([link]N[as]n[end link]) - Try to escape.";
			if player consents: [Passed dex check, player notices trap, caught in trap on purpose, doesn't try to escape]
				LineBreak;
				say "     Like planned, you're going to indulge yourself with whatever fun the goblin has in mind for you. The goblin, noticing your lack of struggling, says 'Wow, you're one of the smart ones, not many like you! The dummies all try to escape!' before they start to amuse themselves by groping your butt. Playing along, you adjust yourself on your knees, pushing your ass back, to give the goblin better access. The goblin decides to move on to the fun stuff and pulls down any clothing from your lower half, revealing your [if Cunt Count of Player > 1 and Cock Count of Player > 1]ass, erect cocks, and dripping cunts[else if Cunt Count of Player is 1 and Cock Count of Player is 1]ass, erect cock, and dripping cunt[else if Cunt Count of Player > 0 and Cock Count of Player > 1]ass, erect cocks, and dripping cunt[else if Cunt Count of Player > 1 and Cock Count of Player > 0]ass, erect cock, and dripping cunts[else if Cunt Count of Player is 1]ass and dripping cunt[else if Cock Count of Player is 1]ass and erect cock[else]ass[end if].";
				say "[Goblin Trap Outcomes]";
			else: [Passed dex check, player notices trap, caught in trap on purpose, tries to escape]
				say "[Goblin Trap Escape]";
		else: [Passed dex check, player notices trap, caught in trap on purpose, ignores bait and leaves]
			LineBreak;
			say "     Deciding that the loot isn't worth the trouble, and that you don't want to see what the goblin has in mind with their trap, you start carefully leaving the area. While doing this you try to remember what the trap looks like so you can recognize more of its type in the future. ";
			say "[Goblin Trap Finish]";


to say Goblin Trap Escape: [Player tries escaping]
	LineBreak;
	say "     Deciding that you don't want to see what the goblin has in store for you, you start struggling against your bonds to free yourself. The goblin, not liking your idea, yells out 'Hey! Stop that, I caught you fair and square!' You ignore it and continue struggling and in return you ";
	if strength of player > 13: [Player tries escaping, is strong enough to do so]
		say "feel the netting start breaking one strand at a time, right as you give the final push to break the rest the goblin slaps you on the rear again only to flail backwards and land on their rear when it sees you breaking free. The goblin rushes back to it's feet, yelling out 'Stupid meanie! You broke my net!', before charging you with an attack!";
		decrease HP of Player by 12; [Breaking out damaged the player a bit]
		now goblinfight is 3;
		challenge "Goblin";
		if goblinfight is 1: [Player tries escaping, is strong enough to do so, fights the goblin and wins]
			say "     Having beaten the goblin, you take a minute to catch your breath before going back to the trapped car and taking the bag of food and water. You also take the time to examine the trap so you'll hopefully be able to recognize more of its type in the future.";
			increase score by 1;
			ItemGain food by 1;
			ItemGain water bottle by 1;
			say "[Goblin Trap Finish]";
		else if goblinfight is 2: [Player tries escaping, is strong enough to do so, fights the goblin and loses]
			say "     Even though you managed to escape the goblin's trap, you still ended up being used by it after losing in battle. The goblin grabs the food and water from the car, presumably bait for future traps, before it runs away leaving you to recover on your own. After a few minutes of doing such, you rise to your feet, and examine the trap so you'll hopefully be able to recognize more of its type in the future.";
			say "[Goblin Trap Finish]";
		else: [Player tries escaping, is strong enough to do so, fights the goblin and flees]
			say "     Deciding you've had enough of this, you dodge the goblin's charge before running off into the maze-like junkyard. The goblin tries giving chase but ends up cursing about his prize getting away as you lose him. After you run far enough to feel safe, you take a minute to catch your breath, and to try and remember as much as you can about the trap so you can recognize more of its type in the future.";
			say "[Goblin Trap Finish]";
	else: [Player tries escaping, is not strong enough to do so]
		say "only get the netting to uncomfortably dig into your skin, before getting a harsher slap on the rear from the goblin who says 'I told you to stop! You won't get out, I'm best net builder!' Realizing that you're stuck in this situation, you resign yourself to your fate at the hands of the goblin. You feel the hands of the goblin groping your butt before they start grabbing your legs and positioning you so that your ass sticks out. The goblin decides to move on to the fun stuff and pulls down any clothing from your lower half, revealing your [if Cunt Count of Player > 1 and Cock Count of Player > 1]ass, erect cocks, and dripping cunts[else if Cunt Count of Player is 1 and Cock Count of Player is 1]ass, erect cock, and dripping cunt[else if Cunt Count of Player > 0 and Cock Count of Player > 1]ass, erect cocks, and dripping cunt[else if Cunt Count of Player > 1 and Cock Count of Player > 0]ass, erect cock, and dripping cunts[else if Cunt Count of Player is 1]ass and dripping cunt[else if Cock Count of Player is 1]ass and erect cock[else]ass[end if].";
		say "[Goblin Trap Outcomes]";

to say Goblin Trap Outcomes:
	if a random chance of 1 in 2 succeeds:
		if FemaleList is banned or FemaleList is warded:
			now gobgender is 2;
		else:
			now gobgender is 1;
	else:
		if MaleList is banned or MaleList is warded:
			now gobgender is 1;
		else:
			now gobgender is 2;
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "[Goblin Trap Raped]";
		-- 2:
			if MaleList is banned or MaleList is warded: [Goblin trap gang rape always has at least 2 males, so if males are banned the goblin trap raped outcome is used instead]
				say "[Goblin Trap Raped]";
			else:
				say "[Goblin Trap Gang Raped]";

to say Goblin Trap Raped: [Goblin rapes the player]
	if gobgender is 2: [Goblin is male]
		if player is female: [Goblin is male, player is female/herm]
			say "     The goblin starts groping your butt again, before you feel it shove several fingers into [if Cunt Count of Player is 1]your cunt[else]one of your cunts[end if]. Considering your relative statures, the fingers of the goblin [if scalevalue of Player > 3]barely feel like an intrusion[else if scalevalue of Player is 3]only feel like a small intrusion[else]feel large enough to stretch you out some[end if]. As the goblin is pumping their fingers into your cunt, you're starting to wonder how they plan to use you when they take their fingers out and you feel the insertion of what is clearly [italic type]his[roman type]dick [if scalevalue of Player > 3]even though it's so small[else if scalevalue of Player is 3]even though it's on the smaller end[end if]. He starts pumping his dick into you surprisingly fast, and despite being one of the smaller dicks you've taken the feeling is enough to make you let out a moan. The goblin seems to notice this, as he says 'Hah! You're liking this aren't you?' Seemingly emboldened, he grabs your cheeks and shoves his thumbs into your ass, using them to stretch it out.";
			LineBreak;
			say "     Embarrassingly, the feeling of getting fucked while having your ass toyed with is enough for you to start moaning in earnest. You eventually decide to just enjoy the unplanned sex and start moving your hips back and forth with the goblin[if Cock Count of Player > 1], which also causes your [cock size desc of Player] cocks to start swinging back and forth under you[else if Cock Count of Player is 1], which also causes your [cock size desc of Player] cock to swing back and forth under you[end if]. Repaying your enthusiasm, the goblin starts pumping two of his fingers in and out of your ass, and uses his other hand to reach down and [if Cock Count of Player > 1]grab one your cocks and start jerking you off[else if Cock Count of Player is 1]grab your cock to start jerking you off[else if Cunt Count of Player > 2] start rubbing one of your other cunts[else if Cunt Count of Player is 2]start rubbing your other cunt[else if Cunt Count of Player is 1]start caressing your clit[end if]. After a minute of your combined teamwork, you can tell that you're both close to finishing and hasten your movements, which quickly leads to the goblin's climax as he grabs your hips and pulls you close so he can shoot his cum deep into you. With that sending you over the edge your cunt tightens around his dick as you cum[if Cock Count of Player > 1] with your cocks impotently pumping their [cum load size of player] loads onto the ground[else if Cock Count of Player is 1] with your cock impotently pumping its [cum load size of player] load onto the ground[end if]. After taking a second to catch his breath the goblin releases you and slowly pulls his cock from your cunt. He takes a step back and uses both hands to spread your cunt, letting some of his load flow out onto the ground[if player is male] to mix with your own[end if].";
			say "     Pleased with the sight, the goblin laughs and says 'That was fun, yeah? Make sure to come back and we can have some more fun like that, he he.' The goblin takes a minute to gather some items, along with the food and water that acted as bait, before he does something outside your view that leaves the net on top of you loosening, before he runs away. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblin. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Goblin";
			say "[Goblin Trap Finish]";
		else: [Goblin is male, player is male/neuter]
			say "     The goblin starts groping your butt again, before you feel it shove several fingers into your ass. Considering your relative statures, the fingers of the goblin [if scalevalue of Player > 3]barely feel like an intrusion[else if scalevalue of Player is 3]only feel like a small intrusion[else]feel large enough to stretch you out some[end if]. As the goblin is pumping their fingers into your ass, your starting to wonder how they plan to use you when they take their fingers out and you feel him insert what is clearly [italic type]his[roman type] dick[if scalevalue of Player > 3] even though it's so small[else if scalevalue of Player is 3] even though it's on the smaller end[end if]. He starts pumping his dick into you surprisingly fast, and despite being one of the smaller dicks you've taken the feeling is enough to make you let out a moan. The goblin seems to notice this, as he says 'Hah! You're liking this aren't you?' Seemingly emboldened, he[if Cock Count of Player > 1] reaches around and starts stroking one of your cocks[else if player is male] reaches around and starts stroking your cock[else] starts groping and massaging your butt again[end if].";
			LineBreak;
			say "     Embarrassingly, the feeling of getting fucked while having [if Cock Count of Player > 1]one of your cocks[else if player is male]your cock[else]your cheeks[end if] toyed with is enough for you to start moaning in ernest. You eventually decide to just enjoy the unplanned sex and start moving your hips back and forth with the goblin[if Cock Count of Player > 2], which also causes your untouched cocks to start swinging back and forth under you[else if Cock Count of Player is 2], which also causes your untouched cock to start swinging back and forth under you[end if]. Repaying your enthusiasm, the goblin [if player is male]puts more enthusiasm into jerking off your cock[else]strengthens his grip on your ass to put more enthusiasm in each of his thrusts[end if]. After a minute of your combined teamwork, you can tell that you're both close to finishing and hasten your movements, which quickly leads to the goblin's climax as he grabs your hips and pulls you close so he can shoot his cum deep into you. With that sending you over the edge your ass tightens around his dick as you cum[if Cock Count of Player > 1] with your cocks impotently pumping their [cum load size of player] loads onto the ground[else if Cock Count of Player is 1] with your cock impotently pumping its [cum load size of player] load onto the ground[end if]. After taking a second to catch his breath the goblin releases you and slowly pulls his cock from your ass. He takes a step back and uses both hands to spread you, letting some of his load flow out onto the ground[if player is male] to mix with your own[end if].";
			say "     Pleased with the sight, the goblin laughs and says 'That was fun, yeah? Make sure to come back and we can have some more fun like that, he he.' The goblin takes a minute to gather some items, along with the food and water that acted as bait, before he does something outside your view that leaves the net on top of you loosening, before he runs away. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblin. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Goblin";
			say "[Goblin Trap Finish]";
	else: [goblin is female]
		say "     The goblin starts groping your butt again, before you feel it shove several fingers into your ass. Considering your relative statures, the fingers of the goblin [if scalevalue of Player > 3]barely feel like an intrusion[else if scalevalue of Player is 3]only feel like a small intrusion[else]feel large enough to stretch you out some[end if]. As the goblin is pumping their fingers into your ass, your starting to wonder how they plan to use you when they take their fingers out and you hear them move away, you hear rusting in the back of the car and manage to crane your head to see the goblin. The goblin, a girl, you realize after being able to see her, crawls through the back of the car stopping near your head. You let out a hiss as she grabs your hair and makes you look up at her before she says 'Play nice and I'll let you go after we're done, ok? If not, I can leave you here for someone else to find.'";
		LineBreak;
		say "     You glare at her, but she takes your lack of aggressive action as a yes. She pulls her tattered loincloth to the side, revealing her small slit that she starts rubbing. She keeps masturbating herself in front of you for a moment before she repositions herself in front of your face, grabbing your hair again and shoving your face into her cunt. she then rubs herself up and down your face, covering it in her femcum. It only takes a few seconds of that before she gets serious and shoves her cunt against your mouth and gives you a command, 'Lick.' Deciding to not find out if she was serious with her previous threat, [if player is submissive]you obey her command[else]you do as she says[end if] and start using your tongue to probe the depths of her wet slit. She grins and grinds into your mouth some before saying 'Your pretty good at this, ya know? It's not often I get to have fun[if player is female] with a good girl[else if player is male] with a good boy[else] with someone[end if][if scalevalue of player > 3] as big as you[else if scalevalue of player < 3] that's my size[else] like you[end if].'";
		say "     You keep lapping at her pussy but also start giving some attention to her clit, which is enough to get her moaning and twitching. It only takes a couple of minutes before she starts grinding against your mouth with extra enthusiasm. Your suspicion that's she is about to cum is proven right when she roughly grabs your head with both hands and feel her walls tighten around your [if scalevalue of player > 3]massive tongue[else if scalevalue of player is 3]large tongue[else]tongue[end if]. After a minute to catch her breath, the goblin starts crawling through the car again before exiting it. You're anxious that she's going to go against her promise to free you when you feel her groping your ass again. It seems that there is more she is wanting, but you're confused about what that would be, since you've already gotten her off.";
		LineBreak;
		if player is female: [Goblin is female, player is female/herm]
			say "     She answers your questions with what she says next, 'Don't worry, I was thinking that since you played so nice, I would go ahead and help you out. Not that you have a choice, he he.' She once again shoves her fingers into your ass, immediately pumping them in and out as she had earlier. Though that's not all she has planned it seems, as you feel her [if scalevalue of player > 3]tiny tongue[else if scalevalue of player is 3]small tongue[else]tongue[end if] licking your cunt. It only takes a moment for you to start moaning from her ministrations, which apparently encourages her, if the use of her other hand starting to [if Cock Count of Player > 1]jerk one of your cocks[else if player is male]jerk your cock[else]rub your clit[end if] is anything to go by. With all of that, you're quickly brought to your own climax, leaving you moaning and trying to shove your ass in her face. Now finally finished, she gathers the food and water used as bait before doing something you can't see that leaves the net on you loose. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblin. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "OralPussy" from "Goblin";
			CreatureSexAftermath "Goblin" receives "OralPussy" from "Player";
			say "[Goblin Trap Finish]";
		else if player is male: [Goblin is female, player is male]
			say "     She answers your questions with what she says next, 'Don't worry, I was thinking that since you played so nice, I would go ahead and help you out. Not that you have a choice, he he.' She once again shoves her fingers into your ass, immediately pumping them in and out as she had earlier. Though that's not all she has planned it seems, she uses her other hand to position your legs before lying on her back and squeezing underneath you so that she can start sucking [if Cock Count of Player > 1]one of your cocks[else]your cock[end if], keeping her fingers going in and out of your ass the whole time. Though once she starts using her fingers to start massaging your prostate, it doesn't take long for you to start cumming straight into her mouth.";
			say "     [if scalevalue of player > 3]Even though she can't fit your comparatively massive cock that far into her mouth, she tries to swallow all of your [cum load size of player] load, even though some still ends up covering her[else if scalevalue of player is 3]She barely manages to get your comparatively large cock into her throat, letting most of your [cum load size of player] load go straight into her stomach[else]She swallows most of your cock, leaving you shooting your [cum load size of player] load straight into her stomach[end if]. After trying to suck any remaining cum out of you for another couple seconds, she pulls her fingers from your ass and gets out from under you. Now finally finished, she gathers the food and water used as bait before doing something you can't see that leaves the net on you loose. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblin. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "OralPussy" from "Goblin";
			CreatureSexAftermath "Goblin" receives "OralCock" from "Player";
			say "[Goblin Trap Finish]";
		else: [Goblin is female, player is neuter]
			say "     She answers your questions with what she says next, 'Don't worry, I was going to help you out since you played so nice with me, but you don't really have anything for me to help with, do you? Such a shame.' Though she says that, she keeps groping you, seemingly having fun playing with your ass. After a couple more moments she seems to satisfy her urge to play with your cheeks and gives you a couple gentle pats on the rear. Now finally finished, she gathers the food and water used as bait before doing something you can't see that leaves the net on you loose. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblin. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "OralPussy" from "Goblin";
			say "[Goblin Trap Finish]";

to say Goblin Trap Gang Raped: [Goblin gathers other goblins to gang rape the player]
	if gobgender is 2: [3 Goblin males]
		if player is female: [3 Goblin males, female/herm player]
			say "     The goblin starts groping your butt again, but it only does so for a few before stopping and... leaving? You try looking around the best you can in your current position but don't see or even hear the goblin anywhere. You start trying to escape but it's not a minute later that you hear movement coming towards you. You feel anxious at the idea of being found while restrained the way you currently are. Then, you hear someone say 'Hurry up, we need to get back before they get out!' to which someone else replies 'Shut up! You're probably lying about catching something again!' You hear someone rush up behind you, before feeling a sharp slap to your ass as they say 'Oh yea?! Then what do you call this [if scalevalue of player > 3]huge piece of ass[else if scalevalue of player is 3]big piece of ass[else]piece of ass[end if]!', and start roughly groping your ass. A third voice then chimes in, 'Wait, you actually caught something with that stupid trap of yours!' The goblin that trapped you, insulted, stops groping you to yell at his, presumably, fellow goblins 'Hey! It's not a stupid trap! Don't expect me to be nice and share toys with you again! Hmph, whatever, I call the pussy, you two can fight over the other holes.'";
			LineBreak;
			say "     With his piece said the first goblin gives you another slap on the ass before using his hands to spread your cunt open and pressing the tip of his dick against your entrance. He then wastes no time slamming his entire length inside you[if scalevalue of player > 3], which is barely anything, considering your differences in size[else if scalevalue of player is 3], which really isn't much, considering your differences in size[else]which is enough to fill you up, even though it's on the smaller end of cocks you've taken before[end if]. You hear what you believe to be the second goblin proclaim 'Dibs on the ass!' before feeling something [if scalevalue of player > 3]tiny [else if scalevalue of player is 3]small [end if]climbing up onto your back. You're surprised that the first goblin can keep thrusting in and out of your cunt with the no doubt awkward positioning, though you aren't able to focus on that for long before the second uses his thumbs to stretch your asshole, spitting on it as he does, before pressing the tip of his head against you. He takes his time slowly inserting himself before bottoming out[if scalevalue of player > 3], though you can barely feel it[else if scalevalue of player is 3], though it is also pretty small[end if].";
			say "     You hear one of them grumble something, though you can't tell which, before feeling another goblin climbing up you, but this one continues to climb on top of you up to your head. He positions himself in front of you before grabbing your hair and saying 'No biting, bitch!' After saying his piece, he uses his other hand to pry open your mouth before shoving his [if scalevalue of player > 3]tiny [else if scalevalue of player is 3]small [end if]cock in, not wasting any time before starting to facefuck you. The two goblins fucking your lower holes seem to have set a rhythm together, with one pulling out of your cunt while the other is ramming into your ass. The one fucking your ass uses both hands to grab your hair to use as handles, while the other reaches below you to [if Cock Count of Player > 1]grab one your cocks and start jerking you off[else if Cock Count of Player is 1]grab your cock and start jerking you off[else if Cunt Count of Player > 2] start rubbing one of your other cunts[else if Cunt Count of Player is 2]start rubbing your other cunt[else if Cunt Count of Player is 1]start caressing your clit[end if].";
			LineBreak;
			say "     Feeling the rhythmatic fucking you are receiving from the three goblins is enough for you to start moaning in pleasure, with your [if Cock Count of Player is 1 and Cunt Count of Player is 1]cunt and cock[else if Cunt Count of Player > 1 and Cock Count of Player > 1]cunts and cocks all[else if Cunt Count of Player is 1 and Cock Count of Player > 1]cunt and cocks[else if Cunt Count of Player > 1 and Cock Count of Player is 1]cunts and cock[else if player is female]cunt[else if player is male]cock[end if] drooling below you. The goblin facefucking you seems to be a bit of a quick shot compared to his friends, as he is the first to shoot his load, grabbing your head and shoving his cock as deep into your mouth as he can, with all of his load[if scalevalue of player > 3] shooting into your mouth, forcing you to swallow it[else if scalevalue of player is 3] barely shooting into your throat[else] shooting straight down your throat[end if]. The goblin fucking your ass isn't far behind though, as he roughly grabs your waist and gives a few more enthusiastic thrusts, driving his cock deep into your ass as he starts cumming.";
			say "     Feeling the second load shooting into you is enough to send you over the edge into your own climax, causing you to moan around the cock still in your mouth. Your orgasm causes your pussy to clench around the dick pounding it, trying to milk it for all the cum stored in the goblins balls[if Cock Count of Player > 1] while your own [cum load size of player] load is impotently shot from your cocks onto the ground[else if player is male] while your own [cum load size of player] load is impotently shot from your cock onto the ground[end if]. Your efforts pay off as he grabs your ass and hilts himself into your wet cunt, shooting his load as deep as he can. The goblins all take a moment to rest before getting ready to leave. The one buried in your ass just pulls out and gives a rough slap to your ass before leaving without waiting for the other two, the goblin in your mouth pulls out and uses your hair to clean his cock off, before climbing over you to get out of the car. Finally, after slowly pulling out from your pussy, the goblin that was fucking it uses his hands to spread your pussy, letting some of the cum he left in it leak onto the ground[if player is male], joining your own load[end if].";
			LineBreak;
			say "     He then says to the remaining goblin 'See, I told you my traps would work! If I can make them better we can have more fun like this!', he then grabs your ass again before saying to you 'I'm glad you were such a good girl, make sure to caught again and we can have some more fun!' after that, he lets go of your ass and moves to get the food and water he used as bait before doing something you can't see which leaves the net on top of you loosening. You hear him run off, but his friend seems to want to get the last word in, as he slaps your ass and says 'Get caught again soon! I want to fuck your ass next time!', before also running off. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblins. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Goblin";
			CreatureSexAftermath "Player" receives "AssFuck" from "Goblin";
			CreatureSexAftermath "Player" receives "OralCock" from "Goblin";
			say "[Goblin Trap Finish]";
		else: [3 Goblin males, male/neuter player]
			say "     The goblin starts groping your butt again, but it only does so for a few before stopping and... leaving? You try looking around the best you can in your current position but don't see or even hear the goblin anywhere. You start trying to escape but it's not a minute later that you hear movement coming towards you. You feel anxious at the idea of being found while restrained the way you currently are. Then, you hear someone say 'Hurry up, we need to get back before they get out!' to which someone else replies 'Shut up! You're probably lying about catching something again!' You hear someone rush up behind you, before feeling a sharp slap to your ass as they say 'Oh yea?! Then what do you call this [if scalevalue of player > 3]huge piece of ass[else if scalevalue of player is 3]big piece of ass[else]piece of ass[end if]!', and start roughly groping your ass. A third voice then chimes in, 'Wait, you actually caught something with that stupid trap of yours!' The goblin that trapped you, insulted, stops groping you to yell at his, presumably, fellow goblin 'Hey! It's not a stupid trap! Don't expect me to be nice and share toys with you again! Hmph, whatever, I call the ass.'";
			LineBreak;
			say "     With his piece said the first goblin gives you another slap on the ass before using his hands to stretch your ass open and pressing the tip of his dick against your hole, using some spit as lube. He then wastes no time slamming his entire length inside you[if scalevalue of player > 3], which is barely anything, considering your differences in size[else if scalevalue of player is 3], which really isn't much, considering your differences in size[else]which is enough to stretch you a little, even though it's on the smaller end of cocks you've taken before[end if]. You hear what you believe to be the second goblin proclaim 'I'm gonna fuck his face!' before feeling a goblin climbing up onto your back, continuing up to your head. He positions himself in front of your face before grabbing your hair and saying 'No biting, bitch!' After saying his piece, he uses his other hand to pry open your mouth before shoving his [if scalevalue of player > 3]tiny [else if scalevalue of player is 3]small [end if]cock in, not wasting any time before starting to facefuck you.";
			say "     You hear the last say 'Wait, then what am I supposed to fuck!?' The goblin fucking your ass gives an annoyed sigh before telling him 'There's [if scalevalue of player > 3]plenty of[else if scalevalue of player is 3]still[else]some[end if] room in their ass for you to get in here with me.' The other doesn't sound happy with the suggestion, saying 'With you?! Ugh... Fine, whatever.' You then feel something [if scalevalue of player > 3]tiny [else if scalevalue of player is 3]small [end if]climbing up onto your back. You're surprised that the first goblin can keep thrusting in and out of your ass with the no doubt awkward positioning, though you aren't able to focus on that for long before the second uses his thumbs to spread your asshole open even more, before pressing the tip of his head against you. Even though the other is still pounding your ass, he takes his time slowly inserting himself before bottoming out[if scalevalue of player > 3], the two cocks together being big enough for you to start feeling them[else if scalevalue of player is 3], the two cocks together being enough to stretch you out a little[else], the two cocks together being enough to stretch your ass wide[end if]. The second goblin starts pounding your ass as well, and after a few moments gets into a rhythm with the other, with one pulling out while the other is ramming in.";
			LineBreak;
			say "     The one on top of your ass uses his hands to grab your hair for use as handles, while the one behind reaches below you to [if Cock Count of Player > 1]grab one your cocks and start jerking you off[else if Cock Count of Player is 1]grab your cock and start jerking you off[end if]. Feeling the rhythmatic fucking you are receiving from the three goblins is enough for you to start moaning in pleasure, with your [if Cock Count of Player > 1]cocks[else if player is male]cock[end if] drooling below you. The goblin facefucking you seems to be a bit of a quick shot compared to his friends, as he is the first to shoot his load, grabbing your head and shoving his cock as deep into your mouth as he can, with all of his load[if scalevalue of player > 3] shooting into your mouth, forcing you to swallow it[else if scalevalue of player is 3] barely shooting into your throat[else] shooting straight down your through[end if]. The second goblin fucking your ass isn't far behind though, as he roughly grabs your waist and gives a few more enthusiastic thrusts, driving his cock deep into your ass as he starts cumming.";
			say "     Feeling the second load shooting into you is enough to send you over the edge into your own climax, causing you to moan around the cock still in your mouth. Your orgasm causes your ass to clench around the dicks pounding it, trying to milk them for all the cum stored in their balls[if Cock Count of Player > 1] while your own [cum load size of player] load is impotently shot from your cocks onto the ground[else if player is male] while your own [cum load size of player] load is impotently shot from your cock onto the ground[end if]. Your efforts pay off as the last goblin to cum grabs your ass and hilts himself into your already cum loaded ass, shooting his load as deep as he can to mix with the other cum already in it. The goblins all take a moment to rest before getting ready to leave. The one on top of your ass just pulls out and gives a rough slap to your ass and leaves without waiting for the other two, the goblin in your mouth pulls out and uses your hair to clean his cock off, before climbing over you to get out of the car. Finally, after slowly pulling out from your ass, the first goblin that was fucking it uses his hands to stretch your ass open, letting some of the cum he and his friend left in it leak onto the ground[if player is male], joining your own load[end if].";
			LineBreak;
			say "     He then says to the remaining goblin 'See, I told you my traps would work! If I can make them better we can have more fun like this!', he then grabs your ass again before saying to you 'I'm glad you were such a good girl, make sure to caught again and we can have some more fun!' after that, he lets go of your ass and moves to get the food and water he used as bait before doing something you can't see which leaves the net on top of you loosening. You hear him run off, but his friend seems to want to get the last word in, as he slaps your ass and says 'Get caught again soon! I want to fuck your ass too next time!', before also running off. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblins. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Goblin";
			CreatureSexAftermath "Player" receives "AssFuck" from "Goblin";
			CreatureSexAftermath "Player" receives "OralCock" from "Goblin";
			say "[Goblin Trap Finish]";
	else: [Goblin is female]
		if player is female: [2 Goblin males, 1 goblin female, female/herm player]
			say "     The goblin starts groping your butt again, but it only does so for a few before stopping and... leaving? You try looking around the best you can in your current position but don't see or even hear the goblin anywhere. You start trying to escape but it's not a minute later that you hear movement coming towards you. You feel anxious at the idea of being found while restrained the way you currently are. Then, you hear someone say 'Hurry up, we need to get back before they get out!' to which someone else replies 'Shut up! You're probably lying about catching something again!' You hear someone rush up behind you, before feeling a sharp slap to your ass as they say 'Oh yea?! Then what do you call this [if scalevalue of player > 3]huge piece of ass[else if scalevalue of player is 3]big piece of ass[else]piece of ass[end if]!', and start roughly groping your ass. A third voice then chimes in, 'Wait, you actually caught something with that stupid trap of yours!' The goblin that trapped you, insulted, stops groping you to yell at her, presumably, fellow goblins 'Hey! It's not a stupid trap! Don't expect me to be nice and share toys with you again! Hmph, whatever, they're gonna eat me out, so you two can fight over what hole your gonna fuck.'";
			LineBreak;
			say "     With her piece said the first goblin gives you another slap on the ass before you feel them climbing up and over top of your back to your head. She positions herself in front of you before grabbing your hair and saying 'Play nice sweetie, and I'll let you go after we finish with you.' After which, she pulls her tattered loincloth to the side, revealing her small slit that she starts rubbing. She keeps masturbating herself in front of you for a moment before she repositions herself in front of your face, grabbing your hair again and shoving your face into her cunt. she then rubs herself up and down your face, covering it in her femcum. It only takes a few seconds of that before she gets serious and shoves her cunt against your mouth and gives you a command, 'Lick.' [if player is submissive]You obey her command[else]You do as she says[end if] and start using your tongue to probe the depths of her wet slit, making sure to also pay attention to her clit.";
			say "     You hear what you believe to be the second goblin proclaim 'Dibs on the ass!' before feeling something [if scalevalue of player > 3]tiny [else if scalevalue of player is 3]small [end if]climbing up onto your back. You're distracted from your care of the goblin in front of you as the second uses his thumbs to stretch your asshole, spitting on it as he does, before pressing the tip of his head against you. He takes his time slowly inserting himself before bottoming out[if scalevalue of player > 3], though you can barely feel it[else if scalevalue of player is 3], though it is pretty small[end if]. The final goblin approaches and says 'Nice, I get to fuck her cunt then.', before using his hands to spread your cunt open and pressing the tip of his dick against your entrance. He then wastes no time slamming his entire length inside you[if scalevalue of player > 3], which is barely anything, considering your differences in size[else if scalevalue of player is 3], which really isn't much, considering your differences in size[else]which is enough to fill you up, even though it's on the smaller end of cocks you've taken before[end if].";
			LineBreak;
			say "     As the two goblins start fucking your lower holes, the one with her pussy in your face seems to get upset at your lack of attention, saying 'Hey, I didn't say you could stop. Get back to work or I'll bring some more friends to play with you!' You give your attention back to the pussy in front of you, licking and sucking at it. Soon after, the two fucking you seem to have set a rhythm together, with one pulling out of your cunt while the other is ramming into your ass. The one fucking your ass uses both hands to grab your hair for use as handles, while the other reaches below you to [if Cock Count of Player > 1]grab one your cocks and start jerking you off[else if Cock Count of Player is 1]grab your cock and start jerking you off[else if Cunt Count of Player > 2] start rubbing one of your other cunts[else if Cunt Count of Player is 2]start rubbing your other cunt[else if Cunt Count of Player is 1]start caressing your clit[end if].";
			say "     Feeling the rhythmatic fucking you are receiving from the two goblins is enough for you to start moaning in pleasure, with your [if Cock Count of Player is 1 and Cunt Count of Player is 1]cunt and cock[else if Cunt Count of Player > 1 and Cock Count of Player > 1]cunts and cocks all[else if Cunt Count of Player is 1 and Cock Count of Player > 1]cunt and cocks[else if Cunt Count of Player > 1 and Cock Count of Player is 1]cunts and cock[else if player is female]cunt[else if player is male]cock[end if] drooling below you. The goblin ass fucking you seems to be a bit of a quick shot compared to his friend, as he is the first to shoot his load, grabbing your waist and shoving his cock as deep into your ass as he can, with all of his load[if scalevalue of player > 3] shooting into your bowels[else if scalevalue of player is 3] shooting deep into your bowels[else] flooding into the depths of your bowels[end if]. The goblin you're eating out seems to find it exciting that her friend is currently pumping a load into your ass, as she cums soon afterwards as well, grabbing your head and grinding her cunt into your face.";
			LineBreak;
			say "     Feeling a load shooting into your ass along with the smell of arousal from the pussy in front of you is enough to send you over the edge into your own climax, causing you to moan into her pussy. Your orgasm causing your own pussy to clench around the dick pounding it, trying to milk it for all the cum stored in his balls,[if Cock Count of Player > 1] while your own [cum load size of player] load is impotently shot from your cocks onto the ground[else if player is male] while your own [cum load size of player] load is impotently shot from your cock onto the ground[end if]. Your efforts pay off as he grabs your ass and hilts himself into your wet cunt, shooting his load as deep as he can. The goblins all take a moment to rest before getting ready to leave. The one buried in your ass just pulls out and slaps your ass before leaving without waiting for the others. After slowly pulling out from your pussy, the goblin that was fucking it uses his hands to spread your pussy, letting some of the cum he left in it leak onto the ground[if player is male], joining your own load[end if]. Finally, the goblin in front of you pulls away, before giving you a kiss on the forehead and climbing over you out of the car.";
			say "     She then says to the remaining goblin 'See, I told you my traps would work! If I can make them better we can have more fun like this!', she then grabs your ass again before saying to you 'I'm glad you were such a good girl, make sure to caught again and we can have some more fun!' after that, she lets go of your ass and moves to get the food and water she used as bait before doing something you can't see which leaves the net on top of you loosening. You hear her run off, but her friend seems to want to get the last word in, as he slaps your ass and says 'Get caught again soon! I already want to fuck your ass again!', before also running off. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblins. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "PussyFuck" from "Goblin";
			CreatureSexAftermath "Player" receives "AssFuck" from "Goblin";
			CreatureSexAftermath "Player" receives "OralPussy" from "Goblin";
			say "[Goblin Trap Finish]";
		else: [2 Goblin males, 1 goblin female, male/neuter player]
			say "     The goblin starts groping your butt again, but it only does so for a few before stopping and... leaving? You try looking around the best you can in your current position but don't see or even hear the goblin anywhere. You start trying to escape but it's not a minute later that you hear movement coming towards you. You feel anxious at the idea of being found while restrained the way you currently are. Then, you hear someone say 'Hurry up, we need to get back before they get out!' to which someone else replies 'Shut up! You're probably lying about catching something again!' You hear someone rush up behind you, before feeling a sharp slap to your ass as they say 'Oh yea?! Then what do you call this [if scalevalue of player > 3]huge piece of ass[else if scalevalue of player is 3]big piece of ass[else]piece of ass[end if]!', and start roughly groping your ass. A third voice then chimes in, 'Wait, you actually caught something with that stupid trap of yours!' The goblin that trapped you, insulted, stops groping you to yell at her, presumably, fellow goblins 'Hey! It's not a stupid trap! Don't expect me to be nice and share toys with you again! Hmph, whatever, they're gonna eat me out, so you two can share their ass or something.'";
			LineBreak;
			say "     With her piece said the first goblin gives you another slap on the ass before you feel her climbing up and over top of your back to your head. She positions herself in front of you before grabbing your hair and saying 'Play nice sweetie, and I'll let you go after we finish with you.' After which, she pulls her tattered loincloth to the side, revealing her small slit that she starts rubbing. She keeps masturbating herself in front of you for a moment before she repositions herself in front of your face, grabbing your hair again and shoving your face into her cunt. she then rubs herself up and down your face, covering it in her femcum. It only takes a few seconds of that before she gets serious and shoves her cunt against your mouth and gives you a command, 'Lick.' [if player is submissive]You obey her command[else]You do as she says[end if] and start using your tongue to probe the depths of her wet slit, making sure to also pay attention to her clit.";
			say "     The other two goblins make annoyed sounds at having to share your ass, but they still make their way towards you. One of them starts groping your ass before stretching your hole open and spitting on it.  He presses the crown of his dick against your hole and wastes no time slamming his entire length inside you[if scalevalue of player > 3], which is barely anything, considering your differences in size[else if scalevalue of player is 3], which really isn't much, considering your differences in size[else]which is enough to stretch you a little, even though it's on the smaller end of cocks you've taken before[end if]. The other doesn't sound happy with the suggestion, saying 'Sharing?! Ugh... Fine, whatever.' You then feel something [if scalevalue of player > 3]tiny [else if scalevalue of player is 3]small [end if]climbing up onto your back.";
			LineBreak;
			say "     You're surprised that the first goblin can keep thrusting in and out of your ass with the no doubt awkward positioning, though you aren't able to focus on that for long before the second uses his thumbs to spread your asshole open even more, before pressing the tip of his head against you. Even though the other is still pounding your ass, he takes his time slowly inserting himself before bottoming out[if scalevalue of player > 3], the two cocks together being big enough for you to start feeling them[else if scalevalue of player is 3], the two cocks together being enough to stretch you out a little[else], the two cocks together being enough to stretch your ass wide[end if]. The second goblin starts pounding your ass as well, and after a few moments gets into a rhythm with the other, with one pulling out while the other is ramming in.";
			say "     As the two goblins start fucking your ass, the one with her pussy in your face seems to get upset at your lack of attention, saying 'Hey, I didn't say you could stop. Get back to work or I'll bring some more friends to play with you!' You give your attention back to the pussy in front of you, licking and sucking at it. Soon after, the two fucking you seem to have set a rhythm together, with one pulling out of your ass while the other is ramming in. The one on top of your ass uses both hands to grab your hair for use as handles, while the other reaches below you to [if Cock Count of Player > 1]grab one your cocks and start jerking you off[else if Cock Count of Player is 1]grab your cock and start jerking you off[end if].";
			LineBreak;
			say "     Feeling the rhythmatic fucking you are receiving from the two goblins is enough for you to start moaning in pleasure, with your [if Cock Count of Player > 1]cocks[else if player is male]cock[end if] drooling below you. The goblin on top of your ass seems to be a bit of a quick shot compared to his friend, as he is the first to shoot his load, grabbing your waist and shoving his cock as deep into your ass as he can, with all of his load[if scalevalue of player > 3] shooting into your bowels[else if scalevalue of player is 3] shooting deep into your bowels[else] flooding into the depths of your bowels[end if]. The goblin your eating out seems to find it exciting that her friend is currently pumping a load into your ass, as she cums soon afterwards as well, grabbing your head and grinding her cunt into your face.";
			say "     Feeling a load shooting into your ass along with the smell of arousal from the pussy in front of you is enough to send you over the edge into your own climax, causing you to moan into her pussy. Your orgasm causes your ass to clench around the dicks pounding it, trying to milk them for all the cum stored in their balls[if Cock Count of Player > 1] while your own [cum load size of player] load is impotently shot from your cocks onto the ground[else if player is male] while your own [cum load size of player] load is impotently shot from your cock onto the ground[end if]. Your efforts pay off as the last goblin grabs your ass and hilts himself into your already cum loaded ass, shooting his load as deep as he can to mix with the other cum already in it. The goblins all take a moment to rest before getting ready to leave. The one on top of your ass just pulls out and slaps your ass before leaving without waiting for the others. After slowly pulling out from your ass, the other goblin that was fucking it uses his hands to stretch it open, letting some of the cum they left in it leak onto the ground[if player is male], joining your own load[end if]. Finally, the goblin in front of you pulls away, before giving you a kiss on the forehead and climbing over you out of the car.";
			LineBreak;
			say "     She then says to the remaining goblin 'See, I told you my traps would work! If I can make them better we can have more fun like this!', she then grabs your ass again before saying to you 'I'm glad you were such a good girl, make sure to caught again and we can have some more fun!' after that, she lets go of your ass and moves to get the food and water she used as bait before doing something you can't see which leaves the net on top of you loosening. You hear her run off, but her friend seems to want to get the last word in, as he slaps your ass and says 'Get caught again soon! I already want to fuck your ass again!', before also running off. It still takes you a minute to get out from under the net, and by the time you do there is no sight of the goblins. Before leaving you take some time to examine the goblin's trap so you may be able to recognize it in the future.";
			CreatureSexAftermath "Player" receives "AssFuck" from "Goblin";
			CreatureSexAftermath "Player" receives "AssFuck" from "Goblin";
			CreatureSexAftermath "Player" receives "OralPussy" from "Goblin";
			say "[Goblin Trap Finish]";

to say Goblin Trap Finish:
	now inasituation is false;
	if Resolution of Goblin Trap < 5:
		increase Resolution of Goblin Trap by 1;
	else if Resolution of Goblin Trap is 5: [if player has encountered the goblin trap 5 or more times they can choose to ignore it in the future.]
		LineBreak;
		say "     [bold type]You've encountered the goblin trap enough times that if you want you can choose to ignore the trap completely if you encounter anymore.[roman type]";
		LineBreak;
		LineBreak;
		say "     [link](1)[as]1[end link] - Ignore the trap in any future encounters, you'll never encounter it again.";
		say "     [link](2)[as]2[end link] - Don't ignore the trap in the future.";
		say "     [link](3)[as]3[end link] - Don't ignore the trap in the future, and don't ask me this again.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to ignore the trap forever, [link]2[end link] to keep encountering the trap, or[link]3[end link] to keep encountering the trap, and not be asked this again..";
		if calcnumber is 1: [Player will ignore the trap in any future encounters, it is resolved]
			now Goblin Trap is resolved;
		else if calcnumber is 3: [Player will not ignore the trap, it will still be encountered, player will not be given this choice again]
			now Resolution of Goblin Trap is 6;


Section 2 - Goblin Raiding Party

Table of GameEventIDs (continued)
Object	Name
Raiding Party	"Raiding Party"

Raiding Party is a situation.
ResolveFunction of Raiding Party is "[ResolveEvent Raiding Party]". The level of Raiding Party is 2.
Sarea of Raiding Party is "Junkyard".
junknum is a number that varies.
when play begins:
	add Raiding Party to BadSpots of MaleList;
	add Raiding Party to BadSpots of FurryList;
	add Raiding Party to badspots of HermList;

to say ResolveEvent Raiding Party:
	say "     As you search through the junkyard, you can hear some cackling laughter coming closer as well as the sounds of an angry feline. There is a smack and the feline sounds are silenced with a whimper, but the cackling laughter gets louder. You can tell there are several people laughing and they're getting closer.";
	say "     [bold type]Shall you stay and wait for them to see what's going on or shall you make your escape while you can?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay.";
	say "     ([link]N[as]n[end link]) - Flee.";
	if Player consents:
		LineBreak;
		say "     Without anywhere worthwhile to hide and watch, you stay in the middle of the path and try to look intimidating. A few seconds later, some goblins come into view dragging something as they laugh cruelly to one another. The trio stops as they notice you just as their burden comes into view. Trapped in a net behind them is a tigress woman dressed in a skimpy outfit with mussed hair. She is largely insensate right now, probably struck by one of the goblins when she started making noise. With you barring their path, the goblin charges to defend their prize.";
		now goblinfight is 3;
		challenge "Goblin";
		if goblinfight is 1:
			say "     With one goblin defeated and retreated into cover, the second goblin prods his remaining companion with a strange device made from junk, sending him in to attack you.";
			challenge "Goblin";
			if goblinfight is 1:
				say "     The last goblin tosses down the strange device, which seems to be their improvised net gun, and moves in to deal with you and defend his prize.";
				challenge "Goblin";
				if goblinfight is 1:
					say "     With the last goblin fled, you move over to check on the tigress woman. Using the fight as a distraction, she managed to bite through some of the ropes and pulls herself free as you come up. As she stands, you get a better look at her. She is wearing a short, red top and an even shorter, black skirt. This lets you see the soft orange tiger fur that covers her attractive body, rich with black stripes. She has snowy, white fur that covers her bosom and the front of her shapely waist. As she brushes her red hair back into order, you catch sight of the gold earrings in her feline ears and bracelets on her wrists. She growls as she stomps down hard onto the net launcher, smashing it with her feline paw before sending it flying off into the scrapyard.";
					say "     Looking at you, she grins and runs her paws over her body. 'Well, sweetie, that was mighty nice of you. How about I give you a little reward for your help?' she purrs, motioning to a discarded mattress at the edge of a nearby pile. From the looks of it, it's been used a few times before. As her paws run over her skirt, you can see the bulge there of her poorly concealed maleness. 'No charge this time, sweetie,' the feline whore adds, running her paws over your chest. 'I can show you a real good time. Anything you like,' she rumbles with a grin, rubbing her breasts and sheath against you. Shall you accept her tempting offer?";
					if Player consents:
						now junknum is 1;
						[puts Tigress Hooker as lead monster in case of impregnation]
						repeat with y running from 1 to number of filled rows in Table of Random Critters:
							choose row y in Table of Random Critters;
							if Name entry is "Malayan Tiger Herm":
								now MonsterID is y;
								break;
						say "[losetotigress]";
						now junknum is 0;
						say "     Your romp with the feline over, she gives you one last kiss before telling you she needs to get back to work. She points off towards the seedier part of town and tells you of a route leading you there, should you want to find her and her sisters for more fun.";
						AddNavPoint Entrance to the Red Light District;
						increase score by 10;
						now Resolution of Raiding Party is 1; [won, fucked Tigress Hooker]
					else:
						say "     The tigress hooker hisses and pushes you away. 'You don't know a good thing when you see it,' she growls and turns away, heading back the way the goblins came.";
						increase score by 1;
						now Resolution of Raiding Party is 2; [won, refused Tigress Hooker]
		else if goblinfight is 2:
			say "     Beaten by the goblins, they close in you around and smack you a few times. They then send you on your way with more cackling before continuing on with their prize. You should perhaps consider yourself lucky that they already have one prize and can't take you with them as well.";
			now Resolution of Raiding Party is 3; [lost, goblins ran off with their captive]
		else:
			say "     Deciding that it is, in the end, not your problem, you hightail it out of there.";
			now Resolution of Raiding Party is 99; [disinterest]
	else:
		LineBreak;
		say "     Deciding that whatever is going on is not your problem, you hightail it out of there.";
		now Resolution of Raiding Party is 99; [disinterest]
	now Raiding Party is resolved;


Section 3 - Stripped Car

Table of GameEventIDs (continued)
Object	Name
Stripped Car	"Stripped Car"

Stripped Car is a situation.
ResolveFunction of Stripped Car is "[ResolveEvent Stripped Car]".
Sarea of Stripped Car is "Junkyard".

to say ResolveEvent Stripped Car:
	say "     You come across a stripped car that has been pulled across the pathway between the piles. Wary of an ambush, you look around, but it seems no one is here. Taking a closer look, stripped is the proper way to describe this car. It's hub caps, hood, side panels, front grill and many other parts seem to have all been recently and forcibly removed. There are deep gouges from feline claw marks and twisted metal all over it where parts where torn off. Even the stereo is gone. You will have to be careful to avoid any felines strong enough to drag around a car and tear parts off by hand.";
	increase score by 1;
	now Stripped Car is resolved;


Section 4 - Scattered Trash

Table of GameEventIDs (continued)
Object	Name
Scattered Trash	"Scattered Trash"

Scattered Trash is a situation.
ResolveFunction of Scattered Trash is "[ResolveEvent Scattered Trash]".
Sarea of Scattered Trash is "Junkyard".
when play begins:
	add Scattered Trash to BadSpots of FemaleList;
	add Scattered Trash to BadSpots of FurryList;

to say ResolveEvent Scattered Trash:
	say "     You come across a mess of garbage scattered here, sprawling across the path between the junk mounds here. From the looks of it, it seems this stuff has been rummaged through and possibly even rolled around in. As it is just tossed around, there are clear spots to walk while you move through it. You decide to keep your eyes open in case you spot anything of interest while making your way through the trash.";
	WaitLineBreak;
	let bonus be (( perception of Player + dexterity of Player minus 20 ) divided by 2 );
	let dice be a random number from 1 to 20;
	say "     You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
	if bonus + dice > 15:
		say "You manage to spot a sticky mess as you're stepping around through the trash. It's hard to tell over the scent of the surrounding garbage, but it's clearly the sexual fluids from some kind of creature. Finishing picking around the trash, you do manage to find a container of water. The small jug has enough for a drink of water, but it seems to have been filled after the outbreak and is probably not clean.";
		ItemGain dirty water by 1;
		increase score by 1;
	else:
		say "As you're trying to maneuver around the scattered trash, you place your foot on something slick just as you're turning to look at something shiny. Your foot comes out from under you and you fall onto your back, landing among the trash in something sticky. Getting up quickly, you notice it is a puddle of sexual fluids from some kind of creature. You try to wipe it off, but it's clearly too late as the tingles and prickles of spreading infection start.";
		if a random chance of 1 in 2 succeeds:			[Trash Coon]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Trash Coon":
					now MonsterID is y;
					break;
		else:								[Pit Bull]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Pit Bull":
					now MonsterID is y;
					break;
		infect;
	now Scattered Trash is resolved;


Section 5 - Stray Cat

Table of GameEventIDs (continued)
Object	Name
Stray Cat	"Stray Cat"

Stray Cat is a situation.
ResolveFunction of Stray Cat is "[ResolveEvent Stray Cat]". The level of Stray Cat is 7.
Sarea of Stray Cat is "Junkyard".

to say ResolveEvent Stray Cat:
	project Figure of SnowLeopard_soft_icon;
	say "     On a search through the scrapyard, you find your path blocked by a sweaty and panting snow leopard. It seems he wandered in here and has gotten lost. Startled to see you there, he gives a dry mrowl that cracks in his dry throat before stalking towards you quickly. ";
	if dirty water is owned or water bottle is owned:
		say "You have some water in your pack which may satisfy him long enough to make your escape.";
		say "     [bold type]Shall you toss him some water?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			if dirty water is owned and water bottle is owned:
				say "     You have both dirty water and fresh water. Which will you give him? (Y=dirty, N=fresh)";
				if Player consents:
					say "[dirtysnow]";
					now Resolution of Stray Cat is 1; [created snow bat]
				else:
					say "[bottlesnow]";
					now Resolution of Stray Cat is 2; [gave snow leopard clean water]
			else if dirty water is owned:
				say "[dirtysnow]";
				now Resolution of Stray Cat is 1; [created snow bat]
			else:
				say "[bottlesnow]";
				now Resolution of Stray Cat is 2; [gave snow leopard clean water]
		else:
			LineBreak;
			say "     Deciding to save your supplies for yourself, you ready yourself to face the thirsty feline.";
			challenge "Snow Leopard";
			now Resolution of Stray Cat is 3; [refused snow leopard, fought]
	else:
		say "You have but a short moment before the feline is upon you and attacking.";
		now Resolution of Stray Cat is 4; [fought snow leopard]
	now Stray Cat is resolved;

to say dirtysnow:
	ItemLoss dirty water by 1;
	say "     Quickly pulling off your pack, you reach into it and pull out a jug of dirty water. You toss it to the charging feline, who swats at it with his paw before realizing what it is. The container breaks open, sending the water over him. Startled, he comes to a stop and shakes his head before realizing it's water and he starts licking it from his fur. As you start to back away, his body starts to change, altered by the dirty water.";
	say "     Fascinated, you watch as he starts to mewl softly as the sensations wash over him, causing him to fall to his knees. From the strength of his reactions, you are very grateful that you didn't end up drinking that water yourself. His body grows taller and thinner, but with a strong chest and shoulders. His shoulders and back twitch and bulge before a pair of large, fully-formed bat wings burst from them. The pain (or pleasure?) of this causes him to mrowl loudly. With his head raised to cry out, you can see his face and muzzle changing, growing longer and narrower. His ears enlarge, becoming big and pointed as he turns into some feline-bat hybrid.";
	say "     His bat-like ears twitch as he mrowls again and they lock on you. Hearing your echo with his heightened senses, he starts to get up. This breaks the spell of watching his transformation and you turn to get away from this new and potentially dangerous creature you've spawned. You run around one mound, then dash down another path in the hopes of evading him. You start to make a third turn when he comes swooping out of the air, already able to fly on his new wings. Cut off, you will have to face him.";
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Snow Bat":
			now area entry is "Junkyard";
			now non-infectious entry is false;
			now MonsterID is y;
			break;
	now snowbatfight is 3;
	challenge "Snow Bat";
	if snowbatfight is 1:
		say "     Having managed to drive the vicious bat-feline off, you stumble back as your knees get weak. Taking a seat on a junked car, you shudder at what you've unleashed.";
	else if snowbatfight is 2:
		say "     You get up unsteadily, woozy from the blood loss and look around. Some time has passed and the bat-feline has departed. You brush your fingers lightly over your sore neck, the wound slowly closing, and shudder at what you've unleashed.";
	else:
		say "     Managing to slip past him, you make a run for it again. But this time, after making a few turns, you dive onto the seats of a wrecked car in the scrapyard. You remain as still and as quiet as you can, knowing those sensitive ears are searching for you. Eventually you hear those large wings flap off into the distance. You release a shudder at what you've unleashed.";
	now snowbatfight is 0;
	increase score by 20;
	extend game by 8;


to say bottlesnow:
	ItemLoss water bottle by 1;
	say "     Quickly pulling off your pack, you reach into it and pull out a bottle of water. You toss it to the charging feline, who bats it aside at first, but then realizes what it is. He drops to all fours, scrambling on the hard ground in an attempt to turn, then runs to chase after the water bottle. Taking the opportunity to head off, you can hear the parched feline gulping it down and a distant [']Thank you['] when he's finished. Wanting to be safe, you keep moving, just in case he decides to come back for more.";
	increase score by 10;
	increase morale of Player by 3;

Junkyard Events ends here.
