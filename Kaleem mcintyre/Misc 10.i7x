Misc 10 by Kaleem mcintyre begins here.

[
Section 1 - Mysterious Stranger

Table of GameEventIDs (continued)
Object	Name
Mysterious Stranger	"Mysterious Stranger"

Mysterious Stranger is a situation. The level of Mysterious Stranger is 7.

The sarea of Mysterious Stranger is "Outside".

Instead of resolving a Mysterious Stranger:
	say "'Hey, you over there with the [facename of player] face. Come here for a second.' It's the sound of the other's voice that makes you stop dead in your tracks more than what the other just said. Having not become used to being addressed so casually you stop dead in your tracks and then turn to have a look over at the...[italic type]man[roman type], at least you think it's a man from the sound of the other's voice, standing in front of an overturned Cadillac. Some unfamiliar instinct has you lowering your guard as you step closer to the unknown person, who oddly enough seems quite human given his very [italic type]normal[roman type] looking gait.";
	WaitLineBreak;
	say "'Say you look like the kinda persona that could use a little [italic type]somethin somethin[roman type] to help perk [if player is male]him[else]them up. So why not try this?' The man calmly fishes through a backpack sitting on the ground next to him and then hands something over to you. Hesitantly you stretch out your hand out and then watch as the stranger drops three small capsules into your hand. Looking over them you immediately wonder if you've just been given a narcotic, but before you can ask the question the other the mysterious stranger is chuckling and shaking his head at you.";
	WaitLineBreak;
	say "'Don't worry. It's not dope or anything like that - though something stronger than a gin and tonic might be a necessity in these strange times - let's just call these little joys...[italic type]stamina boosters[roman type] and leave it like that.' The man chuckles at you from underneath the shade of the black detective hat that he has draped onto his head before picking up his pack and then slinging it over his shoulder. 'Be seeing you around.' And with that the other is gone. Not sure you blink as you watch the other go off about his way before shaking your head as you realize just where you are at the moment.";
	WaitLineBreak;
	say "Pocketing the capsules you hurry off on your way before anything can come from out of the shadows to try and accost you.";
	Add "Capsule" to invent of player;
	Add "Capsule" to invent of player;
	Add "Capsule" to invent of player;
	now Mysterious Stranger is resolved;
	Increase score by 1;


Section 1a - Capsule

Table of Game Objects (continued)
name	desc	weight	object
"Capsule"	"A white capsule that's supposed to affect stamina?"	0	Capsule

Capsule is a grab object.
the usedesc of Capsule is "[capsuleuse]".
it is part of the player.
It is temporary.

to say capsuleuse:
	say "Not sure, but trusting the unknown person who gave you this thing you pop the capsule into your mouth.";
	if a random chance of 1 in 2 succeeds:
		say "A slightly stomach pain causes your knees give out and you find yourself kneeling onto the ground with your [one of]left[or]right[at random] hand being the only thing keeping your from face planting onto the ground. A second or two later the pain subsides and you shake your head before getting back up onto your feet. Berating yourself for taking an unknown substance from an unknown person you pause and then blink before noting that you feel rather...odd...all of a sudden. Could the capsule have really increased your stamina or is this some kind of placebo affect?";
		say "[bold type]Your stamina has increased by 1![roman type][line break]";
		increase the stamina of the player by 1;
	else:
		say "Waiting for the results to kick in you spend almost ten minutes waiting before you find yourself shrugging. Guess the guy was full of bull.";



Section 2 - Air Drop

Table of GameEventIDs (continued)
Object	Name
Air Drop	"Air Drop"

Air Drop is a situation. The level of Air Drop is 3.

The sarea of Air Drop is "Outside".

Instead of resolving a Air Drop:
	say "The whirling sound of a helicopter's blades spinning like mad catches the edge of your hearing and in looking skyward you find yourself noting a large whirlybird with a massive metal crate tied to a long wire flying overhead. Not sure what this is all about, but curious anyway you head off into the direction the helicopter is going. It takes you some time but eventually you end up trailing the helicopter all the way to a seemingly abandoned junkyard.";
	WaitLineBreak;
	say "When the hook the container is attached to the hook is suddenly unclasped, probably by means of remote, you watch as the crate sails down and then crashes onto a cleared out area on the ground. Looking back up and watching as the whirlybird heads off in the direction it just came from you hear the screech of a flock of wyvern just before seeing several flying reptiles honing in on the helicopter. When the sounds of gunfire begin to assault the air you whimsically shake your head before heading over to have a look at what exactly the whirlybird just dropped off.";
	WaitLineBreak;
	say "Upon getting to the container you find yourself flipping open the latch holding the doors of the crate closed on a whim and then gasp in awe as you find yourself looking at a plethora of food and water stacked to the brim before you. As your mind goes to wondering about the who, how and why of the situation you find the sounds of people racing into your general position teasing across the end of your field of hearing. Not wanting to be caught by people who probably wouldn't be too thrilled to see you looting their obvious provision you quickly grab what you can and then haul ass before the others can arrive.";
	Add "food" to invent of player;
	Add "food" to invent of player;
	Add "water bottle" to invent of player;
	Add "water bottle" to invent of player;
	now Abandoned Lot is known;
	now Air Drop is resolved;
	Increase score by 1;
]

