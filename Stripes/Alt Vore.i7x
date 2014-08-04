Version 2 of Alt Vore by Stripes begins here.
[Version 2.1 - Additional UB scenes list adjustments]

Section 0 - Variables

playercanvore is a truth state that varies.
vorecount is a number that varies.
vorechoice is a number that varies.
vorespecial1 is a truth state that varies.  vorespecial1 is usually false.
playercanub is a truth state that varies.
ubcount is a number that varies.
ubchoice is a number that varies.
ubspecial1 is a truth state that varies.  ubspecial1 is usually false.
ubpreg is a text that varies.  ubpreg is usually "false".

VoreExclusion is a marker.	[list of infections to not be vored]
when play begins:
	add { "Shemale Smooth Collie", "Raccoon", "Doberman", "Nightmare", "Sphinx", "Hyena matriarch", "Blob", "Skunkbeast Lord", "Blue Chaffinch", "Peacock", "Hippo", "Albino Mouse", "Tiger Cop", "Sea Lion and Orca Toys", "Siamese Cats", "Bear", "sewer gator", "Dragon", "cheetah", "Badger", "Opossum Sailor", "hermaphrodite latex vixen", "Wrestling Wolf", "Stag", "Football Wolfman", "Reindeer", "Triceratops", "Butterfly", "German Shepherd", "Magic Drake", "Monkey", "Mental Mouse", "Mushroom Men", "Sugar Ferret", "Rabbit Pack", "city sprite", "sea otter", "Yamato Dragon", "Yamato Dragoness", "Giant", "Feral Sea Dragon", "Feral Sea Dragoness", "Wyvern", "Awesome tree", "Tentacle Horror", "Mammoth", "Xeno", "Peculiar Dragon", "Sea Horror", "Cum Girl", "Flesh Blob", "Jaguar Warrior", "Cowboy Cuntboy", "Plains Lizard", "Thought Eater", "Viking", "Sierrasaur" } to infections of VoreExclusion;


Section 1 - Event

