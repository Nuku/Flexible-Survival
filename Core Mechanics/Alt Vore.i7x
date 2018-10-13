Version 3 of Alt Vore by Core Mechanics begins here.
[Version 3.2 - More hard vore ]
[- Originally Authored By: Stripes -]

Section 0 - Variables

playercanvore is a truth state that varies.
vorecount is a number that varies.
vorechoice is a number that varies.
vorespecial1 is a truth state that varies. vorespecial1 is usually false.
hvoreoffer is a truth state that varies. hvoreoffer is usually false.
hvorecount is a number that varies.
hvorelevel is a number that varies. hvorelevel is usually 1.
playercanub is a truth state that varies.
ubcount is a number that varies.
ubchoice is a number that varies.
ubspecial1 is a truth state that varies. ubspecial1 is usually false.
ubpreg is a text that varies. ubpreg is usually "false".

VoreExclusion is a marker.	[list of infections to not be vored]
when play begins:
	add { "Shemale Smooth Collie", "Raccoon", "Doberman", "Nightmare", "Sphinx", "Hyena matriarch", "Blob", "Skunkbeast Lord", "Blue Chaffinch", "Peacock", "Hippo", "Albino Mouse", "Tiger Cop", "Sea Lion and Orca Toys", "Siamese Cat", "Anthro Goat", "Bear", "Sewer Gator", "Dragon", "Feral Cheetah", "Badger", "Opossum Sailor", "Hermaphrodite Latex Vixen", "Wrestling Wolf", "Stag", "Football Wolfman", "Reindeer", "Triceratops", "Butterfly", "German Shepherd", "Magic Drake", "Monkey", "Lamia", "Jackal Guard", "Mental Mouse", "Mushroom Men", "Parasitic Plant", "Sugar Ferret", "Anthro Rabbit", "City Sprite", "Koballoon", "Sea Otter", "Yamato Dragon", "Yamato Dragoness", "Giant", "Feral Sea Dragon", "Feral Sea Dragoness", "Wyvern", "Awesome tree", "Tentacle Horror", "Sierrasaur", "Mammoth", "Hydra Beast", "Xeno", "Peculiar Dragon", "Sea Horror", "Cum Girl", "Flesh Blob", "Jaguar Warrior", "Cowboy Cuntboy", "Plains Lizard", "Thought Eater", "Viking", "Megakitty", "Royal Tiger" } to infections of VoreExclusion;

HardVoreExclusion is a marker. [list of infections to not be hard vored - similar to above list, but also includes non-flesh monsters]
when play begins:
	add { "Shemale Smooth Collie", "Raccoon", "Doberman", "Nightmare", "Sphinx", "Hyena matriarch", "Blob", "Skunkbeast Lord", "Blue Chaffinch", "Peacock", "Hippo", "Albino Mouse", "Tiger Cop", "Sea Lion and Orca Toys", "Siamese Cat", "Anthro Goat", "Bear", "Sewer Gator", "Dragon", "Feral Cheetah", "Badger", "Opossum Sailor", "Hermaphrodite Latex Vixen", "Wrestling Wolf", "Stag", "Football Wolfman", "Reindeer", "Triceratops", "Butterfly", "German Shepherd", "Magic Drake", "Monkey", "Lamia", "Jackal Guard", "Mental Mouse", "Mushroom Men", "Parasitic Plant", "Yamato Dragon", "Yamato Dragoness", "Giant", "Feral Sea Dragon", "Feral Sea Dragoness", "Wyvern", "Awesome tree", "Tentacle Horror", "Sierrasaur", "Mammoth", "Hydra Beast", "Xeno", "Peculiar Dragon", "Sea Horror", "Cum Girl", "Flesh Blob", "Jaguar Warrior", "Cowboy Cuntboy", "Plains Lizard", "Thought Eater", "Viking", "Megakitty", "Royal Tiger", "Sugar Ferret", "Anthro Rabbit", "Koballoon", "City Sprite", "Sea Otter", "Black Wasp", "Cock Cannon", "Clockwork Fox", "Automaton", "Blue Gel", "Bottlenose Toy", "Chocolate Lab", "Goo Girl", "Latex Fox", "Latex Ermine", "Latex Wolf", "Werewolf Costume", "Naiad", "Pink Gel", "Purple Gel", "Rubber Tigress", "Sand Man", "Teddy Bear", "Plush Lion" } to infections of HardVoreExclusion;

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Inner Predator	"Inner Predator"

Inner Predator is a scavevent. The level of Inner Predator is 4.
The sarea of Inner Predator is "Allzones".
when play begins:
	add Inner Predator to badspots of furry;

Instead of resolving a Inner Predator:
	if guy is banned and girl is banned:
		say "     Picking your way between several immobile and abandoned cars, you spot an all to familiar sight in the road ahead. Piles of clothing, ripped and covered in various fluids, along with the personal items of whomever (or whatever) use to be in those clothes. Among the shredded clothes and scattered items, one specific thing catches your eye - a sealed briefcase. Polished and very official looking, with its clasp broken from the evident scuffle that had taken place here, it rests atop a torn lab coat. Curious, and hoping to find something you might be able to use, you crack the case open slowly. Sadly, it is empty, someone clearly having gotten here first and emptied it.";
		say "(This event is closed if both guy and girl are banned.)";
		now Inner Predator is resolved;
		continue the action;
	say "     Picking your way between several immobile and abandoned cars, you spot an all to familiar sight in the road ahead. Piles of clothing, ripped and covered in various fluids, along with the personal items of whomever (or whatever) use to be in those clothes. Among the shredded clothes and scattered items, one specific thing catches your eye - a sealed briefcase. Polished and very official looking, with its clasp broken from the evident scuffle that had taken place here, it rests atop a torn lab coat. Curious, and hoping to find something you might be able to use, you crack the case open slowly.";
	say "     Inside, there is a single vial of a murky looking fluid, along with some documents and notes. As well, a candy bar - score! The papers have been badly smudged and ruined by the seeping fluids around, including several tear marks that could very well have been made by large claws. Although most of the writing has been rendered unable to decipher, some words manage to stand out enough to read. [']Predator experiment['] and [']test substance['] are the most prominent that catch your eye, along with what appear to be government or corporate insignias along the tops of the pages. Clearly, this vial of fluid was part of some experiment, possibly related to the nanite plague now sweeping the city.";
	say "     You manage to piece together a few more words, but the majority of the documents are no longer legible, leaving you with a vial of unknown substance in your hand. If the government was working on something to do with this nanite plague, this may very well be useful to you in your survival in the infested city. Then again, who knows what it could do?";
	say "     Do you use the vial?";
	if player consents:
		say "     Steeling your nerves, you carefully unscrew the small lid on the vial. Even though you have no idea what you're getting into, things can't get much worse, right? After all, any advantage could help you survive. Sucking in a breath, you quickly down the contents of the vial, the coppery-taste hitting your tongue and making you grimace. Swallowing, you empty the vial down your throat, then wait for something to happen.";
		say "     For a moment, nothing happens, and you are left slightly worried. Then, a warmth rises in your stomach, gently radiating outward until your entire body feels strangely warm. It's possible that whatever this substance was, it's affecting the nanites inside your body... perhaps even altering them. As the glowing warmth fades, your stomach lets out a soft rumble, a sudden bout of hunger overtaking you. Automatically, you reach for the candy bar you found, but as soon as you place the chocolate to your lips, you suddenly find yourself not desiring the food. The hunger is still present, but its like eating is the last thing you want to do.";
		say "     Wrapping the candy bar back up, you replace it in your pack and being to gather your things to leave, slightly perturbed by these events. Hopefully whatever you just drank out of that vial does not come back to bite you later... relatively speaking.";
		increase carried of chips by 1;
		WaitLineBreak;
		if girl is not banned:
			say "     As you're turning to leave, a female husky, looking rather worse for wear, spots you and charges in to attack. Already weakened, a quick blow sends her tumbling and a few more put her to the ground for good. It is a quick fight and thankfully one of the easiest you've faced since this mess began.";
			say "     As your defeated foe collapses in a heap before you, your body is struck with another wave of intense hunger. You look down upon your beaten foe as a new, predatory instinct arises in your mind. Before you can even think about it, you kneel next to the husky, hands reaching out for its exhausted body. She lifts her head to look at you, fearful about what you intend to do, but a swift strike from your palm to her head renders her unconscious. Now, practically unable to control your own body, you are forced to watch what unfolds.";
			WaitLineBreak;
			say "     Kneeling by the head of the female husky, you reach down and pull her muzzle up to your face, until it meets your mouth. You give her snout and face a few licks, before without warning, you open your jaws wide and take her in! A sense of panic grips your mind, but your body is no longer yours to control. You feel her snout touch the back of your throat, and then you swallow, pulling the husky's head in deeper to your hungry maw. A slight pop is heard as your jaw dislocates, and your mouth stretches even wider, taking in the entire head of the dog. Your skin stretches as if it were rubber, feeling no pain from it, but still able to feel the sensations nonetheless. You are unsure if you'd not be able to do this were you not gorging as you are.";
			say "     With another possessive swallow, the head of the female husky disappears down your throat, your mouth now stretched impossibly wide to accommodate her shoulders as you continue to devour your prey. Your neck begins to bulge out with the form of your unwilling meal, but the altered nanites inside you keep adjusting your body to take in your new prey. Another swallow, and the shoulders of the beast enter your throat, your tongue now rubbing over her furred chest, giving you the full taste of your canine prey. In your mind, you are reeling with the impossibility of it all, and yet, you cannot help but continue your perverse feast.";
			WaitLineBreak;
			say "     Several more swallows and gulps, and more of the female husky disappears into your greedy maw, nearly half the creature already making its way to your stomach. Gulp... and her hips pass over your tongue to begin sliding down your gullet, leaving only her legs and tail sticking out of your mouth. Her form is clearly bulging out your frame, your neck and now your belly stretching around the large meal you are ingesting. Leaning back, you lift your head skyward to let gravity assist you in the final stages, and you feel the husky slide down a little easier. Another few swallows, and her legs vanish into your lips, leaving only her bushy tail. With a slurp, your tongue sucks it in and the last trace of the dog woman disappears inside you.";
			say "     Sitting back, dazed, you feel the form of the husky sliding into your gut, your belly now bulging out as if you were massively pregnant. With an audible rumble, your stomach starts to churn and you feel the body of your foe begin to melt away, the nanites in your body throwing your digestive processes into overdrive. Various gurgles can be heard as the once bulky canine is turned into a nutrient-rich liquid for your predator body. Within minutes, your belly has shrunk to a mere paunch as you feel the rush of the digested creature wash through your body.";
			say "     A smile crosses your face as you pat your shrinking belly. You feel... content now, as if consuming the defeated creature has fulfilled some deep purpose in your infected body. Plus, you shouldn't have to worry about food for a while. Pulling yourself back up and retrieving all your gear, you head back out into the infested city with a surprising bounce in your step.";
			say "     Maybe this isn't such a bad thing after all...?";
			add "Vore Predator" to feats of player;
			now playercanvore is true;
			increase vorecount by 1;
			LineBreak;
			say "     You have the [bold type]Vore Predator[roman type] feat, increasing your hunger growth dramatically. The higher your hunger (and the more often you do it), the more likely you'll be tempted to consume your enemies whole to sate your hunger while also infecting you. You may adjust some vore related settings via the [bold type]vore menu[roman type].";
			if "Automatic Survival" is listed in feats of player:
				say "     [special-style-1]NOTE:[roman type] [bold type]Automatic Survival detected:[roman type] Your hunger will not increase and you'll instead be given a base chance of 25% for vore before other factors.";
			decrease hunger of player by a random number between 20 and 28;
			if hunger of player < 0, now hunger of player is 0;
			decrease humanity of player by 10;
			now researchbypass is 1;
			infect "Female Husky";
			now researchbypass is 0;
			increase score by 20;
		else:
			say "     As you're turning to leave, a latex fox, looking rather worse for wear, spots you and charges in to attack. Already weakened, a quick blow sends him tumbling and a few more put him to the ground for good. It is a quick fight and thankfully one of the easiest you've faced since this mess began.";
			say "     As your defeated foe collapses in a heap before you, your body is struck with another wave of intense hunger. You look down upon your beaten foe as a new, predatory instinct arises in your mind. Before you can even think about it, you kneel next to the latex fox, hands reaching out for its exhausted body. He lifts his head to look at you, fearful about what you intend to do, but a swift strike from your palm to his head renders him unconscious. Now, practically unable to control your own body, you are forced to watch what unfolds.";
			WaitLineBreak;
			say "     Kneeling by the head of the fox, you reach down and pull his muzzle up to your face, until it meets your mouth. You give his snout and face a few licks, before without warning, you open your jaws wide and take him in! A sense of panic grips your mind, but your body is no longer yours to control. You feel his snout touch the back of your throat, and then you swallow, pulling the fox's head in deeper to your hungry maw. A slight pop is heard as your jaw dislocates, and your mouth stretches even wider, taking in the entire head of the fox. Your skin stretches as if it were rubber, feeling no pain from it, but still able to feel the sensations nonetheless. You are unsure if you'd not be able to do this were you not gorging as you are.";
			say "     With another possessive swallow, the vulpine's head disappears down your throat, your mouth now stretched impossibly wide to accommodate his shoulders as you continue to devour your prey. Compressed by your throat, his body and tail are puffed out further, but your need to feed pushes to squeeze him back in. Your neck begins to bulge out with the form of your unwilling meal, but the altered nanites inside you keep adjusting your body to take in your new prey. Another swallow, and the shoulders of the beast enter your throat, your tongue now rubbing over his smooth chest, giving you the full taste of your vulpine prey. In your mind, you are reeling with the impossibility of it all, and yet, you cannot help but continue your perverse feast.";
			WaitLineBreak;
			say "     Several more swallows and gulps, and more of the latex fox disappears into your greedy maw, nearly half the creature already making its way to your stomach. Gulp...and his hips pass over your tongue to begin sliding down your gullet, leaving only his legs and tail sticking out of your mouth. His form is clearly bulging out your frame, your neck and now your belly stretching around the large meal you are ingesting. Leaning back, you lift your head skyward to let gravity assist you in the final stages, and you feel the fox slide down a little easier. Another few swallows, and his legs vanish into your lips, leaving only his bushy tail. With a slurp, your tongue sucks it in and the last trace of the latex fox disappears inside you.";
			say "     Sitting back, dazed, you feel the form of the fox sliding into your gut, your belly now bulging out as if you were massively pregnant. With an audible rumble, your stomach starts to churn and you feel the body of your foe begin to melt away, the nanites in your body throwing your digestive processes into overdrive. Various gurgles can be heard as the once bulky latex fox is turned into a nutrient-rich liquid for your predator body. Within minutes and with a large belch, your belly has shrunk to a mere paunch as you feel the rush of the digested creature wash through your body.";
			say "     A smile crosses your face as you pat your shrinking belly. You feel... content now, as if consuming the defeated creature has fulfilled some deep purpose in your infected body. Plus, you shouldn't have to worry about food for a while. Pulling yourself back up and retrieving all your gear, you head back out into the infested city with a surprising bounce in your step.";
			say "     Maybe this isn't such a bad thing after all...?";
			add "Vore Predator" to feats of player;
			now playercanvore is true;
			increase vorecount by 1;
			LineBreak;
			say "     You have the [bold type]Vore Predator[roman type] feat, increasing your hunger growth dramatically. The higher your hunger (and the more often you do it), the more likely you'll be tempted to consume your enemies whole to sate your hunger while also infecting you. You may adjust some vore related settings via the [bold type]vore menu[roman type].";
			if "Automatic Survival" is listed in feats of player:
				say "     [special-style-1]NOTE:[roman type] [bold type]Automatic Survival detected:[roman type] Your hunger will not increase and you'll instead be given a base chance of 25% for vore before other factors.";
			decrease hunger of player by a random number between 20 and 28;
			if hunger of player < 0, now hunger of player is 0;
			decrease humanity of player by 10;
			now researchbypass is 1;
			infect "Latex Fox";
			now researchbypass is 0;
			increase score by 20;
	else:
		say "     You toss the mysterious vial back into the briefcase and pocket the candy bar. There are enough weird and out-of-control elements already present in the city. The last thing you need is to go messing around with another. Deciding not to risk whatever's in the vial to be found by another, you toss the briefcase and its contents into a small garbage fire nearby.";
		say "     Oh well, at least you got a candy bar out of it.";
		increase carried of chips by 1;
		increase score by 5;
	now Inner Predator is resolved;


