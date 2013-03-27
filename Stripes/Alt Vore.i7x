Version 1 of Alt Vore by Stripes begins here.
[Version 1.1 - Safe Appetite feat and Vore Menu (adjusting vore choice)]

Section 0 - Variables

vorecount is a number that varies.
vorechoice is a number that varies.


Section 1 - Event

Inner Predator is a scavevent.  The level of Inner Predator is 4.
The sarea of Inner Predator is "Allzones";
when play begins:
	add Inner Predator to badspots of furry;

Instead of resolving a Inner Predator:
	if guy is banned and girl is banned:
		say "     Picking your way between several immobile and abandoned cars, you spot an all to familiar sight in the road ahead.  Piles of clothing, ripped and covered in various fluids, along with the personal items of whomever (or whatever) use to be in those clothes.  Among the shredded clothes and scattered items, one specific thing catches your eye - a sealed briefcase.  Polished and very official looking, with its clasp broken from the evident scuffle that had taken place here, it rests atop a torn lab coat.  Curious, and hoping to find something you might be able to use, you crack the case open slowly.  Sadly, it is empty, someone clearly having gotten here first and emptied it.";
		say "(This event is closed if both guy and girl are banned.)";
		now Inner Predator is resolved;
		continue the action;
	say "     Picking your way between several immobile and abandoned cars, you spot an all to familiar sight in the road ahead.  Piles of clothing, ripped and covered in various fluids, along with the personal items of whomever (or whatever) use to be in those clothes.  Among the shredded clothes and scattered items, one specific thing catches your eye - a sealed briefcase.  Polished and very official looking, with its clasp broken from the evident scuffle that had taken place here, it rests atop a torn lab coat.  Curious, and hoping to find something you might be able to use, you crack the case open slowly.";
	say "     Inside, there is a single vial of a murky looking fluid, along with some documents and notes.  As well, a candy bar - score!  The papers have been badly smudged and ruined by the seeping fluids around, including several tear marks that could very well have been made by large claws.  Although most of the writing has been rendered unable to decipher, some words manage to stand out enough to read.  [']Predator experiment['] and [']test substance['] are the most prominent that catch your eye, along with what appear to be government or corporate insignias along the tops of the pages.  Clearly, this vial of fluid was part of some experiment, possibly related to the nanite plague now sweeping the city.";
	say "     You manage to piece together a few more words, but the majority of the documents are no longer legible, leaving you with a vial of unknown substance in your hand.  If the government was working on something to do with this nanite plague, this may very well be useful to you in your survival in the infested city.  Then again, who knows what it could do?";
	say "     Do you use the vial?";
	if the player consents:
		say "     Steeling your nerves, you carefully unscrew the small lid on the vial.  Even though you have no idea what you're getting into, things can't get much worse, right?  After all, any advantage could help you survive.  Sucking in a breath, you quickly down the contents of the vial, the coppery-taste hitting your tongue and making you grimace.  Swallowing, you empty the vial down your throat, then wait for something to happen.";
		say "     For a moment, nothing happens, and you are left slightly worried.  Then, a warmth rises in your stomach, gently radiating outward until your entire body feels strangely warm.  It's possible that whatever this substance was, it's affecting the nanites inside your body... perhaps even altering them.  As the glowing warmth fades, your stomach lets out a soft rumble, a sudden bout of hunger overtaking you.  Automatically, you reach for the candy bar you found, but as soon as you place the chocolate to your lips, you suddenly find yourself not desiring the food.  The hunger is still present, but its like eating is the last thing you want to do.";
		say "     Wrapping the candy bar back up, you replace it in your pack and being to gather your things to leave, slightly perturbed by these events.  Hopefully, whatever you just drank out of that vial does not come back to bite you later... relatively speaking.";
		increase carried of chips by 1;
		attempttowait;
		if girl is not banned:
			say "     As you're turning to leave, a female husky, looking rather worse for wear, spots you and charges in to attack.  Already weakened, a quick blow sends her tumbling and a few more put her to the ground for good.  It is a quick fight and thankfully one of the easiest you've faced since this mess began.";
			say "     As your defeated foe collapses in a heap before you, your body is struck with another wave of intense hunger.  You look down upon your beaten foe as a new, predatory instinct arises in your mind.  Before you can even think about it, you kneel next to the husky, hands reaching out for its exhausted body.  She lifts her head to look at you, fearful about what you intend to do, but a swift strike from your palm to her head renders her unconscious.  Now, practically unable to control your own body, you are forced to watch what unfolds.";
			attempttowait;
			say "     Kneeling by the head of the female husky, you reach down and pull her muzzle up to your face, until it meets your mouth.  You give her snout and face a few licks, before without warning, you open your jaws wide and take her in!  A sense of panic grips your mind, but your body is no longer yours to control.  You feel her snout touch the back of your throat, and then you swallow, pulling the husky's head in deeper to your hungry maw.  A slight pop is heard as your jaw dislocates, and your mouth stretches even wider, taking in the entire head of the dog.  Your skin stretches as if it were rubber, feeling no pain from it, but still able to feel the sensations nonetheless.  You are unsure if you'd not be able to do this were you not gorging as you are.";
			say "     With another possessive swallow, the head of the female husky disappears down your throat, your mouth now stretched impossibly wide to accommodate her shoulders as you continue to devour your prey.  Your neck begins to bulge out with the form of your unwilling meal, but the altered nanites inside you keep adjusting your body to take in your new prey.  Another swallow, and the shoulders of the beast enter your throat, your tongue now rubbing over her furred chest, giving you the full taste of your canine prey.  In your mind, you are reeling with the impossibility of it all, and yet, you cannot help but continue you perverse feast.";
			attempttowait;
			say "     Several more swallows and gulps, and more of the female husky disappears into your greedy maw, nearly half the creature already making its way to your stomach.  Gulp... and her hips pass over your tongue to begin sliding down your gullet, leaving only her legs and tail sticking out of your mouth.  Her form is clearly bulging out your frame, your neck and now your belly stretching around the large meal you are ingesting.  Leaning back, you lift your head skyward to let gravity assist you in the final stages, and you feel the husky slide down a little easier.  Another few swallows, and her legs vanish into your lips, leaving only her bushy tail.  With a slurp, your tongue sucks it in and the last trace of the dog woman disappears inside you.";
			say "     Sitting back, dazed, you feel the form of the husky sliding into your gut, your belly now bulging out as if you were massively pregnant.  With an audible rumble, your stomach starts to churn and you feel the body of your foe begin to melt away, the nanites in your body throwing your digestive processes into overdrive.  Various gurgles can be heard as the once bulky canine is turned into a nutrient rich liquid for your predator body.  Within minutes, your belly has shrunk to a mere paunch as you feel the rush of the digested creature wash through your body.";
			say "     A smile crosses your face as you pat your shrinking belly.  You feel... content now, as if consuming the defeated creature has fulfilled some deep purpose in your infected body.  Plus, you shouldn't have to worry about food for a while.  Pulling yourself back up and retrieving all your gear, you head back out into the infested city with a surprising bounce in your step.";
			say "     Maybe this isn't such a bad thing after all.....?";
			add "Vore Predator" to feats of player;
			decrease hunger of player by a random number between 20 and 28;
			if hunger of player < 0, now hunger of player is 0;
			decrease humanity of player by 10;
			now researchbypass is 1;
			infect "Female Husky";
			now researchbypass is 0;
			increase vorecount by 1;
			increase score by 20;
		otherwise:
			say "     As you're turning to leave, a latex fox, looking rather worse for wear, spots you and charges in to attack.  Already weakened, a quick blow sends him tumbling and a few more put him to the ground for good.  It is a quick fight and thankfully one of the easiest you've faced since this mess began.";
			say "     As your defeated foe collapses in a heap before you, your body is struck with another wave of intense hunger.  You look down upon your beaten foe as a new, predatory instinct arises in your mind.  Before you can even think about it, you kneel next to the latex fox, hands reaching out for its exhausted body.  He lifts his head to look at you, fearful about what you intend to do, but a swift strike from your palm to his head renders him unconscious.  Now, practically unable to control your own body, you are forced to watch what unfolds.";
			attempttowait;
			say "     Kneeling by the head of the fox, you reach down and pull his muzzle up to your face, until it meets your mouth.  You give his snout and face a few licks, before without warning, you open your jaws wide and take him in!  A sense of panic grips your mind, but your body is no longer yours to control.  You feel his snout touch the back of your throat, and then you swallow, pulling the fox's head in deeper to your hungry maw.  A slight pop is heard as your jaw dislocates, and your mouth stretches even wider, taking in the entire head of the fox.  Your skin stretches as if it were rubber, feeling no pain from it, but still able to feel the sensations nonetheless.  You are unsure if you'd not be able to do this were you not gorging as you are.";
			say "     With another possessive swallow, the vulpine's head disappears down your throat, your mouth now stretched impossibly wide to accommodate his shoulders as you continue to devour your prey.  Compressed by your throat, his body and tail are puffed out further, but your need to feed pushes to squeeze him back in.  Your neck begins to bulge out with the form of your unwilling meal, but the altered nanites inside you keep adjusting your body to take in your new prey.  Another swallow, and the shoulders of the beast enter your throat, your tongue now rubbing over his smooth chest, giving you the full taste of your vulpine prey.  In your mind, you are reeling with the impossibility of it all, and yet, you cannot help but continue your perverse feast.";
			attempttowait;
			say "     Several more swallows and gulps, and more of the latex fox disappears into your greedy maw, nearly half the creature already making its way to your stomach. Gulp...and his hips pass over your tongue to begin sliding down your gullet, leaving only his legs and tail sticking out of your mouth. His form is clearly bulging out your frame, your neck and now your belly stretching around the large meal you are ingesting.  Leaning back, you lift your head skyward to let gravity assist you in the final stages, and you feel the fox slide down a little easier.  Another few swallows, and his legs vanish into your lips, leaving only his bushy tail. With a slurp, your tongue sucks it in and the last trace of the latex fox disappears inside you.";
			say "     Sitting back, dazed, you feel the form of the fox sliding into your gut, your belly now bulging out as if you were massively pregnant. With an audible rumble, your stomach starts to churn and you feel the body of your foe begin to melt away, the nanites in your body throwing your digestive processes into overdrive.  Various gurgles can be heard as the once bulky latex fox is turned into a nutrient rich liquid for your predator body.  Within minutes and with a large belch, your belly has shrunk to a mere paunch as you feel the rush of the digested creature wash through your body.";
			say "     A smile crosses your face as you pat your shrinking belly.  You feel... content now, as if consuming the defeated creature has fulfilled some deep purpose in your infected body.  Plus, you shouldn't have to worry about food for a while.  Pulling yourself back up and retrieving all your gear, you head back out into the infested city with a surprising bounce in your step.";
			say "     Maybe this isn't such a bad thing after all.....?";
			add "Vore Predator" to feats of player;
			say "[line break]";
			say "     You have the [bold type]Vore Predator[roman type] feat, increasing your hunger growth dramatically.  The higher your hunger (and the more often you do it), the more likely you'll be tempted to consume your enemies whole to sate your hunger while also infecting you.";
			if "Automatic Survival" is listed in feats of player:
				say "     [special-style-1]NOTE:[roman type] [bold type]Automatic Surival detected:[roman type] Your hunger will not increase and you'll instead be given a base chance of 25% for vore.";
			decrease hunger of player by a random number between 20 and 28;
			if hunger of player < 0, now hunger of player is 0;
			decrease humanity of player by 10;
			now researchbypass is 1;
			infect "Latex Fox";
			now researchbypass is 0;
			increase vorecount by 1;
			increase score by 20;
	otherwise:
		say "     You toss the mysterious vial back into the briefcase and pocket the candy bar.  There are enough weird and out-of-control elements already present in the city.  The last thing you need is to go messing around with another.  Deciding not to risk whatever's in the vial to be found by another, you toss the briefcase and its contents into a small garbage fire nearby.";
		say "     Oh well, at least you got a candy bar out of it.";
		increase carried of chips by 1;
		increase score by 5;
	now Inner Predator is resolved;


