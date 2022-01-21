Version 3 of Shrinking Shrooms by Defth begins here.
[Version 3 - Added a shroom activated event occurring on the Stables (Ballsy Hung Horseman) - Gherod]

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Mushroom Cave	"Mushroom Cave"
Mushroom Cave	"Mushroom cave"

Mushroom Cave is a situation.
ResolveFunction of Mushroom Cave is "[ResolveEvent Mushroom Cave]".
Sarea of Mushroom Cave is "Outside".

MushroomCaveVisited is a number that varies. MushroomCaveVisited is usually 0

to say ResolveEvent Mushroom Cave:
	if MushroomCaveVisited is 0: [first visit]
		say "     Stepping inside the dark alley, you find yourself drawn to a green glow at the end of it, a peculiar scene, even for the place that you are in. There is an opening in the side of one of the buildings flanking the alley. Looking through the hole in the wall, you realize that the rest of the building has mostly collapsed and is nothing more but rubble, and you're standing at the entrance of a small 'cave' in the pile. Entering this 'cave', you find something like a mini-forest in there. Some, if not all, of the plants there are miniature versions of the same ones that you would find outside. Even some inanimate items like garbage dumpsters and trash cans lying outside of the cave and in the alley have shrunk. Right through the middle of this whole ecosystem, a river flows, feeding the amazing sight with life. It is but a trickle of goop to you, but it's a mighty flow to the tiny forest. Glowing with an otherworldly green color, it slowly flows from an opening in the rubble and unloads down a sewer drain a short while later. It is possible that this is some kind of radioactive leak from inside the destroyed building, and with the touch of the nanites, it was made into a shrinking concoction. Looking at the green river, you spot some mushrooms growing near the sewer that don't appear to be tiny like all of the other stuff, but they still glow faintly with that green color. The shrooms probably absorbed the features of both the radioactive stuff and the nanites.";
		say "     [bold type]Do you pick some of the mushrooms?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - You grab some of the mushrooms. They might prove useful in the future.";
		say "     ([link]N[as]n[end link]) - Nah, eating stuff growing next to glowing sludge might be a bad idea, and besides, you won't need them anyway.";
		if Player consents:
			say "     You carefully pick some of the mushrooms and put them into your backpack, sighing happily that you didn't shrink while doing so.";
			ItemGain glowing mushroom by 3 silently;
			now Resolution of Mushroom Cave is 1; [picked shrooms #1]
		else:
			say "     There is no need to pick them right now. You leave this place behind (for now) and continue exploring the city.";
			now Resolution of Mushroom Cave is 2; [didn't pick any shrooms #1]
		now MushroomCaveVisited is 1;
	else:
		say "     Returning to the dark alley, you pay a visit to the little cave in the ruined building again. Stepping up to the hole in the wall, you are struck once again by the otherworldly beauty of the miniature land spreading out in front of you. Some of the trees appear to have grown a bit, but no more than a dandelion. Meanwhile, the goop still flows silently and slowly to the sewer, although it does seem to be smaller than the first time you saw it. Maybe someday, this whole scene will grow back to normal, and nothing that you see here will be witnessed by someone else.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - You grab some of the mushrooms. They might prove useful in the future.";
		say "     ([link]N[as]n[end link]) - Nah, eating stuff growing next to glowing sludge might be a bad idea, and besides, you won't need them anyway.";
		if Player consents:
			LineBreak;
			say "     You carefully pick some of the mushrooms and put them into your backpack, sighing happily that you didn't shrink while doing so.";
			ItemGain Glowing mushroom by 3 silently;
			now Resolution of Mushroom Cave is 3; [picked shrooms]
		else:
			LineBreak;
			say "     There is no need to pick them right now. You leave this place behind (for now) and continue exploring the city.";
			now Resolution of Mushroom Cave is 4; [didn't pick any shrooms]

Section 2 - Item

Table of Game Objects (continued)
name	desc	weight	object
"glowing mushroom"	"A weird mushroom that you found. Faintly glows with a green light (shrinking item)."	0	glowing mushroom

glowing mushroom is a grab object. It is temporary.

Usedesc of glowing mushroom is "[glowing mushroom use]".

To say glowing mushroom use:
	say "     You quickly shrink, your body getting smaller and smaller by the second. Meanwhile, the clothes and gear you carry stay the same size, quickly outgrowing your diminishing stature. Looking at the now giant world with awe, you wonder how you will be able to survive while being small as a mouse. And should you just leave your equipment behind? Not seeing too much hope for making it far like this, you decide to wait. Thankfully, after some time, you feel yourself growing back to normal. Looks like the effects weren't permanent - this time, at least.";
	ItemLoss glowing mushroom by 1;

Understand "mushroom" as glowing mushroom.
Understand "shrooms" as glowing mushroom.
Understand "glowing shrooms" as glowing mushroom.

Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
Hungry Dog	"Hungry Dog"
Hungry Dog	"Hungry dog"

Hungry Dog is a situation.
ResolveFunction of Hungry Dog is "[ResolveEvent Hungry Dog]".
Sarea of Hungry Dog is "Outside".
When play begins:
	add Hungry dog to BadSpots of FurryList;
	add Hungry dog to BadSpots of MaleList;
	add Hungry dog to badspots of VoreList;

to say ResolveEvent Hungry Dog:
	if vorelevel > 2:
		say "     While exploring the nanite-infested city you hear some noises coming from an alley beside you. You turn around, trying your best to peek stealthily into the alley. Inside, you find what appears to be a giant, anthro German shepherd gorging himself with... some kind of food. By his side, you see a pile of clothes tossed carelessly aside. Most of them look like ordinary clothes, but there are some camo pattern uniforms in the mix, and they are all stained with what appears to be blood. This is weird - none of the German shepherds you found hunting in the city were wearing anything. Why would this one have clothes, or even take them off while he eats?";
		say "     Oh god! Your legs tremble with the sudden realization, and you almost lose your breath. It can't be! He is eating someone!? Almost as if sniffing your fear, the beast puts his muzzle to the air and starts to turn around...";
		LineBreak;
		say "     [bold type]Extreme content warning! (The further scene contain hard-vore with a possible shrinking scene and a game over!)[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Face the beast.";
		say "     ([link]N[as]n[end link]) - RUN!";
		if Player consents:
			if glowing mushroom is owned:
				say "     Coming from inside the dark alley, the German shepherd finally steps into the light, giving you a better view. He is monstrously large, quite a bit bigger than the ones you found to this day. He has some darker stains in his fur from what appear to be dried blood. A complete lack of clothing gives him an almost fully feral feel. Between the dog's legs, there is a huge sheath, and from the looks of it, an even bigger knotted penis. Even without it leaving the sheath, you can see it pressing against the skin, making it bulge, especially where the knot should be. Right below there are two orbs the size of tennis balls that appear to be full of the monster's seed.";
				say "     The bloodthirsty dog jumps in your direction, putting his arms to the ground and running like a feral monster with a dark smile. He rams into you, making you lose your breath from the strength of the impact. You are knocked over onto the floor, falling on your butt, making you clench your teeth with the impact with the deserted road. You are left without breath as the hunter stands tall beside you, never letting you out of his sight. Licking his lips, he holds you by the neck and says, 'Looks like I found my next meal.'";
				WaitLineBreak;
				say "     Sniffing you, the dog quickly pushes his muzzle into your backpack. With an impish smile, he quickly grabs the glowing mushrooms that you had. Looks like this dog does know what they do to those who eat them. Holding the mushrooms with one hand and pulling you by the neck with the other, he tries to force the mushrooms into your mouth. Since you won't cooperate, he holds your [FaceSpeciesName of Player in lower case] nose, depriving you of oxygen. Try as you might, you can't escape his hold, and you are starting to need air quick. Opening your mouth just for a bit gives the strong dog enough time to shove the shrooms down your throat, forcing you to eat and swallow them. 'Stupid prey,' the shepherd says with a winning smile. 'You should know your place. Being my meal is the best end for someone like you.'";
				say "     As soon as you swallow, you feel your body changing, quickly losing height and weight. The world keeps getting bigger and bigger, as well as the shepherd in front of you. Soon, all you can see is his paws as the now-absolutely-enormous predator grabs you. When you are brought in front of his giant face, you can see his saliva glistening, while his eyes shine with hunger. 'Thanks for the meal,' is all you hear after that.";
				ItemLoss glowing mushroom by 1;
				say "     [bold type]Do you accept your fate?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Let the huge beast eat you without trying to fight.";
				say "     ([link]N[as]n[end link]) - It isn't supposed to end like this. You will fight to the end.";
				if Player consents:
					say "     Not willing to fight back, you accept your fate. Even if you wanted to escape, the beast's grip is too strong on your body. He is pushing your muscles, limbs, and organs to a state of almost being crushed, making the world turn black for a moment. Your mouth is agape as you teeter at the brink of losing consciousness for good. But that smile, even wider than before and showing full well those pearly-white teeth, snags your mind back together with the horror of what is about to come. The shepherd opens his mouth fully, showing you the void that is about to be your future. You can't escape, and you can't even think about what will happen in a moment. There is only terror in your mind, knowing all too well that this is the end.";
					say "     Before entering his mouth, the beast holds you with its long tongue. The slick texture of the monster's saliva and tongue are a weird yet strangely pleasurable sensation, and you can't help but feel some arousal despite the situation. [if Player is male]It makes your member hard against that texture, making you leak pre[else if Player is female]Your pussy gets wet as it is rubbed against that texture[end if]. Your oxygen-deprived mind can't tell the difference between the liquid created by your own arousal or the beast's saliva that lubricate your descent. Your arousal isn't unnoticed by your captor. The giant dog takes this opportunity to play with your body inside his mouth, licking you and throwing you around inside his mouth.";
					WaitLineBreak;
					say "     You are always being pressed against some place of his mouth, sliding with the help of his saliva. Whenever you open your mouth to scream or get air, you swallow more of his saliva, making it even harder to breathe. The deprivation of oxygen makes you lightheaded, and your arousal mixed with the dog's saliva has an almost euphoric taste. Bracing yourself, you cum hard, [if Player is male]spilling your seed, [end if]which the monster happily takes. Starting to feel some tremors, as though the beast is laughing at your own weakness, he finally moves to swallow you.";
					say "     The horny dog's tongue pushes you to the back of his muzzle, brushing you against his teeth, before forcing you into a dark descent. You are crushed by the walls of flesh that surrounds you. It was difficult to breathe inside his mouth, but now, it's pretty much impossible. You lungs burn with the lack of oxygen. Your head spins, and your vision is turning darker and darker by the moment. Your muscles scream in pain with the pressure, and your bones almost snap. The travel is almost hellish in nature until you finally drop into the beast's stomach. Now, the hell is fully realized.";
					say "     The foul odors of the monster's last meal assault your nose, and you almost puke. Holding yourself, you take a look at your surroundings. It is almost pitch-black, but somehow, you can see some of what is happening in here. You somehow landed on a safe place, everywhere else being filled with acid. There are some bones and even flesh still intact floating in the caustic sea. But your luck is only finite. With rising dread, you hear the gurgle noises of the digestion starting. Your safe place shifts, making you lose your footing and land in the acid. That is how you die. As someone's meal.";
					WaitLineBreak;
					now battleground is "void";
					the Player was ended by "Shrinking Shrooms eaten alive";
					trigger ending "Player has died";
					end the story saying "You were eaten alive!";
				else:
					say "     You try your hardest to escape his grip, but the beast was already stronger than you with your normal size. Now that you are miniaturized, it doesn't look like there is much you can do. As he brings you near his teeth, you can only see the void of his throat, waiting to swallow you down. It convulses and closes from time to time, as if expecting a nice meal, which in this case, is you. The monster's throat looks almost sexual. With all of the saliva trickling and running inside, it seems like a huge sex organ that is soon to be your passage. The white teeth secure you in place, preventing any escape. Then you are tossed around inside of his mouth as he tries to chew your body. As he catches your leg and arm between his teeth, you feel your bones almost breaking. Despite your skin managing to miraculously keep together, you scream with agony. It wasn't supposed to end like this.";
					if a random chance of 1 in 4 succeeds:
						say "     You feel movement as his tongue starts to push you down his throat. Pressing you against his palate, there is little room to breathe with all of his saliva surrounding you, making you almost drown inside the beast. Your consciousness keeps fading in and out, but you keep yourself awake for the whole experience. The feeling of your erogenous zones slipping against the German shepherd's flesh is erotic, and this experience would almost be euphoric if there wasn't a dark abyss waiting for you. You keep sliding around in his throat, swimming between phases of pain and pleasure or even both. His muscles crush and press against your whole body, constantly pushing you down and down towards your destination. The journey feels like an eternity until you are finally tossed into his stomach.";
						say "     The foul odor of his last meal still lingers in the air, if you can even call it air. You hold your nose in a vain chance to stop the smell, but it only opens your mouth to the taste of the air around you. There is a little more room in the beast's stomach, although not much, and you are still held in place. Left without much to do but wait, your own thoughts betray you. The grim reality is that there is only one way out now, and you won't be alive at the end. He moves slightly, and you feel the tremor in his stomach. The gurgle noises are a sign of what is to come, a clamor for food that only those who hunt in this land have, or to someone like in your situation, a herald to their final moments. You take a look around and see the surrounding liquid coming to you like a death tide. You silently weep, once again mourning how it wasn't supposed to end like this...'";
						WaitLineBreak;
						now battleground is "void";
						the Player was ended by "Shrinking Shrooms eaten alive";
						trigger ending "Player has died";
						end the story saying "You were eaten alive!";
					else:
						say "     You can see his uvula while he is trying to swallow you, giving you a final idea to escape. You hold on to the dog's uvula, making him choke and gag. Soon enough, you feel yourself being pushed up and out his mouth. You run as much as you can while the beast is dizzy with your method of escape. You eventually lose sight of the monster, and it isn't much longer before you return to your normal size. Cleaning yourself as much as you can, you guess that you still probably will need a bath.";
						now Resolution of Hungry Dog is 1; [was shrunk & eaten but escaped the hungry dog]
			else:
				say "     Coming from inside the dark alley, the German shepherd finally steps into the light, giving you a better view. He is monstrously large, quite a bit bigger than the ones you found to this day. He has some darker stains in his fur from what appear to be dried blood. A complete lack of clothing gives him an almost fully feral feel. Between the dog's legs, there is a huge sheath, and from the looks of it, an even bigger knotted penis. Even without it leaving the sheath, you can see it pressing against the skin, making it bulge, especially where the knot should be. Right below there are two orbs the size of tennis balls that appear to be full of the monster's seed.";
				say "     The bloodthirsty dog jumps in your direction, putting his arms to the ground and running like a feral monster with a dark smile. He rams into you, making you lose your breath from the strength of the impact. You are knocked over onto the floor, falling on your butt, making you clench your teeth with the impact with the deserted road. You are left without breath as the hunter stands tall beside you, never letting you out of his sight. Licking his lips, he holds you by the neck and says, 'Looks like I found my next meal.'";
				say "     [bold type]Do you let the beast do what he wants with you?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Let the beast do what he wants with you.";
				say "     ([link]N[as]n[end link]) - You can't possibly win against him. Your only hope is to flee.";
				if Player consents:
					now battleground is "void";
					say "     Laughing at you now, his grip tightens. As you vainly try to gasp for air, you flail around as your mind melts into a stupor. Your lungs start to burn and wheeze, and drool drips from your gaping mouth, showing the state of your consciousness. When you are close to fainting, the shepherd tosses you inside the alley, making you crash against the wall with bone-shattering force. This brings your mind back to its alerted state, but it almost makes you throw up with the whiplash. Trying to get up on your feet, you're hit again with amazing force. Without enough time to react to his animalistic movements, you are stripped of your clothes, showing your [BodyType of Player] body in all of its almost broken glory.";
					say "     The dog is quick with his movements, holding your shoulders in place so that you can have a better view of what is about to come. Opening his mouth, with almost sexual joy, you see it. Dripping with his saliva, the mouth almost looked like a wet pussy, with a nice, pink shade and a dark abyss at the end. If it wasn't for the pearly-white teeth adorning it, reminding you of what is really about to happen with you, you would almost find the sight strangely erotic. You are pulled inside, feeling the slickness of his touch.";
					say "     Your captor finally bites down, holding you against the tight and lubed place. Twitching, tugging, and pulling you deeper towards the belly of the beast, the pain of being penetrated by his teeth destroy any sense of pleasure in this act. You can't see much, except for some snippets of light that shines into his mouth. Your [FaceSpeciesName of Player in lower case] head is chewed while his tongue holds you in place. The slippery sensation keeps pulling you deeper inside the beast jaws, as it keeps squeezing you with his tightness. The pressure keeps building until your neck snaps, giving you a quick death. But you already knew what was going to happen after that.";
					WaitLineBreak;
					now battleground is "Void";
					the Player was ended by "Shrinking Shrooms eaten alive";
					trigger ending "Player has died";
					end the story saying "You were eaten alive!";
				else:
					say "     Thrashing around in his grip, you end up punching his muzzle with enough force to daze the dog, giving you an opening to escape with your life intact.";
					now Resolution of Hungry Dog is 2; [was eaten but escaped the hungry dog]
		else:
			say "     You quickly get back on your feet and run away from the hungry dog.";
	else:
		say "     While exploring the nanite-infested city you hear some noises coming from an alley beside you. You turn around, trying your best to peek stealthily into the alley. Inside, you find what appears to be a giant, anthro German shepherd gorging himself with... some kind of food. By his side, you see a pile of clothes tossed carelessly aside. Most of them look like ordinary clothes, but there are some camo pattern uniforms in the mix, and they are all stained with what appears to be blood. This is weird - none of the German shepherds you found hunting in the city were wearing anything. Why would this one have clothes, or even take them off while he eats?";
		say "     Oh god! Your legs tremble with the sudden realization, and you almost lose your breath. It can't be! He is eating someone!? Almost as if sniffing your fear the beast puts his muzzle to the air, starting to turn around, but you run as fast as you can from the scene.";
		LineBreak;
		say "     (Further options for this scene are locked for players who did not select 'more vore'. You can change your settings with the help of Trixie in the library, if you really want to see the rest.)";
		now Resolution of Hungry Dog is 3; [vore-disabled resolution]
		now Hungry Dog is resolved;

Table of GameEventIDs (continued)
Object	Name
Little Trouble	"Little trouble"
Little Trouble	"Little Trouble"

Little Trouble is a situation.
ResolveFunction of Little Trouble is "[ResolveEvent Little Trouble]".
Sarea of Little Trouble is "Outside".
When play begins:
	add Little trouble to BadSpots of FurryList;
	add Little trouble to BadSpots of MaleList;
	add Little trouble to BadSpots of FemaleList;
	add Little trouble to badspots of VoreList;

to say ResolveEvent Little Trouble:
	say "     While exploring the city and wandering through an alley, you find a small hole at the foot of one of the two walls flanking you. The building it belongs to looks oriental in decoration. There are some banners with Chinese letters hanging on poles from the upper stories, but they're hard to read since the colors are pretty faded. The rest of the wall you're standing in front of is painted with some red and gold design across it. Upon hearing some noises from inside the building, you decide to crouch down and take a peek. You can't see much of what is going on inside, but clearly, something is making rhythmic banging noises in there.";
	WaitLineBreak;
	say "What do you want to do?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Try to find another way in";
	now sortorder entry is 1;
	now description entry is "Go around the block and see if you can find any way inside";
	[]
	if glowing mushroom is owned:
		choose a blank row in table of fucking options;
		now title entry is "Eat one of the mushrooms and enter through the hole";
		now sortorder entry is 2;
		now description entry is "Use the shrooms to shrink yourself until you can fit into the hole in front of you";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Give up on the idea and go back[as]0[end link][line break]";
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
				if (nam is "Try to find another way in"):
					say "[LittleExplorer]";
				if (nam is "Eat one of the mushrooms and enter through the hole"):
					say "[LittleShroom]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Giving up on the idea of exploring this weird place, you go on your merry way";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say LittleExplorer:
	say "     Going around the block, you keep looking for any opening or way you could use to enter the place. Reaching the front of the building, you find out that it doesn't actually have a door anymore - or most of the front wall. A pickup truck is sticking halfway through the wall, dented by the bricks that showered down upon it. Seems like the driver lost control of the vehicle... possibly because he was turning, or another passenger was. A glance through the passenger side window reveals a dried, cummy mess and ripped clothing all over the seats inside. There was barely any blood, thankfully, so it seems like both of the occupants walked away from the crash - in whatever form they may have been by then.";
	say "     The wrecked car blocks most of the hole it made, but there is still an opening large enough to duck into if you crouch. You do so, careful not to dislodge any more bricks or hit your head. The place is dark inside, but you can make out some oriental décor, mostly in shades of red. There are a lot of chairs and tables in here, all tossed around from the impact that destroyed the place. This was probably a Chinese restaurant, and a nice one at that. There is a statue of a golden dragon on the side of a half-destroyed pillar and quite a bit of broken glass scattered on the floor hints at a large aquarium next to the entrance.";
	WaitLineBreak;
	say "     Looking around a bit more, you finally discover what that noise was you heard earlier. Right at the end of a hallway, there is a collapsed wall opening into what must have been a motel room next door. It looks more pink than red, and there is quite a scene unfolding on the bed inside. A male husky is pounding away at a smaller husky like there is no tomorrow, his toned muscles rippling every time he pounds into the little bitch. Sometimes, she almost is pushed off of the bed by the sheer power in his thrusts, but the dominant dog quickly grabs her anyway he can before that happens, even gripping her neck and momentarily choking her.";
	say "     No matter how harshly she is treated, the horny girl under the rutting husky enjoys the treatment, her tongue hanging out of her mouth as she pants loudly. She is drooling at being fucked like this too, making her fur glisten wetly and creating spots on the mattress. The anthro canine's small body shivers and trembles with every pounce, and as much as her hips want to keep that nice, red rod inside of her, the male has other ideas as he gives in to his instincts. Even his knot is not enough to anchor the little husky to his crotch, and you can see her vagina bulging and gaping every time he pulls it out of her, his seed being splattered all over her belly, crotch, and legs.";
	WaitLineBreak;
	say "     That doesn't mean his erection is going down though - looks like one orgasm isn't enough to satisfy this beast. He lets go of his partner, but not actually because he wants to let her rest. Instead, the dominant dog turns towards you, somehow having become aware of your presence. His horny bedmate reaches out for his prick to guide him back into her, but the anthro dog pushes her aside, much to her dismay. 'Come, little pig,' he scoffs at you as he stands up. 'Let's play!'";
	wait for any key;
	challenge "Husky Alpha";
	if fightoutcome >= 20 and fightoutcome <= 29:[lost]
		say "     Now satisfied, the beast throws you out of the room and into the restaurant. You rest for a bit on the cold, uneven ground as you strength slowly comes back to your being. When you finally get on your feet again, you limp to the entrance and go back to the bunker, hoping that the next adventure will be better.";
		now Resolution of Little Trouble is 2; [fought, lost]
	else if fightoutcome >= 30:[fled]
		say "     You run back the way you came, accidentally slamming into one of the pillars on your way out. The beast shouts profanities during your retreat, but you quickly lose him, leaving the place for good as you run directly to the bunker.";
		now Resolution of Little Trouble is 3; [fought, fled]
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     Sending the husky running with a kick in the pants, you laugh as he flees with his tail tucked low. Still, it might not be a good idea to go back into the restaurant... There is at least one more member of his pack in there and who knows how many others. Leaving this place through the front door, you can finally go back to the bunker.";
		now Resolution of Little Trouble is 1; [fought, won]
	move player to bunker;
	now little trouble is resolved;

to say LittleShroom:
	say "     Eating one of your mushrooms, you quickly diminish in size and soon have to crawl out of the pile of clothes and gear you had on you. Looks like you have to enter naked - better be quick so that the chance of someone coming along and finding your stuff is minimal. Making your way to the hole, you can more easily look inside from your new viewpoint. The place looks like a run down kitchen from what you see. There are some canned food on the other side of the room that you should be able to roll over to the hole and add to your possessions.";
	ItemLoss glowing mushroom by 1;
	if ublevel < 3: [non-ub enthusiast players]
		say "     In one corner of the kitchen lies a cum-stained mattress, with a husky bitch sleeping on it, sitting slumped back against the wall. She has her legs spread enough that you can see her pussy - its nether lips slightly spread and looking quite inviting. Yet even if you wanted to, right now, you're just not in any position or size category to do anything with her. ";
	else: [more ub selected]
		say "     In one corner of the kitchen lies a cum-stained mattress, with a husky bitch sleeping on it, sitting slumped back against the wall. She has her legs spread enough that you can see her pussy - its nether lips slightly spread and looking quite inviting. That looks like it might be a fun place to go and play around a bit if you feel like that. ";
	if vorelevel < 3:
		say "Also, there is still that pounding noise you heard earlier, coming from the next room. You could try to find who is doing that, but then again, you probably shouldn't. Now that you're only about four inches high, you feel pretty vulnerable. Who knows what might happen if you walked in upon someone regular-sized who was busy fucking.";
	else: [more vore selected]
		say "Also, there is still that pounding noise you heard earlier, coming from the next room. You could try to find who is doing that, but then again, it might not be such a good idea to walk up to a being very much larger than yourself. You might end up a snack...";
	WaitLineBreak;
	say "What now?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Grab the supplies and run";
	now sortorder entry is 1;
	now description entry is "Try to grab as many cans as you can. You need food right now.";
	[]
	if ublevel > 2: [more unbirthing selected]
		choose a blank row in table of fucking options;
		now title entry is "Have fun with the sleeping husky";
		now sortorder entry is 2;
		now description entry is "Go over to the sleeping bitch and see what you can do with her.";
	[]
	if vorelevel > 2: [more vore selected]
		choose a blank row in table of fucking options;
		now title entry is "Go find where the sound is coming from";
		now sortorder entry is 3;
		now description entry is "Keep going until you find where the noise is coming from.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Just go back and give up on the idea[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Grab the supplies and run"):
					say "[ChineseSupplies]";
				if (nam is "Have fun with the sleeping husky"):
					say "[ChineseUB]";
				if (nam is "Go find where the sound is coming from"):
					say "[ChineseTrouble]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You give up and go back the way you came. It's not worth it";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ChineseSupplies:
	say "     You dash over to the other side of the kitchen, not really caring about the décor around you while still doing your best to not wake up the sleeping dog. Soon, you get to the pile of food cans - a small mountain from your viewpoint - next to what appears to be a pantry that was forced open and ransacked. The outbreak of the nanite apocalypse sure left this building and its interior in a shambles. Inside the pantry, there are various pieces of food tossed to the floor, mostly vegetables and some bread, all of it spoiled and stale. Whoever did this was in a hurry or just didn't care about anything not to their taste, a shortsighted view, given the food shortage for survivors these days.";
	say "     Dragging two of the cans that are free of dents and damage out of the pile, you turn them on their side, careful to not let them hit the floor and make noise, and then roll them towards the hole you used as your entrance. This voyage would be done in a heartbeat at your normal size, but at this miniature scale, it almost seems like a pilgrimage. Cracks in the floor and pieces of the ceiling that fell down and litter the floor create hazards which you have to be mindful of. But as cautious as you were, the can on the right bounces on a rock in your way at some point, creating a clatter of noise.";
	WaitLineBreak;
	say "     Wary about the sleeping husky on her mattress, you are quick to run and find a cupboard to hide behind. From there, you lock your gaze on the husky at the other end of the room. The dog squirms a little and opens her eyes just a bit, yawning. Her large mouth is big enough to swallow you up in one gulp, and it shows an impressive array of sharp, intimidating teeth, as well as a very long tongue curling down a bit at the end. Her gaze roams over the room and seeing nothing out of the ordinary due to the already-present mess, she soon gives in to her tiredness again. Stretching out on the mattress this time, which puts her colossal boobies in a very nice display for your miniature self, she goes back to sleep.";
	say "     Breathing a sigh of relief, you go back to your cans, rolling them on towards the exit and getting there without any further trouble. After pushing them out of the hole to add to your pile of gear, you wait a while until you finally feel yourself growing. Quickly getting dressed again, you put the two cans into your backpack and get ready for more adventures out in the city.";
	ItemGain food by 2;
	now Resolution of Little Trouble is 4; [shrunk, stole supplies]

to say ChineseUB:
	say "     Those lips are calling you, and it's not her mouth. You carefully walk up to the sleeping husky girl, making sure not to make noise so she won't wake until you finish your business with her. Soon standing between her strong digitigrade legs with their gray fur, you can't help but think that they look especially beautiful from this viewpoint and size. Such a strong woman makes you even hornier about what you are gonna do next. Impatiently dashing forward into the narrow canyon between her spread legs, you finally reach your destination a moment later.";
	say "     Her snatch is pink and pulses with the rhythm of her heart, which is actually quite fast right now, and her clit is engorged, shiny with the juices showing her arousal. Looks like the horny bitch has dirty dreams... So really, you're doing her a favor. What kind of person would leave her like that, wound up without release? Not you, that's for sure. Touching her pussy, your hand slips against the wetness of her folds, and your elbow slides into her before you can do anything about it. The furry girl twitches at the sudden contact and push you into her body, giving you one hell of a jump scare... but it doesn't seem to have been enough to wake her up. Calming your heart after the accident, you go back to touching her more carefully and gently.";
	WaitLineBreak;
	say "     Slowly pulling her nether lips apart, you can see two holes that you could penetrate if you wanted to right now. ";
	if wslevel > 2: [more WS selected]
		say "Grinning from ear to ear, you touch her urethra, just prodding to see how the dame reacts to the stimuli. She squirms for a bit, but it doesn't look like this will wake her up either - so it's time to have some fun. Pushing your arm inside her urethra, you gently prod and even lightly pinch her insides, making the anthro dog squirm and tremble, giving you a hint on what is to come.";
		say "     You feel the liquid starting to push your arm out of the hole, the golden flow almost scalding hot at your size and making your arm burn for a bit before you are flung out of her pee hole with a spurt of the liquid. Soon, your whole body is drenched in her urine, the acrid taste spilling in your mouth and the pungent smell filling your lungs. The golden rain goes on for a bit, showering your prone form in her piss. When it finally stops and you start to wipe the liquid from your eyes, you realize that the bitch is not sleeping anymore. She stares down at you in the pool of her urine, then reaches out to snatch you up in her paw.";
	else: [going for the pussy]
		say "You go right to her snatch, pushing your whole arm inside of her once more, this time on purpose. If you were your normal size, this fisting would be hard on her, but at this scale, she barely reacts to it a second time, even as you wiggle your arm around a bit inside her. Defiant about not being able to affect her that much after all, you step up to the challenge and start to climb up, wanting to enter her pussy with your whole naked body. But it isn't actually that easy to do. Surrounded by her slick, fleshy folds, you barely have anything to hold onto to pull yourself in. After a futile attempt or two, you eventually end up taking a running leap to jump into her opening head first, then work your way deeper, wiggling against her inner walls.";
		say "     This is actually quite a bit of fun, slippery warmth rubbing against your naked body from all sides. Soon, your front half is in what feels like a little bit of a larger space. Blinking a few times, you realize that you can actually see a little bit in here too. Do those shrooms have a side effect of enabling you to see in the dark? No matter what or how, you are able to make out the enclosed space of her vagina around you with the inner ring of her cervix further up and back. That'll be a difficult, but definitely fun, climb. While you are already mapping out the best route to take, your legs, which are still sticking out between the husky's folds, are suddenly grasped and pulled upon. In one quick pull, you're out of the comfy enclosure once more and in the anthro canine's paw.";
	WaitLineBreak;
	say "     Locked in her paw now and with the size and strength of a mouse, you probably won't escape her easily. 'So cute,' your husky captor says as she keeps looking at you. 'Aren't you a pleasant surprise to find?' She giggles as she touches, prods, and squeezes you in every way possible. Then eventually, a meaningful smile spreads over her muzzle. 'You should finish what you started.' Opening her legs again and spreading her feminine folds apart with two fingers, she pushes you against them with some urgency. 'Go on. Make me cum, or else you will be my snack!'";
	say "     Looks like you will be used as a dildo, and if you don't do a proper job, you will be eaten. The sweet smell coming from her lust fills your lungs easily, given your diminutive size. Without even one second more to think, you are pushed in between her soft folds, your body brushing against the engorged flesh lubed with her arousal. Once more penetrating the anthro girl, just not on your own accord this time, you are pushed and pulled in and out, rubbing up against her inner walls. Your mouth and lungs are filled with her sweet scent every time you try to breathe. After a few moments, it feels like the whole world is just her and the scent of her heat.";
	WaitLineBreak;
	say "     The bitch trembles and squirms as you are turned into her personal dildo. And not to overlook the effects on your own lust, [if Player is male]your hard member slides pleasantly over her supple flesh[else if Player is female]your clit rubs inside the bitch, making you wet yourself and mixing both of your juices[else]your excitement builds up, but without a sex organ to release, you are stuck in a cycle of perpetual denying and teasing[end if]. In her eagerness to get off, the bitch actually pushes you into herself all the way, then continues to shove you further up until only her fingertips touch your feet.";
	say "     She has pushed you right to the spot where you had planned to go earlier. Well, not quite, as your face is squished somewhat uncomfortably against the ring of her cervix, but the position definitely has its advantages. It isn't hard to snake your absolutely soaked and slippery arm in at the center of the large ring of muscle. The second arm is a bit harder, but still doable, allowing you to really get a grip and pull yourself up. Your heart races as you get a first glimpse of the inside of her womb, then stick your head through the opening, wiggling and pulling to slide in. Such efforts don't go unnoticed - the husky bitch's insides tremble and leak even more fluids in reaction.";
	WaitLineBreak;
	say "     With a final push, your shoulders penetrate her cervix, allowing the rest of your body into the snug cave of her womb as her muscles quake in orgasm, squishing you with its flexible walls. Bouncing and sliding around in her innermost sanctuary, this also pushes you to, and past, the limit of your endurance, [if Player is male]making your cock shoot heavy blasts of seed right into her womb and over yourself[else if Player is female]your love juices slicking the inside of her womb[else]trembling and twitching in orgasm[end if]. Afterwards, you stay in the fetal position for a time, just resting after your breathtaking climax. After all, this is such a nice place. Warm and welcoming, you could live here forever.";
	infect "Husky Bitch";
	infect "Husky Bitch";
	infect "Husky Bitch";
	say "     But despite what you may have wanted, at one point, the walls suddenly tremble and contract in a concerted way, sending you on a slippery slide towards her cervix, which opens just far enough to allow your exceptionally well-lubed body to slip through. Following the incline of her pussy, you arrive at the husky's folds a few heartbeats later and find yourself 'birthed', flopping wetly onto the mattress in the cruel outside world. Panting hard, you breathe in the fresh air of the room, and the all-encompassing aroma of her heat starts to leave you, not that you actually want that in this moment as you stagger to your feet and try to plunge into her depths once more.";
	say "     But no, the satisfied husky blocks your path with her hand, nudging you away with a firm push. 'That was fun, but you gotta let mommy rest,' she sighs out in a somewhat sleepy tone, sinking back to lean against the wall once more. A moment later, you come back to your senses more or less and start to dash towards the entrance hole to get back to your normal life after this extraordinary experience. With one last glance over your shoulder, you see the husky waving her 'child' goodbye, then doze off again. Breathing a sigh of relief as you step outside of the building and see your pile of gear still undisturbed, you wait a while until you finally feel yourself growing. Quickly getting dressed again, you get ready for more adventures out in the city.";
	now Resolution of Little Trouble is 5; [shrunk, UB'd]

to say ChineseTrouble:
	say "     Looking around, you soon discover the source of that noise when you slip through the five inch gap between the leaned-to door and its frame. Now, you're in the main room of what must have been some sort of restaurant before, filled with lots of tables and chairs. The wall that separated this place from the house next door has partially collapsed, creating a crude connection between the buildings. The other room looks like it belongs to a love hotel, with a pinkish pattern on the furniture and wallpaper. Above a round bed in the middle of the room, an intact mirror is attached to the ceiling, completing the impression of having stumbled into a porn movie. The scene on top of that bed right now fits very well too.";
	say "     A male husky is pounding away at a smaller husky bitch like there is no tomorrow, his toned muscles rippling every time he pounds into the little bitch. Sometimes, she almost is pushed off of the bed by the sheer power in his thrusts, but the dominant dog quickly grabs her anyway he can before that happens, even gripping her neck and momentarily choking her. No matter how harshly she is treated, the horny girl under the rutting husky enjoys the treatment, her tongue hanging out of her mouth as she pants loudly. She is drooling at being fucked like this too, making her fur glisten wetly and creating spots on the mattress.";
	WaitLineBreak;
	say "     The anthro canine's small body shivers and trembles with every pounce, and as much as her hips want to keep that nice, red rod inside of her, the male has other ideas as he gives in to his instincts. Even his knot is not enough to anchor the little husky to his crotch, and you can see her vagina bulging and gaping every time he pulls it out of her, his seed being splattered all over her belly, crotch, and legs. That doesn't mean his erection is going down though - looks like one orgasm isn't enough to satisfy this beast. He lets go of his partner, but not actually because he wants to let her rest. Instead, the dominant dog turns towards you, somehow having become aware of your presence.";
	say "     His horny bed-mate reaches out for his prick to guide him back into her, but the anthro dog pushes her aside, much to her dismay. 'Come, little pig,' he scoffs at you as he stands up. 'Let's play!' Both of them jump from the bed and start coming for you. Without proper time to react, your best idea is to hide under a table, but sniffing the air with their excellent noses, the huskies are quick in finding and capturing you. Being snatched up by the male, you are turned and twisted in his grasp as the anthro dog examines your naked form from all sides. By the time he's finally done, you end up feeling more than a little dizzy.";
	WaitLineBreak;
	say "     A worrying smile and cruel expression on his face, the husky hands you over to his bitch with the words, 'Hang on to that for a moment, slut!' Then he leaves the room, kicking the door shut behind him. Now at the mercy of the female husky's whims, you are touched and prodded once more, if a little more gently than with her top dog. Soon, the crafty beast comes back holding a pair of shoelaces. Looks like he has some naughty ideas about how to deal with their miniature intruder. 'Hold [if Player is female]her[else]him[end if] out for me,' he growls dominantly at his bitch. It doesn't take long before your hands and feet have been tied together, tighter than you could ever hope to wind your way out of.";
	say "     Your captor then grabs you and proceeds to push his red spear between your legs, sliding you down over its length like an improvised fleshlight. Your [if Player is male]penis[else if Player is female]vagina[else]bare crotch[end if] brushes against the pulsating red prick, eliciting helpless moans from you, your stomach now slippery with his pre. Pushing your whole body towards his crotch, the husky's dick soon presses against your chest, [if Breast Size of Player > 2]giving him a really small boob-job[else]rubbing your nipples and making them hard[end if].";
	WaitLineBreak;
	say "     Finally, his giant penis reaches your arms, as you are forced to hug it. You are finally up against his crotch all the way now, your[if Player is male] penis and[else if Player is female] vagina and[end if] ass pressing against his knot. Face pressed directly against his shaft, the husky's strong, manly scent fills your lungs. You can't help but feel intoxicated by the aroma, despite the dire situation you're in right now. Then the horny dog starts using you to masturbate. Pulling and pushing you along, his cock slides hotly against your body, pulsating against your skin with his heartbeat.";
	say "     Your whole body soon is properly lubed with his pre, the degradation of being used as a sex toy increasing second by second. Your mind doesn't even recognize the danger at first as the commanding dog orders his girl to suck his cock until her breath brushes hotly against you. Wait a minute... Is she going to blow him with you still tied to his cock? Now with your mind in an alerted state, you try once more to wiggle off of his cock, but that only helps as far as taking your attention from the open mouth starting to envelop your head.";
	WaitLineBreak;
	say "     The horny bitch doesn't even question the guy about something like that. She must be totally submissive and ready to follow anything he commands. Her teeth brush against your hair, her tongue licking the back of your head and pressing it against the cock you are tied to against your will. Now, you're stuck between a tongue and a hard dick, as the bitch keeps sucking her alpha, and by extension, you. Most of the time you are safe enough, with her only going halfway down his cock, but soon, the alpha husky grabs the back of her head and shoves his whole dick inside of her mouth, forcing her to deep-throat him and your body.";
	say "     Your head breaches the entrance of her throat, giving you a terrifying view of the depth of her gullet - one place you definitely don't want to see the other end of. The horny bastard keeps making short thrusts, forcing you to hold onto his cock with everything you got as to not slide off and be swallowed. The female husky's throat convulses and spasms as she gags in reaction to the sudden invasion, giving your experience an extra layer of claustrophobic fear as the walls keep moving and brushing against you. Then finally, the bitch pulls her muzzle off of his prick to gasp for air, allowing you a tiny moment of rest.";
	WaitLineBreak;
	say "     The male husky is angry at having his pleasure interrupted, no matter the cause, and he growls openly at his submissive partner, harshly grabbing her by the muzzle. 'You do what I tell you, when I tell you, slut! And that includes breathing. Now, get back to work!' Wrenching her head back by the hair, the guy shoves his erection, and you, back into her mouth with a forceful push. Uh-oh, this can't be good. You quickly hold on as hard as you can. Now skull-fucking the poor girl, his movements keep getting faster and faster, increasing the strain on your body and the bindings holding you tight. You have to hold on for dear life if you don't want a one way trip down into her digestive system.";
	if a random chance of 1 in 4 succeeds:
		say "     You hold the hard shaft with all of your might as it starts to throb and pulse, spurting out thick streams of cum from so close to your own head. The sucking husky gags again, and for a moment, you feel like you're swimming in a sea of cum and saliva before the girl finally swallows it all down. You're about to sigh in relief that you survived the experience when the male pulls his dick out of her mouth, then peels you off with a grin. 'You make a great sex toy,' the menacing male says with a laugh. 'But how good are you as a post-coital snack?' Holding you by your loosely tied-together wrists, he opens his mouth wide and drops you into it.";
		say "     His muscles are strong and merciless, moving you along quickly down the slippery path into his gullet. The descent hurts as you're being forced along by a rhythmic contraction, your body being squished and tumbled head over heels. There is nothing you can do except to try and protect yourself at least a little bit by taking on the fetal position. Your body is still wet with the voracious dog's seed, and with the new sensation of his own saliva, you soon drop into the huge beast's stomach. Oh fuck, there must be some way out of this?!";
		LineBreak;
		say "How do you want to escape?";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Kick him in the stomach (from the inside)";
		now sortorder entry is 1;
		now description entry is "That might just give him indigestion, but at least you will go down fighting";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Try to climb out";
		now sortorder entry is 2;
		now description entry is "Go back up the same hole you came though";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Dive down and seek the other exit";
		now sortorder entry is 3;
		now description entry is "Hopefully, you won't be digested if you're quick";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Wait for your timely demise[as]0[end link][line break]";
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
					if (nam is "Kick him in the stomach (from the inside)"):
						say "[AlphaKick]";
					if (nam is "Try to climb out"):
						say "[AlphaClimb]";
					if (nam is "Dive down and seek the other exit"):
						say "[AlphaDive]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     Giving up on the idea of leaving this, you wait for your death, which comes in due time.";
				now battleground is "void";
				the Player was ended by "Shrinking Shrooms eaten alive";
				trigger ending "Player has died";
				end the story saying "You were eaten alive!";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else:
		say "     Without any strength left to hold on any longer, you slide off of his cock as the male husky pulls back suddenly. With nothing at all to hold onto, as well as being tied up, the next thing you see is her gullet as you slide down at a breakneck speed. Meanwhile, the alpha feels the difference and takes his dick from his slut's mouth. You can hear his far-off growl of, 'Hey, where is that little fucker?' When he realizes that his partner swallowed you, he huffs. 'Shame, that felt pretty nice.'";
		say "     Going down her gullet with a flood of cum and saliva, her muscles keep contracting in a wave, always pushing you further down. Given the circumstances, the voyage isn't actually that unpleasant, which might have something to do with all of the slippery fluids smoothing out your ride. It almost feels pleasurable to have your naked body slide over her warm, soft flesh, like a giant water slide. But that doesn't last forever as you finally fall into her stomach with all the jizz. The aroma of the place rapidly puts your head back where it should be - thinking about escape. If you don't, digestion awaits you. Hastily, you look around for options on how you can still save yourself.";
		LineBreak;
		say "How will you escape this predicament?";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Try to climb out";
		now sortorder entry is 1;
		now description entry is "You entered through her mouth. Might be able to get out using the same hole";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Dive down and seek the other exit";
		now sortorder entry is 2;
		now description entry is "Hopefully, you won't be digested if you're quick";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - It's hopeless anyway, just wait for your end.[as]0[end link][line break]";
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
					if (nam is "Try to climb out"):
						say "[BitchClimb]";
					if (nam is "Dive down and seek the other exit"):
						say "[BitchDive]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     Giving up on any hope of survival, you sit down, breathing the polluted air and being squished by her muscles from the inside of her stomach. The end will take just a few more moments...";
				now battleground is "void";
				the Player was ended by "Shrinking Shrooms eaten alive";
				trigger ending "Player has died";
				end the story saying "You were eaten alive!";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say AlphaKick:
	if a random chance of 1 in 4 succeeds:
		say "     With a huge windup, you kick him with all the strength you have left, making your surroundings shake a bit. But before you can follow up, a more powerful quake goes through the husky's insides, with the wall of his stomach bulging out suddenly to throw you to the other side of the chamber and land in a puddle of stomach acid. Flinching in pain, you realize that he must have punched his own stomach. You smile at the thought and drag yourself to your feet again, then pummel his insides some more. This won't save you, but at least the bastard is gonna have indigestion.";
		WaitLineBreak;
		now battleground is "void";
		the Player was ended by "Shrinking Shrooms eaten alive";
		trigger ending "Player has died";
		end the story saying "You were eaten alive!";
	else:
		say "     With a huge windup, you kick him with all the strength you have left, making your surroundings shake a bit, then a lot! Suddenly, everything shifts on its side, and you are thrown about, then violently ejected back the way you came in. After another voyage through the gullet of the husky, you fall onto the ground in a wash of vomit. Looks like your well-aimed hit made him throw up! With the predator on all fours, retching violently, you have just enough time to get your own bearings and run into the other room.";
		say "     It doesn't take long before he comes hunting for you in a wild rage, but the chaos in the ransacked kitchen and his impatience allows you to hide in between the rubble, trash, and cracks in the floor, eventually making it safely to the hole you entered the building through. With the beastly husky still shouting angrily to his bitches to find his escaped snack, you lean against the outer wall in exhaustion and wait for the shrinking mushroom to wear off. Best not to remain here for too much longer, as he might find the hole and come around the building, so you quickly snatch up your stuff and run away naked, only stopping to get dressed when you're several blocks away.";
		now Resolution of Little Trouble is 6; [shrunk, eaten by alpha, kicked the way out]
		now little trouble is resolved;

to say AlphaClimb:
	if a random chance of 1 in 4 succeeds:
		say "     Well, it's worth a try at least. You try your best to hang onto something, anything. The dog's stomach starts compressing, heralding the beginning of digestion. You scream in desperation, and you finally manage to hold on to something and pull yourself a bit further up. With newfound determination after that first success, you work at pulling yourself up, just in time before the rising level of acid burns the soles of your feet. It is hard work, but you are getting out of here!";
		say "     The walls of his gullet are slick and often twitch, several times feeling as if he is trying to gulp you down again. But you persevere, holding onto anything you can get a grip on. Finally, you're back in his muzzle and run down the squishy length of his tongue to jump out through his parted teeth, only to land in the husky's raised paw. 'So, my prey wants to be properly chewed before being my meal,' he says and gives a sadistic laugh. 'Don't worry, now you will be a proper meal.' You are tossed back in his mouth, but this time, you are chewed down before being swallowed.";
		WaitLineBreak;
		now battleground is "void";
		the Player was ended by "Shrinking Shrooms eaten alive";
		trigger ending "Player has died";
		end the story saying "You were eaten alive!";
	else:
		say "     Well, it's worth a try at least. You try your best to hang onto something, anything. The dog's stomach starts compressing, heralding the beginning of digestion. You scream in desperation, and you finally manage to hold on to something and pull yourself a bit further up. With newfound determination after that first success, you work at pulling yourself up, just in time before the rising level of acid burns the soles of your feet. It is hard work, but you are getting out of here! Feeling something crawling up his gullet can't be comfortable for the husky either, and before long, the tickling sensation in his insides makes him throw up! Being violently ejected on a tide of rising vomit, you fall onto the ground in a foul-smelling wash of his stomach contents. With the predator on all fours, retching violently, you have just enough time to get your own bearings and run into the other room.";
		say "     It doesn't take long before he comes hunting for you in a wild rage, but the chaos in the ransacked kitchen and his impatience allows you to hide in between the rubble, trash, and cracks in the floor, eventually making it safely to the hole you entered the building through. With the beastly husky still shouting angrily to his bitches to find his escaped snack, you lean against the outer wall in exhaustion and wait for the shrinking mushroom to wear off. Best not to remain here for too much longer, as he might find the hole and come around the building, so you quickly snatch up your stuff and run away naked, only stopping to get dressed when you're several blocks away.";
		now Resolution of Little Trouble is 7; [shrunk, eaten by alpha, climbed the way out]
		now little trouble is resolved;

to say AlphaDive:
	if a random chance of 1 in 4 succeeds:
		say "     You jump in the acid, ignoring all of the pain. It makes your flesh burn as it is eaten away while you try to find any opening deeper into his digestive tract. But it's all in vain. Soon, you pass out from the pain, and are quickly digested without a trace.";
		WaitLineBreak;
		now battleground is "void";
		the Player was ended by "Shrinking Shrooms eaten alive";
		trigger ending "Player has died";
		end the story saying "You were eaten alive!";
	else:
		say "     You jump in the acid, ignoring all the warnings in your brain saying otherwise. It burns a lot, but you continue doing your best to speed up your passage through his digestive system until you are finally 'birthed' through his tight asshole. When you fall down, you have a small window to escape your 'parent' before he realizes what is going on. Luckily, he is busy fucking his bitch again, and so, you are able to reach your point of entrance before being caught once more. With the beastly husky still shouting angrily to his bitches to find his escaped snack, you lean against the outer wall in exhaustion and wait for the shrinking mushroom to wear off. Soon, you're back to your original size and get dressed again, then get out of the area at a run.";
		now Resolution of Little Trouble is 8; [shrunk, eaten by alpha, anal way out]
		now little trouble is resolved;

to say BitchClimb:
	if a random chance of 1 in 4 succeeds:
		say "     Looking at the hole you just went through, the realization strikes your mind. There are only two places connected to where you are now, up and down. And you don't think you will survive the rest of the way down anyway, so your only option is trying to go back from where you came. Getting back on your feet, you throw your hands up, trying you best to grab at anything at all. Your first attempt is met with failure, but on the second try, you manage to hold onto something. No time to figure out how you are climbing. If you want to survive this you have to continue.";
		say "     Pushing aside her flesh to make your way proves harder than any place you climbed combined with any hole you crawled inside. Your body is still slippery with the cum and the fluids from the bitch, causing you to slide. But still, you make your way to her muzzle, finally seeing the outside world again. Hope comes back to your heart... and are quickly shattered, as the alpha is waiting for you. 'Look at that little rascal,' he says looking directly at you inside her mouth. 'Thought you'd make it, but no. You're still going down!' As the husky laughs, the bitch clamps her teeth shut, closing the last sliver of light you are ever going to see, then throws her head back and swallows you again. This time, you don't have the energy to even struggle anymore...";
		WaitLineBreak;
		now battleground is "void";
		the Player was ended by "Shrinking Shrooms eaten alive";
		trigger ending "Player has died";
		end the story saying "You were eaten alive!";
	else:
		say "     Looking at the hole you just went through, the realization strikes your mind. There are only two places connected to where you are now, up and down. And you don't think you will survive the rest of the way down anyway, so your only option is trying to go back from where you came. Getting back on your feet, you throw your hands up, trying you best to grab at anything at all. Your first attempt is met with failure, but on the second try, you manage to hold onto something. No time to figure out how you are climbing. If you want to survive this you have to continue. Pushing aside her flesh to make your way proves harder than any place you climbed combined with any hole you crawled inside.";
		say "     Your body is still slippery with the cum and the fluids from the bitch, causing you to slide. Until you feel her muscles pushing you up with extreme strength. Soon, you are met with some of her digestive fluids and thrown out of her mouth while she gasps for air from the way you escaped. The male dog sees you in the pile of bile, but you quickly get back on your feet and run into a crack in the wall next to you. The male husky chases you for a while, almost hitting the wall as you enter the hole. Hearing growls and shouts, you keep running where you can. His arm is pushed inside the gap in the wall with you, but it's slow enough that you can outrun it with ease. Finally on the other side of the way you took, luck smiles upon you as you can see the sky again and near you is your stuff. Now, you just need to wait for the effects of the shrinking shrooms to end, and you can go back to your life on the city.";
		now Resolution of Little Trouble is 9; [shrunk, eaten by bitch, climbed out]
		now little trouble is resolved;

to say BitchDive:
	if a random chance of 1 in 4 succeeds:
		say "     You jump in the acid, ignoring all of the pain. It makes your flesh burn as it is eaten away while you try to find any opening deeper into his digestive tract. But it's all in vain. Soon, you pass out from the pain, and are quickly digested without a trace.";
		WaitLineBreak;
		now battleground is "void";
		the Player was ended by "Shrinking Shrooms eaten alive";
		trigger ending "Player has died";
		end the story saying "You were eaten alive!";
	else:
		say "     You jump in the acid, ignoring all of the warnings in your brain saying otherwise. It burns a lot, but you continue doing your best to speed up your passage through her digestive system until you are finally 'birthed' through her tight asshole. When you fall down, you have a small window to escape your 'parent' before she realizes what is going on. Luckily, she is busy being pounded by her master, and so, you are able to reach your point of entrance before being caught once more. With the beastly husky still shouting angrily to his bitches to find the escaped snack, you lean against the outer wall in exhaustion and wait for the shrinking mushroom to wear off. Soon, you're back to your original size and get dressed again, then get out of the area at a run.";
		now Resolution of Little Trouble is 10; [shrunk, eaten by bitch, anal way out]
		now little trouble is resolved;

Section 2 - More Events

[By Gherod]

Table of GameEventIDs (continued)
Object	Name
Ballsy Hung Horseman	"Ballsy Hung Horseman"

Ballsy Hung Horseman is a situation.
ResolveFunction of Ballsy Hung Horseman is "[ResolveEvent Ballsy Hung Horseman]".
Sarea of Ballsy Hung Horseman is "Stable".

to say ResolveEvent Ballsy Hung Horseman:
	if Resolution of Ballsy Hung Horseman is 0: [was never CV'd by him]
		if carried of glowing mushroom < 1: [carrying no shrooms]
			say "     During your stay at The Stables, you see no lack of fine equine-looking men, women, and even somewhere in between these binary designations of gender, doing their turns and awaiting eager partners to share hot and intimate moments with. You have to be especially wary of those tall and burly horsemen who could definitely pose a threat to your safety, as some of them seem to be guards. But in your mindful stroll across the whorehouse, someone catches your attention as they see you passing by. One none other than, exactly one of those you were trying to avoid, except he does not seem hostile towards you. He has you in his sight, an especially strong looking [bold type]horseman[roman type] with a [bold type]very expansive bulge[roman type] confined in a pair of tight black leather pants, so indiscrete that your eyes are drawn to it in an instinctive reflex.";
			say "     'My eyes are up here, cute stuff.' he says, and that makes you alert of what you are doing. He gives you a very suggestive smirk, understanding that you were probably enthralled by the size of his equipment. 'Like what you see?' asks the horseman, his ridiculously large bulge bouncing before your gaze, an obscene sight that not even a pair of pants could attenuate. 'I do get a lot of attention anywhere I go, hence why I prefer a more... reclusive corner.' He crosses his arms and examines you once more, almost giving you the feeling he is taking measures of your form with his eyes. 'Tell you what... I'll sate your curiosity if you bring me some of those [bold type]glowing mushrooms[roman type] from that one [bold type]mushroom cave[roman type]... You'll know what I'm talking about, if you've ever been there.'";
			WaitLinebreak;
			say "     It sounds like he speaks of something particularly specific, though asking him for more details does not seem to result in a clearer answer. 'Have one with you, then we'll talk. My services are one of a kind, and I never had any complaints.' he adds, giving the area of his bulge respective to his massive nutsack a good rub as he talks. You have a feeling that, whatever services he provides, those seem to be involved. He does not say anything else, only dismissing you since you [bold type]do not seem to be carrying any of those mushrooms he mentioned[roman type], which immediately disperses his attention.";
			LineBreak;
			say "     You could [bold type]find a way to acquire some of those mushrooms he talked about[roman type], or simply choose to [bold type]avoid him forever[roman type]. He does seem to be a little suspicious...";
			say "     ([link]Y[as]y[end link]) - Return later, perhaps with these glowing mushrooms.";
			say "     ([link]N[as]n[end link]) - Avoid him forever.";
			if Player consents:
				Linebreak;
				say "     He mentioned they could be find in a certain [bold type]mushroom cave[roman type]... Where could you find such a place? Perhaps some place [bold type]outside[roman type], who knows? Whatever you decide, you can always look for this [bold type]Ballsy Hung Horseman[roman type] again once you've got what he wants and discover what is so special about him...";
			else:
				Linebreak;
				say "     Perhaps avoiding him would be the best move, you think. From now on, even if you see this horseman, you shall ignore him with the best of your abilities. If you can avoid this area in general, even better! You definitely will not see him again.";
				now Ballsy Hung Horseman is resolved; [resolves the event, to never appear again]
		else if carried of glowing mushroom > 0: [carrying shrooms]
			say "     During your stay at The Stables, you see no lack of fine equine-looking men, women, and even somewhere in between these binary designations of gender, doing their turns and awaiting eager partners to share hot and intimate moments with. You have to be especially wary of those tall and burly horsemen who could definitely pose a threat to your safety, as some of them seem to be guards. But in your mindful stroll across the whorehouse, someone catches your attention as they see you passing by. One none other than, exactly one of those you were trying to avoid, except he does not seem hostile towards you. He has you in his sight, an especially strong looking [bold type]horseman[roman type] with a [bold type]very expansive bulge[roman type] confined in a pair of tight black leather pants, so indiscrete that your eyes are drawn to it in an instinctive reflex.";
			say "     'My eyes are up here, cute stuff.' he says, and that makes you alert of what you are doing. He gives you a very suggestive smirk, understanding that you were probably enthralled by the size of his equipment. 'Like what you see?' asks the horseman, his ridiculously large bulge bouncing before your gaze, an obscene sight that not even a pair of pants could attenuate. 'I do get a lot of attention anywhere I go, hence why I prefer a more... reclusive corner.' He crosses his arms and examines you once more, almost giving you the feeling he is taking measures of your form with his eyes. 'Tell you what... I'll sate your curiosity if you bring me some of those [bold type]glowing mushrooms[roman type] from that one [bold type]mushroom cave[roman type]... You'll know what I'm talking about, if you've ever been there.'";
			WaitLinebreak;
			BHHShrinkingShroom;
	else if Resolution of Ballsy Hung Horseman is 1: [was CV'd by him at least once]
		say "     During your stay at The Stables, you see no lack of fine equine-looking men, women, and even somewhere in between these binary designations of gender, doing their turns and awaiting eager partners to share hot and intimate moments with. You have to be especially wary of those tall and burly horsemen who could definitely pose a threat to your safety, as some of them seem to be guards. But in your mindful stroll across the whorehouse, someone catches your attention as they see you passing by. One none other than, exactly one of those you were trying to avoid, except he does not seem hostile towards you. He has you in his sight, an especially strong looking [bold type]horseman[roman type] with a [bold type]very expansive bulge[roman type] confined in a pair of tight black leather pants, so indiscrete that your eyes are drawn to it in an instinctive reflex.";
		say "     'My eyes are up here, cute stuff.' he says, and that makes you alert of what you are doing. He gives you a very suggestive smirk, understanding that you were probably enthralled by the size of his equipment. 'Like what you see?' asks the horseman, his ridiculously large bulge bouncing before your gaze, an obscene sight that not even a pair of pants could attenuate. Though, to your surprise or not, the horseman seems to recognize you. 'Ah! Look who it is! Did you miss me? Or the hot and tight confines of my cum-flooded balls?' he asks, giving the area of his bulge respective to his massive nutsack a good rub as he talks. 'If you want another temporary go, just bring another one of those [bold type]glowing mushrooms[roman type] and I'll let you in again... Perhaps this time you'll want to stay longer...'";
		WaitLineBreak;
		say "     'But I suppose we could also do other things, now that we know each other better. We don't always need to use the mushrooms... or, at least, not right away.' The horseman smirks as you think about what to say.";
		say "[BallsyHungHorsemanSexMenu]";

		[WaitLinebreak;
		if carried of glowing mushroom < 1: [carrying no shrooms]
			say "     He gives you another smirk as you are left to think about this, but as you do not happen to have any mushrooms with you, his attention is dispersed and he dismisses you afterwards. Should you [bold type]bring some more mushrooms[roman type] and have another go with the hung horseman? Or was the previous experience enough for you and, thus, has given you the will to [bold type]ignore him forever?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Return later, perhaps with these glowing mushrooms.";
			say "     ([link]N[as]n[end link]) - Avoid him forever.";
			if Player consents:
				Linebreak;
				say "     He mentioned they could be find in a certain [bold type]mushroom cave[roman type]... Where could you find such a place? Perhaps some place [bold type]outside[roman type], who knows? Whatever you decide, you can always look for this [bold type]Ballsy Hung Horseman[roman type] again once you've got what he wants and prepare for a journey down his massive cock and balls, once more...";
			else:
				Linebreak;
				say "     Perhaps avoiding him would be the best move, you think. From now on, even if you see this horseman, you shall ignore him with the best of your abilities. If you can avoid this area in general, even better! You definitely will not see him again.";
				now Ballsy Hung Horseman is resolved; [resolves the event, to never appear again]
		else if carried of glowing mushroom > 0: [carrying shrooms]
			WaitLinebreak;
			BHHShrinkingShroom;]

to BHHShrinkingShroom:
	say "     Knowing that you happen to be carrying at least one of those mushrooms that he mentioned, you are left with a decision to make. You can either mention that you, indeed, have one, and would like to proceed with the trade in exchange for what he offers, lie and say you don't have any so you can leave for now, or simply decide to ignore him forever and avoid any further encounters with him.";
	say "     [link](1)[as]1[end link] - Let him know you have what he asks for.";
	say "     [link](2)[as]2[end link] - Lie and be on your way, for now.";
	say "     [link](3)[as]3[end link] - Lie and go away, forever avoiding him for the future.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to present the mushroom to him, [link]2[end link] to lie and make your leave or [link]3[end link] to simply go away and ignore him forever, for the future.";
	if calcnumber is 1:
		Linebreak;
		say "     You nod, informing him that you, indeed, have glowing mushrooms with you. He then asks you to follow him into a more [']private['] spot...";
		say "[BHHScene1]";
	else if calcnumber is 2:
		Linebreak;
		say "     You put up your saddest expression and inform him that, sadly, you have none of those special mushrooms with you. 'I see. What a pity... I'll have to look for someone else.' he replies, as you continue on your way, not minding the hung horseman for some time.";
	else if calcnumber is 3:
		Linebreak;
		say "     You put up your saddest expression and inform him that, sadly, you have none of those special mushrooms with you. 'I see. What a pity... I'll have to look for someone else.' he replies, and perhaps, avoiding him would be the best move, you think. From now on, even if you see this horseman, you shall ignore him with the best of your abilities. If you can avoid this area in general, even better! You definitely will not see him again.";
		now Ballsy Hung Horseman is resolved; [resolves the event, to never appear again]

to say BHHScene1:
	if Resolution of Ballsy Hung Horseman is 0: [first time]
		say "     Pulling them out of your inventory, you show one of the strange glowing mushrooms to the horseman, and he smiles. 'That's it! Those are the ones!' You extend your hand in a gesture of offer, to let him take it off your possession, but he does not do so. 'Oh, I don't want it for myself, no. In fact, I must ask you to ingest it.' he says, very assertively. It seems like the horseman actually wanted you to [bold type]eat the mushrooms[roman type]! 'They have shrinking properties, which is what I require in order to interact with my... potential partners. Don't worry, I'll make sure you feel [italic type]very[roman type] good after your eat one.' The horseman scratches his balls through the tight leather bulging obscenely in his crotch as he explains this to you.";
		Linebreak;
		say "     With this information now in mind, do you still wish to proceed? You would have to eat the mushroom, causing you to shrink to a very small size for an indefinite period of time. If you decide this, know that you [bold type]will be setting yourself at the hung horseman's mercy[roman type]! Who know what he might do to you...";
		say "     ([link]Y[as]y[end link]) - Ingest a shrinking mushroom.";
		say "     ([link]N[as]n[end link]) - No. Never. Leave immediately and never return.";
		if Player consents:
			Linebreak;
			ItemLoss glowing mushroom by 1;
			say "     Deciding to trust the equine guy, you let him know that you shall do as he requests, and ingest the glowing mushroom in front of him. 'Oh, good. Its effects should kick in soon.' The mischievous grin in the horseman's face are enough to unsettle you, but he never lied to you. Upon consuming the shroom, you see yourself shrinking before him, [if player is not naked]slipping through your own clothes and gear, [end if]and as your size continues to decrease, his, in your perspective, just keeps on looking bigger. It does not cease until you are small as a mouse, standing as stall as his ankles, just above his hooves. Now, the horseman is looking over at you, unbuttoning his pants and freeing his massive endowment that comes swinging forward, growing rapidly to a full erection.";
			say "     This is not a hung horseman. This is the [italic type]hungest[roman type] horseman you have ever seen, a dick so big that you have no idea how it could fit in those pants, and the more you think about it, the less sense it makes. And it is not just his member, he also has a very, [italic type]very[roman type] respectable pair of nuts hanging underneath, each testicle being almost the size of your current height! 'I like this area... Because nobody usually comes by to bother us. So I can show you my meat and balls and do whatever I want with you without anyone telling me to stop.' he says, giving his generous manhood and large testes some good rubs and strokes as he stands gigantic above you.";
			WaitLineBreak;
			say "     Something about this feels off, as he clearly is not telling you everything. Though he makes a move to grab you with one hand, lifting you up to the same level as his eyes, then takes a seat back on a bench nearby. He really is excited, his huge equine dong looking more like it belongs to an actual horse than on an anthropomorphic body like his, thick, throbbing and leaking as he admires your shrunken and naked form. With one finger, he rubs your body all over gently, especially over your chest and crotch, [if player is female]giving your pussy a little caress that just sends a shiver of pleasure up your whole being, [else if player is male]giving your [cock of player] dick a gentle flicker and thorough stroking, stopping only when you get rock hard under his touch, [end if]and it sends your lust to a peak. He does seem to know what he is doing...!";
			say "     'You're quite a good looking little [guygal]...' he throws in the compliment as you perceive his face to be higher and higher, taking a moment to realize he is actually bringing you lower. You go down below past his chest, his midriff, and around the thick long shaft, bringing you against it and sliding you down to its base. The hot and throbbing meat pulses against you as you are used by the horseman to jerk his manhood, your body being rubbed against the entirety of his manhood's length and girth, and his motions eventually converge towards the tip. You realize he gets especially aroused every time part of you brushes against the slit, which oddly gapes slightly whenever you get close, which is visibly leaking thick droplets of precum.";
			WaitLineBreak;
			say "     He then makes you look at him in the eyes as he is holding you above his equine shaft, and you can definitely see his expression of pure lust as he keeps you just above the tip of his cock, making you feet touch the slit... And something odd takes place as you feel them warming up all of the sudden, as if something slick, pulsing and wet is wrapping itself around them, almost pulling you down...! With the grin on the horseman's face, it becomes evident that he had very clear plans for you. When you manage to glance below you, you realize that this hung equine man is feeding you to his hungry meatlog, slowly slurping your body deeper inside feet-first, and within the blink of an eye, your calves begin to disappear into the gaping leaking cumslit.";
			say "     'Mmmh... you're gonna feel great deep in my balls, little [guygal]... Hope you enjoy your trip down there.' he says, tightening his grip around you to make sure you have no way of escaping... And you really do not. You are utterly trapped in his hand, and being slowly consumed by the giant throbbing penis he has, eating you up like a hungry snake, pulling you in deeper with each passing second. You are sinking down to your knees into the pulsing flesh tube, and things are only going to get stickier...!";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Embrace the situation.";
			say "     ([link]N[as]n[end link]) - Throw an useless struggle.";
			if Player consents:
				say "     You realize that all this is actually turning you on, so there is no need to put on a struggle. Not that you would succeed, anyway. The horseman has you in his hand completely trapped, and all his cock does is continuing to suck you in, deeper and deeper into that tight and throbbing flesh tube...";
			else:
				say "     This is totally unexpected! You did not consent to be cock food! But no matter how much you thrash around and kick, the horseman has you in his hand completely trapped. Everything you manage to do is to amuse the giant equine, whose cock continues to suck you in deeper and deeper into that tight and throbbing flesh tube...";
			WaitLineBreak;
			say "     As for the horseman, he is ecstatic, not minding you at all as your whole existence sinks in deeper into his manhood. You find your entire legs disappearing into the throbbing shaft, followed by the rest of your torso, leaving your arms and head for last with each passing second. Inch by inch you slide deep down his cock until the very last bit of you fully sinks inside, the horseman's slit closing above you as the pulsing movements along his member continue to squeeze all over you, bringing your helpless body into a long journey down to the equine's balls. 'Ohhh fuck yes... You feel amazing in there, little [boygirl]... Mmmmh I wish I could keep you in there forever without churning you down for good...' he moans, enjoying your presence in his [one of]right[or]left[at random] nut, curled up within the tight confines of his cum-filled orb.";
			say "     There is not enough space to move, even. You are utterly trapped in his ballsack, unable to fight back nor squeeze yourself out, stuck and at the horseman's mercy. The testicle you are in continues to fill, that creamy and almost scorching hot cum beginning to make you feel... joyful, a bliss you cannot explain as your entire body reacts with sparks of pure pleasure. This strange stimulation, which feels so overwhelmingly good at first, starts making your body feel numb, but you keep diving into that warm and welcoming pool of thick jizz that yearns you to lose yourself in it... You feel your entire surroundings move around lullingly, which seems to be the horseman cupping and caressing his balls, feeling you inside him as he strokes his huge equine dong...";
			WaitLinebreak;
			say "     You black out moments after as the creamy and thick pool of cum you are in takes you, submerging you completely.";
			WaitLineBreak;
			say "     ... But then, you feel your world spinning, that comfortable warmth suddenly disappearing from around you, replaced with a cold breeze and a hard surface. You feel completely exhausted as you open your eyes and glance around you. You are outside the horseman, and on a pile of dirt still near The Stables. All over your body, however, is his cum, already drying up. It looks like you have been here for a while since he came you out of his balls, and back to your original size, no less! That was some journey you have just experienced! Now you have to find yourself a way to clean yourself up. Fortunately, the hung equine had the decency to bring all of your stuff to you once he was done with his trickery.";
			now Resolution of Ballsy Hung Horseman is 1;
			increase Libido of Player by 30;
			SanLoss 20;
			CreatureSexAftermath "Player" receives "Other" from "Horseman";
		else:
			Linebreak;
			say "     You do not think this is a smart thing to do, and prefer to never see this horseman again. Time to give him an excuse and leave as fast as possible, with the mushrooms still on you, not [italic type]in[roman type] you. He does not stop you, as you simply turn tail and walk the other way.";
			now Ballsy Hung Horseman is resolved; [resolves the event, to never appear again]
	else if Resolution of Ballsy Hung Horseman is 1: [not the first time]
		ItemLoss glowing mushroom by 1;
		say "     Reaching for your inventory, you show one of the strange glowing mushrooms to the horseman, and he smiles. 'Those are the ones, alright. Now get ready to feed my balls, they're aching and yearning for one certain little [guygal]...' The anticipation is further arousing the hung equine man, who is more than ready to set his massive member free, but he is waiting for you to do your part. Now, all you have to do is ingest the glowing mushroom, and experience the shrinkage once more, seeing yourself becoming smaller before him, [if player is not naked]slipping through your own clothes and gear, [end if]and as your size continues to decrease, his, in your perspective, just keeps on looking bigger. It does not stop until you are small as a mouse, standing as stall as his ankles, just above his hooves.";
		say "     Since you already have made yourselved acquainted with each other, he wastes no time. Making a move to grab you with one hand, he lifts you up to the same level as his eyes, then takes a seat back on a bench nearby. He really is excited, his huge equine dong looking more like it belongs to an actual horse than on an anthropomorphic body like his, thick, throbbing and leaking as he admires your shrunken and naked form. With one finger, he rubs your body all over gently, especially over your chest and crotch, [if player is female]giving your pussy a little caress that just sends a shiver of pleasure up your whole being, [else if player is male]giving your [cock of player] dick a gentle flicker and thorough stroking, stopping only when you get rock hard under his touch, [end if]and it sends your lust to a peak. He does seem to know what he is doing...!";
		WaitLineBreak;
		say "     'I'm so glad you came back to me, little [guygal]... I get so hard at the mere thought of having you inside me, again.' he tells you, as you perceive his face to be higher and higher, taking a moment to realize he is actually bringing you lower. You go down below past his chest, his midriff, and around the thick long shaft, bringing you against it and sliding you down to its base. The hot and throbbing meat pulses against you as you are used by the horseman to jerk his manhood, your body being rubbed against the entirety of his manhood's length and girth, and his motions eventually converge towards the tip. You realize he gets especially aroused every time part of you brushes against the slit, which oddly gapes slightly whenever you get close, which is visibly leaking thick droplets of precum.";
		WaitLineBreak;
		say "     He then makes you look at him in the eyes as he is holding you above his equine shaft, and you can definitely see his expression of pure lust as he keeps you just above the tip of his cock, making you feet touch the slit... And you know exactly when your fate is sealed when something slick, pulsing and wet wraps itself around them, almost pulling you down... With the grin on the horseman's face, it becomes evident that he enjoys this [italic type]a whole lot[roman type], to the point he lets out a moan as he lets his cock taste you. When you manage to glance below you, you see your feet being fed to his hungry meatlog, as it slowly slurps you deeper inside, and within the blink of an eye, your calves begin to disappear into the gaping leaking cumslit, as well.";
		say "     'Mmmh... you're gonna feel great deep in my balls, little [guygal]... Hope you enjoy your trip down there, like the last time.' he says, tightening his grip around you to make sure you have no way of escaping... And you really do not. You are utterly trapped in his hand, even though you came here voluntarily, and being slowly consumed by the giant throbbing penis he has, eating you up like a hungry snake, pulling you in deeper with each passing second. You are sinking down to your knees into the pulsing flesh tube, and it is a strangely arousing experience for you...";
		WaitLineBreak;
		say "     As for the horseman, he is ecstatic, not minding you at all as your whole existence sinks in deeper into his manhood. You find your entire legs disappearing into the throbbing shaft, followed by the rest of your torso, leaving your arms and head for last with each passing second. Inch by inch you slide deep down his cock until the very last bit of you fully sinks inside, the horseman's slit closing above you as the pulsing movements along his member continue to squeeze all over you, bringing your helpless body into a long journey down to the equine's balls. 'Ohhh fuck yes... You feel amazing in there, little [boygirl]... Mmmmh I wish I could keep you in there forever without churning you down for good... [bold type]Maybe you'll want to become my load[roman type], this time...' he moans, enjoying your presence in his [one of]right[or]left[at random] nut, curled up within the tight confines of his cum-filled orb.";
		say "     There is not enough space to move, even. You are utterly trapped in his ballsack, unable to fight back nor squeeze yourself out, stuck and at the horseman's mercy. The testicle you are in continues to fill, that creamy and almost scorching hot cum beginning to make you feel... joyful, a bliss you cannot explain as your entire body reacts with sparks of pure pleasure. This strange stimulation, which feels so overwhelmingly good at first, starts making your body feel numb, but you keep diving into that warm and welcoming pool of thick jizz that yearns you to lose yourself in it... You feel your entire surroundings move around lullingly, which seems to be the horseman cupping and caressing his balls, feeling you inside him as he strokes his huge equine dong...";
		WaitLineBreak;
		say "     This feels so good to you, in a very addictive way. You start feeling like you belong here, after all. Maybe you just want to forget about the whole world out there and let this horseman take your whole body...";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Let him churn you.";
		say "     ([link]N[as]n[end link]) - Try to keep awake.";
		if player consents:
			say "     It feels amazing, in fact. You are thrown into an ecstasy you never knew possible, the best feeling you have ever experienced before you melt into the horseman's creamy cum, becoming nothing more than a mass of sperm lingering in his balls, awaiting its owner's next orgasm. 'Mmmh... Fuck yes... A pleasure to meet you, [mister]... My balls are temporarily sated, thanks to you.'";
			WaitLineBreak;
			now battleground is "void";
			the Player was ended by "Shrinking Shrooms eaten alive";
			trigger ending "Player has died";
			end the story saying "You just got melted into cum, while stuck inside some very hung horseman's balls.";
		else:
			say "     You try your best to not fall asleep due to all this, and your awareness pays off. Soon, your body begins to give signs of wanting to regrow... But you are so exhausted that you black out moments after, as the creamy and thick pool of cum you are in takes you, submerging you completely.";
			WaitLineBreak;
			say "     ... But then, you feel your world spinning, that comfortable warmth suddenly disappearing from around you, replaced with a cold breeze and a hard surface. You feel completely exhausted as you open your eyes and glance around you. You are outside the horseman, and on a pile of dirt still near The Stables. All over your body, however, is his cum, already drying up. It looks like you have been here for a while since he came you out of his balls, and back to your original size, no less... [bold type]So that explains why he could not keep you inside any longer[roman type]! Now you have to find yourself a way to clean yourself up. Fortunately, the hung equine had the decency to bring all of your stuff to you once he was done with his trickery.";
			increase Libido of Player by 40;
			SanLoss 30;
			CreatureSexAftermath "Player" receives "Other" from "Horseman";

to say BallsyHungHorsemanSexMenu:
	say "     [bold type]How will you handle this situation? Is there anything you want to do with this well-endowed horseman?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if carried of glowing mushroom > 0:
		choose a blank row in table of fucking options;
		now title entry is "Eat a mushroom and get cock vored";
		now sortorder entry is 1;
		now description entry is "Just eat another shrinking shroom for his wicked pleasure";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer to fist his dick";
	now sortorder entry is 2;
	now description entry is "Your arm should be able to fit that urethra, propose him that";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Offer to fuck his cock";
		now sortorder entry is 3;
		now description entry is "With a cock smaller than, at least, an arm, you should be able to fuck his, on the slit. Ask him that";
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
				if (nam is "Eat a mushroom and get cock vored"):
					say "[BHHScene1]";
				else if (nam is "Offer to fist his dick"):
					say "[BHHFistCock]";
				else if (nam is "Offer to fuck his cock"):
					say "[BHHFuckCock]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You have nothing to do with this horseman, so you shall only be on your way. He only shrugs, not stopping you from leaving.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BHHFistCock:
	say "     Knowing that the horseman seems open to some other options, you ask him if, instead of going for a mushroom, he would be happy to try something else, perhaps using only your hands.";
	if scalevalue of player >= 4:
		say "     He frowns at you, looking at your height and the size of your arms. 'With you, only with one of those mushrooms. You're too big for my likes.' The horseman then dismisses you as he focuses his attention on something else. You have no other choice but to leave him be, for now.";
	else:
		say "     'Only your hands, you say? Hm... There's an interesting idea...' The horseman then proceeds to unzip his bulgy pants and unleash the oversized beast of a cock right before your eyes with a wide grin on his long muzzle. It hangs just by his knees, still soft, an equine dong so massive it would look more natural on an actual horse, accompanied by a heavy set of balls underneath the big meat, each about the size of apples. You even have trouble thinking how he could shove all of that inside such a tight pair of leather pants. 'How about this, you give my dick a good rub, get it nice and hard... and we'll see what happens. It'll depend on how good you are with them.'";
		say "     You nod, and proceed to grab his huge shaft, which at your mere touch begins to throb and growing even further. With long rubs from the tip to about half the shaft, his horsecock only seems to harden as his excitement increases. He does not seem to be much of a grower, but nonetheless, his size is impressive, and its erect state adds a couple of extra inches to his total length. Additionally, his balls also seem to grow, looking significantly heavier and fuller, about as big as melons. The horseman's smirk persists as he observes you touching his manhood, bringing your hands over every inch of his meat, sliding them across the sides and feeling its weight on your palms. Soon enough, you get the huge cock to ooze some precum, a few thick droplets poking out from the slit and sliding down the girthy rod.";
		WaitLineBreak;
		say "     'I like the way you touch it, cute stuff. I'm starting to think you ain't all so bad at your normal size...' the horseman says as he continues to enjoy the handjob you are giving him, and when the moment is right, you ask him if he would like to try a creative way to [']sound['] his dick. 'Mmh... Was just thinking that you could finger that slit. You'll find my cock to be very accomodating... As you already saw.' Following his suggestion, you proceed to move your hands over the head of his cock, which is clearly a sensitive spot for the horseman. He lets out a moan as you caress this mostly flat head, even causing it to dribble more precum, which you use as additional lubrication.";
		say "     Now that your fingers are wet with the horseman's manjuice, you are able to slide one easily through the stretchy urethra, which seems to even slurp at your finger as if it was sucking on it, providing you a quite strange but pleasant sensation. Quickly enough, you realize it may fit an additional finger, and you keep adding them as the anthro horse continues to moan. 'Fuck yeah, keep at it... Feels so fucking good...' His cock does not lie, either, as even more precum begins to come out the more you stretch his slit, to shove more and more of your hand inside. Eventually, all your five fingers are in, and you slide them up and down several times at a steady pace, causing a mess as his juice flow increases even more.";
		WaitLineBreak;
		say "     The horseman seems greatly pleased by your efforts so far and enthuses over it. But the more you continue to stimulate his manhood, the bigger it feels. When you think about it, the fact that you can now practically fist his cock is an obvious evidence that it just got larger during this entire process. Fascinated by this, you continue to push your hand into his cock's head and see it easily slide in past your wrist, feeling its inner fleshy walls throbbing around your arm. It feels really warm and moist in there, a sensation intensified by the steady flow of precum that now also coats your arm. 'Yeah, shove it in deep... Mmh- this feels so fucking good, you wouldn't believe...!'";
		say "     As you keep pressing your arm against his massive horsecock, he goes into absolute ecstasy. Each movement you make back and forth causes him to either moan or breathe heavily, but one thing that seems oddly inviting is the apparent suction force of his dong, due to the peristaltic movements of the insides of his shaft. It yearns for you as you carry on fistfucking the horseman's large member, earning yourself quite a messy coating of precum as you continue to reinforce his excitement. His slit begins to feel loose-ish around your arm, and you notice how girthier his cock became over the course of a few minutes of action. 'How about you use your other arm? I'm sure you can fit both in here...' he asks you with a tender and lusty tone.";
		WaitLineBreak;
		say "     You do not see a reason to deny his request, and so, you pull your whole arm from his cock and resume the process with just shoving fingers in his slit until everything fits in. Naturally, this time around, it is a lot quicker to get your both hands in it, and as you begin to push, you feel only a slight sign of resistance. 'Ohh... I can already feel that...' he moans as both your palms push past his slit, the massive cock swallowing them past your wrist in only brief seconds, and you are then free to continue pushing them into it. Naturally, this pose feels a little more awkward to you, and you nearly lose your balance trying to thrust into his giant horsecock with your arms. 'You look so cute like that... Mmmh... Keep going...'";
		say "     While doublefisting the horseman's giant dick, you are inevitably drawn towards it, causing your jaw to collide with its sensitive head. He sees this and chuckles as you struggle with keeping your feet grounded. 'Having trouble there?' he asks, in a clearly mocking tone, as you try to resolve your situation by pulling one of your arms back, realizing that... you cannot. It seems stuck inside his dick, the suction force being much stronger now, but its increase was so gradual that you failed to notice it before. You look back at him, as if requesting some form of assistance, but he does not really seem to care. 'Oh... yeah... that usually happens. My cock gets a lot bigger the more you touch it... And hungrier, too...'";
		WaitLineBreak;
		say "     It seems his intentions are now made clear as he ends his reply with a grin. 'Since you were so eager to play with it, I assumed we wouldn't need a mushroom this time. So... here, let me help you [italic type]get inside[roman type].' Your whole face is smothered against the giant horsecock's flat head and immediately pulled in as the entire world around you becomes a hot mess of precum and darkness. Soon, the rest of your body follows, the throbbing flesh swallowing your torso inch by inch with every pulse until your feet are lifted off the ground. The horseman loses himself in ecstasy as he feels you going deeper inside his gigantic meat, which is drooling all over your legs, before he lifts it, so that even gravity further aggravates your predicament.";
		say "     'Fuuuck, this never gets old...' he moans to himself, taking a seat against a wall as he watches your feet finally disappearing into the enormous shaft, any traces of you gone out of view and into him. The sticky fluids and high temperatures washing over you are nearly unbearable as this fleshy tunnel throbs and seemingly wiggles you in deeper, forcing you to travel further down the cavernous body until you can finally be dropped into the horseman's nuts. They have grown to accomodate your normal size, but you are forced to curl like a fetus while almost submerged in cum, as his balls provide only enough space for you to be inside them. Your movements are very well-felt by the equine man as you desperately try to push yourself out of the creamy jizz that immediately begins to make your whole body feel tingly.";
		WaitLineBreak;
		say "     'I'm starting to think you do this on purpose, you know. Maybe you want to be in there after all... How many times have you fell into this trick by now?' he asks you in a very sarcastic tone, making fun of you and laughing out loud as he continues to torment you, rubbing his sack all over and enjoying your attempts to struggle, which only further pleases him. 'Nah, I think you just like it. There's no way you don't know I'll pull you inside my balls the first chance I get... Right? I mean... It's pretty fucking obvious. You know what? Maybe you should just accept the fact that you deserve to be nothing but cum. How's that? Gimme a big fucking load to blow in your honor... It'd be so worth it...'";
		say "     As things are right now, you are utterly trapped in his ballsack, unable to fight back nor squeeze yourself out, stuck and at the horseman's mercy, and things begin to take a turn. The testicle you are in continues to fill, that creamy and almost scorching hot cum beginning to make you feel... joyful, a bliss you cannot explain as your entire body reacts with sparks of pure pleasure. This strange stimulation, which feels so overwhelmingly good at first, is now making your body feel numb, but you keep diving into that warm and welcoming pool of thick jizz that yearns you to lose yourself in it... You feel your entire surroundings move around lullingly, which seems to be due to the horseman caressing his giant balls, feeling you inside him as he gives his gigantic equine dong some, unfortunately for him, limited rubbing...";
		WaitLineBreak;
		say "     This feels so good to you, in a very addictive way. You start feeling like you belong here, after all. Maybe you just want to forget about the whole world out there and let this horseman take your whole body... You probably got yourself into this on purpose, anyway.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Let him churn you.";
		say "     ([link]N[as]n[end link]) - Try to keep awake.";
		if player consents:
			say "     It feels amazing, in fact. You are thrown into an ecstasy you never knew possible, the best feeling you have ever experienced before you melt into the horseman's creamy cum, becoming nothing more than a mass of sperm lingering in his balls, awaiting its owner's next orgasm. 'Oh, I see you made your choice, [mister]... Don't worry, I'll enjoy every single spurt of this massive load you just gave me. I promise I'll think of you.' These are the last words you hear, followed by a laugh, before your existence fully dissipates into nothing but cum.";
			WaitLineBreak;
			now battleground is "void";
			the Player was ended by "Shrinking Shrooms eaten alive";
			trigger ending "Player has died";
			end the story saying "You just got melted into cum, while stuck inside some very hung horseman's balls.";
		else:
			say "     You try your best to not fall asleep due to all this and resist with your very best efforts, still kicking at the horseman's balls and at every single one of his taunts. There is this particular kick that makes the horseman flinch unexpectedly... 'Whoa! Hey! S-stop doing that...!' he shouts, trying to block your blows, but the enormous size of his junk makes it difficult for him to find the right space to shield himself from you. Noticing this, you continue to hit that particular spot, the horseman's voice booming out from everywhere as grunts and heavy breathing. 'F-fuck, n-not there... C-come on! Let me enjoy you a little bit longer...! Fuuuck why does it feel so good...?!'";
			WaitLineBreak;
			say "     This causes your space to suddenly fill with a lot of cum, fully submerging you in it, but soon, your surroundings begin to retract and constrict you enough to force you back into the equine's shaft. It does not stop there, as the force of his cum pushes you further up while you hear him scream in bliss, naturally driving you outside with quite a massive blast. His cum follows you all the way until you hit the ground, further bathing you in it, and you have to roll away from the deluge he is causing with every spurt if you do not want to drown in it. As you are finally outside, you get a view of the horseman cumming a ridiculously huge load, completely helpless to all that overwhelming pleasure, but all as his grunts in frustration. A frustrating pleasure? Either way, he seems to be half-enjoying it.";
			say "     While he is left cumming for an unforeseen amount of time, you grab your stuff back and try to get yourself as clean as you can. This ordeal left you exhausted, but you pity the poor horseman who just cannot stop his orgasm and cannot even walk away on his own due to the size of his endowments... You think he is about to curse at you, but only moans leave his mouth as he looks at you, extending his hand in your direction. 'You f-fucker...! I-I'll have you next time...!'";
			WaitLineBreak;
			say "     Those are the last words you hear from him as you begin to walk away. He is still cumming...";
			increase Libido of Player by 40;
			SanLoss 30;
			CreatureSexAftermath "Player" receives "Other" from "Horseman";

to say BHHFuckCock:
	say "     Knowing that the horseman seems open to some other options, you ask him if, instead of going for a mushroom, he would be happy to try something else, perhaps using only your hands, and you mention that if he is so hung, you could probably fit your own cock in his.";
	if scalevalue of player >= 4:
		say "     He frowns at you, looking at your height and overall large frame. 'With you, only with one of those mushrooms. You're too big for my likes.' The horseman then dismisses you as he focuses his attention on something else. You have no other choice but to leave him be, for now.";
	else if cock length of player > 16:
		say "     He frowns at you, looking at the grand size of your [if player is naked]cock[else]bulge[end if]. 'With you, only with one of those mushrooms. You're too big for my likes.' The horseman then dismisses you as he focuses his attention on something else. You have no other choice but to leave him be, for now.";
	else:
		say "     His eyes widen at your suggestion, but then he gives you a smile. 'So, you wanna fuck my cock? That's what you just said?' he asks back, and you nod, confirming your intentions to the horseman. 'Holy fuck, you're one wicked pervert bastard... But, you know what, I like it.' The horseman then proceeds to unzip his bulgy pants and unleash the oversized beast of a cock right before your eyes with a wide grin on his long muzzle. It hangs just by his knees, still soft, an equine dong so massive it would look more natural on an actual horse, accompanied by a heavy set of balls underneath the big meat, each about the size of apples. You even have trouble thinking how he could shove all of that inside such a tight pair of leather pants. 'Come on, now! We can rub them together...'";
		say "     You are definitely aroused by this, and your own cock reminds you of it. It does not take much thinking for you to just [if player is not naked]pull it out[else]grab it[end if] and place it right next to that huge equine dong, feeling its weight and throbbing warmth against your [cock of player] cock. 'It's so tiny in comparison to mine... Heh, I suppose you'll have no problem fitting it in this girthy flat head... I'm really sensitive there, though. You might actually satisfy me.' You get this feeling that he is mocking you, but all this truly feels pleasant as you both rub your cocks together. 'Ready whenever you are, cute stuff. Just put it in... All the way...'";
		WaitLineBreak;
		say "     With lust being so great, you begin to slide your cock across his huge shaft and seek the slit that you yearn for, then press your tip against his. It just so happens to let your cock inside, that slit of his turning out to be surprisingly accomodating, and you continue to push in deeper, very eagerly. He likes your enthusiasm and encourages you to keep going. 'Yeaaah... You like that? Feels good on my end, too... Why don't you grab my cock and rub it while you fuck it? That'd make me fucking squirm...' You follow his suggestion and place your hands on each side of his girthy shaft, then use this to fuck his dong. Each thrust causes the horseman to take a deep breath and occasionally moan, his precum offering you quite a nice amount of lubrication.";
		say "     It does seem to be actually offering too much, as it begins to leak out and run down your legs, but you continue to thrust into it, which causes more and more thick juice to ooze out. 'Oh, yeah, it's gonna get really messy... Hope you don't mind that...' You carry on pounding that dick like you were fucking a cock-hungry butthole, feeling its inner warm flesh almost sucking your meat back, throbbing all over it, which just feels fantastic. The shaft only gets harder and thicker on the outside, causing your fingers to part before you have to readjust them, but you do not pay much attention to this. The pleasure is so great that it is your only focus, all while you continue to fuck his gigantic meat...";
		WaitLineBreak;
		say "     'Fuck, this actually feels really fucking good... Don't think I'll continue my plan to cock vore you... this time, at least,' as he says this, you look back at him, interrupting your thrusts as you look at his now much bigger dick, and conclude that you could potentially fit in there at your normal size by now. 'Well, I may change my mind if you stop fucking it!' The cat is sort of out of the bag right now, but you really have no reason to stop doing something so pleasant, so you carry on fucking the horseman's cock. 'That's better. Besides, there are other fun ways you can feed my cock. Just keep going...' he tells you, bliss evident in his expression as he continues to encourage you.";
		say "     With this much action, you body begins to ache, as you have been at this for a long time. The horseman continues to push your physical limits, grunting at every time you stop fucking his cock, threatening you to swallow you up instead. For some reason, everytime he says that, you own penis beckons you to continue your job, as if this actually turned you on, one way or another. But, besides this, his precum output is huge, already having managed to coat your legs and waist completely, and is now forming a puddle under your feet. It feels really easy to slip. 'Nngh... C'mon now... Don't stop...' You do not, as you begin to approach the point of no return, the orgasm you seek, so hard-earned, steadily approaching... 'Yeah, let it all out... Cum into my cock.'";
		WaitLineBreak;
		say "     You really want to do that. As your balls raise, your load begins to get pumped into the horseman's dong, which greedily accepts your donation. You even feel it sucking your dick, wanting everything you have to offer, every spurt, every drop, right until the last. However, this pleasure overwhelms you, and that slippery puddle finally causes you to fall. The suction force alone, however, keeps you stuck on that horsecock and prevents you from getting hurt on your butt as it hits the ground. You are then given a view of that giant cock attached to yours as the horseman laughs, the size of it able to pin you down all by itself if he ever wanted to. 'Mmh... It felt alright. My turn, now.'";
		say "     As he says this, you begin to feel his huge member throb without cease, so powerfully that you feel it on your own meat as well. Then, with little warning, this massive burst of cum pulls your manhood out of the equine's and completely covers you in it, then continues to wash you with every spurt. It is a massive, overwhelming and completely ridiculous load that nearly drowns you, giving you a really mean cum bath that you struggle to even survive! You roll over, attempting to get out of the danger area, and manage to, at least, get on all fours and place your mouth in open air, as your nose is completely filled with horse jizz. And that is all you manage before you slip and fall again. But, at least, you can breathe.";
		WaitLineBreak;
		say "     'That was really hot,' says the horseman with a huge grin. 'Yeah, I was thinking of growing it big enough to suck you in, but then realized that doing it with your dick as a starting point wouldn't be too effective. So... Hope you liked the cum bath, instead. Heheh...' He then only laughs, making fun of you for falling into a little prank of his, but you cannot deny that it actually felt really good. Though, he does not even help you get up, instead laughing everytime to try and fail. 'Take too long and I'll get hard again! Then, I might just let my cock swallow you up for good, since you're so slippery. Bet it would be fucking easy.' You bolster all your focus and, finally, manage to crawl out of the puddle and into more dry ground. This allows you to get up without any additional trouble. 'Ah, so you managed. Well... that's fine. There's your stuff, clean yourself up and go. Still gotta find myself a cockmeal, now that you emptied my balls. Heh, unless... You still wanna offer yourself to me.'";
		say "     His cock is still huge enough for you to fit in, if you ever wanted to, and you can swear you see it throb as the horseman sees you merely looking at it. 'Oh, are you having thoughts about it now? I mean... I wouldn't stop you...' he says, the giant equine dong starting to give signs that it will harden, once more.";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Offer yourself to the horseman's cock.";
		say "     ([link]N[as]n[end link]) - Just leave.";
		if player consents:
			say "     You find yourself wanting this, in fact. Looking at that huge cock yearning for you makes you feel wanted, in a rather weird way. Giving it some thought, you decide to walk towards the horseman, whose expression turns into pure bliss as he understands that you want to feed yourself to his massive dong. 'Yeah, why fight the urge? Of course you wanna feel this huge and warm cock sucking you in... slowly and nicely.'";
			BBHFuckCockCV;
		else:
			say "     You shake your head and wish him good luck in his hunt for a [']cockmeal['], as he said himself. 'Are you sure? It'd feel really good, you know... I'd let you nap in my balls and you wouldn't have to just melt in there, you know...? I could get you out anytime! You could just say the word and I'd shoot you back out! But, in the meantime, you get to enjoy the comfort of my warm nuts... thick and tasty cum all over you... And making me feel so... so... good...' His cock throbs and thickens as he speaks, a small drop of precum oozing from its flat head as it seems almost resolute to reawaken.";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Change your mind and offer yourself to the horseman's cock.";
			say "     ([link]N[as]n[end link]) - Reaffirm your decision and proceed to walk away.";
			if player consents:
				say "     The way he speaks sort of turns your mind around as you find yourself suddenly wanting this. Looking at that huge cock yearning for you makes you feel wanted, in a rather weird way. Giving it some thought, you decide to walk towards the horseman, whose expression turns into pure bliss as he understands that you want to feed yourself to his massive dong. 'I knew you'd come around. Why would you waste the chance to feel this huge and warm cock sucking you in... slowly and nicely...'";
				BBHFuckCockCV;
			else:
				say "     As you already said, a [']no['] is what it is, a [']no[']. You deny his invitation a second time and proceed to just walk away, lest you would risk him attempting to persuade you into another time. 'Fine. I'll find a more cooperative meal for my cock, then.' You leave the horseman to his grunting as you simply walk away with your stuff, onto more important matters.";
				CreatureSexAftermath "Horseman" receives "Other" from "Player";

to BBHFuckCockCV:
	say "     Before you know it, you are standing in front of that massive horsecock, steadily rising to attention, caressing it as it begins to drool, eager to receive your attention. Your hands slide over its mostly flat head as you proceed to lean over and kiss it, moving your fingers into the horseman's slit and pulling it gently. The orifice begins to open, freeing your way ahead, and the equine man almost cannot hold his excitement as he observes you beginning to crawl inside. You press your hands deeper and see your arms slowly sinking into the cavernous body, then follow up with your head and begin to push yourself into it. 'Yeah, keep going... Oh, it feels so good...'";
	say "     Soon, your whole face is smothered against the giant horsecock's flat head and immediately pulled in as the entire world around you becomes a hot mess of precum and darkness. Eventually, the rest of your body follows, the throbbing flesh swallowing your torso inch by inch with every pulse until your feet are lifted off the ground. The horseman loses himself in ecstasy as he feels you going deeper inside his gigantic meat, which is drooling all over your legs, before he lifts it, so that even gravity comes to assist you in this endeavor. 'You're doing so well... Yeah... Keep going in... Deeper!'";
	WaitLineBreak;
	say "     He moans to himself, taking a seat against a wall as he watches your feet finally disappearing into the enormous shaft, any traces of you gone out of view and into him. The sticky fluids and high temperatures washing over you are nearly unbearable as this fleshy tunnel throbs and seemingly wiggles you in deeper, forcing you to travel further down the cavernous body until you can finally be dropped into the horseman's nuts. They have grown to accomodate your normal size, but you are forced to curl like a fetus, as his balls provide only enough space for you to be inside them. Your movements are very well-felt by the equine man as you adjust himself within the tight soft confinements, which would be otherwise empty.";
	say "     They feel comfortable enough for you to begin to feel sleepy, and the horseman encourages you to relax as he caresses his own balls. 'Just take a rest in there... It'll feel good, I promise.' Your eyes begin to feel heavy moments after, and you doze off, eventually...";
	WaitLineBreak;
	say "     ... But when you get a grip over your senses and return to open your eyes, your prison is already almost filled to the brim with horse cum, and you can barely feel your body due to this tingly sensation that you feel all over you. Your movement startles the horseman, which realizes you woke up before you got churned down to become his next load. 'Oh, you woke up before time! Why don't you just go back to sleep and accept that you're bound to be nothing but cum? You keep going back there because, deep down, you want it!' he taunts you, rubbing his balls to accelerate the process and moaning blissfully as you struggle to keep your head above all that thick jizz.";
	say "     As things are right now, you are utterly trapped in his ballsack, unable to fight back nor squeeze yourself out, stuck and at the horseman's mercy, and things begin to take a turn. The testicle you are in continues to fill, that creamy and almost scorching hot cum beginning to make you feel... joyful, a bliss you cannot explain as your entire body reacts with sparks of pure pleasure. This strange stimulation, which feels so overwhelmingly good at first, is now making your body feel even more numb, but you keep diving into that warm and welcoming pool of thick jizz that yearns you to lose yourself in it... You feel your entire surroundings move around lullingly, which seems to be due to the horseman caressing his giant balls, feeling you inside him as he gives his gigantic equine dong some, unfortunately for him, limited rubbing...";
	WaitLineBreak;
	say "     This feels so good to you, in a very addictive way. You start feeling like you belong here, after all. Maybe you just want to forget about the whole world out there and let this horseman take your whole body... It is not like you came here involuntarily, either way.";
	Linebreak;
	say "     ([link]Y[as]y[end link]) - Let him churn you.";
	say "     ([link]N[as]n[end link]) - Try to keep awake.";
	if player consents:
		say "     It feels amazing, in fact. You are thrown into an ecstasy you never knew possible, the best feeling you have ever experienced before you melt into the horseman's creamy cum, becoming nothing more than a mass of sperm lingering in his balls, awaiting its owner's next orgasm. 'Oh, I see you made your choice, [mister]... Don't worry, I'll enjoy every single spurt of this massive load you just gave me. I promise I'll think of you.' These are the last words you hear, followed by a laugh, before your existence fully dissipates into nothing but cum.";
		WaitLineBreak;
		now battleground is "void";
		the Player was ended by "Shrinking Shrooms eaten alive";
		trigger ending "Player has died";
		end the story saying "You just got melted into cum, while stuck inside some very hung horseman's balls.";
	else:
		say "     You try your best to not fall back asleep due to all this and resist with your very best efforts, still kicking at the horseman's balls and at every single one of his taunts. There is this particular kick that makes the horseman flinch unexpectedly... 'Whoa! Hey! S-stop doing that...!' he shouts, trying to block your blows, but the enormous size of his junk makes it difficult for him to find the right space to shield himself from you. Noticing this, you continue to hit that particular spot, the horseman's voice booming out from everywhere as grunts and heavy breathing. 'F-fuck, n-not there... C-come on! Let me enjoy you a little bit longer...! Fuuuck why does it feel so good...?!'";
		WaitLineBreak;
		say "     This causes your space to suddenly fill with a lot of cum, fully submerging you in it, but soon, your surroundings begin to retract and constrict you enough to force you back into the equine's shaft. It does not stop there, as the force of his cum pushes you further up while you hear him scream in bliss, naturally driving you outside with quite a massive blast. His cum follows you all the way until you hit the ground, further bathing you in it, and you have to roll away from the deluge he is causing with every spurt if you do not want to drown in it. As you are finally outside, you get a view of the horseman cumming a ridiculously huge load, completely helpless to all that overwhelming pleasure, but all as his grunts in frustration. A frustrating pleasure? Either way, he seems to be half-enjoying it.";
		say "     While he is left cumming for an unforeseen amount of time, you grab your stuff back and try to get yourself as clean as you can. This ordeal left you exhausted, but you pity the poor horseman who just cannot stop his orgasm and cannot even walk away on his own due to the size of his endowments... You think he is about to curse at you, but only moans leave his mouth as he looks at you, extending his hand in your direction. 'You f-fucker...! I-I'll have you next time...!'";
		WaitLineBreak;
		say "     Those are the last words you hear from him as you begin to walk away. He is still cumming...";
		increase Libido of Player by 40;
		SanLoss 30;
		CreatureSexAftermath "Player" receives "Other" from "Horseman";


Shrinking Shrooms ends here.
