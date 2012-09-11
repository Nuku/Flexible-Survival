Misc 9 by Kaleem mcintyre begins here.

Section 1 - Stranger

Hanu is a situation. The sarea of Hanu is "Zoo".

Instead of resolving a Hanu:
	Say "Coming to one of the less exposed area of the zoo you find yourself coming across a large... monkey mutant... sitting quietly on top of a rock meditating. 'About time you showed up.' The voice of the simian catches you slightly off guard as you find the other speaking to you while keeping his eyes close. 'Yes, I'm talking to you. Come on over here so we can start training.'";
	Say "Looking at the other, with his long tail curled around the left side of his body, his tanned fur groomed perfectly into place along his lithe, but powerful body, and his face lightly smirking into your direction do you want to [italic type]train[roman type] with this strange simian?";
	If player consents:
		Say "Deciding what the hey you move over to where the other creature is, hopping over the fence that separates you both as you do, and then step over to the monkey man. What happens next turns out to be something you hadn't been expecting because instead of sex... you wind up finding yourself being asked several strange questions by the other, whose name happens to Hanu, and then being shown several strange yoga positions, which you find yourself going through with some problems. The next hour and a half of your life ends up being spent with Hanu meditating, a strange practice in and of itself, all things considered. However, end up finding yourself very refreshed once the moment is done.";
		Say "'That was fun.' Hanu slowly uncrosses his legs and then uses his tail to lift himself up onto his feet. 'I think that I'm going to go and head back for home now. I hope you take well care of yourself.' And with that Hanu springs up over your head up onto the concrete wall that divides the zoo from the outside world, turns to wave at you and then disappears out of sight. Not sure what that was about you mildly wonder who that crazy monkey guy was.";
		Now Hanu is resolved;
		decrease libido of player by 10;
		if libido of player < 0, now libido of player is 0;
		increase humanity of player by 20;
		if humanity of player > 100, now humanity of player is 100;
		Increase maxhp of player by 5;
		Increase score by 5;
	Otherwise:
		Say "Waving the other off you turn and head about your way without another word spoken.";
		Now Hanu is resolved;


Section 2 - Mysterious

Clotho is a situation. 
The sarea of Clotho is "Red". 
Atropis is resolved;

Instead of resolving a Clotho:
	Say "'Hold on! Don't move! Just stay right where you are!' It's the volume of the words being spoken that stops you more than the words themselves. Not knowing what's happening though you look around, after freezing in place, to see what the hoopla is on about. What you find is a very... unusual human looking woman coming over to you and then trying to pull you out of your clothes. Not really understanding you wave the woman, who is less [']human['] than you had thought as she possesses two fluffy cat ears atop her head and a silver chain with a emblem of some kind of cat insignia embroidered into the front of a pendant hanging onto the chain itself, off as best you can. 'Oh will you stop moving around so much? I'm trying to get you out of these clothes so I can take your measurements.'";
	Say "Asking the other woman who she is nets you a grumpy growl from the other. 'My name's not as important as the fact that I have something I need to make for you. Now hold still.' Not sure you find yourself letting the other woman do as she pleases, which ultimately nets you being stripped, measured, fondled in certain places you really don't want to be, and finally allowed to put back on your clothes after about an hour's time. 'As I thought, you are exactly what I need. [bold type]Atropis[roman type] back at our [bold type]high rise[roman type] condo is going to be so stoked about this!' The feline eared woman squeals and then rushes off like a shot leaving you thoroughly confused.";
	Increase score by 1;
	Now Clotho is resolved;
	Now Atropis is unresolved;


Section 3 - Crone 

Atropis is a situation. 
The sarea of Atropis is "High".