Section 2 - General Vore by Player

to vorebyplayer:
	choose row monster from the Table of Random Critters;
	let hvorechance be hvorelevel * hvorelevel;
	if hvorelevel > 1 and ( a random chance of hvorechance in 16 succeeds ) and name entry is not listed in infections of HardVoreExclusion:
		say "[hvorebyplayer00]"; [Master hard vore scene]
		decrease humanity of player by 2; [Additional humanity loss]
	else:
		say "[vorebyplayer00]"; [Master vore scene]
	let vv be a random number between 1 and 6;
	let powerchance be 4;
	if "Bestial Power" is listed in feats of player, increase powerchance by 2;
	if a random chance of powerchance in 20 succeeds:
		if vv is 1:
			if strength of player < str entry and str entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself. You feel your muscles swelling with [name entry] [one of]strength[or]physique[or]power[at random].";
				increase strength of player by 1;
				increase capacity of player by 5;
		if vv is 2:
			if Intelligence of player < int entry and int entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself. You feel your mind swelling with [name entry] [one of]intelligence[or]wit[or]complexity[at random].";
				increase intelligence of player by 1;
		if vv is 3:
			if dexterity of player < dex entry and dex entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself. You feel your hand-eye coordination improving with [name entry] [one of]dexterity[or]physique[or]accuracy[at random].";
				increase dexterity of player by 1;
		if vv is 4:
			if stamina of player < sta entry and sta entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself. You feel your body toughening with [name entry] [one of]stamina[or]physique[or]power[at random].";
				increase stamina of player by 1;
		if vv is 5:
			if perception of player < per entry and per entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself. You feel your senses being heightened with [name entry] [one of]perception[or]aptitude[or]feral attention[at random].";
				increase perception of player by 1;
		if vv is 6:
			if charisma of player < cha entry and cha entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself. You feel your social sense improving with [name entry] [one of]charisma[or]natural charm[or]pheromones[at random].";
				increase charisma of player by 1;
	if "Safe Appetite" is not listed in feats of player:
		say "     Indulging in this monstrous act has further weakened your grip on your own humanity even as you feel the nanites from your prey flooding your system as your belly quickly seeks to consume them. Your hunger, satisfied for now, is decreased dramatically.";
		now researchbypass is 1;
		infect;
		now researchbypass is 0;
	decrease hunger of player by ( 4 * scale entry ) + a random number between 8 and 16;
	if hunger of player < 0, now hunger of player is 0;
	decrease humanity of player by 3;
	increase vorecount by 1;


Chapter 3 - Vore Scenes

to say vorebyplayer00:	[master list to decide scenes]
	choose row monster from the Table of Random Critters;
	if vorecount >= 4 and name entry is not "Mannequin" and name entry is not "Snake" and name entry is not "Naga" and vorespecial1 is false:
		say "[vorebyplayer03]";
	else if vorecount >= 5 and name entry is not listed in infections of HardVoreExclusion and ( currentmonster is cocked or currentmonster is cunted ) and hvoreoffer is false:
		say "[hvorebyplayer00]"; [one-time check for hard vore]
	else if name entry is "Bald Eagle" and a random chance of 3 in 5 succeeds:
		say "[vbp_baldeagle]";
	else if name entry is "Hawkman" and a random chance of 3 in 5 succeeds:
		say "[vbp_hawkman]";
	else if name entry is "Hermaphrodite Gryphon" and player is not neuter and a random chance of 3 in 5 succeeds:
		say "[vbp_hermgryph]";
	else if vorecount > 4 and name entry is "Leopardman" and a random chance of 3 in 5 succeeds:
		say "[vbp_leopardman]";
	else if name entry is "Gazelle" and vorespecial1 is true and gazellesbeaten >= 3 and a random chance of 3 in 5 succeeds:
		say "[vbp_gazelle]";
	else if name entry is "Elk" and vorespecial1 is true and a random chance of 3 in 5 succeeds:
		say "[vbp_elk]";
	else if name entry is "Messy Pig" and vorespecial1 is true and player is not neuter and a random chance of 3 in 5 succeeds:
		say "[vbp_messypig]";
	else if vorespecial1 is true and (the remainder after dividing vorecount by 3 is 0) and name entry is not "Snake" and name entry is not "Naga":
		say "[one of][vorebyplayer04][or][vorebyplayer05][cycling]";
	else if vorecount > 5 and name entry is not "Mannequin" and scalevalue of player >= ( scale entry + 2 ) and a random chance of 3 in 5 succeeds:
		say "[vorebyplayer06]";
	else if vorecount is even:
		say "[vorebyplayer01]";
	else if vorecount is odd:
		say "[vorebyplayer02]";


to say vorebyplayer01:		[basic - head first]
	choose row monster from the Table of Random Critters;
	say "     Following the dark impulses coming from your roiling stomach, you jump upon your fallen foe and pin them down. Too weak to put up much of a fight, you are able to restrain the [name entry]. At first, expecting sex, they don't fully resist when you manhandle them roughly[if scalevalue of player > (scale entry + 1)]. Being much smaller than you, it's easy enough to get a tight grip on them and pull them towards your lips[else if scalevalue of player > scale entry]. Being a little smaller than you, it doesn't take you long to get a tight grip on them and pull them towards your lips[else]. Being about as big as you, it takes a little while before you're satisfied that you've got a tight grip on them before pulling them towards your lips[end if]. Expecting a kiss at first, they prepare for this, only to have your mouth open very wide, unhinging or stretching as necessary as you stuff their head into your mouth.";
	say "     As you push the struggling [name entry] into your throat, you moan in delight, your perverse hunger taking pleasure in feeling their struggles. They squirm delightfully as they're pulled inexorably down your throat as you push more and more of the [type entry] creature into your gaping maw. Your tongue laps over them, tasting the treat you're stuffing yourself with, teasing and tantalizing them with your licks to give them a final thrill before they are gone. They slide down your throat in a delightfully pleasant descent and end up balled up in your squeezing, churning stomach. Your belly bulges [if scalevalue of player is scale entry]hugely[else if scalevalue of player is (scale entry + 1)]considerably[else]outwards[end if] with your rapidly consumed foe. You need to take a moment, rubbing your tummy as you feel your opponent's struggles weaken before stopping entirely. Soon afterwards, your belly starts to go down as you consume their body to satisfy your unnatural hunger.";

to say vorebyplayer02:		[extended basic - head first]
	choose row monster from the Table of Random Critters;
	say "     Your foe crumples at your feet, defeated and immobile. From within you, you can feel that familiar predatory instinct arising, and without pause, you commit yourself to the act. Kneeling next to the beaten [name entry], you quickly check to make sure they won't be fighting back, and lick your lips in anticipation. Bringing them forward, you lick their face and head, before your jaws yawn widely and you pull their head inside. As soon as you feel their head touch your throat, you swallow, pulling them along with it. As they're pulled in, your mouth begins to stretch even wider, eagerly opening up for the form of your prey.";
	say "     With a mouthful of [name entry], you greedily gulp and swallow, taking in their wider shoulders and chest as your body begins to change to accommodate their form. Your neck bulges, showing the progress of your meal towards your gut, and the sensations only drive you to swallow again, their chest sliding down your throat as their hips come to rest in your mouth. Their rich, delicious flavor floods your tongue as their body slides over it, making your inner predator rumble happily. You pause to lick at their form a few times, before your greedy gullet makes you swallow again, pulling more and more of them in.";
	say "     It only take a few minutes of hard swallowing before less and less of the defeated [name entry] remains outside your gaping maw. Their legs slowly slide in and followed lastly by their feet, your tongue licking at them as they disappear between your lips. Your neck and stomach bulge obscenely, showing off the size of the meal you've just eaten, as your throat muscles work to get all of them into your eager belly. The gurgles begin, and you feel the rapid progress of digestion starting up, your predatory nanites helping your body's natural processes greatly[if player is not neuter and libido of player > 50]. Excited by what you've done, you slip a hand down to your crotch and start masturbating with one hand while rubbing your belly bulge with the other, taking perverse pleasure in what you've done[end if].";
	say "     In no time, your massively distended belly shrinks down, the prey inside being reduced into fuel for your body. The rush of the consumed creature flashes through your body, giving you a feeling of strength and pride. Gathering your things, you give your slightly rounded stomach a pat, thanking your foe for their contribution to your survival, and you head out into the city once again.";