Section 2 - General Vore by Player

to vorebyplayer:
	choose row monster from the table of random critters;
	say "[vorebyplayer00]";		[Master vore scene]
	let vv be a random number between 1 and 6;
	let powerchance be 4;
	if "Beastial Power" is listed in feats of player, increase powerchance by 2;
	if a random chance of powerchance in 20 succeeds:
		if vv is 1:
			if strength of player < str entry and str entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your muscles swelling with [name entry] [one of]strength[or]physique[or]power[at random].";
				increase strength of player by 1;
				increase capacity of player by 5;
		if vv is 2:
			if Intelligence of player < int entry and int entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your mind swelling with [name entry] [one of]intelligence[or]wit[or]complexity[at random].";
				increase intelligence of player by 1;
		if vv is 3:
			if dexterity of player < dex entry and dex entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your hand-eye coordination swelling with [name entry] [one of]dexterity[or]physique[or]accuracy[at random].";
				increase dexterity of player by 1;
		if vv is 4:
			if stamina of player < sta entry and sta entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your body toughening with [name entry] [one of]stamina[or]physique[or]power[at random].";
				increase stamina of player by 1;
		if vv is 5:
			if perception of player < per entry and per entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your senses being heightened with [name entry] [one of]perception[or]aptitude[or]feral attention[at random].";
				increase perception of player by 1;
		if vv is 6:
			if charisma of player < cha entry and cha entry >= ( 12 + level of player ):
				say "     By consuming your foe, you have managed to absorb some of them to empower yourself.  You feel your social sense swelling with [name entry] [one of]charisma[or]natural charm[or]pheromones[at random].";
				increase charisma of player by 1;
	say "     Indulging in this monstrous act has further weakened your grip on your own humanity even as you feel the nanites from your prey flooding your system as your belly quickly seeks to consume them.  Your hunger, satisfied for now, is decreased dramatically.";
	decrease hunger of player by ( 4 * scale entry ) + a random number between 8 and 16;
	if hunger of player < 0, now hunger of player is 0;
	decrease humanity of player by 3;
	if "Safe Appetite" is not listed in feats of player:
		now researchbypass is 1;
		infect;
		now researchbypass is 0;
	increase vorecount by 1;