Inner Predator is a scavevent.  The level of Inner Predator is 4.
The sarea of Inner Predator is "Allzones".
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
			say "     With another possessive swallow, the head of the female husky disappears down your throat, your mouth now stretched impossibly wide to accommodate her shoulders as you continue to devour your prey.  Your neck begins to bulge out with the form of your unwilling meal, but the altered nanites inside you keep adjusting your body to take in your new prey.  Another swallow, and the shoulders of the beast enter your throat, your tongue now rubbing over her furred chest, giving you the full taste of your canine prey.  In your mind, you are reeling with the impossibility of it all, and yet, you cannot help but continue your perverse feast.";
			attempttowait;
			say "     Several more swallows and gulps, and more of the female husky disappears into your greedy maw, nearly half the creature already making its way to your stomach.  Gulp... and her hips pass over your tongue to begin sliding down your gullet, leaving only her legs and tail sticking out of your mouth.  Her form is clearly bulging out your frame, your neck and now your belly stretching around the large meal you are ingesting.  Leaning back, you lift your head skyward to let gravity assist you in the final stages, and you feel the husky slide down a little easier.  Another few swallows, and her legs vanish into your lips, leaving only her bushy tail.  With a slurp, your tongue sucks it in and the last trace of the dog woman disappears inside you.";
			say "     Sitting back, dazed, you feel the form of the husky sliding into your gut, your belly now bulging out as if you were massively pregnant.  With an audible rumble, your stomach starts to churn and you feel the body of your foe begin to melt away, the nanites in your body throwing your digestive processes into overdrive.  Various gurgles can be heard as the once bulky canine is turned into a nutrient-rich liquid for your predator body.  Within minutes, your belly has shrunk to a mere paunch as you feel the rush of the digested creature wash through your body.";
			say "     A smile crosses your face as you pat your shrinking belly.  You feel... content now, as if consuming the defeated creature has fulfilled some deep purpose in your infected body.  Plus, you shouldn't have to worry about food for a while.  Pulling yourself back up and retrieving all your gear, you head back out into the infested city with a surprising bounce in your step.";
			say "     Maybe this isn't such a bad thing after all...?";
			add "Vore Predator" to feats of player;
			now playercanvore is true;
			increase vorecount by 1;
			say "[line break]";
			say "     You have the [bold type]Vore Predator[roman type] feat, increasing your hunger growth dramatically.  The higher your hunger (and the more often you do it), the more likely you'll be tempted to consume your enemies whole to sate your hunger while also infecting you.  You may adjust some vore related settings via the [bold type]vore menu[roman type].";
			if "Automatic Survival" is listed in feats of player:
				say "     [special-style-1]NOTE:[roman type] [bold type]Automatic Survival detected:[roman type] Your hunger will not increase and you'll instead be given a base chance of 25% for vore before other factors.";
			decrease hunger of player by a random number between 20 and 28;
			if hunger of player < 0, now hunger of player is 0;
			decrease humanity of player by 10;
			now researchbypass is 1;
			infect "Female Husky";
			now researchbypass is 0;
			increase score by 20;
		otherwise:
			say "     As you're turning to leave, a latex fox, looking rather worse for wear, spots you and charges in to attack.  Already weakened, a quick blow sends him tumbling and a few more put him to the ground for good.  It is a quick fight and thankfully one of the easiest you've faced since this mess began.";
			say "     As your defeated foe collapses in a heap before you, your body is struck with another wave of intense hunger.  You look down upon your beaten foe as a new, predatory instinct arises in your mind.  Before you can even think about it, you kneel next to the latex fox, hands reaching out for its exhausted body.  He lifts his head to look at you, fearful about what you intend to do, but a swift strike from your palm to his head renders him unconscious.  Now, practically unable to control your own body, you are forced to watch what unfolds.";
			attempttowait;
			say "     Kneeling by the head of the fox, you reach down and pull his muzzle up to your face, until it meets your mouth.  You give his snout and face a few licks, before without warning, you open your jaws wide and take him in!  A sense of panic grips your mind, but your body is no longer yours to control.  You feel his snout touch the back of your throat, and then you swallow, pulling the fox's head in deeper to your hungry maw.  A slight pop is heard as your jaw dislocates, and your mouth stretches even wider, taking in the entire head of the fox.  Your skin stretches as if it were rubber, feeling no pain from it, but still able to feel the sensations nonetheless.  You are unsure if you'd not be able to do this were you not gorging as you are.";
			say "     With another possessive swallow, the vulpine's head disappears down your throat, your mouth now stretched impossibly wide to accommodate his shoulders as you continue to devour your prey.  Compressed by your throat, his body and tail are puffed out further, but your need to feed pushes to squeeze him back in.  Your neck begins to bulge out with the form of your unwilling meal, but the altered nanites inside you keep adjusting your body to take in your new prey.  Another swallow, and the shoulders of the beast enter your throat, your tongue now rubbing over his smooth chest, giving you the full taste of your vulpine prey.  In your mind, you are reeling with the impossibility of it all, and yet, you cannot help but continue your perverse feast.";
			attempttowait;
			say "     Several more swallows and gulps, and more of the latex fox disappears into your greedy maw, nearly half the creature already making its way to your stomach. Gulp...and his hips pass over your tongue to begin sliding down your gullet, leaving only his legs and tail sticking out of your mouth. His form is clearly bulging out your frame, your neck and now your belly stretching around the large meal you are ingesting.  Leaning back, you lift your head skyward to let gravity assist you in the final stages, and you feel the fox slide down a little easier.  Another few swallows, and his legs vanish into your lips, leaving only his bushy tail. With a slurp, your tongue sucks it in and the last trace of the latex fox disappears inside you.";
			say "     Sitting back, dazed, you feel the form of the fox sliding into your gut, your belly now bulging out as if you were massively pregnant. With an audible rumble, your stomach starts to churn and you feel the body of your foe begin to melt away, the nanites in your body throwing your digestive processes into overdrive.  Various gurgles can be heard as the once bulky latex fox is turned into a nutrient-rich liquid for your predator body.  Within minutes and with a large belch, your belly has shrunk to a mere paunch as you feel the rush of the digested creature wash through your body.";
			say "     A smile crosses your face as you pat your shrinking belly.  You feel... content now, as if consuming the defeated creature has fulfilled some deep purpose in your infected body.  Plus, you shouldn't have to worry about food for a while.  Pulling yourself back up and retrieving all your gear, you head back out into the infested city with a surprising bounce in your step.";
			say "     Maybe this isn't such a bad thing after all...?";
			add "Vore Predator" to feats of player;
			now playercanvore is true;
			increase vorecount by 1;
			say "[line break]";
			say "     You have the [bold type]Vore Predator[roman type] feat, increasing your hunger growth dramatically.  The higher your hunger (and the more often you do it), the more likely you'll be tempted to consume your enemies whole to sate your hunger while also infecting you.  You may adjust some vore related settings via the [bold type]vore menu[roman type].";
			if "Automatic Survival" is listed in feats of player:
				say "     [special-style-1]NOTE:[roman type] [bold type]Automatic Survival detected:[roman type] Your hunger will not increase and you'll instead be given a base chance of 25% for vore before other factors.";
			decrease hunger of player by a random number between 20 and 28;
			if hunger of player < 0, now hunger of player is 0;
			decrease humanity of player by 10;
			now researchbypass is 1;
			infect "Latex Fox";
			now researchbypass is 0;
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


