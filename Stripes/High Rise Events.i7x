Version 2 of High Rise Events by Stripes begins here.
[version 2.3.1 - Dog infection and vet fight lists updated]

"Adds a series of random events to Flexible Survival located at or focusing on the High Rise District."


Section 1- Rabid Lawyers [Rebuilt by Wahn]

Table of GameEventIDs (continued)
Object	Name
Rabid Lawyers	"Rabid Lawyers"

Rabid Lawyers is a situation.
ResolveFunction of Rabid Lawyers is "[ResolveEvent Rabid Lawyers]".
Sarea of Rabid Lawyers is "High".

when play begins:
	add Rabid Lawyers to BadSpots of MaleList;
	add Rabid Lawyers to BadSpots of FurryList;

to say ResolveEvent Rabid Lawyers:
	if Resolution of Rabid Lawyers is 0:
		increase score by 1;
		now Resolution of Rabid Lawyers is 1; [seen it once]
		say "     Roaming the high-rise district, you see evidence of nanite-induced chaos in every alley and intersection. Abandoned luxury cars sit at odd angles on the asphalt, and several high-end boutiques show the jagged, empty windows that signal the frantic looting of the first few weeks. Yet, amidst these shuttered shops, a three-story office building remains strikingly intact, its pristine state making it an anomaly in this shifting landscape - 'Blackwood & Thorne Law Partners'. There's even some lights on in there. Not a single pane of the expansive glass facade has been cracked. Stopping across the street, you realize the reason for this unnatural peace. This building is far from empty. Movement catches the sunlight as what must be at least two dozen figures pace around on the inside floors, their anthro wolf forms showing a mix of professional and apex predator behavior. Such a heavy concentration of inhabitants is enough to deter any looter, that's for sure.";
		say "     Looking closer through the polished glass, a rigid social hierarchy reveals itself among the transformed occupants pacing the offices. Several large, dominant wolves in the somewhat ripped remains of tailored blazers are clearly the lawyers that lead the pack, their snarling commands directing the frantic flow of their pack. A dozen or so legal aids mostly still wearing button-up shirts scurry between desks, while a group of what appear to be interns in pencil skirts or slacks navigate the gaps with a submissive energy. The atmosphere is thick with a strange mixture of corporate bureaucracy and primal hunger. One male aid clutches a stack of documents even as he is bent over a desk by a partner, his tail tucked while his muzzle opens in a silent, pleading whimper of arousal. They are utterly consumed by their internal office politics and the hyper-arousal brought on by the nanites, treating the sidewalk beyond the glass as if it were another planet.";
	else:
		say "     Navigating the high-rise district once more, your gaze is drawn to the familiar, unmarred glass facade of 'Blackwood & Thorne Law Partners'. It remains a bizarre island of preservation amidst the half-looted luxury storefronts and abandoned cars that define the neighboring blocks, its windows still gleaming with artificial light. Peering through a large pane into the first-floor conference room, you spot four of the senior lawyers locked in a heated, snarling argument over a leather-bound ledger. Their dominance is clear as they pace and snap at each other; two of them have male interns kneeling between their legs, muzzles moving with a practiced, rhythmic focus, while the other two have female aides straddling their laps, being fucked soundly as the partners continue to bark legal jargon at each other. The primal and the professional are so intertwined in their dazed state that none of them seem to notice the sheer, hyper-sexualized absurdity of their boardroom antics.";
		say "     Beyond the boardroom, the rest of the office is a hive of frantic industry that completely disregards the world outside. Legal aids in rumpled button-up shirts scurry between cubicles, carrying impossibly tall stacks of paper that threaten to topple with every hurried, digitigrade step. The rhythmic thud of a high-speed copier provides a mechanical heartbeat to the scene, overseen by a female aid standing there with her paws on her hips. They are all trapped in a loop of corporate duty and nanite-fueled urgency, their eyes never once flickering toward the sidewalk where you stand observing. To this pack, the law firm is the only reality that matters, a self-contained ecosystem where every brief filed and every knot tied serves the same insatiable drive. As long as they remain within their pristine glass cage, the crumbling city around them simply does not exist.";
		WaitLineBreak;
	Lawyer_Options;