to say vorebyplayer03:		[special 1 - first time feet first, voluntary prey]
	choose row monster from the Table of Random Critters;
	say "     With that increasingly familiar dark impulse building in your roiling stomach, you lick your lips and grab them by the legs. Having been successful in your consumption several times before, you've become emboldened and decide to go at this one from the other end. You move in quickly while your foe is too weak to put up much of a fight, grabbing them by the legs even as your jaw unhinges and begins to stretch. By the time the [name entry] starts to realize what's happening, you've already got their feet past your tongue and sliding down your throat with your hands on their thighs to send them in after. With your hands on their hips, you pull them in another few inches while crawling forward.";
	say "     With your warm, wet throat sliding up their legs, you can't help but moan a little, becoming somewhat aroused and excited by your success and upcoming meal, a sound they echo in response despite their dire situation. It seems your prey is actually getting turned on by this, which makes you grin broadly. With your lips having reached their hips, you pause in your eating to rub your hands over your meal's body while your tongue licks across their crotch, exciting them further. You go for another few inches and press the base of your tongue against their loins. This has them so aroused now that they only put up some token resistance when your hands grab their wrists and press them to their sides. It's like the [name entry] is more struggling to drag out the consumption longer than actually trying to get away.";
	say "     But your hunger won't be delayed much longer and with a big gulp, you yank them further in, getting a start on their upper limbs and hampering their ability to hold you back. As you lift yourself to your knees and sit upright so the rest of your squirming, moaning meal can slide more easily the rest of the way down. Having particularly enjoyed this meal, you rub your hands and tongue over their body, continuing to pleasure the kinky [name entry] so they might at least enjoy their final moments. Certainly their cries of pleasure grow louder and you feel them slide more easily down your throat as their orgasm lubricates their inexorable descent into you. With their shoulders stretching your throat wide to fit them, you rub your hand over their head, caressing this surprisingly special meal, knowing its one you'll both remember fondly for as long as you live - not that that will be very long for one of you.";
	say "     With a few last swallows, their upper body slides down to join the rest of them bundled up in your distended stomach. Your belly bulges large with your [if scale entry >= scalevalue of player]huge[else if scale entry is scalevalue of player + 1]large[else]sizable[end if] meal inside it. They squirm around inside you, perhaps thinking you'll be releasing them or maybe just getting into a more comfortable position for pleasuring themselves to orgasm one last time[if player is not neuter]. Reaching around your bloated belly, you masturbate quickly to a powerful climax as well, the thoughts of what's occurred having turned you on greatly[end if]. After a short time, some fresh moans come from your belly and they orgasm again. You give a belch, expelling most of their air supply, leaving them to pass out shortly afterwards. Sensing the [name entry] inside you is unconscious, you rub your belly and smile as your stomach gurgles and their digestion begins.";
	say "     As quickly as ever, your massively distended belly shrinks down, the playful prey inside being reduced into fuel for your body. The rush of the consumed creature flashes through your body, giving you a feeling of strength and pride. As you pat your shrinking tummy, you can't help but smile happily, thanking your foe for both their contribution to your survival and for the unexpectedly pleasurable mealtime fun. Having tarried longer than expected after all this, you head out into the city once again.";
	now libido of player is ( ( libido entry * 3 ) + libido of player ) / 4;
	now vorespecial1 is true;

to say vorebyplayer04:		[feet first v1]
	choose row monster from the Table of Random Critters;
	say "     With that familiar dark impulse building in your roiling stomach, you lick your lips and grab them by the legs. Wanting to consume this one bottom up, you stuff their feet into your mouth and quickly take those into your stretching throat with a wet gulp. You move quickly up their legs, getting as much in as you can before they quite realize their predicament. Getting more adept at this, you're almost to their knees before they quite realize what's going on and you've already got a firm grip on their hips. With a cry of surprise, they try to pull themselves out. Failing that, the [name entry] starts to claw at the ground, trying to drag themselves free, but with little success.";
	say "     As you're maw stretches wider and you're getting ready to take in their hips, they give up at pulling away and instead try to strike at you with their forelimbs. Too weak from the fight, they aren't able to do much damage and only end up giving you a chance to grab their upper limbs and [one of]pin them to their side[or]pull them across their chest[at random]. This both cuts off their ability to fight back and gets them ready to go down. After a few playful licks across their loins so you might enjoy the taste of your pinned meal, you pull their waist into your mouth while sliding their thighs down your throat.";
	say "     Keeping their limbs pinned down, you pull them in further, forcing your throat to stretch around their hips as they're pulled own. Sitting upright to add gravity in your favor, a few more swallows has their wrists snugly trapped by your constricting esophagus. No longer needing your hands to hold the [name entry][']s limbs, you place a hand over their mouth to silence their cries as they try to call out. With the other on their shoulder, you pull them relentlessly downwards into your gaping maw as they struggle and shake their head, going inch by inch further towards their fate as your next meal. Already your stomach's gurgling in anticipation, eager to digest the struggling foe. After popping their shoulders in with a muffled grunt, you shove their head into your mouth and close it behind them. They squirm delightfully the whole time they're pulled down into you, pressing their hands, feet and face against your stretched belly as they struggle to push free as you feel the rapid progress of digestion starting up, quickly putting an end to their struggles.";
	say "     In no time, your massively distended belly shrinks down, the prey inside being reduced into fuel for your body. The rush of the consumed creature flashes through your body, giving you a feeling of strength and pride. Gathering your things, you give your slightly rounded stomach a pat, thanking your foe for their contribution to your survival, and you head out into the city once again.";

to say vorebyplayer05:		[feet first v2]
	choose row monster from the Table of Random Critters;
	say "     Feeling that dark hunger well up inside you, you don't hold it back. Licking your lips as you grab your defeated prey, you press them to the ground on their back and stuff their legs into your widening mouth. You move quickly, getting their feet and ankles in your mouth in a few quick gulps before they know what's happening. As the realization of their eventual fate overcomes their initial shock, the [name entry] starts to squirm and struggle. You grab their arms as they swing at you, pinning them to their sides. With this grip on them, you pull them in further, getting them down to their hips.";
	say "     With their ability to resist reduced to little more than pleasurable squirming, you're free to slow down and savor your fresh meal a little. You lick across their flesh, tasting your prey. They are especially tasty at the groin, your tongue pressing between their thighs to run across their loins in a way that has them moan and writhe delightfully. They respond to this lingual teasing with involuntary arousal, a fact that is both amusing to you and also makes them tastier. As they slip down a little further, you can no longer reach their crotch and so [if anallevel is 3]lick across their rear and between their ass cheeks to tongue their anus before picking[else]pick[end if] up the pace of your consumption again.";
	say "     Keeping their limbs pinned down, you pull them in further, forcing your throat to stretch around their hips as they're pulled down. And with them facing you this time, you get to watch their face as they move inexorably downwards on their journey to your belly. A few more swallows and you press their wrists into your mouth and then into the confines of your gripping throat. No longer needing to hold the [name entry][']s limbs, you put a hand over their mouth to silence their cries as you put the other on top of their head to pull them in. They are pulled relentlessly into your gaping maw as they struggle and squirm, inching their way down into your stomach. Your tongue slathers across their back and your drool soaks them as you work to get their shoulders in. A few couple more gulps after that and a solid push from your hand stuffs their head into your mouth and down your throat. They squirm delightfully the whole time they're pulled down into you, pressing their hands, feet and face against your stretched belly as they struggle to push free. You let out a long belch as you feel the rapid progress of digestion starting up, quickly putting an end to their struggles.";
	say "     In short order, your bloated and distended belly shrinks down, the meal inside being reduced into fuel for your body. The rush of the consumed creature flashes through your body, giving you a feeling of strength and pride. Pushing yourself to your feet, you rise and collect your things. As you get ready to head on your way again, you caress your slightly rounded stomach with a satisfied sigh.";

to say vorebyplayer06:		[head first - smaller prey]
	choose row monster from the Table of Random Critters;
	say "     Looking over your much smaller foe, you lick your lips and give into that dark hunger growing inside you. Weakened by your attacks and at a disadvantage due to your larger size, they are easily detained. With a strong grip on them, you lift your smaller foe up and bring their face to yours. They suck in a breath to give a cry of fear, but you open wide and stuff their head and shoulders into your open maw in one go. The [name entry] kicks and struggles in vain, your predatory body easily able to deal with your tinier opponent. Your throat stretches and bulges as you push them steadily into your hungry mouth, tongue running over their body as you taste this little morsel.";
	say "     With your considerable practice, eating this one down is fairly easy, letting you better focus on savoring this one than dealing with the difficulties of eating something much larger. With a hand firmly around each leg, you pause with their hips inside your mouth and let your tongue lash across their groin[if anallevel is 3] and pucker[end if], working to tease and taunt your foe with sensual licks. The [name entry] squirms and struggles even as they moan as well, soon adding their hot juices to the flavor of your meal. While they're still dazed from their involuntary orgasm, you push them the rest of the way into your mouth, soon closing your lips as they slide down your throat and start to slip into your belly just as it's starting to gurgle again, ready to start digesting this fun tidbit you've caught.";
	say "     Quickly enough, your distended belly shrinks down, the prey inside being reduced into fuel for your body. A rush of strength and renewed energy flows into you even as you gather your things. Already feeling a little hungry again after your light meal's gotten you excited for live prey, you rub your belly as it smooths back down to its normal size and head back out into the city.";

to say vbp_baldeagle:
	say "     Grabbing the weakened avian, you press him to the ground as your belly rumbles. 'Mmm... fresh chicken,' you moan hungrily in his ear. The powerful bird takes umbrage at this and struggles angrily in your grip, only wearing himself out further. You chuckle and let him do so, the eagle not realizing what's in store for him.";
	say "     Making sure his wings are well-pinned, you give his face a long, slow lick. This calms him momentarily into thinking your plans are purely sexual. You even feel him start to get hard beneath you. That is until you open your hungry maw wide and start pulling the bird creature in while your drool drips onto his feathery face.";
	say "     '[one of]What? Wait! No! Nooooooo![run paragraph on][or]Don't you dare! I'm not a chicken! I'm not a chi-[or]You won't get away with this! I'll st-[or]I hope you choke on me! I hope you choooooo-[at random]' the eagle cries before being cut off as you stuff his beaked head into your mouth. Once he's in and your throat is squeezing tightly around his beak, his cries become muffled noises. And so down this unplucked and kicking [']chicken['] starts to go, feathers and all, into your belly.";
	say "     The avian's body, built for flight, is fairly light and easy for you to lift up. You feed him down into you several inches at every gulp. It takes a little added effort going over his wings and shoulders, but it becomes especially easy after that. With his wings partially pinned in your mouth and throat, your hands are free to feed the rest of him down at a comfortable pace.";
	say "     You even pause just before his hips to grope his cock[if anallevel > 1] and finger his asshole[end if] to tease and taunt him before continuing. Despite the raptor's attempts to resist, he becomes hard and even cums when you resume eating him and his erection is pressed into your hot maw. The added rush of the bird of prey's seed across your taste buds makes you all the hungrier to consume him and you feed the basted bird down into your belly at an increased pace.";
	say "     As his legs go down, you grab his feet and hurriedly pull him down into your raised maw. You push those feet right in and down your throat, balling up the bird in your stretched belly. He squirms and struggles for a while, a pleasant feeling especially because of his soft feathers. Flopping down to take a seat on the dry grass, you give a satisfied sigh and rub your overfull tummy until the struggles gradually stop and wait for your ravenous stomach to consume your prey and return to normal.";

to say vbp_hawkman:
	say "     Grabbing the weakened avian, you pin his arms under his wings and press him to the ground as your belly rumbles. 'Mmm... fresh chicken,' you moan hungrily in his ear. The bird of prey squawks and tries to snap at you with his beak. You chuckle and give him a thump against the ground as a reminder that he's already lost.";
	say "     Keeping a good grip on him, you look him over hungrily. Mistaking your gaze for one of lust, he [if player is male]squirms some more before giving up with a sigh. 'Look. I'm no tail-raiser, so just get it over with,' he claims, you can feel him start to get hard beneath you[else]grins a little with forced confidence. 'Look. If you just wanted to bang, there was no need to fight like that. Let's get it on, baby!' You can even feel him start to get hard beneath you[end if]. You grin sinisterly and say 'Alright then. You asked for it.' before opening your hungry maw wide and pulling the bird creature in.";
	say "     '[one of]Stop! What're you doing! Don't d-[or]He's going to eat me! Oh my gawwwwwwwd!!![run paragraph on][or]Please, don't do it [if player is male]man[else]babe[end if]. I've... uh... I've got a hen and chicks! Five, no, six of [']em! Sto-[or]Ohpleaseohpleaseohpleaseohpleaseohpl-[at random]' the frightened hawk cries before being cut off as you stuff his beaked head into your mouth. In your mouth and pressed into your stretchy throat, his squawking becomes thankfully muffled. You lick and drool over your prey, saliva soaking into his feathers as you ease him towards your belly.";
	say "     This avian's body is quite light, being built for flight, making him easy to lift and manhandle into your maw. You feed him down into you several inches at every gulp. Your extra-wide mouth and throat struggle briefly as you start on his torso, but eventually you get his shoulders going down your esophagus. It gets even easier once his wings and arms are enough in that your hands are freed.";
	say "     Keeping a grip on one of his kicking legs, your other hand is free to move to your crotch[if player is herm]. You start to masturbate, rubbing your hard cock[smn] and fingering your juicy puss[yfn], having gotten considerably aroused by the whole process[else if player is male]. You start to masturbate, rubbing your hard cock[smn], having gotten considerably aroused by the whole process[else if player is female]. You start to masturbate, fingering your juicy puss[yfn], having gotten considerably aroused by the whole process[else]. You rub at your genderless crotch, aroused by the whole process but unable to do much about it[end if]. When your tongue gets within reach of the hawkman's cock, you lick and suck down on it. It's particularly enjoyable as it gets pressed against your throat, squeezed and rubbed by your swallowing until he cums despite himself[if player is not neuter]. The perverseness of this is enough to have you cum as well[end if]. Your pace of swallowing increases in response and he slips from thighs, knees, shins and finally feet pulled into your mouth and down your esophagus.";
	say "     It's not long after that the last of him ends up stuffed and bundled in your warm belly. He struggles feebly to escape, imprints of his taloned paws and his beak pressing out from your stretched tummy. But the effort of this quickly expends the last of his waning strength and soon it's just soft pushes and feeble rubbing before stopping entirely. You lean back and massage your bird-filled belly, the sensation of being so delightfully full wonderful while it lasts. In time, the excess bulge of your meal goes down and you're ready to move on, sated [if hunger of player > 30]somewhat [end if]for the moment.";