Chapter 3 - Vore Scenes

to say vorebyplayer00:	[master list to decide scenes]
	choose row monster from the table of random critters;
	if vorecount >= 5 and name entry is not "Mannequin" and name entry is not "Snake" and name entry is not "Naga" and vorespecial1 is false:
		say "[vorebyplayer03]";
	otherwise if vorespecial1 is true and (the remainder after dividing vorecount by 5 is 0) and name entry is not "Snake" and name entry is not "Naga":
		say "[vorebyplayer04]";
	otherwise if vorecount > 6 and name entry is not "Mannequin" and scalevalue of player >= ( scale entry + 2 ) and a random chance of 3 in 5 succeeds:
		say "[vorebyplayer05]";
	otherwise if vorecount is even:
		say "[vorebyplayer01]";
	otherwise if vorecount is odd:
		say "[vorebyplayer02]";


to say vorebyplayer01:		[basic - head first]
	choose row monster from the table of random critters;
	say "     Following the dark impulses coming from your roiling stomach, you jump upon your fallen foe and pin them down.  Too weak to put up much of a fight, you are able to restrain the [name entry].  At first, expecting sex, they don't fully resist when you manhandle them roughly[if scalevalue of player > (scale entry + 1)].  Being much smaller than you, it's easy enough to get a tight grip on them and pull them towards your lips[otherwise if scalevalue of player > scale entry].  Being a little smaller than you, it doesn't take you long to get a tight grip on them and pull them towards your lips[otherwise].  Being about as big as you, it takes a little while before you're satisfied that you've got a tight grip on them before pulling them towards your lips[end if].  Expecting a kiss at first, they prepare for this, only to have your mouth open very wide, unhinging or stretching as necessary as you stuff their head into your mouth.";
	say "    As you push the struggling [name entry] into your throat, you moan in delight, your perverse hunger taking pleasure in feeling their struggles.  They squirm delightfully as they're pulled inexorably down your throat as you push more and more of the [type entry] creature into your gaping maw.  Your tongue laps over them, tasting the treat you're stuffing yourself with, teasing and tantalizing them with your licks to give them a final thrill before they are gone.  Your belly bulging [if scalevalue of player is scale entry]hugely[otherwise if scalevalue of player is (scale entry + 1)]considerably[otherwise]outwards[end if] with your rapidly consumed foe.  You need to take a moment, rubbing your tummy as you feel your opponent's struggles weaken before stopping entirely.  Soon afterwards, your belly starts to go down as you consume their body to satisfy your unnatural hunger.";

to say vorebyplayer02:		[extended basic - head first]
	choose row monster from the table of random critters;
	say "     Your foe crumples at your feet, defeated and immobile. From within you, you can feel that familiar predatory instinct arising, and without pause, you commit yourself to the act.  Kneeling next to the beaten [name entry], you quickly check to make sure they won't be fighting back, and lick your lips in anticipation.  Bringing them forward, you lick their face and head, before your jaws yawn widely and you pull their head inside. As soon as you feel their head touch your throat, you swallow, pulling them along with it.  As they're pulled in, your mouth begins to stretch even wider, eagerly opening up for the form of your prey.";
	say "     With a mouthful of [name entry], you greedily gulp and swallow, taking in their wider shoulders and chest as your body begins to change to accommodate their form.  Your neck bulges, showing the progress of your meal towards your gut, and the sensations only drive you to swallow again, their chest sliding down your throat as their hips come to rest in your mouth.  Their rich, delicious flavour floods your tongue as their body slides over it, making your inner predator rumble happily.  You pause to lick at their form a few times, before your greedy gullet makes you swallow again, pulling more and more of them in.";
	say "     It only take a few minutes of hard swallowing before less and less of the defeated [name entry] remains outside your gaping maw.  Their legs slowly slide in and followed lastly by their feet, your tongue licking at them as they disappear between your lips.  Your neck and stomach bulge obscenely, showing off the size of the meal you've just eaten, as your throat muscles work to get all of them into your eager belly.  The gurgles begin, and you feel the rapid progress of digestion starting up, your predatory nanites helping your body's natural processes greatly.";
	say "     In no time, your massively distended belly shrinks down, the prey inside being reduced into fuel for your body.  The rush of the consumed creature flashes through your body, giving you a feeling of strength and pride.  Gathering your things, you give your slightly rounded stomach a pat, thanking your foe for their contribution to your survival, and you head out into the city once again.";

