Version 1 of Sam for FS by Stripes begins here.
[Version 1.1 - Dragontaur form]
"Adds a fellow Researcher named Sam to the Flexible Survival game"

Section 1 - Event

Another Researcher is a situation.
The sarea of Another Researcher is "Outside";
when play begins:
	add Another Researcher to badspots of furry;
	add Another Researcher to badspots of guy;
	add Another Researcher to badspots of girl;
	add Another Researcher to badspots of hermaphrodite;

Instead of resolving Another Researcher:
	say "     While passing along a narrow side street, you hear the not-uncommon sounds of rutting sex coming from somewhere nearby.  Picking up something odd about the sounds, you cut across the alley and peek out into the street.  There you find a canine finishing up in what appears to be an unchanged human male.  The guy being pounded spots you and blushes a little, motioning for you to be quiet and wait.  Expecting him to start changing soon, you prepare to back away, but even after the canine is done and gone, no infection appears.  The guy gets up slowly and starts rearranging his clothes, waving you over.  Confused but cautious, you approach him.";
	attempttowait;
	if bodyname of player is "human" and the player is pure:
		say "     'Hey there.  I didn't think I'd come across another unchanged person out here.  How are you making out?  Pretty crazy out here, huh?' he asks cheerfully";
	otherwise:
		say "     'Hey there.  When I first saw you, I thought you might be another creature waiting its turn, but then I realized you weren't quite at that point yet.  Pretty crazy out here, huh?' he asks cheerfully";
	say ".  You start to ask him what that was all about.  'Oh, I almost forgot.  That's what I get for letting you distract me.  One sec.'  He pulls out a device from his pocket and pours a sample of the canine's semen into it.  'Good.  That's another sample gathered and registered.'";
	say "     He pauses to wipe his hand before offering it to you.  'The name's Sam.  So you're probably wondering what's going on,' he says as he motions for you to come along with him, to which you nod.  'I've been sent in as a researcher to study this strange outbreak.  It's actually being caused by strange nanites.  I don't really know where they came from or really much about them at all.  Most of it is over my head, really.  I'm just paid to go around and gather samples for pick up later.'";
	if scenario is "Researcher":
		say "     You inform him that you are here as a researcher yourself, which makes him smile all the more.  'Excellent!  I was sent in with a partner, but he got a little too friendly with the locals and started dipping into the vials,' he says, making a drinking motion with his hand.  'I hope he's happy as a kitty and all, but now I'm stuck doing the work for both of us.  Not that it's all bad.  I'm starting to like playing around with those sexy beasts,' he says, rubbing his recently fucked ass.  'Oh, I hope that's not a bad sign,' he jokes.";
	otherwise:
		say "     You start asking him why he's not turning into a dog right now, but he grins.  'Immunization resistance.  The university that's paying me's got a sponsorship deal with Zephyr, so they gave me some treatment to make me resistant.  Not a hundred percent guaranteed, you know, but it's held up for now.  Let's me work on this project and gather samples,' he says, holding up a small vial disgorged from his handheld device.  'Concentrated nanites courtesy of my erstwhile lover back there.  I must say, I wouldn't have gone for that sort of thing in the past, but I'm starting to like playing around with those sexy beasts,' he says, rubbing his recently fucked ass.  'Oh, I hope that's not a bad sign,' he jokes.";
		say "     'I was sent in with a partner, but he got a little too friendly with the locals and started dipping into the vials,' he says, making a drinking motion with his hand.  'I hope he's happy as a kitty and all, but now I'm stuck doing the work for both of us.'";
	attempttowait;
	say "     Arriving at a run down home with boarded up windows, he motions you to quietly follow him around back and down through a door into the basement.  'I used to live near here.  This place has been boarded up for a few years, though the local teens knew how to get in.  Makes for a safe hiding spot to set up our temporary lab,' he says, closing the door behind you and leading you to the back of the room where a small research station's been set up.  'Now, the main reason I've asked you down here is to see if you might be willing to help me out with my work.  Since I'm a man down, I could use a hand gathering samples.  I've got a deadline to meet, but I can't run around the whole city to gather the samples and nanites by myself.  I hope you'll help me out.'";
	now hp of Sam is 1;
	increase score by 10;
	move the player to Mini-Lab;
	now Mini-Lab is known;
	now battleground is "void";
	now Another Researcher is resolved;


Section 2 - Mini-Lab

Mini-Lab is a room. It is fasttravel. It is private.
The description of Mini-Lab is "[minilabdesc]";
The invent of Mini-Lab is { "cot" }.

instead of sniffing Mini-Lab:
	if hp of Sam is not 100:
		say "The basement housing the research station smells strongly of dust and mildew, as well as dying traces of older smells from when the local teens would come here to drink.";
	otherwise:
		say "The basement has a wet, musky scent hanging in the air.  There are scents you recognize faintly as being from creature's you've encountered before, but the whole of that is largely buried beneath smells of sex and arousal.";


