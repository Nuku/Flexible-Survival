Version 1 of Latex Husky Statue by Shiru begins here.
[Version 1 - Shipping Container follow-up event and subsequent Bad Ending added]
"Adds an event to transform the player into a Latex Quad Husky after a statue transformation and opens up a follow-up Bad End."


Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Container Follow Up	"Container Follow Up"

Container Follow Up is a situation.
ResolveFunction of Container Follow Up is "[ResolveEvent Container Follow Up]".
The level of Container Follow Up is 2.
Prereq1 of Container Follow Up is Shipping Container.
The Prereq1Resolution of Container Follow Up is { 1 }.
Sarea of Container Follow Up is "Outside".

when play begins:
	add Container Follow Up to BadSpots of FurryList;
	add Container Follow Up to BadSpots of FeralList;

to say ResolveEvent Container Follow Up:
	if Resolution of Container Follow Up is 0: [First time statue TF]
		say "     As you explore the ruined landscape, you come across a sight familiar to you. A knocked-over semi truck and its loose shipping container were strewn across the road, still in the same place you last saw them. You remember this as the site you were sent sprawling by those boxes full of little husky figurines after cracking open the container yourself, and you could still vividly remember the transformation that took place quickly after... the feeling of warm latex goo clinging to your form and exploring your orifices, taking you over and turning you into one of them. Albeit, one that was quite a lot larger...";
		say "     There are a lot less boxes strewn around the truck now, a fair amount having been taken or moved, and those that are left are tattered, covering the dirty street with squished bits of cardboard and tossed-around figurines. You were about to move on and explore elsewhere, but something caught your eye at the last second... what with the container being a lot less full now, you could see that there was something strapped to the bottom of it! It was some kind of large, thin rectangular box, about twice the width of a typical person and quite a lot longer. Having been totally concealed underneath all of the tacky merchandise before, it made sense that you hadn't seen it... but now you were curious. Clearing the rest of the boxes out of the way, you undo the straps that hold the box securely down and give it a firm tug, pulling the heavy package slowly out of the container and down onto the ground below. Hastening to see what was inside, you rip open the cardboard covering the thing to find... some kind of stand? That was it?";
		say "     It seemed to be nothing more than some sort of latex rectangle, about a foot thick and seemingly made entirely out of supple, squishable rubber... so much for a usable haul! You feel frustrated at how much time you wasted lugging that thing free of the container for no gain, what with how heavy it was... still, looking over the thing - something in the back of your mind was compelling you to stand on top of the latex. Maybe it was just to feel how squishy it was underneath your feet, or maybe it was just for fun, or out of frustration at how useless this big thing was... you couldn't quite tell.";
		say "     [bold type]Step onto the latex stand?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			if MaleList is banned and FemaleList is banned:
				say "     You step on the pedestal, but nothing happens. You remember there being a note written on next page of the shipping manifest stating: [']Contents locked by simultaneous use of both guy and girl flags.['] Maybe some other time.";
				now Resolution of Container Follow Up is 98; [banned]
			else:
				say "     Following the nagging feeling in the back of your head, you step up onto the latex and look down at it. Nothing seems to be happening... why did you think anything would come of this? You were just about to step backwards and down off of the stand in order to resume your travels, but... you found that you couldn't! You pull your legs upward, tugging with increasing strength as you try to get free of this strange rubbery pedestal, but... after just a few seconds, your feet seem stuck fast where they were! The only solution you can think of is to try and pull even harder... but after readying yourself and attempting to lurch upward with all of your strength, you only succeed in throwing yourself off balance! Wobbling forwards, you counter the momentum with a thrust of your body backward, and then have to do the same forwards... but that last one was too much, and you found yourself falling face first forwards towards the sticky stand! Reacting quickly, you throw your arms forwards to catch yourself... realizing a second or two too late what that would mean for you.";
				say "     While you had avoided your body and face from colliding with the strange sticky stuff, your hands were now stuck firmly to the front of the pedestal, holding you down on all fours. You were panicking pretty hard, what with having no usage of any of your main limbs anymore, but just as you were thinking of calling out for help... the surface of the stand beneath your hands and feet seemed to shift and soften up, causing you to look down - and notice that familiar, shiny latex-y goo creeping up your limbs much like the first time you were here!";
				WaitLineBreak;
				if BodyName of Player is listed in infections of CanineList:
					say "     The latex is warm and thick, coating your paws all over and thickening them up until they're properly mascot-worthy! It was a nice shiny white, and it thickened out your legs with a sizable layer of goopy rubber as it climbed up your body. Reaching your underbelly, it began completely coating it in that lovely warm goo... the feeling alone made you want to stop struggling so much and just let it cover you! It didn't seem to be changing you much, instead forming more of a layer over the top of you and seeping into your fur. Your mouth gently hung open and your tongue lolled out as the creeping rubber pressed against your rear, beginning to slowly flow into you and stretch your hole wide[if Cock Count of Player > 1]. As it spread over your groin, it pinned your growing shafts up against your belly and coated them in a nullifying bulge, leaving you needy and whimpering at the fact you couldn't touch yourself or get off despite how good it felt... that was, if you'd even be able to touch yourself at all[else if Cock Count of Player is 1]. As it spread over your groin, it pinned your growing shaft up against your belly and coated it in a nullifying bulge, leaving you needy and whimpering at the fact you couldn't touch yourself or get off despite how good it felt... that was, if you'd even be able to touch yourself at all[end if][if Cunt Count of Player > 1]. The goop then flows into your cunts, filling them full to bursting before sealing over the openings in a smooth, featureless layer of latex[else if Cunt Count of Player is 1]. The goop then flows into your cunt, filling it full to bursting before sealing over the opening in a smooth, featureless layer of latex[end if].";
					say "     Coating your tail, the latex made sure it looked nice and husky-like, ballooning it out into an adorably thick latex limb, slightly springy at first before curling up and around into a very cute pose! Due to not having to change your physical form much, it didn't take long for the gooey rubber to spread over the rest of your body, coating your outer fur in a shiny black layer of goop, before eventually reaching your neck and seeping its way up there. As it began to coat your muzzle, you couldn't help but grin wider, panting and whining at the desperate need to get off you felt... it was almost torturous, how much you wanted to cum already, but you were completely unable to! Still... you couldn't help but keep your mouth open and your tongue hanging out, in a pose that felt so natural to you... you could almost let your face stay that way, even without the feeling of the latex coating you beginning to harden.";
				else:
					say "     It's warm and thick, coating every inch of your lower limbs with shiny rubber that quickly turns white, and beginning to reshape your hands and feet into huge, cartoon-ish husky paws. Your toes round out and shape your four new paws into cute, mascot-worthy mitts while the rest of the goo climbs up your legs and arms, completely engulfing them and thickening them into nice, solid husky legs that would take the weight of your body for as long as needed... and seeing as you suspected you were being transformed into some kind of statue to show off the little figurines, that could be a very long time indeed! Clearly, this stand hadn't gotten the memo that there weren't any shop windows around to display you in anymore...";
					say "     You continued grunting and trying to pull your legs free, but you were realizing it was likely too late now... and your thoughts shifted to praying that this wasn't permanent! The latex on the inside of your limbs stayed with that nice white coloration as it reached the top of your legs and met with your underbelly, beginning to spread across the front of your torso as well as your groin… while the rubber on the outside of your form changed to a dark, shiny black, reflecting all of the buildings surrounding you on its polished surface. Seeping over your thighs and shoulders, you began to pant at the feeling of the gooey latex changing you, engulfing you completely... it felt incredible, despite the fact it was also immobilizing you! Your mouth gently hung open and your tongue lolled out as the creeping rubber pressed against your rear, beginning to slowly flow into you and stretch your hole wide[if Cock Count of Player > 1]. As it spread over your groin, it pinned your growing shafts up against your belly and coated them in a nullifying bulge, leaving you needy and whimpering at the fact you couldn't touch yourself or get off despite how good it felt... that was, if you'd even be able to touch yourself at all[else if Cock Count of Player is 1]. As it spread over your groin, it pinned your growing shaft up against your belly and coated it in a nullifying bulge, leaving you needy and whimpering at the fact you couldn't touch yourself or get off despite how good it felt... that was, if you'd even be able to touch yourself at all[end if][if Cunt Count of Player > 1]. The goop then flows into your cunts, filling them full to bursting before sealing over the openings in a smooth, featureless layer of latex[else if Cunt Count of Player is 1]. The goop then flows into your cunt, filling it full to bursting before sealing over the opening in a smooth, featureless layer of latex[end if].";
					say "     Your body was almost entirely covered now, leaving only your face exposed to the air still as you groaned and panted in pleasure. You felt your new husky ears perk up, small and pointed and looking very adorable and pettable! As you whined and panted at the feeling of what was essentially a fat latex tentacle pushing deep into you, filling your guts... you couldn't help but smile, your mouth now a wide open grin with your tongue out as your new muzzle pushes forward, stretching your joy even wider and heightening your pleasure by coating your face completely. A cute little button nose pressed out at the end of your muzzle, and, seeing as your mind was now full of nothing but cute latex-husky thoughts, you couldn't help but keep your mouth wide open! Panting and holding that smile as your husky tail springs up in a cute little curl, you can feel the rubber surrounding your form beginning to firm up and harden slightly as your tail finishes bouncing up and down, finding its place above your rear before slowly solidifying in place.";
				WaitLineBreak;
				say "     In fact, the latex all over you was starting to harden slowly, and your squirms and wriggles became less and less noticeable as you began to freeze up! You wanted to continue squirming, or thrusting uselessly at the air between your legs, but that was starting to become impossible... not only were your feet stuck firmly in place, but the thick layer all over you seemed to be acting like some quick-drying cement! You felt your limbs stiffen, and your tail freeze exactly where it was. Every movement you tried to make felt like wading through quicksand, and even that feeling only lasted a few short moments... soon enough, you could barely squirm or wiggle your body entirely! You couldn't close your mouth anymore, but a nagging in the back of your mind told you that would be wrong anyway... you needed to look happy! So you held your adorable looking grin, right up until the moment you fully froze in place... your movements completely stopping, and your body entirely still.";
				say "     You could still see, and you could still think... but those thoughts were becoming harder and harder to form as you lost yourself in your new form. The tentacle of latex flowing through your systems was still gooey, slowly shifting around and keeping you constantly on the edge of orgasm... a release that would never come, trapped in a cute little bulge as your groin was. You wanted to groan and pant some more, but your vocal chords felt like they were equally paralyzed, unable to utter a single sound. Despite your initial struggles, you couldn't help but love this new form, this pose you had to keep... and as the minutes turned slowly to hours, you began to think less and less and lose yourself more to the pleasure of being a simple latex husky statue, staring off into the distance as you silently whimpered in pleasure...";
				WaitLineBreak;
				WaitLineBreak;
				say "     ... You wake up several hours later, finding yourself lying on your side and coming back to your senses as you slowly shake the paralysis from your limbs. They were heavy, but you could move them again at least... the stand must have released you after a while - or perhaps someone knocked you off of it? Either way, you couldn't help but feel a little relieved that it wasn't permanent. Though, you'd have to get used to walking on all fours... you'd still retained your latex husky look, after all! Getting to your feet, you ease your legs back into walking once more, the stiffness taking a few minutes to subside.";
				WaitLineBreak;
				let monf be 1;
				let monm be 1;
				if FemaleList is not banned:		[Adjust Female Husky]
					[puts Female Husky as lead monster for infection and impregnation]
					repeat with y running from 1 to number of filled rows in Table of Random Critters:
						choose row y in Table of Random Critters;
						if Name entry is "Husky Bitch":
							now MonsterID is y;
							break;
					now Nipple Count entry is 6;
					now Breast Size entry is 3;
					now Cunt Depth entry is 12;
					now Cunt Tightness entry is 6;
					now monf is MonsterID;
				if MaleList is not banned:		[Adjust Alpha Husky]
					[puts Alpha Husky as lead monster for infection and impregnation]
					repeat with y running from 1 to number of filled rows in Table of Random Critters:
						choose row y in Table of Random Critters;
						if Name entry is "Husky Alpha":
							now MonsterID is y;
							break;
					now Cock Length entry is 12;
					now Ball Size entry is 3;
					now Nipple Count entry is 6;
					now Breast Size entry is 3;
					now Cunt Depth entry is 12;
					now Cunt Tightness entry is 6;
					now libido entry is 90;
					now monm is MonsterID;
				if ( "Female Preferred" is listed in feats of Player and FemaleList is not banned ) or MaleList is banned:
					choose row monf from Table of Random Critters;
					setmonster "Husky Bitch" silently;
					turn the Player into a "Husky Bitch";
					if hellHoundLevel is 0:
						follow the sex change rule;
						follow the sex change rule;
						follow the sex change rule;
				else:
					choose row monm from Table of Random Critters;
					setmonster "Husky Alpha" silently;
					turn the Player into a "Husky Alpha";
					if hellHoundLevel is 0:
						follow the sex change rule;
						follow the sex change rule;
						follow the sex change rule;
				now Resolution of Container Follow Up is 1; [Initial statue TF stage]
		else:
			say "     You decide that now isn't the time to be doing silly things like taking our your annoyance on slabs of rubber.";
			now Resolution of Container Follow Up is 99; [disinterest]
	else if Resolution of Container Follow Up is 1: [Second time, leading to bad ending]
		say "     Exploring the dirty streets, you come across a familiar sight once more... an overturned truck, a fallen container... and a solitary latex pedestal, still exactly where you left it last time. Seemingly, it hadn't been touched or moved, and still looked as shiny as ever. Memories of what happened last time came back to you, of your stiffening transformation into a latex-husky statue after you stood on top of it... you were fortunate that you managed to get out of that last time! It [italic type]had[roman type] felt really good, and a large part of you wanted to step back onto that stand for another go, but... you had a feeling that you might not be so [']lucky['] this time, if you chose to go through with this.";
		say "     [bold type]Step onto the latex stand once more?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			if MaleList is banned and FemaleList is banned:
				say "     You step on the pedestal, but nothing happens. You remember there being a note written on next page of the shipping manifest stating: [']Contents locked by simultaneous use of both guy and girl flags.['] Maybe some other time.";
				now Resolution of Container Follow Up is 98; [banned]
			else:
				say "     Your desire was too great, and the husky thoughts surfacing at the back of your head too loud. As if guided by instinct, you found yourself slowly approaching the thick rubber rectangle, dropping your belongings at the side of the road as you stepped closer to your awaiting fate. Perhaps by your now familiar husky instincts, you drop down to all fours, your limbs trembling gently as you tentatively approach the stand. You lifted up one of your hands, holding it in the air in hesitation, right above the mat... but you just couldn't help yourself. Putting it down, you relished the familiar squishy feel of that soft latex underneath your soon-to-be husky paws. You quickly shuffled forward, pushing both of your arms to the far side of the mat and stepping your back legs up onto the stand before they began hardening... and it wasn't long before your nervous willingness was rewarded. The supple rubber beneath you began to feel soft once again... even more so than last time, squishing down under your weight as your hands and feet sank into the latex ever so slightly!";
				WaitLineBreak;
				say "     As if right on cue, that familiar warm latex-y goo you loved so much began slowly seeping upward once more... coating your hands and feet, it seemed to be making them even thicker this time! You found them balled up into fat, cartoon-y dog paws, made out of gleaming white latex... except this time, it felt as if you couldn't tell where the latex ended and your body started. You found yourself already moaning as the goo climbed up your limbs, coating them in a ludicrously thick layer of goop... and by how your new paws were practically molded to the stand beneath you, you weren't sure if you were getting out of this one! However, you found yourself unable to really care that much... all that was running through your mind was thoughts of how wonderful you'd look as an adorable squeaky husky statue again, and below it all... an anxious need to be stuffed completely full of that fat goopy tentacle once again. You bit your lip in trepidation as you awaited that familiar feeling on your rear... and as if feeling your desire, the goo shifted around to coat the back of your legs and creep upwards to your ass! The instant the latex touched your waiting hole, you felt your mouth hanging open and a low moan escaping your maw. It wasn't long before you ended up with your teeth gritted, however, as the rubber pushed into you with such thickness it would have made your back legs collapse under the sudden pressure and pleasure... that was, if the rubber coating them wasn't holding you up!";
				WaitLineBreak;
				say "     [if Cock Count of Player > 0]Luckily for you... the pleasure from such a filling was so great, you found yourself already shooting ropes over the squeaky black stand beneath you. Your eyes rolled up slightly as you moaned, humping the air in front of you as you emptied your balls... and just in time, too, as just a moment later the gooey rubber was seeping over your groin and beginning to pack it away tightly into an even thicker null-bulge this time[end if][if Cock Count of Player > 1]. Whether by choice or not, you found your shafts shrinking as they were bundled up inside impossibly thick goo, slowly solidifying into that squeaky package that felt so teasingly good between your legs[else if Cock Count of Player is 1]. Whether by choice or not, you found your shaft shrinking as it was bundled up inside impossibly thick goo, slowly solidifying into that squeaky package that felt so teasingly good between your legs[end if].[if Cunt Count of Player > 1] You were already dripping from your cunts due to how amazing the feeling was... at least, until the rubber seeped up inside them, packing them full before sealing them off under a smooth layer of shiny white latex.[else if Cunt Count of PLayer is 1] You were already dripping from your cunt due to how amazing the feeling was... at least, until the rubber seeped up inside it, packing it full before sealing it off under a smooth layer of shiny white latex.[end if] After all, if you were to be displayed in a shop window as a pretty advertisement for all the figurines customers could buy within... you had to be decent and covered up! Your tail perked up and curled up into that familiar spiral-like position, as if happy and mid-wag, and you held it still like that... it hadn't started hardening yet, but you had to be ready and in position!";
				WaitLineBreak;
				say "     The rest of your torso was slowly coated in black and white goop, and every seeping moment of it felt like such an agonizing wait, yet so pleasurable at the same time. You were so desperate to be as you were meant to be, but... it was an experience like no other, and one you had to savor! After all, it would be the last time you'd be moving about… Eventually, the rubber reached your neck and slowly flowed upwards, coating the underside of it in shiny white, and the outer side in gleaming black. Your ears were ready to be perked up and pointed like before, and you took your last long look at the ruined city streets around you... before closing your eyes. This time, your mouth was closed... you wouldn't need it, after all.";
				WaitLineBreak;
				say "     The latex flowed over your face, coating it entirely and beginning to take on a nice, smooth appearance as it completely dulled all of your features - they were unneeded for a simple statue, after all. As it seeped over your eyes, the goo shifted colors to form a pair of cartoonish, wide open husky eyes, printed onto your [']face['] as if painted. As you smile beneath the thick layer of goo that deprives you of all senses, it copies you, slowly recolouring to form a nice, big perma-grin... shiny, pearly white teeth gleaming enticingly to show all of the potential customers how happy you were! It was the perfect look for a cute window mascot, after all... and it wasn't as if you'd need any of those facial features anyway, since you truly were nothing more than a statue now. Beneath the muffling layer of your new exterior, you let out one last moan of joy as the sludge within you continued shifting and pulsing away, eternally keeping you teased on the edge of a release that will never again come.";
				WaitLineBreak;
				say "     And finally... there was nothing but silence in the street, as you entirely ceased movement, becoming nothing more than an adorably happy looking latex husky statue.";
				WaitLineBreak;
				let monf be 1;
				let monm be 1;
				if FemaleList is not banned:		[Adjust Female Husky]
					[puts Female Husky as lead monster for infection and impregnation]
					repeat with y running from 1 to number of filled rows in Table of Random Critters:
						choose row y in Table of Random Critters;
						if Name entry is "Husky Bitch":
							now MonsterID is y;
							break;
					now Nipple Count entry is 6;
					now Breast Size entry is 3;
					now Cunt Depth entry is 12;
					now Cunt Tightness entry is 6;
					now monf is MonsterID;
				if MaleList is not banned:		[Adjust Alpha Husky]
					[puts Alpha Husky as lead monster for infection and impregnation]
					repeat with y running from 1 to number of filled rows in Table of Random Critters:
						choose row y in Table of Random Critters;
						if Name entry is "Husky Alpha":
							now MonsterID is y;
							break;
					now Cock Length entry is 12;
					now Ball Size entry is 3;
					now Nipple Count entry is 6;
					now Breast Size entry is 3;
					now Cunt Depth entry is 12;
					now Cunt Tightness entry is 6;
					now libido entry is 90;
					now monm is MonsterID;
				if ( "Female Preferred" is listed in feats of Player and FemaleList is not banned ) or MaleList is banned:
					choose row monf from Table of Random Critters;
					setmonster "Husky Bitch" silently;
					turn the Player into a "Husky Bitch";
					if hellHoundLevel is 0:
						follow the sex change rule;
						follow the sex change rule;
						follow the sex change rule;
				else:
					choose row monm from Table of Random Critters;
					setmonster "Husky Alpha" silently;
					turn the Player into a "Husky Alpha";
					if hellHoundLevel is 0:
						follow the sex change rule;
						follow the sex change rule;
						follow the sex change rule;
				now humanity of Player is 0;
				trigger ending "Latex Husky Statue";
				end the story saying "You are transformed into a simple, squeaky husky statue, a new mascot for all of the merchandise you now represent.";
		else:
			say "     Following your better judgment, you decide against stepping onto the pedestal again. Who knows what could have happened?";
			now Resolution of Container Follow Up is 99; [disinterest]