to say vorebyplayer03:		[special 1 - first time feet first, voluntary prey]
	choose row monster from the table of random critters;
	say "     With that increasingly familiar dark impulse building in your roiling stomach, you lick you lips and grab them by the legs.  Having been successful in your consumption several times before, you've become emboldened and decide to go at this one from the other end.  You move in quickly while your foe is too weak to put up much of a fight, grabbing them by the legs even as your jaw unhinges and begins to stretch.  By the time the [name entry] starts to realize what's happening, you've already got their feet past your tongue and sliding down your throat with your hands on their thighs to send them in after.  With your hands on their hips, you pull them in another few inches while crawling forward.";
	say "     With your warm, wet throat sliding up their legs, you can't help but moan a little, becoming somewhat aroused and excited by your success and upcoming meal, a sound they echo in response despite their dire situation.  It seems your prey is actually getting turned on by this, which makes you grin broadly.  With your lips having reached their hips, you pause in your eating to rub your hands over your meal's body while your tongue licks across their crotch, exciting them further.  You go for another few inches and press the base of your tongue against their loins.  This has them so aroused now that they only put up some token resistance when your hands grab their wrists and press them to their sides.  It's like the [name entry] is more struggling to drag out the consumption longer than actually trying to get away.";
	say "     But your hunger won't be delayed much longer and with a big gulp, you yank them further in, getting a start on their upper limbs and hampering their ability to hold you back.  As you lift yourself to your knees and sit upright so the rest of your squirming, moaning meal can slide more easily the rest of the way down.  Having particularly enjoyed this meal, you rub your hands and tongue over their body, continuing to pleasure the kinky [name entry] so they might at least enjoy their final moments.  Certainly their cries of pleasure grow louder and you feel them slide more easily down your throat as their orgasm lubricates their inexorable descent into you.  With their shoulders stretching your throat wide to fit them, you rub your hand over their head, caressing this surprisingly special meal, knowing its one you'll both remember fondly for as long as you live - not that that will be very long for one of you.";
	say "     With a few last swallows, their upper body slides down to join the rest of them bundled up in your distended stomach.  Your belly bulges large with your [if scale entry >= scalevalue of player]huge[otherwise if scale entry is scalevalue of player + 1]large[otherwise]sizeable[end if] meal inside it.  They squirm around inside you, perhaps thinking you'll be releasing them or maybe just getting into a more comfortable position for pleasuring themselves to orgasm one last time[if cocks of player > 0 or cunts of player > 0].  Reaching around your bloated belly, you masturbate quickly to a powerful climax as well, the thoughts of what's occurred having turned you on greatly[end if].  After a short time, some fresh moans come from your belly and they orgasm again.  You give a belch, expelling most of their air supply, leaving them to pass out shortly afterwards.  Sensing the [name entry] inside you is unconscious, you rub your belly and smile as your stomach gurgles and their digestion begins.";
	say "     As quickly as ever, your massively distended belly shrinks down, the playful prey inside being reduced into fuel for your body.  The rush of the consumed creature flashes through your body, giving you a feeling of strength and pride.  As you pat your shrinking tummy, you can't help but smile happily, thanking your foe for both their contribution to your survival and for the unexpectedly pleasurable mealtime fun.  Having tarried longer than expected after all this, you head out into the city once again.";
	now libido of player is ( ( libido entry * 3 ) + libido of player ) / 4;
	now vorespecial1 is true;