to say minilabdesc:
	if hp of Sam <= 4:
		say "     Tucked into the corner of basement in the long-abandoned home, Sam has set up his mini-lab.  Here the researcher stores and analyzes the nanite and samples he's gathered out in the city.  His equipment's been set up on a small table with a dented folding chair for him to sit on.  There are numerous racks of labeled test tubes shaped vials on the table and more on a small bookshelf behind it.  The collection of vials seems quite impressive, with several marked with creatures you've not even seen yet.";
		say "     The basement itself isn't much to look at, having several broken bottles and lots of graffiti from having been used as a hang-out for the local kids.  It looks like Sam's made some effort to clean it up, but mainly in the form of sweeping the trash into a few corners";
		if "cot" is listed in invent of Mini-Lab:
			say ".  Near the work area, there are two sleeping bags and some supplies, the second probably belonging to his now absent partner.";
		otherwise:
			say ".  Near the work area, there is a sleeping bag and some supplies.";
	otherwise:
		say "     Tucked into the corner of basement in the long-abandoned home are the broken remains of his mini-lab.  In the chaos of the fight, the equipment was destroyed and the nanite vials broken.  With the their contents spilled onto the ground and walls in that area, something strange has started to occur.  The concrete walls in this corner have become flesh-like and shifting, with vague impressions of faces, muzzles and sexual organs.  These do not last long or ever fully form, but it seems the over-abundance of nanites are still at work.  Realizing that Sam could have very well ended up fused with that mess or been turned into an ambulatory monstrocity like that, you don't feel so bad about how things did turn out.  You back away from the pulsating wall-flesh as it reaches out with a grey psuedopod.  You decide not to risk coming here again once your business is through.";
		now Mini-Lab is unknown;


Section 3 - Sam the Researcher

Sam is a man.  Sam is in Mini-Lab.
The description of Sam is "[samdesc]";
The conversation of Sam is { "Thanks." }.
the scent of Sam is "[samscent]";

to say samscent:
	if hp of Sam < 4:
		say "Sam himself smells human, though there is the lingering scent of several of his recent [']sample donors['] as well.";
	otherwise if hp of Sam is 10 or hp of Sam is 11 or hp of Sam is 12:
		say "Sam has an arousing, spicy smell coming from his draconic body.";
	otherwise if hp of Sam >= 13:
		say "Sam has an arousing, spicy smell coming from his draconic body.  Aside from his own musky scent, there's traces of the creatures he's recently fucked about him as well.  You find yourself becoming aroused just by being near him.";


to say samdesc:
	if hp of Sam >= 1 and hp of Sam <= 4:
		say "     Sam is an average looking human male.  He's roughly six feet tall and with a strong build.  Having seen him undressed when you first encountered him, you know he's physically fit, neither thin nor chiseled.  The constant exercise of travelling around the city to fight and fuck monsters has toughened him up.  He's got brown hair and eyes.  There is a bit of stubble on his face, probably seeing little need to shave regularly out here.  At 21 years old and in university, he's been sent here as part of a research project to gather samples of the nanites.  He's [one of]hard at work at his lab station, running analyses on his recent acquisitions[or]taking a short break and stretched out on his sleeping bag[or]grabbing a quick snack[or]checking his gear before having to go out again[purely at random].";
	otherwise if hp of Sam >= 10 and hp of Sam <= 13:
		say "     After his confrontation and the unsuing accident, Sam has become a male dragontaur creature thanks to you quick assistance.  He's gained about a foot and a half in height from the transformation, putting him something over seven feet tall.  His draconic head has a long, pointed muzzle with a slight curve at the end.  His green scales darken towards the back of his head as they approach the base of ivory horns which jut from the back of his head.  There are three smaller horns to each side and a larger pair at the top.  His upper body is generally human in shape, but covered in green scales.  He's become quite toned through the change, his chest showing firm pecs and hard abs.  His hands are a cross between human hands and his more draconic clawed feet.";
		say "     His lower body is that of a compact, but powerful beast, with strong limbs and a stocky frame to support his weight.  His emerald scales give way to harder plates along his underbelly.  Atop the back of his tauric body are a pair of draconic wings he keeps folded alongside his sides.  He has a long lizard tail ending in a spaded tip.  Beneath his lower body hangs his plump sheath and large balls.";
	otherwise:
		say "ERROR-Sam-[hp of Sam]L: You should not be able to find me!";


