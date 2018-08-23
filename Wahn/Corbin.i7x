Version 1 of Corbin by Wahn begins here.
[Version 1 - Put into its own file]

[ HP states of Corbin                                                   ]
[   0: starting state                                                   ]
[   1: had oral sex with the player                                     ]
[   2: player caught him milking himself at night in the milking shed   ]
[   3: player fucked him                                                ]
[   4: his secret is out to the horsemen in the barracks                ]
[   5: player stopped the horsemen from fucking Corbin                  ]
[  90: player stood back and watched the horsemen gangbang Corbin       ]
[ 100: player attacked him, around as an encounter in the dry plains    ]

[ thirst of Corbin - Location                                           ]
[   0: not met                                                          ]
[   1: in the worker barracks                                           ]
[   2: in the milking shed                                              ]

[ libido of Corbin - father of his current baby                         ]
[   1: player                                                           ]
[   2: horseguy                                                         ]

[ Dexterity of Corbin - felinoid sex                                    ]
[   0: not met the cat                                                  ]
[   1: felinoid was interested, but was stopped                         ]
[   2: felinoid fucked Corbin                                           ]

[ CorbinPregnancy - pregnancy progress variable                         ]
[  0: not preggers                                                      ]
[  1: male player knocked him up (invisible)                            ]
[  2: male player knocked him up (slightly visible)                     ]
[  3: male player knocked him up (bulging belly)                        ]
[  4: after the kid's been born                                         ]

[ CorbinKidCounter - number of children with the player                 ]
[ CorbinPregCounter - timer for the next birth (48h from start)         ]

Corbin is a man. The HP of Corbin is normally 0. Corbin is in Worker Barracks.
The description of Corbin is "[CorbinDesc]".
The conversation of Corbin is { "Mew!" }.
CorbinPregnancy is a number that varies. [pregnancy progress variable - after 36 turns, the pregnancy becomes visible]
CorbinKidCounter is a number that varies.
CorbinPregCounter is a number that varies.
CorbinImpregnatingCock is a text that varies.

instead of sniffing Corbin:
	say "Corbin has a pleasant animalistic smell. Mostly male, like a stallion - but there's an undertone of a mare's musk.";

to say CorbinDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Corbin], THIRST: [thirst of Corbin], LIBIDO: [libido of Corbin], CORBINPREGNANCY: [CorbinPregnancy], CORBINKIDCOUNTER: [CorbinKidCounter], PREGCOUNTER [CorbinPregCounter] <- DEBUG[line break]";
	if HP of Corbin > 1 and HP of Corbin < 100:
		if CorbinPregnancy is 0 or CorbinPregnancy is 4:
			say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area (resulting from the perky breasts you know he has there). Corbin's chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
		else if CorbinPregnancy is 1:
			say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area (resulting from the perky breasts you know he has there). As you look at him, your thoughts run back to you fucking the equine cuntboy, thrusting into the tight pussy hidden by his pants. Corbin's chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
		else if CorbinPregnancy is 2:
			say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area (resulting from the perky breasts you know he has there) - and an even more interesting bulge starting to show on his stomach, the result of [if libido of Corbin is 1]your[else]someone's[end if] fertile seed being shot deep into his pussy. Corbin's chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
		else if CorbinPregnancy is 3:
			say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area (resulting from the perky breasts you know he has there) - and an even more interesting massive bulge on his stomach, showing his advanced state of pregnancy, the result of [if libido of Corbin is 1]your[else]someone's[end if] fertile seed being shot deep into his pussy. Corbin's chest is bare, showing off a well-built upper body. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
	else if HP of Corbin is 1:
		say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area - which (as you now know) stems from a pair of perky breasts over a tight pussy. His chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
	else:
		say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area. His chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";

instead of conversing the Corbin:
	if HP of Corbin < 4:
		say "     [one of]'Did anyone tell you yet that I'm the resident cocksucker here?' He gives a resigned shrug and adds, 'I'm good at it too - although it sometimes can get a bit annoying when everyone just thinks they can walk up and whip it out at any time. Blow one guy in the barn and suddenly there's a line... good that I like the like the taste.' He winks to you at that last bit.[or]'The farm is a nice place to be, with all that's going on. Not that we don't have our share of problems, but it's a far cry from what I've seen out there...'[at random]";
	else if HP of Corbin is 4:
		say "     'Damn, now everyone knows about me. It's just a question of time till they act on that. And I don't think I can resist becoming a total slut - just thinking about it makes me wet,' he says with a disconcerted frown.";
	else if HP of Corbin is 5:
		say "     [one of]'Thanks for helping me against the others, I really appreciate it. Now they know I'm not just a slut to be used when they want.'[or]'The farm is a nice place to be, with all that's going on. Not that we don't have our share of problems, but it's a far cry from what I've seen out there...'[at random]";
	else if HP of Corbin is 90:
		say "     You chat a bit with Corbin, noticing that he seems to be a bit down in general. As you ask him about that, he grimaces and says 'You're almost the only one who talked to me today with something other than 'Suck my cock' or 'I want to fuck you'. I like being an anthro horse, but not that everyone treats me like a brainless bimbo to be fucked!'";

instead of going east from Central Farm Square while (HP of Corbin < 2 and daytimer is night):
	move player to Milking Shed Main Room;
	say "     As you walk into the milking shed, you notice that even though it's night and the lights are off, the generator in the back is running. A chugging sound of working machinery comes from somewhere ahead. Curious, you walk along the long row of milking stalls, finding all of them empty - until you come to the next to last one, that is. Your cowboy friend Corbin is in there, his back turned to you and with his body in a bent-forward position, holding on to the metal railing at the back of the stall with one hand. A lantern resting on the floor illuminates his naked body in a dim light, revealing his shapely legs, well-rounded ass and muscular back.";
	say "     Taking in those attractive sights, you only notice a moment later that tubes of the milking apparatus dangle in the air on the front side of his body, twitching as something is sucked through them. Is he using that thing as a cock pump? You can't stop yourself from stepping forward to have a look. As you move up beside Corbin, you see that things aren't quite what you expected. He isn't a stallion at all, but has a rather wet mare's pussy between his legs into which he's thrusting a rubber dildo - and the two suction cups of the machine are attached to small but perky breasts just a bit above his genitals in the crotch area.";
	WaitLineBreak;
	say "     Moaning softly, his eyes closed as a surprising amount of milk is chugged away by the machine out of his small breasts, Corbin doesn't notice you at first and just keeps using the dildo on himself. Soon, he reaches his goal, gasping loudly as he orgasms, then almost jumps out of his skin as he opens his eyes and sees you right next to him. As he stumbles away to catch himself on the railing at the other side of the stall, the suction cups are pulled off his breasts, flopping through the air in a spray of fresh milk. The dildo also escapes his grasp, slipping out of the cuntboy's female bits to wetly thump on the ground. You notice that it's shaped like a horse-cock, flared tip and all.";
	say "     Still rather wide-eyed, Corbin turns to you 'Man - don't sneak up on me like that. How did you even get in here? Oh, I forgot to lock the door, didn't I?' As you nod, he looks from the dangling tube with its milking cups to the dildo and finally to his own dripping pussy. 'Guess I'm found out then - all the way. Having a pussy, breasts and all.' He sighs, then gives a shrug. 'You know, I've been coming here at night for weeks now to... take the edge off without anyone noticing. I don't mind being a horse, or a woman, down below - in fact, it's great. But... have you talked to the guys over in the barracks? They're good buddies, but if they'd know... I don't think I'd have a moment of rest with them coming over to 'visit' my bunk. And I doubt I could - or even would want to - stop them, not with how good this feels.' At that, he reaches down and strokes his swollen and dripping wet pussy lips, then looks up at you and gives a wink. 'Since you already know, we could... have some fun here sometime, just us two after dark? As for the others - please keep this quiet, ok?'";
	WaitLineBreak;
	say "     Wiping himself off with a towel, Corbin pulls his jeans back on and grabs a water bucket, rinsing the suction cups out in it and afterwards cleaning the horsecock dildo. He then takes it to a storage closet standing against the back wall, hiding it inside and locking the closet for good measure.";
	now lastfuck of Corbin is turns;
	now HP of Corbin is 2;