Section 2 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Latex Husky Statue"	"BadEnd"	""	Latex Husky Statue rule	20	false

This is the Latex Husky Statue rule:
	if ending "Latex Husky Statue" is triggered:
		say "     ... Eventually found by a rescue team as they wandered the streets, the army pay no mind to you as they looked for survivors amidst the ruined buildings and crashed vehicles. However, as there was nobody to be found in the area... they eventually decide to haul back any supplies they could, and that included you and all your merchandise! While one soldier looks through the manifest for the shipping container and what used to be the driver's clothes, another couple of them toss a few unopened boxes of figurines into the back of a car and lifted you up alongside them. Your grin almost felt wider than ever, knowing you might be taken to fulfill your true purpose in life... and after a thorough check through all of their inventory, you end up getting given away to a new shopkeep intending to set up a toy store with all of the rescued figurines!";
		say "     You feel pride swelling in your squeaky chest as you're finally placed behind the window of a new toy shop to be opened soon, your big shining smile wordlessly greeting anyone that happened to pass by while your new [']owner['] sorted through some unrelated toys, and all of the husky figurines... the ones of you! The sludge still within you continued teasing you and testing your limits, as if daring you to stop smiling and open your mouth to moan... but such a thing was never to be. Whether or not you were still in there, or just part of the thick latex making up the shiny statue, no one could say... but whatever form you were in, you could think of nothing more pleasurable than standing there for the rest of eternity, spreading your joy and selling your merchandise to happy customers like the good husky statue you were, and always would be...";
		the Player is gone;



Latex Husky Statue ends here.
