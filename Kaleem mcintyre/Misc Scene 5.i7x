Misc Scene 5 by Kaleem mcintyre begins here.


Section 1 - Helping the Helpless

Helping the Helpless is a situation.
The sarea of Helping the Helpless is "Outside";

Instead of resolving a Helping the Helpless:
	say "Walking down the almost deserted streets of the city, you come across a lone Dalmatian figure scrapping through a bunch of trash cans. More than likely looking for food, the figure's black and white spotted tail hangs limply as the mutant doesn't see anything appetizing inside of the smelly waste container.";
	if food is owned:
		say "A part of you wants to feel sorry for the mutant, but is it your job to say every kitten, or canine in this case, stuck in a tree? (Y=yes, N=No)";
		if player consents:
			say "Whistling to the Dalmatian to get the cano-mutate's attention, you swallow nervously when you see the other's floppy ear flick and then the Dal's black-spotted face turn in your direction. You have all of a half second to realize that you may have made a slight mistake as you watch the other run over to you after looking at your outstretch hand holding onto a small parcel of food. Bracing yourself for impact you ready yourself to hit the asphalt, but get the surprise of all surprises when the Dalmatian creature simply skids to a stop two feet from your outstretch hand. Going down onto its haunches to beg up at you like a normal canine, the Dal whines pleadingly while staring you down with big soulful brown eyes.";
			say "The whines of hunger that comes out of the other are almost heartbreaking for you to hear. Setting the food down in front of the anthro and then taking a step back you watch as the spotted creature quickly gobbles up the food as though it hadn't eaten in days. Knowing how rough things are here in this city, the Dal probably hadn't. When the other finishes, it turns its muzzle to look up at you adoringly and then gives you a happy bark before trotting off. You suddenly feel good about yourself for what you have done, even though you're slightly lacking on provisions as of now.";
			increase morale of player by 5;
			increase humanity of player by 12;
			if humanity of player > 100, now humanity of player is 100;
			delete food;
			increase score by 10;
		otherwise:
			say "Shaking your head you turn away from the scavenging mongrel to make your way down the street some other way. It's not your business what others have to do to survive. You've currently got your own shit to deal.";
	otherwise if chips is owned:
		say "You know that you yourself don't have any food, but maybe some of the small snacks you have in your pocket will tide the creature over. It might not be much, but it's better than trash can food, right? (Y=Yes, N=No)";
		if player consents:
			say "Whistling to get the Dalmatian anthro's attention, you watch as it turns and then looks down to see what you put on the ground at your feet. Turning to step away from the cano-mutant, you're already moving off on your way just as your ears pick up the sound of charging footsteps going over to grasp your left behind treats. It might not have been much, but it was what you had after all. A sense of elation runs through you because of your gracious efforts.";
			increase morale of player by 2;
			increase humanity of player by 6;
			delete chips;
			if humanity of player > 100, now humanity of player is 100;
			increase score by 5;
		otherwise:
			say "Knowing that you yourself are doing without you move along down the street, completely ignoring the black spotted mutant rustling through the garbage bin.";
	otherwise:
		say "Knowing that you yourself are doing without, you move along the street, ignoring the black-spotted mutant rustling through the garbage bin.";
	now Helping the Helpless is resolved;


Section 2 - The Pack

The Pack is a situation.
The sarea of The Pack is "Outside";
When play begins:
	add The Pack to badspots of furry;
	add The Pack to badspots of guy;
	add The Pack to badspots of girl;