VoreExclusion is a marker.	[list of infections to not be vored]
when play begins:
	add { "Shemale Smooth Collie", "Raccoon", "Doberman", "Nightmare", "Sphinx", "Hyena Matriarch", "Blob", "Skunkbeast Lord", "Blue Chaffinch", "Mental Mouse", "Mushroom Men", "Sugar Ferret", "Rabbit Pack", "Peacock", "Dracovixentaur", "Dragontaur", "Vixentaur", "Yamato Dragon", "Yamato Dragoness", "Giant", "feral sea dragon", "feral sea dragoness", "Wyvern", "Awesome tree", "Hippo Strongman", "Mammoth", "Albino Mouse", "Xeno", "Tiger Cop", "Sea Lion and Orca Toys", "Siamese Cats", "Tentacle Horror", "Bear", "sewer gator", "Dragon", "sea otter", "Slut Rat", "Sprite", "cheetah", "Badger", "Opossum Sailor", "hermaphrodite latex vixen", "Wrestling Wolf", "Stag", "Football Wolfman", "Werewolf Costume", "Reindeer", "Triceratops", "Feline", "Butterfly", "German Shepherd",  } to infections of VoreExclusion;


Chapter 3 - Vore Scenes

to say vorebyplayer00:	[master list to decide scenes]
	if vorecount is even:
		say "[vorebyplayer01]";
	otherwise if vorecount is odd:
		say "[vorebyplayer02]";


