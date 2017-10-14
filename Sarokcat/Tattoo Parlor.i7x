Tattoo Parlor by Sarokcat begins here.

"Adds a new area to Flexible Survival with a possible npc and eventually some tattoos and piercings..."

Section 1- Tattoo Parlor

Tattoo Parlor is a room. It is fasttravel. It is private.

The description of Tattoo Parlor is "The painted dragon tattoo parlor stands empty, though there are obviously signs someone had stockpiled food and water for quite a while, most of the food has obviously been eaten, and what water there is left is of dubious quality. Looking around you see signs that whoever was here last has only been gone for a couple of days at best, probably they were hiding here as long as they could before venturing out into the city when their supplies ran low. The tattoo parlor itself is both large and clean, rather reminiscent of a barber shop with its large mirrors, hair dying equipment, and adjustable couches. Every bit of the walls not covered with mirrors, is devoted to all sorts of fantasy artwork, with everything from stylized dragons, to roaring felines, to biker gang symbols adorning the shop and displaying the different types of tattoos available.".

The invent of Tattoo parlor is { "dirty water" , "dirty water" , "dirty water" }.

instead of sniffing Tattoo Parlor:
	say "The tattoo parlor smells of smoke, alcohol and hyenas.";


Section 2 - Finding the parlor

tattoonpiercing is a situation.
The sarea of tattoonpiercing is "Red".



Instead of resolving tattoonpiercing:
	if tattoohunter is 0:
		say "Wandering through the red light district, you come across a strange barricade it looks like someone set up across the entrance to a small alley. A closer look reveals that while the barricade may be made up of all sorts of different items, including several large dumpsters, and piled furnishings, it is well made enough that you can't manage to find a way past it. Shrugging you hope it will keep whoever built it safe from the creatures roaming the city, though it is pretty likely that whoever they are has already succumbed to the infection quite a while ago given the state of things in the city.";
	else if tattoohunter is 1:
		say "Hunting through the red light district for the location Harold gave you, you wander the nearby streets growing increasingly frustrated as you realize it must be near here somewhere. Finally on your third trip around the area, you find yourself looking at the remains of a small makeshift barricade covering a small alley, and decide to take a closer look. The barricade itself looks fine on close inspection, and actually remarkably well constructed considering the mixture of materials used to make it, however it is obvious someone on the inside moved key pieces aside and opened the barricade up so they could leave. Moving past the open barricade, you spot a sign not far along in the alley, apparently advertising the entrance to the Painted Dragon Tattoo and piercing parlor. You grin at your successful find for a minute, before glancing back at the opened barricade and getting something of a bad feeling about the situation. Moving forward carefully you try the door to the parlor, only to find it unlocked, going inside you find the place to be eerily quiet, though it was obviously occupied recently enough. After spending several hours searching the place for any clue as to where Harold's friend vanished, you sigh and realize that you will have to return to the Palomino and let the unicorn bartender know that his friend isn't home, and hasn't been for several days, and that they are probably infected by now, though you make note of the location in case you have to come back later.";
		now Tattoo Parlor is known;
		now tattoohunter is 2;
		now tattoonpiercing is resolved;



Findingkara is a situation. The level of findingkara is 9.
The sarea of Findingkara is "Red".

