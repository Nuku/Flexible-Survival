Version 1 of Shrinking Shrooms by Defth begins here.

Section 1 - Event

Mushroom cave is a situation.
The sarea of Mushroom cave is "Outside".

MushroomCaveVisited is a number that varies. MushroomCaveVisited is usually 0

Instead of resolving a Mushroom cave:
	if MushroomCaveVisited is 0: [first visit]
		say "     Stepping inside the dark alley you find yourself drawn to a green glow at the end of it. You find yourself observing such a peculiar scene, even for the place you are in. There is an opening in the side of one of the buildings flanking the alley. Looking through the hole in the wall, you realize that the rest of the building has mostly collapsed and is nothing more but rubble, and you're standing at the entrance of a small 'cave' in the pile. Entering this 'cave' you find something like a mini-forest in there, some if not all of the plants there are micro size to the normal size you would find outside. Even some inanimate items like garbage dumpsters and cans outside the cave and into the alley have shrunk. Right through the middle of this whole ecosystem a river flows, feeding the amazing sight with life. It is but a trickle of goop to you, but a mighty flow as compared to its forest. Glowing with an otherworldly green color, it slowly flows from an opening in the rubble and unloads down a sewer drain a short while later. It is possible that this is some kind of radioactive leak from inside the destroyed building with the touch of the nanites made this into a shrinking concoction. Looking at the green river you spot some mushrooms growing near the sewer that don't appear to be tiny like all the other stuff that was in touch with the leakage. But they still glow faintly with that green color. The shrooms probably absorbed the features of both the radioactive stuff and the nanites.";
		say "     [bold type]Do you pick some of the mushrooms?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - You grab some of the mushrooms they might prove useful in the future.";
		say "     ([link]N[as]n[end link]) - Nah, eating stuff growing next to glowing sludge might be a bad idea and besides you won't need them anyway.";
		if the player consents:
			say "     You carefully pick some of the mushrooms and put them into your backpack. Sighing happily that you didn't shrink while doing so.";
			increase carried of glowing mushroom by 3;
			now MushroomCaveVisited is 1;
		else:
			say "     There is no need to pick them right now. You leave this place behind (for now) and continue exploring the city.";
			now MushroomCaveVisited is 1;
	else:
		say "     Returning to the dark alley, you pay a visit to the little cave in the ruined building again. Stepping up to the hole in the wall, you are stuck once again by the otherworldly beauty of the miniature land spreading out in front of you. Some of the trees appear to have grown a bit, but no more than a dandelion. Meanwhile the goop still flows silently and slowly to the sewer although it does seem to be smaller than the first time you saw it. Maybe someday this whole scene will grow back to normal and nothing that you saw will be witnessed by someone else.";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - You grab some of the mushrooms they might prove useful in the future.";
		say "     ([link]N[as]n[end link]) - Nah, eating stuff growing next to glowing sludge might be a bad idea and besides you won't need them anyway.";
		if player consents:
			say "     [line break]";
			say "     You carefully pick some of the mushrooms and put them into your backpack. Sighing happily that you didn't shrink while doing so.";
			increase carried of Glowing mushroom by 3;
		else:
			say "     [line break]";
			say "     There is no need to pick them right now. You leave this place behind (for now) and continue exploring the city.";

Section 2 - Item

Table of Game Objects(continued)
name	desc	weight	object
"glowing mushroom"	"A weird mushroom that you found. Faintly glows with a green light (shrinking item)."	0	glowing mushroom

glowing mushroom is a grab object. It is temporary. It is a part of the player.

The usedesc of glowing mushroom is "[glowing mushroom use]".

To say glowing mushroom use:
	say "     You quickly shrink, your body getting smaller and smaller by the second. Meanwhile, the clothes and gear you carry stay the same size, quickly outgrowing your diminishing stature. Looking at the now giant world with awe, you wonder how you will be able to survive while being small as a mouse. And should you just leave your equipment behind? Not seeing too much hope for making it far like this, you decide to wait. Thankfully, after some time feel yourself growing back to normal. Looks like the effects weren't permanent - this time, at least.";
	decrease carried of glowing mushroom by 1;

Understand "mushroom" as glowing mushroom.
Understand "shrooms" as glowing mushroom.
Understand "glowing shrooms" as glowing mushroom.

Section 3 - Events

Hungry dog is a situation.
The sarea of Hungry dog is "Outside".
When play begins:
	add Hungry dog to badspots of furry;
	add Hungry dog to badspots of guy;