to say vorebyplayer04:		[feet first]
	choose row monster from the table of random critters;
	say "     With that familiar dark impulse building in your roiling stomach, you lick you lips and grab them by the legs.  Wanting to consume this one bottom up, you stuff their feet into your mouth and quickly take those into your stretching throat with a wet gulp.  You move quickly up their legs, getting as much in as you can before they quite realize their predicament.  Getting more adept at this, you're almost to their knees before they quite realize what's going on and you've already got a firm grip on their hips.  With a cry of surprise, they try to pull themselves out.  Failing that, the [name entry] starts to claw at the ground, trying to drag themselves free, but with little success.";
	say "     As you're maw stretches wider and you're getting ready to take in their hips, they give up at pulling away and instead try to strike at you with their forelimbs.  Too weak from the fight, they aren't able to do much damage and only end up giving you a chance to grab their upper limbs and [one of]pin them to their side[or]pull them across their chest[at random].  This both cuts off their ability to fight back and gets them ready to go down.  After a few playful licks across their loins so you might enjoy the taste of your pinned meal, you pull their waist into your mouth while sliding their thighs down your throat.";
	say "     Keeping their limbs pinned down, you pull them in further, forcing your throat to stretch around their hips as they're pulled own.  Sitting upright to add gravity in your favour, a few more swallows has their wrists snugly trapped by your constricting esophagus.  No longer needing your hands to hold the [name entry][']s limbs, you place a hand over their mouth to silence their cries as they try to call out.  With the other on their shoulder, you pull them relentlessly downwards into your gaping maw as they struggle and shake their head, going inch by inch further towards their fate as your next meal.  Already your stomach's gurgling in anticipation, eager to digest the struggling foe.  After popping their shoulders in with a muffled grunt, you shove their head into your mouth and close it behind them.  They squirm delightfully the whole time they're pulled down into you, pressing their hands, feet and face against your stretched belly as they struggle to push free as you feel the rapid progress of digestion starting up, quickly putting an end to their struggles.";
	say "     In no time, your massively distended belly shrinks down, the prey inside being reduced into fuel for your body.  The rush of the consumed creature flashes through your body, giving you a feeling of strength and pride.  Gathering your things, you give your slightly rounded stomach a pat, thanking your foe for their contribution to your survival, and you head out into the city once again.";

to say vorebyplayer05:		[head first - smaller prey]
	choose row monster from the table of random critters;
	say "     Looking over your much smaller foe, you lick your lips and give into that dark hunger growing inside you.  Weakened by your attacks and at a disadvantage due to your larger size, they are easily detained.  With a strong grip on them, you lift your smaller foe up and bring their face to yours.  They suck in a breath to give a cry of fear, but you open wide and stuff their head and shoulders into your open maw in one go.  The [name entry] kicks and struggles in vain, your predatory body easily able to deal with your tinier opponent.  Your throat stretches and bulges as you push them steadily into your hungry mouth, tongue running over their body as you taste this little morsel.";
	say "     With your considerable practice, eating this one down is fairly easy, letting you better focus on savouring this one than dealing with the difficulties of eating something much larger.  With a hand firmly around each leg, you pause with their hips inside your mouth and let your tongue lash across their groin[if anallevel is 3] and pucker[end if], working to tease and taunt your foe with sensual licks.  The [name entry] squirms and struggles even as they moan as well, soon adding their hot juices to the flavour of your meal.  While they're still dazed from their involuntary orgasm, you push them the rest of the way into your mouth, soon closing your lips as they slide down your throat and start to slip into your belly just as it's starting to gurgle again, ready to start digesting this fun tidbit you've caught.";
	say "     Quickly enough, your distended belly shrinks down, the prey inside being reduced into fuel for your body.  A rush of strength and renewed energy flows into you even as you gather your things.  Already feeling a little hungry again after your light meal's gotten you excited for live prey, you rub your belly as it smoothes back down to its normal size and head back out into the city.";


Chapter 4 - UB by Player

to ubbyplayer:
	choose row monster from the table of random critters;
	say "[ubbyplayer00]";		[Master ub scene]
	say "     Indulging in this perversely twisted act has further weakened your grip on your own humanity even as you feel the nanites from your prey flooding your system [if ovipreglevel is 3]even as they are being encased in a protective shell[otherwise]as they bond to your imprisoning womb via a rapidly forming placenta[end if].  With the [name entry] taking root as your next child, you sigh in satisfaction, your maternal demands satisfied for now.  The huge bulge of your belly goes down gradually as they regress somewhat in size, allowing you to eventually get up and continue on your way.";
	decrease humanity of player by 3;
	now gestation of child is a random number between 8 and 16;
	now ubpreg is name entry;
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
	otherwise:
		now skinname of child is name entry;
		now bodyname of child is name entry;
		now tailname of child is name entry;
		now facename of child is name entry;


