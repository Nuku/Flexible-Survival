Dalmatian by Kaleem mcintyre begins here.

Section 1 - Monster Responses

when play begins:
[These flags indicate which monster groups your creature belongs to, should someone want to remove any given type.]
[Delete the lines with unneeded flags and replace 'Dalmatian' with your creature's name entry. Case sensitive.]
	add { "Dalmatian" } to infections of guy;
	add { "Dalmatian" } to infections of furry;

[Sample loss and victory text Dalmatians.]
[Numerous other variations can be found in existing creature files.]
[Change the 'Dalmatian' in their names here and below to something appropriate to your creature.]

to say losetoDalmatian:
	say "";
	if player is male:
		say " ";
	else:
		say "";

to say beattheDalmatian:
	say "     You were victorious over the creature.";
	if libido of player > 40:
		say "";
		if the player consents:
			say "";
			if player is female:
				say "";
			else:
				say "";
		else:
			say "";


to say Dalmatiandesc:
	say "";
	say "";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Dalmatian"; [ Infection/Creature name. Capitalized. ]
	now attack entry is "[one of]The Dalmatian attacks you in some abstract manner![or]The Dalmatian leaves you greater understanding, thereby lowering your resistance to it![or]The Dalmatian batters you with examples![or]The Dalmatian firmly makes its point![at random]"; [ Successful attack message ]
	now defeated entry is "[beattheDalmatian]"; [ Text when monster loses. Change 'Dalmatian' as above. ]
	now victory entry is "[losetoDalmatian]"; [ Text when monster wins. Change 'Dalmatian' as above. ]
	now desc entry is "[Dalmatiandesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "covered with black spots while long floppy ears hang down the side of your regal-looking head. Your impressive jowls come with a fat red tongue, while the eyes with which you see the world in newfound sharpness are hazel in color. A black button-nose at the end of your long muzzle completes the image of an anthro Dalmatian's head.";
	now body entry is "lean and limber with hidden muscles as your canine body hides what strength you have[if player is dalskinned] underneath the pale wisps of black spotted fur covering your body[end if]. All across your arms, legs, thighs, chest, and torso you have almost unseen muscles cropped along your wiry body as your cano-mutant form is now more suited for maximizing your newfound dexterity with extreme running, jumping, bounding and leaping rather than fighting with what strength you do possess, what with you now possessing digitigrade feet instead of the normal plantigrade ones that other mutants boast";
	now skin entry is "short, but thick fur covered with black rosettes dotted all across your";
	now tail entry is "A thin, almost wiry white tail sways from out of the end of your bubble-shaped rump.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "your nose begins to push out from your face while your senses dull ever so slightly. Reaching up with a hand you have the strangest urge to scratch at your ears, which just so happen to be growing longer and floppier onside of your head, at the exact same moment your teeth are elongating into sharpened points. With your tongue stretching free from out of your mouth, giving you a perfect dog tongue, you can only whimper and whine as you feel new canine instincts overcoming your senses";
	now body change entry is "your entire form starts to increase in length. If that wasn't odd enough when the muscles you have along your chest, arms, legs and torso quickly go to receding back into your body you feel yourself almost wanting to curl up and shiver into a tight knit ball as your body pumps all of your strength into your thickening bones, giving them extra added density needed for holding up your escalating form. You actually have to stop yourself from jumping around like mad as your heels stretch up to give you a twin pair of digitigrade feet as the raw urge to [']go play['] takes you over down to your core";
	now skin change entry is "white fur pushes free from out of your pores. The new growth quickly works to cover your entire body. However, the most peculiar thing to happen next is the appearance of large black spots dotting themselves across your body in no particular pattern you can figure out";
	now ass change entry is "your butt cheeks spreads outwards, forming two perfectly bubbles just made for gripping, while your spine arches downwards with the extending expansion of your incoming tail";
	now cock change entry is "the mass of flesh between your [bodyname of player] legs twists and then shivers before pushing up from your body. When your maleness begins to quickly narrow at the tip you find yourself smiling as you think about how you're about to have a perfect dog's cock in the next few seconds. As a thick knot swells into being at the end of your shaft, forming a perfect bulge made for locking you into whatever partner you choose to be intimate with, you let out a moan of pleasure as you think about how good that's going to feel buried into someone";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 22; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 22;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 66; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "None"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lean[or]wiry[or]dexterous[or]limber[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Definition: a person is dalskinned:
	if skinname of player is "Dalmatian", yes;
	no;


when play ends:
	if bodyname of player is "Dalmatian":
		if humanity of player < 10:
			say "Giving yourself over to the Dalmatian infection taking over your body and mind you wander aimlessly about the city until you find yourself stumbling over a slightly familiar looking white and black spotted four legged canine. When the other gets a hold of your scent the Dalmatian immediately senses something wrong as it turns to look you over. Slowly padding its way over to try and administer comfort onto you, you find yourself whimpering back at the other as the need to rut as well as play overtakes your sensibilities. At the touch of the Dalmatian's cold nose touches your legs you kneel down next to the other Dal and then nuzzle the other four legged canine in turn before whining at it in confusion. Quickly as can be the feral creature barks into your face and then grabs you by your arm with its sharpened teeth to drag you off somewhere.";
			say "Not having a reason to fight you simply let the other take you to wherever it's trying to get to. When you ultimately find yourself coming to a red brick edifice, which [italic type]really[roman type] looks familiar to you, you bark happily as you think that you've finally found the place where you belong. This fact is made even more certain when your new friend releases your arm and then goes over to bark and scratch at the front door to the building. Upon getting a response from someone from the inside you find yourself panting in joy as your bright eyes look over the form of a tall white and black spotted canine, this one standing on two legs instead of all fours, whom your confused canine mind screams at you that you should know intimately. Hurriedly you go over to tackle the other and then proceed to show them in rampant licks across the face.";
			say "You definitely know now that this is where you belong now.";
		else:
			say "When the military rolls around to try and finally clean up the place you find yourself somewhat displeased to be taken by them and then led to one of their campsites along with several other mutants at gun point. However, before you can go to grip about the indignity of your situation a scream coming out of one of the soldier's walkie-talkies about [italic type]fire[roman type] and [italic type]casualties[roman type] has you snatching the handheld device off of said soldier's hips and then barking into it about location. The soldier you just stole the walkie-talkie from doesn't try to retrieve his communication device as you are swiftly hauling tail out of the sheltered area to go see what you can do to help.";
			say "What you see when you arrive is a somewhat high-class hotel on glistening with crimson flames from out of its windows along with several mutants all trying to run out at the same time with various items in their hands. Finding the person who had been squawking to you over the radio, quite literally in fact, you find yourself walking over to a large Pelican wearing a two-piece suit looking over the burning building with a quiet glare in his beady eyes. Asking the other about how many people are left in the complex you get your answer from a chimpanzee mutant instead of the bird. The simian creature nervously informs you that most of the people on the upper floors are outside now, but there might still be others on the lower floors. Not wasting a second to go over options you simply charge into the building and then begin sniffing around for any civilians who might have been left behind.";
			if firefighter coat is owned:
				say "A faint ringing in your mind has you pulling out the firefighting coat Kenaz had given you and then tossing the heavy jacket over your furry white form.";
				say "Ten minutes of searching leads you to finding several older people in the basement, two teenagers hiding in the back rooms of suite 108, and a single shy cougar female almost scared to death from the flames licking at the area surrounding her inside of room 309. Using your dexterity and strength to herd the others out of the building, your sense of smell being invaluable to help you to find the safest routes back out after some of the building's roof collapses in on your previous pathway, as well as your basic knowledge of fire safety, you manage to get everyone out of the building just as the local firefighting department is speeding its way down the side of the street.";
				LineBreak;
				say "Working with the other Dalmatians of fire station 86 you and the rest of the team hook up hoses and then spray down the burning building with as much water as you can in order to make the laughing flames receded back into the edifice. All of you are silently thankful that the water to the city is now working again, though no one makes a comment on this as you are all busy working to get the thrashing flames battling against you under some kind of control.[if waterworks is 1] You don't spend time gloating about how you were the one who fought to get the water to the city back on as you literally have bigger fish to fry at the moment.[end if]";
				say "[if kto is 2]Humorously you find yourself chuckling into the back of your heads as you watch how Kenaz literally takes command of the situation as he barks out orders. You do the other Dalmatian proud by standing your ground and helping them finish up spraying down the building until at last, some thirty minutes later, the fire has finally died out[else]Watching as Othala and Kenaz work together to try and control this situation you chuckle mirthfully as you notice how all of the other Dalmatians follow the leadership of the former female without question. Othala wastes no time as she barks out orders amongst the pack while having Kenaz stand beside you to help shoulder some of the burden of having you hold onto the gushing hose in between your padded hands. The other male says nothing to you as you and he work together to put out the fire, however, you don't fail to notice the twinkle of pride shining in Kenaz's green orbs as he glances at you when he thinks you're not looking[end if]. Once the hungry flames of the fire have been completely drowned out the Dalmatians quickly turn to those around you, asking everyone the standard questions that go along with having survived an ordeal like this and giving medical aid to those that they can while waiting for the ambulance to get there.";
				LineBreak;
				if kto is 2:
					say "When several white trucks pull up you find yourself sighing in relief... that is, right before you turn to notice a very angry Dalmatian looking down at you. Kenaz seems both pissed and elated that you've survived this trail, even more so at the fact that you actually managed to help out with your unrefined skills and instinctual talents. The herm makes no bones about telling you off though, and you actually pull back some as you try to whether the storm of the other's wrath. However, once the eight foot Dalmatian has calmed down he tiredly reaches around you to take you into his arms before hugging you tight. No words need be spoken between either of you as you both understand what the other is thinking. Ironically the military shows up to help, late as usual, some minutes later to lead you and everyone else back to one of their campsites.";
					say "When you return with the armed forces back to their military camp to get checked over properly this time, you managing to drag the other Dals with you through some smooth jive talk, there's a lot of noise about you becoming a firefighter professionally after everything is said and done. However, you barely pay this any mind as you simply want to just be with Kenaz right now. The larger Dal is all too happy to comply with your desires, especially once the both of you get some alone time together at the behest of one of the scientist involved with checking you and Kenaz over. The howls you and your lover make are still talked about amongst the soldiers in the military to this day as many of them found themselves remembering the way a certain rickety cot inside of the tent you and Kenaz had been housed in literally squeaked and rocked a full night long.";
				else:
					say "Othala seems more pissed at you than Kenaz as the former female Dal barks into your face as he tells you about how stupid you were. Of course just as soon as his anger has calmed down Othala is quick to congratulate you on doing such a fine job, what with your unrefined skills and all. You're not sure whether to be proud of yourself or ashamed as the growls from the former female Dalmatian have actually made the hairs on your body stand up on end. However, when Kenaz comes over to take you into his arms you find yourself melting as the other Dal kisses and licks you across the slightly burnt fur of your muzzle you find yourself blushing and then smiling tiredly up at the other as he goes about showering you in affection.";
					say "When the military comes along to check over you, you find yourself, along with the rest of the pack, being taken in for inspection, much to everyone's annoyance. Being the [']hero['] of the hour does net you some perks though as when you and Kenaz finish being tested over by some of the weird procedures the doctors here have dreamed up for mutates of your species, the anal probing with thermometer is something you're still wondering about to this day, you find yourself being allowed some private time alone with Kenaz. No one present needed to guess what would happen next once the single flap to the tent you and your companion had been left in flipped to a close. And yet, the sounds of your [italic type]enjoyment[roman type] at being reunited with the Dalmatian makes for some interesting gossip amongst the both military and the pack of firefighting Dals days later. However, by that time you're biggest concern has shifted from whether or not you and Kenaz were an item to whether or not you should become a full-fledged firefighter and stay with the others or not.";
					say "The offer is very tempting, considering that Kenaz and the others have decided to all buy a large condo together to make into their new den. However, you have a lot to think over first...";
			else:
				say "Ten minutes of searching leads you to finding several older people in the basement, two teenagers hiding in the back rooms of suite 108, and a single shy cougar female almost scared to death from the flames licking at the area surrounding her inside of room 309. Using your dexterity and strength to herd the others out of the building, your sense of smell being invaluable to help you to find the safest routes back out after some of the building's roof collapses in on your previous pathway, as well as your basic knowledge of fire safety, you manage to get everyone out of the building just as the local firefighting department is speeding its way down the side of the street.";
				say "Working with the other Dalmatians of fire station 86 you and the rest of the team hook up hoses and then spray down the burning building with as much water as you can in order to make the laughing flames receded back into the edifice. All of you are silently thankful that the water to the city is now working again, though no one makes a comment on this as you are all busy working to get the thrashing flames battling against you under some kind of control.[if waterworks is 1] You don't spend time gloating about how you were the one who fought to get the water to the city back on as you literally have bigger fish to fry at the moment.[end if]";
				say "[if kto is 2]Humorously you find yourself chuckling into the back of your heads as you watch how Kenaz literally takes command of the situation as he barks out orders. You do the other Dalmatian proud by standing your ground and helping them finish up spraying down the building until at last, some thirty minutes later, the fire has finally died out[else]Watching as Othala and Kenaz work together to try and control this situation you chuckle mirthfully as you notice how all of the other Dalmatians follow the leadership of the former female without question. Othala wastes no time as she barks out orders amongst the pack while having Kenaz stand beside you to help shoulder some of the burden of having you hold onto the gushing hose in between your padded hands. The other male says nothing to you as you and he work together to put out the fire, however, you don't fail to notice the twinkle of pride shining in Kenaz's green orbs as he glances at you when he thinks you're not looking[end if]. Once the hungry flames of the fire have been completely drowned out the Dalmatians quickly turn to those around you, asking everyone the standard questions that go along with having survived an ordeal like this and giving medical aid to those that they can while waiting for the ambulance to get there.";
				LineBreak;
				if kto is 2:
					say "When several white trucks pull up you find yourself sighing in relief... that is, right before you turn to notice a very angry Dalmatian looking down at you. Kenaz seems both pissed and elated that you've survived this trail, even more so at the fact that you actually managed to help out with your unrefined skills and instinctual talents. The herm makes no bones about telling you off though, and you actually pull back some as you try to whether the storm of the other's wrath. However, once the eight foot Dalmatian has calmed down he tiredly reaches around you to take you into his arms before hugging you tight. No words need be spoken between either of you as you both understand what the other is thinking. Ironically the military shows up to help, late as usual, some minutes later to lead you and everyone else back to one of their campsites.";
					say "When you return with the armed forces back to their military camp to get checked over properly this time, you managing to drag the other Dals with you through some smooth jive talk, there's a lot of noise about you becoming a firefighter professionally after everything is said and done. However, you barely pay this any mind as you simply want to just be with Kenaz right now. The larger Dal is all too happy to comply with your desires, especially once the both of you get some alone time together at the behest of one of the scientist involved with checking you and Kenaz over. The howls you and your lover make are still talked about amongst the soldiers in the military to this day as many of them found themselves remembering the way a certain rickety cot inside of the tent you and Kenaz had been housed in literally squeaked and rocked a full night long.";
				else:
					say "Othala seems more pissed at you than Kenaz as the former female Dal barks into your face as he tells you about how stupid you were. Of course just as soon as his anger has calmed down Othala is quick to congratulate you on doing such a fine job, what with your unrefined skills and all. You're not sure whether to be proud of yourself or ashamed as the growls from the former female Dalmatian have actually made the hairs on your body stand up on end. However, when Kenaz comes over to take you into his arms you find yourself melting as the other Dal kisses and licks you across the slightly burnt fur of your muzzle you find yourself blushing and then smiling tiredly up at the other as he goes about showering you in affection.";
					say "When the military comes along to check over you, you find yourself, along with the rest of the pack, being taken in for inspection, much to everyone's annoyance. Being the [']hero['] of the hour does net you some perks though as when you and Kenaz finish being tested over by some of the weird procedures the doctors here have dreamed up for mutates of your species, the anal probing with thermometer is something you're still wondering about to this day, you find yourself being allowed some private time alone with Kenaz. No one present needed to guess what would happen next once the single flap to the tent you and your companion had been left in flipped to a close. And yet, the sounds of your [italic type]enjoyment[roman type] at being reunited with the Dalmatian makes for some interesting gossip amongst the both military and the pack of firefighting Dals days later. However, by that time you're biggest concern has shifted from whether or not you and Kenaz were an item to whether or not you should become a full-fledged firefighter and stay with the others or not.";
					say "The offer is very tempting, considering that Kenaz and the others have decided to all buy a large condo together to make into their new den. However, you have a lot to think over first...";

Dalmatian ends here.
