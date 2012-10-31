Version 1 of Sam  for FS by Stripes begins here.
[Version 1 - ]
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
	say "     Arriving at a run down home with boarded up windows, he motions you to follow him around back and down through a door into the basement.  'I used to live near here.  This place has been boarded up for a few years, though the local teens knew how to get in.  Makes for a safe hiding spot to set up our temporary lab,' he says, closing the door behind you and leading you to the back of the room where a small research station's been set up.  'Now, the main reason I've asked you down here is to see if you might be willing to help me out with my work.  Since I'm a man down, I could use a hand gathering samples.  I've got a deadline to meet, but I can't run around the whole city to gather the samples and nanites by myself.  I hope you'll help me out.'";
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
	say "The basement housing the research station smells strongly of dust and mildew, as well as dying traces of older smells from when the local teens would come here to drink.";

to say minilabdesc:
	say "     Tucked into the corner of basement in the long-abandonned home, Sam has set up his mini-lab.  Here the researcher stores and analyzes the nanite and samples he's gathered out in the city.  His equipment's been set up on a small table with a dented folding chair for him to sit on.  There are numerous racks of labeled test tubes shaped vials on the table and more on a small bookshelf behind it.  The collection of vials seems quite impressive, with several marked with creatures you've not even seen yet.";
	say "     The basement itself isn't much to look at, having several broken bottles and lots of graffiti from having been used as a hang-out for the local kids.  It looks like Sam's made some effort to clean it up, but mainly in the form of sweeping the trash into a few corners";
	if "cot" is listed in invent of Mini-Lab:
		say ".  Near the work area, there are two sleeping bags and some supplies, the second probably belonging to his now absent partner.";
	otherwise:
		say ".  Near the work area, there is a sleeping bag and some supplies.";


Section 2 - Sam the Researcher

Sam is a man.  Sam is in Mini-Lab.
The description of Sam is "[samdesc]";
The conversation of Sam is { "Thanks." }.

the scent of Sam is "[samscent]";

to say samscent:
	say "Sam himself smells human, though there is the lingering scent of several of his recent [']sample donors['] as well.";

to say samdesc:
	say "     Sam is an average looking human male.  He's roughly six feet tall and with a strong build.  Having seen him undressed when you first encountered him, you know he's physically fit, neither thin nor chiseled.  The constant exercise of travelling around the city to fight and fuck monsters has toughened him up.  He's got brown hair and eyes.  There is a bit of stubble on his face, probably seeing little need to shave regularly out here.  At 21 years old and in university, he's been sent here as part of a research project to gather samples of the nanites.  He's [one of]hard at work at his lab station, running analyses on his recent acquisitions[or]taking a short break and stretched out on his sleeping bag[or]grabbing a quick snack[or]checking his gear before having to go out again[purely at random].";


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
		if "pink gel" is listed in invent of player and "blue gel" is listed in invent of player and "purple gel" is listed in invent of player:
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
		say "(Content yet to be added.)[line break]";
		say "     [one of]'I want to thank you for giving me a hand with this.  I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy.  Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there.  It's getting kind of fun finding them and just having some wild sex.  You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures.  Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";


instead of fucking the Sam:
	say "     'While it might be nice to do it with someone I know for a change, I get more than enough of that out in the city.  As it is, I need to save up my strength for the next time I go out.  How about a rain check on that?  When my pick up comes to get me out of here, you can come along and we can celebrate together.'";


[	hp of Sam			]
[ 0 - not encountered		]
[ 1 - met Sam			]
[ 2 - agreed to help		]
[ 3 - gave first items		]
[ 4 - gave second items		]
[ more to come			]

Section 3 - Endings
[to come later]

Sam for FS ends here.