Chapter 5 - UB Scenes

to say ubbyplayer00:	[master list to decide scenes]
	choose row monster from the table of random critters;
	if ubcount >= 5 and name entry is not "Mannequin" and name entry is not "Snake" and name entry is not "Naga" and ubspecial1 is false:
		say "[ubbyplayer03]";
	otherwise if ubspecial1 is true and (the remainder after dividing ubcount by 5 is 0) and name entry is not "Snake" and name entry is not "Naga":
		say "[ubbyplayer04]";
	otherwise if ubcount is even:
		say "[ubbyplayer01]";
	otherwise if ubcount is odd:
		say "[ubbyplayer02]";


to say ubbyplayer01:			[basic - head first]
	choose row monster from the table of random critters;
	say "     Following the strong impulses coming from your vacant womb, you jump upon the [name entry] and restrain them.  With them too weak to put up much of a fight at this point, you guide their face to your dripping snatch.  At first, thinking that you are simply in search of oral sex, they begin licking and lapping at your folds, unwittingly exciting you further and making your hungry pussy quiver all the more[if scalevalue of player > (scale entry + 1)].  Being much smaller than you, it is easy for you to force their head forward[otherwise if scalevalue of player > scale entry].  Being a little smaller than you, it is not difficult for you to force their head forward[otherwise].  Being about as big as you, it takes a little while before you're satisfied that you've got a tight grip on them before driving your hips forward while you pull on their head[end if], driving it right into your expanding cunt before they realize what's happening.";
	say "    As you continue to pull the struggling [name entry] into your vaginal passage, you moan in orgasmic effort, your perverse need to have your womb filled taking pleasure as they are drawn inexorably into you.  They squirm delightfully inside your cunt, bringing you pleasure as your enhanced inner muscles keep a tight grip on them and drag them in inch by delicious inch.  Your pussy positively flows with your juices, soaking your prey as your ravenous hole steadily engulfs them.  Your belly bulging [if scalevalue of player is scale entry]hugely[otherwise if scalevalue of player is (scale entry + 1)]considerably[otherwise]outwards[end if] as your rapidly unbirthed foe is draw into your womb.  You have to lower yourself to the ground as you pull the last of them into you with another orgasmic cry.  You need to take a moment, rubbing your tummy as you savour that full and fulfilled sensation coming from your now occupied womb.";

to say ubbyplayer02:			[basic 2 - head first]
	choose row monster from the table of random critters;
	say "     Your foe, having been knocked down and dazed, doesn't resist as you guide their face to your dripping wet pussy.  Responding to your scent, the [name entry] starts licking at your folds.  You keep their head pressed to your crotch and moan softly in anticipation as their tongue is first guided into your hot tunnel.  Your pussy spreads itself impossibly wide, sliding slowly over the creature's face.  You resist the urge to force them in deeper right away, letting your vaginal muscles slowly pull them forward as they lick deeper and deeper into you.  As your labial lips near your prey's shoulders, it seems they've started to realize their predicament and give a few light tugs to pull back out.  Having none of that, you tighten your grip on their arms and lower yourself down to your knees, slurping their upper body into you in one orgasmic pull.";
	say "     With the [name entry] now being pressed past your cervix and into your needy womb, you reach down to their crotch.  Playing with them keeps them distracted while they are inexorably drawn into your [bodytype of player] body to become your next child.  Your belly bulges outwards as more and more of the creature is pulled into your uterus.  It squirms and struggles delightfully inside you, but not very strongly, something about the process or your musky juices keeping them aroused and confused.  As their hips slide past your hungry folds, your hands move to pleasuring yourself, rubbing your greedy lips and [if cocks of player > 0]throbbing manhood[otherwise]hyper-sensitive clit[end if].";
	say "     In all, it only takes a few minutes before the last of the defeated [name entry] remains outside your gaping cleft.  Their legs slide more easily along your vaginal tunnel as they're forced to curl up into a fetal position inside you.  Your hips are spread wide and your belly is rounded by its newest passenger.  You flop down on your side with a contented moan, rubbing your tummy as you savour that wonderfully full feeling inside you.  You need to rest briefly while your body and its occupant adjust.";