instead of going to Central Farm Square while (companion of player is Felinoid companion and HP of Corbin < 2 and daytimer is night and Dexterity of Corbin is 0):
	if debugactive is 1:
		say "DEBUG -> FELINOID + CORBIN WALKIN 1 <- DEBUG[line break]";
	say "     As you walk onto the central farm square, Klauz gives a short rumble from his throat and stops suddenly, raising his head to sniff the air. Whatever it is that drew the feral beast's attention, he's obviously very keen on it and huffs deeply, while his tail raises almost straight up and twitches with interest. A moment later, the large cat leaves your side and pads over to the entrance of the milking shed, only giving a casual glance back at you before he vanishes inside.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Follow your pet and see what he's up to.";
	say "     ([link]N[as]n[end link]) - Let him do his cat-things, he'll return eventually.";
	if player consents:
		LineBreak;
		say "     Following the large feline, you walk into the milking shed, immediately noticing that even though it's night and the lights are off, the generator in the back is running. A chugging sound of working machinery comes from somewhere ahead, where you also see the felinoid weave in and out of the many deep shadows in this place. Curious, you walk along the long row of milking stalls, finding all of them empty - until you come to the next to last one, that is. Your cowboy friend Corbin is in there, his back turned to you and with his body in a bent-forward position, holding on to the metal railing at the back of the stall with one hand. A lantern resting on the floor illuminates his naked body in a dim light, revealing his shapely legs, well-rounded ass and muscular back.";
		say "     Taking in those attractive sights, you only notice a moment later that tubes of the milking apparatus dangle in the air on the front side of his body, twitching as something is sucked through them. Is he using that thing as a cock pump? You're tempted to step forward and have a look - but before you can do so, Klauz is already stalking closer to Corbin on silent paws. He keeps sniffing the air, giving low rumbles from his throat and you can see the big cat's maleness get more erect by the second. Soon, the felinoid is right behind the horseman - at which point he stretches his head forward and gives the unsuspecting cowboy a lick between the legs. Confronted with someone making their presence known in such an intimate matter, Corbin whirls around - which is complicated a bit by the fact that there are two suction cups attached to the small but perky breasts just above his genitals. His female genitals at that - he isn't a stallion at all, but has a rather wet mare's pussy between his legs into which he was thrusting a rubber dildo.";
		WaitLineBreak;
		say "     Startled by the sudden appearance of a large feral beast in his 'private place', Corbin flinches back, which is enough to pull the suction cups off his breasts, flopping through the air in a spray of fresh milk. He tries to catch them, but the only thing that generates is more chaos, as he doesn't hold on to the dildo in his pussy at that moment, making it slip out. In between trying to juggle too many items at once, the horseman stumbles and falls on the ground, at which point the loudly purring Klauz makes his move, stepping right next to Corbin and rubbing his head affectionately against his naked form. From the cuntboy's reaction, you see that your feline pet must have gone all out with his special pheromones at the moment, as Corbin can't help but moan loudly as he lies back, relaxing visibly and stroking his pussy.";
		LineBreak;
		say "     You have little doubt what Klauz wants to do next...";
		say "     ([link]Y[as]y[end link]) - Let him mount Corbin.";
		say "     ([link]N[as]n[end link]) - Pull the cat off the horseman.";
		if player consents:
			LineBreak;
			say "     Eager to sink his spined cock into a ripe and ready pussy, your feline companion gives a lusty growl and steps over Corbin. The big cat gives the cowboy's chest a lick and rubs the side of his head against Corbin's cheek one last time, then bends his hind legs and gets ready to fuck his entranced partner. There is a breathless moan from Corbin as his wet and swollen opening is nudged by the tip of your companion's erection, followed by a loud roar from the big cat as he thrusts in deeply, adding another person to his long line of conquests. Klauz proceeds to fuck Corbin with the wild intensity of a feral beast, tail whipping through the air as he humps the cuntboy in a rapid pace.";
			WaitLineBreak;
			say "     Meanwhile, the equine farm worker is deep in the grip of his own lusts, driven into overdrive as they are by your feline companion's musk. Corbin gasps and pants loudly as he gives himself fully to his feral conqueror, with both legs hooked behind the big cat's and hands dug firmly into the felinoid's chest fur, holding on tightly. Between the pheromones, the hard erection rubbing his inner walls with its nubby spines and the simple reality of being mounted by such a large, virile animal, it doesn't take long before Corbin's moans rise to an almost shouted climax and he comes, soaking the big cat's crotch with squirted femcum. Klauz stops his thrusts for a short moment after that, giving a pretty self-satisfied purr and rubbing his furry cheeks against Corbin again, then he starts mating the cuntboy with undiminished intensity.";
			say "     Watching the hot coupling between the two unequal partners before you go on and on, with Corbin being driven to multiple screaming orgasms, one thing becomes clear - if the felinoid does pull someone under his spell, he certainly does an amazing job of taking care of them afterwards. Only when Corbin has been worn out almost completely, now just limply holding on to the big cat on top of him, does the lusty feline go all out in a rapid flurry of hard and deep thrusts until he himself roars out with his own climax. The large, furry orbs that are the big cat's balls twitch and pulse as spurt after spurt of his fertile seed splashes into Corbin's womb, filling him up with a huge load that eventually even squishes out around Klauz's shaft.";
			WaitLineBreak;
			say "     After he finishes cumming, the felinoid pulls out of Corbin's well-bred pussy with a wet slurp, then turns around and sniffs the cuntboy's crotch. With a satisfied grumble in his throat, the cat gives the cowboy's crotch a few quick licks before throwing himself on the ground beside his latest conquest for a post-coital nap. Meanwhile, Corbin slowly comes out of the pheromone-induced haze he was in, weakly raising his head and reaching down to touch his gaping pussy. Raising his hand and looking at the cum sticking to its fingers for a moment, he then turns his gaze over to you. 'Man - that... was intense. Is the big furball your pet? I - I think... wait - how did you two even get in here? Oooh, I forgot to lock the door, didn't I?' As you nod, he lets his head sink back to the ground and takes a few deep breaths, then says, 'Guess I'm found out then - all the way. Having a pussy and breasts - and letting myself get pounded like a bitch in heat.'";
			say "     Corbin sighs, then gives a shrug. 'You know, I've been coming here at night for weeks now to... take the edge off without anyone noticing. I don't mind being a horse, or a woman, down below - in fact, it's great. But... have you talked to the guys over in the barracks? They're good buddies, but if they'd know... I don't think I'd have a moment of rest with them coming over to 'visit' my bunk. And I doubt I could - or even would want to - stop them, not with how good this feels.' At that, he reaches down and strokes his swollen and cum-dripping pussy, then looks up at you and gives a wink. 'Since you already know, we could... have some fun here sometime, just us two after dark? Or just bring this sexy beast over... I certainly wouldn't mind being mounted by him again. As for the others - please keep this quiet, ok?'";
			now Dexterity of Corbin is 2;
		else:
			LineBreak;
			say "     Quickly entering the stall, you grab Klauz by the scruff of the neck and pull him aside. It's not an easy task, given the sheer size of the beast, but thankfully he relents after a moment of leaning stoically against what force you can bring to bear. With a somewhat annoyed low growl, the big cat pads out of sight without looking back, somehow creating the expression that he never wanted Corbin in the first place. Almost as if you didn't stop him, but he decided for himself that he wanted to go somewhere else. With the felinoid now gone, you bend down and take the dildo that Corbin had been using from the ground. You notice that it's shaped like a horse-cock, flared tip and all.";
			say "     As you stand there, inspecting the sex toy, Corbin slowly comes out of the pheromone-induced haze he was in. 'Man - that big cat is your pet? He really sneaked up on me... wait - how did you even get in here? Oh, I forgot to lock the door, didn't I?' As you nod, he looks from the dangling tube with its milking cups to the dildo and finally to his own dripping pussy. 'Guess I'm found out then - all the way. Having a pussy, breasts and all.' He sighs, then gives a shrug. 'You know, I've been coming here at night for weeks now to... take the edge off without anyone noticing. I don't mind being a horse, or a woman, down below - in fact, it's great. But... have you talked to the guys over in the barracks? They're good buddies, but if they'd know... I don't think I'd have a moment of rest with them coming over to 'visit' my bunk. And I doubt I could - or even would want to - stop them, not with how good this feels.' At that, he reaches down and strokes his swollen and dripping wet pussy lips, then looks up at you and gives a wink. 'Since you already know, we could... have some fun here sometime, just us two after dark? As for the others - please keep this quiet, ok?'";
			now Dexterity of Corbin is 1;
		WaitLineBreak;
		say "     Wiping himself off with a towel, Corbin pulls his jeans back on and grabs a water bucket, rinsing the suction cups out in it and afterwards cleaning the horsecock dildo. He then takes it to a storage closet standing against the back wall, hiding it inside and locking the closet for good measure.";
		now HP of Corbin is 2;
		now lastfuck of Corbin is turns;
		move player to Milking Shed Main Room;
	else:
		LineBreak;
		say "     The cat can look after himself generally, and the farm is a pretty peaceful place in today's world, so you just leave Klauz be. He'll return eventually, as he always does.";
		now lastfuck of Corbin is turns;
		move player to Central Farm Square;