to say vbp_gazelle:
	say "     The gazelle cries out in pain from your last blow and is knocked to the ground at your feet. As she starts to scramble away, having bought time for the rest of the herd to flee, you grab this one before she can get away. Feeling a predatory rush of excitement and a rumble of hunger in your belly, you start to salivate as you look her over. She looks like savannah fast-food to you.";
	say "     Recognizing your hungry gaze, the antelope bleats and pants in fear and tries to pull free. The whites around her dark eyes show as she looks around wildly for escape. '[one of]Nononononononono...' she repeats over and over[or]I knew it! I fucking knew it!' she swears angrily[or][if player is female]He's[else]She's[end if] gonna eat me!' she screams[or]Not like this! Not like thiiiis!' she weeps[or]Please! You don't want to eat me. I'm all dry and stringy,' she pleads[at random] as you let her wear herself out a little. Grabbing her hoofed feet, you unhinge your jaw and open your mouth extra-wide. Drool drips down onto her legs as you pull them up and start stuffing her down feet first. Your unwilling meal claws at the dirt in an effort to pull away, but slowly moves further down your throat regardless.";
	say "     Strangely, it seems the situation's gotten the gazelle quite aroused despite her obvious fear. She's quite hard and her pussy leaks juices across her thighs. You grab her hips and stuff her into your maw down to those meaty thighs so you can get a taste of that. Already finding her quite tasty to begin with, the addition of her fear-lust renders her delicious. You drool all the more and slather your slobbering tongue across her dual-gendered loins. Moans and pleasured bleats start to break up her continued pleas to not be eaten.";
	say "     You reach further up, grabbing her softly-furred breasts and grope them while letting your powerful throat muscles slowly pull her in deeper. Her slender body slides past your lips and you tweak her nipples one last time as your tongue licks at the underside of them. You then grab her head, temporarily silencing her as you hold her muzzle shut and push her shoulders in. You take care to guide those antlers of hers safely down your throat.";
	say "     As her head slips fully past your lips, her outstretched arms continue to grope wildly at the empty air. '[one of]No! Dear god, no!' she pleads[or]I knew it! Damn nature documentaries!' she moans as her last words[or]Why am I delicious? Nobody should be this delicious,' she states confusingly[or]Why, god? Why'd you make me so tasty?!' she cries out[at random]. Another swallow and her body shudders inside you as a moaning bleat of pleasure shudders through your victim. Knowing she's having one final and involuntary orgasm while being consumed, you grab her arms and press them into your open mouth and then deep down your throat.";
	say "     With the taste of your deliciously perverse meal still on your tongue, you stretch out and rub your bloated belly, enjoying the squirming inside. In time, your ravenous stomach absorbs your prey, your figure returns to its usual state and you're able to get up and moving again, your hunger sated for the moment.";

to say vbp_messypig:		[written by Wolfwing, edited by Stripes]
	if player is male:
		say "     Having beaten down the messy pig, you eye her a bit hungrily. She turns to flee from you as you feel that familiar emptiness in your belly and pounce upon her before she can get too far.";
		say "     The sow has a hungry look of her own when you pin her down and your hard-on begins to push against her belly. 'I just love bacon,' you say as you press your [bodydesc of player] form down atop her porcine body. She looks down as best as she can at your stiffening crotch. 'Well... I'm a little hungry myself,' she responds with a lick of her snout, giving you the idea in your head to try something kinky.";
		say "     Laying down on your back you motion her to take your cock into her snout while presenting her pussy towards you. As she gets into position, you give it a few licks and quickly feel her tongue and snout go over your [cock of player] manhood. She immediately begins to hungrily suck on it in return.";
		say "     After a few moments of waiting while she's distracted, you give her pussy one last lick before moving her hooves to your mouth. Opening up wide, you start to slowly press her hooves into your mouth as you lick over them. A confused sound coming from her as you begin, but she's too distracted by your cock and not expecting anything dangerous.";
		say "     Licking over her ankles, you begin to carefully slide more of her feet into your mouth while being careful to not let her feel much of your maw. Her snout remains firmly over your cock as she sucks and licks over it, your pre leaking out and giving her a bit of a taste. That along with your scene and musk begins to cloud her mind from much of anything else.";
		say "     Sliding more of her into your mouth, you have to bend your body slightly along with her legs - though thankfully not too much yet - as you move up her thighs. You lick over them as your tongue moves towards her pussy and, in a few moments, you begin to lick over it. Her snout may be sucking heavily on your [cock size desc of player] cock, but she's starting to realize something is up at the point she feels her hooves press against your throat. She releases a confused squeal from her and tries to look back, though a hand placed on top of her head keeps her from looking back. She starts to ask 'What's going o...' as you stuff your penis back into her snout.";
		say "     As she is now up to her hips in your throat, your licking over her pussy and plump belly keeps her distracted a little bit. She does try to struggle to see, but this just adds to your pleasure. You have to fight to widen your mouth further to get her fat belly past your lips and end up orgasming upon your success. You spurt your seed into her snout and fill it up as she coughs slightly. She hits her own climax from your licking and from her arousal at your shooting cock in her snout.";
		say "     While she's still distracted by both yours and her climax, you pull at her even more in earnest as you sit up a bit more. This has your penis pop out from her snout and she starts to realize what's actually going on. But by this point, she's in up to her topmost row of breasts within your mouth as you lick over them and her belly, savoring her flavor.";
		say "     Starting to panic, she tries to bat at you. 'Stop, what are you doing... I just wanted to suck on you...' she squeals, to which you reply, 'And I just want to suck on you... all the way down.' Your tongue probes over her as you stand up a bit and let gravity begin to pull her wide body down your throat more and more as her feet start to enter your stomach.";
		say "     Feeling herself slide in more, she tries unsuccessfully to grip at the edges of your mouth. With your mouth slick with drool, her blunt little fingers are unable get a safe grip on anything. She slowly slides more into your mouth as her head and then hands disappear in until there is nothing more than one last hand grasping at the air before descending into you.";
		say "     With a final few gulps, you drag her further down into your body and into your stomach. You where you can see her struggling and even hear a couple of muffled pleas begs before finally succumbing to your stomach. Your belly churns away and soon begins to dwindle away, abating your hunger a little for the moment.";
	else:
		say "     Having beaten down the messy pig, you begin to feel that rather familiar hunger for some food - and this time it's bacon. You lick your mouth hungrily and pounce on her as the pig attempts to escape, pinning her to the ground with your [bodydesc of player] form. You rub your cunny against hers and bring down your fingers to play with it before rolling off of her and onto your back.";
		say "     The sow rather quickly gets the idea and moves over towards you, laying down between your legs with her snout presses against your belly sniffing at it. She snuffles quickly down towards your cunny before finally taking a big whiff that causes the skin to goosebump from the sensation.";
		say "     Finally after a few moments, the pig sticks her tongue out and begins to slowly lap at your cunny. She licks and presses her tongue into it as she tastes your flesh, your body arching and twitching in the pleasure. You look down at her hungrily, thinking of what is to come, that nice plump juicy body will fill you up quite well.";
		say "     Every single motion of her tongue brings you closer to your own climax, causing small spasms of pleasure from you. She smiles at these and continues to lick and lap at your pussy, focusing upon your clitoris as you shortly begin to spasm and hit your orgasm. Your lady juices coat her snout as she eats you out with grunting oinks of delight.";
		say "     Panting and coming down from your climax, you motion her to come up with a falsely friendly smile. 'Come here and let me clean you up... and get a taste,' you say as you lick your lips.";
		say "     You sit up as she approaches and take her head with your hands and lick over her snout giving a smile. 'You taste like cream bacon,' you say as she closes her eyes, enjoying this lick. And it is at that moment that you take advantage of her distraction to unhinge your jaws and, with a tight grip on her head, begin to push it into your mouth.";
		say "     It takes her a few moments to realize the situation has changed as the kiss from you begins to get a bit more deeper and encasing than she was expecting. She gives a startled and confused, 'Hey, stop. Let go! What are you doing???' she squeals. She tries to pull back, but the hold that you have on the back of her head keeps her from pulling back like she wants too.";
		say "     Continuing to lick over her snout and then her neck, you slowly push her into your mouth. The taste excites you heavily as you push her into your mouth until you get enough of a grip that you can start to swallow. This leaves you free to then reach down towards her breasts and begin to play with them while holding her tightly with your mouth.";
		say "     Still struggling and pleading, the pig fights and tries to pull herself out of your mouth but finds herself trapped despite all attempts to back out. Her hooves try to hit you though she soon finds herself distracted as you first play with her breasts before moving down to stroke and rub over her cunny, causing a moaning whine coming from her.";
		say "     Continuing to swallow her down, you finally reach her nice plump bacon-filled belly. You give this a few long hard strokes with your tongue, just enjoying that wonderful taste as you stroke her pussy, causing her to struggle and kick over and over again.";
		say "     After a few hard swallows, you finally manage to get around her belly. Her rump and groin enter your mouth soon after as you pull your hand away from her cunny. Now licking it directly, she gives a couple of hard squeals and you get a dose of her pork juices on your tongue before it slips past you and into your mouth along with the rest of her soon following.";
		say "     As the last of her goes into your mouth, you lick over her hooves and then gulp her down the last few times into your stomach. You're left with a [if scalevalue of player is 3]hefty[else if scalevalue of player is 4]large[else]minimal[end if] belly as you pat it. You savor feeling her struggles slowly begin to die down and then finally end as your nanites work to slowly digest her and break her down.";

to say vbp_hermgryph:
	if player is male:
		say "     With the gryphon herm sufficiently weakened, she cannot resist as you grab her and push her onto the ground. Pressing her beak to your loins, you order her to start licking. Her tongue slides across your manhood before she takes it into her warm mouth. You're hungry and look forward to consuming your meal, but you're not above playing with your food first. Especially when they do such a fine job at it. You rock your hips firmly, thrusting your [cock of player] cock into the gryphon's mouth. As you're nearing your peak, you pull out and stroke yourself to climax, spraying your messy load across her face and beak.";
	else:
		say "     With the gryphon herm sufficiently weakened, she cannot resist as you grab her and push her onto the ground. Pressing her beak to your loins, you order her to start licking. Her tongue brushes across your folds before sliding into your hot tunnel. She can't delve far because of her beak, but the rubbing of that hard nose against your clit more than makes up for it. You're hungry and look forward to consuming your meal, but you're not above playing with your food first. Especially when they do such a fine job at it. You rock your hips firmly, grinding your pussy against her beak and tongue. When you cum, it is a juicy orgasm that leaks your femcum across the gryphon's face and beak.";
	say "     Having basted the bird with your [if player is male]semen[else]juices[end if], your hunger rises anew. Leaning down towards her, she thinks your coming in for a sloppy thank-you kiss and tilts her head up with her eyes closed. You grin and open your mouth wide, taking her beak and part of her head right into your gaping maw instead. By the time she realizes the extent of her mistake, it's too late and you're pushing her head into your throat.";
	say "     As you're licking at her blue breasts, she tries to resist, but you've got her wings pinned over her arms. With her struggling, it takes some effort to get your jaw and then your throat stretched over her shoulders, breasts and wings, but eventually you manage it. From then on, it is much easier going.";
	say "     With the worst of the struggle with your meal over, you're better able to enjoy it. She proves to be quite tasty, having a mix of avian and animal flavors. There's something exotic and special to her taste that you can't quite pin down, like a spice you've never had before or a fruit you've never eaten. And those lingering traces of your sexual fluids further season her.";
	say "     Getting down to the tenderest and juiciest part of your feast, the herm's loins, you stop there for a time. Aiming her knotted cock into your mouth, your tongue and palate work over the throbbing meat. You also dip a pair of fingers into her dripping snatch, giving your meal a finger-fuck before she goes. And with her head and shoulders already in your belly, you both know this is her final chance to get off. And get off she does despite her dire situation, pumping a hot, gooey load across your tongue and soaking your wriggling digits with her juices. This fresh rush of flavorful fluids also makes swallowing her down all the easier. Your stomach, tired of waiting, especially with the delectable sauce that's just been added to wet your appetite, rumbles with renewed vigor.";
	say "     Be it the post-orgasmic haze or the general lack of oxygen, the gryphon's struggles have pretty much stopped. Swallowing down her lower half is an easy task - a push to get her hips in and the rest follows soon after. It's not long before you're pushing her heels past your lips and into your throat. You slurp up the last of her tail and lick your fingers clean, sucking off the last of those exotic juices. You can feel your digestion starting up as your prey is passing out. You find a quiet spot to sit and digest your meal, happily caressing your tummy while enjoying the lingering tastes on your tongue. As always, your belly bulge goes down as your meal is absorbed into you.";