Section 3 - Magical Girl

Table of GameEventIDs (continued)
Object	Name
Magical Girl	"Magical Girl"

Magical Girl is a situation.
The sarea of Magical Girl is "Outside".
When play begins:
	Add Magical Girl to badspots of humorous;

Instead of resolving a Magical Girl:
	say "When out of the blue something falls onto your head you find yourself wincing and then groaning in pain as you bow from the force of the blow to your skull. Not sure what's this on about, but hoping you're not about to be bothered by any weirdo mutants, you blink as you look down to find a...small wand-like object winking up on the ground in front of you. The fact that said object has a small piece of paper tied to it only serves to make increase your confusion as you kneel down to pick up the wand thing.";
	WaitLineBreak;
	say "Looking up at the sky in question, as if hoping someone will explain where this thing had just come from, you find yourself gazing up at the [if daytimer is day]azure sky[else]starry skies above[end if] unsurely before shrugging helplessly. Checking out the wand and then looking at the piece of paper tied to it you blink in confusion as the scrawl written down reads 'Sailor Star Power!'. The faintest memory of a TV show you had once seen before about magical girls pops through your head like a flash and silently you wonder if this is some kind of joke. Then again, given everything that happened in this town already you wonder if...";
	say "     [bold type]Maybe you could perhaps shout the phrase out aloud just to see what happens?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		say "Looking around and seeing no one in the immediate area you figure why not as a sudden plume of giddiness sings through your blood. Lifting the wand up and then shouting 'Sailor Star Power' you find yourself immediately regretting your action when a burst of rainbow colored light swallows you up. A sudden bout of confusion overcomes you as you first feel a wave crash over your body, followed by a feeling of nakedness and then finally something like ribbons strapping themselves all across your form before quickly everything slows down and you finally can blink open your eyes to see the world again. What you find however, turns out to be rather... extraordinary as you look down over yourself.";
		say "Where once before you had been dressed somewhat normally you now find that you have on a navy blue sailor skirt with a pink ribbon tied onto the back draped onto your waist, a tight fitting white sleeveless shirt hugging your upper body, a pair of arm length white gloves strapped onto your arms, a pair of blue boots covering your feet, and a golden tiara placed neatly onto your head. You'd scream, but you're somewhat afraid of what may come out of the shadows to have a look at what the noise is all about so instead you shakily look for your backpack, which had mysteriously slipped from your shoulders during your transformation, grab said pack when you do find it and then hurry back to the bunker so you can make sense of all of this.";
		say "As you run off you never notice a black cat sitting on the ground watching you as you scamper away in fear. And maybe that's a good thing because at seeing the casual smirk lining the feline's facial features your fading resolve might have completely crumbled and you might have had that nervous breakdown after all.";
		now carried of Sailor Outfit is 1;
		now Resolution of Magical Girl is 1; [shouted the phrase]
		now battleground is "void";
		move player to the Bunker;
		Increase score by 1;
	else:
		LineBreak;
		say "Feeling almost foolish for thinking up something so dumb you casually toss the wand to the side and then continue off on your way.";
		now Resolution of Magical Girl is 2; [didn't shout the phrase]
	now Magical Girl is resolved;



Section 3a - Sailor Outfit

Table of Game Objects (continued)
name	desc	weight	object
"Sailor Outfit"	"A sailor soldier outfit designed to make you a sex symbol to both men and women alike."	1	Sailor Outfit

Sailor Outfit is equipment.
Sailor Outfit is not temporary.
The AC of Sailor Outfit is 10.
The effectiveness of Sailor Outfit is 40.
The placement of Sailor Outfit is "body".
The descmod of Sailor Outfit is "A simple yet magical sailor outfit rests over your body.".
The slot of Sailor Outfit is "body".

Instead of smelling Sailor Outfit:
	say "The Sailor Outfit smells like something from out of this world mixed with determination to find your one true love.";

Section 4 - June Mermaid

Table of GameEventIDs (continued)
Object	Name
June Mermaid	"June Mermaid"

June Mermaid is a situation.
The sarea of June Mermaid is "Warehouse".

Instead of resolving a June Mermaid:
	say "Heading along one of the boardwalks of the warehouse district's north dock you come to find a young mermaid, you blink twice to be sure, but yes you are seeing a naked half female half fish woman, sitting along one of the lower docks talking to a young otter. The two seem to be chuckling over something, but you can't hear the conversation from where you are. Taking the time to watch the two of them you look to see the mermaid, with her long cerulean hair and ample bosom, as she leans over next to the otter, who is quite male from what your eyes can tell you of the other's gender, and then goes to town nuzzling the other somewhat fondly. It's only the sudden shout of someone calling out for someone else that breaks up this tender little moment.";
	say "You watch as the otter shakes his head before pulling himself up and away from the mermaid somewhat sorrowfully. You continue to gaze at this sadly romantic scene even as the mermaid nods her head at the mustelid in understanding before diving into the ocean to go off about her way. The otter turns just in time to see a killer whale in a pair of cut-off blue jeans run up to him. The next few seconds are filled with strife between the two water mammals as they argue with each other, but at this point your attention wanes and you go off about your way.";
	now June Mermaid is resolved;



Section 5 - Anomaly

Table of GameEventIDs (continued)
Object	Name
Anomaly	"Anomaly"

Anomaly is a situation.
The sarea of Anomaly is "Warehouse".

Instead of resolving a Anomaly:
	say "Walking along the pier of the warehouse docks you come to find yourself looking to see a large shadow trailing through the water. Moving further towards the edge of the docks you wonder if what you are seeing is a natural borne whale of something else, however, upon noting that the dark shadow seems to be too long to be a whale and too big to be a squid you find yourself reaching up to scratch your head as you try to think over what it is that you are indeed seeing. When the shadow suddenly moves away about a minute later you figure that whatever you are seeing it isn't hostile so there's no sense in contemplating on it further since it doesn't seem to want to make itself known.";
	say "Shrugging you continue to make your way down the docks to go off to do what you were here to do in the first place while putting the odd occurrence out of your mind. However, had you looked back to check one more time you would have been remiss to see a pair of faintly glowing yellow eyes radiating from inside of the sea following the path you are taking.";
	now Anomaly is resolved;



Section 6 - Free Catch!

Table of GameEventIDs (continued)
Object	Name
Free Catch	"Free Catch"

Free Catch is a situation.
The sarea of Free Catch is "Warehouse".
When play begins:
	Add Free Catch to badspots of furry;

Instead of resolving a Free Catch:
	say "'Fresh fish!' The words make you pause even as you think how odd they sound given the limited amount of supplies there are here in the city. Turning you search for the area in which the voice had come from you look to find a black furred otter holding up a fish in one of her webbed hands. Thinking that maybe having a little extra variety in today's meal might be good for your stomach you head over to the otter to ask how much. 'There's no charge dear. I'm giving away what I have to those who don't have much. So here,' the otter hands you two fish, 'take these and take care of yourself.' Nodding to the kind mustelid you smile as you think about how nice some people can be, despite the craziness going on in the city.";
	increase carried of Tasty Fish by 2;
	now Free Catch is resolved;



Section 7 - Rumors

Table of GameEventIDs (continued)
Object	Name
Rumors	"Rumors"

Rumors is a situation.
The sarea of Rumors is "Warehouse".

Instead of resolving a Rumors:
	say "While standing on one of the docks of the pier you find yourself listening to the words of a small group of people that just happen to be passing by. 'Hey, you know how these Zephyr corp people keep coming around and advertising their company all over the city, especially down here at the docks?' A middle aged orca quietly asks his companions, a brown otter and a three headed bipedal hydra. 'Yeah, so what?' The otter asks unimpressively. 'Well, rumor has it that they were in business long before the epidemic hit this side of the states.' The orca mutters somewhat quietly. 'Where'd you hear such a thing from.' The hydra's three heads ask all at the same time. 'From my cousin down south. She told me that they had these weird people come around and set up an office in the area where she is staying right before a serious of strange events started to take place down there.'";
	say "'Strange like what?' The otter asks. 'Well, things like a rash of animal attacks, people going missing, and people reporting seeing strangers moving other's stuff out of their houses in the dead of night.' The orca mutters. 'So you think that what..?' The hydra inquires suspiciously. 'It could be just a coincidence, but I heard that...' The others move away before you can hear anymore.";
	now Rumors is resolved;



Section 8 - Diving contest

Table of GameEventIDs (continued)
Object	Name
Diving Contest	"Diving Contest"

Diving Contest is a situation.
The sarea of Diving Contest is "Warehouse".

Instead of resolving a Diving Contest:
	say "Moving over to the pier and listening to several groups of mutants arguing with each other over who can dive the best you watch as a somewhat bored looking pirate shark comes over and then offers a challenge to the groups. The rules are simply: whoever can show off the best moves while diving gets to put their group's mark on a board at the front of the pier for this week and be named Diving Champs. This sets the respective groups on fire and soon the contest to see who can dive the best gets quickly under way. You don't stay to watch the show, but you do notice how everyone seems to be getting along better now since they have a way to exert some of their pent up aggressions with one another. Maybe this will be a key to helping to figure things out for later, you think before moving on.";
	now Diving Contest is resolved;



Section 9 - Lackadaisical

Table of GameEventIDs (continued)
Object	Name
Lackadaisical	"Lackadaisical"

Lackadaisical is a situation.
The sarea of Lackadaisical is "Warehouse".
When play begins:
	Add Lackadaisical to badspots of furry;

Instead of resolving a Lackadaisical:
	say "Watching as several furry mutants cast lines off into the sea from the edge of pier you gape in awe as you notice how [italic type]comfortable[roman type] everyone seems to be despite their various mutations. Listening as some of the otters chitter and chatter to the taller orcas and sharks currently standing beside them you laugh to yourself about how lackadaisical others can be even during the midst of a crisis.";
	now Lackadaisical is resolved;


Misc 10 ends here.