Instead of resolving a Hungry dog:
	if vorelevel > 2:
		say "     While exploring the now nanite infested city you hear some noises coming from an alley beside you. You turn around trying your best to peek stealthily into the alley. Inside you find what appears to be a giant anthro German shepherd gorging himself with... Some kind of food. By his side you see a pile of clothes tossed carelessly aside. Most of them look like ordinary clothes, but there are some camo pattern uniforms in the mix - and they are all stained with what appears to be blood. This is weird - none of the shepherd you found hunting in the city were wearing anything. Why would this one have clothes, or even take them off while he eats?";
		say "     Oh god, your legs tremble with the sudden realization and you almost lose your breath, it can't be! He is eating someone!? Almost as if sniffing your fear the beast puts his muzzle to the air and starts to turn around...";
		say "     [line break]";
		say "     [bold type]Extreme content warning! (The further scene contain hard-vore with a possible shrinking scene and a game over!)";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Face the beast.";
		say "     ([link]N[as]n[end link]) - RUN!";
		if the player consents:
			if glowing mushroom is owned:
				say "     Coming from inside the dark alley the German shepherd finally steps into the light giving you a better view. He is monstrously large, quite a bit bigger than the ones you found to this day. He has some darker stains in his fur from what appear to be dried blood. A complete lack of clothing gives him an almost fully feral feel. Between the dog's legs there is a huge sheath and for the looks of it, an even bigger knotted penis, even without leaving the sheath you can see it pressing against the skin, making it bulge - especially where the knot should be. Right below there are two tennis size balls ornamenting him that appear to be full of the monster's seed.";
				Say "     The bloodthirsty dog jumps in your direction, putting his arms to the ground and running like a feral monster with a dark smile, bumping into you and making you lose your breath from the strength of the impact. You are knocked over onto the floor, falling on your butt and back making you clench your teeth with the impact with the deserted road. You are left without breath as the hunter stands tall beside you, never letting you out of his sight. Looks like this is a fight you can't win. Licking his lips, holds you by the neck and says, 'Looks like I found my next meal.'";
				say "     Sniffing you, the dog quickly pushes his muzzle in your backpack - looks like something caught his interest. With an impish smile he quickly grabs the glowing mushrooms that you had. Looks like this dog does know what they do to those who eat them. Holding the mushrooms with one hand and pulling you by the neck with the other he shoves them into your mouth, trying to force you to eat it. Since you won't cooperate he holds your [facename of player]nose depriving you of oxygen. Try as you might you can't escape his hold and you are starting to need air quick. Opening you mouth just for a bit gives the strong dog enough time to shove the shrooms down your throat, forcing you to eat and swallow them. 'Stupid prey,' the shepherd says with a winning smile. 'You should know your place, being my meal is the best end for someone like you.'";
				say "     As soon as you swallow you feel your body changing, quickly losing height and weight. The world keeps getting bigger and bigger and the shepherd in front of you too. Soon you all you can see is his paws as the now absolutely enormous predator grabs you. When you are brought in front of his giant face you can see his saliva glistening while his eyes shine with hunger. 'Thanks for the meal,' is all you hear after that.";
				decrease carried of glowing mushroom by 1;
				say "     [bold type]Do you accept your fate?[roman type][line break]";
				say "     [line break]";
				say "     ([link]Y[as]y[end link]) - You let the huge beast eat you without trying to fight.";
				say "     ([link]N[as]n[end link]) - It isn't supposed to end like this, you will fight to the end.";
				if the player consents:
					say "     Not willing to fight back you accept your fate. Looks like even if you wanted to escape the beast's grip is too strong on your body – he is pushing your muscles, limbs and organs to a state of almost being crushed, making the world turn black for a moment. Your mouth is agape as you teeter at the brink of losing consciousness for good. But that smile, even wider than before showing full well those pearly white teeth, snags your mind back together with the horror of what is about to come. Now opening his mouth fully showing you the void that is about to be your future, you can't escape, you can't even think about what will happen in a moment, there is only terror in your mind after all you know all too well that this is the end.";
					say "     Before entering his mouth the beast holds you with its long tongue. The slick texture of the monster saliva and tongue are a weird yet strangely pleasurable sensation and you can't help but feel some arousal despite the situation.[if cocks of player > 0] It makes your member hard against that texture making you leak pre[else if cunts of player > 0]Your pussy gets wet as it is rubbed against that texture as your pussy is [end if]. Your oxygen-deprived mind can't tell the difference anymore, from the liquid created by your own arousal or the beast saliva that lubricate your descent. Your arousal isn't unnoticed by your captor. The giant dog takes this opportunity to play with your body inside his mouth. Licking you and throwing you around inside his mouth.";
					say "     You are always being pressed against some place of his mouth, sliding with the help of his saliva. Whenever you try to breathe hard or keep your mouth open for a slightly long time you swallow more of his saliva. Making it very hard to breathe.  The privation of oxygen makes your head float and with the arousal of his mouth it has an almost euphoric taste. Bracing yourself you cum hard [if cocks of player > 0] spilling your seed which the monster happily takes. Starting to feel some tremors like the beast is laughing at your own weakness he finally moves to swallow you.";
					say "     The horny dog's tongue pushes you to the back of his muzzle brushing against his teeth. But strongly pushing you against his palate forcing you into a dark descent. You are crushed by the walls of flesh that surrounds you. It was difficult to breathe inside his mouth but now it's pretty much impossible. You lungs burn with the lack of oxygen. Your head spins and you vision is turning darker and darker by the moment. Your muscles scream in pain with the pressure and your bones almost snap. The travel is almost hellish in nature until you finally drop into the beast's stomach. Now the hell is fully realized.";
					say "     The foul odors of the monster's last meal assault your nose and you almost puke. Holding yourself you take a look at your surroundings. It is almost pitch black but somehow you can see some of what is happening in there. You landed on a safe place. Looks like all the other places were filled with acid. There are some bones and even flesh still intact. Floating in the caustic sea. But you luck is only finite. With rising dread you hear the gurgle noises of the digestion starting. Your safe place is moving making you lose your footing and land on the acid. That is how you die. As someone's meal.";
					say "     [WaitLineBreak]";
					now battleground is "void";
					now bodyname of player is "dead";
					end the story saying "You were eaten alive!";
				else:
					say "     You try your hardest to escape his grip, but the beast was already stronger than you with your normal size, now that you are miniaturized, it doesn't look like there is much you can do. As he brings you near he's his teeth you can only see the void of his throat, waiting to swallow you down. It convulses and closes from time to time, as if expecting a nice meal, in this case you. The monster's throat looks almost sexual, with all the saliva trickling and running inside, seems like a huge sex organ that is soon to be your passage. The white teeth hold you in place and secure that you won't escape this. Then you are tossed around inside his mouth as he tries to chew your body. As he catches your leg and arm between his teeth, you feel your bones almost breaking and for a miracle your skin doesn't part. At least you aren't bleeding on the outside – if this is something to be worried about currently. You scream with agony, it wasn't supposed to end like this.";
					if a random chance of 1 in 4 succeeds:
						say "     You feel movement as his tongue starts to push you down his throat. Pressing you against his palate, there is little room to breathe with all his saliva surrounding you, making you almost drown inside the beast.  Your consciousness keeps fading in and out but you keep yourself awake for the whole experience. The slick sensation would be erotic, the feeling of your body slipping as if you were bathed in lube, the pressure touched of his flesh against your own erogenous zones give you an euphoric taste to all of this, if there wasn't a dark abyss waiting for you. You keep sliding around in his throat, swimming between phases of pain and pleasure or even both. His muscles crush and press against your whole body, but always keep pushing you down and down towards your destination. The journey feels like an eternity until you are finally tossed around in his stomach.";
						say "     The foul odor of his last meal still lingering in the air, if you can even call that air, you hold your nose in a vain chance that it will stop this, but it only opens your mouth to the taste of the air around you. There is a little more room in the beast's stomach, although not much, and you are still held in place. Left without much to do but wait your own thoughts betray you. The grim reality is that there is only one way out now, and you won't be alive at the end. He moves slightly and you feel the tremor in his stomach. The gurgle noises are a sign of what is to come, a clamor for food that only those who hunt in this land have and those who hear, like you have as their final sign. You take a look around and see the liquid surrounding you, like a death tide coming to you. You silently weep and murmur your last words, although they fall in no one's ears 'It wasn't supposed to end like this...'";
						say "     [WaitLineBreak]";
						now battleground is "void";
						now bodyname of player is "dead";
						end the story saying "You were eaten alive!";
					else:
 						say "     You can see his uvula, while he is trying to swallow you, giving you a final idea to escape. You hold on to the dog's uvula making him choke and gag. Soon enough you feel yourself being pushed up and out his mouth. You run as much as you can while the beast is dizzy with your method of escape. Soon enough you are back to your normal size. Cleaning yourself as much as you can but you will probably need a bath after this.";
			else:
				say "     Coming from inside the dark alley the German shepherd finally steps into the light giving you a better view. He is monstrously large, quite a bit bigger than the ones you found to this day. He has some darker stains in his fur from what appear to be dried blood. A complete lack of clothing gives him an almost fully feral feel. Between the dog's legs there is a huge sheath and for the looks of it, an even bigger knotted penis, even without leaving the sheath you can see it pressing against the skin, making it bulge - especially where the knot should be. Right below there are two tennis size balls ornamenting him that appear to be full of the monster's seed.";
				Say "     The bloodthirsty dog jumps in your direction, putting his arms to the ground and running like a feral monster with a dark smile, bumping into you and making you lose your breath from the strength of the impact. You are knocked over onto the floor, falling on your butt and back making you clench your teeth with the impact with the deserted road. You are left without breath as the hunter stands tall beside you, never letting you out of his sight. Looks like this is a fight you can't win. Licking his lips, holds you by the neck and says, 'Looks like I found my next meal.'";
				say "     [bold type]Do you let the beast do what he wants with you?[roman type][line break]";
				say "     [line break]";
				say "     ([link]Y[as]y[end link]) - You let the beast do what he wants with you.";
				say "     ([link]N[as]n[end link]) - You can't possibly win against him, your only hope is to flee.";
				if the player consents:
					now battleground is "void";
					say "     Laughing at you now, his grip tightens. As your vain effort in trying to breath continue, but the near-asphyxiation keeps your mind in check. Flailing around as your mind melts in stupor, your lungs burn and wheeze without the so precious air. Drool drips from your gaping mouth showing the state of your consciousness. When you are almost fainting the shep tosses you inside the alley making you crash against the wall with bone-shattering force. This brings your mind back to its alerted state, but it almost makes you throw up with the whiplash. Trying to get up on your feet you're hit again with some amazing force. Without enough time to react to his animalistic movements you are striped of your clothes showing your[bodyname of player] body in all its almost broken glory.";
					say "     The dog is quick with his movements holding your shoulders in place so you can have a better view of what is about to come. Opening his mouth, with almost sexual joy, you see it. The mouth almost like a wet pussy, dripping with his saliva, with a nice pink shade and the dark abyss at the end. If it wasn't for the pearly white teeth adorning it, reminding you of what is really about to happen with you. You are pulled inside, feeling the slickness of his touch.";
					say "     Your captor finally bites down, holding you against the tight and lubed place. Twitching, tugging and pulling you deeper towards the belly of the beast. But the pain of being penetrated by his teeth destroy any sense of pleasure in this act. You can't see much, except for some snippets of light that shines through his teeth. Your [facename of player] head is chewed while his tongue holds you in place. The slippery sensation keeps pulling you deeper inside the beast jaws, as it keeps squeezing you with his tightness. The pressure keeps building until your neck snaps, giving you a quick death. But you already knew what was going to happen after that.";
					say "     [WaitLineBreak]";
					now battleground is "Void";
					now bodyname of player is "dead";
					end the story saying "You were eaten alive!";
				else:
					say "     Trashing around in his grip you end up punching his muzzle with enough force to daze the dog giving you an opening to escape with your life intact.";
		else:
			say "     You quickly get back on your feet and run away from the hungry dog.";
	else:
		say "     While exploring the now nanite infested city you hear some noises coming from an alley beside you. You turn around trying your best to peek stealthily into the alley. Inside you find what appears to be a giant anthro German shepherd gorging himself with... Some kind of food. By his side you see a pile of clothes tossed carelessly aside. Most of them look like ordinary clothes, but there are some camo pattern uniforms in the mix - and they are all stained with what appears to be blood. This is weird - none of the shepherd you found hunting in the city were wearing anything. Why would this one have clothes, or even take them off while he eats?";
		say "     Oh god, your legs tremble with the sudden realization and you almost lose your breath, it can't be... He is eating someone!? Almost as if sniffing your fear the beast puts his muzzle to the air, starting to turn around, but you run as fast as you can from the scene.";
		say "     [line break]";
		say "     (Further options for this scene are locked for players who did not select 'more vore'. You can change your settings with the help of Trixie in the library, if you really want to see the rest.)";