to say vbp_leopardman:
	say "     As your fight is going on, you can't help but notice how much meat there is on the buff feline. With the big cat staggered by your last blow, you make a grab and tackle him to the ground. The powerful feline growls and struggles, but he's too worn to get free. You lean over him and give his head a slobbery lick, saying how the predator has become the prey. This upsets the leopard, but a hard twist of his arm behind his back keeps him down.";
	say "     You give him another long lick across his face and nose, and it darkly pleases you to hear him give a fearful mewl. You continue to tease him like this, grinding your [if player is male]cock[smn][else]crotch[end if] against his rear as you keep tasting your meaty prize. And while the carnivore has a stronger flavor than most, it is also an exciting and powerful one. There is a definite rush from the prospect of eating this big, strong predator.";
	say "     [one of]'No-no-no-no-no,' he mewls repeatedly, shaking his head[or]'This can't be happening. I'm the hunter here,' he mrowls[or]'Don't even think about it. I'll claw right out of you,' he threatens[or]All he can do is snarl and growl incoherently, his mind becoming more feral as he takes leave of his senses[at random]. Having taunted, teased and tasted your meal long enough, the next big lick is followed by you unhinging your jaw and stuffing his head into your mouth. There's muffled growls as he struggles hard again, but the worn feline can't fight the inexorable pull of your throat for long. Soon his strong shoulders and meaty arms follow.";
	say "     His journey into your belly continues like it has for your previous monstrous meals. At least until his upper body lands in your distended belly. You can feel him continue to struggle inside you. There is a moment of concern when you feel his sharp claws across your stomach lining, but you soon realize that the scratches are barely felt and fade almost immediately. Your voraphilic nanites have adapted you to resist such assaults. His further attempts are even less effective, his claws getting eroded and consumed by your digestive nanites. Your meal fights and struggles to the very end when he passes out. Struggles that, once the initial shock had passed, turned out to be quite enjoyable, even arousing. It's not long before your digestion starts up in earnest, working to shrink down that feline bulge in your belly.";

to say vbp_elk:
	say "     With the elk knocked to his knees before you, your belly rumbles with a craving for venison. And given his size and fitness, he'll make for a large and filling meal indeed. Grabbing him by an antler, you force him to the ground in front of you. Rather than face starting with that large rack of his, you decide feet first will be best. Striking him on the side of the head, you stun him senseless so you can begin.";
	say "     Grabbing his hooved feet, you pull them up and into your expanding maw. Those meaty calves and thighs of his soon follow, giving you your first taste of your venison victim. Finding him quite delectable, you press onwards quickly as he groans in dazed confusion. Grabbing his stiffening cock keeps him distracted as you work your way over his hips. He has a strong, musky taste, especially in this area.";
	say "     By the time you're forcing his hands in alongside his waist, he realizes too late what you're doing. He gives a bugling cry of surprise and struggles in vain against your swallowing throat and squeezing esophagus. The peristaltic pull draws him ever deeper, you licking as his pecs now. [one of]'Whaaughhh!' he screams incorrently[or]He wheezes out faint bleats and moans with what little air his constricted lungs can pull in[or]'Don't! Please don't!' he pleads in vain[or]'Nnnggh! Lemme have one more rut before I go! Just one more!' he groans with mad lust[or]'One of my sons will avenge me,' he snarls[or]'It's not hunting season yet. It's not hunting sea-' he tries to exclaim[at random]. You press his muzzle shut and angle his head down, forcing it down your throat. With your lips about to enclose his head, you lick and suck at the base of his antlers while pulling on them. Somehow his rack pulls free, leaving you able to safely swallow him the rest of the way down.";
	say "     With the large elk stuffed in your belly, you're left quite full. You [if scalevalue of player is 3]waddle your overloaded tummy[else if scalevalue of player is 4]stagger your bulging tummy[else]rub your rounded belly and walk slowly[end if] to a quiet spot to sit and digest. You enjoy the musky taste of venison still lingering in your mouth as your stomach sets to digesting and absorbing your meaty meal[if a random chance of 1 in 3 succeeds] while gnawing on the fallen antlers[end if].";


Chapter 4 - Hard Vore by Player

to say hvorebyplayer00:	[master list to decide scenes]
	choose row monster from the Table of Random Critters;
	if hvorecount is 0:
		say "[hvorebyplayer01]"; [first hard vore scene]
	else if name entry is "Ram" and vorespecial1 is true and a random chance of 3 in 5 succeeds:
		say "[hvbp_ram]";
	else if name entry is "Ewe" and a random chance of 3 in 5 succeeds:
		say "[hvbp_ewe]";
	else if name entry is "Feral Wolf" and a random chance of 3 in 5 succeeds:
		say "[hvbp_feralwolf]";
	else if name entry is "Succubus" and a random chance of 3 in 5 succeeds:
		say "[hvbp_succubus]";
	else if name entry is "Incubus" and a random chance of 3 in 5 succeeds:
		say "[hvbp_incubus]";
	else if name entry is "Hermaphrodite Dolphin" and dolphintricked > 2 and a random chance of 3 in 5 succeeds:
		say "[hvbp_dolphin]";
	else if player is male and ( currentmonster is cunted or anallevel > 1 ) and a random chance of 1 in 4 succeeds and hvorecount >= 3:
		say "[hvorebyplayer04]";
	else if currentmonster is cocked and ( player is female or anallevel > 1 ) and a random chance of 1 in 4 succeeds and hvorecount >= 3:
		say "[hvorebyplayer05]";
	else if hvorecount is odd and currentmonster is cocked and ( player is female or anallevel > 1 ):
		say "[hvorebyplayer02]";
	else:
		say "[hvorebyplayer03]";
	if hvorecount is not 0, increase hvorecount by 1;


to say hvorebyplayer01:
	choose row monster from the Table of Random Critters;
	say "     You pin the [name entry] on [ghis] back. Not understanding the intent behind the hungry look in your eyes, [ghe] acquiesces, expecting sex. For the moment, you don't correct [ghis] misconception and place a hand at [ghis] crotch and start [if currentmonster is cocked]fondling [ghis] dick[else if currentmonster is cunted]fingering [ghis] pussy[else]rubbing [ghis] bare groin[end if]. You're prepared to play with your food for a bit, but your hunger grows more ravenous. A strange sensation can be felt in your mouth and a pass of your tongue tells you your teeth are growing longer and sharper. You start to drool, wanting to tear right into your hapless victim. Shall you do so?";
	say "[bracket]Yes = Hard Vore, No = Soft Vore[close bracket][line break]";
	if player consents:
		say "     Rather than risk over-complicating the first of such meals for you, you muffle your foe's mouth and push [ghis] head upwards, baring [ghis] neck. You lick along [ghis] throat slowly, taking a final taste before lunging at the [name entry]. Your new, pointed teeth dig into [ghis] neck easily, chomping through flesh and cartilage as you tear out the creature's throat. [gche] makes some wet, gurgling noises, but [ghis] fate is sealed. You continue to dine upon the [name entry], biting several meaty chunks from your fallen foe's even as [ghis] final struggles fade and end.";
		say "     You feel no remorse or self-disgust in your current, predatory state, loving the taste of the creature's bloody flesh as you chew into it. And while those emotions may come later, you do worry that someone may come upon you while you're eating. So while your monstrous hunger may want you to continue tearing mouthfuls of your foe off, you instead grab the mangled remains of its head and body, feeding them into your stretched maw whole. You do give it the occasional chew on its way down, letting you savor your meal a little more. Your forbidden feast is so exciting that you resolve to enjoy more like this one in future when you think you can safely get away with it. Too soon for your liking though, this meal is done, your hungry belly having inexorably drawn your bloody meal down into its depths.";
		say "     You lick the mess of blood from your lips and hands, leaving only the crimson stain behind to indicate what happened here. Your stomach gurgles and you release a meaty belch as your accelerated digestion kicks in. In no time, your massively distended belly shrinks down, the grisly meal inside being reduced into fuel for your body. The rush of what you've done fills you with dark pride, feeling powerful and dangerous. Gathering your things, you give your slightly rounded stomach a pat and you head out into the city once again.";
		if hvorelevel is 1:
			now hvorelevel is 2;
			say "[bracket]Hard Vore content is now active at standard frequency level (~25%). This setting can be changed in the [bold type]vore menu[roman type].[close bracket][line break]";
		increase hvorecount by 1;
	else:
		say "     Fighting the urge to use those serrated teeth, you grab the [name entry] and open your mouth as wide as you can. Before [ghe] can react, you shove [ghis] head and shoulders into your gaping maw. [gche] starts to squirm, but it's too late now. You keep your mouth wide and raise [ghim] up, letting gravity help you. Thankfully, your pointed teeth go back to normal once you're well on your way to swallowing them, the dark craving passing.";
		say "     You continue your meal at a more leisurely pace now, playing your tongue across your tasty meal's [if currentmonster is cocked and currentmonster is cunted]cock and cunny, savoring the mix of flavors[else if currentmonster is cocked]cock, enjoying teasing them to arousal[else if currentmonster is cunted]cunny, toying with [ghim] via a quick tonguefucking[else]bare groin[end if]. But your hunger won't be delayed for long, so you only tease [ghim] enough to get them all hot and bothered despite [ghis] precarious situation. Taking a few big gulps, your throat pulls the [name entry] down into your belly. You pat the rounded bulge your meal makes in your distended tummy as you feel your opponent's struggles weaken before stopping entirely. Soon afterwards, your belly starts to go down as you consume [ghis] body to satisfy your unnatural hunger.";
		now hvorelevel is 1;
		say "[bracket]Hard Vore is now off. This setting can be changed in the [bold type]vore menu[roman type].[close bracket][line break]";
	now hvoreoffer is true; [prevents later auto-offer]

to say hvorebyplayer02:
	choose row monster from the Table of Random Critters;
	say "     You feel a violent urge rising and your teeth grow longer and pointier as your dark appetite grows stronger. You slide your slobbery tongue across your lips as you pin your foe down beneath you. Your eyes run over the tasty-looking [name entry] with obvious hunger, clearly worrying [ghim]. Before the creature can call out though, you muffle [ghis] cries with one hand while keeping them pinned by partly sitting on [ghis] lower body. Leaning in, you run your tongue up and down [ghis] chest almost sensually to get a taste of them.";
	say "     The [type entry] creature squirms and struggles while you tease the poor thing briefly. Unable and unwilling to hold back your hunger for more than a few licks though before lunging right into [ghim] by sinking your teeth into the [name entry][']s belly. You chew up a big mouthful of [ghis] viscera while clamping [ghis] mouth shut to muffle the pained cries. You dig deeper and higher up with each following bite, chewing into the cavity you're making in your struggling meal. Reaching [ghis] frantically beating heart, you sink your teeth into your meaty prize, tearing it out of former foe's chest.";
	say "     With their struggles over, you're free to savor your meaty mouthful, chewing it up with your sharp teeth. The blood it holds pours down your throat, washing down several gory bits of the creature's heart as well. After finishing it, you dig back into its chest cavity, eating several more mouthfuls of meat and organs.";
	say "     While you're tempted to enjoy your remaining meal bite by bite, the worst of your hunger for flesh has been satisfied. Rather than risk being interrupted mid-meal, you grab the eviscerated body and open your mouth extra-wide. In goes the lifeless head, soon followed by the remains of the upper body[if hvorecount > 5 and a random chance of 1 in 3 succeeds]. Being picked up by the shoulders is too much for the damaged midsection and the lower half of the body falls away from the rest. You pause to fully swallow down the first half, letting it settle into your belly. Having used the opportunity to gather up the torn remains of the creature's organs into its belly, you move onto eating the second half, letting those bits pour down your throat as you up-end the shredded belly into your maw before taking it into your mouth[else]. Barely holding together with the first half, you lift the mutilated lower body into your maw while swallowing the first part down[end if]. Soon enough, you're stuffing the legs into your mouth and down your throat, finishing by licking your fingers clean. You suck the last of the bloody mess from them one at a time.";
	say "     Getting up, you do what your can to clean the bloody mess off yourself using some rags. You don't worry about the stain you've left behind - it's just one like many others the monsters of the city have made. You release a meaty belch and pat your rounded tummy as your ravenous nanites set to breaking down your meal to sustain you.";