to Lawyer_Options:
	say "     [bold type]What will you do now? Seems like you're in little danger unless you step INTO the law firm.[roman type][line break]";
	let Lawyer_Choices be a list of text;
	if Resolution of Rabid Lawyers < 2: [player hasn't scouted the inside]
		add "Observe through the glass a while longer." to Lawyer_Choices;
	if Resolution of Rabid Lawyers > 1: [player knows what's possible in there]
		add "Go inside - and play being a new client (Int Check to talk your way through; hunger/thirst reduction)." to Lawyer_Choices;
	add "Move on and turn to other business for now. You'll keep the place in mind though." to Lawyer_Choices;
	add "Leave the building behind and avoid it in the future. Better safe than sorry." to Lawyer_Choices;
	let Lawyer_Choice be what the player chooses from Lawyer_Choices;
	if Lawyer_Choice is:
		-- "Observe through the glass a while longer.":
			LineBreak;
			say "     Leaning against a nearby lamppost, you settle in for a show that is part legal drama and part high-budget adult film. It is a surreal telenovela played out in silence behind the glass, allowing you to narrate the shifting alliances in your head. Seems like someone is getting a promotion, you think as an associate is led by the collar into a private office by one of the senior female partners. She moves with a furred elegance, her sharp muzzle pulling into a smirk as she directs him to his knees to show his appreciation. The gender roles are fluid; watch long enough and you can see plenty of different pairings - male on male, female on female, and everything in between - as the hierarchy is constantly renegotiated through raw, carnal dominance. It is a frantic, furred ballet where being taken down a peg usually involves being claimed soundly on a conference table. There's even a demotion/elevation at one point, with a lawyer being torn down to intern status, and a smirking aid being awarded their blazer.";
			say "     Beyond the carnal chaos, you notice the logistical miracle of how well-fed this pack remains. With the attention of someone having to scramble for food every day, you watch an exhausted intern scurry toward a kitchen area in the far corner, returning moments later with a tray of lattes and a plate of expensive pastries. These wolves aren't starving; they are over-stimulated and pampered. The office kitchen is a hub of constant activity, with a steady stream of submissives bringing out fresh supplies to keep the lawyers fueled for their next round of litigation or lust. Peering toward the back, you catch a glimpse of a storeroom through a swinging door, a seemingly endless well of further supplies. This corporate hoard is a treasure trove of rewards that keeps the office in a state of hyper-arousal and duty. If only you could get a slice of that...";
			now Resolution of Rabid Lawyers is 2; [player has some knowledge of what's in there now]
			Lawyer_Options;
		-- "Go inside - and play being a new client (Int Check to talk your way through; hunger/thirst reduction).":
			LineBreak;
			Rabid_Lawyers_Client;
		-- "Move on and turn to other business for now. You'll keep the place in mind though.":
			LineBreak;
			say "     As fascinating as watching the pack interactions of a pack of furry lawyers in their native habitat is, surviving in the post-nanite-apocalypse city has its own demands. You make your way through the ruined streets and leave the law firm behind. That doesn't mean you can't come back though...";
		-- "Leave the building behind and avoid it in the future. Better safe than sorry.":
			LineBreak;
			say "     Given that there is a whole pack of wolves inside the building, who at any point could decide to stop ignoring the outside, maybe it is the best idea to keep your distance. Not taking your eyes of the entrance of the law firm, you slowly back away, studying the landmarks all around to make sure that your path won't lead you back here.";
			now Rabid Lawyers is resolved;

to Rabid_Lawyers_Client:
	say "     Stepping away from the lamppost, you approach the pristine glass entrance with a measured stride, your heart hammering a steady rhythm against your ribs. A heavy weight seems to settle on your shoulders as you pause at the handle, taking a deep, grounding breath of the city air before pulling the door open. The transition is jarring; the muted sounds of the street are instantly replaced by the hum of high-speed copiers and the rhythmic, fleshy thuds of the office's internal activities. The scent of ozone, expensive coffee, and a thick, musky cloud of lupine arousal hits you like a physical wall. Your entrance acts as a sudden circuit breaker for the room's frantic energy. Silence ripples outward from the lobby as several dozen pairs of glowing, predatory eyes snap toward you, their owners pausing in the middle of filing papers or claiming subordinates to register the arrival of a fresh face.";
	say "     The stillness doesn't last long as five of the wolves peel off from their workstations, their digitigrade steps soft on the industrial grade carpets. They move with a coordinated, predatory grace, closing the distance before you can even think about retreating. Leading the group is a tall male in a charcoal suit jacket stretched taut over broad, furred shoulders, his expression a dangerous cocktail of curiosity and carnal hunger. Two female associates and a pair of interns follow, their muzzles pulling back into lewd smirks as they appraise your form. More than one hard canine cock pointed directly at you, a blatant display of the nanite-fueled lust driving their actions. Quickly surrounded by the pack of horny professionals, you can't help but wonder if stepping into this den of wolves was actually a terrible idea.";
	LineBreak;
	let bonus be (( Intelligence of Player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Intelligence Check):[line break]";
	LineBreak;
	if diceroll + bonus >= 12: [success]
		say "     Facing the lead lawyer's intense gaze, you quickly invent a tale of a spectacularly toxic divorce, emphasizing your desire to ruin your spouse through years of bitter litigation. The wolf's eyes practically glow with a predatory glee at the mention of such a 'nasty' case, his muzzle pulling back to reveal sharp teeth in what passes for a professional smile. 'Messy, profitable, and endless,' he rumbles, the tip of his long red tongue darting out to lick his lips, 'just the way we like them. Please step into my office.' He leads you toward an opulent, wood-paneled consultation room, snapping his fingers sharply as you pass the lobby. Two interns immediately scramble toward the kitchen, returning moments later with steaming mugs of premium coffee and trays of artisan pastries. You eagerly consume the refreshments.";
		say "     Stretching things out for over an hour, while the coffee and snacks keep coming, you navigate the bizarre consultation by inventing increasingly absurd legal requirements, watching as a legal aide meticulously records every word. You insist on receiving exactly half of the marital king-size bed - partitioned with a chainsaw if necessary - and demand sole custody of three collies, a depressed parakeet, and the ceremonial urn containing the ashes of a beloved goldfish. The lawyer nods along with grave importance, seemingly unfazed by the nonsense, even as another aide kneels beneath the table to service his hard, knotted shaft. The sounds of wet slurping and the lawyer's low, rumbling groans punctuate your list of grievances, and you watch as he climaxes more than once, the aide dutifully swallowing his seed before returning to their task. By the time you finally leave, the lawyer is in a state of post-coital daze, promising to have the 'chainsaw clause' drafted by morning.";
		LineBreak;
		say "     As you step back out through the glass doors, the pack instantly reverts to their internal chaos, and you suspect their hyper-fixated minds will have forgotten your face before you even reach the end of the block. Meanwhile, the rich caffeine and sugar flooding your system completely eliminates and sign of the gnawing hunger and thirst that had been dogging your steps.";
		ThirstReset;
		HungerReset;
	else: [fail]
		say "     An attempt at an elaborate story of legal woes falters under the lawyer's cold, analytical stare, his muzzle wrinkling in a look of profound annoyance. 'This is utter nonsense,' he snarls, 'a complete fabrication that lacks even a shred of legal merit. Associates! Escort this person from the premises immediately. I have real work to bill.' The senior partner turns his back on you, returning his attention to a stack of briefs as his companion wolves close in. Their fur brushes against your skin as they flank you, the combined mass of the group making it clear that a struggle would only draw the attention of the other twenty predators in the room. Realizing the stakes, you allow yourself to be led away, your heart sinking as you realize they aren't heading directly for the front doors.";
		say "     Rough, furred hands guide you behind a cluster of cubicles rather than toward the exit, the smell of lupine musk thickening in the enclosed space. You are shoved to the carpeted floor with a series of muffled thuds, and the group wastes no time in claiming their prize. A statuesque female associate straddles your face, her wet, sensitive folds pressing against your lips as she begins to ride your mouth with a rhythmic, demanding hunger. Simultaneously, a male aide hauls your hips upward, his hard, knotted shaft breaching your back entrance with a sharp, breathy yelp of delight as he begins to pound into your ass. A third wolf kneels next to you, his muzzle working frantically on your own rigid cock. You are lost in a chaotic whirlpool of slick friction and heavy weight, the frantic sounds of the office copiers providing a surreal backdrop to your total, horizontal submission.";
		WaitLineBreak;
		say "     The encounter reaches a frantic, uncoordinated peak as the nanite-fueled lust of the wolves boils over. Your own climax is drawn out by the expert muzzles and tight grips of your captors, your seed spraying in thick ropes across the furred bellies of the interns. At the same moment, the male wolf between your legs bellows a victory roar, his knot starting to engorge, but popping out of your picker just in time to not tie as he floods your bowels with hot, voluminous load. The female riding your face shudders and moans, her own slick release coating your chin and throat before she finally pulls away. As she does, the fourth wolf that had been masturbating franticly spurts his cum all over your face. You are left dazed and painted in a mixture of fluids, your body aching from the intense, multi-pronged sexual encounter. Before you can even catch your breath, the wolves haul you back to your feet and shove you out onto the street.";
		say "     The heavy glass doors swing shut behind you with a final click, leaving you messy and trembling on the sidewalk while the pack returns to their corporate games. You suspect their hyper-fixated minds will have forgotten your face before you even reach the end of the block. Better luck next time, it seems...";
		CreatureSexAftermath "Player" receives "AssFuck" from "Black Wolf";
		CreatureSexAftermath "Player" receives "OralCock" from "Black Wolf";
		CreatureSexAftermath "Black Wolf" receives "OralCock" from "Player";

Section 2- Pigging Out

restaurantpig is a number that varies.	[to be used at a later date]

Table of GameEventIDs (continued)
Object	Name
Pigging Out	"Pigging Out"

Pigging Out is a situation.
ResolveFunction of Pigging Out is "[ResolveEvent Pigging Out]". The level of Pigging Out is 3.
Sarea of Pigging Out is "High".

when play begins:
	add Pigging Out to BadSpots of FemaleList;
	add Pigging Out to BadSpots of FurryList;

to say ResolveEvent Pigging Out:
	say "     You come to a very exclusive restaurant. While you've never been there, you've heard that reservations are required months in advance and that the cuisine is both wonderful and expensive. With the fall of the city, you know you won't be able to order a meal there, but you may be able to get some fine food from the cold locker. As you get closer, you hear some noise coming from the restaurant and approach more cautiously. Glancing through one of the large windows, you see a large sow inside, making a mess of the place. It looks like she has been eating and masturbating all over the place. One hand holds a fistful of food while the other fingers her dripping pussy.";
	if BodyName of Player is "Messy Pig" or FaceName of Player is "Messy Pig" or BodyName of Player is "Piggy" or FaceName of Player is "Piggy":
		say "     Eyeing both her and the food, you lick your lips hungrily. You feel the urge to join her in the restaurant. Besides, wouldn't the experience of eating at the best restaurant in town be better with an attractive date?";
		say "[line break]     [bold type]Join her in the restaurant?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     When you first step in, the pig is somewhat startled by your presence. Her heavy bulk struggles to get up, but she soon relaxes and smiles as she sees your piggish features and eager attitude. With a grin, she picks up a handful of food from the floor with her left hand, the one she'd had in her pussy. As you reach for it, you can see her wet juices running over the sugary dessert, making your mouth water for it all the more. You stuff the food into your mouth, chewing noisily as you enjoy its added seasoning.";
			say "     As you eat, she helps you out of your clothes, tossing them onto a knocked over table. With you now naked, she runs her messy hands over your body as she pulls you into her arms. She grabs another of the scattered pastries from the floor and stuffs it into her mouth before sloppily kissing you, smearing the creamy filling into your mouth with her tongue.";
			if Player is male:
				say "     You place your hands on her sow tits, making her squeal in pleasure. She lays herself back on the floor, squishing some of the expensive food beneath her bulk. You bury your face in her teats, licking and suckling at them playfully. She oinks and moans in pleasure between mouthfuls. You work your way down her chest, tending to each of her six breasts until that brings you between her legs and that wet, cavernous slit beckons to you.";
				say "     You grab a nearby bottle of maple syrup and tear off the top, pouring it right onto those wet lips before you bury your face between her large thighs. You lick all over her messy pussy, the maple sweetness tasting wonderful with her porcine juices. You stuff your tongue into her, delving deeper for more of her sweet honey until she finally orgasms and soaks your face with it.";
				say "     You smile up at her, licking your chops as she motions for you to climb atop her. You do so eagerly, bringing your hard cock into position at her pussy before burying it in her ample folds. With your face pressed to her piggish snout, she snuffles at your face and licks away the sticky syrup and her own juices with squeals of pleasure as you fuck her.";
				say "     When she's finished cleaning your face, you stuff another large pastry into her mouth and share it with her while kissing. Her plump body ripples with each hard thrust you make into her. You pound into her again and again until finally you climax, shooting your hot seed into her womb, making her squeal again.";
				say "     Your romp with her continues for several hours. Between gorging and fucking, you feel quite full and satisfied when you both finally part ways.";
			else:
				say "     She presses you down to the floor, flattening several soft pastries beneath you. She moves her heavy bulk atop you, bringing her wet and dripping pussy over your face. You moan softly as she presses it to your mouth, smearing her juices onto you, which you quickly start lapping up from her pussy.";
				say "     With her atop you, you barely catch sight of her grabbing a bottle of maple syrup. A few moments later, you feel the cool, sticky fluid flowing down between your legs. She spreads your petals and pours more over them before burying her snout between your thighs and licking hungrily at your sticky puss. You both moan and squeal in pleasure until you climax, adding more hot juices to the sticky mess.";
				say "     She pauses to stuff several more pastries into her mouth, gobbling them down. She ends up dropping crumbs onto your sticky groin where they cling to the syrupy, slobbery film of your juices. After her quick gorging, she climbs off of you and goes to the back and into the food locker. At first you think she's going to come out with more food for you both, but when she comes out with only a cucumber and a grin, you realize she has something else in mind.";
				say "     She plops herself down onto the messy floor, seating herself between your legs. Stroking your thigh, she moves her piggy hand up to your wet, messy cunny and spreads your lips. With a grin, she sinks the long, slender cucumber into you, making you squeal. She works the vegetable in and out several times before she lays back, one leg over yours and the other under. With considerable labor, she moves her heavy bulk closer, taking the other half of the cuke into her pussy.";
				say "     With a little careful practice, you both set up a nice rhythm where you rock back and forth, pushing the cuke into each other over and over again. You both fondle your breasts and stuff more of the scattered desserts into your hungry mouths. A wet puddle of juices pool beneath it as your pleasure builds and builds until you finally crash over the edge and she follows a few breaths later. You both writhe in orgasm, eventually snapping the green vegetable in half as you squeal loudly.";
				say "     Your romp with her continues for several hours. Between gorging and fucking, you feel quite full and satisfied when you both finally part ways, with you munching on your half of the sticky cucumber and she doing the same with hers.";
			MultiInfect "Messy Pig" repeats 2;
			PlayerEat 30;
			lower Player Libido by 18;
			SanLoss 10;
			increase score by 25;
			now restaurantpig is 1;
			now Resolution of Pigging Out is 1; [ate with the pig]
		else:
			LineBreak;
			say "     You resist the urge to join her in the messy feast, but you would still like to opportunity to search the place for supplies.";
			say "[line break]     [bold type]Shall you enter the restaurant and confront her before she eats it all?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents:
				challenge "Messy Pig";
				if lost is 1:
					say "     After you wipe your face and catch your breath, you see her return from the food locker with another armload of food. She tosses it in a heap on the floor beside you. With an oink, she drops down onto the floor next to the food and grabs you by the neck. She buries your face between her legs, giving you a noseful of her strong scent and wet pussy. As she smears your face across her pussy lips, you find yourself licking at them with increasing lustful hunger. Once she's satisfied that you're properly set to work, she starts stuffing handfuls of food into her piggish snout with oinks of pleasure. With you to tend to her pussy, she can stuff food into her hungry maw with both hands. After numerous squealing orgasms, she seems satisfied and shoves you out of the restaurant, sending you off on your way.";
					infect "Messy Pig"; [extra infection]
					decrease score by 5;
					now restaurantpig is 1;
					now Resolution of Pigging Out is 3; [fought the pig for food, lost]
				else:
					say "     After defeating the pig and sending it on its way, you pick carefully through the ruined restaurant. The food in the main dining area and kitchen is all clearly tainted, but you do manage to find a little in the back of the walk-in cooler that is clean and undamaged by the gorging pig. You get enough for two meals packed away using some of the kitchenware to pack it up. While doing so, you also find a big kitchen knife that you decide to bring along.";
					ItemGain food by 2;
					ItemGain cleaver by 1;
					increase score by 5;
					now Resolution of Pigging Out is 2; [fought the pig for food, won]
			else:
				LineBreak;
				say "     Looking around the messy restaurant and the scattered food around the pig, you're not so sure they'll be anything salvageable left and decide it may not be worth the risk to try.";
				increase score by 1;
				now Resolution of Pigging Out is 4; [didn't fight the pig for food]
	else:
		say "     You look at the disgusting mess that she's already made of the place and feel your hopes of some fine dining dashed. You would still like to opportunity to search the place for supplies.";
		say "[line break]     [bold type]Shall you enter the restaurant and confront her before she eats it all?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			challenge "Messy Pig";
			if lost is 1:
				say "     After you wipe your face and catch your breath, you see her return from the food locker with another armload of food. She tosses it in a heap on the floor beside you. With an oink, she drops down onto the floor next to the food and grabs you by the neck. She buries your face between her legs, giving you a noseful of her strong scent and wet pussy. As she smears your face across her pussy lips, you find yourself licking at them with increasing lustful hunger. Once she's satisfied that you're properly set to work, she starts stuffing handfuls of food into her piggish snout with oinks of pleasure. With you to tend to her pussy, she can stuff food into her hungry maw with both hands. After numerous squealing orgasms, she seems satisfied and shoves you out of the restaurant, sending you off on your way.";
				infect "Messy Pig"; [extra infection]
				decrease score by 5;
				now restaurantpig is 1;
				now Resolution of Pigging Out is 3; [fought the pig for food, lost]
			else:
				say "     After defeating the pig and sending it on its way, you pick carefully through the ruined restaurant. The food in the main dining area and kitchen is all clearly tainted, but you do manage to find a little in the back of the walk-in cooler that is clean and undamaged by the gorging pig. You get enough for two meals packed away using some of the kitchenware to pack it up. While doing so, you also find a big kitchen knife that you decide to bring along.";
				ItemGain food by 2;
				ItemGain cleaver by 1;
				increase score by 5;
				now Resolution of Pigging Out is 2; [fought the pig for food, won]
		else:
			LineBreak;
			say "     Looking around the messy restaurant and the scattered food around the pig, you're not so sure they'll be anything salvageable left and decide it may not be worth the risk to try.";
			increase score by 1;
			now Resolution of Pigging Out is 4; [didn't fight the pig for food]
	now Pigging Out is resolved;

[cleaver moved to Core Mechanics/Weapons.i7x]

Section 3- Small Park

Table of GameEventIDs (continued)
Object	Name
Small Park	"Small Park"

Small Park is a situation.
ResolveFunction of Small Park is "[ResolveEvent Small Park]".
Sarea of Small Park is "High".

when play begins:
	add Small Park to BadSpots of FemaleList;
	add Small Park to BadSpots of MaleList;
	add Small Park to BadSpots of HermList;
	add Small Park to BadSpots of FurryList;
	add Small Park to BadSpots of HumorousList;

to say ResolveEvent Small Park:
	say "     While searching the area, you come across a small park. It is only about a hundred meters in each direction. From a distance, you spot what appear to be discarded piles of clothes, cum puddles and other signs of citizens being transformed. You don't spot any danger at the moment, so perhaps it's safe.";
	say "[line break]     [bold type]Shall you enter the park and investigate further?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		if a random number between one and twelve is:
			-- 1:
				say "     You look around the park and are fortunately not spotted by any monsters. You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. You get lucky while searching around what appears to be a jogger's outfit, finding an unopened bottle of water that rolled partway under a bush.";
				ItemGain water bottle by 1;
				increase score by 1;
			-- 2:
				say "     You look around the park and are fortunately not spotted by any monsters. You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. You get lucky searching one pile of clothes, finding a used can of mace near the torn dress. Quite sure it would be handy, you pick it up and add it to your inventory.";
				ItemGain pepperspray by 1 silently;
				increase score by 5;
			-- 3:
				say "     You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. As you are inspecting one pile with a stick for added safety, hear the crack of a branch behind you, seeing one of the canine creatures who probably originated here. Having failed to sneak up on you, the male German shepherd approached swiftly.";
				challenge "German Shepherd Male";
			-- 4:
				say "     You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. Your search turns up nothing of value, but you are getting ready to leave, you spot a large collie-like creature charging into the park. It sniffs around eagerly, clearly drawn by the scent of so many canines. Finding the park empty, it is clearly disappointed. That is, until it finds you.";
				challenge "Smooth Collie Shemale";
			-- 5:
				say "     You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. As you approach the far corner of the park, you are spotted by a husky female with the last tatters of her expensive dress still on her and a pearl necklace. As she bounds towards you, you note that the scent of sex is thick around her. She was likely very recently transformed and is lost in her new animalistic needs.";
				challenge "Husky Bitch";
			-- 6:
				say "     You look around the park and are fortunately not spotted by any monsters. You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. While flipping through a pile of clothes and items, you spot a dog collar. Making the mistake of picking it up, you find it sticky with something that runs down your arm. You toss down the cum-slick collar, but it is too late.";
				[random canine infection]
				say "[doggyinfect]";
			-- 7:
				say "     You look around the park and are fortunately not spotted by any monsters. You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. While flipping through a pile of clothes and items, you spot a dog collar. Making the mistake of picking it up, you find it sticky with something that runs down your arm. You toss down the cum-slick collar, but it is too late.";
				[random canine infection]
				say "[doggyinfect]";
			-- 8:
				say "     You look around the park and are fortunately not spotted by any monsters. You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. While flipping through a pile of clothes and items, you spot a dog collar. Making the mistake of picking it up, you find it sticky with something that runs down your arm. You toss down the cum-slick collar, but it is too late.";
				[random canine infection]
				say "[doggyinfect]";
			-- 9:
				say "     You look around the park and are fortunately not spotted by any monsters. You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. While you walk through the park, you pass near the large tree at the center of the park and the dog smell is the strongest here. It is very thick in the air around it and you can see the trunk discolored with markings and thick cum splashes. Despite its origins, the scent is very attractive, drawing you in.";
				say "[line break]     [bold type]Do you want to examine it more closely?[roman type][line break]";
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					say "     You move in closer to the tree and start to sniff around it. The heady scent of dogs, both males and females, fill your nostrils. You pant a little, tasting the scent of heat as well from many of them. Your mind grows hazy and you roll on the ground in front of the tree, through several cum puddles, letting their scent get on you. Getting up, you shamelessly add your scent to the base of the tree before heading off, leaving the dog park now that you've marked that you've been there.";
					[triple random canine infection]
					say "[doggyinfect]";
					say "[doggyinfect]";
					say "[doggyinfect]";
					raise Player Libido by 10;
					SanLoss 10;
					decrease score by 10;
				else:
					LineBreak;
					say "     You resist the urge to give in to those cloying scents and move away. You try to continue searching, but find yourself drift back to the tree several times and finally decide to abandon the dog park entirely.";
					increase score by 1;
			-- 10:
				say "     You start to look around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. As you approach another section of the park, you hear rough panting and growling coming from the other side of a hedge. Creeping forward, you see a very large dog, possibly some form of Labrador, pounding into an increasingly canine woman. She's already largely transformed and seems as lost in her animal lusts as the dog atop her. Sensing that it's already too late to save her, you decide not to pick a fight with the big dog (and possibly his new mate as well) and sneak out of the park and put some distance between you and them.";
				increase score by 1;
			-- 11:
				say "     You look around the park and are fortunately not spotted by any monsters. You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. While searching, you come across what to be a jogger's gear. The discarded shorts are torn at the front, either ripped open from massive internal growth or an overeager monster seeking the goods within - it's hard to be certain. The jogger's step counter and wrist bands are also scattered among the clothes, but you're unable to find anything that could be useful to you.";
				increase score by 1;
			-- 12:
				say "     You look around the park and are fortunately not spotted by any monsters. You search around the park, finding many signs of attacked residents. There are torn and cum-stained clothes in several clusters, along with dog leashes and collars. The area is thick with the scent of dog. While searching, you focus on one pile of what appear to have once been rather expensive clothes. The short skirt and woman's blazer would be very fashionable if not thoroughly soaked in cum. The nearby purse and high heels are both designer brand names - expensive French ones. A broken collar and leash, and a torn remains of a cute dog outfit lead you to suspect that this woman's little dog become more than she could handle. Sifting through the items with the help of a stick, you're unable to find anything that could be useful to you.";
				increase score by 1;
		now Resolution of Small Park is 1; [searched the dog park]
	else:
		LineBreak;
		say "     You go off, deciding to find a safer place to search.";
		increase score by 1;
		now Resolution of Small Park is 99; [disinterest]
	now Small Park is resolved;

to say doggyinfect:
	if a random number between 1 and 11 is: [adjust this for new dogs]
		-- 1: infect "Husky Bitch";
		-- 2: infect "German Shepherd Male";
		-- 3: infect "Smooth Collie Shemale";
		-- 4: infect "Pit Bull";
		-- 5: infect "Ember Breeder";
		-- 6: infect "Chocolate Lab";
		-- 7: infect "Husky Alpha";
		-- 8: infect "Retriever Female";
		-- 9: infect "Cerberus";
		-- 10: infect "Horny Doctor";
		-- 11: infect "Pink Poodle";

Section 4- Corporate Fat Cats

Table of GameEventIDs (continued)
Object	Name
Corporate Fat Cats	"Corporate Fat Cats"

Corporate Fat Cats is a situation.
ResolveFunction of Corporate Fat Cats is "[ResolveEvent Corporate Fat Cats]".
Sarea of Corporate Fat Cats is "High".

when play begins:
	add Corporate Fat Cats to BadSpots of MaleList;
	add Corporate Fat Cats to BadSpots of FurryList;

to say ResolveEvent Corporate Fat Cats:
	say "     You come across a pair of hefty felines on the steps of one of the many high-rise buildings. Their business suits have mostly been removed and scattered around them. One is a male black cat with white paws and a splash of white on his wide belly. The other is a chubby Maine Coon tom with the thick, fluffy fur of the breed. They are rolling around against one another, groping each other. While stroking the black cat's cock, the other cat goes on about looking forward to some asset growth. The black cat nibbles at the portly Maine Coon's ear, telling him how he wants to set up this merger and come out on top. They continue to go on like this, bantering in corporate lingo while the black cat mounts the other while you walk off, leaving the fat cats to their [']merger['].";
	increase score by 1;
	now Corporate Fat Cats is resolved;

Section 5- Veterinary Hospital

Table of GameEventIDs (continued)
Object	Name
Veterinary Hospital	"Veterinary Hospital"

Veterinary Hospital is a situation.
ResolveFunction of Veterinary Hospital is "[ResolveEvent Veterinary Hospital]".
Sarea of Veterinary Hospital is "High".

when play begins:
	add Veterinary Hospital to BadSpots of FemaleList;
	add Veterinary Hospital to BadSpots of MaleList;
	add Veterinary Hospital to BadSpots of HermList;
	add Veterinary Hospital to BadSpots of FurryList;

to say ResolveEvent Veterinary Hospital:
	if lust of Doctor Medea is 1:
		say "     You come across a veterinary hospital at the ground level of one of the high rises. Recalling your discussion with Dr. Medea about the supplies she needs to affect your [if Player is female]infected[else]male[end if] womb's heat cycle, you take a moment to listen for monsters inside. You don't hear any, but it is an animal hospital, so it still seems somewhat risky. Deciding to take the risk, you venture inside.";
		WaitLineBreak;
		if FurryList is not banned and HermList is not banned:
			say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. Feeling you shouldn't stay long, you do your best to remain focused by repeatedly looking at the list you were given as a reminder of what you need to find. As you're nearing the end, it is becoming quite difficult, all those intense, sexual, animal scents have you panting with lust. A large part of you just wants to give up on humanity, find some beast and let it have its way with you as long and as often as it likes. Knowing you can't tarry any longer, you pack up what you've found and make for the exit.";
			say "     And that's when you turn around to find your path back to the lobby barred by one of those large panther taurs. She's wearing the remains of a doctor's coat over her upper body. She moves in on you, growling lustfully as she advances.";
			now Libido of Player is ( 100 + Libido of Player + Libido of Player ) / 3;
			SanLoss 5;
			challenge "Panther Taur";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     After dealing with the panther taur, you find it quite tempting to stay and continue to have fun with the sexy feline herm. Surely she'd be able to satisfy that lustful itch of your for animal sex, some part of you suggests. It takes some effort of will, but you're able to rein yourself in and leave the place before it gets any stronger. Once outside, you breathe in the (relatively) fresher air outside to try and clear your head. Trying to recover your self-control, you leave the immediate area and ponder your next course of action. Despite the close call, finding a sexy beast to fuck you remains high on your list.";
				now Resolution of Veterinary Hospital is 2; [won and got medea's supplies]
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     After the panther taur's had her way with you, she pushes you back inside her veterinary clinic home. Lost in a daze of animal lust, you don't resist as she secures you with a collar and leash to the wall before mounting you. You're fucked over and over again in numerous positions, fed on a diet of her cum and milk until you're nothing but another lust-crazed panther taur by the time she releases you out into the city[if Player is impreg_ok] with a belly full of her cubs[end if].";
				setmonster "Panther Taur" silently;
				turn the Player into a "Panther Taur" silently; [NOTE: Avoid attributeinfect output in a game over (@Stadler#3007)]
				now humanity of Player is 0;
				if Libido of Player < 90, now Libido of Player is 90;
				follow the sex change rule;
				follow the sex change rule;
				wait for any key;
				end the story saying "There are no thoughts left in your air-filled head but that of playing at the beach.";
				wait for any key;
				follow the turnpass rule;
				stop the action;
			else:
				say "     Not feeling it would be wise to stay and fight given the circumstances, you clutch your pack full of stolen veterinary supplies all the tighter and dodge your way past the big feline. Still running to put some distance between her in case she chooses to pursue you, you breathe in the (relatively) fresher air outside to try and clear your head. Trying to recover your self-control, you leave the immediate area and ponder your next course of action. Despite the close call, finding a sexy beast to fuck you remains high on your list.";
				now Resolution of Veterinary Hospital is 3; [fled]
		else:
			say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. Feeling you shouldn't stay long, you do your best to remain focused by repeatedly looking at the list you were given as a reminder of what you need to find. As you're nearing the end, it is becoming quite difficult, all those intense, sexual, animal scents have you panting with lust. A large part of you just wants to give up on humanity, find some beast and let it have its way with you as long and as often as it likes. Knowing you can't tarry any longer, you pack up what you've found and make for the exit as quickly as you can, breathing in the (relatively) fresher air outside to try and clear your head. Trying to recover your self-control, you leave the immediate area and ponder your next course of action. Finding a sexy beast to fuck you remains high on your list.";
			now Libido of Player is ( 100 + Libido of Player + Libido of Player ) / 3;
			SanLoss 5;
			now Resolution of Veterinary Hospital is 4; [fight banned, so the player just ran out with the supplies]
		now lust of Doctor Medea is 2;
	else:
		say "     You find a veterinary hospital at the ground level of one of the high rises. You don't hear any monsters within and consider entering. There could be some useful supplies within, but it is an animal hospital, so it does seem a somewhat risky venture.";
		say "[line break]     [bold type]Shall you enter?[line break][roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			let T be a random number between one and twelve;
			decrease humanity of Player by 3;
			if T is 1: [1]
				say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. Feeling you shouldn't stay long, you scout around and are fortunate to find a medical supply kit that is suitable for your needs. You tuck it under one arm and quickly head out to get some fresh air.";
				ItemGain medkit by 1;
				increase score by 3;
			else if T is 2: [2]
				say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. Feeling you shouldn't stay long, you scout around and come across some sample cans of pet food.";
				if BodyName of Player is listed in the infections of CanineList or FaceName of Player is listed in infections of CanineList:
					if BodyName of Player is listed in the infections of FelineList or FaceName of Player is listed in infections of FelineList:	[both doggy and kitty]
						say "     At this moment at least, the warring feline and canine urges within you are in harmony and you feel a hunger for all the sample food items. It seems you have enough feline and canine aspects within you that you find the pet food appetizing and are willing to add it to your supply. As they are sealed and were probably canned months before the outbreak in another city, you feel they are safe to eat. You quickly stuff them all into your bag and head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
						ItemGain food by 3;
						increase score by 5;
					else:						[just doggy]
						say "     Looking over the cans of dog food, your tummy rumbles. It seems you have enough canine aspects within you that you find the dog food appetizing and are willing to add it to your supply. As they are sealed and were probably canned months before the outbreak in another city, you feel they are safe to eat. You quickly stuff them into your bag and head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
						ItemGain food by 2;
						increase score by 3;
				else if BodyName of Player is listed in the infections of FelineList or FaceName of Player is listed in infections of FelineList:	[just kitty]
					say "     Looking over the cans of cat food, your tummy rumbles. It seems you have enough feline aspects within you that you find the cat food appetizing and are willing to add it to your supply. As they are sealed and were probably canned months before the outbreak in another city, you feel they are safe to eat. You quickly stuff them into your bag and head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
					ItemGain food by 2;
					increase score by 3;
				else if hunger of Player > 49:		[starving]
					say "     You look at the cans of pet food for a moment and your stomach rumbles. Despite being pet food, you are very hungry and need something to eat. As they are sealed and were probably canned months before the outbreak in another city, you feel they are safe to eat. Resigned to your fate, you take one of the cans and add it to your supply. You then quickly head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
					ItemGain food by 1;
					increase score by 1;
				else:							[not a kitty or doggy, nor starving]
					say "     You look at the cans of pet food briefly, then turn and continue searching. You haven't sunk that low yet. A quick look around the rest of the room finds nothing else of interest. Unsuccessful, you quickly head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
					increase score by 1;
			else if T < 8:		[high chance of random 'pet' fight] [3-7]
				say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. Feeling you shouldn't stay long, move quickly through the examination rooms. There is a noise behind you and you turn around quickly to find one of the monsters behind you, perhaps it was once one of the humans who were here, or maybe even one of the animals.";
				if a random number between 1 and 11 is:				[more suitable pets can be added]
					-- 1: challenge "Husky Bitch";
					-- 2: challenge "Smooth Collie Shemale";
					-- 3: challenge "Pit Bull";
					-- 4: challenge "Chinchilla";
					-- 5: challenge "German Shepherd Male";
					-- 6: challenge "Anthro Rabbit";
					-- 7: challenge "Feline";
					[-- 7: challenge "Husky Alpha";]
					-- 8: challenge "Ninja Cat";
					-- 9: challenge "Siamese Cat";
					-- 10: challenge "Retriever Female";
					-- 11: challenge "Catgirl";
				say "     After having lost time dealing with the creature, you can feel the scents suffusing the vet's office are getting to you and you leave before you succumb entirely.";
			else if T is 8: [8]
				say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. Feeling you shouldn't stay long, you move quickly through the examination rooms. In them you find more signs of rapid transformation and sex. Perhaps an owner had brought in their pet when it started to show [']symptoms[']. You open up the medical cabinet to look through it, but accidentally place your hand in a sticky puddle of something. Your hand starts to tingle and you can feel the infection trying to take hold. The scents all around you become more attractive. You feel a strong urge to give in and roll around in them, and even lap them up. You manage to suppress it long enough to run out of the place, panting in the fresh air to clear your head.";
				infect "Husky Bitch";
			else if T is 9: [9]
				say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. Feeling you shouldn't stay long, move quickly through the examination rooms. In them you find more signs of rapid transformation and sex. Perhaps an owner had brought in their pet when it started to show [']symptoms['].";
				say "     As you start to open up the medical cabinet to look for supplies, you feel a cold, sticky splash against your back. Splatters of thick, cool cum splash past you and onto cabinet's contents. You turn around quickly to see one of the large panther taurs in the doorway behind you, wearing the remains of a doctor's coat over her upper body. In her paw she has another large, clear balloon filled with what must be her cum. And that's when you realize it's not a balloon, but an overinflated condom. As the tingles of transformation run through you, you have to dodge to the side to avoid the second one before closing in to fight her.";
				infect "Panther Taur";
				challenge "Panther Taur";
				say "     Once the panther creature has left, you return to quickly inspect the medical cabinet, but find that the contents have been thoroughly soaked in the feline's cum. The scent of it and of all the other creatures is quickly getting to be too much. You barely resist giving in and lapping up the growing puddle of cool cum that's flowing out of the cabinet before running out into the fresh air to clear your head.";
			else if T is 10: [10]
				say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. You end up making your way into the staff break room and find that the animalistic sex spread into here as well. From the clawmarks on the table and the large cum stain in the middle, some big male or herm got a thorough fucking while bent over it. You quickly search around the room for usable supplies, but it seems the few lunches that were brought in have already been consumed by the newly transformed creatures. The scents filling the place start to get to you and you eventually have to leave empty handed to resist giving in to them fully.";
				increase score by 1;
			else if T is 11: [11]
				say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. You search around the waiting area, where many of the chairs have been overturned and several broken pet carriers remain. There are piles of clothes and numerous patches of cum. It seems the waiting area turned into an orgy of pets and owners. You try to sift through the messy piles, but have no luck finding anything before the scents become too much and you have to abandon searching entirely.";
				increase score by 1;
			else: [12]
				say "     You cautiously enter the veterinary hospital and look around. As you suspected, it was rather hard hit by the outbreak. You can see the tattered remains of the secretary and the vets['] clothes scattered about, as well as many dried pools of cum. The scent of feline and canine arousal is strong in the air, making the infection inside you tingle. You start by looking around the reception desk and find the secretary's discarded panties at the foot of the chair. Drawn by a scent, you kneel down and find a large cumstain against the wall of the desk. It looks like the secretary had started to grow a cock and had jerked herself off, probably while still greeting incoming owners. The scents all around you get to be too strong for you. You can barely resist licking at that large stain, so you get up and rush out quickly.";
				increase score by 1;
			now Resolution of Veterinary Hospital is 1; [searched the place]
		else:
			LineBreak;
			say "     You go off, deciding to find a safer place to search.";
			increase score by 1;
			now Resolution of Veterinary Hospital is 99; [disinterest]
	now Veterinary Hospital is resolved;

Section 6- Golf Store

Table of GameEventIDs (continued)
Object	Name
Golf Store	"Golf Store"

Golf Store is a situation.
ResolveFunction of Golf Store is "[ResolveEvent Golf Store]".
Sarea of Golf Store is "High".

when play begins:
	add Golf Store to BadSpots of FurryList;

to say ResolveEvent Golf Store:
	say "     Navigating the shadowed canyons of the high-rise district, your eyes scan the skyline for movement while your boots crunch over scattered debris. The silence of the abandoned street is heavy, broken only by the distant animalistic sounds of the nanite-warped city. You spot the glass facade of a high-end golf pro-shop and decide to duck inside, hoping to find something useful among the wreckage of the already looted store. The door lies in a spray of shattered security security glass, revealing an interior that has been ransacked. Stepping inside, you nevertheless try to see if there is anything left. While you're in the store, a sudden, rhythmic thudding reaches your ear from the outside. It is the unmistakable sound of multiple sources striking the asphalt in a synchronized, galloping beat that grows louder by the second.";
	say "     The of the street outside becomes a blur of motion as a party of eight tall horsemen jog into sight. These creatures are specimens of raw power, each standing at least six and a half feet tall with bodies defined by corded, furred muscle. They move with a confident, athletic grace, their heavy hooves leaving scuffs on the asphalt with every thunderous strike. Several of the stallions carry half-transformed captives draped over their broad shoulders, the prisoners dazed and showing the first subtle shifts of their own impending change. Boisterous laughter erupts from the hunters as they banter about the successful hunt and their eagerness to reach 'The Stables' for their reward. Their deep, resonant voices linger in the air long after they have disappeared around the corner, leaving you alone in the sudden, ringing silence of the pro-shop.";
	WaitLineBreak;
	say "     Once the echoing sound of the hooves has completely faded into the distance, you turn your attention back to exploring the interior of the store. It is a scene of frustrating disappointment, as the shelves have clearly been gone over multiple times by waves of previous looters. Racks that once held expensive apparel are now empty skeletons, and the display cases for equipment have been smashed or stripped bare. What little remains scattered across the carpet - a few torn gloves and crushed boxes - has been splattered with a thick, crusty sheen of sexual fluids. This is the grim reality of the nanite apocalypse, where every surge of transformation leaves behind a sticky, musky evidence of the lust it ignites. The scent of stale arousal hangs heavy in the stagnant air, making you wrinkle your nose in distaste as you realize there is almost nothing of value left to scavenge in this building.";
	say "     Just as you prepare to abandon the shop, your eyes catch a flash of polished chrome in the front display window. A solitary mannequin stands there, its plastic features frozen in a vapid smile, miraculously overlooked by every scavenger who came before you. Clutched firmly in its artificial hands is a pristine 9-iron, held high in a mock follow-through. It seems the other looters were too focused on the back rooms to notice the serviceable weapon standing right in plain sight. You step into the window and pry the club from the mannequin's stiff fingers, testing the weight and balance of the cold metal. The 9-iron is heavy, solid, and dependable - a far better defense than empty hands in a city where roaming horsemen are just one of countless dangers. Tightening your grip on the rubberized handle, you prepare to head back out into the district, feeling slightly more prepared for the myriad of threats lurking in the changing city.";
	ItemGain golf club by 1;
	increase score by 5;
	now Golf Store is resolved;

[golf club moved to Core Mechanics/Weapons.i7x]

Section 7- Electronics Store

Table of GameEventIDs (continued)
Object	Name
Electronics Store	"Electronics Store"

Electronics Store is a situation.
ResolveFunction of Electronics Store is "[ResolveEvent Electronics Store]".
Sarea of Electronics Store is "High".

when play begins:
	add Small Park to BadSpots of HumorousList;

to say ResolveEvent Electronics Store:
	say "     In the corner of one of the high-rise office buildings, you spot an odd pair of beings. They are a duo of strange, cybernetic people with vacant, luminescent eyes. Unlike any of the others you've seen in the city, you are drawn to investigate. From behind a car, you watch them as they eat the electronic hardware from the displays. One is a glossy white with blue highlights and a smooth, dome head. He is dressed in loose-fitting, slacker wear. The other has a matte black finish where he's not flesh and wearing a gray suit and charcoal tie.";
	say "     As you watch, the darker one twitches and shudders for a moment while trying to swallow down a big mouthful. His eyes blink, then turn a solid blue. He smacks his chest a few times to reboot himself. Once that is settled, he opens his jacket, accesses a panel on himself and pulls out a video card, swapping it for a newer model from one of the shelves.";
	say "     With this impromptu upgrade completed, they get back to squabbling over the various electronic phones, mp3 players and doodads, babbling marketing buzzwords all the while.";
	increase score by 1;
	now Electronics Store is resolved;

Section 8 - Cameo

Table of GameEventIDs (continued)
Object	Name
Cameo	"Cameo"

Cameo is a situation.
ResolveFunction of Cameo is "[ResolveEvent Cameo]". The level of Cameo is 4.
Sarea of Cameo is "High".

when play begins:
	add Cameo to BadSpots of HermList;
	add Cameo to BadSpots of HumorousList;
	add Cameo to BadSpots of FurryList;

to say ResolveEvent Cameo:
	say "     Passing past a collection of deluxe shops, your eye is caught by a premiere chocolate store. Glancing up that the face of the woman for which the store is named, you remember their fine quality products. Your sweet tooth suddenly needs to be satisfied and you go in before you have a chance to think it over. A quick glance around shows the store has been ransacked, with several creamy pools of white or dark chocolate on the floor. The glass displays have chocolate pawprints, both inside and out. You do spot a couple of display boxes and a cameo collection that seem undisturbed at the back of the store and head towards them. But when you reach the middle of the store, those dark puddles reshape themselves, forming into gooey canids made of chocolate. It seems you came across this place as they were cleaning it out and they set a trap for you. You are surrounded by a trio of chocolatey canines.";
	let ChocolateLabradorFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and ChocolateLabradorFightCounter < 3: [runs for 3 times or until the player loses or flees]
		if ChocolateLabradorFightCounter is 1:
			say "     After having finished with the lead dog, the others are moving in around the displays to get at you even as you keep moving to try and deal with them one on one. It is difficult going as you 	have to avoid those white chocolate cream puddles of what you now know to be chocolate dog cum. You manage to hop the sales counter and prepare to face the next one.";
		else if ChocolateLabradorFightCounter is 2:
			say "     With a second down, you ready yourself to face the last of them. As you look first to the gap your previous opponent took, you catch sight of it out of the corner of your eye. It quietly flowed up the counter as your last fight ended and makes a leap at you.";
			let bonus be ( perception of Player + dexterity of Player minus 20 ) divided by 2;
			if "Wary Watcher" is listed in feats of Player, increase bonus by 3;
			if "Bad Luck" is listed in feats of Player, decrease bonus by 2;
			if bonus > 12, now bonus is 12;
			let dice be a random number from 1 to 20;
			say "[line break]You roll 1d20([dice])[if bonus >= 0]+[end if][bonus] = [special-style-1][dice + bonus][roman type] vs [special-style-2]16[roman type] (Perception + Dexterity Check):[line break]";
			if bonus + dice > 15:
				say "     You manage to avoid the sneak attack, as the dog leaps past you and into the company logo, mashing its whole head into a slobbery kiss on the face of the store's namesake heroine. It flows and reshapes itself quickly, forming its tail into a new head and swapping its front and back legs around. This startling change shocks you long enough for it to complete the reversal and start snapping at you before you can take flight.";
			else:
				say "     The chocolate dog slams itself into you, flowing itself across your body. It squeezes around your chest, pushing out your breath even as its flowing body starts teasing at your nipples and groin. As you are forced to exhale, the chocolate canine presses its gooey face to yours, pushing its chocolatey tongue into your mouth and humping against your body. As its arousing taste fills your mouth, you moan softly and find yourself giving in before you snap back control of yourself and push the semi-solid dog back and off of you. It growls in frustration at you denying its lustful urges and charges to attack. But its assault on you has weakened you further as well as gotten you more aroused. (15 dmg taken)[line break]";
				decrease HP of Player by 15;
				raise Player Libido by 12;
		challenge "Chocolate Lab";
		increase ChocolateLabradorFightCounter by 1;
	if fightoutcome < 20: [player won]
		say "     Having defeated the last of them, you pant for breath as the chocolate dogs slink off like beaten curs. They press themselves to the ground so much that their legs melt away beneath them and flow out as dog-shaped blobs. With them dispatched, you are free to look around the remains of the store. It seems that much of the merchandise has already been consumed by the dogs or tainted by them during their lustful gorging. The boxes of chocolates and cameos on display at the back are thankfully still good, so you snatch them up and exit the store before the strong scent of chocolates and sex arouses you into sampling from the tainted wares.";
		if "Junk Food Junky" is listed in feats of Player:
			say "     Outside, you give in and satisfy your craving for chocolate by stuffing yourself with the small cameo pack. The fine chocolates are quite delicious. You store the rest for later consumption. Your junk food fueled metabolism finds the chocolates quite satisfying and you still have enough chocolates and almond bark to be equivalent to roughly two more snacks.";
			PlayerEat 15;
			if morale of Player < 0:
				increase morale of Player by 36;
				if morale of Player > 0, now morale of Player is 0;
				say "[line break]You feel much better after having your snack.";
			increase morale of Player by 1;
			ItemGain chips by 2 silently;
			increase score by 15;
		else:
			say "     Outside, you give in and satisfy your craving for chocolate by stuffing yourself with the small cameo pack. The fine chocolates are quite delicious. You store the rest for later consumption. While not very nutritious, you still have enough chocolates and almond bark to be equivalent to roughly one meal.";
			PlayerEat 6;
			if morale of Player < 0:
				increase morale of Player by 15;
				if morale of Player > 0, now morale of Player is 0;
				say "[line break]You feel better having eaten.";
			ItemGain food by 1 silently;
			increase score by 5;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     When the victorious Labrador moves back, you look up to find yourself surrounded by the trio who look at you lustfully. The other two flow atop you and start humping at your body. You are buried in flowing chocolate as they cover you completely. You can feel their creamy tendrils flow into [if Cunt Count of Player > 1]your every orifice, fucking your mouth, pussies and asshole with a hard chocolate cock for each[else if Player is female]your every orifice, fucking your mouth, pussy and asshole with a hard chocolate cock for each[else]your mouth and asshole, fucking you at both ends with a hard chocolate cock[end if][if Cock Count of Player > 1]. Their flowing bodies form warm, wet cunts around your cocks, sucking and squeezing at them as they pound into you[else if Player is male]. Their flowing bodies form a warm, wet cunt around your cock, sucking and squeezing at them as they pound into you[end if].";
		WaitLineBreak;
		if BodyName of Player is "Chocolate Lab" or FaceName of Player is "Chocolate Lab":
			say "     As this goes on, you can feel them flowing over your whole body, sliding off your clothes and backpack. Completely naked, you can feel their flowing, rippling chocolate flesh sliding all over you, stimulating you so fully you sink further and further into a haze. You barely notice the added weight of the third Labrador joining in, but you are somehow keenly aware that he's finished off the last of those chocolates as more and more of that creamy, white chocolate seed is pumped into you[if Player is male] while you pump your own cum out for them to enjoy[end if].";
			WaitLineBreak;
			say "     During this rampant, fluidic sex with the dogs, you can feel much of your chocolate being intermingling with that of the other Labradors. It feels like you are simultaneously filled and drained over and over again as your lovers mate you. You seem to flow into them as they flow into you in an orgasmic melding of pleasure. You feel yourself becoming much more canine and craving more and more chocolate, causing you to suck, squeeze and gulp down all you can get from them until finally much of you is gone.";
			decrease humanity of Player by a random number between 25 and 35;
			increase hunger of Player by 12;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 5 and 10;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 5;
		else:
			say "     As this goes on, you can feel them flowing over your whole body, sliding off your clothes and backpack. Completely naked, you can feel their flowing, rippling chocolate flesh sliding all over you, stimulating you so fully you sink further and further into a haze. You barely notice the added weight of the third Labrador joining in, but you are somehow keenly aware that he's finished off the last of those chocolates as more and more of that creamy, white chocolate seed is pumped into you[if Player is male] while you pump your own cum out for them to enjoy[end if]. It feels like you are simultaneously filled and drained over and over again as your lovers mate you. You seem to flow into them as they flow into you in an orgasmic melding of pleasure.";
			decrease humanity of Player by a random number between 20 and 30;
			increase hunger of Player by 12;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 5 and 10;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 5;
		setmonster "Chocolate Lab" silently;
		turn the Player into a "Chocolate Lab";
		if hellHoundLevel is 0:
			say "[run paragraph on]";
			follow the sex change rule;
			follow the sex change rule;
		WaitLineBreak;
		if Libido of Player < 70, now Libido of Player is 70;
		say "     When they are finally sated, they flow away from you, leaving you in a pool of creamy chocolate. You struggle to sit up as they flow over the last of the scattered chocolates before heading out the door. One of them, which you somehow sense to be the one who defeated you, turns back and looks at you, as if to see if you will follow before flowing after the others.";
		if humanity of Player < 10:
			say "     Trying again to pull yourself up, you discover that you've fully become flowing, animate chocolate like your assailants. You try to pull yourself together, taking stock that you've changed and fully become a chocolate Labrador like those sexy, tasty hounds. You flow into the shape of a flowing, chocolate dog and head out after them with a wet yip, having lost too much of yourself to them and succumbing to the bizarre, confectionary infection. When you catch up to them, they grin and give you slobbery, chocolatey licks and nuzzles, welcoming you into the pack.";
			end the story saying "Your mind melted away into the chocolate dogs, leaving you one of them.";
			now battleground is "void";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		else:
			say "     Trying again to pull yourself up, you discover that you've fully become flowing, animate chocolate like your assailants. You try to pull yourself together, taking stock that you've changed and fully become a chocolate Labrador like those sexy, tasty hounds. You manage to keep your mind together enough to pull yourself into a somewhat more solid and bipedal form. Still deeply infected and weakened, you manage to hold onto enough of your humanity to continue your quest for survival. You do feel a strong longing for more sex or more chocolate. Or best of all, more chocolate sex. You stumble away, trying to pull yourself into enough cohesion to walk as you rub your cream-filled tummy.[impregchance][impregchance]";
	else if fightoutcome is 30: [fled]
		say "     Managing to outmaneuver the chocolate dogs, you push your way out of the store and into the courtyard around the shops. Looking back, you spot the dogs pressed up against the glass, leaving chocolate streaks on windows before they hop down and return to their lustful consumption of the chocolates. You are quite certain there will be nothing left in the store except for the white chocolate stains from their sexual play as they celebrate their victory at defending their delicious prize.";
	now Cameo is resolved;

Section 9 - Raul's Wild Kingdom

Table of GameEventIDs (continued)
Object	Name
Wild Kingdom	"Wild Kingdom"

Wild Kingdom is a situation.
ResolveFunction of Wild Kingdom is "[ResolveEvent Wild Kingdom]".
Sarea of Wild Kingdom is "High".

to say ResolveEvent Wild Kingdom:
	say "     Hearing some activity coming from a small third-floor apartment, you cautiously check it out. Inside you find the small place crammed full of animal people or all kinds. A lamp by the door has 'Raul's Wild Kingdom' stuck onto its shade. In charge and probably the aforementioned Raul is an energetic and enthusiastic capybara with a fuzzy mustache of whiskers off in the back.";
	say "     Looking around, you are struck by several oddities. Looking up, you see a turtle-man with his chest stuck to the ceiling. He cranes his neck back lazily and waves down at you with a smile. There's also a bulletin board in the foyer that includes a sign-up sheet for [']Poodle Flying Lessons['], but it's all filled up.";
	if BodyName of Player is "Badger" or FaceName of Player is "Badger":
		say "     When Raul notices you, he gets quite upset, pushing his way over to you. 'Badgers? Badgers? We don't need not steenkin['] badgers!' He quickly shuffles you out the door and slams it in your face.";
	else if BodyName of Player is "Pink Poodle" or FaceName of Player is "Pink Poodle":
		say "     When Raul notices you, he smiles excitedly and comes over to you. 'You must be here for the flying lessons. Unfortunately, we're all filled up right now, but you can try back in a few days. Just be sure to bring your insurance information; you know, sometimes it takes you a little longer to learn how to do it right.";
		say "     You mill around briefly with the others there, but things are quite hectic. They're certainly friendly enough, if rather odd. Still, it turns out to be a pleasant break from being attacked or hit on.";
		increase morale of Player by 1;
	else:
		say "     You mill around briefly with the others there, but things are quite hectic. They're certainly friendly enough, if rather odd. Still, it turns out to be a pleasant break from being attacked or hit on.";
		increase morale of Player by 1;
	increase score by 1;
	now Wild Kingdom is resolved;

High Rise Events ends here.