to say vorebyplayer01:
	choose row monster from the table of random critters;
	say "     Following the dark impulses coming from your roiling stomach, you jump upon your fallen foe and pin them down.  Too weak to put up much of a fight, you are able to restrain the [name entry].  At first, expecting sex, they don't fully resist when you manhandle them roughly[if scalevalue of player > (scale entry + 1)].  Being much smaller than you, it's easy enough to get a tight grip on them and pull them towards your lips[otherwise if scalevalue of player > scale entry].  Being a little smaller than you, it doesn't take you long to get a tight grip on them and pull them towards your lips[otherwise].  Being about as big as you, it takes a little while before you're satisfied that you've got a tight grip on them before pulling them towards your lips[end if].  Expecting a kiss at first, they prepare for this, only to have your mouth open very wide, unhinging or stretching as necessary as you stuff their head into your mouth.";
	say "    As you push the struggling [name entry] into your throat, you moan in delight, your perverse hunger taking pleasure in feeling their struggles.  They squirm delightfully as they're pulled inexorably down your throat as you push more and more of the [type entry] creature into your gaping maw.  Your tongue laps over them, tasting the treat you're stuffing yourself with, teasing and tantalizing them with your licks to give them a final thrill before they are gone.  Your belly [if scalevalue of player is scale entry]hugely[otherwise if scalevalue of player is (scale entry + 1)]considerably[otherwise]outwards[end if] with your rapidly consumed foe.  You need to take a moment, rubbing your tummy as you feel your opponent's struggles weaken before stopping entirely.  Soon afterwards, your belly starts to go down as you consume their body to satisfy your unnatural hunger.";