to say hvorebyplayer03:
	choose row monster from the Table of Random Critters;
	say "     Not holding back your violent hunger, it returns as you grab your former foe and press [ghim] to the ground. [gche] still tries to struggle a little, but there's not much [ghe] can do at this point. Your jaws open wider and your teeth become sharp spikes. With drool dribbling onto [ghis] frightened face, you lick your slobbery chops before lunging at the [name entry].";
	say "     Feeling your jaws sink into [ghis] neck, you taste the creature's blood and flesh even as you crush and rend [ghis] windpipe. [gche] makes some wet, gurgling noises, but [ghis] fate is sealed. You continue to dine upon [ghim], biting meaty chunks from [ghis] upper body even as the last of the light fades from [ghis] eyes.";
	say "     Nothing but a remorseless hunter in your current state, you take bite after bite out of your fresh meal. Your voracious teeth bite through bone with hard crunches as you take out chunks of the [name entry] by the mouthful. By the time you pause to look over what you've done, most of its chest is gone, head and arms severed as you dined upon its upper torso. You finish off the arms with a few crunchy bites. Next comes the head with a satisfying chomp before chewing it into chunks. With the lower body and legs all that's left as bodily evidence of your grisly meal, you open your mouth wide and stuff it in, letting the guts spill down your throat ahead of the rest. You swallow the remains whole to give you that satisfying heavy and full feeling you've come to enjoy from devouring your foes.";
	say "     After you've taken a few minutes to recover, your digestive nanites have had time to start their job. You pat your rounded belly as the microscopic robots work at breaking down your meal into sustenance for your continued survival - survival of the fittest.";

to say hvorebyplayer04:
	choose row monster from the Table of Random Critters;
	say "     You feel your dark hunger rising, but along with it comes a rush of arousal. Shall you play with your food first or get right to your meal? ([link]Y=fuck them[as]y[end link], [link]N=consume[as]n[end link])[line break]";
	if player consents:
		say "     Pushing the creature over, you get [ghim] into position and drive your hard cock into [ghis] [if currentmonster is cunted]juicy cunt[else]tight asshole[end if] with a satisfied grunt. You grope and fondle your prey, keeping [ghim] distracted as your jaw unhinges and your teeth elongate into sharp spikes. You can't help but salivate over your unaware meal as you thrust into that [if currentmonster is cunted]wet cunny[else]clenching butt[end if] of [ghishers]. Drool drips from your dangling tongue down onto the back of the [name entry][']s neck and shoulders.";
		say "     After achieving a quick orgasm and dumping your [cum load size of player] load into [ghis] [if currentmonster is cunted]womb[else]bowels[end if], you are done playing and it is time to feed. The [name entry], dazed from the fucking, is easy prey at this point. You extend your jaws around [ghis] head and bite it clean off. There is only the briefest moment of realization on your meal's part before you chomp down and it is too late. You give their head a few bites to spill its contents across your tongue before moving on to meatier fare.";
		say "     You take a few licks at the severed and bleeding stump of their neck before proceeding to stuff the rest of them into your mouth. You're ravenous at this point, only taking the occasional bite as you shove [ghis] [type entry] body and then legs down your throat. By the time you're done, all that's left is a bloody stain splattered with some cum from your earlier fun. Your carnivorous nanites work rapidly to break down your meaty meal, absorbing your fallen foe to sustain you.";
	else:
		say "     Not wanting to delay your feast, you grab your foe's head and pull it toward yours. What might at first be misconstrued as a kiss is quickly revealed to be far more horrifying as your jaw opens unnaturally wide and your teeth extend into a serration of spikes. The [name entry] tries to cry out, but it gets muffled and then cut off as you shove [ghis] whole head into your toothy maw and bite down. You let the decapitated body fall to the ground while you chomp on the [type entry] head, chewing it into crunchy chunks of brains and bone.";
		say "     While tasty, the meatier fare of the [name entry][']s body looks much more appetizing, so you move onto it instead. You start by taking a few licks at the severed and bleeding stump of [ghis] neck before biting several chunks out of the shoulders. Doing so frees the arms, which you finish off with several crunchy bites. You move on to the torso, biting several large chunks out of it and chewing them up as you eat your way down.";
		say "     Reaching the abdomen, the guts threaten to spill out, so you up-end their intestines and viscera into your mouth and start feeding [ghis] lower body and legs into your maw. With your hunger partially sated, you're able to savor the taste of the creature's crotch before polishing off their hips and then sending their legs down into your belly. You're left full and sated, your belly stuffed with [name entry] meat that your carnivorous nanites rapidly digest to absorb into your body to sustain you.";

to say hvorebyplayer05:
	choose row monster from the Table of Random Critters;
	say "     You feel your dark hunger rising, but along with it comes a rush of arousal. Shall you give your food a final chance to fuck before eating or do you want to get right to your meal? ([link]Y=ride them[as]y[end link], [link]N=consume[as]n[end link])[line break]";
	if player consents:
		say "     Pinning the creature on [ghis] back, you move atop [ghim] and start grinding down onto [ghis] manhood. The [type entry] cock throbs against your [if player is female]juicy folds[else]butt[end if] while you grin menacingly down at [ghim]. After sinking yourself down onto the [name entry][']s pole, [ghe] starts fucking you with considerable zeal. Perhaps, seeing your sharpened teeth and drooling tongue, [ghe] fears what will happen if you are satisfied or maybe even knows this is [ghis] last chance to fuck anything. Hard and fast works for you, not wanting to delay your feast too long.";
		say "     Keeping a grip on the [name entry], you lean forward while continuing to ride. You slide your elongated tongue across [ghis] chest, neck and face, getting a taste of your meal. The tinge of fear only improves the flavor, exciting you further. Your [if player is female]vaginal muscles[else]anal walls[end if] squeeze and pull at the creature's cock, seeking to pull [ghis] final orgasm from it[if player is herm]. Your efforts are soon rewarded, the [name entry] crying out as hot seed blasts from [ghis] shaft and flows into your hungry womb. You pant and moan through an orgasm of your own, firing a basting of your own seed onto the frightened, orgasming [name entry][else if player is female]. Your efforts are soon rewarded, the [name entry] crying out as hot semen blasts from [ghis] shaft and flows into your hungry womb. You pant and moan through an orgasm of your own while more drool drips onto the frightened, orgasming [name entry][else if player is male]. Your efforts are soon rewarded, the [name entry] groaning in orgasm as [ghis] shaft pulses and throbs inside you as [ghis] hot seed shoots into your clutching bowels. Feeling this coupled with the grinding against your prostate sends you over the edge and you cum as well, splattering the frightened, orgasming [name entry] with a gooey basting of your own semen[else]. Your efforts are soon rewarded, the [name entry] groaning in orgasm as [ghis] shaft pulses and throbs inside you as [ghis] hot seed shoots into your clutching bowels. Feeling this coupled with the grinding against your sensitive inner walls sends waves of unfocused pleasure through you while you drool messily onto the frightened, orgasming [name entry][end if].";
		say "     With the [name entry] still in a daze after [ghis] powerful orgasm, you decide to go a little easy on [ghim] as a reward for the fine job fucking you. Pulling [ghis] head to yours, you open your toothy maw wide and stuff it in your mouth. There's only the briefest moment of realization on your meal's part before you chomp down at bite it clean off. You give the severed head a few bites to spill its contents across your tongue before moving on to meatier fare.";
		say "     You take a few licks at the severed and bleeding stump of their neck before proceeding to stuff the rest of them into your mouth. You're ravenous at this point, only taking the occasional bite as you shove [ghis] [type entry] body and then legs down your throat. By the time you're done, all that's left is a bloody stain splattered with some cum from your earlier fun. Your carnivorous nanites work rapidly to break down your meaty meal, absorbing your fallen foe to sustain you.";
	else:
		say "     Not wanting to delay your feast, you grab your foe's head and pull it toward yours. What might at first be misconstrued as a kiss is quickly revealed to be far more horrifying as your jaw opens unnaturally wide and your teeth extend into a serration of spikes. The [name entry] tries to cry out, but it gets muffled and then cut off as you shove [ghis] whole head into your toothy maw and bite down. You let the decapitated body fall to the ground while you chomp on the [type entry] head, chewing it into crunchy chunks of brains and bone.";
		say "     While tasty, the meatier fare of the [name entry][']s body looks much more appetizing, so you move onto it instead. You start by taking a few licks at the severed and bleeding stump of [ghis] neck before biting several chunks out of the shoulders. Doing so frees the arms, which you finish off with several crunchy bites. You move on to the torso, biting several large chunks out of it and chewing them up as you eat your way down.";
		say "     Reaching the abdomen, the guts threaten to spill out, so you up-end their intestines and viscera into your mouth and start feeding [ghis] lower body and legs into your maw. With your hunger partially sated, you're able to savor the taste of the creature's crotch before polishing off their hips and then sending their legs down into your belly. You're left full and sated, your belly stuffed with [name entry] meat that your carnivorous nanites rapidly digest to absorb into your body to sustain you.";


to say hvbp_ram:
	say "     You grab the rambunctious ram by the horns and wrestle him to the ground, slamming his face hard into the dirt. 'Mmm... mutton,' you say teasingly in his ear while giving his plush ass a squeeze. He bleats angrily at this and squirms, but to no avail. Exhausted from the fight, he has too little strength left.";
	let wolfcheck be false;
	if facename of player matches the text "wolf", case insensitively:
		say "     'Poor little lost lamb. Where's your shepherd to protect you from the Big. Bad. Wolf?' You punctuate each final word with a lick across his cheek, sending a shiver up the ram's spine. You can feel him trembling beneath you, eyes locked on your lupine teeth.";
		now wolfcheck is true;
	else if bodyname of player matches the text "wolf", case insensitively:
		say "     'Poor little lost lamb. Where's your shepherd to protect you from the Big. Bad. Wolf?' You punctuate each final word by smacking his face against the ground by pushing and pulling at his horn. You can feel him trembling beneath you, pinned under your strong, lupine body.";
		now wolfcheck is true;
	else:
		say "     'Foolish little lamb. Not so arrogant now, are you?' you ask, grinding his face against the ground by tugging his horn this way and that.";
	say "     '[one of]I'm sorry. I'm sorry[if wolfcheck is true and cunts of player is 0]Mr. Wolf[else if wolfcheck is true]Mrs. Wolf[end if],' he bleats fearfully[or]I ain't scare of the likes of you[if wolfcheck is true and cunts of player is 0], wolf[else if wolfcheck is true], you bitch[end if],' he bleats arrogantly, though there is a quaver in his voice[or][if player is male]Go on, you pervert. I can take it,' he snaps, raising his rear defiantly[else]Don't be so smug. You'll be part of my flock sooner or later,' he boasts[end if][or]Come on... c-c-can't you take a joke,' he says with a force laugh[at random].";
	WaitLineBreak;
	say "     You let him struggle until he's panting heavily and thoroughly worn out. Keeping a firm grip on his ankles, you pull his hooves to your open maw. 'I think I'll start with some leg of lamb,' you tease before stuffing his lower legs into your mouth. Gripping him by the hips, you let your throat pull him in steadily deeper with every gulp. With your lips around his thighs you pause and give his balls some teasing licks, making him moan and squirm feebly. He's been wide-eyed and panting heavily with fear as you've been gulping him down, but the gets him hard.";
	say "     Reaching forward, you clamp his muzzle shut before you bite down. Your sharp teeth chomp right through both his legs, filling your mouth with the taste of blood and fresh mutton. The ram screams into your hand, the noise muffled. He swings at you wildly, but you shrug off his feeble blows. He's too weak and getting weaker rapidly as his lifeblood flows out.";
	say "     After chomping down a few times on the severed legs, you swallow them down so you can turn your attention to your remaining meal. You give his bloody hips a few licks before biting down again, this time into his loins. He screams again and passes out, putting an end to his annoying struggles. You take your time with the next several mouthfuls, consuming his lower torso chunk after delicious chunk. By this point, your bloodlust feels sated, so you stuff the rest of him, arms, head and upper body down your throat, providing a satisfyingly heavy weight in your belly. Your ravenous nanites kick in, digesting the remains of the ram to sustain you. In the end, there is nothing left but some tufts of blood-soaked wool and a crimson stain to commemorate your grisly deed.";
	if wolfcheck is true:
		if facename of player matches the text "wolf", case insensitively:
			setmonster "[facename of player]";
		else:
			setmonster "[bodyname of player]";
		choose row monster from the Table of Random Critters;
	else if ( "Female Preferred" is listed in feats of player or bodyname of player is "Ewe" ) and girl is not banned:
		setmonster "Ewe";
		choose row monster from the Table of Random Critters;


