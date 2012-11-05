Version 1 of Sam for FS by Stripes begins here.
[Version 1.2 - Vixentaur form]
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
samformtalk is a truth state that varies.  samformtalk is normally false.

to say samscent:
	if hp of Sam < 4:
		say "Sam himself smells human, though there is the lingering scent of several of his recent [']sample donors['] as well.";
	otherwise if hp of Sam is 10 or hp of Sam is 11 or hp of Sam is 12:
		say "Sam has an arousing, spicy smell coming from his draconic body.";
	otherwise if hp of Sam >= 13 and hp of Sam <= 29:
		say "Sam has an arousing, spicy smell coming from his draconic body.  Aside from his own musky scent, there's traces of the creatures he's recently fucked about him as well.  You find yourself becoming aroused just by being near him.";
	otherwise if hp of Sam is 30 or hp of Sam is 31 or hp of Sam is 32:
		say "Sam has an arousing, perfumy smell coming from her vulpine body.";
	otherwise if hp of Sam >= 33:
		say "Sam has an arousing, perfumy smell coming from her vulpine body.  Aside from her own flowery scent, there's traces of the creatures she's recently had fuck her as well.  You find yourself becoming aroused just by being near her.";


to say samdesc:
	if hp of Sam >= 1 and hp of Sam <= 4:
		say "     Sam is an average looking human male.  He's roughly six feet tall and with a strong build.  Having seen him undressed when you first encountered him, you know he's physically fit, neither thin nor chiseled.  The constant exercise of travelling around the city to fight and fuck monsters has toughened him up.  He's got brown hair and eyes.  There is a bit of stubble on his face, probably seeing little need to shave regularly out here.  At 21 years old and in university, he's been sent here as part of a research project to gather samples of the nanites.  He's [one of]hard at work at his lab station, running analyses on his recent acquisitions[or]taking a short break and stretched out on his sleeping bag[or]grabbing a quick snack[or]checking his gear before having to go out again[purely at random].";
	otherwise if hp of Sam >= 10 and hp of Sam <= 13:
		say "     After his confrontation and the ensuing accident, Sam has become a male dragontaur creature thanks to you quick assistance.  He's gained about a foot and a half in height from the transformation, putting him something over seven feet tall.  His draconic head has a long, pointed muzzle with a slight curve at the end.  His blue scales darken towards the back of his head as they approach the base of ivory horns which jut from the back of his head.  There are three smaller horns to each side and a larger pair at the top.  His upper body is generally human in shape, but covered in azure scales.  He's become quite toned through the change, his chest showing firm pecs and hard abs.  His hands are a cross between human hands and his more draconic clawed feet.";
		say "     His lower body is that of a compact, but powerful beast, with strong limbs and a stocky frame to support his weight.  His azure scales give way to harder, steel blue plates along his underbelly.  Atop the back of his tauric body are a pair of draconic wings he keeps folded alongside his sides.  He has a long lizard tail ending in a spaded tip.  Beneath his lower body hangs his plump sheath and large balls.";
	otherwise if hp of Sam >= 30 and hp of Sam <= 33:
		say "     After his confrontation and the ensuing accident, Sam has become a female vixentaur creature thanks to you quick assistance.  She's gained about a foot in height from the transformation, putting her something close to seven feet tall.  Her vulpine muzzle is alluringly beautiful, with long lashes, pretty coral eyes and long, flowing cerise hair.  Her upper body is generally human in shape, but covered in pink fur.  She has become quite curvaceous, with a lovely bosom, slender waist and round hips blending into her tauric lower half.  Her hands are largely human in shape but with velvety pawpads and small, painted claws.";
		say "     Her lower body is that of a slender fox, with shapely legs and a cute paws.  Her pink fur becomes a very light shade at her chest and underbelly, as does the tip of her tail.  What would normally be the black of her socks is a deep pink.  She has a long, vulpine tail covered in fluffy fur.  Beneath that tail is her new pussy, wet and juicy.  Along her underbelly, she has three pairs of smaller breasts with perky, rosy nipples.";
	otherwise:
		say "ERROR-Sam-[hp of Sam]L: You should not be able to find me!";


