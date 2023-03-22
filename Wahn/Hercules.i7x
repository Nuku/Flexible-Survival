Version 1 of Hercules by Wahn begins here.

"Adds a placeholder horseman NPC to Flexible Survival"

Section 1 - Description

Table of GameCharacterIDs (continued)
object	name
Hercules	"Hercules"

Hercules is a man.
ScaleValue of Hercules is 4. [human sized]
Body Weight of Hercules is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Hercules is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Hercules is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Hercules is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Hercules is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Hercules is 5. [length in inches]
Breast Size of Hercules is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Hercules is 2. [count of nipples]
Asshole Depth of Hercules is 8. [inches deep for anal fucking]
Asshole Tightness of Hercules is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Hercules is 1. [number of cocks]
Cock Girth of Hercules is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Hercules is 22. [length in inches]
Ball Count of Hercules is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Hercules is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Hercules is 0. [number of cunts]
Cunt Depth of Hercules is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Hercules is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Hercules is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Hercules is false.
PlayerRomanced of Hercules is false.
PlayerFriended of Hercules is false.
PlayerControlled of Hercules is false.
PlayerFucked of Hercules is false.
OralVirgin of Hercules is false.
Virgin of Hercules is true.
AnalVirgin of Hercules is true.
PenileVirgin of Hercules is false.
SexuallyExperienced of Hercules is false.
TwistedCapacity of Hercules is true. [Twisted Characters can take any penetration, no matter the size]
Sterile of Hercules is false. [steriles can't knock people up]
MainInfection of Hercules is "Horseman".
Description of Hercules is "[HerculesDesc]".
Conversation of Hercules is { "Woof." }.

to say HerculesDesc:
	say "     Hercules formerly was one of those mannequin creatures, but now has taken on the appearance of a proud Clydesdale stallion, standing about six and a half feet tall on his large hooves. His powerful frame is very well muscled underneath a coat of short brown fur, with longer, snowy white fur feathering out around his wrists and ankles, creating an interesting contrast in his coloring. Along the same lines, up at the masculine and square muzzle of the big man, white fur stretches from just beneath his mouth up to the start of his ears, while the cheeks on both sides are brown, and a bit of a black mane covers the top of his head. And finally, despite starting out as a sexless doll, the anthro equine is quite definitely anatomical correct, as a weighty pair of full balls dangle freely between his legs, with a no doubt massive horsecock currently mostly retracted into its sheath.";
	if "Private Sex Toy" is listed in Traits of Hercules:
		project Figure of Hercules_soft_icon;
		say "     Having found this impressive example of masculinity in a warehouse among hundreds of motionless mannequins, and determined that he's apparently without any impulse to do anything on his own, making him uniquely pliable for others to control. You obviously grabbed the horseman for your own use, as a nice and obedient sex toy like this is just what you need.";
	else if "Public Sex Toy" is listed in Traits of Hercules:
		project Figure of Hercules_soft_icon;
		say "     Having found this impressive example of masculinity in a warehouse among hundreds of motionless mannequins, and determined that he's apparently without any impulse to do anything on his own, making him uniquely pliable for others to control. You obviously grabbed the horseman to position him in the library, as a nice and obedient sex toy like this is just what the place needed.";
	else if "Therapy Project" is listed in Traits of Hercules:
		say "     Having found this tragic example of a being's reasoning being stretched past its breaking point due to the sinister impact of the transformation nanites ravaging the city, you took Hercules from the warehouse you found him in, bringing him here to the library. The chance of reclaiming him from the catatonia-like state he currently is in might be slim, but you thought it'd be a worthwhile endeavor. Hopefully he can be convinced that he shouldn't just despair and stay in this doll-like state, but can be... real, can be alive.";
		if "Naked" is listed in Traits of Hercules:
			project Figure of Hercules_soft_icon;
			say "     Looking at the horseman, you're struck by the realization that having him standing here in the nude might actually be a first thing you can do something about as a first step. Maybe you could try to address that side of things in an attempt to give your equine friend some dignity? [bold type]Try talking to him to explain what you're gonna do.[roman type][line break]";
		else if "Towel" is listed in Traits of Hercules:
			project Figure of Hercules_towel_icon;
			say "     As a stopgap measure to not have him remain nude and exposing himself to his surroundings, you've tied a large white towel around his hips, giving Hercules some dignity back.";
		else if "Kilt" is listed in Traits of Hercules:
			project Figure of Hercules_kilt_icon;
			say "     It took some effort, but you acquired a fairly nice kilt with a checkerboard pattern, large enough to fit the large equine. With him now no longer constantly exposing himself to his surroundings, this is giving Hercules some dignity back.";

The scent of Hercules is "     Hercules smells of clean fur, with a little bit of masculine musk underlying it. There's no trace of artificial smells from the former mannequin - but neither is there too much else, like sweat for example. You're not even certain if he can sweat...".

Section 2 - Talking

instead of conversing the Hercules:
	if "Private Sex Toy" is listed in Traits of Hercules or "Public Sex Toy" is listed in Traits of Hercules:
		say "[HerculesToyTalkMenu]";
	else:
		say "[HerculesPersonTalkMenu]";

to say HerculesToyTalkMenu:
	if Humanity of Hercules is 0:
		say "     Stepping up to the motionless horseman, still standing in the pose that you last put him in, you grin at having such a neat toy to play with. Quipping that he's here to serve, you gloss over the fact that he's not showing any outward reaction to your presence.";
	project Figure of Hercules_soft_icon;
	say "     [bold type]What do you want to address with Hercules?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Revel a bit in the fact that he's yours now";
	now sortorder entry is 3;
	now description entry is "Have a one-sided conversation with your sex toy";
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
				if (nam is "Revel a bit in the fact that he's yours now"):
					say "[Hercules_SexToyMonologue]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Clydesdale horseman, who stands still and motionless without reacting in any way.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Hercules_SexToyMonologue:
	say "     Moving even closer to the large and muscular equine, you bring your hands forward to touch his chest while saying that you're so happy you found him before anyone else claimed the fuck-toy that he is. Letting your fingers wander over the firm, furred abs as you look up at his still and emotionless face, you tell him and the world that you can do anything you want with him. With that handsome muzzle, nudging apart his lips with your fingers to feel over the broad tongue beyond, his magnificent body and also the proud cock he bears for the world to see. Moving down to feel over the skin of his sheath, you can't help but love that your equine fuck-toy is fully functional in this regard, as his cock begins to push out and rests warmly in your hand, while Hercules at the same time has no will or wish to act on his own at all. So while he may not be the most engaging of sexual partners, he's perfectly pliable to serve every last wish of yours. Completing your little tour and self-congratulatory victory lap of touring his body, you give the towering figure a slap on his bare butt before walking away with a spring in your step.";

to say HerculesPersonTalkMenu:
	if "Naked" is listed in Traits of Hercules:
		project Figure of Hercules_soft_icon;
	else if "Towel" is listed in Traits of Hercules:
		project Figure of Hercules_towel_icon;
	else if "Kilt" is listed in Traits of Hercules:
		project Figure of Hercules_kilt_icon;
	if Humanity of Hercules is 0:
		say "     Stepping up to the motionless horseman, still standing in the pose that you last put him in, you greet him and give a friendly smile, glossing over the fact that he's not showing any outward reaction to your presence.";
	say "     [bold type]What do you want to address with Hercules?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Naked" is listed in Traits of Hercules:
		choose a blank row in table of fucking options;
		now title entry is "Getting his nakedness covered - with a bath-towel, for now";
		now sortorder entry is 1;
		now description entry is "Explain to the former mannequin what you're doing";
	[]
	if "Kilt" is listed in Traits of Hercules:
		choose a blank row in table of fucking options;
		now title entry is "Going back to the bath-towel, for around his hips";
		now sortorder entry is 2;
		now description entry is "Explain to the former mannequin what you're doing";
	[]
	if "Towel" is listed in Traits of Hercules and "Kilt Obtained" is listed in Traits of Hercules:
		choose a blank row in table of fucking options;
		now title entry is "Switch him over to wearing a kilt";
		now sortorder entry is 3;
		now description entry is "Explain to the former mannequin what you're doing";
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
				if (nam is "Getting his nakedness covered - with a bath-towel, for now"):
					say "[Hercules_Naked to Towel]";
				if (nam is "Going back to the bath-towel, for around his hips"):
					say "[Hercules_Kilt to Towel]";
				if (nam is "Switch him over to wearing a kilt"):
					say "[Hercules_Towel to Kilt]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Clydesdale horseman, who stands still and motionless without reacting in any way.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Hercules_Naked to Towel:
	say "     Addressing the silently listening horseman, you explain that you want to give him some clothing, of a sort. Most people don't just casually stand around naked - or at least mostly only nudists do - and you felt like he should have some dignity too, as he's not a statue after all. Further, waving a hand at the fairly enormous stature that Hercules has (as compared to a default human), you go on to say that it'll be somewhat difficult to get him something to wear, but you had an idea that'll do for now. That said, you pull out a white bath-towel that you dug out in the bunker from one of the shelves earlier, where it had been stashed in a vacuum-sealed plastic bag. Draping your towel around the horseman's hips, you pull it taut, then tuck in the upper edge under the waistline and fasten it in place. There, that'll do for now! Finally, you tap Hercules on the arm and tell him you hope he likes it, and that he just needs to tell you if he wants to go back to nakedness, or something else. There isn't any reaction, but you still have a good feeling about what you did for him.";
	project Figure of Hercules_towel_icon;
	remove "Naked" from Traits of Hercules;
	TraitGain "Towel" for Hercules;

to say Hercules_Kilt to Towel:
	say "     Addressing the silently listening horseman, you explain that... well, the towel did look pretty great on him. In your opinion, maybe even better than the kilt... so you kinda do want to put it back on him. Looking into his eyes to try to glean any reaction, you ask if he's okay with switching back. Waiting five seconds, ten, then fifteen, you finally give him a friendly pat on the arm, and say that you'll take that as him being fine with it for now, but he need only give you some sort of signal and you'll help him do whatever he wants instead. That said, you pull out the white bath-towel again and quickly remove the kilt. Draping your towel around the horseman's hips, you pull it taut, then tuck in the upper edge under the waistline and fasten it in place. There, that'll do for now! There still isn't any reaction from him, but you hope you did the right thing.";
	project Figure of Hercules_towel_icon;
	remove "Kilt" from Traits of Hercules;
	TraitGain "Towel" for Hercules;

to say Hercules_Towel to Kilt:
	say "     Addressing the silently listening horseman, you explain proudly that you got him something new to wear. A real piece of clothing this time! That said, you pull the oversized kilt out and hold it up for him to see. Looking into the equine's eyes to try to glean any reaction, you ask if he's okay with switching over to this new garment. Waiting five seconds, ten, then fifteen, you finally give him a friendly pat on the arm, and say that you'll take that as him being fine with it for now, but he need only give you some sort of signal and you'll help him do whatever he wants instead. That said, you give the white towel around his hips a little tug, pulling it loose and letting it fall down to pool around his hooves, then wrap the kilt around the horseman's broad hips. Tightening the straps on the right, then the left, it's firmly in place on Hercules now! There still isn't any reaction from him, but you still have a good feeling about what you did for him.";
	project Figure of Hercules_kilt_icon;
	remove "Towel" from Traits of Hercules;
	TraitGain "Kilt" for Hercules;

Section 3 - Sex

Instead of fucking the Hercules:
	if "Therapy Project" is listed in Traits of Hercules:
		if "Naked" is listed in Traits of Hercules:
			project Figure of Hercules_soft_icon;
		else if "Towel" is listed in Traits of Hercules:
			project Figure of Hercules_towel_icon;
		else if "Kilt" is listed in Traits of Hercules:
			project Figure of Hercules_kilt_icon;
		say "     Given that you're aiming to make Hercules feel [italic type]more[roman type] like a person and bring him out of his current state, simply making use of him sexually without getting any sort of consent would surely be counterproductive. Your conscience raises a protest and (for now) reins in your more animalistic impulses.";
	else if "Private Sex Toy" is listed in Traits of Hercules:
		say "[Hercules_Sexmenu]";
	else if "Public Sex Toy" is listed in Traits of Hercules:
		say "[Hercules_Sexmenu]";

to say Hercules_Sexmenu:
	project Figure of Hercules_hard_icon;
	if Humanity of Hercules is 0:
		say "     Stepping up to the motionless horseman, still standing in the pose that you last put him in, you grin at having such a neat toy to play with. Quipping that he's here to serve, you gloss over the fact that he's not showing any outward reaction to your presence.";
	say "     [bold type]What sort of fun do you want to have with Hercules?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk a load out of him";
	now sortorder entry is 1;
	now description entry is "Play with that horsecock and watch it shoot a load";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Rail the horseman's ass and blow a load in him";
		now sortorder entry is 2;
		now description entry is "Fuck Hercules with your cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take a ride on that horsecock";
	now sortorder entry is 3;
	now description entry is "Fuck yourself on Hercules's huge prick";
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
				if (nam is "Milk a load out of him"):
					say "[Hercules_SexToy_Jerking]";
				else if (nam is "Rail the horseman's ass and blow a load in him"):
					say "[Hercules_SexToy_AssFuck]";
				else if (nam is "Take a ride on that horsecock"):
					say "[Hercules_SexToy_CockRide]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Clydesdale horseman, who stands still and motionless without reacting in any way.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Hercules_SexToy_Jerking:
	say "     Getting even closer to the six foot tall equine, you move your hands straight to his crotch, going straight to cupping his furry balls. They weigh heavily in your grasp and are warm to the touch, amazingly lifelike despite that fact that you know that he's nothing more than a mannequin on the inside. The mimicry of real people thankfully goes far enough to include body heat, saliva, and cum too - which will make your current play with this large sexy toy of yours even better. Fondling and squeezing the balls, you make use of the fact that while Hercules might not have a will, he's fully functional physically, as shown by his equine shaft starting to fill out, pushing forward from the folds of skin that are the horseman's sheath. Growing further and further as you grope and stroke the flat-ended cock, you enjoy how its hot girth fills your hands.";
	say "     Soon, a droplet of pre-cum appears at the opening of his cum-channel, and you can't help but wonder if some of the movement of his swinging balls isn't only from your jerking but also the cum-factories working hard to build up the heavy load you know is going to be sent forth shortly. Glancing upwards to the neutral expression on the equine's face, you imagine how he'd pant and moan right now, if he had lungs and was breathing. Instead, you hear your own exhalations getting a little faster and more breathy as you build towards the climax. With the fleshy tube of his erection tightly grasped in your hand, you can feel its girth swell just a little bit more, heralding the moments-away climax...";
	LineBreak;
	let Hercules_Sextoy_Jerking_Choices be a list of text;
	add "Watch how far he shoots!" to Hercules_Sextoy_Jerking_Choices;
	add "Slip your lips over the head of his cock and eat Hercules cum!" to Hercules_Sextoy_Jerking_Choices;
	add "Collect the load in a bottle!" to Hercules_Sextoy_Jerking_Choices;
	add "Actually... maybe you want to stop here, and deny the doll this orgasm!" to Hercules_Sextoy_Jerking_Choices;
	let Hercules_Jerk_Choice be what the player chooses from Hercules_Sextoy_Jerking_Choices;
	if Hercules_Jerk_Choice is:
		-- "Watch how far he shoots!":
			LineBreak;
			say "     Hefting the almost two-foot long equine cock in your hand, you angle it up at a 45 degree angle, wanting to give the cum of your big toy the best chance to fly far. Chuckling to yourself, you bring the other hand back to cupping the horseman's balls, hefting and squeezing them as if priming a primitive squirt-gun... which you are, in a way. Something among the mixture of jerking and fondling pushes Hercules the little extra step further that was needed, and with a surprising suddenness due to his absolutely quiet demeanor, the anthro's cock starts to erupt. Under your fingers, you feel his balls twitch and pulse hard as they send forth a deluge of equine seed, with each long and thick white stream barely having shot out of a widely flaring dickhead before the next follows, and the next and next.";
			say "     With Hercules not moving on his own at all, his load flies exactly where you direct it, arching up before landing in wet splats on the ground at least eight feet or so away! Quite a shooter, your toy, and he's producing a lot of cum too, as his dick keeps twitching for a long while, with the intensity of his blasts only slowly ebbing off. In the end, there isn't just a splat at the furthest distance he can shoot, but a literal line of cum across the ground, shining wetly in the light. As Hercules equine shaft then starts to shrink again in your grasp, preparing to sink back down into its sheath, you quickly get a few tissues to wipe it down. Always a good idea to put your toys away properly, so they're not all icky when you want to use them next...";
		-- "Slip your lips over the head of his cock and eat Hercules cum!":
			LineBreak;
			say "     Following a split-second decision, you bring your head to crotch-level for the equine and open your mouth wide, to sink it over his dickhead. Lips brushing over the hot skin of your horseman's erection, you let your tongue play over the flat, spongy head of his manhood, feeling for the opening of his cum-tube. Between the jerking and now oral being added into the mix Hercules is pushed the little extra step further to reach his sweet release, and with a surprising suddenness due to his absolutely quiet demeanor, the anthro's cock starts to erupt. You can't help but feel like you decided to take drink from a fire-hose as his dickhead flares outwards, then lets loose with a deluge of equine seed, right into your mouth. You can feel a blast of cum hit the back of your throat but don't really have time to cough or react before the following spurt is there, filling your mouth even more.";
			say "     By that point, there is little option but to start swallowing it down as quickly as you can, or be overwhelmed by the sheer volume of equine seed that the horseman fuck-toy produces. For the next little while, your universe is reduced to focusing on the spongy, flared dickhead filling our mouth with its own swollen size and the almost endless flood of cum that gushes forth from it. The equine seed drenches every last taste-receptor on your tongue, making sure you'll never forget the surprisingly enticing animalistic taste of Hercules cum, and warmly trickles down your throat as you swallow in big gulps. You can feel it warmly in your stomach, as the output of his balls is almost a small meal on its own. By the time his orgasm just begins to slowly ebb off, you have little choice but to pull the throbbing dick out to allow you to gasp for air, filling your lungs with the oxygen you need. Meanwhile, Hercules cock continues to shoot out yet more cum, making quite a mess of things. When his equine shaft eventually starts to shrink again, preparing to sink back down into its sheath, you quickly get a few tissues to wipe it, and yourself, down. Always a good idea to put your toys away properly, so they're not all icky when you want to use them next...";
			PlayerEat 20;
			PlayerDrink 20;
		-- "Collect the load in a bottle!":
			LineBreak;
			say "     Quickly snatching up the empty plastic bottle you had laid out for just this intent, you continue to caress Hercules manhood, positioning his dickhead just against the opening of your container. After just a few more strokes with your other hand, with a surprising suddenness due to his absolutely quiet demeanor, the anthro's cock starts to erupt. Under your fingers, you feel his balls twitch and pulse hard as they send forth a deluge of equine seed, with each long and thick white stream barely having shot out of a widely flaring dickhead before the next follows, and the next and next. All of them land in your bottle, the first hitting its end with audible thuds, before it begins to fill up and the sounds get to be more akin to wet splashes. By lucky coincidence, you selected one of the slightly larger bottles for this task, as a smaller one would surely have overflowed before the torrent of cum is finally over.";
			say "     As Hercules equine shaft then starts to shrink again in your grasp, preparing to sink back down into its sheath, you quickly cap your bottle, then get a few tissues to wipe the horseman down. Always a good idea to put your toys away properly, so they're not all icky when you want to use them next...";
			ItemGain horseman cum by 1;
		-- "Actually... maybe you want to stop here, and deny the doll this orgasm!":
			LineBreak;
			say "     Slowing down your hand's movement along the almost two-foot long equine cock, you throw a quick grin up at Hercules passive face. He's more than close, that is clear, but you're not gonna give him that last little push he needs. Nope, that's not in the cards for him right now. You decide what happens with this horseman-shaped toy, and you just changed your mind from making him shoot. And there's nothing he can do about it, will-less as he is. Slowly lowering the cock and pulling away your fingers from holding it in your grasp, you take care that you don't accidentally set him off and instead just watch what happens. So very close to a pleasurable release, the equine schlong stays rock hard for a long while, throbbing and with droplets of pre-cum trickling over the half-flared dickhead, then dripping onto the ground.";
			say "     Yet without further stimulation, Hercules erection simply can't last, eventually starting to flag and go soft, then shrinking back into the sheath. You could be imagining it, but you'd swear that his balls are just a little more plump and full than they were before. They'd have to be, with the freshly produced seed he was about to spray out in a glorious climax - but now, your play-horse is gonna get a case of severe blue-balls instead. With a chuckle on your lips, you stand back and watch him go fully soft once more, enjoying the feeling of power that this gives you.";

to say Hercules_SexToy_AssFuck:
	if Hercules is in Back of the Library:
		say "     Deciding that it is time you enjoy yourself in the rear end of your muscular equine sex toy, you grab Hercules by the hand and pull him along to one of the nearby sofas. Then you push him down to lay lengthwise on it, on his back, with the powerful thighs and hooved legs of the horseman dangling off the end. After that, it is just a question to lift each leg and hook his hands underneath them, for all intents and purposes making it appear as if the big man is presenting himself to you for fucking. Letting your eyes roam over the laid-out hunk of a horse, you can't help but grin at the fun you'll have with with him. Too bad he's just a doll and doesn't beg, moan and whimper for you to fuck him, but hey, Hercules is still the most life-like and amazing sex toy one can get! Following a sudden whim, you take a step or two along the sofa and adjust his neck and head a little, raising it so he 'looks' at someone standing between his legs, and has his mouth open in a facsimile of being mid-moan.";
	else:
		say "     Deciding that it is time you enjoy yourself in the rear end of your muscular equine sex toy, you grab Hercules by the hand and pull him along to one your large bed. Then you push him down to lay lengthwise on it, on his back, with the powerful thighs and hooved legs of the horseman dangling off the end. After that, it is just a question to lift each leg and hook his hands underneath them, for all intents and purposes making it appear as if the big man is presenting himself to you for fucking. Letting your eyes roam over the laid-out hunk of a horse, you can't help but grin at the fun you'll have with with him. Too bad he's just a doll and doesn't beg, moan and whimper for you to fuck him, but hey, Hercules is still the most life-like and amazing sex toy one can get! Following a sudden whim, you half-climb on the bed to adjust his neck and head a little, raising it so he 'looks' at someone standing between his legs, and has his mouth open in a facsimile of being mid-moan.";
	say "     [if Player is not naked]Quickly undressing and [else]After [end if]puttin down your gear, you walk around to standing in front of Hercules, feasting your eyes on him to your heart's content. Those powerful, muscular legs, spread wide to allow you access to his well-rounded ass and the black-skinned ring of his pucker between those cheeks. A little bit further up, the wrinkled folds of his sheath hide the large horsecock your toy holds ready for you, then firm, deeply ridged abs that you could bounce coins off of, and protruding pecs to match his bulging arms. The guy Hercules got his shape from was a workhorse after all, so he's built like a brickhouse. And finally, your gaze arrives at his face and the apparent moan on his half-open lips, which is enough to let you fantasize a little. With a broad grin, you tell the horseman that you'll give him something to moan about, and let your hands drop down to your own [Cock of Player] erection, already filling out in anticipation of a good fuck. Stroking your fingers along the shaft, you get yourself fully hard, then smack it into the open palm of your other hand.";
	WaitLineBreak;
	say "     Moving up to eliminate the last little bit of distance between you and Hercules, you rub your hard cock against the shiny and soft coat of fur covering his muscles and feel the warmth suffusing his body. This alone already makes the former mannequin superior to almost any sex toy out there, him being so very lifelike and feeling alive. Brushing your dickhead along the inside of his left thigh, you work your way to his crotch, lightly tracing along the outside of those large, heavy balls beneath his sheath. Given the prodigious size of those cum-factories, they're dangling just a little above his hole, making it so that you're basically hot-dogging Hercules balls as you line yourself up, with their furred curves lightly brushing along the top of your shaft. Deciding to experiment a little with that experience, you cup the horseman's balls, weighing the orbs in your hands as you just grind your cock against them for a fun little while.";
	say "     Besides just getting you horned-up, with pre-cum starting to leak from your dickhead and being dabbed against Hercules pucker every time you push your hips forward all the way, the stimulation also has a visible effect on the sex doll himself. Far from the fairly flat area of wrinkled skin that it was before, Hercules pubic area gets more and more dominated by his enormous equine shaft pushing out and getting hard. Despite the large equine not being interactive in a conscious way, his body is fully functional, including getting aroused from the right stimulation. Lifting the soon almost two foot long erection with both hands, you give it a little stroke, then let it go again to watch it fall onto his hard abs with a meaty thud. A grin on your face, you quip that he's horny because he wants your dick inside him so very badly, and that you'll oblige in just a moment...";
	WaitLineBreak;
	say "     Deciding that you've had enough playing around with just humping against your stallion toy, you pull his balls up a little to allow an unobstructed view of the fuckhole you want to enjoy. Hercules back door is an almost pretty little ring of muscle, its night-black skin shining with wetness from the pre-cum smeared all over. Using two fingers to gather some more of the slick liquid from the tip of your shaft, you set them right against the center of the opening, pushing in with steady, slow pressure that leaves your digits soon enveloped by the snug insides of his inner passage. Moving them in and out a little, you work more pre up Hercules rear to lube him up, then soon follow this up by bringing your dickhead to the ring of muscle. Pushing in softly, then a little more vigorously, makes the horseman's ass yield to your invasion, and you sink your [Cock of Player] hardon into his gripping hole. He feels amazing to be in, stretched tightly around your erection, a warm and silky smooth hole to sheath your cock in!";
	say "     Pulling your hands away from the anthro equine's balls again, they naturally come to rest against the upper curve of your cock - and your crotch, when you thrust in - giving you an extra little kick of satisfaction. Here you are, having this massive hunk of a man laid out before you, with you being the one to dominate him! The weighty balls demonstrate his obvious virility, yet they serve only to snuggle up against your cock, and each of your thrusts makes them bounce in the horseman's sack. Smiling broadly as you look up to see the moaning expression on Hercules face, you slide your hands under his thick thighs, grabbing them tightly as you begin to really rail his ass hard. Slapping noises of your crotch against Hercules body, as well as your own grunts and moans fill the room as you make proper use of the large sex toy, really letting out your built-up lust as you use him to your heart's content.";
	WaitLineBreak;
	say "     Pacing yourself to not have this sexual adventure be over too soon, your hard thrusts against Hercules are interspersed with some pauses of simply resting inside his welcoming hole, allowing you to pull back from the edge of almost blasting a load into him. It is very satisfying to be totally in control and be able to make things last as long as you want. Well, almost, that is - as your relentless pounding has been hitting Hercules prostate countless times, pushing his body further and further towards its own orgasm. With him making no noises on his own, and not even breathing, it comes as a bit of a surprise to you when the horseman suddenly starts to cum, his large horsecock twitching up and throbbing HARD as it sends a volley of creamy cum to shoot up into the air, splashing down again well over the anthro's own head. Focused on your own pleasure, you missed the signs of his impending climax before the wave of lust finally broke.";
	say "     In rhythm with the spasms of Hercules balls and cock as he cums, his inner muscles also squeeze around your own erection, giving you the sensation of being jerked off within the tight confines of the anthro equine's asshole. Having edged for who knows how long and being on a knife's edge with your arousal, this new stimulation sends you barreling past the point of no return in the blink of an eye, joining Hercules in climax. Every time he spasms, you shoot one more spurt of your seed into his innards, letting out all your balls can provide in the futile effort of trying to impregnate this oh so very realistic sex doll. Swaying a little and having to hold on to his legs so you don't collapse forward onto the still erupting cock of the horseman, you ride out a breathtaking orgasm, thoroughly enjoying the experience of filling him up. Best fucktoy ever!";
	WaitLineBreak;
	say "     By the time your last spurts of cum eventually ebb off, you pull out of Hercules and take in your handiwork: He's still laid out on his back, legs raised and presenting himself for use, but now the large equine's hole has a freshly-used look to it, still gaping open a little and with a trickle of cum starting to run out of it, beginning to soak into the long strands of his tail hanging down to the ground. And the anthro's face and chest are streaked with a long line of cum that is matting the short fur of his coat and fills the dips between abs that have now turned into cum-gutters. His face still shows the moan-like expression you put on him, making you smile as you see it. You revel in what you've done a little longer, before relenting and going to get some tissues - well, a lot of tissues - and starting to clean yourself and Hercules properly. Always a good idea to put your toys away properly, so they're not all icky when you want to use them next...";
	NPCSexAftermath Hercules receives "AssFuck" from Player;

to say Hercules_SexToy_CockRide:
	if Hercules is in Back of the Library:
		say "     Deciding that it is time to experience the sensations of taking that huge equine cock your sex toy has in store, you grab Hercules by the hand and pull him along to one of the nearby sofas. Then you push him down to lay lengthwise on it, on his back, with the powerful thighs and hooved legs of the horseman dangling off the end. Letting your eyes roam over the laid-out hunk of a horse, you can't help but grin at the fun you'll have with with him. Too bad he's just a doll and give you any banter and teasing about soon being impaled on his cock, but hey, Hercules is still the most life-like and amazing sex toy one can get! Following a sudden whim, you take a step or two along the sofa and adjust his neck and head a little, raising it so he 'looks' at someone straddling his hips, and has his mouth open in a facsimile of being mid-moan. Yeah, that'll do very nicely you think!";
	else:
		say "     Deciding that it is time you enjoy yourself in the rear end of your muscular equine sex toy, you grab Hercules by the hand and pull him along to one your large bed. Then you push him down to lay lengthwise on it, on his back, with the powerful thighs and hooved legs of the horseman dangling off the end. Letting your eyes roam over the laid-out hunk of a horse, you can't help but grin at the fun you'll have with with him. Too bad he's just a doll and give you any banter and teasing about soon being impaled on his cock, but hey, Hercules is still the most life-like and amazing sex toy one can get! Following a sudden whim, you half-climb on the bed to adjust his neck and head a little, raising it so he 'looks' at someone straddling his hips, and has his mouth open in a facsimile of being mid-moan. Yeah, that'll do very nicely you think!";
	say "     [if Player is not naked]Quickly undressing and [else]After [end if]puttin down your gear, you walk around to standing in front of Hercules, feasting your eyes on him to your heart's content. Those powerful, muscular legs, ending at large hooves standing on the ground, and between them the heavy and full orbs of his balls, ready to produce a massive load of fresh cum to fill you to the brim! A little bit further up, the wrinkled folds of his sheath hide the large horsecock your toy holds ready for you, then firm, deeply ridged abs that you could bounce coins off of, and protruding pecs to match his bulging arms. The guy Hercules got his shape from was a workhorse after all, so he's built like a brickhouse. And finally, your gaze arrives at his face and the apparent moan on his half-open lips, which is enough to let you fantasize a little. With a broad grin, you tell the horseman that you'll give him something to moan about, and let your hands drop down to his crotch, brushing over the sheath and balls in eager anticipation.";
	WaitLineBreak;
	say "     Weighing the equine's balls in your hand as you hold them, you admire the clear signs of his virility, lightly squeezing and fondling his cum-factories. The stimulation doesn't stay without consequences for long either, as the crown of his equine shaft starts to push out from between the wrinkled folds of his sheath, becoming harder and harder by the second. No matter that he's just a will-less doll for you to use, Hercules's body and reflexes perfectly imitates that of a living person, which includes the ability to get hard and all that entails. You feast your eyes on the blunt-headed cock rapidly growing to its towering length of being almost two feet long. As you stroke along its length, you can feel the comfortable warmth that it radiates - another ability that makes this horseman outclass any other imaginable kind of sex-toy. Before long, the blunt-headed piece of man-meat begins to leak pre-cum from its tip, welling up at the opening of Hercules's cum tube and glistening enticingly in the light.";
	say "     Running your palm over the equine cock's lightly flared head, you wipe off his pre and start so spread it all over his shaft as improvised lube. Gathering spit, you add it of the mix, letting gobs drip off the tip of your tongue to land on the black-skinned cock, followed by more pre-cum being rubbed in as it leaks from the dickhead. As eager as you are for getting on top of this massive thing, you know you need to prepare it well so you can take the girth and length, and at least in this regard it is a positive that Hercules isn't a more active participant, as any man would likely have become impatient for fucking before you decide that his cock is well-enough lubed for you. With your heart beating quickly in your chest, you climb up on the bed, stepping over the anthro to straddle his legs. Feeling the short fur of his muscular thighs underneath you, you're literally pressing your front against the towering, hard shaft, somewhat wide-eyed as you measure on your chest just how deep he'll go inside you if you take this thing.";
	if Player is Female: [pussy present]
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take him in your pussy!";
		say "     ([link]N[as]n[end link]) - You want that thing in your ass!";
		if Player consents:
			say "[Hercules_SexToy_VaginalCockRide]";
		else:
			say "[Hercules_SexToy_AnalCockRide]";
	else: [anal it is]
		say "[Hercules_SexToy_AnalCockRide]";

to say Hercules_SexToy_VaginalCockRide:
	say "     [If Player is male]After a little playful cock-fight with the equine monster cock your sex toy is sporting, you [else]After rubbing your clit for a moment against the side of his equine monster cock, you [end if]lift yourself to be just above that towering rod. Looking down in a mixture of lust and apprehension, you take hold of his dickhead, rubbing it over your nether lips slowly, then nudge them apart to push the thick member in between. God, he's so warm, so thick - and so good inside you! It is an incredible feeling to be spread open by another like this, and you eagerly sink deeper onto his erect flagpole, taking it into your inner depths. [if Cunt Depth of Player > 19]Incredibly, you're able to take all of the magnificent length, down to his very root! [else if Cunt Depth of Player > 10]Althogh you eventually reach the limit at just how much of this enormous shaft you can fit inside yourself, you're well-pleased that more than half the length is spreading you open! [else if Cunt Depth of Player > 5]Despite ending up a little bit disappointed in the end that you couldn't even take half of the length, you're still well-satisfied by the way he is spreading you open! [else]Being able to take just the head, and just an inch or two beyond, you still feel more than pleased with yourself to even get this far, stretched open by a literal horse cock! [end if]For a long moment, you pause like this, getting used to having the horseman's prick as deep as it will go inside you. Looking down at Hercules face, you smile as you see the moaning expression you put on it, telling yourself that if he could talk, could moan, he'd be very appreciative of you mounting him like this.";
	say "     A moment later, you start to rock back and forth, sliding up on the huge cock, then taking it nice and deep once again, stimulating your inner walls oh so very nicely. It is immensely pleasurable, a lot more than any mere dildo could be, with his perfectly life-like erection giving you fullness and inner warmth. Part of you loves the fact that he's leaking pre-cum into your pussy right this second, and you look forward to being filled with Hercules's cum in short order too. You ride the large hunk of a stallion for some time, pacing yourself so this sexual adventure isn't over too quickly, so in between periods of bouncing up and down on his prick, there always are periods of his resting with his cock inside you, or even standing over him in anticipation of impaling yourself once more. During one of those latter moments, you also decide that you want more than just his dick, leaning down to take one hand of the large man, then the other, and placing them on the sides of your hips.";
	WaitLineBreak;
	say "     Bending Hercules's fingers into place to grip your sides, you experiment a little and soon find the right way to position the hands so you barely have to hold onto them even as you rock up and down on his shaft. It almost feels as if the strong workhorse is holding onto you, pulling down to impale you on his cock! It is very satisfying to be totally in control and be able to make things last as long as you want. Well, almost, that is - as your relentless acts of fucking yourself on Hercules push his body further and further towards its own orgasm. With the equine making no noises on his own, and not even breathing, it comes as a bit of a surprise to you when the Hercules suddenly starts to cum, his large horsecock twitching up and throbbing HARD as it erupts into your gripping pussy, a first spurt of creamy cum filling you from one second to the next. Then another, and another. Your own arousal flares brightly as you start to be filled with a true deluge of equine seed, and your hands shoot to your crotch so you can get yourself off and join Hercules in orgasm.";
	say "     [if Player is male]Fingers wrapping around your own cock, you jerk off at a frantic pace and push yourself over the edge in short notice, sending streaks of cum flying to splash down all over the horseman and what he's lying on. At the same time, your pussy gets drippingly wet around the horsecock inside of it, and its inner muscles twitch to squeeze Hercules and milk more cum from him. [else]Fingers frigging your pleasure-button in relentless speed, you push yourself over the edge in short notice, with your pussy getting drippingly wet around the horsecock inside it and its inner muscles twitching to squeeze Hercules and milk more cum from him. [end if]You stay on top of him as long as your legs can bear the strain of holding still like this, taking in the only slowly ebbing spurts of seed as it keeps erupting from the anthro's cock, but at some point, you can't suppress the need to stretch your legs a little. Pushing yourself to standing position, you slide off the towering erection with a wet slurp, as some of the copious amounts of cum starts to gush out of you, now it's no longer held in by a flared equine cock.";
	WaitLineBreak;
	say "     With a thud, Hercules's cock falls onto his rock-hard abs, still spurting more equine seed and giving his chest a messy coating of cum. As much fun as this was, you can't help but sink down next to the hunk of a sex toy you just enjoyed, panting loudly to catch your breath and recover a little. Blissfully exhausted and filled to the brim with cum, you look over to the mannequin and see his moan-like expression, putting a smile on your face. Patting his protruding right pec, you playfully tell him he did a good job, then let out a long breath before pushing yourself up to stand once more. You let your gaze wander over him and revel in what you've done a little longer, before relenting and going to get some tissues - well, a lot of tissues - and starting to clean yourself and Hercules properly. Always a good idea to put your toys away properly, so they're not all icky when you want to use them next...";
	NPCSexAftermath Player receives "PussyFuck" from Hercules;

to say Hercules_SexToy_AnalCockRide:
	say "     [if Player is male]After a little playful cock-fight with the equine monster cock your sex toy is sporting, you [else if Player is female]After rubbing your clit for a moment against the side of his equine monster cock, you [else]After rubbing your sexless crotch for a moment against the side of his equine monster cock, you [end if]lift yourself to be just above that towering rod. Looking down in a mixture of lust and apprehension, you take hold of his dickhead, running it up and down along your crack slowly, then press his slick cockhead against your pucker until it slips past the resistance of your ring muscle. God, he's so warm, so thick - and so good inside you! It is an incredible feeling to be spread open by another like this, and you eagerly sink deeper onto his erect flagpole, taking it into your inner depths. [if Asshole Depth of Player > 19]Incredibly, you're able to take all of the magnificent length, down to his very root! [else if Asshole Depth of Player > 10]Althogh you eventually reach the limit at just how much of this enormous shaft you can fit inside yourself, you're well-pleased that more than half the length is spreading you open! [else if Asshole Depth of Player > 5]Despite ending up a little bit disappointed in the end that you couldn't even take half of the length, you're still well-satisfied by the way he is spreading you open! [else]Being able to take just the head, and just an inch or two beyond, you still feel more than pleased with yourself to even get this far, stretched open by a literal horse cock! [end if]For a long moment, you pause like this, getting used to having the horseman's prick as deep as it will go inside you. Looking down at Hercules face, you smile as you see the moaning expression you put on it, telling yourself that if he could talk, could moan, he'd be very appreciative of you mounting him like this.";
	say "     A moment later, you start to rock back and forth, sliding up on the huge cock, then taking it nice and deep once again, stimulating your inner walls oh so very nicely. It is immensely pleasurable, a lot more than any mere dildo could be, with his perfectly life-like erection giving you fullness and inner warmth. Part of you loves the fact that he's leaking pre-cum into your asshole right this second, and you look forward to being filled with Hercules's cum in short order too. You ride the large hunk of a stallion for some time, pacing yourself so this sexual adventure isn't over too quickly, so in between periods of bouncing up and down on his prick, there always are periods of his resting with his cock inside you, or even standing over him in anticipation of impaling yourself once more. During one of those latter moments, you also decide that you want more than just his dick, leaning down to take one hand of the large man, then the other, and placing them on the sides of your hips.";
	WaitLineBreak;
	say "     Bending Hercules's fingers into place to grip your sides, you experiment a little and soon find the right way to position the hands so you barely have to hold onto them even as you rock up and down on his shaft. It almost feels as if the strong workhorse is holding onto you, pulling down to impale you on his cock! It is very satisfying to be totally in control and be able to make things last as long as you want. Well, almost, that is - as your relentless acts of fucking yourself on Hercules push his body further and further towards its own orgasm. With the equine making no noises on his own, and not even breathing, it comes as a bit of a surprise to you when the Hercules suddenly starts to cum, his large horsecock twitching up and throbbing HARD as it erupts into your gripping asshole, a first spurt of creamy cum filling you from one second to the next. Then another, and another. Your own arousal flares brightly as you start to be filled with a true deluge of equine seed, and your hands shoot to your crotch so you can get yourself off and join Hercules in orgasm.";
	say "     [if Player is male]Fingers wrapping around your own cock, you jerk off at a frantic pace and push yourself over the edge in short notice, sending streaks of cum flying to splash down all over the horseman and what he's lying on. At the same time, your anal muscles spasm around the horsecock inside of your back door, squeezing Hercules and milk more cum from him. [else if Player is female]Fingers frigging your pleasure-button in relentless speed, you push yourself over the edge in short notice, with your anal muscles spasming around the horsecock inside of your back door, squeezing Hercules and milk more cum from him. [else] Fingers frigging your sexless but nevertheless quite sensitive crotch, you push yourself over the edge in short notice, with your anal muscles spasming around the horsecock inside of your back door, squeezing Hercules and milk more cum from him. [end if]You stay on top of him as long as your legs can bear the strain of holding still like this, taking in the only slowly ebbing spurts of seed as it keeps erupting from the anthro's cock, but at some point, you can't suppress the need to stretch your legs a little. Pushing yourself to standing position, you slide off the towering erection with a wet slurp, as some of the copious amounts of cum starts to gush out of you, now it's no longer held in by a flared equine cock.";
	WaitLineBreak;
	say "     With a thud, Hercules's cock falls onto his rock-hard abs, still spurting more equine seed and giving his chest a messy coating of cum. As much fun as this was, you can't help but sink down next to the hunk of a sex toy you just enjoyed, panting loudly to catch your breath and recover a little. Blissfully exhausted and filled to the brim with cum, you look over to the mannequin and see his moan-like expression, putting a smile on your face. Patting his protruding right pec, you playfully tell him he did a good job, then let out a long breath before pushing yourself up to stand once more. You let your gaze wander over him and revel in what you've done a little longer, before relenting and going to get some tissues - well, a lot of tissues - and starting to clean yourself and Hercules properly. Always a good idea to put your toys away properly, so they're not all icky when you want to use them next...";
	NPCSexAftermath Player receives "AssFuck" from Hercules;

Hercules ends here.