Little trouble is a situation.
The sarea of Little trouble is "Outside".
When play begins:
	add Little trouble to badspots of furry;
	add Little trouble to badspots of guy;
	add Little trouble to badspots of girl;

Instead of resolving Little trouble:
	say "     While exploring the city and wandering through an alley, you find a small hole at the foot of one of the two walls flanking you. The building it belongs to looks oriental in decoration. There are some banners with Chinese letters hanging on poles from the upper stories, but they're hard to read since the colors are pretty faded. The rest of the wall you're standing in front of is painted with some red and gold design across it. On hearing some noises from inside the building, you decide to crouch down and take a peek. You can't see much of what is going on inside but clearly, something is making rhythmic banging noises in there.";
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
		now description entry is "You use the shrooms to shrink yourself until you can fit on the hole in front of you";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Give up on the idea and go back[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Try to find another way in"):
					say "[LittleExplorer]";
				if (nam is "Eat one of the mushrooms and enter through the hole"):
					say "[LittleShroom]";
				wait for any key;
		else if calcnumber is 100:
			say "Just give up on that";
			if the player consents:
				now sextablerun is 1;
				say "     Giving up on the idea of exploring this weird place you go on your merry way";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say LittleExplorer:
	say "     Going around the block you keep looking for any opening or way you could use to enter the place. Reaching the front of the building, you find out that it doesn't actually have a door anymore - or most of the front wall. A pickup truck is sticking half through the wall, dented by the bricks that showered down upon it. Seems like the driver lost control of the vehicle... possibly because he was turning, or another passenger was. A glance through the passenger side window reveals a dried cummy mess and ripped clothing all over the seating bench inside. Barely any blood thankfully, so it seems like both of the occupants walked away from the crash - in whatever form they may have been by then.";
	say "     The wrecked car blocks most of the hole it made, but there is still an opening large enough to duck into if you crouch. You do so, careful not to dislodge any more bricks or hit your head. The place is dark inside but you can make out some oriental decor, mostly in shades of red. There are a lot of chairs and tables in here, tossed around from the impact that destroyed the place. This was probably a Chinese restaurant, and a nice one at that. There is a statue of a golden dragon on the side of a half-destroyed pillar and quite a bit of broken glass scattered on the floor hints at a large aquarium next to the entrance.";
	WaitLineBreak;
	say "     Looking around a bit more, you finally discover what that noise was you heard earlier - right at the end of a hallway there is a collapsed wall, opening into what must have been a motel room next door. It looks more pink than red, and there is quite a scene unfolding on the bed inside. A male husky is pounding away at a smaller husky bitch like there is no tomorrow, his toned muscles rippling every time he pounds into the little bitch. Sometimes she almost is pushed off the bed by the sheer power in his thrusts, but the dominant dog quickly grabs her anyway he can before that happens, even gripping her neck and momentarily choking her.";
	say "     No matter how harshly she is treated, the horny girl under the rutting husky enjoys the treatment, her tongue hanging out of her mouth as she pants loudly. She is drooling at being fucked like this too, making her fur glisten wetly and creating spots on the mattress. The anthro canine's small body shivers and trembles with every pounce, and as much as her hips want to keep that nice red rod inside her, the male has other ideas as he gives in to his instincts. Even his knot is not enough to anchor the little husky to his crotch and you can see her vagina bulging and gaping every time he pulls it out of her, his seed being splattered all over her belly, crotch and legs.";
	WaitLineBreak;
	say "     That doesn't mean his erection is going down though - looks like one orgasm isn't enough to satisfy this beast. He lets go of his partner, but not actually because he wants to let her rest. Instead, the dominant dog turns towards you - somehow having become aware of your presence. His horny bed-mate reaches out for his prick to guide him back into her, but the anthro dog pushes her aside, much to her dismay. 'Come little pig,' he scoffs at you as he stands up and adds, 'Let's play!'";
	wait for any key;
	challenge "Alpha Husky";
	if fightoutcome >= 20 and fightoutcome <= 29:[lost]
		say "     Now satisfied the beast throws you out of the room and into the restaurant, you rest for a bit in the cold, uneven ground as you strength slowly comes back to your being. When you finally get on your feet again you limp to the entrance and go back to the bunker hoping the next adventure will be better.";
		move player to bunker;
	else if fightoutcome >= 30:[fled]
		say "     Running back the way you came you slamming into one of the pillars on your way out, the beast still hunt you - shouting profanities in the way. But you finally leave this place for good as you run direct to the bunker.";
		move player to bunker;
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     sending the husky running with a kick in the pants, you laugh as he flees with his tail tucked low. Still, might not be a good idea to go back into the restaurant... there is at least one more member of his pack in there, and who knows how many others. Leaving this place through the front door you can finally go back to the bunker.";
	now little trouble is resolved;

to say LittleShroom:
	say "     Eating one of your mushrooms you quickly diminish in size and soon have to crawl out of the pile of clothes and gear you had on you. Looks like you have to enter naked - better be quick so that the chance of someone coming along to find your stuff is minimal. Making your way to the hole, you can more easily look inside from your new viewpoint - the place looks like a run down kitchen from what you see. There are some supplies on the other side of the room, among the stuff several cans that you should be able to roll over to the hole and add to your possessions that way.";
	decrease carried of glowing mushroom by 1;
	if ublevel < 3: [non-ub enthusiast players]
		say "     In one corner of the kitchen lies a cum-stained mattress, with a husky bitch sleeping on it, sitting slumped back against the wall. She has her legs spread enough that you can see her pussy - its nether lips slightly spread and looking quite inviting. Yet even if you wanted to, right now you're just not in a position or size category to do anything with her. ";
	else: [more ub selected]
		say "     In one corner of the kitchen lies a cum-stained mattress, with a husky bitch sleeping on it, sitting slumped back against the wall. She has her legs spread enough that you can see her pussy - its nether lips slightly spread and looking quite inviting. That looks like it might be a fun place to go to and play around a bit if you feel like that. ";
	if vorelevel < 3:
		say "Also, there is still that pounding noise you heard earlier too, coming from the next room. You could try to find who is doing that - but then, no better not. Now that you're only about four inches high, you feel pretty vulnerable. Who knows what might happen if you walked in upon someone regular-sized busy fucking.";
	else: [more vore selected]
		say "Also, there is still that pounding noise you heard earlier too, coming from the next room. You could try to find who is doing that - but then, it might not be such a good idea to walk up to being very much larger than yourself. You might end up a snack...";
	WaitLineBreak;
	say "What now?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Grab the supplies and run";
	now sortorder entry is 1;
	now description entry is "Try to grab as many cans as you can, you need food right now";
	[]
	if ublevel > 2: [more unbirthing selected]
		choose a blank row in table of fucking options;
		now title entry is "Have fun with the sleeping husky";
		now sortorder entry is 2;
		now description entry is "Go over to the sleeping bitch and see what you can do with her";
	[]
	if vorelevel > 2: [more vore selected]
		choose a blank row in table of fucking options;
		now title entry is "Go find where the sound is coming from";
		now sortorder entry is 3;
		now description entry is "Keep going until you find where the noise is coming from";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Just go back and give up on the idea[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Grab the supplies and run"):
					say "[ChineseSupplies]";
				if (nam is "Have fun with the sleeping husky"):
					say "[ChineseUB]";
				if (nam is "Go find where the sound is coming from"):
					say "[ChineseTrouble]";
				wait for any key;
		else if calcnumber is 100:
			say "You give up on your curiosity and go back home";
			if the player consents:
				now sextablerun is 1;
				say "     You give up and go back the way you came, not worth it";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ChineseSupplies:
	say "     You dash over to the other side of the kitchen, not really caring about the decor around you, even though you are still doing your best to not wake up the sleeping dog. Soon you get to the pile of food cans (a small mountain from your viewpoint) next to what appears to be a pantry that was forced open and ransacked. The outbreak of the nanite apocalypse sure left this building and its interior in a shambles. Inside the pantry, there are various pieces of food tossed to the floor - mostly vegetables and some bread, all of it not spoiled and stale. Whoever did this was in a hurry or just didn't care about anything not to their taste. A short-sighted view given the food shortage for survivors these days.";
	say "     Dragging two of the cans that are free of dents and damage out of the pile, you turn them on their side - careful to not let them hit the floor and make noise - then roll them towards the hole you used as your entrance. This voyage would be done in a heartbeat at your normal size, but at this miniature scale it almost seems like a pilgrimage. Cracks in the floor and pieces of the ceiling that fell down and litter the floor create hazards of which you have to be mindful. But as careful as you can be there is no way to evade all the threats in the way. The can on the right bounces on a rock in your way at some point, creating a clatter of noise.";
	WaitLineBreak;
	say "     Wary about the sleeping husky on her mattress, you are quick to run and find a cupboard to hide behind. From there, you locking your gaze on the husky at the other end of the room. The dog squirms a little and open her eyes just a bit, yawning. Her large mouth (big enough to swallow you up in one gulp right night) shows an impressive array of a meat-eater's teeth, sharp and intimidating, as well as a very long tongue curling down a bit at the end. Her gaze roams over the room, seeing nothing out of the ordinary - the general state of chaos in here helps you out there - and so she soon gives in to her tiredness again. Stretching out on the mattress this time, which puts her colossal boobies to a very nice display for your miniature self, she goes back to sleep.";
	WaitLineBreak;
	say "     Breathing a sigh of relief you go back to your cans, rolling them on towards the exit and getting there without any further trouble. After pushing them out of the hole to add to your pile of gear, you wait a while until you finally feel yourself growing. Quickly getting dressed again, you put the two cans into your backpack and get ready for more adventures out in the city.";
	say "You gain 2 food!";
	increase carried of food by 2;

to say ChineseUB:
	say "     Those lips are calling you, and it's not her mouth. You carefully walk up to the sleeping husky girl, making sure not to make noise so she won't wake until you finish your busyness with her. Soon standing between her strong digitigrade legs with their gray fur, you can't help but think that they look especially beautiful from this viewpoint and size - such a strong woman makes you even hornier about what you are gonna do next. Impatiently dashing forward into the ever narrower canyon between her spread legs, you finally reach you destination a moment later.";
	say "     Her snatch is pink and pulses with the rhythm of her heart - quite fast right now actually - and her clit is engorged, shiny with the juices showing her arousal. Looks like the horny bitch has dirty dreams... so really, you're doing her a favor. What kind of person would leave her like that, wound up without release? Not you, that's for sure. Touching her pussy your hand slips against her wetness of her folds and is slides into her up to the elbow before you can do anything about it. The furry girl twitches at the sudden contact and push into her body, giving you one hell of a jump-scare... but it doesn't seem to have been enough to wake her up. Calming you heart after the accident you go back to touching her more careful and gently.";
	WaitLineBreak;
	say "     Slowly pulling her nether lips apart you can see two holes that you could penetrate if you want right now. ";
	if wslevel > 2: [more WS selected]
		say "Grinning from ear to ear you touch her urethra, just prodding to see how the dame reacts to the stimuli. She squirms for a bit but it doesn't look like this will wake her up either - so it's time to have some fun. Pushing your arm inside her urethra you gently prod and even lightly pinch her insides making the anthro dog squirm and tremble, giving you a hint on what is to come.";
		say "     You feel the liquid starting to push you arm out of the hole, the golden flow almost scalding hot at your size making your arm burn for a bit before you are flung out of her pee hole with a spurt of the liquid. Soon your whole body is drenched in her urine, the acrid taste spilling in your mouth and the pungent smell filling your lungs. Your golden rain goes on for a bit, showering your prone form in her piss. When it finally stops and you start to wipe the liquid from your eyes, you realize that the girl is not sleeping anymore. She stares down at you in the pool of her urine, then reaches out to snatch you up in her paw.";
	else: [going for the pussy]
		say "You go right to her snatch pushing your whole arm inside her once more - this time on purpose. If you were your normal size this fisting would be hard on her, but at this scale she barely reacts to it a second time, even as you wiggle your arm around a bit inside her. Defiant about not being able to affect her that much after all, you step up to the challenge and start to climb up - wanting to enter her pussy with your hole naked body. But it isn't actually that easy to do, surrounded by her slick fleshy folds you barely have anything to hold onto to pull yourself in. After a futile try or two, you eventually end up taking a running leap to jump into her opening head first, then work your way deeper, wiggling against her inner walls.";
		say "     This is actually quite a bit of fun - slippery warmth rubbing against your naked body from all sides. Soon, your front half is in what feels like a little bit of a larger space. Blinking a few times, you realize that you can actually see a little bit in here too. Do those shrooms have a side effect of enabling you to see in the dark? No matter what or how, you are able to make out the enclosed space of her vagina around you, with the inner ring of her cervix further up and back. That'll be a difficult - but definitively fun - climb, you think to yourself. While you are already mapping out the best route to take, your legs that are still sticking out between the husky's folds are suddenly grasped and pulled upon. In one quick pull, you're out of the comfy enclosure once more and in the anthro canine's paw.";
	WaitLineBreak;
	say "     Locked in her paw now and with the size and strength of a mouse you probably won't escape her easily. 'So cute,' your husky captor says as she keeps looking at you. 'Now aren't you a pleasant surprise to find,' she says with a giggle as you are being touched, prodded and squeezed every way possible by the curious bitch. Then eventually, a meaningful smile spreads over her muzzle and she says, 'You should finish what you started.' Opening her legs again and spreading her feminine folds apart with two fingers, she pushes you against them with some urgency. 'Go on - make me cum or else you will be my snack!'";
	say "     Looks like you will be used as a dildo and if you don't do a proper job you will be eaten. The sweet smell coming from her lust fills your lungs easily, given your diminutive size. Without even one second more to think you are pushed in between her soft folds, your body brushing against the engorged flesh lubed with her arousal. Once more penetrating the anthro girl, just not on your own accord this time, you are pushed and pulled in and out, rubbing up against her inner walls. Your mouth and lungs are filled with her sweet scent every time you try to breathe. After a few moments, it fells like the whole world is just her and the scent of her heat.";
	WaitLineBreak;
	say "     The bitch trembles and squirms as you are turned into her personal dildo. And not to overlook the effects on your own lust - [if cocks of player > 0]your hard member is slides pleasantly over her supple flesh[else if cunts of player > 0]your clit rubs inside the bitch making you wet yourself mixing both juices[else]your excitement builds up but without a sex organ to release you are stuck in a cycle of perpetual denying and teasing[end if]. In her eagerness to get off, the bitch actually pushes you into herself all the way, then continues to shove you further up until only her fingertips touch your feet anymore.";
	say "     She has pushed you right to the spot where you had planned to go earlier - well, not quite as your face is squished somewhat uncomfortably against the ring of her cervix... but the position definitively has its advantages. It isn't hard to snake your absolutely soaked and slippery arm in at the center of the large ring of muscle. The second arm is a bit harder, but still doable, allowing you to really get a grip and pull yourself up. Your heart races as you get a first glimpse of the inside of her womb, then stick your head through the opening, wiggling and pulling to slide in. Such efforts don't go unnoticed - the husky bitch's insides tremble and leak even more fluids in reaction.";
	WaitLineBreak;
	say "     With a final push your shoulders penetrate her cervix - being your widest point, this results in a quick slide of the rest of your body into the snug cave of her womb as her muscles quake in orgasm, squishing you with its flexible walls. Bouncing and sliding around in her innermost sanctuary, this also pushes you to - and past - the limit of your endurance, [if cocks of player > 0]making your cock shoot heavy blasts of seed right into her womb and over yourself[else if cunts of player > 0]your love juices slicking the inside of her womb[else]trembling and twitching in orgasm[end if]. Afterwards, you stay in the fetal position for a time, just resting after your breathtaking climax. After all, this is such a nice place. Warm and welcoming, you could live here forever.";
	infect "Female Husky";
	infect "Female Husky";
	infect "Female Husky";
	say "     But despite what you may have wanted, at one point the walls suddenly tremble and contract in a concerted way, sending you on a slippery slide towards her cervix - which opens just far enough to allow your exceptionally well-lubed body to slip through. Following the incline of her pussy, you arrive at the husky's folds a few heartbeats later and find yourself 'birthed' - flopping wetly onto the mattress in the cruel outside world. Panting hard, you breathe in the fresh air of the room and the all-encompassing aroma of her heat starts to leave you. Not that you actually want that in this moment - as you stagger to your feet and try to plunge into her depths once more.";
	say "     But no, the satisfied husky blocks your path with her hand, nudging you way with a firm push. 'That was fun, but you gotta let mommy rest,' she sighs out in a somewhat sleepy tone, sinking back to lean against the wall once more. A moment later, you come back to your senses more or less and start to dash towards the entrance hole to get back to your normal life after this extraordinary experience. With a last glance over your shoulder, you see the husky waving her 'child' goodbye, then doze off again.";
	WaitLineBreak;
	say "     Breathing a sigh of relief as you step outside the building and see your pile of gear still undisturbed, you wait a while until you finally feel yourself growing. Quickly getting dressed again, you get ready for more adventures out in the city.";

to say ChineseTrouble:
	say "     Looking around you soon discover the source of that noise when you slip through the five inch gap between the leaned-to door and its frame - a passage wide broad hallway for yourself right now. Now you're in the main room of what must have been some sort of restaurant before, filled with lots of tables and chairs. The wall that separated this place from the house next door has partially collapsed, creating a crude connection between the buildings. The other room looks like it belongs to a love hotel, with a pinkish pattern on the furniture and wallpaper. Above a round bed in the middle of the room, an intact mirror is attached to the ceiling, completing the impression of having stumbled into a porn movie. What is going on on top of that bed right now fits very well too.";
	say "A male husky is pounding away at a smaller husky bitch like there is no tomorrow, his toned muscles rippling every time he pounds into the little bitch. Sometimes she almost is pushed off the bed by the sheer power in his thrusts, but the dominant dog quickly grabs her anyway he can before that happens, even gripping her neck and momentarily choking her. No matter how harshly she is treated, the horny girl under the rutting husky enjoys the treatment, her tongue hanging out of her mouth as she pants loudly. She is drooling at being fucked like this too, making her fur glisten wetly and creating spots on the mattress.";
	WaitLineBreak;
	say "     The anthro canine's small body shivers and trembles with every pounce, and as much as her hips want to keep that nice red rod inside her, the male has other ideas as he gives in to his instincts. Even his knot is not enough to anchor the little husky to his crotch and you can see her vagina bulging and gaping every time he pulls it out of her, his seed being splattered all over her belly, crotch and legs. That doesn't mean his erection is going down though - looks like one orgasm isn't enough to satisfy this beast. He lets go of his partner, but not actually because he wants to let her rest. Instead, the dominant dog turns towards you - somehow having become aware of your presence.";
	say "     His horny bed-mate reaches out for his prick to guide him back into her, but the anthro dog pushes her aside, much to her dismay. 'Come little pig,' he scoffs at you as he stands up and adds, 'Let's play!' Both of them jump from the bed and start coming for you. Without proper time to react your best idea is to hide under a table, but sniffing the air with their excellent noses, the huskies are quick in finding and capturing you. Being snatched up by the male, you are turned and twisted in his grasp as the anthro dog examines your naked form from all sides. By the time he's finally done, you end up feeling more than a little dizzy.";
	WaitLineBreak;
	say "     A worrying smile and cruel expression on his face, the husky hands you over to his bitch with the words, 'Hang on to that for a moment, slut!' Then he leaves the room, kicking the door shut behind him. Now at the mercy of the female husky's whims you are touched and prodded once more, if a little more gently than with her top dog. Soon, the crafty beast comes back holding a pair of shoes laces. Looks like he has some naughty ideas about how to deal with their miniature intruder. 'Hold [if player is female]her[else]him[end if] out for me,' he growls dominantly at his bitch. It doesn't take long before your hands and feet have been tied together - tighter than you could ever hope to wind your way out of.";
	say "     Your captor then grabs you and proceeds to push his red spear between your legs, sliding you down over its length like an improvised fleshlight. Your [if cocks of player > 0]penis[else if cunts of player > 0]vagina[else]bare crotch[end if] brushes against the pulsating red prick eliciting helpless moans from you, your stomach now slippery with his pre. Pushing your whole body towards his crotch, the husky's dick soon presses against your chest [if breast size of player > 2]giving him a really small boob-job[else]rubbing your nipples making them hard[end if].";
	WaitLineBreak;
	say "     Finally his giant penis reaches your arms, as you are forced to hug it. You are finally up against his crotch all the way now, your[if cocks of player > 0] penis and[else if cunts of player > 0] vagina and[end if] ass pressing against his knot. Face pressed directly against his shaft, the husky's strong manly scent fills you lungs. You can't help but feel intoxicated by the aroma, despite the dire situation you're in right now. Then the horny dog starts using you to masturbate. Pulling and pushing you along, his cock slides hotly against your body, pulsating against your skin with his heartbeat.";
	say "     Your whole body soon is properly lubed with his pre, the degradation of being used as a sex toy increasing second by second. Your mind doesn't even recognize the danger at first as the commanding dog orders his girl to suck his cock - until her breath brushes hotly against you. Wait a minute... is she going to blow him with you still tied to his cock? Now with your mind in an alerted state you try once more to wiggle off his cock, but that only helps as far as taking your attention from the open mouth starting to envelop your head.";
	WaitLineBreak;
	say "     The horny bitch doesn't even question the guy about something like that, she must be totally submissive and ready to follow anything he commands. Her teeth brush against your hair, her tongue licking the back of your head and pressing it against the cock you are tied to against your will. Now you're stuck between a tongue and a hard dick, as the bitch keeps sucking her alpha and by extension you. Most of the time you are safe enough, with her only going halfway down his cock, but soon the alpha husky grabs the back of her head and shoves his whole dick inside her mouth, forcing her to deep-throat him and your body.";
	say "     Your head breaches the entrance of her throat, giving you a terrifying view of the depth of her gullet - one place you definitively don't want to see the other end of. The horny bastard keeps making short thrusts, forcing you to hold onto his cock with everything you got as to not slide off and be swallowed. The female husky's throat convulses and spasms as she gags in reaction to his sudden invasion, giving your experience an extra layer of claustrophobic fear as the walls keep moving and brushing against you. Then finally, the bitch pulls her muzzle off his prick to gasp for air - allowing you a tiny moment of rest.";
	WaitLineBreak;
	say "     The male husky is angry at having his pleasure interrupted no matter the cause, and he growls openly at his submissive partner, harshly grabbing her by the muzzle. 'You do what I tell you, when I tell you, slut! And that includes breathing. Now get back to work!' Wrenching her head back by the hair, the guy shoves his erection - and you - back into her mouth with a forceful push. Uh-oh, this can't be good. You quickly hold on as hard as you can. Now skull-fucking the poor girl, his movements keep getting faster and faster, increasing the strain on your body and the bindings holding you tight. While you get more than a little sore, they actually loosen little by little - but that is not a good thing. You have to hold for dear life if you don't want a one-way travel down into her digestive system.";
	WaitLineBreak;
	if a random chance of 1 in 4 succeeds:
		say "     You hold the hard shaft with all your might as it starts to throb and pulse, spurting out thick streams of cum from so close to your own head. The sucking husky gags again and for a moment, you feel like you're swimming in a sea of cum ans saliva before the girl finally swallows it all down. You're about to sigh in relief that you survived the experience when the male pulls his dick out of her mouth, then peels you off with a grin. 'You make a great sex toy,' the menacingly male laughs before adding, 'But how good are you as post-coital snack?' Holding you by your loosely tied-together wrists, he opens his mouth wide and drops you into it.";
		say "     His muscles are strong and merciless, moving you along quickly down the slippery path into his gullet. The descent hurts as you're being forced along by a rhythmic contraction, your body being squished and tumbled head over hells. There is nothing you can do except try to protect yourself at least a little bit by taking on the fetal position. Your body is still wet with the voracious dog's seed and with the new sensation of his own saliva, you soon drop into the huge beast's stomach. Oh fuck, there must be some way out of this?!";
		say "[line break]";
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
		now description entry is "Hopefully you won't be digested if you're quick";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - Wait your timely demise[as]100[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if (nam is "Kick him in the stomach (from the inside)"):
						say "[AlphaKick]";
					if (nam is "Try to climb out"):
						say "[AlphaClimb]";
					if (nam is "Dive down and seek the other exit"):
						say "[AlphaDive]";
					wait for any key;
			else if calcnumber is 100:
				say "Wait for your timely demise.";
				if the player consents:
					now sextablerun is 1;
					say "     Giving up on the idea of leaving this you wait for you death - which comes in due time.";
					now battleground is "void";
					now tailname of player is "dead";
					now facename of player is "dead";
					now skinname of player is "dead";
					now bodyname of player is "dead";
					now cockname of player is "dead";
					end the story saying "You were eaten alive!";
					wait for any key;
				else:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else:
		say "     Without strength left to hold on any longer, you slide off his cock as the male husky pulls back suddenly. With nothing at all to hold on (and you being tied up anyways), the next thing you see is her gullet as you slide down at a break-neck speed. Meanwhile, the alpha feels the difference and takes his dick from his slut's mouth. You can hear his far-off growl of, 'Hey, where is that little fucker?' When he realizes that his partner swallowed you, he huffs, 'Shame, that felt pretty nice.'";
		say "     Going down her gullet with a flood of cum and saliva, her muscles keep contracting in a wave, always pushing you further down. Given the circumstances, the voyage isn't actually that unpleasant, which might have something to do with all the slippery fluids smoothing out your ride. It almost feels pleasurable to have your naked body slide over her warm soft flesh, like a giant water-slide. But that doesn't last forever as you finally fall into her stomach with all the jizz. The aroma of the place rapidly puts your head back where it should be - thinking about escape. If you don't digestion awaits you. Hastily, you look around for options on how can still save yourself now.";
		say "[line break]";
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
		now description entry is "Hopefully you won't be digested if you're quick";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]100 - It's hopeless anyway, just wait your end.[as]100[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if (nam is "Try to climb out"):
						say "[BitchClimb]";
					if (nam is "Dive down and seek the other exit"):
						say "[BitchDive]";
					wait for any key;
			else if calcnumber is 100:
				say "It's hopeless anyway, just wait for your end.";
				if the player consents:
					now sextablerun is 1;
					say "     Giving up on any hope of survival you sit down - breathing the polluted air and being squished by her muscles from the inside of her stomach. The end will take just a few more moments...";
					now battleground is "void";
					now tailname of player is "dead";
					now facename of player is "dead";
					now skinname of player is "dead";
					now bodyname of player is "dead";
					now cockname of player is "dead";
					end the story saying "You were eaten alive!";
					wait for any key;
				else:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say AlphaKick:
	if a random chance of 1 in 4 succeeds:
		say "     With a huge wind-up you kick him with all the strength you have left, making your surroundings shake a bit. But before you can follow up, a more powerful quake goes through the husky's insides, with the wall of his stomach bulging out suddenly to throw you to the other side of the chamber and land in a puddle of stomach acid. Flinching in pain, you realize what happened - he must have punched his own stomach. You smile at the thought and drag yourself to your feet again, then pummel his insides some more. This won't save you, but at least the bastard is gonna have indigestion.";
		WaitLineBreak;
		now battleground is "void";
		now tailname of player is "dead";
		now facename of player is "dead";
		now skinname of player is "dead";
		now bodyname of player is "dead";
		now cockname of player is "dead";
		end the story saying "You were eaten alive!";
	else:
		say "     With a huge wind-up you kick him with all the strength you have left, making your surroundings shake a bit - then a lot! Suddenly everything shifts on its side and you are thrown about, then violently ejected back the way you came in. After another voyage through the gullet of the husky, you fall onto the ground in a wash of vomit. Looks like your well-aimed hit made him throw up! With the predator on all fours, retching violently, you have just enough time to get your own bearings and run into the other room.";
		say "     It doesn't take long before he comes hunting for you in a wild rage, but the chaos in the ransacked kitchen and his impatience allows you to hide in between the rubble, trash and cracks in the floor, eventually making it safely to the hole you entered the building through. With the beastly husky still shouting angrily to his bitches to find his escaped snack, you lean against the outer wall in exhaustion and wait for the shrinking mushroom to wear off. Best not to remain here for too much longer, as he might find the hole and come around the building, so you quickly snatch up your stuff and run away naked, only stopping to get dressed when you're several blocks away.";
		now little trouble is resolved;

to say AlphaClimb:
	if a random chance of 1 in 4 succeeds:
		say "     Well, it's worth a try at least. You try your best to hang on something, anything. The dog's stomach is compressing, looks like the digestion is about to start. 'Come on,' you scream inside his belly, 'Give me a chance.' And as if a higher power heard your plea, you finally manage to hold on to something and pull yourself a bit further up. With new-found determination after that first success work at pulling yourself up, just in time before the rising level of acid burns the soles of your feet. It is hard work, but you are getting out of here!";
		say "     The walls of his gullet are slick and often twitch, several times you feeling as if he is trying to gulp you down again. But you persevere, holding on anything you can get a grip. Finally you're back in his muzzle and run down the squishy length of his tongue to jump out through his parted teeth - only to land in the husky's raised paw. 'So my prey wants to be properly chewed before being my meal,' he says and gives a sadistic laugh, then adds, 'Don't worry, now you will be a proper meal.' You are tossed back in his mouth, but this time you are chewed down before being swallowed.";
		WaitLineBreak;
		now battleground is "void";
		now tailname of player is "dead";
		now facename of player is "dead";
		now skinname of player is "dead";
		now bodyname of player is "dead";
		now cockname of player is "dead";
		end the story saying "You were eaten alive!";
	else:
		say "     Well, it's worth a try at least. You try your best to hang on something, anything. The dog's stomach is compressing, looks like the digestion is about to start. 'Come on,' you scream inside his belly, 'Give me a chance.' And as if a higher power heard your plea, you finally manage to hold on to something and pull yourself a bit further up. With new-found determination after that first success work at pulling yourself up, just in time before the rising level of acid burns the soles of your feet. It is hard work, but you are getting out of here!";
		say "     Feeling something crawling up his gullet can't be comfortable for the husky either, and before long the tickling sensation in his insides makes him throw up! Being violently ejected on a tide of rising vomit, you fall onto the ground in a foul-smelling wash of his stomach contents. With the predator on all fours, retching violently, you have just enough time to get your own bearings and run into the other room.";
		WaitLineBreak;
		say "     It doesn't take long before he comes hunting for you in a wild rage, but the chaos in the ransacked kitchen and his impatience allows you to hide in between the rubble, trash and cracks in the floor, eventually making it safely to the hole you entered the building through. With the beastly husky still shouting angrily to his bitches to find his escaped snack, you lean against the outer wall in exhaustion and wait for the shrinking mushroom to wear off. Best not to remain here for too much longer, as he might find the hole and come around the building, so you quickly snatch up your stuff and run away naked, only stopping to get dressed when you're several blocks away.";
		now little trouble is resolved;

to say AlphaDive:
	if a random chance of 1 in 4 succeeds:
		say "     You jump in the acid, ignoring all the pain. It makes your flesh burn at it is eaten away while you try to find any opening deeper into his digestive tract - in vain. Soon, you pass out from the pain and are quickly digested without a trace.";
		WaitLineBreak;
		now battleground is "void";
		now tailname of player is "dead";
		now facename of player is "dead";
		now skinname of player is "dead";
		now bodyname of player is "dead";
		now cockname of player is "dead";
		end the story saying "You were eaten alive!";
	else:
		say "     You jump in the acid, ignoring all the warnings in your brain saying otherwise. It burns a lot but you continue doing your best to speed up your passage through his digestive system, until you are finally 'birthed' through his tight asshole. When you fall down you have a small window to escape your 'parent' before he realizes what is going on. Luckily he is busy fucking his bitch again and so you are able to reach your point of entrance before being caught once more. With the beastly husky still shouting angrily to his bitches to find his escaped snack, you lean against the outer wall in exhaustion and wait for the shrinking mushroom to wear off. Soon, you're back to your original size and get dressed again, then get out of the area at a run.";
		now little trouble is resolved;

to say BitchClimb:
	if a random chance of 1 in 4 succeeds:
		say "     Looking at the hole you just went trough, the realization strikes your mind. There are only two places connected to where you are now, up and down. And you don't think you will survive the rest of the way down anyway, so your only option is trying to go back from where you came. Getting back on your feet, you throw your hands up. Trying you best to grab at anything at all. You first attempt is met with a failure, but the second you can hold yourself up on something. No time to figure out how you are climbing, if you want to survive this you have to continue.";
		say "     Pushing aside her flesh to make your way proves harder than any place you climbed combined with any hole you crawled inside. Your body, still slippery with the cum and the fluids from the bitch makes you slide. But still you make your way to her muzzle, finally seeing the outside world again. Hope comes back to your heart... and are quickly shattered, as the alpha is waiting for you. 'Look at that little rascal,' he says looking directly at you inside her mouth. 'Thought you'd make it, but no - you're still going down!' As the husky laughs, the bitch clamps her teeth shut, closing the last sliver of light you are ever going to see, then throws her head back and swallows you again. This time, you don't have the energy to even struggle anymore...";
		WaitLineBreak;
		now battleground is "void";
		now tailname of player is "dead";
		now facename of player is "dead";
		now skinname of player is "dead";
		now bodyname of player is "dead";
		now cockname of player is "dead";
		end the story saying "You were eaten alive!";
	else:
		say "     Looking at the hole you just went trough, the realization strikes your mind. There are only two places connected to where you are now, up and down. And you don't think you will survive the rest of the way down anyway, so your only option is trying to go back from where you came. Getting back on your feet, you throw your hands up. Trying you best to grab at anything at all. You first attempt is met with a failure, but the second you can hold yourself up on something. No time to figure out how you are climbing, if you want to survive this you have to continue. Pushing aside her flesh to make your way proves harder than any place you climbed combined with any hole you crawled inside.";
		WaitLineBreak;
		say "     Your body, still slippery with the cum and the fluids from the bitch makes you slide. Until you feel her muscles pushing you up with extreme strength, soon you are met with some of her digestive fluids and thrown out of her mouth while she gasps for air from the way you escaped. The male dog sees you in the pile of bile, but you are quick back on your feet and is running to a crack in the wall next to you. The male husky chases you for a while, almost hitting the wall as you enter the hole. Hearing grows and shouts you keep running where you can, his arm is pushed inside the gap in the wall with you, but just slow enough that you can outrun it with easy.";
		say "     Finally on the other side of the way you took, luck smiles upon you as you can see the sky again and near you there is your stuff. Now you just need to wait the effects of the shrinking shrooms to end, and you can go back to your life on the city";
		now little trouble is resolved;

to say BitchDive:
	if a random chance of 1 in 4 succeeds:
		say "     You jump in the acid, ignoring all the pain. It makes your flesh burn at it is eaten away while you try to find any opening deeper into her digestive tract - in vain. Soon, you pass out from the pain and are quickly digested without a trace.";
		WaitLineBreak;
		now battleground is "void";
		now tailname of player is "dead";
		now facename of player is "dead";
		now skinname of player is "dead";
		now bodyname of player is "dead";
		now cockname of player is "dead";
		end the story saying "You were eaten alive!";
	else:
		say "     You jump in the acid, ignoring all the warnings in your brain saying otherwise. It burns a lot but you continue doing your best to speed up your passage through her digestive system, until you are finally 'birthed' through her tight asshole. When you fall down you have a small window to escape your 'parent' before she realizes what is going on. Luckily she is busy being pounded by her master and so you are able to reach your point of entrance before being caught once more. With the beastly husky still shouting angrily to his bitches to find the escaped snack, you lean against the outer wall in exhaustion and wait for the shrinking mushroom to wear off. Soon, you're back to your original size and get dressed again, then get out of the area at a run.";
		now little trouble is resolved;

Shrinking Shrooms ends here.