Instead of resolving Atropis:
	Say "When something small but speedy comes up to knock you into your chest you blink in surprise. Looking down you find a small kitten girl blinking up with very wide jade eyes up into your face. Smiling and then helping the other to stand on her own you ask the other is she lost before getting a quick shake of the head.";
	Say "Feeling somewhat like you should do something for the kitten you reach back behind you to fish out some provisions from inside of your pack. Graciously you offer what you have to the small feline who hesitantly takes it with a small, unsure upturn of her lips. After telling the other to be more careful next time you then offer to take her back home. 'No thank you. My big sister is on her way to get me.' Raising your head to look around the area you give the kitten, who is now munching on the food you just gave her, a curious look.";
	Say "Just as you are about to ask the little one if she's sure a cough from behind you makes you turn your head back around side of you. What you find at your back just so happens to be a buxom looking panther woman dressed in a flowing black gown staring you down with a cocksure grin onto her stunning feline face. 'She's sure because I'm right here, darling.' In front of you the little kitten meows happily as she runs around your left side to rush over to the much taller black cat. 'I appreciate you trying to look out for Lachesis here, but it's not necessary.' Gaping slightly you cautiously nod to the unnamed pantheress.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more'] 
	Say "Watching as the little kitten hugs herself into her [']sister's['] leg you try not to let your mind wander as you look between the two in astonishment. Not having a reason to doubt the sincerity of the panthress though, especially when the younger feline begins to talk animatedly you to older female, you prepare to head off on your way without a word. However, before you can you find yourself being stopped when the woman grunts into her throat again.";
	Say "'Clotho wanted me to give you this.' The panthress then hands you a pink box wrapped up in silver string. Hesitantly thanking the other for the gift you ask her who Clotho is. 'My other little sister.' And with that the panthress turns to walk away with the little kitten standing next to her following at her side. Before the two are get too far away you watch as the feline in black takes the kitten's hand, something to which the smaller feline beams in joy over.";
	Say "Not sure what that was on about, you reach up to scratch at your head before shrugging all the same. Just as you are about to move yourself along you find nearly dropping the pink box in between your hands, having almost completely forgotten about the thing. Moving your [bodyname of player] fingers over the silver twine keeping the package closed you remove the material, open the container... and then blush hotly as you find yourself looking at a stunningly beautiful silver dress looking back up at you. A single card with your name, height and other measurements written down onto the front is the only proof that this piece of apparel is really meant for you.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	Say "But why in hell's bells would someone...??? Not sure you don't bother to think on it long as you simply slam the top back over the box and then head on your way. Meanwhile, somewhere faraway, three sisters are cracking up off a joke they're sharing right about now.";
	Add "silver dress" to invent of player;
	Increase score by 5;
	Now Atropis is resolved;


Section 4 - The Cap

The Cap is a situation. The level of The Cap is 5.
The sarea of The Cap is "Museum".
When play begins:
	Add The Cap to badspots of furry;
	Add The Cap to badspots of hermaphrodite;