Instead of resolving Findingkara:
	if tattoohunter is 3:
		say "Wandering absently through the red light district again, you hear a small commotion from a nearby alleyway, glancing over you spot one of those Herm Hyenas as it staggers out of the alleyway obviously exhausted. Spotting you the hyena staggers your way, and as you brace yourself for a fight, you note that the hyena looks a little different from most of the other hyenas you have seen so far. You blink as you take in the large number of piercings along the sides of the hyena's muzzle, and the rings hanging from its ears, and you find your eyes drawn to the strangely coloured patterns of fire and dragons that seem to shine as part of the beast's fur. 'Please, I need help, there are just too many of them for me...' The hyena says as shi stops just out of reach of your upraised weapon, the obviously exhausted hyena obviously easy prey for the creatures you can already hear heading this way in pursuit. Do you try to help the strange hyena, or do you get out of here before the creatures can catch you as well?";
		if player consents:
			Challenge "Leopardman";
			Challenge "Leopardman";
			Challenge "Leopardman";
			if lost is 0:
				say "'Wow that was amazing!' The hyena you saved gushes happily as she slips out of hiding, 'I would never have thought one person could be so strong! Though I guess I never would have thought this kind of thing could ever happen either.' Shi says with a smile and a shrug, as she moves over to the battlefield and hefts a small duffelbag that one of the Leopards dropped. 'Thanks a ton, it looks like they didn't even have a chance to do anything to the supplies I gathered,' She says with a happy hyena laugh as she checks the bags contents, 'It looks like I really do owe you a big favor now, though maybe some supplies would help show my appreciation,' She says with a smile on her muzzle, her strong hyena furred body shifting sexily as she stretches and pulls out a couple medkits and some food and hands them to you. 'And I have a store nearby where we can rest and recover too, and hey maybe I can even find a way to help pay you off there too,' Shi says with a happy grin, her piercings jingling slightly as she leads you down the streets of the red light district to a surprisingly familiar Tattoo parlor. ";
				say "Once inside, she looks the place over and sighs at the empty room, before introducing herself as Kara, the owner of the shop. Kara seems rather surprised when you mention Harold and the fact that he sent you here to look for her. A broad smile spreads across her hyena-like features as she clasps you close to her furry body in an exuberant hug. 'God! I am so glad to hear that the crazy bastard is still around as well, and a unicorn no less? That must be a sight to see!' She chuckles with amusement at the thought, before explaining that she holed up in her apartment above the shop for as long as possible before heading out into the city for supplies. Her eyes become slightly unfocused, and she pants slightly with lust as she explains her encounter with the hyena bikers, and how they pinned her down and rode her repeatedly until she was a proper little hyenaslut they could bring back to their gang. Her words get you somewhat excited as she talks about how she begged several of the other gang members to fuck her needy body until she finally managed to pull herself together. She sighs slightly as she continues, explaining how she headed back to her shop once she could, though she still finds herself thinking of herself as a hyena gang member even now, and she warns you that since she let them know where it was, other gang members might stop by the shop from time to time as well... at least she certainly hopes they will.. Kara says with a lusty grin on her hyena muzzle even as her aroused musk fills the air. Thanking the changed hyena tattooist for the story, you prepare to head back to let Harold know the news, though you find yourself wondering how he will take the news, even though Kara seems strangely content with her new sexy hyena-like form...";
				now kara is in Tattoo parlor;
				increase carried of medkit by 1;
				increase carried of food by 1;
				move player to Tattoo parlor;
				now tattoohunter is 4;
				now Findingkara is resolved;
			else:
				say "As you lie there trying to recover from your powerful experience with the sexy leopards, you notice a soft jingling as the hyena creeps up to make sure you are ok. 'Sorry about that,' shi says sadly as she helps you up. 'I have had a hell of a time so far in the city, and well, I just don't think I could take much more before giving in to the urges, so I hid.' She says with an embarrassed shrug, seemingly ashamed at having abandoned you to the tender mercies of the hunting cats. 'I have a shop nearby where we can rest though, c'mon...' Shi says, as she leads you down the streets of the red light district to a surprisingly familiar Tattoo parlor.[line break]";
				say "Once inside, she looks the place over and sighs at the empty room, before introducing herself as Kara, the owner of the shop. Kara seems rather surprised when you mention Harold and the fact that he sent you here to look for her. A broad smile spreads across her hyena-like features as she clasps you close to her furry body in an exuberant hug. 'God! I am so glad to hear that the crazy bastard is still around as well, and a unicorn no less? That must be a sight to see!' She chuckles with amusement at the thought, before explaining that she holed up in her apartment above the shop for as long as possible before heading out into the city for supplies. Her eyes become slightly unfocused, and she pants slightly with lust as she explains her encounter with the hyena bikers, and how they pinned her down and rode her repeatedly until she was a proper little hyenaslut they could bring back to their gang. Her words get you somewhat excited as she talks about how she begged several of the other gang members to fuck her needy body until she finally managed to pull herself together. She sighs slightly as she continues, explaining how she headed back to her shop once she could, though she still finds herself thinking of herself as a hyena gang member even now, and she warns you that since she let them know where it was, other gang members might stop by the shop from time to time as well... at least she certainly hopes they will... kara says with a lusty grin on her hyena muzzle even as her aroused musk fills the air. Thanking the changed hyena tattooist for the story, you prepare to head back to let Harold know the news, though you find yourself wondering how he will take the news, even though Kara seems strangely content with her new sexy hyena-like form...";
				now kara is in Tattoo parlor;
				move player to Tattoo parlor;
				now tattoohunter is 4;
				now Findingkara is resolved;
		else:
			say "You decide to leave well enough alone, and continue on your way, after all, what is one more hyena more or less in the city anyways?";
			now Findingkara is resolved;
	else:
		say "Wandering through the red light district, you spot evidence a group of hyenas were here recently, from the gang signs recently drawn in the area, and from the tire tracks and the smell of sex in the air, it seems like they not only were riding some bikes, but they found someone to have some fun with in the district. Shrugging slightly, since it is the red light district, you find yourself wondering where a group of hyenas found some bikes that still work in this crazy city, though the thought of hyenas in biker leathers seems strangely arousing as you continue along your way.";








Tattoo Parlor ends here.