Instead of conversing the Sam:
	if hp of Sam is 1:
		say "     'I've really got a lot on my plate here with trying to deal with all the tests they need me to take care of now that I'm on my own.  Rick and I used to take shifts, but now I've got to do it all.  So I was hoping I could get you to give me a hand.  There's some tests that they want me to run on some samples from the City Zoo.  Rick was working that area when he decided it'd be more fun to just join the fun full-time.  I'd lose too much time travelling back and forth out there to be able to keep up with the rest of the work.  They want samples of cheetah milk and rhino cum, though I'll make some vials out of it when I'm done.";
		if Zoo Entrance is unknown:
			say "     'I haven't made a trip out there yet myself, but he did tell me the route he found to get there.  It should be fairly safe and let you avoid the really unsafe or blocked sections.'";
			now Zoo Entrance is known;
		say "     'I've got some extra supplies.  I can give you some if you'll gather two samples of both cheetah milk and rhino cum.  I'd really appreciate it.  Here, you can even take this bottle of water as a downpayment.'  Deciding it might be a good way to get some extra supplies.  As well, helping him finish up might be your ticket out of this whole mess if you can tag along with Sam.";
		add "water bottle" to invent of player;
		now hp of Sam is 2;
	otherwise if hp of Sam is 2:
		let milkfound be 0;
		let cumfound be 0;
		repeat with x running through invent of player:
			if x is "cheetah milk", increase milkfound by 1;
			if x is "rhino cum", increase cumfound by 1;
		if milkfound < 2 or cumfound < 2:
			if a random chance of 1 in 2 succeeds:
				say "     'I want to thank you for deciding to help me with my work.  I need to get this stuff all done and I can't do it alone.  Don't forget, I'm looking for two samples of both cheetah milk and rhino cum for the tests I need to do.'";
			otherwise:
				say "     [one of]'I want to thank you for giving me a hand with this.  I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy.  Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there.  It's getting kind of fun finding them and just having some wild sex.  You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures.  Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";
		otherwise:
			delete cheetah milk;
			delete cheetah milk;
			delete rhino cum;
			delete rhino cum;
			say "     Sam takes the samples you've brought and sets them on the table.  'Wonderful, [if cunts of player > 0]babe[otherwise]man[end if].  This is a big help.  I'm going to get started on these tests right away.  Next stuff I'm going to need is some gel from those jelly-people in the Red Light District of town.  There's three different kinds of them - pink, blue and purple - and I'll need a sample from each of them.  Got to analyze what makes them different.  And here, take this stuff as a reward for helping me out,' he adds, handing you some dried food and another bottle of water.";
			if Entrance to the Red Light District is unknown:
				say "     'Since you haven't been there before - let me tell you - that place is really wild.  I mean, I had lots of fun there and all gathering nanite samples, but the creatures there can be extra intense.  I was really tempted to go back and visit that tigress in the alley again.  She was quite the ride and well worth the milk I gave her.'  He then proceeds to show you a route into the city's Red Light District.";
				now Entrance to the Red Light District is known;
			add "food" to invent of player;
			add "water bottle" to invent of player;
			increase score by 20;
			now hp of Sam is 3;
	otherwise if hp of Sam is 3:
		if pink gel is owned and blue gel is owned and purple gel is owned:
			delete pink gel;
			delete blue gel;
			delete purple gel;
			say "     You set down the samples of gel you'd collected on the work table.  'Awesome!  That's another one of the tests on the list I can finish off.  Let's see, how about you grab me some eagle feathers next?  I'll need at least two of them, I think.  Those eagles are flying out over the Dry Plains to the east of the city.'";
			if Dry Plains is unknown:
				say "     'Things are pretty open out there with few buildings still left standing.  It used to be mostly suburbs and small ranches, but something's making them all collapse really quickly.  Don't expect to find as much going on out there, but it's pretty open so you shouldn't have too much trouble finding some of those eagles.'";
				now Dry Plains is known;
			say "     He digs around in his supplies and pulls some stuff out for you.  'Here, how about some snacks this time?  Some sugar'll keep you going.'";
			add "chips" to invent of player;
			add "soda" to invent of player;
			increase score by 20;
			now hp of Sam is 4;
		otherwise:
			if a random chance of 1 in 2 succeeds:
				say "     'Please keep looking for those gel samples.  Remember, I'll need one of each from those gelatinous people out in the Red Light District of town.";
			otherwise:
				say "     [one of]'I want to thank you for giving me a hand with this.  I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy.  Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there.  It's getting kind of fun finding them and just having some wild sex.  You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures.  Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";
	otherwise if hp of Sam is 4:
		let featherfound be 0;
		repeat with x running through invent of player:
			if x is "eagle feather", increase featherfound by 1;
		if featherfound >= 2:
			now featherready is true;
			assaultonminilab;
		otherwise:
			if a random chance of 1 in 2 succeeds:
				say "     'Keep an eye out for some eagle feathers.  I'll need at least two for the upcoming experiment.  There should be plenty of eagles flying around the Dry Plains outside of the city.";
			otherwise:
				say "     [one of]'I want to thank you for giving me a hand with this.  I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy.  Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there.  It's getting kind of fun finding them and just having some wild sex.  You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures.  Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";
	otherwise if hp of Sam is 10:
		say "     'Thanks again for helping me out back there.  I don't want to think about what I would have ended up if you were there to help,' he shudders a little.  'But it's all good now.  I've got this hunky new body and I'm itching to try it out.  I can't wait to try playing with all those fun creatures out there again now that I'm a big, strong dragon.'  Noticing the look you're giving him, he's quick to hold up the device you saw him with that first day.  'Got to get to work on gathering all my samples again,' he says with a grin.  'Not that I can't spare some time to show you how nice it is to have a big, strong dragon atop you,' he rumbles.";
		now hp of Sam is 11;
	otherwise if hp of Sam is 11:
		say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself.  This big body of mine's got a big appetite.  But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine.  I feels so much better than my old, weak one.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I should see if I can find that dog you saw me with and [']return the favour['] as it were,' he says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' he says.  'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident.  That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body.  'You should try letting the sexy dragon beast mount you some time.  I promise this ridged beast I'm packing will make you roar in ecstacy,' he rumbles, sliding his forked tongue along your cheek.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here so I can have my way with you too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me.  This is a pretty sweet setup you have here,' he says, looking around the fortified bunker.[at random]";
	otherwise if hp of Sam is 12:
		say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself.  This big body of mine's got a big appetite.  But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine.  I feels so much better than my old, weak one.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I should see if I can find that dog you saw me with and [']return the favour['] as it were,' he says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' he says.  'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident.  That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body.  'You should try letting the sexy dragon beast mount you again.  I can tell your body wants this ridged beast I'm packing inside you again,' he rumbles, giving your ass a squeeze.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here so I can have my way with you too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[at random]";
	otherwise if hp of Sam is 13:
		say "     [one of]'You don't have to worry about feeding me.  I can take care of myself,' the strong dragon rumbles.[or]'I'm much preferring this new body of mine.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I should see if I can find that dog you saw me with and [']return the favour['] as it were,' he says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' he says.  'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident.  That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body.  'You should try letting the sexy dragon beast mount you again.  I can tell your body wants this ridged beast I'm packing inside you again,' he rumbles, giving your ass a squeeze.[or]'I'm looking forward to mounting you again.  Being stuffed full of dragon cock is definitely what that horny body of your needs to satisfy it,' he rumbles, licking your cheek slowly with his forked tongue.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here so I can have my way with you too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[at random]";
	otherwise:
		say "ERROR-Sam-[hp of Sam]L: You should not be able to find me!";


Section 4 - Confrontation at the Mini-Lab

minilabfight is a number that varies.
featherready is a truth state that varies.  featherready is normally false.

instead of navigating Mini-Lab while hp of Sam is 4:
	let featherfound be 0;
	repeat with x running through invent of player:
		if x is "eagle feather", increase featherfound by 1;
	if featherfound >= 2:
		now featherready is false;
		assaultonminilab;
	otherwise:
		move player to mini-lab;

to assaultonminilab:
	if featherready is true:
		say "     As you are pulling out the feathers for Sam, there is a great crashing at the hatch to the basement that stops you both cold.  You pull your pack back on and prepare to fight as a large, feline creature comes crasing into the basement.  It is one of those feline tigertaurs from the Zoo.  She growls and rushes forward, but pushes you aside rather than confronting you, instead going straight for Sam.";
		say "     'Rick!  No, don't do this!' he cries as the powerful creature and ex-partner grabs him, her lustful intent clearly visibly hanging between the herm's legs.  She pushes him down onto the table, tearing at his clothes with her claws.  What shall you do?";
	otherwise:
		say "     As you're approaching Sam's hidden research lab, you notice some noise coming from the building.  Knowing something is amiss since Sam avoids any excess noise to prevent detection, you run around back to find the basement hatch broken open.  You cautiously head down the stairs, ready for a fight.  There you find Sam being manhandled by one of those feline tigertaurs from the Zoo.  The herm's got him pressed down onto the table and is tearing at his clothes with her claws.  Her lustful intent is clearly visibly hanging between her legs.  'Rick!  No, don't do this!' Sam cries as his ex-partner prepares to mount him.  What shall you do?";
	say "[link]Help Sam (1)[as]1[end link], [link]watch the show (2)[as]2[end link], [link]steal supplies (3)[as]3[end link] or just [link]leave (4)[as]4[end link]? [run paragraph on]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choose 1-4> [run paragraph on]";
		get a number;
		if calcnumber >= 1 and calcnumber <= 4:
			break;
	if calcnumber is 1:
		say "     You grab the tigertaur and struggle to pull her away from Sam.  She growls in frustration and turns to confront you before getting her true prize.";
		now minilabfight is 1;
		challenge "tigertaur";
		now minilabfight is 0;
		if fightoutcome >= 10 and fightoutcome <= 19:
			minilabvictory;
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:
			say "     The tigertaur gives you a final punch to the gut after she's done her fun.  'And that's for getting in my way,' she growls.  'Now where's that partner of mine,' she purrs, turning towards Sam again, who's backed into a corner.  She crouches down and rocks her hips, tail twitching, before pouncing on him and bearing him down under her.  The researcher tries to struggle, but the tigertaur has a firm grip.  You stagger to your feet and get out while you can.  Leaving Sam to his feline fate, you head back to the library to consider your next course of action.";
			attempttowait;
			now hp of Sam is 100;
			remove Sam from play;
			now Mini-Lab is unknown;
		otherwise:
			say "     Rather than continue to risk yourself in a losing fight, you make a break for the basement hatch and run away.  Leaving Sam to his feline fate, you head back to the library to consider your next course of action.";
			attempttowait;
			now hp of Sam is 100;
			remove Sam from play;
			now Mini-Lab is unknown;
			move player to Grey Abbey Library;
	otherwise if calcnumber is 2:
		say "     Not wanting to get involved, but certainly curious to watch the show, you take a few steps back, giving the two plenty of space to get reacquainted.  The tigertaur keeps Sam pinned down to the table as she starts looking over its contents.  'Ahh, here they are,' she purrs, grabbing several of the vials before tossing Sam down onto the floor.  He crawls backwards, begging alternatively for Rick not to do it and for you to help him, but neither of you heed his pleas, too aroused by what's to come.";
		say "     With a few twitches of her hindquarters, she pounces atop of her human prey, pinning him face down to the ground.  She grinds her hard cock against his body, leaking precum over his smooth skin.  With a strong paw at his jaw, she forces his mouth open.  'Oh, stop your fussing, you'll make such a pretty kitty breedslut,' Rick rumbles, pouring the contents of one vial after the other down her ex-partner's throat.";
		attempttowait;
		say "     As concentrated nanite infusions rush through his system, Sam begins to change.  First to show is a rush of cheetah spots as fur begins to cover his body.  Next comes a leonine tail.  As the changes continue to progress and Sam becomes more feline, he starts to moan and mewl with growing excitement.  With a loud mrowl, a feline muzzle grows from Sam's face and stripes start to mix into the spotted fur there.  And that's not all that's growing - a lovely pair of breasts start to form on his chest, soon followed by several other pairs.  Beside those lower breasts, two protrusions start to form out of his sides, soon forming into another pair of feline legs.  Even as his hands and feet become paws, his body shifts further, becoming a feline taur like his ex-partner.  Sam's largest pair of breasts remain on his upper torso, while the rest shift down to hang from his taur body.";
		say "     'Mmm... you're turning into such a lovely kitty, Sammie.  Let's show your friend what a nice feline slut you've become,' she purrs, raising Sam's leonine tail and grinning back at you.  With your clear view, you can see the juicy virgin pussy, swollen balls and furry sheath that Sam's gained.  The new kitty's cock is quite large and feline in shape, a throbbing black spire of arousal.  As Rick shows off her prize, she rubs a tiger paw against that damp slit while stroking a hand along that ebon shaft.  'And how does my kitty feel?  Ready for her first proper breeding?' she purrs.  Sam mrowls and nods, begging to be mounted as the arousal of all her changes overwhelms her.  'Sounds like you [italic type]really[roman type] want it.  Will you drink a few more vials from your mistress to earn it?' she purrs, offering several more doses of nanites.";
		attempttowait;
		say "     'Oh, I need it so bad... I didn't know it would feel this good.  Yes, please, whatever you want, mistress.  Just do it and mount your kitty,' Sammie cries out, grinding back against Rick's touch, opening her mouth wide to receive the vials['] contents.  Rick laughs darkly and climbs atop his new slut and pours the vials down her throat even as she mounts her.  As Rick fucks her feline taur pet, the feline hybrid continues to change, gaining another pair of legs and more breasts.  Her coat continues to change, remaining cheetah spotted in her hindquarters, leopard rosetted at the midsection and gaining clouded leopard markings on her upper torso.";
		say "     As you watch the two felines creatures breeding, the heavy scent of arousal hangs in the air.  You can't help but play with yourself, rubbing your hands over your [if breast size of player > 0]breasts and [otherwise if cocks of player > 0 and cunts of player > 0]aching loins[otherwise if cocks of player > 0]throbbing cock[otherwise if cunts of player > 0]dripping pussy[otherwise]barren crotch[end if], uncertain which of them you'd rather be right now.  When you see Rick shift her hips, readying to pound her new slut harder, you spot that Sammie's gained a second pussy and a second cock as part of her continued changes.  It takes considerable effort to stop yourself from going over and joining them, knowing the tigertaur would not let you go until you were nothing but another feline slut for her.  And as tempting as that seems right now, you keep your distance, though you don't look away from the show either.  Much of the floor beneath them has become damp with the hybrid's leaking milk, splattered seed and dripping juices as she's fucked and bred over and over again.";
		attempttowait;
		if cocks of player > 0 and cunts of player > 0:
			say "     You cum several times as well, the wild show and the heady scent of musky sex exciting you greatly[if cocks of player > 0].  You stroke your pulsing meat, splattering your seed across the dirty floor as you drain your [ball size] balls[end if][if cunts of player is 1].  With several fingers pumping into your wanton pussy, you finger yourself through repeated climaxes[otherwise if cunts of player > 1].  With several fingers pumping into your wanton pussies, you finger yourself through repeated climaxes[end if].  As you see Rick finally finishing up, she gives you a rather predatory look as she pants to regain her breath.  Rather than waiting to give her a chance to take the decision out of your hands, you grab your gear and make a break for it, leaving the two horny felines to enjoy their new life together.  You make your way back to the library feeling very sexually satisfied, but longing more to just accept becoming a horny creature of lust like them.";
		otherwise:
			say "     As you see Rick finally finishing up, she gives you a rather predatory look as she pants to regain her breath.  Rather than waiting to give her a chance to take the decision out of your hands, you grab your gear and make a break for it, leaving the two horny felines to enjoy their new life together.  You make your way back to the library feeling ";
		if "Kinky" is listed in feats of player:
			say "quite pleased and aroused at having indulged your kinky urges pleased";
			increase morale of player by 3;
			increase libido of player by 25;
		otherwise:
			say "a little bad about letting that happen, but also aroused by the scene you just witnessed";
			increase libido of player by 10;
			decrease morale of player by 3;
		say ".  After what you've seen, part of you longs to just accept becoming a horny creature of lust like them.";
		attempttowait;
		decrease humanity of player by 20;
		if libido of player > 100, now libido of player is 100;
		now hp of Sam is 100;
		remove Sam from play;
		now Mini-Lab is unknown;
		move player to Grey Abbey Library;
	otherwise if calcnumber is 3:
		say "     Deciding it's every [if cunts of player > 0]woman for herself[otherwise]man for himself[end if], you rush over to Sam's supplies and grab a quick armload and make a run for it.  As you do this, Sam calls out with a mix of pleas for help and curses for leaving him, but you turn a deaf ear, rushing up the steps and out of the basement.  Leaving Sam to his feline fate, you head back to the library to consider your next course of action.";
		attempttowait;
		add "water bottle" to invent of player;
		add "food" to invent of player;
		add "soda" to invent of player;
		add "chips" to invent of player;
		decrease humanity of player by 12;
		now hp of Sam is 100;
		remove Sam from play;
		now Mini-Lab is unknown;
		move player to Grey Abbey Library;
	otherwise if calcnumber is 4:
		say "     You decide to leave the two of them alone so they can get reacquainted.  You quickly back away and rush up the stairs.  As you're leaving, you can hear Sam calling out with a mix of pleas for help and curses at you for leaving him, but you turn a deaf ear and make your way out.  Leaving Sam to his feline fate, you head back to the library to consider your next course of action.";
		attempttowait;
		decrease humanity of player by 5;
		decrease morale of player by 3;
		decrease score by 25;
		now hp of Sam is 100;
		remove Sam from play;
		now Mini-Lab is unknown;
		move player to Grey Abbey Library;

to minilabvictory:
	say "     As your last blow drives back the large feline, she staggers sideways a few steps.  Growling in frustration, she makes a final lunge at Sam and tosses the young man across the work table and into the shelves beyond.  'If I can't have you, no one can,' she yowls as Sam starts to scream, the contents of the broken vials flowing down overtop of him.  He writhes on the floor, mindless of the broken glass as the samples from dozens of creatures enter his system at once.  You are momentarily stunned at this sight, giving the tigertaur the opportunity to flee past you and exit the cramped basement.";
	say "     It takes you a moment to recover your senses, during which time Sam's already begun to change, patching of fur or scales forming in mismatched clusters.  His face distorts first into a canine muzzle, then a bird's beak, then to something not quite human.  As he fumbles over to his supplies he opens a bottle of water with a hand, but it slips out as it turns into a paw.  You grab it and start pouring it over him, trying to wash off the tainted fluids.  In the time it takes you to open another, breasts start to form on his chest and a second pair of legs are growing from his sides as his body starts for form a tauric lower half.";
	attempttowait;
	say "     'No good,' he moans, his words distorted by his changing mouth waving you off as you go for another bottle.  'Too many at once.  Instincts confused.  Hard to think.  Need... sex...' he says, reaching down to grope his decidedly canine cock with an insectile hand and knead his growing bosom with a furry paw.  'No... need... one large dose... Mmm... so large,' he mumbles, reaching lower to grope his swelling balls.  'Ngg... overwrite small ones...' he moans, his words melding into wet, fleshy sounds.  Rather than stop himself from playing with his changing body as a wet pussy starts to form as well, his tail becomes nothing more than a pseudopod of flesh flowing from his body as it starts to lose its solidity.  The tendril points towards the ruins of his work area before being drawn in to tease his wet folds.";
	say "     Realizing what he means, you turn to the overturned mess of his work area, trying to locate unbroken vials among the sticky mess without getting caught in it yourself.  You are only able to find two intact in a during a quick search and grab them with a scrap of Sam's torn clothes.  They are labeled as '[link]#143 - Dragon - Male[as]Y[end link]' and '[link]#039 xxxxxxx[as]N[end link]'.  You've only got a moment to decide.  Which one will you give him - the dragon (Y) or the xxxxxxx (N)?";
	say "(The xxxxxx option will be coming soon. - Stripes)[line break]";
	if the player consents:
		say "[samtf_maledragon]";
	otherwise:
		say "[samtf_xxxxxxxxxx]";


to say samtf_maledragon:
	say "     Tossing the other aside, you pop open the vial for the dragon and pour it as best you can into the fleshy hole that his mouth has become.  It's shape distorts even as you toss the empty vial onto the rest of the mess, pushing forward into an elongating muzzle.  'Yes!  It's working...' he gurgles, his words becoming clearer again.  The flowing flesh starts to regain texture which soon forms into lizard-like scales.  His body grows more solid as his tauric limbs become strong and muscled, forming clawed feet.  His upper body slowly loses the breasts, forming manly pecs and abs instead, all covered in the same green scales.  Still on his side, he reaches down with his tauric forepaws and grabs onto his enlarged cock, stroking it with moans of pleasure.  'Oh yeah... that's the spot,' he rumbles, stroking his ridged maleness as it spurts precum.";
	say "     His head forms an elongated dragon muzzle with golden eyes and darker scales towards the back where the ivory horns push forth.  He slides his long, forked tongue across his muzzle, panting as he strokes himself faster.  As his rear pushes forth a new, thick lizard tail ending in a dark spade and large, draconic wings burst from his back, his climax comes as well.  His forepaws pump at his thick member, spraying blasts of thick dragoncum across the dirty floor.  'Mmm... yeah!' he roars, cumming with obvious delight.";
	say "     You've moved back at this time, not quite sure if your friend's still in there, but as he releases his spent shaft and sags back on the floor, his smiles up at you.  'Thanks.  That was... close...  Here, help me up,' he says as he tries to rise, unused to having four legs.  He, like the tigertaur, is a little big for the cramped basement, but manages to get around.  He gathers together what he can that hasn't been destroyed or tainted by the nanite serum.  'Uhh... so... I hope your place has got higher ceilings,' he says with a grin and a chuckle.  After the recent tension, you can't help but laugh, telling him you might be able to find some space for him.  You head off together towards the bunker.";
	increase score by 50;
	increase humanity of player by 5;
	increase morale of player by 2;
	if humanity of player > 100, now humanity of player is 100;
	now hp of Sam is 10;
	move Sam to bunker;
	move player to bunker;


to say samtf_xxxxxxxxxx:
	say "***";
	say "(I told you the xxxxxxx option will be coming soon.  Here, enjoy the dragon instead.  - Stripes)[line break]";
	say "[samtf_maledragon]";



Section 5 - Sexy Times Sam

Part 1 - Basic System

instead of fucking the Sam:
	if hp of Sam >= 1 and hp of Sam <= 4:
		say "     'While it might be nice to do it with someone I know for a change, I get more than enough of that out in the city.  As it is, I need to save up my strength for the next time I go out.  How about a rain check on that?  When my pick up comes to get me out of here, you can come along and we can celebrate together.'";
	otherwise if lastfuck of Sam - turns < 6:
		say "     'Mmm... that's a tempting offer, but I was thinking of heading back out for some more... uh... sample gathering... with those sexy critters out there.";
	otherwise if hp of Sam is 10:
		say "     Aren't you jumping the gun a little?  Shouldn't you talk to him and see how he's doing?";
	otherwise if hp of Sam is 11:
		say "[samdragonfirsttime]";
		now hp of Sam is 12;
		now lastfuck of Sam is turns;
	otherwise if hp of Sam is 12:
		say "[samdragonoral]";
		now hp of Sam is 13;
		now lastfuck of Sam is turns;
	otherwise if hp of Sam is 13:
		if a random chance of 3 in 5 succeeds:
			say "[samdragonfuck]";
		otherwise:
			say "[samdragonoral]";


Part 2 - Dragon Sex

to say samdragonfirsttime:
	say "     Sam grins at your offer and takes a hold of you in his big, strong arms.  'Mmm... I've been looking forward to this since we got here.'  He kisses you as best he can with his draconic muzzle, letting his tongue play across your lips before diving into your mouth.  As his tongue explores your palate, he lowers you onto one of the cots.  His from dragonpaws knead over your chest as he moves to climb atop you, rumbling in pleasure as he breaks the kiss to move into position.  His large, draconic cock is ready and waiting, dribbling precum across your loins as he climbs onto the strained cot.  Placing his forepaws on your shoulders, he grips you firmly and lines his cock up before thrusting it slowly into you.";
	say "     His slender, pointed tip slips into your [if cunts of player > 0]vagina[otherwise]anus[end if] easily, but his cock thickens as that delightlyfully ribbed shaft starts spreading you open.  You moan and pant beneath him as he grins down at you, pleased to see you squirming in delight beneath his powerful form.  'That's it... take that big dragon cock,' he rumbles, pounding you harder and faster as you stretch to accommodate the big taur's large shaft and loving every moment of it.";
	attempttowait;
	say "     His forepaws keep a firm grip on you, pinning you down onto the cot so he can drive his strong hips forward.  Again and again he thursts his large cock into you, fucking you like some wild beast.  The ridges along his shaft rub and stimulate your [if cunts of player > 0]vaginal walls, sliding against your clit[otherwise if cocks of player > 0]anal passage, pressing past your prostate[otherwise]anal passage[end if] to your continued delight[if cocks of player > 0].  Your own erection throbs against your belly, twitching with every thrust the dragontaur makes into you[end if].  Eventually the frantic fucking becomes too much for Sam and he drives hard into you one last time before unleashing his hot seed to flood your [if cunts of player > 0]womb[otherwise]belly[end if][if cunts of player > 0 or cocks of player > 0], driving you to orgasm as well[end if].  You roar together and grip your lover's lower body tightly, relishing the hot, creamy feeling of his virile load being pumped into you.[impregchance]";
	say "     Once he's finished up, he steps back and slides his cock free.  It twitches as it pops out, spraying a few last spurts onto your body.  'Mmm... If you ever want another go, I'll be happy to give you another dose of dragon cum.  Give you a proper fucking like only a dragon can provide,' he rumbles.  He slides his hands down your body as he looks over his handiwork before leaning forward and letting his long tongue slide slowly across your overflowing hole to get a quick taste.";

to say samdragonoral:
	say "     Sam rumbles in pleasure as you return for more fun with the virile dragon.  He again pulls you into his arms and gives you another kiss, more skillful than the last, thanks to his probably practice with the creatures out in the city.  You moan softly into it as his tongue teases around in your mouth.  After breaking the kiss, he pushes you down onto the floor as he props his forepaws up on the edge of one of the bunks.  'Mmm... I think you should get a good taste of what the dragon has to offer,' he rumbles.  His cock, already having slipped free of its scaled sheath is pointing towards your mouth and dribbling precum.  With it right in front of you, you can smell the strong, spicy scent of his musk and you lick your lips, the scent inviting.  Taking his ridged cock in your hands, you stroke along it and bring your mouth in to kiss and lick at his dribbling glans.";
	attempttowait;
	say "     'Mmm... I knew you couldn't resist having another go at my dragon cock,' he chuckles, reaching down with his hands to stroke your head, pushing you onwards to take it into your mouth and start sucking it.  You slide your tongue across his pointed glans, then down along his ridged length, drawing a rumble of pleasure from the dragontaur.  'Oh yeah, just like that, baby.'  You continue to fellate the powerful dragon, letting your hands slide along his shaft and down to grope his balls.  Kneading those heavy orbs, you lean down further, taking more of him into your mouth.  His tapered glans slides down your throat, leading the way for this thicker shaft to push in as well.  The firm ridges along his shaft send shivers through your body as they move across your tongue and down your throat, letting you know just how much of the dragon's large cock you're taking in.";
	attempttowait;
	say "     With most of his pulsing member stuffed into your mouth and down your throat, you moan wetly in pleasure.  Leaving one hand on those heavy balls of his, you move the other down to your [if cocks of player is 0 and cunts of player is 0]bare [end if]crotch[if cunts of player > 0] to finger your dripping pussy[otherwise if cocks of player > 0] to stroke your cock[end if], imagining having that ridged member inside you again.  As his rumbles of pleasure grow louder, he pushes you forward, driving a few more inches into you before cumming hard.  His hot seed blasts from his pulsing cock, shooting down your throat to feed you his rich load.  His high output causes a sizeable amount of creamy cum to overflow from your mouth and dribble down your [bodytype of player] chest.  Once he's spent and withdrawn, you lay back [if cunts of player > 0]fingering your pussy to orgasm and your other hand rubs his cum all over yourself[otherwise if cocks of player > 0]stroking your cock until you cum as well, adding your seed to his across your body before rubbing it all over yourself[otherwise]and rub his cum all over yourself[end if].  He smiles as he watches you put on this show, rumbling about how sexy you look covered in his seed so everyone can smell you're his.";

to say samdragonfuck:
	say "     Sam rumbles lustfully and presses you down onto your back on one of the bunks, moving to climb atop you again.  'Rrr... back for more.  Best give that horny body of yours what it needs - a good fucking and a hot dose of dragon cum,' he rumbles with a grin.  His powerful body pins you down and grinds down against your [bodydesc of player] body, wedging his stiff meat [if cocks of player > 0]against your own[otherwise]between you both[end if].  Moving back, he gets his tapered glans lined up with your [if cunts of player > 0]wet vulva[otherwise]tight pucker[end if] and pushes it into you.  His cock, made for spreading open his lovers, dribbles precum along your passage as his muscled hips push forward, driving his increasingly thicker shaft into you.  You moan beneath him as each of those stimulating ridges pops into you.  Soon you're panting and squirming beneath him in ecstacy as he fucks you with that exquisite cock of his in strong, hard thrusts.";
	attempttowait;
	say "     You wrap your arms around his chest, pulling yourself down onto his cock again and again as he thrusts into you.  'Mmm... look at you... such a slut for a dragon cock.  Wanting a proper fucking until you're stuffed full of my hot seed[if cunts of player > 0] and bred full of my whelps[end if],' he rumbles with a chuckle.  You kiss and lick at his emerald scales, lavishing attention on this sexy beast who's mating you.  Lost in a haze of arousal, you can't help but agree with the dragontaur, your body lusting for the wonderous pleasure that you feel only his draconic cock can bring[if cocks of player > 0 or cunts of player > 0].  Soon you're thrashing in orgasm beneath him, cumming over and over again as he drives his meat into you[otherwise].  Soon you're thrashing in delight beneath him, your body aching to feel his release since your genderless body cannot have one of its own[end if][if cocks of player > 0].  Your spurting cock rubs against his smooth, firm scales, loving the feel of them pressed against you as your seed soaks you both[end if][if cunts of player > 0].  Your pussy clenches and tugs at his cock, milking at it in wanton need as you orgasm repeatedly[otherwise].  Your tight hole clenches and tugs at his cock, squeezing firmly around it as you're awash with ecstacy[end if].  Your [bodytype of player] body is sent into pleasure overload as the big taur drives hard into you one last time and releases his hot seed, blasting heavy spurts of thick seed into your [if cunts of player > 0]womb in an attempt to breed you[otherwise]bowels, bloating your belly with his virile seed[end if].[impregchance]";
	attempttowait;
	say "     Once he's finished up, he steps back and slides his cock free.  It twitches as it pops out, spraying a few last spurts onto your body.  He steps further up onto the cot to bring his spurting shaft to your face, marking it with several streaks of semen.  You moan weakly and wrap your lips around his cock, sucking the last of his load from it before he pulls away.  'You look so sexy after you've been fucked senseless.'  He runs a hand over your [bodytype of player] body and licks your cheek.  'You make such a fine slut.  You should go out into the city and let some of the creatures out there mount you.  Then you can come back to me and I can fuck you in that new body of yours as well,' he rumbles while fingering your creamy hole, making you shiver in delight.  As you rest and recover from the wild from, you find yourself thinking out finding some creatures to submit to out in the city.";
	increase libido of player by 15;
	if libido of player > 99, now libido of player is 99;

Part 3 - xxxxxxxxxx Sex



[	hp of Sam			]
[ 0 - not encountered		]
[ 1 - met Sam			]
[ 2 - agreed to help		]
[ 3 - gave first items		]
[ 4 - gave second items		]
[ more to come			]

Section 6 - Endings
[to come later]

Sam for FS ends here.