to say hvbp_ewe:
	say "     You grab the over-eager ewe and push her down onto her back, pinning her to the ground. 'Mmm... mutton,' you say teasingly in her ear while giving his plush bosom. She baaaas softly and squirms a little at the rough handling[if player is male]. Seeing your cock[smn] though, she spreads her legs invitingly. Rather than turn down the opportunity, you grind your manhood against her wet woolen snatch[else]. Still lustful, she spreads her legs invitingly[end if].";
	let wolfcheck be false;
	if facename of player matches the text "wolf", case insensitively:
		say "     'Poor little lost lamb. Where's your shepherd to protect you from the Big. Bad. Wolf?' You punctuate each final word with a lick across her cheek, sending shivers up the ewe's spine. You can feel her trembling beneath you, eyes locked on your lupine teeth.";
		now wolfcheck is true;
	else if bodyname of player matches the text "wolf", case insensitively:
		say "     'Poor little lost lamb. Where's your shepherd to protect you from the Big. Bad. Wolf?' You punctuate each final word with another possessive squeeze of her breast. You can feel her trembling beneath you, pinned under your strong, lupine body.";
		now wolfcheck is true;
	else:
		say "     'You look pretty tasty, my little lamb chop,' you say, continuing to grope and manhandle her.";
		say "     '[one of]Please. Please. I'm just so lonely and horny,' she bleats[or][if player is male]I just need it so bad. Please won't you fuck me?' she moans with need[else]I... I... I didn't mean it. I was just so horny,' she bleats[end if][or]I'm sorry[if wolfcheck is true and cunts of player is 0], Mr. Wolf[else if wolfcheck is true], Mrs. Wolf[end if]. I didn't mean to upset you. I'll j-j-just be going now,' she whimpers[or][if wolfcheck is false]Please. I just need someone for a little while,' she moans, grinding her hips up[else]No-no-no-no,' she bleats fearfully, your lupine aggression frightening her[end if][if player is male and wolfcheck is true]I j-j-just need a fuck so bad. Even one from a w-w-wolf,' she bleats, torn between her fear and her need[else if wolfcheck is true]I j-j-just need to get off so bad. Even with a w-w-wolf,' she bleats, torn between her fear and her need[else if player is male]I just need a fuck so bad. Aren't I pretty enough to fuck?' she bleats, sexily rubbing her hands over her fluffy body[else]I just need to get off so bad. Please, let's just cuddle for a little while,' she bleats, sexily rubbing her hands over her fluffy body[end if][at random].";
	WaitLineBreak;
	if player is male:
		say "     Having grown aroused, you sink your [cock of player] cock into her mutton muff, drawing a baaing moan of delight and relief. Your hunger won't be denied long, but a little fun before your meal seems acceptable. You pant heavily and start thrusting, pounding her juicy snatch. Still fondling her breasts, you lean in and start licking at them and sucking on her nipples. Her cunny quivers around your shaft as it slides into that hot, wet tunnel of hers over and over again.";
	else:
		say "     Having gotten aroused, you stuff a pair of fingers into her mutton muff and start finger-fucking her. This draws a baaing moan of delight from the ewe. Your hunger won't be denied long, but a little fun before your meal seems acceptable. Still fondling her breasts with your other hand, you lean in and start licking at them and sucking on her nipples. Her cunny quivers as your finger that hot, wet tunnel of hers.";
	say "     After a couple of minutes of this fun, your hunger won't be denied any longer. You give her breasts another long lick. 'Mmm... what a delicious rack of lamb, you have. I could just eat you up,' you say coldly. Your grin flashes your elongated, pointy teeth and you clamp a hand over her muzzle before she can cry out. Her eyes go wide with fear [if wolfcheck is true]as she realizes just how far the big bad wolf is willing to take this[else]and she shakes her head from side to side[end if]. Her cunt clamps down around your [if player is male]shaft deliciously tightly[else]fingers[end if] as she's struck with terror. You open your mouth wide and chomp down onto her breast, biting through it and into her chest. She squeals into your hand and feebly tries to push free, but cannot dislodge you. You chew up the tasty mouthful and tear out another morsel as your meal.";
	say "     She grows weaker with every bite until she passes out and you continue eating her. By the time you've eaten out most of her chest cavity, the worse of your bloodlust is sated, so you stuff the remaining chunks of her - arms, legs and then the head - down your throat. They provide a satisfyingly full and heavy weight in your belly. Your ravenous nanites kick in, digesting the remains of the ram to sustain you. In the end, there is nothing left but some tufts of blood-soaked wool and a crimson stain to commemorate your grisly deed.";
	if wolfcheck is true:
		if facename of player matches the text "wolf", case insensitively:
			setmonster "[facename of player]";
		else:
			setmonster "[bodyname of player]";
		choose row monster from the Table of Random Critters;
	else if ( "Male Preferred" is listed in feats of player or bodyname of player is "Ram" or player is male ) and guy is not banned:
		setmonster "Ram";
		choose row monster from the Table of Random Critters;


to say hvbp_succubus:
	say "     Knocked to the ground, the succubus puts on a sultry display. She swoons a little such that her seductive body is shown off in a final attempt to lure you into sex. But trying to tempt you with the pleasures of the flesh only accentuates a different hunger for flesh. You lick your lips and eye their alluring body hungrily.";
	say "     Approaching the demoness, you pin her to the ground. At first, the succubus seems to think she's succeeded in tempting you and does not resist as you start to manhandle her. She spreads her legs, giving you a delicious view of her juicy cunt. And while that is indeed tempting, your hunger continues to take precedence. You lick your lips as you start to drool onto her bare breasts and your teeth extend.";
	say "     Seeing this, she squirms a little harder. 'Wait! What are you thinking? I'm meant to tempt you to lust, not gluttony,' she exclaims, more disappointed than afraid.";
	WaitLineBreak;
	say "     Leaning forward, you chomp into her shoulder, sinking your pointed teeth through that smooth skin of hers. But rather than cry out in agony, she releases a soft moaning whimper of pleasure. With a mouthful of shoulder meat in your jaws, you gaze down at the succubus. While clearly feeling the bite, she's obviously getting a perverse pleasure from it as well that supersedes the pain. You make a show of chewing and then swallowing the flesh, red drool dripping onto her body.";
	say "     You take your time with your meal, savoring every bite into her. Partway through eating, you stop holding her down; and, rather than lashing out at you, she starts playing with herself with her remaining arm. She grabs her intact breast and gropes it in a perverse display, caressing the blood-splattered tit and pinching her nipple every time you bite into her for more. With one arm and part of her chest gone, she's starting to fade, but remains aware enough to notice you're ready for her next breast and offers it freely for you to eat. Her hand then moves between her legs, fingering herself to a final orgasm just before passing out shortly before dying.";
	say "     With her dead, the fun's gone out of your meal. To finish sating your hunger, you consume the rest of her rather quickly. The taste of her sexual juices when you get to her crotch add to the flavor and provide proof that she did indeed get off on being eaten alive. This one will definitely be a meal you'll not soon forget and you're tempted to find another of her kind to eat the next time your hunger awakens.";

to say hvbp_incubus:
	say "     Defeated, the incubus falls to the ground in a rather sensual sprawl. He lands such that his seductive body [if player is male]and fuckable ass are[else]is[end if] shown off in a final attempt to lure you into sex. But trying to tempt you with the pleasures of the flesh only accentuates a different hunger for flesh. You lick your lips and eye their alluring body hungrily.";
	say "     Approaching the demon, you pin him down on his chest. At first, the incubus seems to think he's succeeded in tempting you and does not resist as you start to manhandle him. He raises his red devil tail and grinds his ass back against you[if player is male], offering his infernal asshole to you[end if]. And while toying with him is indeed tempting, your hunger continues to take precedence. You lick your lips as you start to drool onto his bare shoulders and your teeth extend.";
	say "     Seeing this, his eyes go wide and he squirms in vain. 'Hey! I don't mind if you play a little rough, but you won already. To the victory go the spoils and all that,' he adds, wiggling his ass again.";
	WaitLineBreak;
	say "     Given how he's offering it up to you, you turn around over him so you're gazing down at his taut bubble-butt. Leaning in, you give his ass cheek a long, slow lick before sinking your sharp teeth right into that round bottom. Instead of a scream of agony, he releases a long [']Oooohhhhh!['] that is more of pleasure than pain. It seems these demonic creatures can take perverse pleasure in almost anything, even their own consumption. If even pain brings delight, it is no wonder they're such formidable opponents in a fight. Food for thought, you muse even as you chew your mouthful of meat messily, letting red drool drips onto his back.";
	say "     You take your time with your meal, savoring every bite into him. After you [one of]have consumed his tail bite by bite[or]have consumed both his meaty buns[or]have moved on from his butt to the adjacent thigh[or]made a crunchy side dish of his little demon wings before getting back to his rump[at random], he raises his head and starts licking at your [if player is herm]dual-gendered loins[else if player is male]cock[smn][else if player is female]cunt[sfn][else]bare groin[end if]. He slips an arm under himself and reaches down to his groin so he can jerk off even as you continue biting more chunks out of him. Despite his wounds and the ensuing blood loss, he manages to keep it up even as he's starting to lose consciousness. He manages a final orgasm, giving a long moan that fades into silence as he shoots his load onto the ground before collapsing into the mess and expiring.";
	say "     With him dead, the fun's gone out of your meal. To finish sating your hunger, you consume the rest of him rather quickly. When you get to eating the front of his body, the added seasoning of his semen provides extra flavor. His need for sexual release and ability to find even being consumed alive sexually exciting reveals just how powerfully the infection can drive some creature's lusts and corrupt their minds. This one will definitely be a meal you'll not soon forget and you're tempted to find another of his kind to eat the next time your hunger awakens.";


to say hvbp_feralwolf:
	say "     You watch the feral wolf drop to the ground in defeat, slumped over on his side. You realize that this fearsome predator is completely at your mercy... and it makes your mouth water. The thought of savagely consuming this beast is an exciting (and appetizing) prospect. You gaze upon your fallen foe with a cold hunger in your eyes.";
	say "     The wolf, as if sensing your predatory intent, [one of]whimpers and tries to crawl back[or]growls weakly in an effort to deter you[or][if wslevel is 3]pisses a little in fear[else]curls his tail between his legs[end if][or]shivers and feebly tries to stand back up and look menacing[or]snaps at you a few times, trying to ward you off[or]whimpers a little. 'Puh. Pleh. P-please no,' he finally says hoarsely, managing to dredge up the ability to speak[at random]. Your response is to grin wider, showing your serrated maw of teeth. He bares his teeth back at you and growls, but can do little else. You circle around him slowly, enjoying watching his reactions as you draw this final moment of the hunt just a little longer.";
	WaitLineBreak;
	say "     When you strike, you leap at him quickly. Your widened jaws go for his soft belly while you grab his head by the underside of the muzzle. The growls and tries to bite at you even as you sink your teeth into him, but you keep his muzzle pushed up and away. His legs kick and scratch at you, but you ignore this.";
	say "     Your first bite tears into his belly, tearing out a chunk of abdominal muscle along with some fur and skin. You swallow it down, hardly chewing, and keep eating. You dig into his guts, eating the forest predator alive as his wild kin might do to a felled deer. Mouthful after mouthful, you tear into his tender underbelly and consume him. Blood and torn organs spill out as you savage this once-fearsome hunter.";
	say "     [if a random chance of 1 in 3 succeeds][one of]'My pack will avenge me,' the beast manages to growl[or]'This... is my last hunt,' the beast laments[or]'Just remember - someday, sooner or later, it will be your turn to be the prey. And I will laugh,' the beast wheezes[or]'My alpha will find you and END you!' the beast growls[at random][else][one of]The beast releases a long and ululating howl, a final sad farewell to a cruel world[or]The beast continues to growl and snarl as you feast upon his entrails[or]The beast foams pink at the mouth as he tries in vain to bite at you[or]The beast whimpers in pain as he spasms and twitches uncontrollably[at random]. You keep on eating, taking a chunk of his liver next. The wolf's strength continues to wane and soon he gives his last gurgling breath. You enjoy feasting upon the wolf's warm corpse, hollowing out his torso to sate your grisly hunger. As the body starts to cool, you move on to eating the rest of him, taking big bites that crunch bone. In the end, you're left stuffed full of wolf chunks that churn away in your nanite-laden stomach.";