Instead of conversing the Sam:
	if hp of Sam is 1:
		say "     'I've really got a lot on my plate here with trying to deal with all the tests they need me to take care of now that I'm on my own.  Rick and I used to take shifts, but now I've got to do it all.  So I was hoping I could get you to give me a hand.  There's some tests that they want me to run on some samples from the City Zoo.  Rick was working that area when he decided it'd be more fun to just join the fun full-time.  I'd lose too much time travelling back and forth out there to be able to keep up with the rest of the work.  They want samples of cheetah milk and rhino cum, though I'll make some vials out of it when I'm done.";
		if Zoo Entrance is unknown:
			say "     'I haven't made a trip out there yet myself, but he did tell me the route he found to get there.  It should be fairly safe and let you avoid the really unsafe or blocked sections.'";
			now Zoo Entrance is known;
		say "     'I've got some extra supplies.  I can give you some if you'll gather two samples of both cheetah milk and rhino cum.  I'd really appreciate it.  Here, you can even take this bottle of water as a downpayment.'  Deciding it might be a good way to get some extra supplies.  As well, helping him finish up might be your ticket out of this whole mess if you can tag along with Sam.";
		increase carried of water bottle by 1;
		now hp of Sam is 2;
	otherwise if hp of Sam is 2:
		if carried of cheetah milk < 2 or carried of rhino cum < 2:
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
			increase carried of food by 1;
			increase carried of water bottle by 1;
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
			increase carried of soda by 1;
			increase carried of chips by 1;
			increase score by 20;
			now hp of Sam is 4;
		otherwise:
			if a random chance of 1 in 2 succeeds:
				say "     'Please keep looking for those gel samples.  Remember, I'll need one of each from those gelatinous people out in the Red Light District of town.";
			otherwise:
				say "     [one of]'I want to thank you for giving me a hand with this.  I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy.  Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there.  It's getting kind of fun finding them and just having some wild sex.  You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures.  Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";
	otherwise if hp of Sam is 4:
		if carried of eagle feather >= 2:
			now featherready is true;
			assaultonminilab;
		otherwise:
			if a random chance of 1 in 2 succeeds:
				say "     'Keep an eye out for some eagle feathers.  I'll need at least two for the upcoming experiment.  There should be plenty of eagles flying around the Dry Plains outside of the city.";
			otherwise:
				say "     [one of]'I want to thank you for giving me a hand with this.  I don't think I could finish on my own.'[or]'I've got some other tests to run, but then I've got to go right back out and find a few more critters to fill out my quota.'[or]'I wouldn't have considered messing around with a guy before this, but I must say some of those males out there can be a lot of fun.'[or]'Some of those mutants out there are actually pretty sexy.  Once you learn to overlook stuff like fur or scales, you can see that there's some really hot ladies (and dudes) out there.'[or]'There's such a wild mix of creatures out there.  It's getting kind of fun finding them and just having some wild sex.  You should try letting a few of them win more often.'[or]'This resistance treatment's been a big help since I don't have to fight off all the creatures.  Though I do have to shoo away those I've already gotten samples from or I don't have the time and energy left to have fun when I finally track down a new one I need.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't already got.'[or]'It's getting harder to track down creatures I haven't already gotten enough samples from,' he says, motioning to wide array of small vials on the racks.[at random]";
	otherwise if hp of Sam is 10:		[Dragontaur form]
		say "     'Thanks again for helping me out back there.  I don't want to think about what I would have ended up if you were there to help,' he shudders a little.  'But it's all good now.  I've got this hunky new body and I'm itching to try it out.  I can't wait to try playing with all those fun creatures out there again now that I'm a big, strong dragon.'  Noticing the look you're giving him, he's quick to hold up the device you saw him with that first day.  'Got to get to work on gathering all my samples again,' he says with a grin.  'Not that I can't spare some time to show you how nice it is to have a big, strong dragon atop you,' he rumbles.";
		now hp of Sam is 11;
	otherwise if hp of Sam is 11:
		say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself.  This big body of mine's got a big appetite.  But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine.  I feels so much better than my old, weak one.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I should see if I can find that dog you saw me with and [']return the favour['] as it were,' he says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' he says.  'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident.  That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body.  'You should try letting the sexy dragon beast mount you some time.  I promise this ridged beast I'm packing will make you roar in ecstacy,' he rumbles, sliding his forked tongue along your cheek.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here so I can have my way with you too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me.  This is a pretty sweet setup you have here,' he says, looking around the fortified bunker.[at random]";
	otherwise if hp of Sam is 12:
		say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself.  This big body of mine's got a big appetite.  But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine.  I feels so much better than my old, weak one.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I should see if I can find that dog you saw me with and [']return the favour['] as it were,' he says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' he says.  'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident.  That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body.  'You should try letting the sexy dragon beast mount you again.  I can tell your body wants this ridged beast I'm packing inside you again,' he rumbles, giving your ass a squeeze.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here so I can have my way with you too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[at random]";
	otherwise if hp of Sam is 13:
		say "     [one of]'You don't have to worry about feeding me.  I can take care of myself,' the strong dragon rumbles.[or]'I'm much preferring this new body of mine.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to breeding a few whelps in those females out there.'[or]'I should see if I can find that dog you saw me with and [']return the favour['] as it were,' he says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' he says.  'Not like that,' he adds quickly, 'just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my big change.  That means I can have all the fun I like and still stay a sexy dragon taur.'[or]He runs a hand along your body.  'You should try letting the sexy dragon beast mount you again.  I can tell your body wants this ridged beast I'm packing inside you again,' he rumbles, giving your ass a squeeze.[or]'I'm looking forward to mounting you again.  Being stuffed full of dragon cock is definitely what that horny body of your needs to satisfy it,' he rumbles, licking your cheek slowly with his forked tongue.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here so I can have my way with you too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[at random]";
	otherwise if hp of Sam is 30:		[Vixentaur form]
		say "     'Thanks again for helping me out back there.  I don't want to think about what I would have ended up if you were there to help,' she shudders a little.  'But it's all good now.  I've got this sexy new body.  It's a little strange to be female now, but I'm itching to try it out.  I can't wait to try playing with all those fun creatures out there again now that I've got a juicy pussy for them to sample.'  Noticing the look you're giving him, she's quick to hold up the device you saw her with that first day.  'Got to get to work on gathering all my samples again,' she says with a grin.  'Not that I can't spare some time to show you just how much I appreciate your help,' she purrs.";
		now hp of Sam is 31;
	otherwise if hp of Sam is 31:
		if a random chance of 1 in 3 succeeds and samformtalk is false:
			say "     'Rick was the one who'd found the pink vixen somewhere.  From the way he talked about it, she was a whole lot of fun and I was a bit jealous he'd found her.'  She runs her paws over her shapely body.  'But now that I am one, it's even better since I get to have all the fun SHE was having.  And more, cause I'm a hot taur as well.'";
			now samformtalk is true;
		otherwise:
			say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself.  This big body of mine's got a big appetite.  But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine.  I feels so much better than my plain old one.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some males out there breed a few kits in me.  Just to see what it's like,' she adds with a grin.[or]'I should see if I can find that dog you saw me with and see how different he'll feel in my cunny,' she says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says.  'Not like that, silly' he adds with a giggle.  'Just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident.  That means I can have all the fun I like and still stay a sexy vixen taur.'[or]She runs a hand along your body.  'You should try having a little fun with the horny vixen beast some time.  I promise this hot bod of mine will have you howling in ecstacy atop me,' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here and have your way with me, too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me.  This is a pretty sweet setup you have here,' she says, looking around the fortified bunker.[or]'Rick was the one who'd found the pink vixen somewhere.  From the way he talked about it, she was a whole lot of fun and I was jealous he'd found her.'  She runs her paws over her shapely body.  'But now that I am one, it's even better since I get to have all the fun she was having.  And more, cause I'm a hot taur as well.'[or]'I guess I'll have to get used to being Samantha now,' she says with a giggle.[at random]";
	otherwise if hp of Sam is 32:
		if a random chance of 1 in 3 succeeds and samformtalk is false:
			say "     'Rick was the one who'd found the pink vixen somewhere.  From the way he talked about it, she was a whole lot of fun and I was a bit jealous he'd found her.'  She runs her paws over her shapely body.  'But now that I am one, it's even better since I get to have all the fun SHE was having.  And more, cause I'm a hot taur as well.'";
			now samformtalk is true;
		otherwise:
			say "     [one of]'I managed to save most of my supplies, but I'll need the rest for myself.  This big body of mine's got a big appetite.  But at least you don't have to worry about feeding me.'[or]'I'm enjoying this new body of mine.  I feels so much better than my plain old one.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some males out there breed a few kits in me.  Just to see what it's like,' she adds with a grin.[or]'I should see if I can find that dog you saw me with and see how different he'll feel in my cunny,' she says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says.  'Not like that, silly' he adds with a giggle.  'Just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my accident.  That means I can have all the fun I like and still stay a sexy vixen taur.'[or]She runs a hand along your body.  'You should have some more fun with the horny vixen beast soon[if cocks of player > 0].  I want to have that hard cock of you stuffed inside me[otherwise].  Maybe you could even find a nice cock for yourself so you can mount me properly[end if],' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here and have your way with me, too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[or]'I'm glad you weren't kidding about having enough space for me.  This is a pretty sweet setup you have here,' she says, looking around the fortified bunker.[or]'I guess I'll have to get used to being Samantha now,' she says with a giggle.[at random]";
	otherwise if hp of Sam is 33:
		if a random chance of 1 in 3 succeeds and samformtalk is false:
			say "     'Rick was the one who'd found the pink vixen somewhere.  From the way he talked about it, she was a whole lot of fun and I was a bit jealous he'd found her.'  She runs her paws over her shapely body.  'But now that I am one, it's even better since I get to have all the fun SHE was having.  And more, cause I'm a hot taur as well.'";
			now samformtalk is true;
		otherwise:
			say "     [one of]'I don't need to worry about feeding me.  I can take care of myself,' the sexy vixen purrs.[or]'I'm much preferring this new body of mine.  I wonder why I ever resisted changing in the first place.'[or]'I'm looking forward to finding some males out there breed a few kits in me.  Just to see what it's like,' she adds with a grin.[or]'I should see if I can find that dog you saw me with and see how different he'll feel breeding me properly,' she says with a sly grin.'[or][if number of bunkered people + number of booked people > 3]'I've already gathered samples from the others here,' she says.  'Not like that, silly' he adds with a giggle.  'Just refined from blood samples they gave.'[otherwise]'If you happen to rescue any others who've been transformed, I'll take samples from them as well.'[end if][or]'My resistance treatment still seems to be holding out despite my big change.  That means I can have all the fun I like and still stay a sexy vixen taur.'[or]She runs a hand along your body.  'You should have some more fun with the horny vixen beast soon[if cocks of player > 0].  I can tell you want to stuff your cock inside me again[otherwise].  You just need to find yourself a cock and you can get to mounting me properly[end if],' she moans, pressing her furry melons against you while giving you a hug.[or]'There's a lot of sexy beasts out there.  You should let a few more of them have your way with you.  Then you can come back here and have your way with me, too.  That way, we both get to enjoy it.'[or]'I think I'm in the mood to find a [if a random chance of 1 in 3 succeeds]herm[otherwise if a random chance of 1 in 2 succeeds]female[otherwise]male[end if] next time.  Hopefully there's one around that I haven't tried before.'[or]'I make a pretty sexy Samantha, don't I?' she asks with a giggle, stretching her arms behind her head to show off her lovely breasts and perky, rosy nipples.[at random]";
	otherwise:
		say "ERROR-Sam-[hp of Sam]L: You should not be able to find me!";


Section 4 - Confrontation at the Mini-Lab

minilabfight is a number that varies.
featherready is a truth state that varies.  featherready is normally false.

instead of navigating Mini-Lab while hp of Sam is 4:
	if carried of eagle feather >= 2:
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
		if cocks of player > 0 or cunts of player > 0:
			say "     You cum several times as well, the wild show and the heady scent of musky sex exciting you greatly[if cocks of player > 0].  You stroke your pulsing meat, splattering your seed across the dirty floor as you drain your [ball size] balls[end if][if cunts of player is 1].  With several fingers pumping into your wanton pussy, you finger yourself through repeated climaxes[otherwise if cunts of player > 1].  With several fingers pumping into your wanton pussies, you finger yourself through repeated climaxes[end if].  As you see Rick finally finishing up, she dismounts from Sam, who's already starting to become visibly pregnant as her hypersexualized body rushes into action.  The tigertaur purrs at this and rubs the swelling belly, turning to give you a rather predatory look as she pants to regain her breath.  Rather than waiting to give her a chance to do the same to you, you grab your gear and make a break for it, leaving the two horny felines to enjoy their new life together.  You make your way back to the library feeling very sexually satisfied and with your thoughts obsessing over the idea of becoming a horny sex monster like them.  The scene you've just witnessed has left you feeling ";
		otherwise:
			say "     As you see Rick finally finishing up, she dismounts from Sam, who's already starting to become visibly pregnant as her hypersexualized body rushes into action.  The tigertaur purrs at this and rubs the swelling belly, turning to give you a rather predatory look as she pants to regain her breath.  Rather than waiting to give her a chance to do the same to you, you grab your gear and make a break for it, leaving the two horny felines to enjoy their new life together.  You make your way back to the library with your thoughts obsessing over the idea of becoming a horny sex monster like them.  The scene you've just witnessed has left you feeling ";
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
		increase carried of food by 1;
		increase carried of water bottle by 1;
		increase carried of chips by 1;
		increase carried of soda by 1;
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
	say "     Realizing what he means, you turn to the overturned mess of his work area, trying to locate unbroken vials among the sticky mess without getting caught in it yourself.  You are only able to find two intact in a during a quick search and grab them with a scrap of Sam's torn clothes.  They are labeled as '[link]#143 - Dragon - Male[as]Y[end link]' and '[link]#039 - Pink Vixen - Female[as]N[end link]'.  You've only got a moment to decide.  Which one will you give him - the dragon (Y) or the vixen (N)?";
	if the player consents:
		say "[samtf_maledragon]";
	otherwise:
		say "[samtf_femalevixen]";


to say samtf_maledragon:
	say "     Tossing the other aside, you pop open the vial for the dragon and pour it as best you can into the fleshy hole that his mouth has become.  It's shape distorts even as you toss the empty vial onto the rest of the mess, pushing forward into an elongating muzzle.  'Yes!  It's working...' he gurgles, his words becoming clearer again.  The flowing flesh starts to regain texture which soon forms into lizard-like scales.  His body grows more solid as his tauric limbs become strong and muscled, forming clawed feet.  His upper body slowly loses the breasts, forming manly pecs and abs instead, all covered in the same azure scales.  Still on his side, he reaches down with his tauric forepaws and grabs onto his enlarged cock, stroking it with moans of pleasure.  'Oh yeah... that's the spot,' he rumbles, stroking his ridged maleness as it spurts precum.";
	say "     His head forms an elongated dragon muzzle with golden eyes and darker scales towards the back where the ivory horns push forth.  He slides his long, forked tongue across his muzzle, panting as he strokes himself faster.  As his rear pushes forth a new, thick lizard tail ending in a dark spade and large, draconic wings burst from his back, his climax comes as well.  His forepaws pump at his thick member, spraying blasts of thick dragoncum across the dirty floor.  'Mmm... yeah!' he roars, cumming with obvious delight.";
	say "     You've moved back at this time, not quite sure if your friend's still in there, but as he releases his spent shaft and sags back on the floor, he smiles up at you.  'Thanks.  That was... close...  Here, help me up,' he says as he tries to rise, unused to having four legs.  He, like the tigertaur, is a little big for the cramped basement, but manages to get around.  He gathers together what he can that hasn't been destroyed or tainted by the nanite serum.  'Uhh... so... I hope your place has got higher ceilings,' he says with a grin and a chuckle.  After the recent tension, you can't help but laugh, telling him you might be able to find some space for him.  You head off together towards the bunker.";
	attempttowait;
	increase score by 50;
	increase humanity of player by 5;
	increase morale of player by 2;
	if humanity of player > 100, now humanity of player is 100;
	now hp of Sam is 10;
	move Sam to bunker;
	move player to bunker;


to say samtf_femalevixen:
	say "     Tossing the other aside, you pop open the vial for the vixen and pour it as best you can into the fleshy hole that his mouth has become.  It's shape distorts even as you toss the empty vial onto the rest of the mess, pushing forward into a slender muzzle.  'Yes!  It's working...' he gurgles, his words becoming clearer again.  The flowing flesh starts to regain texture which soon has a fuzz of pink fur growing in.  His body grows more solid as his tauric limbs become shapely and feminine, forming pawed feet.  The breasts there grow larger, perking up into lovely globes with round, rosy nipples.  Sam's increasingly vulpine body takes on more feminine curves, with a slender waist and shapely hips joining into her lower body, the whole being covered by the pink fur that's growing in.  Still on his side, you watch has his maleness recedes away and smaller breasts form along the underbelly.";
	say "     Noticing this change, Sam grabs the swelling bosom at her chest.  'Female?  I'm becoming female?' she asks in confusion.  Runing her tauric forepaws across her lower breasts, she moans.  'Mmm... that's nice.  Maybe this won't be so bad.'  She squirms her hips and yips in pleasure, hot juices running from her growing pussy.  Her head forms a shapely muzzle with deep pink at the end of it.  Long, cerise-coloured hair forms at the back of her head, flowing down over her shoulders as it grows in.  As she gains her fluffy pink tail, she yiffs loudly and cums, hot juices flowing from her new pussy.  'Oh baby... that's... that's so intense...' she moans as the last trembles of her first female orgasm come to a close.";
	say "     You've moved back at this time, not quite sure if your friend's still in there, but as she releases her spent shaft and sags back on the floor, she smiles up at you.  'Thanks.  That was... close...  Here, help me up,' she says as she tries to rise, unused to having four legs.  She, like the tigertaur, is a little big for the cramped basement, but manages to get around.  She gathers together what she can that hasn't been destroyed or tainted by the nanite serum.  'Uhh... so... I hope your place has got higher ceilings,' she says with a cute grin and a giggle.  After the recent tension, you can't help but laugh, telling her you might be able to find some space for her.  You head off together towards the bunker.";
	attempttowait;
	increase score by 50;
	increase humanity of player by 5;
	increase morale of player by 2;
	if humanity of player > 100, now humanity of player is 100;
	now hp of Sam is 30;
	move Sam to bunker;
	move player to bunker;



Section 5 - Sexy Times Sam

Part 1 - Basic System

instead of fucking the Sam:
	if hp of Sam >= 1 and hp of Sam <= 4:
		say "     'While it might be nice to do it with someone I know for a change, I get more than enough of that out in the city.  As it is, I need to save up my strength for the next time I go out.  How about a rain check on that?  When my pick up comes to get me out of here, you can come along and we can celebrate together.'";
	otherwise if lastfuck of Sam - turns < 6:
		say "     'Mmm... that's a tempting offer, but I was thinking of heading back out for some more... uh... sample gathering... with those sexy critters out there.'";
	otherwise if hp of Sam is 10:
		say "     Aren't you jumping the gun a little?  Shouldn't you talk to him and see how he's doing?";
	otherwise if hp of Sam is 30:
		say "     Aren't you jumping the gun a little?  Shouldn't you talk to her and see how she's doing?";
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
		now lastfuck of Sam is turns;
	otherwise if hp of Sam is 31:
		if cocks of player > 0:
			say "[samvixenfirsttime]";
		otherwise:
			say "[samvixenoral]";
		now hp of Sam is 32;
		now lastfuck of Sam is turns;
	otherwise if hp of Sam is 32:
		say "[samvixenoral]";
		if cocks of player > 0, now hp of Sam is 33;
		now lastfuck of Sam is turns;
	otherwise if hp of Sam is 33:
		if a random chance of 3 in 5 succeeds and cocks of player > 0:
			say "[samvixenfuck]";
		otherwise:
			say "[samvixenoral]";
		now lastfuck of Sam is turns;


Part 2 - Dragon Sex

to say samdragonfirsttime:
	say "     Sam grins at your offer and takes a hold of you in his big, strong arms.  'Mmm... I've been looking forward to this since we got here.'  He kisses you as best he can with his draconic muzzle, letting his tongue play across your lips before diving into your mouth.  As his tongue explores your palate, he lowers you onto one of the cots.  His front dragonpaws knead over your chest as he moves to climb atop you, rumbling in pleasure as he breaks the kiss to move into position.  His large, draconic cock is ready and waiting, dribbling precum across your loins as he climbs onto the strained cot.  Placing his forepaws on your shoulders, he grips you firmly and lines his cock up before thrusting it slowly into you.";
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
	say "     You wrap your arms around his chest, pulling yourself down onto his cock again and again as he thrusts into you.  'Mmm... look at you... such a slut for a dragon cock.  Wanting a proper fucking until you're stuffed full of my hot seed[if cunts of player > 0] and bred full of my whelps[end if],' he rumbles with a chuckle.  You kiss and lick at his azure scales, lavishing attention on this sexy beast who's mating you.  Lost in a haze of arousal, you can't help but agree with the dragontaur, your body lusting for the wonderous pleasure that you feel only his draconic cock can bring[if cocks of player > 0 or cunts of player > 0].  Soon you're thrashing in orgasm beneath him, cumming over and over again as he drives his meat into you[otherwise].  Soon you're thrashing in delight beneath him, your body aching to feel his release since your genderless body cannot have one of its own[end if][if cocks of player > 0].  Your spurting cock rubs against his smooth, firm scales, loving the feel of them pressed against you as your seed soaks you both[end if][if cunts of player > 0].  Your pussy clenches and tugs at his cock, milking at it in wanton need as you orgasm repeatedly[otherwise].  Your tight hole clenches and tugs at his cock, squeezing firmly around it as you're awash with ecstacy[end if].  Your [bodytype of player] body is sent into pleasure overload as the big taur drives hard into you one last time and releases his hot seed, blasting heavy spurts of thick seed into your [if cunts of player > 0]womb in an attempt to breed you[otherwise]bowels, bloating your belly with his virile seed[end if].[impregchance]";
	attempttowait;
	say "     Once he's finished up, he steps back and slides his cock free.  It twitches as it pops out, spraying a few last spurts onto your body.  He steps further up onto the cot to bring his spurting shaft to your face, marking it with several streaks of semen.  You moan weakly and wrap your lips around his cock, sucking the last of his load from it before he pulls away.  'You look so sexy after you've been fucked senseless.'  He runs a hand over your [bodytype of player] body and licks your cheek.  'You make such a fine slut.  You should go out into the city and let some of the creatures out there mount you.  Then you can come back to me and I can fuck you in that new body of yours as well,' he rumbles while fingering your creamy hole, making you shiver in delight.  As you rest and recover from the wild from, you find yourself thinking out finding some creatures to submit to out in the city.";
	increase libido of player by 15;
	if libido of player > 99, now libido of player is 99;


Part 3 - Vixen Sex

to say samvixenfirsttime:
	say "     Sam grins at your offer and takes a hold of you in his big, strong arms.  'Mmm... I've been looking forward to this since we got here.'  She kisses you as best she can with her vulpine muzzle, letting her tongue play across your lips before diving into your mouth.  As her tongue explores your palate, she lowers you onto one of the cots.  Her front foxpaws knead over your [bodytype of player] chest as she moves to climb atop you, murring in pleasure as she breaks the kiss to move into position.  Her hindquarters grind down atop your [cock size desc of player] cock, quite hard after that wild kiss, then shift into position.  Her wet vixen muff is ready and waiting, dripping juices down onto your loins as she climbs onto the strained cot.  Placing her forepaws on your shoulders, she grips you firmly and lines up with your stiff member before sliding down onto it slowly.";
	say "     Your [cock of player] cock slips into her with ease, her slick vagina eagerly accepting its first penis.  Her cunny quivers around you delightfully as you take her newfound virginity as she yips and yiffs in lustful ecstasy.  You moan and pant beneath her as she squirms in pleasure atop you.  'Ohhh... oh wow!  Mmmmm yeah, give it to me, baby.  Fuck that slutty vixen,' she yips, bouncing her hindquarters harder and faster as her excitement builds - and you love every moment of it.";
	attempttowait;
	say "     Her forepaws keep a firm grip on you, pinning you down onto the cot and keeping herself steady as she slams down onto your prick.  You thrust up into her each time she comes down, eagerly getting herself fucked like some wild beast in heat.  Despite her personal inexperience, it seems her body knows just what to do, with her inner walls squeezing and rippling across your [cock size desc of player] meat in so many delightful ways.  Pressing your face to the nearest of her many breasts, you wrap your lips around the rosy nipple.  You get a yip of surprise from her as you give it a nibble and start suckling.  After the frantic fucking becomes too much for Sam and she presses herself down hard onto your shaft one last time, you moan loudly and cum into her orgasming pussy, pumping your hot load into the sexy taur's untarnished womb, claiming it for the first time.";
	say "     Once you're finished up, she steps back slowly, a little weak-kneed as your cock slips free.  Her recently stuffed pussy quivers and leaks out a few trickles of your cum.  'Mmm... If you ever want another to, I'd love to have you in me again.  Give me a proper fucking like a vixen slut needs,' she gigles with a teasing grin.  She even turns around and raises her tail, giving you an eyeful of her puffy and stretched pussy with your fresh load leaking out of her.";


to say samvixenoral:
	if cocks of player > 0 and a random chance of 2 in 3 succeeds:
		say "     Sam runs her hands along your sides and then down to your loins.  Rubbing over your cock, she nibbles your ear.  'I was hoping to get a taste of this sexy meat of yours,' she moans.  Pushing you to take a seat on the cot, she lowers herself vixentaur body to the floor and nuzzles between your legs.  You run your hands through her soft hair and scritch her ears, getting a murr of pleasure from her.  She gives you a foxish grin and slowly slides her tongue along your shaft, making little licks across your [cock size desc of player] [cock of player] meat.  She continues to tease you, moving down to do the same to your balls, further exciting and frustrating your growing arousal.";
		attempttowait;
		say "     As she returns to your cock, you decide press her muzzle down onto your maleness, pushing it into her silky mouth.  She moans softly at this treatment and starts sucking and licking at your penis excitedly.  Clearly what she wanted all along, you drive your cock into her hot muzzle again and again, loving the feel of her sucking down on you.  Her teeth, which you'd except to be sharp in a fox's muzzle, are actually quite smooth and slide across your cock in a way that only further stimulates you.  Her agile tongue, soft palate and gripping throat feel wonderful as well.  The whole of her muzzle feels like a hot cunt around your cock with the added pleasure of her delightful tongue.  The sexy vixen's muzzle is clearly designed to give a wonderful blowjob and you eagerly take advantage of the opportunity to enjoy it.  And from the wet moans and muffled yips of pleasure from Sam's stuffed muzzle, she's certainly savouring it as well.  When you finally cum and blast your hot load down her throat, she eagerly swallows it all down and cums herself,  soaking her thighs without even touching herself.";
	otherwise:
		say "     Sam runs her hands across your body and nuzzles you with a happy murr.  'I was hoping you might want to help me out, sexy.  My poor muff's been feeling so achingly needy, but it'd be so much easier for you to reach it.  Would you be a sweetie and lick my juicy pussy until that ache goes away?' she says with a playful giggle, turning around and presenting her hindquarters to you by raising her tail and stretching her front paws across the ground.  With purely chivalrous intent (of course), you quickly agree to help out your poor, needy friend with her problem.  You move in behind her and run your paws over her sexy rump before sliding your fingers to her cunt and spreading those wet folds.  She is indeed quite juicy and ready, her feminine scent of arousal strong in your nose as you bring your mouth in and start licking and kissing her pussy.";
		attempttowait;
		say "     She moans and yips as your tongue plays across her sensitive folds, then finds its way to her clit.  As you slide your tongue across it over and over, her hips quiver and she shifts from paw to paw.  'Mmm... right there, hon.  Your poor foxy needs that so badly.'  You slip a few fingers into her vagina, pumping them in and out and rubbing along her inner walls.  You do your best to pleasure the horny vixen, wanting her to enjoy her new female body as much as possible.  And enjoy it she does as you tease her through several small orgasms before finally going wild in her juicy muff until you drive her to a loud, powerful orgasm that leaves your face soaked in her juices and the very satisfied vixen panting and moaning on the floor.  She stretches out and fondles her upper bosom while you, lustfully aroused by the taste and scent of her all over your face, [if cocks of player > 0]jerk yourself off onto her lower breasts while she watches you get off as well[otherwise if cunts of player > 0]finger yourself to a powerful orgasm of your own while she watches you get off as well[otherwise]lick up as much as you can and wipe it up with your hands to lick it off your fingers while the pleased vixen watches you enjoy her musky juices[end if].";

to say samvixenfuck:
	say "     Sam moans lustfully and presses her bosom against you as she hugs you tight.  'Mmm... I'm ready for more.  Best give this horny vixen what she needs - a good fucking and a hot dose of your thick cum,' she says with a grin as she pushes you down onto the cot.  'Horny vixens need fuckings.  It's a scientific fact,' she giggles as she rubs her forepaws across your chest before climbing up onto the cot with you.  She rubs her soft, sexy body down atop of yours, making sure to grind her hindquarters firmly against your [cock size desc of player] [cock of player] cock.  With your erection hard and throbbing between you both, she shifts her hips and gets you lined up before sinking herself down onto your stiff member eagerly.";
	say "     Your maleness slips into her with ease, her slick vagina eagerly accepting your penis into its warm embrace.  Her cunny quivers around you delightfully as she yips and yiffs in lustful ecstasy.  You moan and pant beneath her as she squirms in pleasure atop you, her six breasts and hard nipples rubbing down onto your [bodydesc of player] body.  'Oh yeah, that's just what this slutty vixen needs.  Mmm... give it to me hard and breed me,' she cries as she starts riding you hard and fast.";
	say "     Her forepaws keep a firm grip on your shoulders to help keep herself steady as she slams down onto your prick over and over.  You thrust up into her each time she comes down, eagerly getting herself fucked like some wild beast in heat.  Her inner walls squeeze and ripple across your [cock size desc of player] meat in so many delightful ways.  Samantha's clearly learning quickly and is making the most of her new body's sexual abilities.  Her vagina moves and slides across your hard flesh easily, but grips and squeezes as well, milking at your cock to build you towards what will surely be a powerful climax.  You bring your lips to one of her many breasts and start suckling at its rosy nipple, getting a moan from the lusty vixen.  As Sam's orgasm sends shivers of delight throughout her body, she slams down onto you one last time, letting her talented cunt spasm and tug at your cock frantically, milking at your cock until you groan loudly and cum hard, blasting your load to fill her needy womb with your seed.";
	say "     Once you're finished up, she slides off your spent shaft slowly, reluctantly releasing your cock.  She nuzzles you and gives you a passionate kiss before hopping off the bunk.  Turning around, she gives you a grin as she makes sure to show you your handiwork again - her well-fucked pussy dripping with your fresh load as a mix of your seed and her juices run down her thighs.  'Let's do this again soon, sweetie.  A slutty vixen like me will need plenty of hot cum to keep her happy and healthy,' she says with a grin, giving her rump a little shake at you before trotting off with a giggle.";


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