instead of going to Central Farm Square while (companion of player is Felinoid companion and HP of Corbin > 1 and HP of Corbin < 100 and daytimer is night and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "DEBUG -> FELINOID + CORBIN WALKIN REPEAT <- DEBUG[line break]";
	say "     As you walk onto the central farm square, Klauz gives a short rumble from his throat and stops suddenly, raising his head to sniff the air. Whatever it is that drew the feral beast's attention, he's obviously very keen on it and huffs deeply, while his tail raises almost straight up and twitches with interest. A moment later, the large cat leaves your side and pads over to the entrance of the milking shed, only giving a casual glance back at you before he vanishes inside.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Follow your pet and see what he's up to.";
	say "     ([link]N[as]n[end link]) - Let him do his cat-things, he'll return eventually.";
	if player consents:
		LineBreak;
		say "     You can see where this is going from a mile away, so you follow the large feline into the milking shed, immediately noticing that even though it's night and the lights are off, the generator in the back is running. A chugging sound of working machinery comes from somewhere ahead, where you also see Klauz weave in and out of the many deep shadows in this place. Sounds like Corbin is at it again with one of his nightly milking sessions. Walking along the long row of milking stalls, you find all of them empty - until you come to the next to last one... where your cowboy friend Corbin is standing in a bent-forward position, holding on to the metal railing at the back of the stall with one hand. A lantern resting on the floor illuminates his naked body in a dim light, revealing his shapely legs, well-rounded ass and muscular back.";
		say "     Taking in those attractive sights, you only notice a moment later that tubes of the milking apparatus dangle in the air on the front side of his body, twitching as the cuntboy's creamy milk is sucked through them. Before you can do or say anything, the felinoid is already stalking closer to Corbin on silent paws. He keeps sniffing the air, giving low rumbles from his throat and you can see the big cat's maleness get more erect by the second. Soon, Klauz is right behind the horseman - at which point he stretches his head forward and gives the unsuspecting cowboy a lick between the legs. Confronted with someone making their presence known in such an intimate matter, Corbin whirls around - which is complicated a bit by the fact that there are two suction cups attached to the small but perky breasts just above his genitals. His female genitals - a rather wet mare's pussy between his legs into which he was thrusting a rubber dildo.";
		WaitLineBreak;
		say "     Startled by the sudden appearance of a large feral beast in his 'private place', Corbin flinches back, which is enough to pull the suction cups off his breasts, flopping through the air in a spray of fresh milk. He tries to catch them, but the only thing that generates is more chaos, as he doesn't hold on to the dildo in his pussy at that moment, making it slip out. In between trying to juggle too many items at once, the horseman stumbles and falls on the ground, at which point the loudly purring felinoid makes his move, stepping right next to Corbin and rubbing his head affectionately against his naked form. From the cuntboy's reaction, you see that your feline pet must have gone all out with his special pheromones at the moment, as Corbin can't help but moan loudly as he lies back, relaxing visibly and stroking his pussy.";
		LineBreak;
		say "     You have little doubt what Klauz wants to do next...";
		say "     ([link]Y[as]y[end link]) - Let him mount Corbin.";
		say "     ([link]N[as]n[end link]) - Pull the cat off the horseman.";
		if player consents:
			LineBreak;
			say "     Eager to sink his spined cock into a ripe and ready pussy, your feline companion gives a lusty growl and steps over Corbin. The big cat gives the cowboy's chest a lick and rubs the side of his head against Corbin's cheek one last time, then bends his hind legs and gets ready to fuck his entranced partner. There is a breathless moan from Corbin as his wet and swollen opening is nudged by the tip of your companion's hard erection, followed by a loud roar from the big cat as he thrusts in deeply, adding another person to his long line of conquests. Klauz proceeds to fuck Corbin with the wild intensity of a feral beast, tail whipping through the air as he humps the cuntboy in a rapid pace.";
			WaitLineBreak;
			say "     Meanwhile, the equine farm worker is deep in the grip of his own lusts, driven into overdrive as they are by your feline companion's musk. Corbin gasps and pants loudly as he gives himself fully to his feral conqueror, with both legs hooked behind the big cat's and hands dug firmly into the felinoid's chest fur, holding on tightly. Between the pheromones, the hard erection rubbing his inner walls with its nubby spines and the simple reality of being mounted by such a large, virile animal, it doesn't take long before Corbin's moans rise to an almost shouted climax and he comes, soaking the big cat's crotch with squirted femcum. Klauz stops his thrusts for a short moment after that, giving a pretty self-satisfied purr and rubbing his furry cheeks against Corbin again, then he starts mating the cuntboy with undiminished intensity.";
			say "     Watching the hot coupling between the two unequal partners before you go on and on, with Corbin being driven to multiple screaming orgasms, one thing becomes clear - if the felinoid does pull someone under his spell, he certainly does an amazing job of taking care of them afterwards. Only when Corbin has been worn out almost completely, now just limply holding on to the big cat on top of him, does the lusty feline go all out in a rapid flurry of hard and deep thrusts until he himself roars out with his own climax. The large, furry orbs that are the big cat's balls twitch and pulse as spurt after spurt of his fertile seed splashes into Corbin's womb, filling him up with a huge load that eventually even squishes out around Klauz's shaft.";
			WaitLineBreak;
			say "     After he finishes cumming, the felinoid pulls out of Corbin's well-bred pussy with a wet slurp, then turns around and sniffs the cuntboy's crotch. With a satisfied grumble in his throat, the cat gives the cowboy's crotch a few quick licks before throwing himself on the ground beside his latest conquest for a post-coital nap. Meanwhile, Corbin slowly comes out of the pheromone-induced haze he was in, weakly raising his head and reaching down to touch his gaping pussy. Raising his hand and looking at the cum sticking to its fingers for a moment, he then looks over to you. 'Man - that... was intense. [if Dexterity of Corbin is 1]I was wondering how it'd feel to have him hump my pussy since the last time this big furball came along with you. And I got to tell you... he's fucking great! [else]I just can't get enough of this big furball's prick! [end if]Man, I really let myself get pounded like a bitch in heat.'";
			now Dexterity of Corbin is 2;
			now lastfuck of Corbin is turns;
		else:
			LineBreak;
			say "     Quickly entering the stall, you grab Klauz by the scruff of the neck and pull him aside. It's not an easy task, given the sheer size of the beast, but thankfully he relents after a moment of leaning stoically against what force you can bring to bear. With a somewhat annoyed low growl, the big cat pads out of sight without looking back, somehow creating the expression that he never wanted Corbin in the first place. Almost as if you didn't stop him, but he decided for himself that he wanted to go somewhere else. With the felinoid now gone, you bend down and take the dildo that Corbin had been using from the ground. You notice that it's shaped like a horse-cock, flared tip and all.";
			say "     As you stand there, inspecting the sex toy, Corbin slowly comes out of the pheromone-induced haze he was in. 'Phew, that musk of his is just... out of this world. [if Dexterity of Corbin is 1]I wonder how it'd feel to have him actually mount me...'[else]Next time, you can let him just go for it... I don't mind. Just thinking about the spines on his shaft makes me all weak-kneed and wet.'[end if] Wiping himself off with a towel, Corbin pulls his jeans back on and grabs a water bucket, rinsing the suction cups out in it and afterwards cleaning the horsecock dildo. He then takes it to a storage closet standing against the back wall, hiding it inside and locking the closet for good measure.";
			if Dexterity of Corbin is 0:
				now Dexterity of Corbin is 1;
		move player to Milking Shed Main Room;
	else:
		LineBreak;
		say "     The cat can look after himself generally, and the farm is a pretty peaceful place in today's world, so you jut leave Klauz be. He'll return eventually, as he always does.";
		now lastfuck of Corbin is turns;
		move player to Central Farm Square;

instead of going southwest from Central Farm Square while (HP of Corbin is 4 and daytimer is day and thirst of Corbin is 1):
	move player to Worker Barracks;
	say "     As you walk into the barracks, you notice a group of horsemen standing around Corbin in the back, blocking him in with his back to one of the bunk beds. Their leader is saying '...keeping your pussy from us. You've even been fucking around with that stranger instead of one of us[if CorbinPregnancy > 1] and even let him knock you up[end if].' Corbin replies with 'Yes, but -', only to be interrupted by the horseman farmhand almost immediately. 'What, do you think we're not good enough for you? I guess we'll have to show show this little slut what he's been missing, don't we guys?' There is a general murmur of agreement and you hear the sound of a zipper or two being pulled down.";
	say "     [bold type]Do you just want to stand back and let this unfold as it's about to, or do you step in and show those horsemen how to treat Corbin right if they don't want a beating?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stand Back and let it happen.";
	say "     ([link]N[as]n[end link]) - Step in.";
	if player consents: [watch]
		LineBreak;
		say "     With you just watching, they have Corbin on one of the beds in short order and strip off his clothes while holding him down. 'You know you want a real man's cock to fuck you,' the leader of the little mob tells the equine cuntboy as he pushes two fingers in and out of his sopping wet pussy. 'At least your body knows what it needs. And I'm gonna give it to you!' With that, the large horseman climbs on the bed and slaps his thick cock against Corbin's pubic mound with a meaty thud or two. Then he positions his flared equine shaft at the transgendered cowboy's nether lips and thrusts in, grunting in satisfaction as he buries his manhood deep. Corbin can't stop himself from moaning loudly as the other farm-worker starts to fuck him hard, pounding his pussy with rapid thrusts.";
		say "     For some time, grunts, moans and the sounds of the horseman's balls hitting the cuntboy's crotch fill the barracks, finally building up to a shouted 'Uh uh uuuuh - I'm gonna fill you up, slut!' as Corbin's fucker slams forward one last time and floods the equine cowboy's womb with a deluge of cum. After he finishes coming, the horseman then pulls out unceremoniously and is immediately replaced by another, who sinks his own shaft into Corbin's freshly bred hole with a wet squishy noise and starts to fuck him. This continues for quite a while, with all of the men taking a turn, or even two, before they allow the totally exhausted and sticky cuntboy some rest.";
		now lastfuck of Corbin is turns;
		now HP of Corbin is 90;
	else: [fight]
		now horsefight is 2;
		LineBreak;
		say "     Getting a grip on the shoulder of the farmhand preparing to fuck Corbin, you pull him back, much to the annoyance of the muscled equine. Enraged at you cock-blocking him, he comes at you with balled fists.";
		LineBreak;
		let GroupFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and GroupFightCounter < 3: [runs for 3 times (for example) or until the player loses or flees]
			if GroupFightCounter is 1:
				say "     One of the group of horsemen is out of the fight, though another steps right up.";
			else if GroupFightCounter is 2:
				say "     That's a second one of the group of horsemen out of the fight. But still, another equine farmhand steps right up, hands raised in a boxing pose.";
			now inasituation is true;
			challenge "Horseman";
			increase GroupFightCounter by 1;
		if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "[LoseInBarracksfight]";
		else if fightoutcome is 30: [fled]
			say "[RunFromBarracksfight]";
		else if fightoutcome < 20: [player won]
			say "     With you already having knocked out three of their buddies, the other farmhands don't look quite as eager to be the next one in line. There's a moment in which looks go back and forth between them, then most of them pull away from you. One guy, on suddenly finding himself standing in the front after everyone stepped back, says 'Okay okay - you win. He's all yours.'";
			say "     The confrontation over, the gathered horsemen help up their bruised buddies and go back to what they were doing before. That just leaves you and a pretty relieved-looking Corbin standing in the bunks area. He hugs you close, then says 'Thank you. That'll show them I'm not just a slut to be used.' He kisses you, then lets his hand wander down to your crotch, giving it a squeeze as he adds 'Not that I'm opposed to regular rolls in the hay - with the right person and on my schedule, not theirs.' With a suggestive wink, the cowboy cuntboy saunters over to his bed and lies back on it, grabbing a magazine to read.";
			now HP of Corbin is 5;
		now inasituation is false;
		now horsefight is 0;

instead of going southwest from Central Farm Square while (CorbinPregnancy is 4	and daytimer is day):
	if libido of Corbin is 1: [player was the father]
		say "     As you enter the barracks, Corbin quickly comes up to you and gives you a hug. 'I gave birth while you were gone... and I have to say - being a mother is amazing. Carrying a new life inside yourself and then bringing it into the world.' Smiling, he waves over a little boy in his early teens and introduces you to your child, who looks like a [CorbinImpregnatingCock].";
	else: [a horseman was the father]
		say "     As you enter the barracks, Corbin quickly comes up to you and gives you a hug. 'I gave birth while you were gone... and I have to say - being a mother is amazing. Carrying a new life inside yourself and then bringing it into the world.' Smiling, he waves over a little boy in his early teens and introduces you to his horseman child.";
	now CorbinPregnancy is 0;

instead of going east from Central Farm Square while (CorbinPregnancy is 4	and daytimer is night):
	if libido of Corbin is 1: [player was the father]
		say "     As you enter the milking shed, Corbin quickly comes up to you and gives you a hug. 'I gave birth while you were gone... and I have to say - being a mother is amazing. Carrying a new life inside yourself and then bringing it into the world.' Smiling, he tells you that your child is in the barracks, a sweet little boy in his early teens who looks like a [CorbinImpregnatingCock].";
	else: [a horseman was the father]
		say "     As you enter the barracks, Corbin quickly comes up to you and gives you a hug. 'I gave birth while you were gone... and I have to say - being a mother is amazing. Carrying a new life inside yourself and then bringing it into the world.' Smiling, he tells you that your child is in the barracks, a sweet little horseman boy in his early teens.";
	now CorbinPregnancy is 0;

to say LoseInBarracksfight:
	say "     With you out of action, there isn't anything left so stop the horny horsemen. In short order, they have Corbin on one of the beds and strip off his clothes while holding him down. 'You know you want a real man's cock to fuck you,' the leader of the little mob tells the equine cuntboy as he pushes two fingers in and out of his sopping wet pussy. 'At least your body knows what it needs. And I'm gonna give it to you!' With that, the large horseman climbs on the bed and slaps his thick cock against Corbin's pubic mound with a meaty thud or two. Then he positions his flared equine shaft at the transgendered cowboy's nether lips and thrusts in, grunting in satisfaction as he buries his manhood deep. Corbin can't stop himself from moaning loudly as the other farm-worker starts to fuck him hard, pounding his pussy with rapid thrusts.";
	say "     For some time, grunts, moans and the sounds of the horseman's balls hitting the cuntboy's crotch fill the barracks, finally building up to a shouted 'Uh uh uuuuh - I'm gonna fill you up, slut!' as Corbin's fucker slams forward one last time and floods the equine cowboy's womb with a deluge of cum. After he finishes coming, the horseman then pulls out unceremoniously and is immediately replaced by another, who sinks his own shaft into Corbin's freshly bred hole with a wet squishy noise and starts to fuck him. This continues for quite a while, with all of the men taking a turn, or even two, before they allow the totally exhausted and sticky cuntboy some rest.";
	now lastfuck of Corbin is turns;
	now HP of Corbin is 90;

to say RunFromBarracksfight:
	say "     As you break away from the fight, the horseman you were facing doesn't really try to follow you, content in having driven you off. He's got other, more interesting things to do and immediately rejoins the group around the bunk beds. Soon after, grunts, moans and cheers echo out of the barracks building as they take turns with their new barracks slut.";
	move player to Central Farm Square;
	now HP of Corbin is 90;

An everyturn rule:
	if CorbinPregCounter is 1:
		if Corbin is in Worker Barracks and player is in Worker Barracks:
			say "     Suddenly, there is a gasp from Corbin and he yells 'It's coming!' Rushing over to the cuntboy who's panting and holding his pregnant belly, you can see a large patch of wetness on the crotch of his jeans - amniotic fluid from his womb that shows that this isn't a false alarm. Quickly guiding him over to the nearest bed, you help him get out of his clothes and sit beside him, holding his hand as he spreads his legs.";
			if libido of Corbin is 2: [horseman child]
				say "     Soon, the contractions come quicker and quicker, and then a little horseman foal slides out of Corbin's stretched vagina. You quickly grab Corbin's shirt from the floor and wipe the newborn down, then put it up against the transgendered cowboy's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
			else if libido of Corbin is 1: [player's kid]
				say "     Soon, the contractions come quicker and quicker, and then a little [CorbinImpregnatingCock] baby slides out of Corbin's stretched vagina. You quickly grab Corbin's shirt from the floor and wipe the newborn down, then put it up against the transgendered cowboy's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
			now CorbinPregnancy is 0; [reset]
		else if Corbin is in Milking Shed and player is in Milking Shed:
			say "     Suddenly, there is a gasp from Corbin and he yells 'It's coming!' Rushing over to the cuntboy who's panting and holding his pregnant belly, you can see a large patch of wetness on the crotch of his jeans - amniotic fluid from his womb that shows that this isn't a false alarm. Quickly guiding him over a pile of straw to lie down on, you help him get out of his clothes and sit beside him, holding his hand as he spreads his legs.";
			if libido of Corbin is 2: [horseman child]
				say "     Soon, the contractions come quicker and quicker, and then a little horseman foal slides out of Corbin's stretched vagina. You quickly grab Corbin's shirt from the floor and wipe the newborn down, then put it up against the transgendered cowboy's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
			else if libido of Corbin is 1: [player's kid]
				say "     Soon, the contractions come quicker and quicker, and then a little [CorbinImpregnatingCock] baby slides out of Corbin's stretched vagina. You quickly grab Corbin's shirt from the floor and wipe the newborn down, then put it up against the transgendered cowboy's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
			now CorbinPregnancy is 0; [reset]
		else:
			say "You have a strange feeling in your body, as if you somehow just know that a new life has entered this world. Maybe you should go back to the McDermott farm and check with Corbin.";
			now CorbinPregnancy is 4; [so he can tell the player about their kid in the next meeting]
		increase CorbinKidCounter by 1;
		now CorbinPregCounter is 0; [reset]
		now libido of Corbin is 0; [reset]
		now CorbinImpregnatingCock is " ";
	else if CorbinPregCounter is 12:
		now CorbinPregnancy is 3; [very visible pregnancy]
	else if CorbinPregCounter is 24:
		now CorbinPregnancy is 2; [visible pregnancy]
		if HP of Corbin < 4: [his secret isn't out yet]
			now HP of Corbin is 4; [with his visible pregnancy, it becomes obvious that something is going on]
	if CorbinPregCounter > 1:
		decrease CorbinPregCounter by 1;
	if daytimer is night and thirst of Corbin is 1:
		move Corbin to Milking Shed Main Room;
		now thirst of Corbin is 2;
	else if daytimer is day and thirst of Corbin is 2:
		move Corbin to Worker Barracks;
		now thirst of Corbin is 1;

instead of fucking the Corbin:
	if lastfuck of Corbin - turns < 6:
		say "     As you approach Corbin, he immediately sees the lust-filled twinkle in your eyes. He smiles at you, but gives a quick shake of his head. 'Sorry, I need a break for now... later, ok?'";
	else:
		say "     You walk over to Corbin, who gives you a good look and asks 'What did you have in mind?'";
		LineBreak;
		say "[CorbinSexMenu]";

to say CorbinSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your cowboy friend's mouth to good use";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put your cowboy friend's mouth to good use";
	[]
	if (HP of Corbin > 1):
		choose a blank row in table of fucking options;
		now title entry is "Finger his pussy";
		now sortorder entry is 3;
		now description entry is "Finger-fuck Corbin's pussy to make him cum";
	[]
	if (HP of Corbin > 1 and player is male):
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 4;
		now description entry is "Fill the pussyboy with your cock";
	[]
	if (HP of Corbin > 1 and player is male):
		choose a blank row in table of fucking options;
		now title entry is "Take Corbin's ass";
		now sortorder entry is 5;
		now description entry is "Fill your cowboy friend's ass with your cock";
	[]
	if (HP of Corbin > 1):
		choose a blank row in table of fucking options;
		now title entry is "Milk Corbin";
		now sortorder entry is 6;
		now description entry is "Milk the equine cuntboy";
	[]
	if (HP of Corbin > 1 and companion of player is felinoid companion and Corbin is in Milking Shed Main Room):
		choose a blank row in table of fucking options;
		now title entry is "Let Corbin mount Klauz";
		now sortorder entry is 7;
		now description entry is "Allow your pet to be mounted by the cuntboy.";
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
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if (nam is "Have him blow your cock"):
					say "[CorbinSex1]";
				else if (nam is "Have him lick your pussy"):
					say "[CorbinSex2]";
				else if (nam is "Finger his pussy"):
					say "[CorbinSex3]";
				else if (nam is "Fuck his pussy"):
					say "[CorbinSex4]";
				else if (nam is "Take Corbin's ass"):
					say "[CorbinSex5]";
				else if (nam is "Milk Corbin"):
					say "[CorbinSex6]";
				else if (nam is "Let Corbin mount Klauz"):
					say "[CorbinSex7]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the equine cowboy, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say CorbinSex1: [cock sucked by Corbin]
	say "     As you ask the equine cowboy for a blowjob, he chuckles and says 'Want some attention by this farm's best cocksucker, hm?' Smiling, he crouches down, his hands already on your crotch. In no time at all, he's got your clothes out of the way and the strong fingers of his hand on your manhood. Stroking it till it's fully hard, he looks up at you, then kisses the tip and slides his lips down your shaft. Aaah, that feels great. Corbin teases your shaft with his tongue as he goes deeper and deeper, with his hand meanwhile cupping and fondling your balls. Finally his nose bumps against your crotch, the horseboy's breath hot against your skin as he holds all of your cock in his mouth.";
	say "     Running your hands through the cowboy's hair, you close your eyes and moan deeply as he starts to bob up and down on your shaft. He really is an expert on this, skillfully pleasing you with his lips and tongue while at the same time touching and stroking the rest of your body. At one point, he pulls off your cock, giving you a moment's pause as you wonder what he'll do next, then he holds up your penis and focuses all his attention on your balls for a moment. Playing with them, licking them, taking one then the other into his mouth... you're panting in lust almost instantly. Then it's back to cocksucking again, feeling those lips around your shaft, the urge to cum quickly rising inside you. Moaning that you're about to cum makes him speed up a bit, eagerly working to get you off, then swallowing blast after blast of your cum as it pulses into his mouth.";
	say "     Corbin keeps softly sucking on your manhood until the spurts of cum slowly ebb out, then pulls off and gives a last long lick up over your balls and the underside of your cock before he stands up. He smiles at you still breathing heavily, then says 'There, how was that?'";
	now lastfuck of Corbin is turns;

to say CorbinSex2: [cunt licked by Corbin]
	say "     As you ask the equine cowboy for some oral attention, he chuckles and says 'A lady wanting my services - let's see if I still know my way around after all the guys bugging me for blowjobs constantly.' Smiling, he crouches down, his hands already on your crotch. In no time at all, he's got your clothes out of the way and the strong fingers of his hand gently touching your pubic mound. He strokes softly over your sensitive pussy lips, smiling up at you as that makes you give a small moan. Working some magic with his fingers, he rubs and touches you, getting you pretty excited in no time at all. Then he spreads your nether lips, leaning his head forward to run his tongue over your open pussy. Man, he really knows what he does, showing a deep insight in how a woman likes to be touched. Rubbing and licking erogenous zones you barely knew you had, he keeps you going, panting and moaning, for quite a while until you finally reach the point of no return. With a loud gasp, you orgasm, dripping female juices over his fingers.";
	say "     Corbin still keeps going, fondling your lips as you shiver in pleasure and slurps up your femcum. When your orgasm slowly ebbs out, he gives your pussy a last long lick, then stands up. He smiles at you still breathing heavily, then says 'There, how was that?'";
	now lastfuck of Corbin is turns;

to say CorbinSex3: [Corbin's cunt licked/fingered]
	if thirst of Corbin is 1: [in the barracks]
		if HP of Corbin is 2 or HP of Corbin is 3: [player fucked him - or just saw him in the milking shed, his pussy still a secret]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch - then he realizes where you are, stepping backwards and looking around with concern in his eyes. He says in a low whisper 'Phew - no one noticed. Please, we can't do this here.' He bites his lip, then takes a deep breath, fighting down his arousal 'No, we really can't - later, in the milking shed tonight, ok?'";
			say "     Do you accept this ([link]Y[as]y[end link]), or proceed anyways? ([link]N[as]n[end link])";
			if player consents:
				say "     After a last grope at Corbin's crotch, you nod and leave him be for now.";
			else:
				say "     Not deterred from doing what you want by the cuntboy's words, you move to stand close again, this time pushing your hand under the band of his pants before he can stop you. As your fingers touch his sensitive pussy lips and dip in between them, a needful moan escapes the equine cowboy's lips and all his resistance melts away in moments. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too.";
				say "     After some more stroking and fingering Corbin's pussy, you kneel down to pop open the button of his jeans, then lower the zipper and pull them down his legs. There's a murmur in the room as the cuntboy's swollen nether lips and the perky breasts on his crotch come into sight. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it and being rewarded with a squirt of tasty milk. You drink several swallows from this breast, then the other, pleased at the look of bliss coming over Corbin's face as you suckle from him. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets.";
				say "     Letting go of his breasts and turning your attention to Corbin's female bits, you give him a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's panting and squirming in arousal, his hands grabbing your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he says with a bit of a pained voice, 'Did you have to do that - here?' With a concerned look at the group of horny horsemen in the barracks leering at him, he pulls up his jeans and rushes out the back door of the barracks.";
				move Corbin to Milking Shed Main Room;
				now thirst of Corbin is 2;
				now HP of Corbin is 4; [he's 'out' to the horsemen - who're starting to get interested]
				now lastfuck of Corbin is turns;
		else if HP of Corbin is 5: [player fought off the horsemen going for Corbin]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. Though while they might be... interested in Corbin, one pointed look from you in their direction has the closest few suddenly deciding they need some fresh air outside. Knocking out several of them before seems to have left an impact, with Corbin off-limits unless he initiates it. For which your grateful cuntboy cowboy leans in to plant a thankful kiss on your lips - leading over to a hungry bit of making out.";
			say "     After some enjoyable tongue-wrestling, you kneel down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it and being rewarded with a squirt of tasty milk. You drink several swallows from this breast, then the other, pleased at the look of bliss coming over Corbin's face as you suckle from him. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets.";
			say "     Letting go of his breasts and turning your attention to Corbin's female bits, you give him a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's panting and squirming in arousal, his hands grabbing your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, gushing femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he grabs you and pulls you into a deep kiss, then says 'Thank you lover, I really needed that.'";
			now lastfuck of Corbin is turns;
		else if HP of Corbin is 90: [barracks slut]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the somewhat damp fabric of his jeans there. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Then you push your hand under the band of his pants and feel for his sensitive pussy lips, slipping in a finger into the wet hole between them. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. You don't let that distract you and just lean in to plant a hungry kiss on Corbin's lips - leading over to a bit of making out.";
			say "     After some enjoyable tongue-wrestling, you kneel down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's swollen-looking nether lips come into sight, still wet with the cum one of his equine housemates blasted into him not too long ago. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it and being rewarded with a squirt of tasty milk. You drink several swallows from this breast, then the other, pleased at the look of bliss coming over Corbin's face as you suckle from him. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets.";
			say "     Letting go of his breasts and turning your attention to Corbin's female bits, you give him a careful lick, tasting his juices and the horseman cum, then really go to town on him - licking and fondling him until he's panting and squirming in arousal, his hands grabbing your shoulders to hold on to something. You keep eating him out for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, gushing femcum from his spread pussy. As you stand up again, you suddenly feel a hand on your shoulder. It's one of the horseman farmhands, naked, with his hard prick in hand. He says 'Ok, you're done - my turn with the little slut.' Corbin only gives a sigh, then lets himself be led off to the man's bunk to be mounted and bred.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 2; [horseman is the father]
			now lastfuck of Corbin is turns;
	else if thirst of Corbin is 2: [in the milking shed]
		say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Kneeling down, you pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it and being rewarded with a squirt of tasty milk. You drink several swallows from this breast, then the other, pleased at the look of bliss coming over Corbin's face as you suckle from him. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets.";
		say "     Letting go of his breasts and turning your attention to Corbin's female bits, you give him a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's panting and squirming in arousal, his hands grabbing your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he grabs you and pulls you into a deep kiss, then says 'Thank you, I really needed that.'";
		now lastfuck of Corbin is turns;
		infect "Cowboy Cuntboy";

to say CorbinSex4: [Corbin's pussy fucked]
	if thirst of Corbin is 1: [in the barracks]
		if HP of Corbin is 2 or HP of Corbin is 3: [player fucked him - or just saw him in the milking shed, his pussy still a secret]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch - then he realizes where you are, stepping backwards and looking around with concern in his eyes. He says in a low whisper 'Phew - no one noticed. Please, we can't do this here.' He bites his lip, then takes a deep breath, fighting down his arousal 'No, we really can't - later, in the milking shed tonight, ok?'";
			say "     [bold type]Do you accept this, or proceed anyways?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Accept it.";
			say "     ([link]N[as]n[end link]) - Proceed anyway.";
			if player consents:
				say "     After a last grope at Corbin's crotch, you nod and leave him be for now.";
			else:
				say "     Not deterred from doing what you want by the cuntboy's words, you move to stand close again, this time pushing your hand under the band of his pants before he can stop you. As your fingers touch his sensitive pussy lips and dip in between them, a needful moan escapes the equine cowboy's lips and all his resistance melts away in moments. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too.";
				say "     After some more stroking and fingering Corbin's pussy, you kneel down to pop open the button of his jeans, then lower the zipper and pull them down his legs. There's a murmur in the room as the cuntboy's swollen nether lips and the perky breasts on his crotch come into sight. Standing back up again, one hand around his chest to hold him close, the other stroking his pussy, you walk Corbin over to the nearest bed and softly push his unresisting form to lie down on it.";
				WaitLineBreak;
				say "     The sight of the hot equine cuntboy, lying on his back, legs spread just waiting for you, has your cock hard and ready to go instantly. Eager to thrust into his wet folds but holding back for now, you kneel between his legs, letting your hard manhood rest against his pubic mound for a moment as you take hold of and fondle his breasts. Then you grind against him with your hips, your shaft rubbing over Corbin's swollen pussy lips before you put its tip between them and slide in, spreading the cowboy's passage around your cock. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper - all the way!' Corbin tells you as he wraps his legs around your hips, pulling you closer against his body.";
				say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his hips with a satisfying slap. His upper body rears up with a loud moan as you bottom out inside him, bringing his head close to yours and allowing him to pull you into a hot kiss. As he comes back up for air, he moans 'Fuck me' into your mouth, then lies back again, completely giving himself to you. With the warm, tight hole of such an eager partner around your cock, all restraint goes out the window and start fucking him hard and deep. Just as he likes it - Corbin gives lustful grunts to accompany the sound of your hips slapping against his crotch and is just panting with arousal.";
				WaitLineBreak;
				say "     You have sex with him like a horny bunny for quite a while, the rapid thrusting and ever louder moans and groans building up to a breathtaking climax. When you finally pass the point of no return and start blasting your fertile load deep into Corbin's womb, a cheer goes through the watching crowd, combined with comments like 'Give it to him good!' and 'Fill that pussy!' As he hears the horsemen's words, Corbin turns his head to look at them and gives a groan. He looks the other way, still breathing a bit heavily as he rides out the throes of his own orgasm, then winds his way out from under you and stands up. With a bit of a pained voice he says to you, 'Did you have to do that - here?' Then he grabs his pants, accompanied by wolf whistles from the other horsemen as he bends to pick them up, and rushes out of the back door of the barracks without even putting them on.";
				move Corbin to Milking Shed Main Room;
				now thirst of Corbin is 2;
				if CorbinPregnancy is 0: [not already preggers]
					let CorbinPregChance be a random number from 1 to 20;
					if CorbinPregChance > 10: [50% chance]
						now CorbinPregCounter is 48; [48 turns till birth]
						now CorbinPregnancy is 1; [invisibly pregnant]
						now libido of Corbin is 1; [player is the father]
						now CorbinImpregnatingCock is cockname of player;
				now HP of Corbin is 4; [he's 'out' to the horsemen - who're starting to get interested]
				now lastfuck of Corbin is turns;
		else if HP of Corbin is 5: [player fought off the horsemen going for Corbin]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. Though while they might be... interested in Corbin, one pointed look from you in their direction has the closest few suddenly deciding they need some fresh air outside. Knocking out several of them before seems to have left an impact, with Corbin off-limits unless he initiates it. For which your grateful cuntboy cowboy leans in to plant a thankful kiss on your lips - leading over to a hungry bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. While you quickly take off your own clothes, he saunters over to his bunk and lies down on it. The sight of the hot equine cuntboy, lying on his back, legs spread just waiting for you, has your cock hard and ready to go instantly. Eager to thrust into his wet folds but holding back for now, you kneel between his legs, letting your hard manhood rest against his pubic mound for a moment as you take hold of and fondle his breasts. Then you grind against him with your hips, your shaft rubbing over Corbin's swollen pussy lips before you put its tip between them and slide in, spreading the cowboy's passage around your cock. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper - all the way!' Corbin tells you as he wraps his legs around your hips, pulling you closer against his body.";
			WaitLineBreak;
			say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his hips with a satisfying slap. His upper body rears up with a loud moan as you bottom out inside him, bringing his head close to yours and allowing him to pull you into a hot kiss. As he comes back up for air, he moans 'Fuck me' into your mouth, then lies back again, completely giving himself to you. With the warm, tight hole of such an eager partner around your cock, all restraint goes out the window and start fucking him hard and deep. Just as he likes it - Corbin gives lustful grunts to accompany the sound of your hips slapping against his crotch and is just panting with arousal.";
			say "     You have sex with him like a horny bunny for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride with your horsey cuntboy, until finally - after him and you coming multiple times - you flop down to lie on your back on the mattress beside him. Exhaustedly, he reaches over to caress your chest, panting 'It's unbelievable how good you make me feel. Thank you.' Then he rolls over on his side, stretching a bit to give you a kiss on the cheek before promptly dozing off. Smiling at the sleeping horseman as you grab your clothes, you leave him to rest and quietly dress.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 1; [player is the father]
					now CorbinImpregnatingCock is cockname of player;
			now lastfuck of Corbin is turns;
		else if HP of Corbin is 90: [barracks slut]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the somewhat damp fabric of his jeans there. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Then you push your hand under the band of his pants and feel for his sensitive pussy lips, slipping in a finger into the wet hole between them. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. You don't let that distract you and just lean in to plant a hungry kiss on Corbin's lips - leading over to a bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's swollen-looking nether lips come into sight, still wet with the cum one of his equine housemates blasted into him not too long ago. While you quickly take off your own clothes, he saunters over to his bunk and lies down on it. The sight of the hot equine cuntboy, lying on his back, legs spread just waiting for you, has your cock hard and ready to go instantly. Eager to thrust into his wet folds but holding back for now, you kneel between his legs, letting your hard manhood rest against his pubic mound for a moment as you take hold of and fondle his breasts. Then you grind against him with your hips, your shaft rubbing over Corbin's swollen pussy lips before you put its tip between them and slide in, spreading the cowboy's passage around your cock. The cuntboy gives a lust-filled grunt as you sink your cock into his cum-slick hole, gripping the sheets under him as arousal floods his body. A pant of 'Harder. Deeper.' escapes his lips in between moans.";
			WaitLineBreak;
			say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his hips with a satisfying slap. His upper body rears up with a loud moan as you bottom out inside him, bringing his head close to yours and allowing you to pull him into a hot kiss. As he comes sinks back on the mattress afterwards, he moans 'Fuck me' completely giving in to his bodies urges. With the warm, tight hole of the hot cuntboy around your cock, all restraint goes out the window and start fucking him hard and deep. Corbin gives lustful grunts to accompany the sound of your hips slapping against his crotch and is just panting with arousal.";
			say "     You have sex with him like a horny bunny for quite a while, the rapid thrusting and ever louder moans and groans building up to a breathtaking climax. When you finally pass the point of no return and start blasting your fertile load deep into Corbin's womb, a cheer goes through the watching crowd, combined with comments like 'Give it to him good!' and 'Fill that pussy!' The equine cowboy also orgasms as you come in him, his female bits sending waves of pleasure through his body as they are filled with fertile seed as they're supposed to. You keep pumping in and out of his femcum-slick hole slowly for a while longer after you finish shooting, then suddenly feel a hand on your shoulder. It's one of the horseman farmhands, naked, with his hard prick in hand. He says 'Ok, you're done - my turn with the little slut.' Corbin only gives a sigh, staying right where he is as the other man pushes you aside to fuck and breed him.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 1; [player is the father]
					now CorbinImpregnatingCock is cockname of player;
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 2; [horseman is the father]
			now lastfuck of Corbin is turns;
	else if thirst of Corbin is 2: [in the milking shed]
		say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Kneeling down, you pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. While you quickly take off your own clothes, he grabs a thick blanket from the nearby supply closet, spreading it on the floor and lying down on it.";
		say "     The sight of the hot equine cuntboy, lying on his back, legs spread just waiting for you, has your cock hard and ready to go instantly. Eager to thrust into his wet folds but holding back for now, you kneel between his legs, letting your hard manhood rest against his pubic mound for a moment as you take hold of and fondle his breasts. Then you grind against him with your hips, your shaft rubbing over Corbin's swollen pussy lips before you put its tip between them and slide in, spreading the cowboy's passage around your cock. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper - all the way!' Corbin tells you as he wraps his legs around your hips, pulling you closer against his body.";
		WaitLineBreak;
		say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his hips with a satisfying slap. His upper body rears up with a loud moan as you bottom out inside him, bringing his head close to yours and allowing him to pull you into a hot kiss. As he comes back up for air, he moans 'Fuck me' into your mouth, then lies back again, completely giving himself to you. With the warm, tight hole of such an eager partner around your cock, all restraint goes out the window and start fucking him hard and deep. Just as he likes it - Corbin gives lustful grunts to accompany the sound of your hips slapping against his crotch and is just panting with arousal.";
		say "     You have sex with him like a horny bunny for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride with your horsey cuntboy, until finally - after him and you coming multiple times - you flop down to lie on your back on the blanket beside him. Exhaustedly, he reaches over to caress your chest, panting 'You can't believe how good this feels after holding everything in for weeks. Thank you.' Then he rolls over on his side, stretching a bit to give you a kiss on the cheek before promptly dozing off. Smiling at the sleeping horseman as you grab your clothes, you leave him to rest and quietly sneak out of the building.";
		move player to Central Farm Square;
		now lastfuck of Corbin is turns;
		if CorbinPregnancy is 0: [not already preggers]
			let CorbinPregChance be a random number from 1 to 20;
			if CorbinPregChance > 10: [50% chance]
				now CorbinPregCounter is 48; [48 turns till birth]
				now CorbinPregnancy is 1; [invisibly pregnant]
				now libido of Corbin is 1; [player is the father]
				now CorbinImpregnatingCock is cockname of player;

to say CorbinSex5: [Corbin's ass fucked]
	if thirst of Corbin is 1: [in the barracks]
		if HP of Corbin is 2 or HP of Corbin is 3: [player fucked him - or just saw him in the milking shed, his pussy still a secret]
			say "     Stepping up close to Corbin, you put your hand on his ass, giving it a good squeeze. He instinctively pushes back against you, suppressing a moan - then suddenly, gives you a shove away from him and says loudly 'I may be willing to give blowjobs, but I'm not taking it up the ass.' Seeing the surprised look in your face, he gives you a telling stare and a little nod to the side, where you see one of the other horsemen casually observing the two of you. Corbin gives you a wink, whispering 'Tonight, in the milking shed, ok?'";
			say "     [bold type]Do you accept this, or proceed anyways?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				say "     After a last grope at Corbin's crotch, you nod and leave him be for now.";
			else:
				say "     Not deterred from doing what you want by the cuntboy's words, you move to stand close again, sliding your arms down the sides of his muscular chest, then around his body to grab both the shapely cheeks of his ass. The equine cuntboy can barely suppress a moan, automatically shifting his stance a bit forward to lean into your touch. Smiling, you move your hands upward a bit, then slip them into his pants, now kneading the lightly furred orbs of his ass directly. Corbin puts his lips to yours, lust making him forget about his reluctance as he gives you a hungry kiss and asks 'So you want to take a ride on this pony? Fine - I need it bad!' He gives your crotch a light squeeze, then walks over a close-by bunk bed, letting his jeans drop and stepping out of them on the way. Bending forward, both hands on the metal rail of the upper bunk, he looks back at you and wiggles his ass invitingly.";
				say "     You set a new record in getting out of your clothes and gear, quickly stepping into position behind the hot equine cuntboy with a by then fully hard and ready cock. Giving him a light slap on the ass, making him whinny like a real horse, you put your manhood between his cheeks, rubbing it up and down against the cowboy's crack. Corbin moans 'Come on, mount up - I'm waiting' and grinds his ass back against your crotch. Not losing any more time, you take hold of your cock, aim it at his pucker and press forward, finding that it readily accommodates your girth, stretching easily but still tightly around your manhood. Seems like he's got quite a bit of experience in taking it though the back door. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper, harder - all the way!' Corbin tells you as he grips the metal bar tightly.";
				WaitLineBreak;
				say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his cheeks with your hips with a satisfying slap. A loud, lustful groan can be heard from Corbin and he pushes back against you to make sure you're in as deep as you can go. Then he rocks forward and back a bit, too eager to get fucked to wait a second longer. Chuckling at his need to be fucked, you take up a rhythm that complements his, holding on to his hips and slamming forward when he is just on the move back. The two of you fill the barracks with loud moans and the slapping noises as your hips and ass meet again and again.";
				say "     You have sex with him like a horny bunny for quite a while, the rapid thrusting and ever louder moans and groans building up to a breathtaking climax. When you finally pass the point of no return and start blasting your fertile load deep into Corbin's ass, a cheer goes through the watching crowd, combined with comments like 'Give it to him good!' and 'Fill that bitch!' As he hears the horsemen's words, Corbin turns his head to look at them and gives a groan, now realizing what you two fucking here means without arousal clouding his judgment. He looks the other way, still breathing a bit heavily as he rides out the throes of his own orgasm, then slides off your shaft with a wet slurp and turns around. With a bit of a pained voice he says to you, 'Did you have to do that - here?' Then he grabs his pants, accompanied by wolf whistles from the other horsemen as he bends to pick them up, and rushes out of the back door of the barracks without even putting them on.";
				move Corbin to Milking Shed Main Room;
				now thirst of Corbin is 2;
				now HP of Corbin is 4; [he's 'out' to the horsemen - who're starting to get interested]
				now lastfuck of Corbin is turns;
		else if HP of Corbin is 5: [player fought off the horsemen going for Corbin]
			say "     Stepping up close to Corbin, you slide your arms down the sides of his muscular chest, then around his body to grab both the shapely cheeks of his ass. The equine cuntboy can barely suppress a moan, automatically shifting his stance a bit forward to lean into your touch. Smiling, you move your hands upward a bit, then slip them into his pants, now kneading the lightly furred orbs of his ass directly. As you start to slide a finger up and down his crack, teasing the cuntboy's pucker, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. Though while they might be... interested in Corbin, one pointed look from you in their direction has the closest few suddenly deciding they need some fresh air outside. Knocking out several of them before seems to have left an impact, with Corbin off-limits unless he initiates it. For which your grateful cuntboy cowboy leans in to plant a thankful kiss on your lips - leading over to a hungry bit of making out.";
			say "     After some enjoyable tongue-wrestling, Corbin says 'So you want to take a ride on this pony? Good - I need it bad!' He gives your crotch a light squeeze, then walks over a close-by bunk bed, letting his jeans drop and stepping out of them on the way. Bending forward, both hands on the metal rail of the upper bunk, he looks back at you and wiggles his ass invitingly. You set a new record in getting out of your clothes and gear, quickly stepping into position behind the hot equine cuntboy with a by then fully hard and ready cock. Giving him a light slap on the ass, making him whinny like a real horse, you put your manhood between his cheeks, rubbing it up and down against the cowboy's crack. Corbin moans 'Come on, mount up - I'm waiting' and grinds his ass back against your crotch. Not losing any more time, you take hold of your cock, aim it at his pucker and press forward, finding that it readily accommodates your girth, stretching easily but still tightly around your manhood. Seems like he's got quite a bit of experience in taking it though the back door. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper, harder - all the way!' Corbin tells you as he grips the metal bar tightly.";
			WaitLineBreak;
			say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his cheeks with your hips with a satisfying slap. A loud, lustful groan can be heard from Corbin and he pushes back against you to make sure you're in as deep as you can go. Then he rocks forward and back a bit, too eager to get fucked to wait a second longer. Chuckling at his need to be fucked, you take up a rhythm that complements his, holding on to his hips and slamming forward when he is just on the move back. The two of you fill the barracks with loud moans and the slapping noises as your hips and ass meet again and again.";
			say "     You have sex with Corbin like a horny bunny for at least an hour, only stopping for a moment when you cum inside him and fill his asshole with your seed, then make out a bit until you're ready to go on. It's a wild ride with your horsey cuntboy, until finally - after him and you coming multiple times - the two of you sink down to and lie on the bed in exhaustion. Exhaustedly, he reaches over to caress your chest, panting 'It's unbelievable how good you make me feel. Thank you.' Then he rolls over on his side, stretching a bit to give you a kiss on the cheek before promptly dozing off. Smiling at the sleeping horseman as you grab your clothes, you leave him to rest and quietly dress.";
			now lastfuck of Corbin is turns;
		else if HP of Corbin is 90: [barracks slut]
			say "     Stepping up close to Corbin, you slide your arms down the sides of his muscular chest, then around his body to grab both the shapely cheeks of his ass. The equine cuntboy can barely suppress a moan, automatically shifting his stance a bit forward to lean into your touch. Smiling, you move your hands upward a bit, then slip them into his pants, now kneading the lightly furred orbs of his ass directly. As you start to slide a finger up and down his crack, teasing the cuntboy's pucker, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. You don't let that distract you and just lean in to plant a hungry kiss on Corbin's lips - leading over to a bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's swollen-looking nether lips come into sight, still wet with the cum one of his equine housemates blasted into him not too long ago. Giving a needful whinny, the transgendered cowboy walks over to a close-by bunk bed and bends forward, both hands on the metal rail of the upper bunk. You set a new record in getting out of your clothes and gear, quickly stepping into position behind the hot equine cuntboy with a by then fully hard and ready cock. Giving him a light slap on the ass, you put your manhood between his cheeks, rubbing it up and down against the cowboy's crack. Corbin moans 'Come on, mount up - I'm waiting' and grinds his ass back against your crotch. Not losing any more time, you take hold of your cock, aim it at his pucker and press forward, finding that it readily accommodates your girth, stretching easily but still tightly around your manhood. Seems like he's got quite a bit of experience in taking it though the back door. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper, harder - all the way!' Corbin tells you as he grips the metal bar tightly.";
			WaitLineBreak;
			say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his cheeks with your hips with a satisfying slap. A loud, lustful groan can be heard from Corbin and he pushes back against you to make sure you're in as deep as you can go. Then he rocks forward and back a bit, too eager to get fucked to wait a second longer. Chuckling at his need to be fucked, you take up a rhythm that complements his, holding on to his hips and slamming forward when he is just on the move back. The two of you fill the barracks with loud moans and the slapping noises as your hips and ass meet again and again.";
			say "     You have sex with him like a horny bunny for quite a while, the rapid thrusting and ever louder moans and groans building up to a breathtaking climax. When you finally pass the point of no return and start blasting your fertile load deep into Corbin's ass, a cheer goes through the watching crowd, combined with comments like 'Give it to him good!' and 'Fill that pussy!' The equine cowboy also orgasms as you come in him, anal muscles trembling around your shaft and his pussy squirting femcum to trickle down the inside of his leg. You keep pumping in and out of his cum-filled asshole slowly for a while longer after you finish shooting, then suddenly feel a hand on your shoulder. It's one of the horseman farmhands, naked, with his hard prick in hand. He says 'Ok, you're done - my turn with the little slut.' Corbin only gives a sigh, staying right where he is as the other man pushes you aside to fuck and breed him.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 2; [horseman is the father]
			now lastfuck of Corbin is turns;
	else if thirst of Corbin is 2: [in the milking shed]
		say "     Stepping up close to Corbin, you slide your arms down the sides of his muscular chest, then around his body to grab both the shapely cheeks of his ass. The equine cuntboy can barely suppress a moan, automatically shifting his stance a bit forward to lean into your touch. Smiling, you move your hands upward a bit, then slip them into his pants, now kneading the lightly furred orbs of his ass directly. Corbin puts his lips to yours, giving you a hungry kiss, then asks 'So you want to take a ride on this pony? Bring it on!' He gives your crotch a light squeeze, then walks over to the back wall of the milking booth, letting his jeans drop and stepping out of them on the way. Bending forward, both hands on the metal rail on the wall, he looks back at you and wiggles his ass invitingly.";
		say "     You set a new record in getting out of your clothes and gear, quickly stepping into position behind the hot equine cuntboy with a by then fully hard and ready cock. Giving him a light slap on the ass, making him whinny like a real horse, you put your manhood between his cheeks, rubbing it up and down against the cowboy's crack. Corbin moans 'Come on, mount up - I'm waiting' and grinds his ass back against your crotch. Not losing any more time, you take hold of your cock, aim it at his pucker and press forward, finding that it readily accommodates your girth, stretching easily but still tightly around your manhood. Seems like he's got quite a bit of experience in taking it though the back door. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper, harder - all the way!' Corbin tells you as he grips the metal bar tightly.";
		WaitLineBreak;
		say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his cheeks with your hips with a satisfying slap. A loud, lustful groan can be heard from Corbin and he pushes back against you to make sure you're in as deep as you can go. Then he rocks forward and back a bit, too eager to get fucked to wait a second longer. Chuckling at his need to be fucked, you take up a rhythm that complements his, holding on to his hips and slamming forward when he is just on the move back. The two of you fill the milking shed with loud moans and the slapping noises as your hips and ass meet again and again.";
		say "     You have sex with Corbin like a horny bunny for at least an hour, only stopping for a moment when you cum inside him and fill his asshole with your seed, then make out a bit until you're ready to go on. It's a wild ride with your horsey cuntboy, until finally - after him and you coming multiple times - the two of you sink down to lean against the wall in exhaustion. Smiling, he reaches over to caress your chest, panting 'You can't believe how good this feels after holding everything in for weeks. Thank you.' Then leans over to you, stretching a bit to give you a kiss on the cheek before promptly dozing off on your shoulder. You gently lower the sleeping horseman to the ground, putting his bunched-up jeans under his head as a pillow, then grab your stuff and leave him to rest, quietly sneaking out of the building.";
		move player to Central Farm Square;
		now lastfuck of Corbin is turns;

to say CorbinSex6: [Corbin milked]
	if thirst of Corbin is 1: [in the barracks]
		if HP of Corbin is 2 or HP of Corbin is 3: [player fucked him - or just saw him in the milking shed, his pussy still a secret]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch - then he realizes where you are, stepping backwards and looking around with concern in his eyes. He says in a low whisper 'Phew - no one noticed. Please, we can't do this here.' He bites his lip, then takes a deep breath, fighting down his arousal 'No, we really can't - later, in the milking shed tonight, ok?'";
			say "     [bold type]Do you accept this, or proceed anyways?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				say "     After a last grope at Corbin's crotch, you nod and leave him be for now.";
			else:
				say "     Not deterred from doing what you want by the cuntboy's words, you move to stand close again, this time pushing your hand under the band of his pants before he can stop you. As your fingers touch his sensitive pussy lips and dip in between them, a needful moan escapes the equine cowboy's lips and all his resistance melts away in moments. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too.";
				say "     After some more stroking and fingering Corbin's pussy, you kneel down to pop open the button of his jeans, then lower the zipper and pull them down his legs. There's a murmur in the room as the cuntboy's swollen nether lips and the perky breasts on his crotch come into sight. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it, then pulling back as the first drop of milk touches your lips. You caress his nipple, circling it with your finger, then lean down to your pack and grab an empty water bottle, starting to softly squeeze Corbin's breast and catch the milk squirting out in the bottle. A look of bliss coming over Corbin's face as you slowly milk him, taking care of the pressure in one of his breasts, then repeating the same on the other side. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets...";
				say "     When the flow of milk slows down to just a trickle and the bottle is almost full anyways, you let go his breasts and turn your attention to Corbin's female bits. You can't just leave him panting in lust like this, so you give his pussy a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's squirming in arousal, his hands grabbing your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he says with a bit of a pained voice, 'Did you have to do that - here?' With a concerned look at the group of horny horsemen in the barracks leering at him, he pulls up his jeans and rushes out the back door of the barracks.";
				move Corbin to Milking Shed Main Room;
				now thirst of Corbin is 2; [now in the milking shed]
				now HP of Corbin is 4; [he's 'out' to the horsemen - who're starting to get interested]
				now lastfuck of Corbin is turns;
		else if HP of Corbin is 5: [player fought off the horsemen going for Corbin]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. Though while they might be... interested in Corbin, one pointed look from you in their direction has the closest few suddenly deciding they need some fresh air outside. Knocking out several of them before seems to have left an impact, with Corbin off-limits unless he initiates it. For which your grateful cuntboy cowboy leans in to plant a thankful kiss on your lips - leading over to a hungry bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. As you kneel down, Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it, then pulling back as the first drop of milk touches your lips. You caress his nipple, circling it with your finger, then lean down to your pack and grab an empty water bottle, starting to softly squeeze Corbin's breast and catch the milk squirting out in the bottle. A look of bliss coming over Corbin's face as you slowly milk him, taking care of the pressure in one of his breasts, then repeating the same on the other side. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets...";
			say "     When the flow of milk slows down to just a trickle and the bottle is almost full anyways, you let go his breasts and turn your attention to Corbin's female bits. You can't just leave him panting in lust like this, so you give his pussy a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's squirming in arousal, his hands grabbing your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he grabs you and pulls you into a deep kiss, then says 'Thank you, I really needed that.'";
			now lastfuck of Corbin is turns;
		else if HP of Corbin is 90: [barracks slut]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the somewhat damp fabric of his jeans there. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Then you push your hand under the band of his pants and feel for his sensitive pussy lips, slipping in a finger into the wet hole between them. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. You don't let that distract you and just lean in to plant a hungry kiss on Corbin's lips - leading over to a bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's swollen-looking nether lips come into sight, still wet with the cum one of his equine housemates blasted into him not too long ago. And left and right of that, his perky breasts await you, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it, then pulling back as the first drop of milk touches your lips. You caress his nipple, circling it with your finger, then lean down to your pack and grab an empty water bottle, starting to softly squeeze Corbin's breast and catch the milk squirting out in the bottle. A look of bliss coming over Corbin's face as you slowly milk him, taking care of the pressure in one of his breasts, then repeating the same on the other side. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets...";
			say "     When the flow of milk slows down to just a trickle and the bottle is almost full anyways, you let go his breasts and turn your attention to Corbin's female bits. You can't just leave him panting in lust like this, so you give his pussy a careful lick and taste his juices as well as the horseman cum, then really go to town on him - licking and fondling him until he's squirming in arousal, his hands grabbing your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, you suddenly feel a hand on your shoulder. It's one of the horseman farmhands, naked, with his hard prick in hand. He says 'Ok, you're done - my turn with the little slut.' Corbin only gives a sigh, staying right where he is as the other man pushes you aside to fuck and breed him.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 2; [horseman is the father]
			now lastfuck of Corbin is turns;
	else if thirst of Corbin is 2: [in the milking shed]
		say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Kneeling down, you pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it, then pulling back as the first drop of milk touches your lips. You caress his nipple, circling it with your finger, then lean down to your pack and grab an empty water bottle, starting to softly squeeze Corbin's breast and catch the milk squirting out in the bottle. A look of bliss coming over Corbin's face as you slowly milk him, taking care of the pressure in one of his breasts, then repeating the same on the other side. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets...";
		say "     When the flow of milk slows down to just a trickle and the bottle is almost full anyways, you let go his breasts and turn your attention to Corbin's female bits. You can't just leave him panting in lust like this, so you give his pussy a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's squirming in arousal, his hands grabbing your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he grabs you and pulls you into a deep kiss, then says 'Thank you, I really needed that.'";
		now lastfuck of Corbin is turns;
		increase carried of cowboy milk by 1;

to say CorbinSex7: [Corbin + Felinoid]
	say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Kneeling down, you pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You slowly stroke your finger along his opening, giving the cuntboy a pleasant tingle, then gently rub his clit and ask if he'd like to mix things up a bit this time. Smiling at his curious expression, you reach up and run a finger along his equine jawline, turning his head a bit so he looks at the nearby spot where Klauz is sprawled out on the ground, lounging in comfort and only opening his eyes from time to time as he mostly dozes peacefully. A lusty grin spreads over Corbin's face as he nods, then pulls you to your feet to share a quick kiss before walking over to where the big cat is lying.";
	say "     Crouching down beside the feral beast, Corbin starts rubbing the felinoid's belly fur, which quickly is answered by a resounding purr from the big feline. He slowly moves one of his stroking hands lower and lower until he reaches Klauz's crotch, then cups the feline's furry balls, gently massaging them. By now, the large cat has raised his head to look down at the cowboy and you've moved in to scratch him behind the ears and on his chin. Soon, the felinoid's barbed cock starts poking out of its sheath, quickly hardening to its full glory. Corbin goes on to grab the great cat's shaft and jerks on it while his other hand moves to his own crotch to rub an increasingly wet and dripping pussy. You notice Klauz's entrancing musk starting to fill the air - not that he needs it this time, with two willing partners coming to him on their own.";
	WaitLineBreak;
	say "     With the felinoid all relaxed from all the stroking and scritching, perfectly willing to let you two continue pleasing him, he just keeps on purring loudly as you take a muscular foreleg, Corbin one of the hind legs and pull them to the side. It's pretty easy to roll the big feline over on his back, putting him in a stretched out position, legs spread and his manhood standing proudly erect. Giving you a wide smile, Corbin climbs on top of Klauz, bracing himself against the cat's muscular underside as he lowers himself down on its crotch. The cuntboy cowboy gives a lust-filled pant as he feels the felinoid's cock start to spread his pussy lips, followed by a loud gasp as the big beast thrusts his hips up a bit with a growl and sinks himself halfway into the horseman.";
	if graphics is true:
		project the figure of Corbin_Felinoid_icon;
	say "     After getting in that first thrust, Klauz relaxes again, content in letting the horny cuntboy on top of him fuck himself on his stiff pole. Which Corbin does, with a lot of enthusiasm. Bouncing up and down on the feline shaft, your friend moans loudly and runs his hands through the large animal's belly fur, soon totally lost in the moment.";
	LineBreak;
	say "     Getting pretty aroused by watching your two friends go at it yourself, you decide it's time to join in.";
	if player is male:
		say "[CorbinSex7_Male]";
	else:
		say "[CorbinSex7_Female]";

to say CorbinSex7_Male:
	LineBreak;
	say "     What shall it be you want to do with your cuntboy and felinoid friends?";
	say "     [link](1)[as]1[end link] - Fuck Corbin's ass.";
	say "     [link](2)[as]2[end link] - Fuck Klauz's ass.";
	say "     [link](3)[as]3[end link] - Get a blowjob from Corbin.";
	say "     [link](4)[as]4[end link] - Present your manhood to Klauz to have him lick it.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to fuck Corbin's ass, [link]2[end link] to fuck Klauz in the ass, [link]3[end link] to get a blowjob from Corbin or [link]4[end link] to have Klauz lick your cock.";
	LineBreak;
	if calcnumber is 1: [fuck Corbin]
		say "     Kneeling down on the ground between Klauz's legs, you snake your arms around Corbin from behind, caressing his smooth chest. As the cuntboy cowboy eagerly leans into your touch, you plant a line of little kisses from his neck up to his right earlobe, playfully nibbling at it before you whisper that you want to fuck him in the ass. The young man looks back and gives you a smile over his shoulder, then leans forward, stretching his upper body out over the felinoid's furry belly while raising his ass a bit for you. Who could resist such an alluring display? You're almost twitching with the need and desire to fuck your handsome friend when you take hold of your manhood and line it up with his butt. Moving forward, you press the cockhead against his pucker, first lightly, then a bit harder until it finally yields to your invading member.";
		WaitLineBreak;
		say "     Grunting in satisfaction, you thrust deeper into your equine friend, reveling in the sensations of his insides gripping your shaft tightly. You keep still a while longer, just resting your cock inside him to give Corbin a time to get used to it - then suddenly he starts rocking back and forth, fucking himself on your and Klauz's cocks at the same time. As he moves, you feel movement bump and rub against your cock - that must be the felinoid, his erection pumping in and out of Corbin's other hole. So hot - to be able to feel him through the walls of Corbin's insides.";
		say "     With the two of you balls deep inside Corbin as he fucks himself on your cocks, the arousal of everyone involved soon mounts higher and higher. Klauz is the first one to pass the point of no return, suddenly stiffening under Corbin and giving a satisfied roar, with his cock pulsing as spurt after spurt of his seed is shot deep into Corbin's pussy. Getting bred by the large beast, his body being filled with fertile cum, drives Corbin to climax just a moment later. He gasps in lust, holding on to the felinoid's soft belly fur as the orgasm makes him writhe in pleasure. You speed up your own thrusts into Corbin's asshole, eager to fill him with another load of cum. After just a few more thrusts you come, a huge load boiling up from your balls and shooting into Corbin's body.";
		WaitLineBreak;
		say "     Exhausted by the hot fuck, you rest for a moment against Corbin's back, your slowly softening shaft still inside him. Klauz meanwhile just leans his head back in total relaxation, and you can literally feel his resounding purr through Corbin lying on the feline's chest. Corbin gives a satisfied sigh, then says, 'Man, you two are quite something.' while reaching back and stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";
	else if calcnumber is 2: [fuck felinoid]
		say "     Kneeling down on the ground between Klauz's legs, you snake your arms around Corbin from behind, caressing his smooth chest. As the cuntboy cowboy eagerly leans into your touch, you plant a line of little kisses from his neck up to his right earlobe, playfully nibbling at it before you whisper that you want to fuck the felinoid in the ass and he should distract the big kitty a bit. The young man looks back and gives you a smile over his shoulder, then leans forward, stretching his upper body out over Klauz's furry chest while stroking him with his hands and pumping his own hips rapidly up and down on the big cat's hard shaft. At the same time, you take hold of your own cock and line it up with the tight hole under the felinoid's tail. Moving forward, you press the cockhead against his pucker, first lightly, then a bit harder until it finally yields to your erect member.";
		WaitLineBreak;
		say "     Before he realizes what's happening and can do much more than start a surprised rumble in his throat, you're balls-deep in Klauz's ass, hitting sensitive spots that make him purr even louder than before. Grunting in satisfaction, you thrust deeper into your feline friend, reveling in the sensations of his insides gripping your shaft tightly. You start sliding in and out of his hole while putting your hands on the big cat's muscular hind legs. Holding on to them as you pound the felinoid's ass, you find a rhythm with Corbin, slamming into his furry butt just as Corbin pulls up and vice versa. It's an amazing feeling to be moving in concert with your two companions, all of you in a lust-filled haze.";
		say "     With you fucking Klauz's ass while Corbin fucks fucks himself on his cock, the arousal of everyone involved soon mounts higher and higher. The felinoid is the first one to pass the point of no return, suddenly stiffening under Corbin and giving a satisfied roar, with his cock pulsing as spurt after spurt of his seed is shot deep into Corbin's pussy. Getting bred by the large beast, his body being filled with fertile cum, drives Corbin to climax just a moment later. He gasps in lust, holding on to Klauz's soft belly-fur as the orgasm makes him writhe in pleasure. Meanwhile, you speed up your own thrusts into the big cat's asshole, eager to fill him with your own load of cum. After just a few more thrusts you come, a huge load boiling up from your balls and shooting deep into the felinoid's body.";
		WaitLineBreak;
		say "     Exhausted by the hot fuck, you rest for a moment against Corbin's back, your slowly softening shaft still inside the big feline under him. Klauz meanwhile just leans his head back in total relaxation, and you can literally feel his resounding purr through Corbin lying on the great beast's chest. Corbin gives a satisfied sigh, then says, 'Man, you two are quite something.' while reaching back and stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";
	else if calcnumber is 3: [BJ from Corbin]
		say "     Stepping up to stand over Klauz, your feet left and right of his stretched-out body, you smile down at Corbin and hold out your hard [cock of player] shaft to him. He stops his movements on top of the large cat for a moment, sitting still with the large spined shaft deep in his pussy while he reaches out to grasp your cock and fondle your balls. Your eager cuntboy friend licks his lips, then gets to work sucking you off, taking the tip of your member into his mouth and running his tongue over it. After going down on your shaft all the way a few times, he starts sliding up and down on the felinoid's erection once again, timing it with bobbing his head towards you.";
		WaitLineBreak;
		say "     Taking Klauz's shaft deep in his pussy while he sucks you off, with its small spines rubbing his inner walls and causing incredible sensations, it doesn't take too much longer until Corbin's arousal peaks. With his lips tightly wrapped around your [cock of player] shaft, the cuntboy cowboy gives a somewhat muffled but still loud moan from his throat, a shudder running through his whole body as he comes. Femcum trickling down the felinoid's shaft and Corbin's inner muscles gripping his cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar and his cock starts pulsing with spurt after spurt of his seed shooting into Corbin's pussy. The handsome cuntboy lowers his hand to the height of his belly button, reveling in the feeling of being bred by the large feline creature.";
		say "     With him breathing deeply and still in the grip of his own orgasm, you take hold of your erect manhood and jerk it, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, blasting your load all over Corbin's face, neck and chest. The now pretty splattered equine gives you a broad smile, then reaches up to pull you down to his level and kiss him, after which you proceed to lick your own cum off him and share its taste while making out.";
		WaitLineBreak;
		say "     Corbin gives a satisfied sigh, then says, 'Man, you two are quite something,' while stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off Klauz to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";
	else if calcnumber is 4: [BJ from felinoid]
		say "     Stepping up to stand against the head end of the bed, you give Klauz's chin an affectionate scratch, then hold out your hard [cock of player] shaft to him. The large cat looks at you with his golden eyes, then down at Corbin riding his shaft and back at you. Finally giving an amicable growl, he nuzzles upwards into your groin, teasing your [cock size desc of player] [cock of player] shaft. A rough tongue flicks out across sensitive flesh, taking special care to carefully lap over your balls and tease the underside of your shaft.";
		WaitLineBreak;
		say "     While you're getting head from the large beast, Corbin rides his spined cock with unabated vigor moaning and gasping loudly at the sensations it gives him. With how much he enjoys riding the big cat, it doesn't take too much longer until Corbin's arousal peaks. Panting unintelligible sounds in his lust, the cuntboy cowboy rises up and slams himself down on the hard erection under him, a shudder running through his whole body as he comes. Femcum trickling down the felinoid's shaft and Corbin's inner muscles gripping his cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar himself and his cock starts pulsing with spurt after spurt of his seed shooting into Corbin's pussy. The handsome cuntboy lowers his hand to the height of his belly button, reveling in the feeling of being bred by the large feline creature.";
		say "     With him breathing deeply and still in the grip of his own orgasm, you take hold of your erect manhood and jerk it, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, blasting your load all over Klauz's furry face, with a few shots landing in his open muzzle. The big cat gives a pleased mrowl at the taste of your seed, using his long tongue to lick up any that landed in the fur around his muzzle. Smiling at that, you help him out by wiping up any that he can't reach with your fingers and holding them out for him to lick your cum off. Then you step closer to Corbin, leaning forward to give him a deep kiss.";
		WaitLineBreak;
		say "     One kiss follows another and Corbin keeps his position for a while longer, straddling the felinoid's hips with the beast's softening shaft inside him. He gives a satisfied sigh, then says, 'Man, you two are quite something,' while stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off Klauz to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";

to say CorbinSex7_Female:
	say "     Your pussy is almost dripping with arousal and you're ready to have someone lick it - though who shall it be? Corbin ([link]Y[as]y[end link]) or Klauz ([link]N[as]n[end link])?";
	if player consents: [BJ from Corbin]
		LineBreak;
		say "     Stepping up to stand on the bed, your feet left and right of Klauz's body, you smile down at Corbin and demonstratively rub over your pussy lips, holding them apart for him. He stops his movements on top of the large cat for a moment, sitting still with the large spined shaft deep in his pussy while he reaches out to touch your privates, softly brushing against your clit. Your eager cuntboy friend licks his lips, then gets to work eating you out, taking great care in teasing your most sensitive spots. After a moment of giving you his full attention, he starts sliding up and down on the felinoid's erection once again, timing it with licking you.";
		WaitLineBreak;
		say "     Taking Klauz's shaft deep in his pussy while he gives oral to you, with its small spines rubbing his inner walls and causing incredible sensations, it doesn't take too much longer until Corbin's arousal peaks. After another lick that makes you shudder with need, the cuntboy cowboy gives a loud moan from his throat, a shudder running through his whole body as he comes. Femcum trickling down the felinoid's shaft and Corbin's inner muscles gripping his cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar and his cock starts pulsing with spurt after spurt of his seed shooting into Corbin's pussy. The handsome cuntboy lowers his hand to the height of his belly button, reveling in the feeling of being bred by the large feline creature.";
		say "     With him breathing deeply and still in the grip of his own orgasm, you put your fingers to work on your pussy in earnest, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, a squirt of femcum hitting Corbin in the chest to run down over his smooth skin and more of it dripping down on Klauz's belly-fur. Your equine friend gives you a broad smile, then reaches up to pull you down to his level and kiss him.";
		WaitLineBreak;
		say "     One kiss follows another and Corbin keeps his position for a while longer, straddling the felinoid's hips with the beast's softening shaft inside him. He gives a satisfied sigh, then says, 'Man, you two are quite something,' while stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off Klauz to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";
	else: [BJ from felinoid]
		LineBreak;
		say "     Stepping up to stand against the head end of the bed, you give Klauz's chin an affectionate scratch, then get on the bed to kneel over his head. His long whiskers tickle against your legs as the large cat nuzzles upwards into your groin, sniffing your moist and ready pussy. Then he starts to lick you, his rough tongue carefully lapping over sensitive flesh and seeking out your clit.";
		WaitLineBreak;
		say "     While you're getting oral attention from the large beast, Corbin rides his spined cock with unabated vigor moaning and gasping loudly at the sensations it gives him. With how much he enjoys riding the big cat, it doesn't take too much longer until Corbin's arousal peaks. Panting unintelligible sounds in his lust, the cuntboy cowboy rises up and slams himself down on the hard erection under him, a shudder running through his whole body as he comes. Femcum trickling down the felinoid's shaft and Corbin's inner muscles gripping hiss cock like a vise make sure that it's only moments later that the big cat lets out a satisfied roar himself and his cock starts pulsing with spurt after spurt of his seed shooting into Corbin's pussy. The handsome cuntboy lowers his hand to the height of his belly button, reveling in the feeling of being bred by the large feline creature.";
		say "     With Klauz busy savoring his own orgasm, you put your fingers to work on your pussy in earnest, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, a squirt of femcum hitting the felinoid's muzzle and more of it dripping down on the fur on his neck. The big cat gives a pleased rumble, licking it off his muzzle and lapping at your crotch a few times to get a bit more of a taste.";
		WaitLineBreak;
		say "     Corbin gives a satisfied sigh, then says, 'Man, you two are quite something,' while stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off Klauz to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";

Corbin ends here.