to say hvbp_dolphin:
	say "     You hit the blue dolphinoid human over the head with a final blow, and she floats in the water, unmoving. She's floating in such a way that you can see the tempting prize of her juicy cunt, but you are more interested in the strong creature as a whole at the moment. You can feel your hunger welling up stronger and the thought of consuming the deceitful creature draws you towards her. As you approach, you catch the sight of her sly grin and know she's about to unleash her final sonic attack.";
	say "     But rather than be denied its meal, your stomach retaliates with a deep, low rumble of its own. This sound [one of]surprises[or]stuns[or]shocks[at random] the dolphin and disrupts her attempt to sound-blast you, giving you the chance to grapple her and wrestle that last bit of fight out of her. She struggles and trills in protest, but has been left too worn by the fight and had funneled much of her remaining strength into that failed sonic strike. Left at your mercy, she can do little as your stomach gives another rumble and you feel far more hungry than merciful.";
	WaitLineBreak;
	say "     '[one of]Got you now, pretty fishy[or]Mmmm... it seems I've caught some fresh fishy sushi[or]No getting away now, my tasty feesh[as decreasingly likely outcomes],' you say cruelly while groping her assets.";
	say "     '[one of]I'm no fish, you dummy[or]I'm a dolphin - we're mammals[or]Cetaceans aren't fish. Idiot[at random][one of]. Now let me go before I literally tear you a new one[or]! And you'll be one too by the time I'm done breeding my calves in you[or]! I'll crush you for even saying that[at random],' she blusters. But you're not intimidated and continue to fondle her while calling her a tasty fish.";
	say "     While toying with her like this, your appetite only grows stronger and your jaw unhinges and your teeth get longer and sharper. Grabbing her by the flukes, you pull her tail into your maw. It takes some effort to get the semi-rigid flukes into your mouth, but you forcefully bend them and start stuffing the protesting creature's meaty tail down your esophagus. Once you feel those flukes unfold in your belly, it becomes much easier and you're able to get the whole of her tail into your throat - and then you bite down hard.";
	WaitLineBreak;
	say "     The dolphin cries out in sudden shock and pain as you chomp the tail off whole. While you chew away at the end of it still resting in your mouth, she flails around in the bloody water. Now tailless, she's clearly struggling to swim away - obviously much of her speed and agility in the water came from it. The sight of her flopping around in the waves makes you hungry for more. You swallow down the severed appendage, letting it curl up in your stretched belly, and easily overtake the floundering herm.";
	say "     Your next choice to eat, cruelly, is her dorsal fin. While tough like her flukes and thus not particularly appetizing, you bite it and part of her smooth-skinned back off just to further make her suffer in the water. More blood reddens the ocean as she struggles to say on an even keel. Next you move on to her legs, chomping off each of them in a few bites.";
	WaitLineBreak;
	say "     The dolphin, once cruel and arrogant, whimpers for mercy even as she tries to paddle away. You easily swim circles around her, toying with her before lunging at her bloodied hips. You start biting into her lower body, eating pelvis, groin and belly. At some point during this, her life ends with her entrails dangling out into the briny waters.";
	say "     As you eat your fill of the cetacean's remains, you notice a couple of those piratical sharks in the water around you, likely draw by the taste of blood in the water. They don't seem aggressive towards you and aren't put off by your vicious consumption of the dolphin either. Exchanging a look, you get a sense of mutual understanding. Having had your fun and your meal, you leave the rest of the bobbing corpse for them, knowing they'll finish it off and leave no evidence of your grisly deed.";


[ *** temp ref
to malepronouns:
	now ghis is "his";
	now ghe is "he";
	now ghim is "him";
	now ghishers is "his";
	now gchis is "His";
	now gche is "He";
	now gchim is "Him";
	now gchishers is "His";
	now gdragon is "dragon";
	now gmasculine is "masculine";

to femalepronouns:
	now ghis is "her";
	now ghe is "she";
	now ghim is "her";
	now ghishers is "hers";
	now gchis is "Her";
	now gche is "She";
	now gchim is "Her";
	now gchishers is "Hers";
	now gdragon is "dragoness";
	now gmasculine is "feminine";
]


Chapter 5 - UB by Player

to ubbyplayer:
	choose row monster from the Table of Random Critters;
	say "[ubbyplayer00]"; [Master ub scene]
	say "     Indulging in this perversely twisted act has further weakened your grip on your own humanity even as you feel the nanites from your prey flooding your system [if ovipreglevel is 3]even as they are being encased in a protective shell[else]as they bond to your imprisoning womb via a rapidly forming placenta[end if]. With the [name entry] taking root as your next child, you sigh in satisfaction, your maternal demands satisfied for now. The huge bulge of your belly goes down gradually as they regress somewhat in size, allowing you to eventually get up and continue on your way.";
	decrease humanity of player by 3;
	now gestation of child is a random number between 8 and 16;
	now ubpreg is name entry;
	now pregtype is 1;
	if "Safe Appetite" is not listed in feats of player:
		now researchbypass is 1;
		infect;
		now researchbypass is 0;
	increase ubcount by 1;
	if "They Have Your Eyes" is listed in feats of player:
		now skinname of child is skinname of player;
		now bodyname of child is bodyname of player;
		now tailname of child is tailname of player;
		now facename of child is facename of player;
	else:
		now skinname of child is name entry;
		now bodyname of child is name entry;
		now tailname of child is name entry;
		now facename of child is name entry;


Chapter 6 - UB Scenes

to say ubbyplayer00:	[master list to decide scenes]
	choose row monster from the Table of Random Critters;
	if ubcount >= 5 and name entry is not "Mannequin" and name entry is not "Snake" and name entry is not "Naga" and ubspecial1 is false:
		say "[ubbyplayer03]";
	else if ubspecial1 is true and (the remainder after dividing ubcount by 5 is 0) and name entry is not "Snake" and name entry is not "Naga":
		say "[ubbyplayer04]";
	else if ubcount is even:
		say "[ubbyplayer01]";
	else if ubcount is odd:
		say "[ubbyplayer02]";


to say ubbyplayer01:			[basic - head first]
	choose row monster from the Table of Random Critters;
	say "     Following the strong impulses coming from your vacant womb, you jump upon the [name entry] and restrain them. With them too weak to put up much of a fight at this point, you guide their face to your dripping snatch. At first, thinking that you are simply in search of oral sex, they begin licking and lapping at your folds, unwittingly exciting you further and making your hungry pussy quiver all the more[if scalevalue of player > (scale entry + 1)]. Being much smaller than you, it is easy for you to force their head forward[else if scalevalue of player > scale entry]. Being a little smaller than you, it is not difficult for you to force their head forward[else]. Being about as big as you, it takes a little while before you're satisfied that you've got a tight grip on them before driving your hips forward while you pull on their head[end if], driving it right into your expanding cunt before they realize what's happening.";
	say "     As you continue to pull the struggling [name entry] into your vaginal passage, you moan in orgasmic effort, your perverse need to have your womb filled taking pleasure as they are drawn inexorably into you. They squirm delightfully inside your cunt, bringing you pleasure as your enhanced inner muscles keep a tight grip on them and drag them in inch by delicious inch. Your pussy positively flows with your juices, soaking your prey as your ravenous hole steadily engulfs them. Your belly bulging [if scalevalue of player is scale entry]hugely[else if scalevalue of player is (scale entry + 1)]considerably[else]outwards[end if] as your rapidly unbirthed foe is draw into your womb. You have to lower yourself to the ground as you pull the last of them into you with another orgasmic cry. You need to take a moment, rubbing your tummy as you savor that full and fulfilled sensation coming from your now occupied womb.";

to say ubbyplayer02:			[basic 2 - head first]
	choose row monster from the Table of Random Critters;
	say "     Your foe, having been knocked down and dazed, doesn't resist as you guide their face to your dripping wet pussy. Responding to your scent, the [name entry] starts licking at your folds. You keep their head pressed to your crotch and moan softly in anticipation as their tongue is first guided into your hot tunnel. Your pussy spreads itself impossibly wide, sliding slowly over the creature's face. You resist the urge to force them in deeper right away, letting your vaginal muscles slowly pull them forward as they lick deeper and deeper into you. As your labial lips near your prey's shoulders, it seems they've started to realize their predicament and give a few light tugs to pull back out. Having none of that, you tighten your grip on their arms and lower yourself down to your knees, slurping their upper body into you in one orgasmic pull.";
	say "     With the [name entry] now being pressed past your cervix and into your needy womb, you reach down to their crotch. Playing with them keeps them distracted while they are inexorably drawn into your [bodytype of player] body to become your next child. Your belly bulges outwards as more and more of the creature is pulled into your uterus. It squirms and struggles delightfully inside you, but not very strongly, something about the process or your musky juices keeping them aroused and confused. As their hips slide past your hungry folds, your hands move to pleasuring yourself, rubbing your greedy lips and [if player is male]throbbing manhood[else]hyper-sensitive clit[end if].";
	say "     In all, it only takes a few minutes before the last of the defeated [name entry] remains outside your gaping cleft. Their legs slide more easily along your vaginal tunnel as they're forced to curl up into a fetal position inside you. Your hips are spread wide and your belly is rounded by its newest passenger. You flop down on your side with a contented moan, rubbing your tummy as you savor that wonderfully full feeling inside you. You need to rest briefly while your body and its occupant adjust.";

to say ubbyplayer03:		[special 1 - first time feet first, involuntary prey]
	choose row monster from the Table of Random Critters;
	say "     With the increasingly familiar need building in your heated womb, you rub your groin with one hand and grab the [name entry] by the leg with the other. Spreading your pussy lips wide, you pull their foot to your gaping hole and shove it in. Feeling your hot, wet flesh gripping around their limb and drawing them in, they try to struggle, but you grab their other ankle and hold them tight. They try to pull themselves away with their hands, but they're too weak after the fight to resist the inexorable pull of your cunt. Bringing their other foot to your wet folds, they slurp it up as well and now have both legs making their pleasant trek into your ravenous vagina.";
	say "     Seeing what's happening and knowing full well from your grin the extent of your lustful plans, the [if scale entry is 1]tiny creature[else if scale entry is 2]small creature[else if scale entry is 3][name entry][else if scale entry is 4]large creature[else if scale entry is 5]huge creature[end if]keeps trying to resist. These struggles only add to your pleasure as its legs squirm around inside your tight passage, pushing you to point of orgasm. From their reaction as well, you can tell that part of them is enjoying this even if they are still resisting it. Wanting some added fun and feeling a need to reassure your soon-to-be offspring, you grab their other limbs and keep them pinned with one hand while your other gropes their crotch. You fondle them, pleasuring their loins and exciting them further despite their attempts to resist. You keep this up until their hips pass between your juicy folds. You move to reassuring them by stroking their face and cooing softly to them.";
	say "     More tired than anything else, their struggles grow weaker but never stop, even after you've fed their upper limbs and body to your hungry cunny. You continue to caress and stroke their head soothingly. 'What a willful child you are, but I'll love you all the same,' you whisper to them before pressing firmly on the top of their skull and push them the rest of the way into your quivering cunt. You orgasm again, your inner walls squeezing and rippling over them. The [name entry] moans in return, orgasming despite its attempts to hold out. By the time your climax is coming to an end, they've found themselves deposited fully in your uterus. You feel them jostling around inside you, at first struggling but soon just settling into position, curling up to slumber until they're ready to be reborn.";
	now libido of player is ( libido of player * 3 ) / 4;
	now ubspecial1 is true;

to say ubbyplayer04:		[feet first]
	choose row monster from the Table of Random Critters;
	say "     With the increasingly familiar need building in your heated womb, you pounce atop the dazed [name entry], pinning them to the ground. They struggle a little, but are too weak and turned on by this point to truly oppose you. Distracting them by running a hand over their body, groping and caressing them, you guide their feet to your now gaping pussy and its quivering folds. They moan softly as their feet slip into your cunt's warm embrace, little realizing what's happening until you've already got them in up to their knees and you've got a firm grip on their hips. With a cry of surprise, they try wriggle free (much to your delight) and, failing that, try to drag themselves free with their upper limbs, but with little success.";
	say "     As your folds stretch wider as you're getting ready to engulf their hips, they give up at pulling away and instead try to strike at you. Too worn from the earlier battle, they aren't able to do much damage and only end up giving you a chance to grapple their upper limbs and [one of]pin them to their sides[or]pull them across their chest[or]stuff them into your juicy cunny[at random]. This both cuts off their ability to fight back and gets them ready to go the rest of the way into you. With a quick orgasm that soaks them with your juices, you pull their waist into your vagina while more of them moves into your womb.";
	say "     Keeping their limbs pinned down, you pull them in further, inch after inch of the [name entry] disappearing into your sopping wet pussy. Your belly stretches and bulges more and more as they get stuffed into you. No longer needing your hands at this point to hold their limbs, you cover their mouth to silence their cries and caress their head soothingly with the other, telling them how much happier they'll be as part of your family. You then move your hand to their shoulder and pull them inwards while your cunt struggles to stretch wider to take their shoulders. The [name entry] shakes their head, but ends up moaning in ecstasy as your rippling inner walls and arousing scent makes the unbirthing process quite pleasurable for them as well. Once around their shoulders, their head follows quickly and soon you're left with only that delightfully full sensation of having a fresh occupant curling up in your womb to await its rebirth. You sit up and run your hands over your [bodytype of player] body as a final orgasm hits you feel them connecting with you as your newest pregnancy.";


Chapter 7 - Vore Settings Menu

[Moved to Settings Menus file]

[
Notes:
feet first - done
post-vore
always eat toggle - done
review exclusions
non-inf vore feat - done
review balance
option to expel
play along + escape
belly/desc/delay/tf reset
]

Alt Vore ends here.
