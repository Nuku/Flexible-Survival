Drex by Ssamgang2 begins here.

[
""hello"" becomes "hello" in the game, make sure test is between '' only like 'hello' so
definitions on zero indentations end in a period
for example declaring a situation, or a variable
conditions that group together code underneath them if Daytimer is day: end in : and the following lines go to a deeper indentation level
falling back to the previous one when your grouped code is over
commands, like changing a variable or displaying text end in ;

one important thing to remember about indentation: you only ever change the depth of indentation when you go into a grouped code block (after a line ending in : ) or if you end one of those blocks
there is no reason for line 88 to be indented versus line 87
the compiler will immediately throw an error
line 85 and following is indented +2 because its grouped by the condition in line 84
if 84 is true (player typed  Y), everything indented beneath is run through
if it is not true, then all of the indented content is skipped

as for the code in your file - a situation (event) does make sense for the start
but not everything below
situations are things you run into by chance r by hunting while exploring
that does not fit to most of the stuff you are trying to fit in there
some of this needs to be tied into the player resting, some into the player navigating somewhere or moving into a certain room
checking if Drex is present, etc.
]

[Could a intimate/loving path be possible? Or too out of the ordinary for what's written so far?]




DrexStage is a number that varies.
[maybe use default variables like: Energy of Drex]
DrexProgress is a number that varies.
[maybe use default variables like: Humanity of Drex]

Table of GameCharacterIDs (continued)
object	name
Drex	"Drex"

Drex is a man.
Printed Name of Drex is "Strange Beast".
Understand "Strange Beast" as Drex.
Understand "Tails" as Drex.
ScaleValue of Drex is 1.
Body Weight of Drex is 2. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Drex is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Drex is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Drex is 3. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Drex is 1. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Drex is 2. [length in inches]
Breast Size of Drex is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Drex is 2. [count of nipples]
Asshole Depth of Drex is 1. [inches deep for anal fucking]
Asshole Tightness of Drex is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Drex is 1. [number of cocks]
Cock Girth of Drex is 1. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Drex is 2. [10 Inches]
Ball Count of Drex is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Drex is 1. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Drex is 1. [number of cunts]
Cunt Depth of Drex is 9. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Drex is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Drex is 4. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Drex is false.
PlayerRomanced of Drex is false.
PlayerFriended of Drex is false.
PlayerControlled of Drex is false.
PlayerFucked of Drex is false.
OralVirgin of Drex is false.
Virgin of Drex is true.
AnalVirgin of Drex is true.
PenileVirgin of Drex is false.
SexuallyExperienced of Drex is true.
MainInfection of Drex is "Fennec".
Description of Drex is "[DrexDesc]"
The scent of Drex is "[DrexScent]";

to say DrexDesc:
	if DrexStage is 0:
		if daytimer is day:
			say "     Looking over at the strange dog like creature you rescued you can see it has completely black fur along with 2 tails that are also black, looking over it's face you can still see those 2 needle-like fangs protruding from it's maw. The fact it spends the day just sleeping and is only awake during the night makes you wonder if you're taking care of some innocent creature or perhaps something more sinister.";
		else:
			say "     Looking over at the strange dog like creature you rescued you can see it has completely black fur along with 2 tails that are also black, looking over it's face you can still see those 2 needle-like fangs protruding from it's maw. Now that it's night it's moving about a little, it mostly follows you around and looks at you, oddly just sitting in place and staring at you.";
	else if DrexStage is 1:
		if daytimer is day:
			say "     Drex is lying on the floor sleeping again, he seems to have somehow become a bit bigger since you've rescued him, he still doesn't do anything during the day, only waking sometimes to move to a different place to sleep.";
		else:
			say "     Now that it's night Drex is walking around exploring the place, since he's grown a bit bigger he can explore more places, he's still got his black coat and 2 tails which start wagging very quickly whenever he sees you";
	else if DrexStage is 2:
		if daytimer is day:
			say "     Looking over at Drex you see he's about the size of a Labrador now, his fur coat is a mix of black and white and he has 3 tails, two of them black, 1 of them white. He walks around now and then but still doesn't do much and usually sleeps, though wakes up right away whenever you go down the bunker and follows you around.";
		else:
			say "     Looking over at Drex you see he's about the size of a Labrador now, his fur coat is a mix of black and white and he has 3 tails, 2 of them black, 1 of them white. Now that it's night he doesn't sleep, he either follows you around or is walking around the bunker.";
	else if DrexStage is 3:
		say "     Now that Drex has finally stopped growing you can see how big he really is, long past the point of a dog as he even exceeds a great Dane in size. his fur is an illustrious white, even down here you can almost see it shine, in contrast to his eye which are a deep red which almost glow in the dark. Along with his much bigger size about a big cock and ball sack to match, his cock big enough to stretch you to your limit and his balls big enough to smother you in.";
	else:
		say "An error has occurred, please report this on Discord with the message TLDesc.";

to say DrexScent:
	if DrexStage is 0:
		say "     You get the faint smell of metal coming from him, as well as dust.";
	else if DrexStage is 1:
		say "     You get the faint smell of metal coming from him, as well as dust.";
	else if DrexStage is 2:
		say "     You get the faint smell of metal coming from him.";
	else if DrexStage is 3:
		say "     You get the faint smell of metal coming from him.";
	else:
		say "An error has occurred, please report this on Discord with the message DRSC.";

Table of GameEventIDs (continued)
Object	Name
Trapped Creature	"Trapped Creature"

[Event 1 TCE
You encounter Drex in the dry plains for the first time]

[ Resolution of Trapped Creature                                 ]
[  1 = no Drex                                                   ]
[  2 = Drex                                                      ]

Trapped Creature is a situation.
ResolveFunction of Trapped Creature is "[ResolveEvent Trapped Creature]".
Level of Trapped Creature is 5.
Sarea of Trapped Creature is "Plains".

to say ResolveEvent Trapped Creature:
	say "     You spend time exploring the vast plains, with most of it either in ruins or just plain barren there isn't much to see, nor much to hide behind if you were to spot a monster in the distance, and with the centaurs roaming this place it won't be an easy escape if they spot you. Still, nothing ventured nothing gained you think. After nearly an hour of exploring you have nothing to show for it yet, though at least the walk was peaceful, even if you won't find anything there is something relaxing about a long walk with nary a sound but the wind. Almost as if on cue right as you think that you hear some faint barking sounds in the distance. Thinking about what creatures roam these plains it is likely to be a prairie dog, and equally as likely for it to be a trap.";
	LineBreak;
	say "     [bold type]Do you want to investigate the sound?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Hell yeah, finally something interesting going on.";
	say "     ([link]N[as]n[end link]) - No way, you don't want to risk running into a trap.";
	if Player consents:
		LineBreak;
		say "     As you move closer to the source of the barking you see what's making that noise, some small dog like beast is stuck in one of the sand traps the prairie dogs like to make, with how small the beast is there's no doubt that once the prairie dogs return it won't stand a chance. You could save it, but is it really a good idea to risk your life for some beast you know nothing about?";
		LineBreak;
		say "     [bold type]What do you do?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Attempt to free it from the trap, you can't just leave it to die.";
		say "     [link](2)[as]2[end link] - Try to stay hidden and see if some other creature from the plains might try to get the beast and trigger any potential traps.";
		say "     [link](3)[as]3[end link] - Hide and wait for the prairie dogs to return and simply watch what happens.";
		say "     [link](4)[as]4[end link] - Leave it, why should you care about one out of the hundreds of beasts roaming these plains? Not your problem.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] To free the beast, [link]2[end link] to hide and wait for another creature, [link]3[end link] to wait for the prairie dogs to return or [link]4[end link] to leave it and go on your way.";
		if calcnumber is 1:[choose to save it]
			LineBreak;
			say "     Not wanting to leave it to its fate you attempt to slowly move closer to the sand trap without getting stuck in it yourself, you try to tell the beast to be quiet but it either can't understand you or is in too much panic to stop barking, you hope it won't attract others while trying to save it. As you inch closer and are about to reach the beast you suddenly hear the sound of digging from around you 'oh no' you think to yourself, but before you can even consider getting back out of the sand trap several prairie dogs pop out of the ground around you. Seems like this was a trap after all. You get ready for a fight!";
			[wait for any key;] [determine if needed or not]
			let PrairieDogFightCounter be 0;
			now fightoutcome is 0; [reset]
			while fightoutcome < 20 and PrairieDogFightCounter < 3: [runs for 3 times or until the player loses or flees]
				now inasituation is true;
				challenge "Prairie Dog";
				increase PrairieDogFightCounter by 1;
			now inasituation is false; [reset]
			if fightoutcome < 20: [player won]
				say "     After finally beating down the last prairie dog you quickly grab the beast and run away before more show up, after getting to safety you take a good look at what it is you've saved exactly, it's currently unconscious, the fierce battle must have been too much for it. On closer inspection you can see it has completely black fur and oddly enough two tails, under its tail you can see a pair of balls, which tells you that the creature is male, and while it somewhat resembles a dog the two sharp needle-like fangs you see protruding from its maw makes you think otherwise, for a moment you feel a shiver run down your spine as you think of the vampires you've read about in comic books and how its two fangs resemble those very much, you try to push those thoughts away as a vampire dog seems too absurd even for this nanite filled world. Now that you vaguely know what it is you wonder what to do with it, you can't shake that uncomfortable feeling when you see it's fangs and feel it is best to leave it here, but would such a small creature really be able to survive on its own?";
				LineBreak;
				say "     [bold type]Will you take it with you?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes, while its fangs may be concerning it's so small that it can't be a threat.";
				say "     ([link]N[as]n[end link]) - On second thought, taking such a creature with you would be too dangerous.";
				if Player consents: [take it with you to the library]
					LineBreak;
					say "     You doubt its fangs could even pierce your skin with how small they are so you set your worries aside and take it with you to the library.";
					move Drex to Maintenance Storeroom;
					move Player to Maintenance Storeroom;
					now DrexProgress is 1;
					say "     After arriving at the library you go down to the Bunker and go to your own bedroom, you put it down next to your bed, alongside with some food and water. This will have to do, you think to yourself, you leave the room and look at the stairs, it doesn't seem possible for it to climb the stairs so you don't have to worry about it escaping while you're gone so you go up the stairs and tell yourself to check on the creature later.";
					now Resolution of Trapped Creature is 2;
				else:
					say "     Thinking of the shiver you felt when you saw its fangs you decide it's best to leave it, you don't want to bring along some potentially blood thirsty beast, no matter how small it is. Thankfully since it is unconscious you don't have to worry about it following you.";
					now Resolution of Trapped Creature is 1;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "[losetoprairiedog]";
			else if fightoutcome is 30: [fled]
				say "     Trying as best as you can to escape you finally manage to get out of the sand trap and dart away, you feel pity for the beast but better them than you. After finally getting some good distance away you suddenly stop hearing the beast bark, now that the trap has been ruined they must have had no more use for it, you don't think you'll be seeing it again.";
				now Resolution of Trapped Creature is 1;
		else if calcnumber is 2:
			LineBreak;
			say "     Thinking it may be a trap you decide to stay hidden and wait for some other creature to spring any possible traps. several minutes pass with the only company being the small insects in the hiding spot you're in.";
			LineBreak;
			say "     Finally after waiting for some more you spot a creature approaching, it appears to be one of the fennec's inhabiting these plains, you try to hide yourself as much as possible, not wanting to scare it away. The Fennec sees the dog like beast stuck in the sand trap and starts walking towards it, it's almost reached the beast with nothing happening yet, thinking you were too overly cautious you are about to stand up when you suddenly hear some sounds coming from the ground.";
			LineBreak;
			say "     Surprising both you and the fennec several prairie dogs pop out of the ground and surround the fennec, it was a trap after all! a fight ensues between the fennec and the 3 prairie dogs. The Fennec manages to knock out one of the prairie dogs but there's 2 more left, soon the fennec is overwhelmed and the prairie dogs are the victor of this battle. The prairie dogs are overjoyed with the catch and not wanting to waste any time set upon the body of the fennec right away, they force the fennec on it's back, one of the prairie dogs sit on his head and tries to shove her cock into his mouth while the other positions herself behind the fennec, you can take a guess where this is going.";
			LineBreak;
			say "     You could continue watching this or take this moment to go and save the creature, with a fennec already in their grasp you doubt they want to risk fighting you and losing their prized fennec. ";
			LineBreak;
			say "     [bold type]Will you take this opportunity to save the creature or enjoy the sights of the prairie dogs fucking the fennec?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - With the trap sprung and the prairie dogs busy now is the best time to save it.";
			say "     ([link]N[as]n[end link]) - No way, you're far more interested in this hot sex in front of you.";
			if Player consents:
				LineBreak;
				say "     Thinking now is the best time you get out of your hiding spot and approach the creature, the prairie dogs are startled seeing you come out of nowhere, there being just 2 of them now they don't feel confident in winning a fight leaving them with a choice to make, either they try to keep their fennec or the beast they used as bait. As they see you move towards the trapped beast they seem to be staying next to the fennec keeping it pinned down, seems like they'd rather lose out on the beast and keep the fennec than fight you and risk losing out on both, works for you. As you approach the beast it starts to whimper, it's clearly afraid, when you simply grab it and hold it in your arms it's whimpering stops, it now just seems confused. Not wanting to overstay your welcome you quickly move away from the prairie dogs and the fennec, only when they're out of view do you take the time to look at the strange beast you've rescued.";
				say "     You put it down and look it over, it has white eyes with black pupils, completely black fur and oddly enough 2 tails! if it weren't for the 2 tails you'd think it was a dog, looking below its tails you can see some balls which tells you the creature is male. As you look over it further you see it's fixated on your leg, you see there's a wound on your leg and wonder if it's concerned, when suddenly you see 2 very sharp needle-like fangs protruding from his maw and a shiver runs down your spine. Your mind immediately goes to the vampires you've read about, and with it fixated on your wound you can't help but feel concerned. You get the feeling this may not be some innocent beast as it may seem.";
				LineBreak;
				say "     [bold type]You try to push the uncomfortable feeling away and decide whether or not you want to take it with you.[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes, while it's fangs may be concerning it's so small that you doubt it can be a threat.";
				say "     ([link]N[as]n[end link]) - On second though taking such a creature with you would be too dangerous.";
				if Player consents:
					LineBreak;
					say "     You doubt its fangs could even pierce your skin with how small they are so you set your worries aside and take it with you to the library.";
					say "     After arriving at the library you go down to the Bunker and go to your own bedroom, the long travel seems to put him to sleep so you softly put him down next to your bed, alongside with some food and water. This will have to do, you think to yourself, you leave the room and look at the stairs, it doesn't seem possible for him to climb the stairs so you won't have to worry about him escaping while you're gone so you go up the stairs and tell yourself to check on the creature later.";
					move Drex to Maintenance Storeroom;
					move player to Grey Abbey Library;
					now Resolution of Trapped Creature is 2;
					now DrexProgress is 1;
				else:
					say "     Thinking of the shiver you felt when you saw its fangs you decide it's best to leave it, you don't want to bring along some potentially blood thirsty beast, no matter how small it is. You step away from it and start walking away, oddly enough it doesn't even attempt to follow you, it just sits there staring at you, the strange sight makes you feel all the more relieved you decided to leave it.";
					now Resolution of Trapped Creature is 1;
			else:
				say "     Screw the beast the action in front of you is far more interesting so you stay hidden and look on.";
				say "     The fennec still having some fight left in him refuses to open his mouth to service the prairie dog, however once the other prairie dog finds its mark and pushes her cock all the way inside his ass he loudly yips and she takes advantage of this to shove her cock down his throat, now being fucked from both ends the fennec can't help but whimper, yet his growing erection tells you the fennec isn't as opposed to it as it may seem.";
				LineBreak;
				say "     The one fucking his ass upon noticing his now erect cock even starts stroking it and soon enough the whimpering turns to moaning as the fennec seems to be in pure bliss getting fucked while having his cock stroked at the same time. They do not let up and as you see some pre starting to dribble from the fennec the prairie dogs take this as their cue to really up their tempo and start fucking him with a maddening zeal, it isn't long after when they both cum, filling both his mouth and ass with ample amount of cum.";
				say "     After that spectacular show you look towards the beast, the fucking lasted so long it's stopped barking and seems to be asleep now, with both the prairie dogs and the fennec lying exhausted on the floor from all the fucking it wouldn't be particularly difficult to grab the creature.";
				say "     [bold type]Should you take this time to free the creature?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes, now that the show is over it's time to free it.";
				say "     ([link]N[as]n[end link]) - No, you're already satisfied with what you saw.";
				if Player consents:
					LineBreak;
					say "     Finally getting out of your hiding spot and going over to the creature the prairie dogs and fennec don't even react, still too tired from their whole ordeal, you pick up the creature and start walking away, just to be on the safe side you wait with inspecting it till you're out of view of the prairie dogs.";
					LineBreak;
					say "     After getting to safety you take a good look at what it is you've saved exactly, it's currently still sleeping. On closer inspection you can see it has completely black fur and oddly enough 2 tails, below his tails you spot some balls which tells you the creature is male, and while it somewhat resembles a dog the 2 sharp needle-like fangs you see protruding from its maw makes you think otherwise. For a moment you feel a shiver run down your spine as you think of the vampires you've read about in comic books and how it's 2 fangs resemble those very much, you try to push those thoughts away as a vampire dog seems too absurd even for this nanite filled world.";
					say "     Now that you vaguely know what it is you wonder what to do with it, you can't shake that uncomfortable feeling when you see it's fangs and feel it is best to leave it here, but would such a small creature really be able to survive on its own?";
					say "     [bold type]Will you take it with you?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - yes, while it's fangs may be concerning it's so small that you can't imagine it being a threat.";
					say "     ([link]N[as]n[end link]) - On second though taking such a creature with you seems too dangerous.";
					if Player consents:
						LineBreak;
						say "     You doubt it's fangs could even pierce your skin with how small they are so you set your worries aside and take it with you to the library.";
						say "     After arriving at the library you go down to the Bunker and go to your own bedroom, you put it down next to your bed, alongside with some food and water. This will have to do, you think to yourself, you leave the room and look at the stairs, it doesn't seem possible for it to climb the stairs so you won't have to worry about it escaping while you're gone so you go up the stairs and tell yourself to check on the creature later.";
						move Drex to Maintenance Storeroom;
						move player to Grey Abbey Library;
						now Resolution of Trapped Creature is 2;
						now DrexProgress is 1;
						now Resolution of Trapped Creature is 2; [Took Drex with you after waiting for the fennec to spring the trap]
					else:
						say "     Thinking of the shiver you felt when you saw its fangs you decide it's best to leave it, you don't want to bring along some potentially blood thirsty beast, no matter how small it is. You step away from it and start walking away, thankfully with it still asleep you won't have to worry about it following you.";
						now Resolution of Trapped Creature is 1; [abandoned Drex after rescuing from the sand trap]
				else:
					say "     After seeing the prairie dogs and the fennec going at it you've lost all interest in that dog or whatever it is, you're not sure if you'll ever see it again but you don't really care either.";
					now Resolution of Trapped Creature is 1;
		else if calcnumber is 3:
			LineBreak;
			say "     More interested in seeing what the prairie dogs may have planned for it you stay in hiding and wait for them to return, with all the barking it's doing you doubt it will take long. Several minutes later you hear some sounds coming from the ground and soon after see the prairie dogs popping out, some of them already sporting erections and leaking from their cunts at the sight of the trapped beast.";
			say "     They take the beast out of the trap and force it on it's back, before it can even realize what's going on one of the prairie dogs shoves it's cock right into its mouth while another lines up her cock with its rear passage and start hammering away at it, it doesn't take long for the creature to sport an erection, which a prairie dogs immediately takes advantage of by sinking her cunt down on it with a moan, the last prairie dog not wanting to be left out starts rubbing her cock on the creature's paw.";
			say "     The creature now being fucked by 4 of them seems to be absolutely lost in lust as you can see it eagerly sucking her cock, moving it's hips to both get fucked harder and to fuck the prairie dog harder, and now using both of it's paws to cares the prairie dog's dick, her dick moving back and forth over those leathery paws with delight. The orgy goes on for several minutes with the now willing creature.";
			say "     As you see pre dribbling from the prairie dog that's rubbing her cock on those paws you can tell it won't be long now till they're finished. The other prairie dogs almost taking this as their cue to up their zeal, fucking him that much faster and harder, the face of the creature is true bliss and must be close to cumming as well now, moments later the time is here, they fill his mouth and ass with cum, shoot cum all over his paws while he himself fills the prairie dog's cunt with his own cum and tying the knot.";
			say "     As the fucking finally comes to an end they pull out of it's mouth and ass and fall to the floor exhausted, with the other prairie dog who's cunt is still tied to his knot lying on top of it out of exhaustion as well and waiting for the knot to go down. While the prairie dog that was rubbing her cock on his paws now taking this time to lick his paws clean.";
			say "     After waiting for several minutes the knot finally deflates and pops out of the prairie dog's cunt with a torrent of cum now spilling out of it. After taking some more time to rest the prairie dogs get up and drag the creature underground with them, you get the feeling that next time you come across it they will be just another prairie dog.";
			now Resolution of Trapped Creature is 1; [watched the prairie dogs fucks Drex and be transformed into a prairie dog]
		else if calcnumber is 4:
			LineBreak;
			say "     Just leave it, why care about this beast, you think to yourself, besides who knows it may just be a trap, and you doubt you can have much fun with a creature that small anyways.";
			now Resolution of Trapped Creature is 1; [didn't save Drex because you didn't care about it]
	else:
		say "     Not wanting to risk running into a trap for what likely is just a prairie dog you decide to ignore it and be on your way.";[decide not to investigate the sound, no Drex]
		now Resolution of Trapped Creature is 1;
	now Trapped Creature is resolved;




[Event 2
Resting down in the bunker to trigger progress for Drex, hurts your hand for the first time]
instead of resting while (Daytimer is night and Player is in Maintenance Storeroom and DrexProgress is 1 and Drex is in Maintenance Storeroom):
	say "     You get ready to get some sleep and look around for the creature you rescued, as you look around your room you see that he's gone, too small to get up the stairs you know he must be here somewhere, you look around for him, under the bed, in the corners, not finding him you start moving towards the bunker to see if maybe he's under one of those beds. Just as you're about to walk out the door you hear a bark from behind and you nearly jump up from the scare, you quickly look behind you and it's the creature you rescued, you wonder how you missed him but are glad to see they're awake at least, you crouch down and pat it on the head 'hey now don't go scaring me like that buddy, nearly gave me a heart attack' you say to him. He doesn't say anything, just stands there with his 2 tails swinging back and forth, clearly amused he managed to scare you.";
	WaitLineBreak;
	say "     'Maybe I should give you a name so I can call for you next time and you don't scare me again. Hmm, since you have 2 tails how about I call you tails?' he almost rolls his eyes at the name 'Hey now you'll come to like it' you say to him while laughing a bit 'now it's time to go to sleep Tails, I've had a long day and I need the rest' you say while climbing onto the bed. suddenly you hear Tails whimpering while standing in front of the bed, with how small he is he can't get up on the bed on his own. You pick him up and put him on the bed 'alright fine but be careful you don't fall off the bed' he gives a bark and then curls up, time for the both of you to go to sleep.";
	WaitLineBreak;
	say "     Sometime in the middle of the night you wake up to something painful, as you try to get your bearings after so suddenly waking up you look at your hand where the pain is coming from and see you're bleeding and Tails is licking it. Upon closer inspection it appears to be a scratch wound, you wonder if Tails accidentally hurt you in its sleep and was licking you as comfort, you tell Tails it's fine, pat him on the head and tell him to go back to sleep again. Normally you'd probably panic more about bleeding but with the nanites it will probably heal over soon anyways so it's nothing to lose sleep over.";
	WaitLineBreak;
	try resting;
	say "     You wake up the next morning fresh as a daisy, looking over at Tails they're still sleeping, it almost looks as if he's gotten a bit bigger, but no, surely not, you think to yourself, how could he just randomly grow overnight? Carefully stepping off the bed so as not to wake Tails you put on your clothes and gear and get ready to explore.";
	now DrexProgress is 2;
	now Printed Name of Drex is "Tails";
	[adjust variables and whatnot too]



[event 3
Drex injures your hand for the 2nd time]
after going to Maintenance Storeroom while (DrexProgress is 2 and Daytimer is night and Drex is in Maintenance Storeroom):
	try looking;
	say "     After another long day you walk down to the bunker to get some rest and see how Tails is doing, you go down the stairs and open the door, you walk to your room and there you see Tails sitting on the floor, eyes already pointed at the door, as if he was waiting on you. 'Hey Tails' you say, he doesn't respond, he just keeps intensely staring at you which makes you feel oddly uncomfortable. You walk over to Tails, crouch down and pat him on the head 'everything ok boy?' Tails tilts his head, guess he's fine, you get back up again in order to undress, after which you pick up Tails and put him on the bed with you 'Good night tails' you say before dozing off. You can tell Tails is sitting there looking at you but you try to shake the uncomfortable feeling and try to sleep anyways.";
	say "     After some time you again wake up to a painful feeling in your hand, you quickly get your bearings to find out why this keeps happening, you look down at your hand and see 2 tiny holes in them with blood coming out of it, as if a bat had bitten you. As you think that a thought goes through your head of the needle-like fangs Tails has and in panic you quickly look over to him, he is curled up near your feet, 'Tails' you say, but he doesn't respond.";
	say "     You wonder if he's truly asleep or only pretending to be, too worried to go back to sleep you get closer to him and pick him up, as you do he lets out a yawn and when he sees you tilts his head 'You really were asleep?' you say, but then what is the cause of this? Still groggy from just waking up you resolve yourself to find out the next day once you've gotten some sleep, you just hope it won't happen again.";
	WaitLineBreak;
	try resting;
	say "     You wake up the next morning a bit worse for wear, you didn't have your sleep disturbed after that but it was difficult to fall asleep with the panic of not knowing who or what the cause is, looking over at Tails you can't help but shiver a bit when seeing those needle-like fangs again, could he really be the one that did it? Was he just pretending yesterday? As you think that you can't help but feel that, again, he's grown bigger, going over to Tails you're sure of it now, he's definitely bigger than he was before, is he still a puppy then? The nanites can make them grow faster so maybe it's that you wonder.";
	say "     Still the problem is that you don't know the cause, you spend a couple minutes thinking of what to do. 'hmm I could only pretend to be asleep' you think to yourself, whether it's Tails or maybe some sort of bat that's gotten into the bunker you can find out if you just stay awake. Having decided on a course of action you know what to do now next time you go to sleep.";
	now DrexProgress is 3;

[Event 4
night 3, multiple choices, keep and feed Drex yourself, kick him out, or choose to keep him but he fights for you for and feeds off of others. Latter option not yet implemented]

after going to Maintenance Storeroom while (DrexProgress is 3 and Daytimer is night and Drex is in Maintenance Storeroom):
	move player to Maintenance Storeroom;
	say "     You somewhat reluctantly go down the stairs, after the last 2 nights you've resolved yourself to find out the truth tonight but worry what you may be finding, Trying not to seem worried or panicked in case Tails is the culprit you try to push those thoughts away and open the door, and as soon as you open the door you see Tails sitting there 'was he staring at the door this entire time?' you think to yourself, very weird creature 'Hey Tails' you say, not expecting any response like usual you crouch down to pat him on the head and start walking to your room when he suddenly barks which slightly startles you.";
	say "     You look back and see he's standing there with his 2 tails swinging back and forth, just like last time you feel like he gets joy out of scaring you, it at least somewhat relieves you to see he's back to how he was before instead of staring at you. Maybe yesterday was just his off day and he's not the culprit after all. Still too soon to make any judgment, you walk to your room, undress like usual and pick up Tails and put him on your bed, you bid him good night again and this time you do see him curl up next to you. 'sleep well' you say before closing your eyes.";
	WaitLineBreak;
	say "     Of course you're only pretending to be, you made sure to lie in bed facing Tails so you can carefully take a glance now and then to see if they're moving. You've been lying there for nearly an hour now, making sure to pay attention to any sounds but nothing yet. If this keeps up any longer you may really just fall asleep, but as you think that you hear something, you take a tiny glance and see that Tails is moving towards you, you wait a bit to see what happens, several minutes later, you wonder if he were just trying to find a new spot to sleep or if he's checking if you're really asleep so you make sure to keep your eyes closed and keep pretending to sleep.";
	say "     As you wait you're starting to become anxious, was Tails really just moving to sleep somewhere else or is he checking if you're asleep? Some more time passes and then you suddenly hear someone on the bed walking, it must be Tails you think. from the bed caving in a bit you can tell they're standing right next to you. You're starting to become more nervous when moments later you feel a harsh pain in your hand and you think you can hear the sound of something drinking as the pain in your hand intensifies. Thinking now is the time to find out you slowly open your eyes and that's when to your shock you see Tails has put his fangs down on your hand and he's...he's drinking your blood!?";
	WaitLineBreak;
	say "     In complete panic as you see that you get up out of the bed and Tails goes tumbling off the bed 'what the hell were you doing!' you yell to Tails, you try to get ready for a fight and that's when you hear 'I'm sorry'. For a moment you're befuddled, wait was that Tails? 'you can talk!? What are you!' you say. As your eyes get somewhat used to the darkness you see Tails is in the corner of the room 'I'm sorry I didn't mean to hide it from you let me explain' explain? Explain? Is there really an explanation for him to be sucking your blood?";
	LineBreak;
	say "     [bold type]Do you really want to hear an explanation from this beast?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - You're somewhat afraid yet you're also somewhat curious what he might be. You reckon you don't have much to fear with how relatively small he is.";
	say "     ([link]N[as]n[end link]) - An explanation for drinking your blood? Hell no, the only thing awaiting it is death.";[most deaths are vore or military related, seems out of place]
	if Player consents:
		LineBreak;
		say "     'Really? You have an explanation for sinking your fangs into me and drinking my blood!?' you say angrily. he lowers his ears to his head 'I need to drink blood to remain strong, i-if I don't get any I will become very weak and can even die' he says in a sad tone 'the last person I was with abandoned me outside when I told them that, that's how I got stuck in the sand all alone, and why I was afraid to tell you'. he says while looking sad, though you still find it hard to believe you seem to have taken in some sort of vampire dog 'So what you were just gonna secretly drink my blood every night?' with a shiver running down your spine as you say it.";
		say "     'I'm sorry I had no other option, I had to eat...' he says. For a moment there's silence, you're not sure how to respond to this, you're kind of curious about a vampire dog like creature even existing and worried about him not being able to survive without any blood, yet at the same time if you want him to stick around it's clear what you're going to have to do, do you really want to be food for this thing everyday just to find out more about him?";
		LineBreak;
		say "     [bold type]It's time to decide, though somewhat doubting your sanity for even considering it.[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Reluctantly keep him around, much to the dismay of your body what with having to feed him."; [Resolution 1]
		say "     [link](2)[as]2[end link] - Send him away, you're not going to keep around a blood-sucking monster.";[Resolution 2]
		[say "     [link](3)[as]3[end link] - Tell him that if he wants to have any blood he can have some from fighting with you outside.";][Can't think of a story for this yet][Resolution 3]
		[say "     [link](4)[as]4[end link] - He could die? Hearing that you feel bad for him, you wouldn't mind helping him at all then";][Can't think of a story for this yet][Resolution 4][sentence doesn't feel right, gotta rewrite it, kidna feels too forced]
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2: [or calcnumber is 3 or calcnumber is 4:]
				break;
			else:
				say "Invalid choice. Type [link]1[end link] To keep him around or [link]2[end link] to send him away.";[ [link]3[end link] to wait for the prairie dogs to return or [link]4[end link] to leave it and go on your way .]
		if calcnumber is 1:[choose to keep him around, DrexStage becomes 1]
			LineBreak;
			say "     Breaking the awkward silence you say 'Listen Tails do you really ex-' you get cut off 'Drex' 'what?' you ask while confused 'my name is Drex' he says in a somewhat annoyed voice. You find it odd he took now of all times to tell his name but you just roll with it '...ok Drex listen, do you really expect me to just let you drink my blood everyday? Do you realize how ridiculous that sounds?' you say to him while wildly wondering how you even got to the point where you're discussing such a absurd situation 'I know but please I have no other way! and and it won't be forever! just till I'm back to full strength again' you're somewhat concerned about him talking about full strength and hope it spells nothing ominous for you.";
			say "     'And how long would that take?' He somewhat hesitates to answer but then says a couple weeks, a couple weeks!? You're beginning to wonder if this really was a good idea, being a blood bag for this dog thing for a couple weeks? Drex can clearly see the concern in your eyes 'I can help you! well I mean not now but when I'm back at full strength, I can guard this place or even protect you while outside!' you're conflicted upon hearing that, on one hand it sounds like he'd be a useful and strong ally and wonder what he will become if he can be strong enough to protect you, on the other hand, the fact that he can become that strong is a bit worrying.";
			WaitLineBreak;
			say "     In the end your curiosity gets the best of you, you really want to know what he will look like once he's better and what he is 'Can't believe I'm about to say this but...fine, you can drink my blood' Drex his ears perk up and his tails start swinging like crazy, you almost think he will start to take off any moment now 'thank you thank you thank you!' he says clearly extremely happy you've allowed him to not only stay but let him sate his, well, hunger on you.";
			say "     He tries to jump on you but doesn't reach much further than your knees. 'alright calm down, first of all no more waking me up, understood?' he nods with his head 'second of all you'll get to eat at night before I go to sleep, that way once it's over we can both go straight to sleep' he nods his head again 'thank you! I will help you in return in the future for this!' you chuckle a bit, with him being so small you doubt there's much if any creature he can beat right now, aside maybe a rat.";
			WaitLineBreak;
			say "     He looks at you with puppy eyes and asks if he can eat now. You sigh, yes yes you say while picking him up and placing him on the bed, you sit down on the bed next to him and stretch out your hand towards him, he opens his mouth and uses his 2 very sharp fangs to pierce your skin and starts sucking the blood, you wonder if you're not dreaming right now but the pain from your hand tells you that you're wide awake. A couple minutes pass by and you almost can't believe your eyes when you see Drex grow a bit right in front of your eyes, at a guess he must've roughly grown 1 or 2 inches, you wonder if this is what he meant by full strength, that drinking blood makes him grow? You want to ask him but the blood loss is starting to make you feel tired 'alright that's enough Drex' he stops and you already see the nanites getting to work on patching up the holes he left behind, it's a good thing they can fix you right up otherwise allowing this would be a death wish. Anyways feeling very tired now you wish Drex good night, lie down on the bed and doze off. ";
			try resting;
			say "     You wake up the next day to the feeling of something on your chest, you open your eyes and see Drex standing on top of you, at least one of you is excited about the start of a new day. 'Unusual to see you up Drex' you tell him, since before this he's only ever been awake at night 'it's because I've grown!' he says in a happy voice, guess he won't be asleep during the day anymore. Looking over at Drex you can see he's grown a fair bit, you reckon he's about the size of a Shiba Inu now, bigger than before, but not big enough to get up on the bed, or down from it, so you pick him up and put him on the floor, at the same time you also get dressed and grab your gear, preparing to leave.";
			now Printed Name of Drex is "Drex";
			now DrexStage is 1;
			now Cock length of Drex is 3;
			now Cock Girth of Drex is 2;
			now SleepRhythm of Drex is 0;
			now DrexProgress is 4;
		else if calcnumber is 2:[choose to send him away]
			say "     'No other option my ass, did you really think I'd be ok with you sucking my blood? Are you out of your mind?' as you say that you move towards him and manage to grab him by his 2 tails before he runs away, he starts whining and telling you to please let him go but no way, you're not going to live next some vampire monster, you go up the stairs, walk out the door and toss him outside 'now stay the hell away from me or I won't be so nice next time' he lands on his head and takes a bit to come to his senses, as he sees you looking at him he whimpers and slowly starts walking away with his tails between his legs. You're not sure if you'll ever see him again with how weak and small he is, but that's for the best. ";
			now Drex is nowhere;
		[else if calcnumber is 3:[tell him to fight for you or leave]
			say "     'Oh I know of a way alright, if blood is what you need you can just come with me when exploring and take it from any creatures outside' he Whimpers 'b-but I'm not strong enough to beat an-' you cut him off 'you won't be fighting alone, you will be fighting them with me, and if you don't like that then the other option is to leave and starve on the streets' he whimpers again 'I understand, I will fight with you' he says in a sad tone 'good, now that that's settled go to sleep, and don't you dare try the same again or I'm kicking you out immediately' you say in a angry voice, he whimpers again and then goes to the corner of the room and curls up, clearly understanding the message, time for you to go to sleep as well.";
			say "     ";]
		[else if calcnumber is 4:[feel pity for him and feed him]
		say "     Your anger fades somewhat after hearing he could actually die, you ask if it's really true and he tells you it is 'why didn't you tell me earlier then? I couldn't just let you starve to death' you almost see a shine in his eyes, happy to find someone who actually cares about him 'y-you really mean that!?' of course, you tell him, with the nanites around it's not as if he actually harms you, well not permanently anyways, it stings a but that's all. At this point both his tails start wagging 'thank you thank you!' ";]
	else:
		say "     With it still being dark you tell him to explain so you can get closer to him since if you run at him right now it will be difficult to find him. As he proceeds to explain how he needs to drink blood to become strong your stomach almost turns at the idea of it, never the less you keep up the charade so you can get closer to him, now that you're practically in front of him you tell him that you're not sure about this, then right as he begins to respond you reach out for his head, you grab him and before any words can come out of his mouth you snap his neck and all life leaves his body. You go up the stairs and toss his body outside, with the ferals roaming the city it won't be around for long.";[too brutal of a ending?]
		TraitGain "Dead" for Drex;
		say "     The mystery of your hand getting injured has finally been solved, you still somewhat struggle to believe they were a vampire dog of sorts, but it's all done and over with now, time to move on.";
		now Drex is nowhere;

[Event5 FE15
]
after resting while (Daytimer is night and DrexProgress is 4 and loyalty of Drex <= 4 and Player is in Maintenance Storeroom and Drex is in Maintenance Storeroom):
	if Loyalty of Drex is 0:
		say "     [bold type]You take off most your clothes and gear and get ready to get some rest[roman type]. You call for Drex and he comes crawling out from underneath the bed, clearly liking the darkness under there, you pick him up and put him on the bed and lie down on the bed yourself, Drex walks up to you and looks at you with puppy eyes 'can I?' he says while trying to look as sad as possible. Yeah yeah you say as you offer your hand up to him, he chomps down on your hand with his 2 sharp fans and start sucking the blood out of you.";
		wait for any key;
		say "     Even though you agreed to this, it still feels almost surreal, you don't think you can ever get used to this. After a couple of minutes have passed you start feeling sleepy again and tell Drex that it's enough, he removes his fangs from your hand and the wound starts to heal. Drex turns to you and gives your face a lick, normally you'd be happy getting licked by a dog, but the little bit of blood you still see on his fangs doesn't make it as pleasant. Now that he's finished you pat Drex on the head and wish him good night and you both go to sleep.";
		increase Loyalty of Drex by 1;
	else if Loyalty of Drex is 1:
		say "     [bold type]You take off most of your clothes and gear and get ready to get some rest[roman type]. Instead of calling for Drex you decide to look for him to see if you can find him first, since he's usually under the bed you decide to look there first, you get on your knees to look under the bed and right as you do that Drex comes running out from under the bed with a bark, this scares you so much you fall backwards, Drex then jumps on your chest 'got you!' he says with his tails wagging 'haha alright you got me, you gonna give me a heart attack some day with all these scares' Drex jumps off of you and you tell him it's time for sleep soon, you pick him up and put him on the bed and then lie on it yourself.";
		say "     Drex walks up to your chest and then lies down on it, he looks directly into your eyes. You think it's an attempt at looking at you with sad puppy eyes but he's clearly got some work left to do to make it convincing. You move your arm in front of him and tell him to bite down on your arm this time, faintly hoping it may hurt less if he bites down there. Unsurprisingly it doesn't do much for the pain, though it does somehow feel more comfortable than when he bites your hand, as you no longer get a weird tingling sensation in your hand.";
		say "     As you wait for him to finish you can tell he's growing again, he seems to grow roughly 1 or 2 inches whenever you feed him, you wonder how big he will get, and worry if his appetite may increase if he gets bigger. Trying to push that last thought away you look at Drex and tell him that's enough, he removes his fangs from your arm and it slowly starts to heal again, he then lies back down on your chest and goes to sleep, with all the blood loss you quickly doze of as well.";
		increase loyalty of Drex by 1;
	else if loyalty of Drex is 2:
		say "     [bold type]You get ready to feed Drex again and get some sleep.[roman type] Seemingly all too eager to eat once more Drex is standing right next to you 'is it time yet?' he asks while looking directly at you. You ruffle the fur on his head 'You really have to work on those puppy eyes Drex' you say while laughing as all he manages to do is look a bit derpy.";
		say "     As you get ready to pick up Drex to put him on the bed he proceeds to jump on the bed! He's grown so much he can just about make it on to the bed himself. at least you won't have to bother picking him up anymore, you lie down on the bed and Drex just about jumps on your chest ready to eat, while it may have been cute before, he's become big enough that it does hurt a bit 'oof watch it Drex, you're not as small as before anymore' 'I'm not that heavy!' he says while laughing.";
		LineBreak;
		say "     'Alright let's get this over with' you say as you hold out your arm, as eager as ever he chomps down on your arm. As you lie there waiting for him to be done you look at Drex and notice some strands of white hairs, is he somehow shedding and changing the color of his fur? You wonder if his fur coat may turn white then. chuckling a bit to yourself you even think if maybe he's just getting old but that seems unlikely. With how few white hairs there are you ignore it for now, maybe it will go away in a couple of days. After waiting some more you tell Drex it's enough, he tries looking at you with puppy eyes, but not wavering and still looking at him he removes his fangs 'just kidding' he says. You wonder if he was really joking or just becoming more bold, anyways with that over it's time to sleep, Drex plops down on your chest and you both fall asleep. ";
		increase loyalty of Drex by 1;
	else if loyalty of Drex is 3:
		say "     [bold type]You take most of your clothes and gear and get on the bed[roman type].";
		say "     Feeling more tired than usual and with Drex now being able to get on the bed himself you just call for him. After some waiting he's still not here, 'come on Drex it's time to sleep' you say again, still not showing up you're thinking he may just be wanting to scare you again, so you just yell out you're going to sleep as you're too tired. As you say that you hear running coming from the bunker and in comes Drex and jumping right onto your bed 'you're no fun' he says while almost putting 'sorry Drex but I'm just too tired this time' while chuckling at how upset he's trying to look.";
		LineBreak;
		say "     'Come on don't be that upset, now let's get this over with, I can barely stay awake' Drex immediately doesn't look upset anymore, clearly caring more about eating than trying to scare you, you hold out your arm and he bites down on it again and start sucking your blood. Not even a minute later your eyes are almost closing, you feel like falling asleep any moment now, you tell Drex to stop but full sentences can't even come out of your mouth and you quickly fall asleep. Drex takes this opportunity to drink as much blood as he wants.";
		WaitLineBreak;
		try resting;
		say "     You wake up after hours of sleep, you can't remember the last time you slept this much but it's certainly left you feeling refreshed being out for so long, you look at Drex who's still lying on top of you sound asleep, thinking back to falling asleep last night you're somewhat worried and look at your arm but thankfully it seems to be just fine, Drex certainly seems to have grown more than the usual 1 or 2 inches, cheeky bugger must've taken advantage of you falling asleep like that, though it is somewhat reassuring he didn't try to harm you. You shake Drex a bit to wake him up, he yawns and looks at you 'Drex did you drink more than you should have last night when I fell asleep?' he starts looking directly into your eyes, trying to do the puppy eye thing again you think to yourself, and while he's gotten a bit better you end up just chuckling as he still looks a bit derpy 'let's just forget about it' you say while pushing Drex off of you and getting out of bed.";
		increase loyalty of Drex by 1;
	else if loyalty of Drex is 4:
		say "     [bold type]You get ready for some sleep and feeding Drex again[roman type].";
		say "     With it being so late it's time for some rest, looking around you don't see Drex again, he really does seem to make a game out of it whenever it's time to eat. You check underneath the bed as the most obvious place, with the white fur he's now got he should be fairly easy to spot, but not seeing him you get back up again, as you turn around to check out the bunker Drex pounces on you and you fall backwards on the bed with him on top of you.";
		LineBreak;
		say "     With how big Drex now is he practically knocks the air out of you. 'Got you!' he says, amused he managed to surprise you yet again. 'Alright alright you got me, now come on get off so we can get to sleep,' you say and he jumps off of you and gets on the bed, after checking to make sure your clothes aren't torn you get on the bed as well.";
		say "     As always you give him your arm and he chomps down on it and starts sucking your blood, with how much time has passed you think it won't be much longer now till you're done with this. As several minutes have passed you tell him it's enough and he stops, tired from the ordeal you tell Drex good night and quickly doze off.";
		WaitLineBreak;
		say "     You wake up in the middle of the night to something painful and find Drex drinking the blood from your arm 'what the, I told you didn't I, only at night what are you doing' you say angrily 'I was hungry, aren't you used to it by now' he says unapologetically while staring you down, it seems with the increase in size also comes a increase in confidence and testing the limits, he isn't as timid as he used to be. Still not wanting to become a unwilling food source you push him off of you, it takes a fair bit of effort with him being as big if not a bit bigger than a Labrador by now but you still manage it. 'Enough Drex, if you're not going to listen you're just going to sleep on the floor until you learn to behave, I kept you around because you were nice and I was interested in what you would become but I can retract that kindness if you so wish and you can go back to starving' As you say that Drex lowers his ears to his head and starts whimpering 'I'm sorry, now that I've grown this big I feel more hungry, I was just so hungry' you sigh 'let's forget about this for now, but you're staying on the floor you hear me? Otherwise you can go back to being bait for the prairie dogs' Drex whimpers and starts walking to the corner of the room and lies down there. With that out of the way you try to go back to sleep.";
		LineBreak;[skip time to morning somehow]
		try resting;
		say "     Waking up after getting some sleep you see Drex standing at the edge of your bed looking at you with puppy eyes again, almost seems like he's been practicing looking as sad as possible while you slept 'Don't you play sad with me Drex, I'm still upset over what you did, it better not happen again, now move' Drex sulkily walks back to the corner he was lying in and that's when you notice he's got 3 tails now, oddly enough what you presume to be his new tail is completely white, a stark difference to his other 2 tails that are completely black, with his fur becoming more white by day you wonder if maybe as he grows he will have completely white fur then, you think of asking him about it but feel it's best to ask him later for now and let the message set in.";
		now ScaleValue of Drex is 2;
		now Cock length of Drex is 7;
		now Cock Girth of Drex is 4;
		increase loyalty of Drex by 1;
		now Ball Size of Drex is 4;
		now Asshole Depth of Drex is 4;
		now DrexStage is 2;
	else:
		say "An error has occurred, please reports this on discord with the error message 'FE15'.";

after resting while (Daytimer is night and loyalty of Drex is 5 and player is in Maintenance Storeroom and Drex is in Maintenance Storeroom):
	say "     You decide to go to sleep, you crawl into your bed when you see Drex standing at the edge of the bed looking at you with puppy eyes. That's when you notice one of his eyes is red, which is very weird, you're pretty sure he never had those right? surely you would have noticed that, maybe something to think about later, anyways back to Drex, you sigh 'Fine get on the bed' BUT, you say before he starts jumping with joy, no eating tonight you tell him, still upset about last night 'I understand, I'm really sorry.' he says, he seems sad yet also relieved he's even allowed on the bed again. you're hoping the message will be clear that if he doesn't listen he will just be tossed out.";
	LineBreak;
	say " Still curious you ask him about his third tail. 'Oh that's because I've grown! I actually have four tails but because of how starved I was I shrank and lost 2 of my tails as well' You're somewhat confused about this, shrinking? Ok can somehow imagine it but losing your tails? That's odd, you ask him why that is, but he says he doesn't know, just that it's always happened. you're not sure if he's hiding something or if it really is just nothing to worry about. You then ask about his eye, as you notice that one of his eyes is red now, again he tells you that when he shrank his eyes changed color. He really is mysterious, his size changes, his tails change, his eye color changes and his fur seems to be changing as well, it's as if he's transforming into something entirely different. deciding you can't get any more information out of him you decide to go to sleep, Drex tries his puppy eyes but giving him a stern look immediately makes him stop and go to sleep, as do you.";
	increase loyalty of Drex by 1;

after resting while (Daytimer is night and loyalty of Drex is 6 and player is in Maintenance Storeroom and Drex is in Maintenance Storeroom):
	say "     After a long day of exploring nothing beats lying down in a nice soft bed and getting some sleep, at least that's what you like to say but before you can do that you have to feed Drex first. You get down on the bed and as usual Drex jumps on the bed and lies down on your chest and looks at you with puppy eyes again 'I hope you've learned your lesson Drex' you say still being a bit upset at him just chomping down on your arm while asleep last time. Drex his ears lower to his head 'It won't happen again really!' you pat him on the head 'good then you can stay' as you say that you put your arm in front of him and tell him to go ahead, he bites down on your arm and starts sucking your blood.";
	LineBreak;
	say "     As he's drinking you look him over and see how much more white his fur has become, you think it's about 50/50 now, half of it is white, half of it is black, you guess once he's all better he will likely be all white, he also mentioned a fourth tail, you wonder what color that will be, but before being given more time to think about it you can already feel yourself tiring out quickly from all the blood loss 'alright that's enough Drex' he removes his fangs and gives your cheek a lick, definitely trying to make you forget about what he did last time. tired from it and struggling to stay awake you wish Drex good night and go to sleep.";
	increase loyalty of Drex by 1; [now loyalty of Drex is 7]

after resting while (Daytimer is night and loyalty of Drex is 7 and player is in Maintenance Storeroom):
	say "     [bold type]You get ready for some sleep and feeding Drex again[roman type].";
	say "     'Is it time again!?' Drex says with his tails wagging, eager as always to get to eat again. 'Yes it's time,' you say, 'But curb your enthusiasm a bit Drex, I don't want to be woken up by you in the middle of the night again!' He almost seems to pout a bit as you say that 'It was just once!' you chuckle a bit seeing him react like that, alright let's get on the bed, as you say that he jumps on the bed right away, clearly eager to get started. You get on the bed and lie down and as always give him your arm, he gives a quick thank you, bites down and starts drinking.";
	LineBreak;
	say "     As he's busy you look over him, he's become quite a bit bigger, he probably dwarfs even a great Dane by now, it's honestly a bit concerning how big he's starting to be and hope he won't grow that much. After several minutes have passed you tell him to stop. 'Hey Drex, how big will you get anyways? Will you be done growing any time soon?' you ask him, hoping the answer won't be not for a long time 'I think I'm almost done growing, almost back to full strength too!' it's quite a relief to hear that, while you've grown somewhat used to him drinking your blood you'll be glad once it's over 'that's great to hear!' you tell him, oddly enough he doesn't seem that excited to hear that, almost as if he can tell what you're thinking his tails start wagging 'that's right, then I will pay you back and help you!' he says while what you almost think is him feigning happiness, but maybe it's just because of how tired you are that you're not seeing it correctly. With that in mind you tell him that would be great though it's time for some sleep now, after that you quickly fall asleep.";
	increase loyalty of Drex by 1; [now loyalty of Drex is 8]




[Event 16
here it decides whether or not to submit to Drex and Drex reaches Stage3]
[Table of GameEventIDs (continued)
Object	Name
Friend Turned Foe	"Friend Turned Foe"

Friend Turned Foe is a situation
Friend Turned Foe is inactive
if White Drex is resolved Friend Turned Foe is now active
Resolvefunction of Friend Turned Foe is "[ResolveEvent Friend Turned Foe]".
Sarea of Friend Turned Foe is "Bunker".
to say ResolveEvent Friend Turned foe:
	if daytimer is day:
		say "     You wake up to a stinging pain and find Drex lying right on top of you, he's put his while body on top of you and has bitten down next to your shoulder and is drinking your blood, what the he really is a god damn vampire you think to yourself, ''Get the hell off!'' you yell to him ''no'' he says somewhat annoyed ''the hell you mean no? I'm warning you get o-'' As you say that he stops, looks at your face, growls menacingly and puts his jaws around your neck, his message is clear, he can kill you at any time, panic sweeps through your mind what do you do! ''You are mine to use now'' he says ''I've waited too long for this day, now that I'm back at full strength you belong to me to use as I see fit, and that use is as my food and toy'' You freeze in horror, what the hell is he saying!?";
		say "     [bold type]He doesn't seem to be backing down, what do you do?[roman type][line break]";
		WaitLineBreak;
		say "     ([link]Y[as]y[end link]) - Give up the fight, he's clearly too strong and with all his weight bearing down on you no way can you escape.";
		say "     ([link]N[as]n[end link]) - Pretend to give up by lying still and then when he's calmed down use all your force to knock him off of you."[requires strength check maybe?]
		if Player consents:
			LineBreak;
			say "     There's no way you can fight him off, never mind his teeth being this close to your neck he's so heavy you can't even lift him off of you, there's nothing to do but submit, he's still looking at you and you look away from him, as if to say go ahead, I won't fight, he goes back to sucking the blood out of you, it hurts allot but you have no choice but to endure it. Now that he's in charge he's clearly taking his sweet time, after almost 10 minutes he's finally done and gets off of you ''I expect you back by tonight to sate my hunger some more, don't make me go out and find you'' he says. You meekly nod and go on your way.";
			wait for any key;
		else:
			say "     " [have not thought of a continuation yet, should probably be turned into a fight I reckon]
		now DrexStage is 3;
		now ScaleValue of Drex is 3;
		now Cock Length of Drex is 15;
		now Cock Width of Drex is 8;
		Friend Turned Foe is now resolved.
]

[Event 17
First time sex with player]
[Table of GameEventIDs (continued)
Object	Name
Bed Time Drex	"Bed Time Drex"

Bed Time Drex is a situation
Bed Time Drex is inactive
if Friend Turned Foe is resolved Bed Time Drex is now active
Resolvefunction of Bed Time Drex is "[ResolveEvent Bed Time Drex]".
Sarea of Bed Time Drex is "Bunker".
to say ResolveEvent Bed Time Drex:
	if Player is male and daytimer is night
		say "     You return to the bunker to sleep, almost too scared to go down but having nowhere else to sleep, as you walk down you see Drex waking from his slumber ''It's about time you came'' he says in a annoyed voice ''any longer and I'd have gone out to look for you'' It seems what he said was no joke, there really is no escaping him then ''get on the bed'' he says, you move towards the bed and as you stand in front of it he pushes you down and starts to remove[clothing] ''what the hell are you doing!'' you yell out surprised, Drex ignores you and removes your final piece of [clothing] and as he does so he mounts you, it seems blood isn't all he's interested in tonight";
		WaitLineBreak;
		say "     ''I told you didn't I? You are my food and my toy, you've fulfilled your role as food well enough, now it's time to fulfil your other role'' As he says that he penetrates your ass without much regard for your well being, at the same time he also bites down near your neck drawing blood, it seems you're going to have to endure both being fucked and having your blood sucked out of you at the same time, he doesn't take it easy, immediately ramping up the pace and rapidly fucking your ass, you're hating it yet can't help but moan, ''finally realizing what you're here for I see, the sooner you start to enjoy it the better it will be for the both of us'' he says, you hate to admit it but feels good, he picks up the pace and the pain and pleasure start setting in more, you feel his knot struggling to get in but he doesn't mind, he has all night to get you loosened up, after several more minutes of hard fucking it finally pops in as he bites down roughly on your neck, you can feel his sperm filling your insides, at the same time you also feel yourself cumming, you can't believe you just came from getting fucked by him. Soon after you pass out as it is all too much to bear while he still continues humping your ass even while knotted.";
		wait for any key;
		CreatureSexAftermath "Player" receives "AssFuck" from "Drex"
		Bed Time Drex is now resolved
		PlayerFucked of Drex is now true
]

Drex ends here.