to say vorebyplayer02:
	choose row monster from the table of random critters;
	say "     Your foe crumples at your feet, defeated and immobile. From within you, you can feel that familiar predatory instinct arising, and without pause, you commit yourself to the act.  Kneeling next to the beaten [name entry], you quickly check to make sure they won't be fighting back, and lick your lips in anticipation.  Bringing them forward, you lick their face and head, before your jaws yawn widely and you pull their head inside. As soon as you feel their head touch your throat, you swallow, pulling them along with it.  As they're pulled in, your mouth begins to stretch even wider, eagerly opening up for the form of your prey.";
	say "     With a mouthful of [name entry], you greedily gulp and swallow, taking in their wider shoulders and chest as your body begins to change to accommodate their form.  Your neck bulges, showing the progress of your meal towards your gut, and the sensations only drive you to swallow again, their chest sliding down your throat as their hips come to rest in your mouth.  Their rich, delicious floods your tongue as their body slides over it, making your inner predator rumble happily.  You pause to lick at their form a few times, before your greedy gullet makes you swallow again, pulling more and more of them in.";
	say "     It only take a few minutes of hard swallowing before less and less of the defeated [name entry] remains outside your gaping maw.  Their legs slowly slide in and followed lastly bye their feet, your tongue licking at them as they disappear between your lips.  Your neck and stomach bulge obscenely, showing off the size of the meal you've just eaten, as your throat muscles work to get all of them into your eager belly.  The gurgles begin, and you feel the rapid progress of digestion starting up, your predatory nanites helping your body's natural processes greatly.";
	say "     In no time, your massively distended belly shrinks down, the prey inside being reduced into fuel for your body.  The rush of the consumed creature flashes through your body, giving you a feeling of strength and pride.  Gathering your things, you give your slightly rounded stomach a pat, thanking your foe for their contribution to your survival, and you head out into the city once again.";


Chapter 4 - Vore Settings Menu


voremenuing is an action applying to nothing.

understand "voremenu" as voremenuing.
understand "vore menu" as voremenuing.

check voremenuing:
	if "Vore Predator" is not listed in feats of player, say "Your character is currently incapable of such actions.";

carry out voremenuing:
	say "     You have accessed the [bold type]vore menu[roman type].  It is here that you may adjust some settings related to vore content in the game.";
	say "     At present, there is only one feature open for adjustment.  [bold type]Choice to vore[roman type] will designate whether your character will automatically choose vore whenever it is presented, whether your character will automatically refuse (stopping voring, but not the hunger), or whether you'll be give the option to accept or refuse.  This selection process will cycle through the options.";
	let voreexit be 0;
	while voreexit is 0:
		say "[bold type]Vore Settings:[roman type][line break]";
		if "Vore Predator" is listed in feats of player:
			say "[link](1) Choice to vore[as]1[end link] - [if vorechoice is 0]Player choice[otherwise if vorechoice is 1]Automatic vore[otherwise]Never vore[end if][line break]";
		otherwise:
			say "Vore by player - Inactive.";
		say "[link](0) Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-1)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 1:
				break;
			otherwise:
				say "Invalid choice.  Pick from 0 to 1.";
		if calcnumber is 1:
			if vorechoice < 2:
				increase vorechoice by 1;
				say "The option to use of your voring ability has been set to '[if vorechoice is 1]Automatic vore[otherwise]Never vore[end if]'.";
			otherwise:
				now vorechoice is 0;
				say "The option to use of your voring ability has been reset to 'Player choice'.";
		otherwise if calcnumber is 0:
			say "Exiting menu.";
			now voreexit is 1;


[
Notes:
feet first
post-vore
always eat toggle - done
review exclusions
non-inf vore feat - done
review balance
]

Alt Vore ends here.