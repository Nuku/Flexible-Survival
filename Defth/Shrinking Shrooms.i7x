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
		otherwise:
			say "     There is no need to pick them right now. You leave this place behind (for now) and continue exploring the city.";
			now MushroomCaveVisited is 1;
	otherwise:
		say "     Returning to the dark alley, you pay a visit to the little cave in the ruined building again. Stepping up to the hole in the wall, you are stuck once again by the otherworldly beauty of the miniature land spreading out in front of you. Some of the trees appear to have grown a bit, but no more than a dandelion. Meanwhile the goop still flows silently and slowly to the sewer although it does seem to be smaller than the first time you saw it. Maybe someday this whole scene will grow back to normal and nothing that you saw will be witnessed by someone else.";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - You grab some of the mushrooms they might prove useful in the future.";
		say "     ([link]N[as]n[end link]) - Nah, eating stuff growing next to glowing sludge might be a bad idea and besides you won't need them anyway.";
		if player consents:
			say "     [line break]";
			say "     You carefully pick some of the mushrooms and put them into your backpack. Sighing happily that you didn't shrink while doing so.";
			increase carried of Glowing mushroom by 3;
		otherwise:
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

Understand "mushroom" as glowing mushroom.
Understand "shrooms" as glowing mushroom.
Understand "glowing shrooms" as glowing mushroom.