Instead of resolving a The Pack:
	say "Running through the city streets, you look up to the grey clouds above just in time to hear as a clap of thunder resonate throughout the sky. Shivering because you know that you're about to be caught in a small shower you instinctively find yourself looking around for some kind of cover to wait out the incoming rain. Twisting your head from side to side you finally see a small shop with boarded up windows standing quietly between two tall trees. A second boom of thunder has you making your way over to the slightly cracked door of the building and then proceeding to knock down the door as you frantically hope to find suitable shelter inside.";
	let bonus be (( the Strength of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 8:
		say "Breaking into the front of the store, you find yourself encased in pitch black darkness just as a bolt of lightning lights up the sky. Turning to see that small droplets of rain are coming through the now opened door behind you, you swiftly move to shut the wood barrier before the inside area can get soaked. Once the door is closed, you find yourself breathing a sigh as you think about how safe you should be from the coming storm, however the feeling of security quickly abandons you as you hear a dark rumble come from around you. Slowly rolling a nervous eye towards your left side, you flinch as you hear someone striking a match. The darkened store brightens instantaneously as the unknown person lights a large candle and then picks up said candle by the holder it's placed into. Turning around to regard the other, you find yourself gasping slightly as you note the imposing figure of an Alpha Wolf standing in front of you, on two legs no less, with the same strong lupine features you have come to both know and slightly fear in this city. The other looks at you with uninterested grey eyes and you have to wonder if the other was the one to growl, that is, right before several dark forms slowly assemble around the candle-holding canine.";
		say "'Who are you, stranger? What are you doing here?' The smooth and even tone from the Alpha Wolf makes you pause to think as you look notice more and more wolves gathering together around their leader. Many of them are slightly dirty, probably from the lack of working water in the city, and have tangled and matted fur running along their strong, bulky frames. The smell of musky canine seems to rise steadily inside of the small shop as the canines break free from the surrounding shadows to stand around their alpha until they form a wall between their leader and you. 'S-sorry, I-I just came to get out of the rain.' You say just as a booming roar of thunder strikes out overhead. You jump a little, but manage to calm down before your heart can leap into your throat. A hand pressing over your chest helps with this effort.";
		say "'I see. You are welcome to say if you cause no trouble here.' The Alpha Wolf says somberly and you are quick to nod as you watch the other wolves around you growling and watching you with glowering eyes. 'So be it then,' This is the last the dominant male has to say to you before he turns and then heads up a flight of stairs you hadn't noticed beforehand. The assembled gathering of wolves watch you carefully for another minute as you look around for a place to wait out the storm before they all head up after their alpha. Many of them walk onto all fours like quadrupeds while others take a two-legged stance when heading upstairs, but all of them exclude and aura of viciousness about themselves making you very cautious of anything you might do while within the little shop. Not really knowing how or why this group of canines have all banded together, you don't take the time to bother caring as you hunker down to wait out the storm.";
		say "Twenty minutes into your self-imposed siesta you hear the familiar noises of someone moaning coming from upstairs. Taking a guess as to what's happening you snort before burying your head between your shoulders with the full intention of ignoring the disturbance. It's only when you hear a female begin to yelp that your head snaps up and your senses go to blazing. Wondering why there was a woman making such noise, even though in the back of your subconscious you instinctively know why, you narrow your eyes as the desire to check things out upstairs courses through you. Should you really go to investigate? (Y=Yes, N=No)";
		if player consents:
			say "Carefully getting yourself up you stretch to get your bones back into their proper place before moving over to take the stairs that the Alpha Wolf and his pack had gone up."; 
			let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 10:
				say "Thankfully your carefully placed footsteps keep you from making any noise as you head on up the building. You smirk slightly in triumph for your cat-like ability to be silent as you get to the second floor of the dilapidated shop. When you do though your eyes nearly bulge out of their sockets as there in the middle of the floor, surrounded by over a dozen wolves, is a man in his early thirties panting and gasping while slamming his ass back and forth against the groin of the Alpha Wolf. Thrusting himself into the human with a smooth set of motions the larger canine steadily works to drive his long red cock back and forth inside of the other male's backside, breaking through whatever resistance he might have found, as he swiftly works to change the male into a proper wolf. Confused as to the feminine shout that you had heard just now you tilt your head to the side in confusion, and then gasp silently as you watch the onset of breasts pushing out from the other male's body.";
				say "Looking over the man, who is slowly becoming a female, you see that the unnamed human's skin is slowly being covered with a dark coat of fur of fur while at the same time [']her['] waist is narrowing itself down to become curvier. The next cry that comes from the she-male sounds almost completely feminine in vocalization as the other lifts hir head up to pant and then drool openly while whining as shi gives hirself over to her new alpha. The look of bliss on the other's face would not have been so bad had hir cock not been shrinking down to become nonexistent. Not wanting to see any more, you tentatively back up to move back down the steps so as not to having your peeping found out. Going back downstairs and listening to the strong howls of the wind coming from outside you hunker yourself down close to the door and then proceed to wait the storm out. Listening to the male upstairs yelping as he slowly becomes more and more feminine you try not to shudder as you imagine what it must be like for the other to be losing his masculinity. The pleased noises that the other makes seconds later make you think that the other doesn't mind so much as she is now receiving pleasure the likes that a regular human man could never dream. A resounding yip has you jumping slightly as you can just imagine that the new female wolf's ass has just spread enough to the Alpha Wolf to slip his engorged knot into her. That's not your problem though, you surmise because immediately after the rain lets up you promise to bolt of out of the little shop to get well away from this pack of mutants.";
			otherwise:
				say "You curse slightly as your feet make the floorboards squeak. You have only a second to regret your curious nature as something comes to the front of the stairs and then slams down into you forcing both you and it to tumble as you both fall down the stairwell.";
				say "Upon groaning and then blinking to look up at what hit you, you find yourself gulping quietly as your eyes lock on to a drooling muzzle snarling down at you angrily. Acting on pure instinct you brace your foot underneath the wolf atop you and then kick with all of your might to shove the incensed canine away. With a loud yelp and then a yowl you have just enough time to breathe a sigh and then get up onto your feet to scramble for the front door of the shop before the canine is up and darting after you. Getting to the door and grabbing hold of the handle you throw open the wooden barrier right as the beast grabs your ass between its teeth. The hard bite that you receive makes you scream out loud which inadvertently summons some of the other wolves. Hearing the pack coming for you, you reach back a hand to swat the canine tugging at your tender rear in order to get it to release you.";
				say "Thankfully, the wolf lets go of you, though not without taking a part of your pants with it, and then you speedily throw open the front door and head out into the pouring rain to get away. You don't take the time to care that you are getting soaked as you rush down the street. This will be better than being mauled by ferocious canines any day, you think while blinking through the veil of water coming down from the sky.";
				decrease hp of player by 5;
				infect "Feral Wolf";
		otherwise:
			say "Knowing better than to stick your nose in where it doesn't belong you settle yourself back down with a weary grunt and then close your eyes so that you can block out the noise coming from both upstairs and outside with the raging storm now seeming to pick up in intensity. The cries from the female soon become yips and whines and you hazard a guess as to what has just happened before ignoring the now crooning whimpers coming from upstairs. It really doesn't matter though since [']that['] sort of thing has become a natural occurrence in this city. By the time you've finished your nap the rain has let up outside. Picking yourself up to leave you find yourself just in time to watch the Alpha Wolf coming back down the stairs to check on you. Giving the other a cordial nod for his hospitality you make your way out of the front door just in time to miss thirteen other wolves come down to see about their alpha. One of them was limping slightly, but at the same time this particular lupine was panting happily as a long tail wagged wildly behind their backside. The sounds of something liquid dropping onto the ground from behind the other completely escaped your hearing as you are already five steps down the now wet street.";
	otherwise:
		say "Grunting as your shoulder bangs into the doorframe without causing it to open you curse and then shake your head as you try to prepare yourself for another ramming charge. However, the pitter patter of rain soon comes down around you and you end up getting drenched before you can make your second effort of it. Swearing and throwing an arm up to shield your head you move away from the door to find another spot to take cover in. Running as you do, coupled with the growing storm raging around you, you fail to hear a woman's cry coming from the derelict little shop. The yelping sound soon turns into a series of biting moans as the minutes pass, but by then you are already a block and a half away. Too far to hear or care.";
	now The Pack is resolved;


Section 3 - Lady Surrounded by Butterflies

Lady Surrounded by Butterflies is a situation.
The sarea of Lady Surrounded by Butterflies is "Plains";

Instead of resolving a Lady Surrounded by Butterflies:
	say "While making your way across the dry plains, you come across the mystical sight of a woman with long black hair being surrounded by butterflies. When her stray tresses begin to flutter through the air you lower your mouth in awe as you watch the woman stroke a tanned hand back behind her billowing hair. Then, before you can move some of the butterflies come over to playful dance alongside her hair. None of the insect-like creatures seem to be remotely interested in sexually trying to entice the woman into relieving herself from the black cowl she has wrapped around her figure. Instead the butterflies seem to be almost trying to make the woman smile as they circle around her, making her eyes track their movements as they move quickly back and forth before her face. This doesn't make the woman's lip rise from their downcast frowning, but her eyes do begin to twinkle slightly. The sight of several other butterflies coming over to aid their friends's efforts makes you feel something at peace on the inside as you continue to watch the other for several minutes before blinking as you notice the woman turning to start walking away. Thankfully though the woman and her butterfly entourage are moving opposite of where you are. Gulping and feeling like a voyeur you make your way about your business as swiftly as you can. The sight of the woman will stay with you a long while after though.";
	increase humanity of player by 10;
	if humanity of player > 100, now humanity of player is 100;
	increase score by 1;
	now Lady Surrounded by Butterflies is resolved;


Section 4 - The Dorms Part One

The Dorms Part One is a situation.
The sarea of The Dorms Part One is "Campus";

Instead of resolving a The Dorms part one:
	say "Going through the dormitory area of the college campus, you find yourself coming to a slow halt as you hear the rampant sounds of laughter coming from a slightly open doorway. Curious as to what the joke is you walk over to the slightly parted doorway and then push at the wood barrier carefully with your foot to get a better look inside. What you come to find is a small collective of half changed guys all piled around while playing video games together in front of a big screen TV. The dorm boys don't seem to be bothered by the fact that they are losing their humanity as the two collie boys nudging each another on the couch seem much more interested in whatever game their competing against. Back behind them two other students, a cougar and panther, respectfully, stand tall while pointing, jeering and laughing at their friend's antics. Seeing this you pull yourself away from your position by the door to walk away on down the hall. It feels good to know that some things will never change despite the epidemic going on.";
	increase score by 1;
	now The Dorms Part One is Resolved;


Section 5 - The Dorms Part Two

The Dorms Part Two is a situation.
The sarea of The Dorms Part Two is "Campus";

Instead of resolving a The Dorms Part Two:
	say "Moving throughout the dormitories, you stroll through the plush carpeted hallways until you hear the sounds of faint sobbing coming in through an open doorway making you stop in your tracks. Not really sure, but feeling as though you should go and have a look to see what the problem is you make your way over to the half open door and then stick your head inside of the room. What you see is a small puma girl being held in the arms of a larger Siberian tiger girl as the smaller feline cries and nuzzles her forming snout into her friend's shoulder. 'I-I can't go home like this, Carol!' The puma lifts her head to yowl up at the white tiger.";
	say "'They'll disown me for sure over this! Bad enough that they ship me out here after finding out that I'm a lesbian! Now I'm turning into a cat too!?' The white tigress, Carol, simply looks at her companion and then leans down to lick the other over the face in a reassuring gesture. The soft sweeps of the bigger cat's tongue over the smaller feline's face seems almost loving as the white tiger consoles her friend. 'It'll be fine Liz.' The tigress starts to say as pulls herself back to stare at the other girl. 'If push comes to shove and they don't take you back then you can just move in with me and my folks!' The tigress purrs to the other before pulling the puma girl close. 'I know my folks would love to have you as a second daughter since all they've got, besides me, is a bunch of good-for-nothing sons.' The white tigress smiles while saying this.";
	say "The puma looks up at her friend, gauging the sincerity of the tiger's words carefully, and then upon finding them to be truthful the smaller feline instantly brightens up. Smiling at Carol the puma says, 'A-are you sure? I mean, I know that there's not much space back at home for you and I wouldn't want to be an imposition and...' The puma continues to blabber on and on before a white furred finger comes up to hush her. Said finger shortly removes itself only to be replaced by firm lips as Carol leans down to kiss the smaller feline onto the lips. Liz seems not to know what to do with herself at first, but she quickly gets an idea as she gives herself over to her obvious girlfriend while lying back against the couch the two are seated on.";
	say "Pulling yourself away from the door, you turn to go about your business. There's no need for you to interfere with what's happening here as all is right in the world.";
	increase score by 1;
	now The Dorms Part Two is resolved;


Section 6 - The Dorms Part Three

The Dorms Part Three is a situation.
The sarea of The Dorms Part Three is "Campus";
When play begins:
	Add The Dorms Part Three to badspots of furry;
	Add The Dorms Part Three to badspots of guy;
	Add The Dorms Part Three to badspots of girl;
	Add The Dorms Part Three to badspots of hermaphrodite;

Instead of resolving a The Dorms Part Three:
	say "Making your way through the college dorms, you find yourself stumbling over a large fluffy towel lying prone in the middle of the floor. Wondering who had left that there you turn your head to regard several distinct noises coming out from the huge co-ed washroom on your left. Understanding quickly comes over you as to what is going on here after you kick the towel with your foot and then note that the cotton material is somewhat sticky with yellow goop. However, despite this a great sense of inquisitiveness comes over you as you wonder if you should go and have a look see inside... for educational purposes of course. Go in? (Y=Yes, N=No)";
	if player consents:
		say "Deciding that being a bit of a letch won't be the worst thing you've ever done you tentatively step inside of the bathing/bathroom room to see what's going on."; 
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 10:
			say "You duck out of the way just in time to miss getting splattered by a Alpha Husky pumping his cock while masturbating in the middle of the tilted bathroom. The wet and sticky cum that now lines the wall behind you is thick with the pungent musk of dominant canine and upon lifting your head to blink at the other male you wonder why in the hell is his beating off in front of the doorway. You have to gape slightly at what you see happening around you."; 
		otherwise:
			say "Not seeing it coming you find yourself getting splattered into the face by hot and musky cum. Spluttering and wiping the goop off before it can get into your mouth or nose you find yourself glaring angrily as you turn your eyes to the Alpha Husky effectively beating off on the floor of washroom. Wondering why the other is doing such a thing there right in front of the door way you look around and then gape slightly."; 
		say "When you turn your head to see several other campus student pounding and getting pounded by their classmates/friends you find yourself blushing somewhat at the rampant sight of such sexual promiscuity going on. The veritable orgy going on around you is so hot and wild that you feel yourself getting somewhat hot as you look at the multiple furry figures standing/sitting/lying around and fucking each other. Moving out of the danger zone of where the Alpha Husky is busy trying to pump another load out of his cock you move over to get in a better spot to really see what's going on.";
		say "By order of closets to the doorway to furthers you note a pair of lions, one male and one herm,  going at it hard with the male on his back while the herm deeply shoves hir dick inside of the other in order to dominant hir lover's flexing tailhole. Seeing the other's fat breasts jumping up and down while the hermaphrodite fucks her current lover you smile somewhat perversely while imagining how full the [']king of beasts['] must be feeling right about now at this slightly strange role reversal. Snickering you turn your eyes away from the rutting feline pair to the stallion and ocelot couple mating just five feet off to the side. The small cat was sitting on the tiles with his back against the wall while pumping the much larger horse up and down onto his overly long dick with a steady series of pumps of his arms. From what you can see of the horse's foot and a half long piece of male meat the other was loving being fucked like a mare -- if the gushing flared head was any testament to the stallion's feelings. Though it was slightly strange to see the bigger male being taken by the smaller feline, but then again you surmise that size had nothing to do with the want to be the receptive partner. Moving your gaze over to a cheetah and rabbit, both of whom are girls and sixty-nining each other while lying horizontal on the floor, you have to tilt your head to the side to see clearly just how deeply both female's tongues are burying themselves into each other's snatches. And from what you can see, their twosome is going pretty deep into one another. Wet and sticky with their respective honey both female's legs and faces were drenched in their feminine juices. It's only after you turn your head completely to the right that you see the last person in the room standing tall against the wall.";
		say "Interestingly enough, the last character in the former showering-area-turned-brothel is standing by off himself and looking at you with a carefully guarded gaze. Tall, imposing and impossibly muscular the black bear anthro watches you with a cautious glare as he stands with his arms folded over his chest. Not quite understanding why, or rather how, the other is resisting this smorgasbord of carnal delight you walk over to talk to him to ask him just that. 'You coming to join the orgy, kid?' The ursine speaks with a voice that clearly has some age behind it. You blink twice before answering back that you were going to ask him the very same question, at the same time you have to try your hardest to figure just how old this guy was. The black bear chuckles at you almost ruefully as watches confusion dance on your face. 'Before this whole thing started I was a married gym teacher. So unlike the group in front of me I've got more control over myself.' The bear puffs up proudly, but then flushes some when you give him a [']look[']. The ursine then ducks his head to the side to cough nervously. 'Well that, and my old lady would kill me if I so much as sneezed the wrong way at the students here. She's a lunch lady here, FYI.'";
		say "Not really understanding you nod to the bear and then step your way casually around the Alpha Husky, who is now on his umpteenth orgasm of the day, out of them shower room. Heading down the hall you chuckle to yourself as you think over the black bear's words. Just how scary must someone be to make their spouse so afraid they wouldn't even attempt to try and have sex with a willing, not to mention of legal age, partner during these dark and debased times?";
		increase libido of player by 15;
		if libido of player > 100, now libido of player is 100;
		increase score by 1;
	otherwise:
		say "Shaking your head you try not to imagine what's going on as you step over the prone towel in front of you and then go about your way on your business. Some things should just be left well enough alone.";
	now The Dorms Part Three is resolved;


Section 6 - Training

Training Room is a situation.
The sarea of Training Room is "Campus";
When play begins:
	Add Training Room to badspots of furry;
	Add Training Room to badspots of guy

Instead of resolving a Training Room:
	say "Finding your way through the campus grounds you end up making your way downstairs inside of the college's gymnasium after jogging across the slightly sticky grass over to the imposing looking building. The musky smell of sweat and testosterone is heavy here, but surprisingly there is little cum or female juice wafting about on either the walls or the training equipment. Raising an eyebrow at this you figure out why as you notice a large wolverine standing by the door you just entered through. The large and slightly hunched over male is draped in barely any clothing, but from what you can see as you walk next to him he is far from aroused as he looks over the students assembled within the room with a calculating look in his dark eyes. Either this man was once one of the gym teachers before the epidemic and watching out over the place to make sure that it stayed in top shape, or either he had been put here by someone else to do the same thing. Either way from the look the wolverine gives you as you enter into the room you can see in his eyes that he won't accept any nonsense from you. Nodding to him while making sure to keep an arm's length of space between the two of you, you go over to have a better look at the gym and its surroundings.";
	say "All around students strained their bodies to become in greater shape than what their individual mutations had bestowed upon them and upon seeing this you had to give a nod to them for their fortitude. Over by the leftmost side of the room there were several canids and equines busy hitting a bunch of assorted punching bags hanging from the ceiling. Not far from them there were several more canines jogging on treadmills while next to them several athletic felines used various weight machines to strength themselves. Over by the rightmost wall there were three students -- a rabbit, a lemur and collie -- were busy doing pushups, and from the looks of things they were making a contest of it. Seeing everyone working so hard makes you want to try and do something yourself. But looking at the group around you, you wonder if you should just take over a piece of equipment as you aren't [']technically['] a student. Should you really go for it? (Y=Yes, N=No)";
	if player consents:
		say "Figuring that the worse that can happen is that you can make a fool of yourself, you go over in the middle of the gym and then look around for something to use for your own personal training. So many machines are present but only the treadmill and stack machine seem to really call out to you. Both would be good to use for individual muscle growth, but which one to use? You really don't feel like doing both right now, even though you probably could if you put in the extra effort, but that's just not worth the fatigue you know you'll have to deal with after your workout. So in deciding to use one or another, which should you use? (Y=Treadmill, N=Stack Machine)";
		if player consents:
			say "Making the decision that you could use some extra leg power you go over to a lonesome treadmill and the proceed to turn the machine on. Hopping onto the machine you start the machine up and then begin jogging lightly to get yourself going. Quickly though you find that the speed is far too slow for you and you turn the dial of the treadmill up higher so that you can start to move faster. Going at an increased speed feels much, much better to you and in running faster you let your mind and thoughts simply slip away as you move on instinct. Before long you notice the sounds of others around you and you turn your head to see several of the student body looking at you with praise on their faces to see you going so fast. Not really understanding you look down and then note that you are going almost faster than a cheetah as your legs move of their own accord. Seeing this and then feeling your heart hammering inside of your body at a breakneck pace you decide to slow down before you hurt something. When you finally do stop though your body feels as though you could have gone on for almost half an hour longer, though you are somewhat thirsty and hungry at the same time.";
			say "Coming to realize that this is enough for one day you walk nonchalantly out of the room without saying a word to some of the cheering guys and girls talking about you. A few hands do smack your rump however, the offer to come and [']see them later['] being whispered into your ear before the wolverine guarding the front door growls loudly to scare everyone back to what they were doing. You blush some, but make your way out without incident. Between the glare you get from wolverine and the lewd slaps you received across your rump you have a feeling you won't be back here anytime too soon... or ever.";
			increase dexterity of player by 1;
			say "Your dexterity has increased by 1!";
			increase hunger of player by 15;
			increase thirst of player by 10;
			increase libido of player by 12;
			if libido of player > 100, now libido of player is 100; 
			now Training Room is resolved;
		otherwise:
			say "Deciding that you could do with some more arm and upper muscles strength you go over to a lonely-looking stack machine and then proceed to adjust the pin into what weight on the contraption to what you think you can pump. Once that has been accomplished you go over and sit down and take the handlebars to begin pumping iron. What you find is that the weight you have set is so minuscule that you nearly send the plates of iron up to the roof. Not feeling the strain that you know you should be feeling you blink to yourself in confusion as you look at the now hovering piece of metal. Slowly releasing the handlebar you get up and then return to the backside of the stack machine to replace the pin under a greater set of plates before returning to your seat. This time you find that you can feel a slight burn as you pull the handlebar down into yourself. Grunting in satisfaction as your arms start to flex and strain from the effort you begin a long series of reps over the course of the next hour.";
			say "When you finally get done, on your fiftieth set of twenty-five reps you find that your arms are sore, but in a pleasant sort of way as you get up from your seat. When you do however, you nearly bump face first into someone standing behind you. Blinking owlishly and then turning your head up you find that several of the assembled students are cheering at you in praise of your efforts. Blushing and then smiling nervously you nod to thank them and then proceed to leave out of the room. Sadly you don't manage to do so without several slaps across the ass and a few offers to [']meet up later['] being tossed you way. The wolverine guard growls out loud when he sees that things are about to get out of control and immediately everyone scatters to go back to what they doing. The big male glares at you as you pass and you suddenly get the feeling that coming back might not be a good option. It's fine though as suddenly you feel very hungry and thirsty for some reason. Maybe it'd be a good item to get some eat now?";
			increase strength of player by 1;
			say "Your strength has increased by 1!";
			increase capacity of player by 5;
			increase hunger of player by 15;
			increase thirst of player by 10;
			increase libido of player by 12;
			if libido of player > 100, now libido of player is 100; 
			now Training Room is resolved;
	otherwise:
		say "Shaking your head you decide just to marvel at all the other sporty anthromorphs here instead of trying to work out. You already get enough of a workout just trying to survive this screwed up city anyway, what with either trying to escape feral mutants or fighting them when your feet can't get you out of danger. Looking over the assembled crowd for several more minutes you finally get your fill of the college's gym almost an hour later. From what you can see everything here is as it should be, and will continue to be so with the wolverine guarding the place. So turning on your heel you tip your head to big male and then walk out without looking back.";
		Now Training Room is resolved;


Section 7 - Janitor's Closet

Janitor's Closet is a situation.
The sarea of Janitor's Closet is "Campus";
When play begins:
	Add Janitor's Closet to badspots of furry;
	Add Janitor's Closet to badspots of guy


Instead of resolving a Janitor's Closet:
	say "Hearing something coming from the closet you are just now passing you are almost afraid to know what's going on in there, but inquisitiveness makes you step over to the door to place an ear to the flat of the wood. The muffled sounds of someone groaning and whimpering have you tilting your head to the side in curiousness. Wanting to know what's going on and, lacking any thought that you are about to put yourself in danger, you reach a hand out to turn the knob of the door to open it. Pulling the barrier open you find yourself being tackled by a large furry form before you know what's happening. Grunting when your back hits the far wall you shake your head and then blink when you find yourself looking up into the growling, lustful face of a giant wolftaur. Cursing yourself, and wondering if this is what Pandora once felt like, you snarl back at the mutant and then prepare yourself for an inevitable conflict.";
	challenge "Wolftaur";
	if lost is 0:
		say "Knocking down the wolftaur you find the creature whimpering and panting up at you while shaking it's head as though coming out of a daze. 'Thanks, mac. I REALLY needed that.' The smooth voice of a wolftaur says after some time and you can only nod as you hesitantly go over to help the other up, seeing as the other has regained some mental control. Looking the [']male['] wolftaur over you ask him why he was locked up and find yourself getting a slight sob story of an answer. 'When this whole mess started I was taking care of one of the strays that come around here from time to time looking for something to eat. One minute I was talking to it about my boring life and the next minute I'm locking myself up into the closet because I'm growing fur and an extra set of legs. I think there was so much going on here that no one was worried over what happened to me.' The wolftaur smiles at you before shaking himself down. 'If you hadn't released me and then knocked some good sense into me then I'd have been in there for who knows how much longer. Thanks, guy.' The wolftaur leans down to lick your cheek and you laugh some at the feel of his wet tongue drooling over you.";
		say "When he pulls back you ask him what happened to the dog. The canine-equine creature blushes at you before raising an arm to scratch his head. 'Well...ugh you see...the dog and I were on good terms with each other and so...' The fumbling wolftaur tries to say something, but you can't understand him. That is until he curls his left paw into a fist and then sticks the index finger of his right paw into the hole he just made. 'Let's just say that she and I got a lot closer after my clothes started to tear off my body.' You blink at this, tilting your head to the side somewhat, before you watch the long tail of the wolftaur wag at you suddenly. Quickly you get the point and blush at the man. 'Yeah...I'm not sure how to feel about that, but I'm going to make the most of it since I've got my senses back. Thanks again.' Another lick and then the former-janitor-turned-wolftaur is going back into his little closet space. A second later the creature comes out with a bucket, mop and broom. 'What? I'm still the janitor, after all. If I don't clean up this place then who will?' And then the other is off and down the hallway with a wag of his tail and sway of his hips.";
		increase score by 1;
		now Janitor's Closet is resolved;	
	otherwise:
		say "Getting yourself tossed around like a ragdoll by the larger wolftaur you barely have the time to see the other jump away from you with a snarl, completely lost in his feral minded haze, as the other runs off down the hallway. Grunting and getting up you watch as the wolftaur -- who was probably the janitor -- disappears out of sight before you can blink. You suddenly hope that the other staff here can handle the beast because it looks like the proverbial wolf is on the prowl.";
		now Janitor's Closet is resolved;


Section 8 - Teachers Lounge

Teachers Lounge is a situation.
The sarea of Teachers Lounge is "Campus";

Instead of resolving a Teachers Lounge:
	say "Hearing the voices of people talking, you find yourself heading turning to see a room marked Teacher's Lounge. Instantly your body freezes up as old memories of how you had been taught not to enter in a room marked with this title grab at your heart. However, being the older and much more mature person that you are you simply disregard these old feelings in favor of going into the room. Once you do however, you find several eyes immediately looking at you in confusion as the gathered group of staff turn to look at you. From what you can see most of the people here have already transformed into more animal-like figures though each and every one of them appear to be in complete control of themselves as no one is either naked or losing themselves into a rutting haze. You blink twice at seeing two giraffes are sitting on a large plush sofa off to the side while drinking something slightly steaming, probably coffee. When a large and bored looking skunk with a red stripe going down his tail grunts to get your attention you simply chuckle unsurely at the others and then nod to them before stepping back out of the room. Obviously the teachers were trying to get a small break in before having to go out to deal with their students. No sense in bothering them, right?";
	increase score by 1;
	now Teachers Lounge is resolved;


Section 9 - Roof Top

Rooftop is a situation.
The sarea of Rooftop is "Campus";

Instead of resolving a Rooftop:
	say "Trudging up several flights of stairs you find way up to the uppermost floor of the college's main building and then coming upon a metal door marked [']Roof[']. Smirking at the incredulity of someone needing to actually put a sign up on the only door at the top of the highest floor you throw open the barrier and then step outside. What you see when you head onto the roof make you freeze as you spy several students, some dressed in the college's standard issue uniforms, and some not, busying themselves with this or that or the other. From what you can see there are two gorillas are busily making out over by the left side of the roof's fence. One monkey guy is talking to a smiling and chuckling rat girl. A group of four of leather jacket clad wolves is busy playing cards over by the right side of the roof -- most of them are growling and baiting each other with snaps of their muzzles. And one lone female feline wearing a black miniskirt is smoking while looking up to the sky. From what you can see everyone is busy trying to either enjoy themselves or just trying to make the day pass by just a little quicker by ignoring the happenings around them. Deciding to do the same, since you are here and all, you unceremoniously walk over to an empty side of the roof and then grab the fence protecting you from stepping out over the edge of the building. Looking down at the world below you stare in awe at the large campus of the college as the wide open space stretching out for almost miles around you dominates your vision.";
	say "From what you can see there is much more to explore than what you could have been shown in any pamphlet. It takes you a second to recall that you did remembering seeing this place once before in a brochure, but you're not exactly sure when that was. Shaking your head you realize that it doesn't matter now. The breathtaking sight and feel of the college makes you shake your head to ward off the meaningless reminiscence as you watch so many anthros moving around down on the ground. Some were in groups. Some were alone. Some were trying to fuck each other and some were just strolling along without a care in the world. While drifting off as you do you don't feel it when someone comes over to brush up against your back. Too busy being enthralled by all of this awesomeness you also don't take notice when said someone kisses you on the cheek and then places something into your backpack. What you do notice is that after thirty minutes of just staring you are more than ready to head out back into the wide and crazy world down below. When you look around you find that almost everyone else has departed, save for the female feline still smoking her cigarette. You smile to the black skirt wearing feline without her seeing you, more out of politeness than infatuation, really, before heading back down into the main building of the college.";
		say "[special gift]";
		increase score by 1;
		now Rooftop is resolved;

to say special gift:
	let T be a random number between 1 and 7;
	if T is 1:
		increase carried of food by 1;
	if T is 2:
		increase carried of water bottle by 1;
	if T is 3:
		increase carried of chocolate milk by 1;
	if T is 4:
		increase carried of testosterone pill by 1;
	if T is 5:
		increase carried of Birth Control Pill by 1;
	if T is 6:
		increase carried of wolf cum by 1;
	if T is 7:
		increase carried of healing booster by 1;


Section 10 - Dog and Pony Show

DogAndPony Show is a situation.
The sarea of DogAndPony Show is "Campus";
When play begins:
	Add DogAndPony Show to badspots of furry;
	Add DogAndPony Show to badspots of guy;

Instead of resolving a DogAndPony Show:
	say "'I really wish the water would come on already!' A voice rumbles dangerously just as you pop your head into the laundry area nestled downstairs in the campus's main building basement. Having been wandering around all this time you had only come down here because you were wondering about the full extent of the campus and now it would see that your journey has led you to quite an interesting scene. Standing there in the middle of the large expanse of a room jam-packed washers and dryers is a naked shire horse leaning against up against the wall with his muscular arms crossed together over his impressive chest. Over on the left side of the stallion -- as you can tell the other is by the prodigious sheath and full testicles swaying between the horse's black legs -- is a smaller Doberman scowling at the now defunct washer machine. His clothes sit atop the unusable machine in a bright blue basket. 'Eric, there's nothing we can do about it right now.' The shire says before whinnying in mild vexation. 'Why don't you just go all natural like me and half the other students? It's not like it would be so wrong now with everyone being much more furry and whatnot.'";
	say "The Doberman turns to regard the taller male and then shakes his head stubbornly. 'That might be good for you Carl, but the last thing I want is other's seeing how...meager...I am.' The Doberman blushed at this and the stallion couldn't help but laugh as he looked over the boxer short wearing canine. 'Eric, you're a dog, your junk is in your sheath nine times out of ten anyway, so not a lot of people are going to be able to see what you have down there. Not unless you excited by some hot eye candy, that is.' The last statement makes the Dobie duck his head and flick his ears somewhat in embarrassment. 'Hey, if you want I can make you feel better about this whole thing.' Carl says evenly as he walks over to stand behind the Eric. 'How so?' Before the Doberman could come to regret his words the big shire grabs the Doberman's clothesbasket, runs over to where the word TRASH is written onto the wall, opens the door to the garbage chute and then tosses the clothes inside. Once the dirty articles disappear down the void of the open doorway Carl kicks the garbage shoot close and then heads back over to the now stunned and sputtering Dobie. 'See, problem solved!'";
	say "'Are you crazy! Those were some of my best clothes!' Eric shouts while growling at the bigger male. 'Well, you weren't going to wear them since they were dirty, right?' Carl winks and then whickers at his friend. 'Not the point! Now all I've got to wear is these boxers around the dorms and they can barely even... Carl why are you looking at me like that?' The Doberman took a few steps back from the shire as the bigger horse begins to advance on him. The slightly maniac look on the other's muzzle spoke volumes. 'Carl, don't you dare! Don't even think about it! Carl!! DON'T!!!' Before the Dobie can say anything else the stallion was diving for the other. Have a one-third ton sized horse flying towards him the Doberman stop dead in his tracks and this turns out to be exactly what the shire wants as he grapples the other to the floor, tears Eric's boxers shorts off of his black and brown hide and then proceeds to toss them casually over his shoulder. Now with the two of them naked the Doberman can only whimper and whine as Carl begins to touch and fondle him. 'See, my doggie's got a nice, thick bone ready to show the world' The shire speaks with both a tease and some adoration in his voice as he starts to pump Eric's sheath with one of his meaty hands. 'I so hate you right now.' The Dobie grunts and tries to snarl but his words were soon lost in a moan as he pumps his hips up and down into his [']boyfriend's['] hand. 'I know, but you'll be loving me in about the next ten seconds, so I really don't mind.' Carl snickers as he coaxes the fullness of his lover's cock out of the Dobie's sheath.";
	say "Knowing where this was going you pull your head back from out of the doorway and then turn to leave about your way. An idle thought shoots through your mind over about what the Doberman meant when he called himself [']meager['] because from what you could see Eric was packing some serious heat in between his thighs. Maybe he's one of those insecure kinda guys, you think as you move along the downstairs area of the campus.";
	increase score by 1;
	now DogAndPony Show is resolved;


Misc Scene 5 ends here.