to say ubbyplayer03:		[special 1 - first time feet first, involuntary prey]
	choose row monster from the table of random critters;
	say "     With the increasingly familiar need building in your heated womb, you rub your groin with one hand and grab the [name entry] by the leg with the other.  Spreading your pussy lips wide, you pull their foot to your gaping hole and shove it in.  Feeling your hot, wet flesh gripping around their limb and drawing them in, they try to struggle, but you grab their other ankle and hold them tight.  They try to pull themselves away with their hands, but they're too weak after the fight to resist the inexorable pull of your cunt.  Bringing their other foot to your wet folds, they slurp it up as well and now have both legs making their pleasant trek into your ravenous vagina.";
	say "     Seeing what's happening and knowing full well from your grin the extent of your lustful plans, the [if scale entry is 1]tiny creature[otherwise if scale entry is 2]small creature[otherwise if scale entry is 3][name entry][otherwise if scale entry is 4]large creature[otherwise if scale entry is 5]huge creature[end if]keeps trying to resist.  These struggles only add to your pleasure as its legs squirm around inside your tight passage, pushing you to point of orgasm.  From their reaction as well, you can tell that part of them is enjoying this even if they are still resisting it.  Wanting some added fun and feeling a need to reassure your soon-to-be offspring, you grab their other limbs and keep them pinned with one hand while your other gropes their crotch.  You fondle them, pleasuring their loins and exciting them further despite their attempts to resist.  You keep this up until their hips pass between your juicy folds.  You move to reassuring them by stroking their face and cooing softly to them.";
	say "     More tired than anything else, their struggles grow weaker but never stop, even after you've fed their upper limbs and body to your hungry cunny.  You continue to caress and stroke their head soothingly.  'What a willful child you are, but I'll love you all the same,' you whisper to them before pressing firmly on the top of their skull and push them the rest of the way into your quivering cunt.  You orgasm again, your inner walls squeezing and rippling over them.  The [name entry] moans in return, orgasming despite its attempts to hold out.  By the time your climax is coming to an end, they've found themselves deposited fully in your uterus.  You feel them jostling around inside you, at first struggling but soon just settling into position, curling up to slumber until they're ready to be reborn.";
	now libido of player is ( libido of player * 3 ) / 4;
	now ubspecial1 is true;

to say ubbyplayer04:		[feet first]
	choose row monster from the table of random critters;
	say "     With the increasingly familiar need building in your heated womb, you pounce atop the dazed [name entry], pinning them to the ground.  They struggle a little, but are too weak and turned on by this point to truly oppose you.  Distracting them by running a hand over their body, groping and caressing them, you guide their feet to your now gaping pussy and its quivering folds.  They moan softly as their feet slip into your cunt's warm embrace, little realizing what's happening until you've already got them in up to their knees and you've got a firm grip on their hips.  With a cry of surprise, they try wriggle free (much to your delight) and, failing that, try to drag themselves free with their upper limbs, but with little success.";
	say "     As your folds stretch wider as you're getting ready to engulf their hips, they give up at pulling away and instead try to strike at you.  Too worn from the earlier battle, they aren't able to do much damage and only end up giving you a chance to grapple their upper limbs and [one of]pin them to their sides[or]pull them across their chest[or]stuff them into your juicy cunny[at random].  This both cuts off their ability to fight back and gets them ready to go the rest of the way into you.  With a quick orgasm that soaks them with your juices, you pull their waist into your vagina while more of them moves into your womb.";
	say "     Keeping their limbs pinned down, you pull them in further, inch after inch of the [name entry] disappearing into your sopping wet pussy.  Your belly stretches and bulges more and more as they get stuffed into you.  No longer needing your hands at this point to hold their limbs, you cover their mouth to silence their cries and caress their head soothingly with the other, telling them how much happier they'll be as part of your family.  You then move your hand to their shoulder and pull them inwards while your cunt struggles to stretch wider to take their shoulders.  The [name entry] shakes their head, but ends up moaning in ecstasy as your rippling inner walls and arousing scent makes the unbirthing process quite pleasurable for them as well.  Once around their shoulders, their head follows quickly and soon you're left with only that delightfully full sensation of having a fresh occupant curling up in your womb to await its rebirth.  You sit up and run your hands over your [bodytype of player] body as a final orgasm hits you feel them connecting with you as your newest pregnancy.";


Chapter 6 - Vore Settings Menu

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