Section 3 - Scene

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
				say "      Coming from inside the dark alley the German shepherd finally steps into the light giving you a better view. He is monstrously large, quite a bit bigger than the ones you found to this day. He has some darker stains in his fur from what appear to be dried blood. A complete lack of clothing gives him an almost fully feral feel. Between the dog's legs there is a huge sheath and for the looks of it, an even bigger knotted penis, even without leaving the sheath you can see it pressing against the skin, making it bulge - especially where the knot should be. Right below there are two tennis size balls ornamenting him that appear to be full of the monster's seed.";
				Say "      The bloodthirsty dog jumps in your direction, putting his arms to the ground and running like a feral monster with a dark smile, bumping into you and making you lose your breath from the strength of the impact. You are knocked over onto the floor, falling on your butt and back making you clench your teeth with the impact with the deserted road. You are left without breath as the hunter stands tall beside you, never letting you out of his sight. Looks like this is a fight you can't win. Licking his lips, holds you by the neck and says, 'Looks  like I found my next meal.'"; 
				say "     Sniffing you, the dog quickly pushes his muzzle in your backpack - looks like something caught his interest. With an impish smile he quickly grabs the glowing mushrooms that you had. Looks like this dog does know what they do to those who eat them. Holding the mushrooms with one hand and pulling you by the neck with the other he shoves them into your mouth, trying to force you to eat it. Since you won't cooperate he holds your [facename of player]nose depriving you of oxygen. Try as you might you can't escape his hold and you are starting to need air quick. Opening you mouth just for a bit gives the strong dog enough time to shove the shrooms down your throat, forcing you to eat and swallow them. 'Stupid prey,' the shepherd says with a winning smile. 'You should know your place, being my meal is the best end for someone like you.'"; 
				say "     As soon as you swallow you feel your body changing, quickly losing height and weight. The world keeps getting bigger and bigger and the shepherd in front of you too. Soon you all you can see is his paws as the now absolutely enormous predator grabs you. When you are brought in front of his giant face you can see his saliva glistening while his eyes shine with hunger. 'Thanks for the meal,' is all you hear after that."; 
				say "     [bold type]Do you accept your fate?[roman type][line break]"; 
				say "     [line break]"; 
				say "     ([link]Y[as]y[end link]) - You let the huge beast eat you without trying to fight."; 
				say "     ([link]N[as]n[end link]) - It isn't supposed to end like this, you will fight to the end."; 
				if the player consents: 
					say "     Not willing to fight back you accept your fate. Looks like even if you wanted to escape the beast's grip is too strong on your body – he is pushing your muscles, limbs and organs to a state of almost being crushed, making the world turn black for a moment. Your mouth is agape as you teeter at the brink of losing consciousness for good. But that smile, even wider than before showing full well those pearly white teeth, snags your mind back together with the horror of what is about to come. Now opening his mouth fully showing you the void that is about to be your future, you can't escape, you can't even think about what will happen in a moment, there is only terror in your mind after all you know all too well that this is the end."; 
					say "     Before entering his mouth the beast holds you with its long tongue. The slick texture of the monster saliva and tongue are a weird yet strangely pleasurable sensation and you can’t help but feel some arousal despite the situation.[if cocks of player >  0] It makes your member hard against that texture making you leak pre[otherwise if cunts of player > 0]Your pussy gets wet as it is rubbed against that texture as your pussy is [end if]. Your oxygen-deprived mind can't tell the difference anymore, from the liquid created by your own arousal or the beast saliva that lubricate your descent. Your arousal isn't unnoticed by your captor. The giant dog takes this opportunity to play with your body inside his mouth. Licking you and throwing you around inside his mouth."; 
					say "     You are always being pressed against some place of his mouth, sliding with the help of his saliva. Whenever you try to breathe hard or keep your mouth open for a slightly long time you swallow more of his saliva. Making it very hard to breathe.  The privation of oxygen makes your head float and with the arousal of his mouth it has an almost euphoric taste. Bracing yourself you cum hard [if cocks of player > 0] spilling your seed which the monster happily takes. Starting to feel some tremors like the beast is laughing at your own weakness he finally moves to swallow you."; 
					say "     The horny dog's tongue pushes you to the back of his muzzle brushing against his teeth. But strongly pushing you against his palate forcing you into a dark descent. You are crushed by the walls of flesh that surrounds you. It was difficult to breathe inside his mouth but now it's pretty much impossible. You lungs burn with the lack of oxygen. Your head spins and you vision is turning darker and darker by the moment. Your muscles scream in pain with the pressure and your bones almost snap. The travel is almost hellish in nature until you finally drop into the beast’s stomach. Now the hell is fully realized."; 
					say "     The foul odors of the monster's last meal assault your nose and you almost puke. Holding yourself you take a look at your surroundings. It is almost pitch black but somehow you can see some of what is happening in there . You landed on a safe place. Looks like all the other places were filled with acid. There are some bones and even flesh still intact. Floating in the caustic sea. But you luck is only finite. With rising dread you hear the gurgle noises of the digestion starting. Your safe place is moving making you lose your footing and land on the acid. That is how you die. As someone's meal."; 
					say "     [WaitLineBreak]";
					now battleground is "void";
					now bodyname of player is "dead";
					end the game saying "You were eaten alive!"; 
				otherwise: 
					say "     You try your hardest to escape his grip, but the beast was already stronger than you with your normal size, now that you are miniaturized, it doesn't look like there is much you can do. As he brings you near he's his teeth you can only see the void of his throat, waiting to swallow you down. It convulses and closes from time to time, as if expecting a nice meal, in this case you. The monster's throat looks almost sexual, with all the saliva trickling and running inside, seems like a huge sex organ that is soon to be your passage. The white teeth hold you in place and secure that you won't escape this. Then you are tossed around inside his mouth as he tries to chew your body. As he catches your leg and arm between his teeth, you feel your bones almost breaking and for a miracle your skin doesn't part. At least you aren't bleeding on the outside – if this is something to be worried about currently. You scream with agony, it wasn't supposed to end like this."; 
					if a random chance of 1 in 4 succeeds: 
						say "     You  feel movement as his tongue starts to push you down his throat. Pressing you against his palate, there is little room to breathe with all his saliva surrounding you, making you almost drown inside the beast.  Your consciousness keeps fading in and out but you keep yourself awake for the whole experience. The slick sensation would be erotic, the feeling of your body slipping as if you were bathed in lube, the pressure touched of his flesh against your own erogenous zones give you an euphoric taste to all of this, if there wasn't a dark abyss waiting for you. You keep sliding around in his throat, swimming between phases of pain and pleasure or even both. His muscles crush and press against your whole body, but always keep pushing you down and down towards your destination. The journey feels like an eternity until you are finally tossed around in his stomach.";
						say "     The foul odor of his last meal still lingering in the air, if you can even call that air, you hold your nose in a vain chance that it will stop this, but it only opens your mouth to the taste of the air around you. There is a little more room in the beast’s stomach, although not much, and you are still held in place. Left without much to do but wait your own thoughts betray you. The grim reality is that there is only one way out now, and you won't be alive at the end. He moves slightly and you feel the tremor in his stomach. The gurgle noises are a sign of what is to come, a clamor for food that only those who hunt in this land have and those who hear, like you have as their final sign. You take a look around and see the liquid surrounding you, like a death tide coming to you. You silently weep and murmur your last words, although they fall in no one's ears 'It wasn't supposed to end like this...'";
						say "     [WaitLineBreak]";
						now battleground is "void";
						now bodyname of player is "dead";
						end the game saying "You were eaten alive!"; 
					otherwise: 
 						say "     You can see his uvula, while he is trying to swallow you, giving you a final idea to escape. You hold on to the dog's uvula making him choke and gag. Soon enough you feel yourself being pushed up and out his mouth. You run as much as you can while the beast is dizzy with your method of escape. Soon enough you are back to your normal size. Cleaning yourself as much as you can but you will probably need a bath after this.";
			otherwise:
				say "      Coming from inside the dark alley the German shepherd finally steps into the light giving you a better view. He is monstrously large, quite a bit bigger than the ones you found to this day. He has some darker stains in his fur from what appear to be dried blood. A complete lack of clothing gives him an almost fully feral feel. Between the dog's legs there is a huge sheath and for the looks of it, an even bigger knotted penis, even without leaving the sheath you can see it pressing against the skin, making it bulge - especially where the knot should be. Right below there are two tennis size balls ornamenting him that appear to be full of the monster's seed.";
				Say "      The bloodthirsty dog jumps in your direction, putting his arms to the ground and running like a feral monster with a dark smile, bumping into you and making you lose your breath from the strength of the impact. You are knocked over onto the floor, falling on your butt and back making you clench your teeth with the impact with the deserted road. You are left without breath as the hunter stands tall beside you, never letting you out of his sight. Looks like this is a fight you can't win. Licking his lips, holds you by the neck and says, 'Looks  like I found my next meal.'";
				say "     [bold type]Do you let the beast do what he wants with you?[roman type][line break]";
				say "     [line break]"; 
				say "     ([link]Y[as]y[end link]) - You let the beast do what he wants with you."; 
				say "     ([link]N[as]n[end link]) - You can't possibly win against him, your only hope is to flee."; 
				if the player consents: 
					now battleground is "void";
					say "     Laughing at you now, his grip tightens. As your vain effort in trying to breath continue, but the near-asphyxiation keeps your mind in check. Flailing around as your mind melts in stupor, your lungs burn and wheeze without the so precious air. Drool drips from your gaping mouth showing the state of your consciousness. When you are almost fainting the shep tosses you inside the alley making you crash against the wall with bone-shattering force. This brings your mind back to its alerted state, but it almost makes you throw up with the whiplash. Trying to get up on your feet you're hit again with some amazing force. Without enough time to react to his animalistic movements you are striped of your clothes showing your[bodyname of player] body in all its almost broken glory."; 
					say "     The dog is quick with his movements holding your shoulders in place so you can have a better view of what is about to come. Opening his mouth, with almost sexual joy, you see it. The mouth almost like a wet pussy, dripping with his saliva, with a nice pink shade and the dark abyss at the end. If it wasn't for the pearly white teeth adorning it, reminding you of what is really about to happen with you. You are pulled inside, feeling the slickness of his touch."; 
					say "     Your captor finally bites down, holding you against the tight and lubed place. Twitching, tugging and pulling you deeper towards the belly of the beast. But thepain of being penetrated by his teeth destroy any sense of pleasure in this act. You can't see much, except for some snippets of light that shines through his teeth. Your [facename of player] head is chewed while his tongue holds you in place. The slippery sensation keeps pulling you deeper inside the beast jaws, as it keeps squeezing you with his tightness. The pressure keeps building until your neck snaps, giving you a quick death. But you already knew what was going to happen after that.";
					say "     [WaitLineBreak]";
					now battleground is "Void";
					now bodyname of player is "dead";
					end the game saying "You were eaten alive!"; 
				otherwise: 
					say "     Trashing around in his grip you end up punching his muzzle with enough force to daze the dog giving you an opening to escape with your life intact."; 
		otherwise: 
			say "     You quickly get back on your feet and run away from the hungry dog."; 
	otherwise: 
		say "     While exploring the now nanite infested city you hear some noises coming from an alley beside you. You turn around trying your best to peek stealthily into the alley. Inside you find what appears to be a giant anthro German shepherd gorging himself with... Some kind of food. By his side you see a pile of clothes tossed carelessly aside. Most of them look like ordinary clothes, but there are some camo pattern uniforms in the mix - and they are all stained with what appears to be blood. This is weird - none of the shepherd you found hunting in the city were wearing anything. Why would this one have clothes, or even take them off while he eats?"; 
		say "     Oh god, your legs tremble with the sudden realization and you almost lose your breath, it can't be... He is eating someone!? Almost as if sniffing your fear the beast puts his muzzle to the air, starting to turn around, but you run as fast as you can from the scene."; 
		say "     [line break]"; 
		say "     (Further options for this scene are locked for players who did not select 'more vore'. You can change your settings with the help of Trixie in the library, if you really want to see the rest.)"; 

Shrinking Shrooms ends here.