Instead of resolving a The Cap:
	Say "Feeling as though something is drawing you inside of the museum you find yourself walking into the Egyptian exhibit area of the once prominent edifice without exactly knowing why. Looking around to make sure that nothing dangerous is lurking throughout the hallways, as something usually is given the craziness happening with the city, you find that luck is with you today as there is no one around. Breathing a sigh of relief you continue following this dogged sensation tugging at you all the way until you come to an ornamental Egyptian glass case... which just so happens to be open.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	Say "Not knowing why you reach a hand inside of the case for one of the statues and then pick it up. Looking over the falcon headed artifact you find yourself gaping at it in awe. Though you're not really an expert at hieroglyphs or anything, the characters wrapped around the statue seem... somewhat familiar to you. A growl from behind you has you whipping around just in time to see a large Cerberus Herm baring three sets of ivory fangs into your direction.";
	Say "Obviously the sphinx woman at the front sent a guard dog to watch over the statue. By the look of the creature's six eyes glowering at you, you get the sudden impression that you've just made a key mistake in touching the statue. Maybe you should put it back? (Y=Yes, N=No)";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	If player consents:
		Say "Telling the Cerberus that you were just browsing you chuckle nervously before slowly setting the statue back into the case. Seeing that you're not here to steal the Cerberus comes over, hefts you up by your collar and then casually walks you out of the Museum. When the beast tosses you out onto your head you get the feeling that would-be thieves are not wanted inside of the Museum. You make a mental note to yourself that you're going to avoid that particular case for now on. Right after you get an ice pack for the headache growing inside of your noggin'.";
		Decrease hp of player by 6;
		If hp of player < 1, now hp of player is 1;
		now battleground is "void";
		Now The Cap is resolved;
	Otherwise:
		Say "Not knowing why you tug the statue tight into your chest and then chuckle nervously up at the three headed guard dog before darting out the backside of the room.";
		let bonus be (( the Dexterity of the player minus 5 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:
			say "Running as fast as your [bodyname of player] feet can take you, you rush through the narrow twist and turns of the Museum's hallways and then out of the rear entrance of the building, leaving your three-headed pursuer confusedly trying to follow after your scent. Moving down the alleyway and then on your way back to the bunker you accidently [one of]trip over the side of the curb[or]slip on a can[or]slip over something hard[or]get your feet tangled over a discarded pair of pants[at random] and end up accidently dropping the statue you're holding onto.";
			say "Cursing your luck you watch as the falcon headed artifact sails through the air and then crashes onto the ground, breaking into a hundred different pieces. Sighing at the loss, even though you don't understand why, you find yourself gaping in awe as you look to see a bright red... baseball cap... lying admits the rubble of the statue. Finding your balance you cautiously step over to the cap and then reach down to pick up the headwear. If things weren't already weird enough as they are you find that the cap bears the first letter of your name.";
			say "Not sure you understand what's going on, you shrug and then flip the headwear onto your head. Seeing that the baseball cap is a perfect fit you step over the ruined statue and then head off onto your way. You never notice how the letter on the hat spark for a second, as you can feel nothing out of place on top of your head, before going silent.";
			add "red cap" to invent of player;
			increase score by 10;
			now The Cap is resolved;
			Move player to the Bunker;
		otherwise:
			say "Trying to make your way through the hallways of the Museum as fast as you can you end up getting caught by another Cerberus Herm right as the one chasing you rounds the corner you had just tried to lose it at. Flipping your head between both creatures you end up cursing your luck as the two feral guardians begin to close in on you.";
			challenge "Cerberus Herm";
			if fightoutcome >= 10 and fightoutcome <= 19:
				challenge "Cerberus Herm";
				if fightoutcome >= 10 and fightoutcome <= 19:
					say "Defeating the two canine guardians you make your way out of the Museum and then down the streets back towards the bunker. Of course, as luck would have it, you end up [one of]tripping over the side of the curb[or]slipping on a can[or]slipping over something hard[or]getting your feet tangled over a discarded pair of pants[at random] and accidently dropping the statue you are holding onto.";
					say "Cursing you can only watch as the falcon headed artifact sails through the air and then crashes onto the ground, breaking into a hundred different pieces. Sighing at the loss, even though you don't understand why, you find yourself gaping in awe as you look to see a bright red... baseball cap... lying amidst the rubble of the statue. Finding your balance you slowly walk over to the wreckage of the statue and then reach down up to pick up the headwear before turning it over. On the front of the cap there's a single letter stitched into the material, the beginning of your name no less.";
					say "Not sure what's going on here, you shrug and then flip the cap onto your head. Seeing that the headwear is a perfect fit you step over the ruined statue and then head off onto your way. You never notice how the letter on the hat spark for a second, as you can feel nothing out of place on top of your head, before going silent.";
					add "red cap" to invent of player;
					increase score by 10;
					now The Cap is resolved;
					Move player to the Bunker;
				Otherwise:
					Say "Losing to the Cerberus Herms you wind up getting the statue taken from you by one of the creatures while the other kicks you out of the Museum. Whatever might have been up with the statue you're not sure, but now you have a feeling that you'll never know.";
					now The Cap is resolved;
			Otherwise:
				Say "Losing to the Cerberus Herms you wind up getting the statue taken from you by one of the creatures while the other kicks you out of the Museum. Whatever might have been up with the statue you're not sure, but now you have a feeling that you'll never know.";
				now The Cap is resolved;


Section 5 - Fashion Statement

fashionfight is a number that varies.

Fashion statement is a situation. 
The sarea of Fashion Statement is "Outside".

Instead of resolving a Fashion Statement:
	say "Wandering throughout the downtown area of the city you happen to come across a clothing outlet that looks as though it's just recently been ransacked. Mildly curious to know if anything has survived the mercilessness carnage you meander inside of the store on a whim. Looking around you find the pervasive funk of musk, both male and female, as well as mildew covered shelves, dried stains, glass littering the floor and assorted items tossed around rather appealing."; 	
	say "However, considering the state of the world you don't really expect too much. That is, until you make your way to the back of the store and into the stockroom. Interesting enough this part of the store seems to have been kept in tack. Maybe there's something salvageable here? Should you check to see?";
	if player consents:
		say "You begin scavenging around like a hungry wolf looking for food as you rifle through boxes and bins while keeping an eye and ear out for trouble. Sadly enough, it would seem that trouble has found you. Whipping around you find a mutant stalking into the back room, probably on the trail of your scent!";
		now fashionfight is 0;
		while fashionfight is 0:
			let T be a random number between one and three;
			if T is 1:
				now battleground is "Zoo";
				fight;
			if T is 2:
				now battleground is "Outside";
				fight;
			if T is 3:
				now battleground is "Red";
				fight;
			now battleground is "Outside";
			say "With that little pest out of the way you return to searching for your possible treasures in peace...";
			let dice be a random number from 1 to 20;
			let the bonus be (( the perception of the player minus 8 ) divided by 2);
			if "Scavenger" is listed in feats of the player:
				increase bonus by 4;
			say "You roll 1d20([dice])+[bonus] = [dice + bonus]: ";
			if dice + bonus is greater than 20:
				say "Scrounging up whatever you could you finally manage to find something worth wearing from the leftover inventory back here. Giving the apparel a quick a sniff, just to make sure it's not tainted, you smile approvingly before stuffing the items in question into your backpack. Time to head for home!";
				add "muscle shirt" to invent of player;
				increase score by 5;
				now fashion statement is resolved;
				now fashionfight is 1;
			otherwise:
				say "A annoyed grunt leaves your throat as your endeavors leave you with little more than some frustrations. You know your senses couldn't have been wrong about finding something of value in here, but should you really keep on looking?";
				if the player consents:	
					say "If at first you don't succeed, you mumble underneath your breath while going continuing to look around.";
					follow the turnpass rule;
					wait for any key;
					say "A noise makes your head turn, and just in time too as a mutant stumbles onto your location!";
					next;
				otherwise:
					say "Growing too irate to be bothered with this anymore you decide to head out. There's probably more treasure to find in better spots anyway.";
					now Fashion Statement is resolved;
					now fashionfight is 1;
	otherwise:
		say "Feeling as though this would be too much trouble you shake your head before turning to go about your business.";
		now Fashion Statement is resolved;
 

Section 9 - Table of Game Objects

Table of Game Objects(continued)
name	desc	weight	object
"muscle shirt"	"A tight fitting pair of pants with a black mesh muscle shirt to go along with it."	3	muscle shirt

muscle shirt is equipment. 
muscle shirt is not temporary. 
The placement of muscle shirt is "body". 
The descmod of muscle shirt is "A sexy black muscle shirt and waist hugging pair of pants rests over your body.".
The slot of muscle shirt is "body".

Instead of smelling muscle shirt:
	say "The muscle shirt and pants smells like musk and pheromones from long hours of working out.";
	

Section 9a - Red Cap

Table of Game Objects(continued)
name	desc	weight	object
"red cap"	"A red baseball cap with the letter of your first name printed onto it."	1	red cap

Red cap is equipment. 
Red cap is not temporary. 
The AC of red cap is 10.
The effectiveness of red cap is 40. 
The placement of red cap is "face". 
The descmod of red cap is "A somewhat extraordinary red baseball cap rests atop your head.".
The slot of red cap is "head".

Instead of smelling cap:
	say "The red baseball cap smells like ancient Kemet as well as something secret.";


Section 9b - Silver Dress

Table of Game Objects(continued)
name	desc	weight	object
"silver dress"	"A flowing silver dress that looks to be about your size. Glass slippers not included."	1	silver dress

Silver dress is equipment. 
Silver dress is not temporary. 
The AC of silver dress is 10.
The effectiveness of silver dress is 40. 
The placement of silver dress is "body". 
The descmod of silver dress is "A sparkling silver dress rests over your body.".
The slot of silver dress is "body".

Instead of smelling silver dress:
	say "The silver dress smells like something made for a costume ball. Wait... where are the slippers for this thing...";




Misc 9 ends here.
