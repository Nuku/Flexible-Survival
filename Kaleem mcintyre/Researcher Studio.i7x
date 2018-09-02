Researcher Studio by Kaleem mcintyre begins here.

Section 1 - Researcher Studio

Researcher Studio is a room. It is private. It is a fasttravel.

The description of Researcher Studio is "A small two story home stands in the middle of the plains like some kind of bizarre guard post. Coming from out of the only chimney up on the roof is a thick line of grayish-white smoke filling up the surrounding area with a strong scent of sulfur, the likes of which is probably keeping away the mutants and other animals running around here. Over by the right side of the house sits is a glittering pool of pure water that glimmers almost ethereally as the wind ripples at its surface. On the other side of the house are large grooves of plants, herbs and fruits growing silently as if in wait to be picked, watered or else pruned by the proprietor of the house.".

instead of sniffing Researcher Studio:
	say "Breathing in the time that mixture of scents you notice that the sharp tang of herbs, smoke, sweet fruit and something calming wafting throughout the air.";

North of Researcher Studio is MainRoom.


Section 2 - Main Room

MainRoom is a room.
The description of MainRoom is "Inside of the main room of the studio the large expanse of space has been decorated to both look and feel comfortable as a large and plush beige sofa sits with fluffy green rug lying across the floor underneath legs of the couch. Over by a side door leading to an open kitchen sits a cedar table and black leather chair with a laptop quietly humming on top of the desk's surface. On the other side of the table there is a single door that has been kept open showing off Omio's bedroom. A pair of stairs at the back of the room leads up to a darkened area while opposite of said stairwell a single shut door looms almost arrogantly with a large deadbolt keeping the unknown area locked up tight. Relatively speaking the living space of the studio would look rather inconspicuous had it not been for the large cauldron boiling in the fireplace with gray smoke coming from out of the oversized black pot.".
Omio is in MainRoom.

instead of sniffing MainRoom:
	say "The living area smells faintly of the warm homey scent that one could come to expect from a regular suburban room.";

South of MainRoom is Researcher Studio.
East of MainRoom is Bedroom.
West of MainRoom is Kitchen.
Up of MainRoom is Vacant Upstairs.



Section 3 - Omio

Omiotalk is a number that varies.
omq is a number that varies.

Table of GameCharacterIDs (continued)
object	name
Omio	"Omio"

Omio is a woman.
The description of Omio is "Humming to herself while puttering around the main room of her home is the strawberry redhead you met on the plains earlier. Five foot five inches tall, with golden eyes and a blue Chinese-like dress that covers her frame from neck down to her feet, the human-like woman mutters to herself while walking around doing this, that or the other. Her skin is tanned giving her the appearance of someone who is probably native to a southern island somewhere below the equator. Her face is somewhat sharp with clearly defined angles, yet instead of making her seem manly these lines make her more... cute in a girlish like way.".
The conversation of Omio is { "Research and Development!" }.

instead of linkactioning Omio:
	say "Possible Actions: [link]talk[as]talk Omio[end link], [link]smell[as]smell Omio[end link], [link]fuck[as]fuck Omio[end link], [link]tea[as]drink tea[end link][if omq > 0], [link]quest[as]quest Omio[end link][end if][line break]";

instead of sniffing Omio:
	say "Omio smells of a hard driven researcher, though a heavy haze of smoke and herbs wafts around the female giving Omio a slightly strange scent. A strong female odor clings to the redhead, but underneath that is... something else. Something... male?";

Instead of fucking Omio:
	say "'Sorry dear, but I'm only in love with my research.' Omio chuckles playfully at you. Her golden eyes speak of many things, but most of all they speak of the seriousness of her claim.";


instead of conversing the Omio:
	if Omiotalk is 0:
		say "[bold type]Have a long chat with Omio?[roman type] (Y=hear Convo, N=skip Convo)[line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "'Oh so you decided to come after all. Hmm, and here I was thinking that you wouldn't show up after my earlier lack of propriety towards you.' Omio looks at you with a rather hard, but curious edge in her eyes, but before you can think to ask what the problem is the strawberry redhead is shrugging her shoulders in an almost dismissive manner. 'If you'll sit on the couch and wait I'll bring that tea out so that we can have a drink together.' Not seeing that there is anything you can do, especially after Omio starts her forward path towards the kitchen area, you move over to sit down onto the plush sofa and then kick back to relax.";
			say "Murmuring somewhat happily from the feel of material underneath your [tailname of player] rump you let your senses lull for a moment as you take in the energy of the room around you. Warm, comfortable and, above all, [italic type]safe[roman type], you relax for the first time in a long while as you wait for Omio to come back. Feeling the wind from the open patio door blowing and across your body you let your eyes flutter close without realizing it.";
			WaitLineBreak;
			say "The smell of brewing tea underneath your nose wakes you from the short nap you didn't even realize you had started to take. Grunting quietly you look up just in time to see Omio playfully smiling at you while waving a porcelain cup underneath your face. 'Someone finds the place very comfortable I see.' Omio laughs as you blush while accepting the cup of tea from her. The redhead moves with a slow, but graceful air about herself as she amiably seats herself next to you on the sofa with her own cup placed gently onto her lap. Trying to concentrate more on the ceramic in your hand than the other woman you flush slightly as embarrassment colors your cheeks.";
			say "Stammering your thanks, you let the warmth of the tea bask against your face - from the smell, you can tell that it's a mixture of peppermint and chamomile - before happily downing the liquid. 'You're welcome, and I do apologize for my seemingly odd behavior while back there with the centaur. I didn't mean to make you think I was some sort of freak or anything like that, although,' the redhead begins to chuckle somewhat to herself, 'given what I do and where I am doing it, I may indeed be a bit a weird.' Sitting your now empty cup onto the floor you turn to ask the woman what she means.";
			WaitLineBreak;
			say "'Well, to be honest with you I'm a bit of a witch.' You blink and then look the other up and down while trying to imagine her as the stereotypical European styled spell caster and mystic. You just can't see it, but seeing your face taking on an inquisitive, if not confused, look Omio giggles and then shakes her head at you. 'Nonono! I'm not the black steeple crowned hat wearing, broomstick riding, black cat keeping witch that they like to play up on TV. I'm more of the medicine woman/holistic healer type[if intelligence of player < 16]. You nod in understanding to Omio. 'I'm so glad you understand what I'm talking about,' Omio chirps happily[else]. You can only laugh nervously as you have no idea what she's talking about. 'Hehe, it's fine. Not many people do in this [']modern['] day and age when over the counter medicines are so cheap and easy to get.' Omio seems rather disappointed, but hides it well[end if].";
			say "You ask the redhead what she's doing out here and how she's remained unaffected by the virus running around[if HP of Doctor Matt > 7]. 'Do you know what's really going on around here?' Omio asks and you nod your head as you give her some details of Dr. Matt's findings. The redhead blinks and then narrows her eyes as she looks at you with a somewhat dire look on her face[else]. 'Do you know what's really going on around here?' You relay to Omio that it's just an out of control viral infection like the military says. The redhead shakes her head at you sadly[end if].";
			WaitLineBreak;
			say "'Well you see I know for a fact that some of the transformations happening to people around here are more than just random occurrences or chance happenings. Omio waves to her computer and you quickly flip your head over to look at the quietly humming machine before turning back to regard your hostess. 'Using that machine I've been able to narrow down the properties of the [']virus['] and have to the conclusion that people's minds are actually causing them to transform into different species based on certain... at the moment... unknown factors.";
			say "'I'm hoping that with time I'll be able to analyze some of the more... unique properties of the virus and hand my research over to right people to give them a full heads up on just what they should come to expect in the next two to three months.' The look on Omio's face seems to speak of something both ominous and yet... prophetic at the same time. You ask the other what she means. 'Look, you have to understand, a lot of what they tell you on TV is only the tip of a much larger iceberg.' After placing her tea on the floor, Omio gets up and goes over to her table to rummage through her desk, only to then pull out a strange-looking book. Bringing the large tome over to sit in between the two of you, you find that what you are looking at is not a regular paperback.";
			WaitLineBreak;
			say "Taking the hard black covered book into your lap you realize that the tome both looks and feels [italic type]old[roman type]. By that you have guess that it was written before standard ink pens and paper came out as upon opening the book you find yourself looking at nothing short of an ancient grimoire. The likes of which could have been in one of those movies... the one about the wizard boy in England... you have a hard time remembering his name, but you do remember that he wore some goofy looking glasses and always had a loud mouth girl and wimpy boy around him. Flipping through the tome you find your eyes widening as you notice pictures of giant gryphons, dragons, unicorns, living gargoyles and other oddly shaped creatures lining the yellowed pages.";
			say "Turning your head to ask Omio what all this means you get an answer the likes of which you don't expect when the strawberry redhead flips through more pages and until she ultimately gets to a page where a warped looking creature glares heatedly up the reader, aka you. Eyes burning red with ill intent, you find yourself shivering slightly as you notice the [']creature['] you're not sure what to call it as it has the face of a hideous looking monster, but the body of a large snake with fur instead of scales covering its body and multiple limb-like extensions covering the thing's body. 'This,' Omio says suddenly as she grabs you attention away from the grimoire. 'This is what a certain organization I work for fears is coming and want to try and prevent from being born by helping the military to stabilize the epidemic running around the city. At the moment there's not much we can do about it, but I think with a little luck, and a whole lot of research we can make the impossible, possible, if just by working together to solve this predicament.";
			WaitLineBreak;
			say "'That's where you come in!' You jump slightly when Omio suddenly gets up and then begins to pace around the room while looking in your direction every now and again. When she begins to rant you find yourself getting nervous as she starts to mutter about [']destiny['] and [']hero['] and [']hope for the future[']. Thinking that leaving before the other has you in chainmail and carrying a sword in the name of justice, you prepare to get up to head out the door, however, right before you do the redhead stops and then starts laughing her head off all of a sudden. When you ask her what's so funny she collapses down onto the ground in a fit of laughter while pointing at you. 'Y-your face! HAHAHAH!! Oh gods! You should see your face right about now, you look so funny! Heheh!' Obviously not getting the joke you ask her to elaborate.";
			say "Omio picks herself up, dusts off and then takes the grimoire from your lap. Shutting the thick tome and then returning it to her desk you watch as the strawberry redhead comes over to you and then snickers quietly into your face. 'I mean, that I was just pulling your chain a little bit. I picked that book up at a bookstore on a humbug and kept around to amuse myself with.' Omio turns from you, picks up her long forgotten tea and then takes a slow drink of the cooled liquid. 'Do you really think that there's some ancient evil out there, or whatnot, coming to turn the world into some kind of depraved circle of sin and debauchery? Get serious!' You feel a sudden need to bodily harm the other woman and have to take several deep and calming breaths before you can speak again. Asking Omio why she lied you are halfway unimpressed by her answer.";
			WaitLineBreak;
			say "'Because I'm both bored and lonely and need friends my own age to play with. Being that everyone else I try and talk to is either too far gone in lust to have a decent conversation with, or trying to fuck me against my will, or else not impressed by my personality, I decided that you'd be a good candidate to try my wacky sense humor on. Did I go too far?' You grunt before deciding that it's time to leave. 'Waitwaitwait! I'm sorry! Really!' Omio says as she gets up to grab you by the arm to halt your departure. You tug at the redhead's hold to try and get her to release you, but her grip is surprisingly strong.";
			say "'I'm sorry. I'm just a lonely person who needs some amusement. I didn't lie though, I am a witch and I am doing research out here on the virus, but more for practical reasons than anything novel like saving the world.' The honesty in her voice makes your temper calm down and then you turn to look the redhead in the eye. The wavering of her golden orbs has you allowing Omio to sit you back on the couch so that the two of you can talk like civilized adults, or at least half sane ones. At that point you ask Omio about her work and tell her that if she lies again then you'll walk out and not come back. The hard edge in your voice lets her know that you're not bluffing.";
			WaitLineBreak;
			say "'I'm working on trying to synthesize some of the properties of the virus to make it both noninfectious and maybe even transmutable.' Humming into the pit of your throat you nod at the redhead to continue. 'Well, you see, the people I work for want to try and collect differentiating samples of the virus as it is in now in order to see if it can be processed into a more concentrated form that could be used to benefit the average person.' Omio states passionately, but sadly you have a hard time trying to figure how anything like transforming into a feral wolf or bipedal husky could be useful to a normal person.";
			say "'Think about it this way, almost twenty years ago [']furries['] and the like were just odd characters you saw on TV every now and again, but now you can go outside and see them walking around as living people. Albeit somewhat oversexed ones that you can barely get two words out of, but nevertheless, they can walk and talk and interact with others and even form groups and make complex plans and computations. The hope of my company is that with time the virus can by controlled enough where the more extreme forms of the virus can be readily used for practical applications.' Omio seems to grow more excited as she continues to talk.";
			WaitLineBreak;
			say "'Imagine what you could do with animal senses combined with a human mind mixed with an almost untiring body.' You think over it, but realize that you're mostly drawing a blank. Omio can tell this and so she moves to elaborate. 'If you wanted you could completely, well almost completely, void out the need to sleep and maybe even eat if the virus could be channeled to absorb solar energy, much like this house we're in right now.' That answers how a lot of things are still running in here, you think before shaking your head to focus back in on the conversation.";
			say "'With some luck it might even be possible to speed up the processes of the brain and make it so that one could use a greater portion of the mind. Supposedly the average human only uses somewhere between ten to fifteen percent of their brain's entire power, but the virus could make it so that one could use fifty to sixty percent.' The enthusiasm in the redhead's voice makes you smile without really thinking about it, but shaking yourself you remember that this woman has lied to you before. You then ask her who she's working for, and at that Omio suddenly deflates. 'I work for... certain shall we say a [']special interest group['] that is not looking to profit off of this entire epidemic. I can't say more than that for practical reasons, but I will say that the people I work under truly wish to help.";
			WaitLineBreak;
			say "You feel somewhat apprehensive about this entire affair, but Omio's gold eyes don't seem to be lying, but then again when does a liar ever falter when telling a lie? You ask her what she plans to do when the military comes around to clean up the city. At that the redhead starts to chuckle, though somewhat darkly. 'The military doesn't have a clue with what they're dealing with. The people at top manipulating the events happening here are just throwing more men and women into the proverbial fire in hopes that by doing so they will pacify the rising problem. It won't. Only the Prome... only the people I represent can truly handle this situation.' Her slight slip makes you narrow your eyes. 'Please, just trust my intentions on this, if not my words.' Omio looks up at you somewhat pleadingly.'";
			say "You're not sure what to do or what to believe; however, you do notice that there is a strong conviction in the redhead's golden eyes. You tell Omio that you'll think over what's she said and that you'll get back with her on it later. 'That's fine.' The redhead then gets up at seeing you do the same. 'I'll be here even after the military rolls in with the rest of their troops. If you think you want to help, then come back by and talk to me.' You nod to Omio and then move to leave.";
		else:
			LineBreak;
			say "Omio yaks to you about this and that before smiling imploringly. You kinda get the feeling that she's really lonely. 'Oh, one thing before you go.' You turn to look at the woman and quirk an eyebrow. 'I do hope you'll consider my request and decide to assist me with my research. It is important.' You nod and politely assure her that you'll think about it.";
		now Omiotalk is 1;
	else if Omiotalk is 1:
		say "Omio looks at you somewhat curiously as you step up to her. Her golden eyes blink twice before the redhead finds the will to speak. There is a polite tease in her words, but her posture speaks of something altogether serious.";
		say "     [bold type]'Have you decided to help me out, or did you come to just say hi?'[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Help out.";
		say "     ([link]N[as]n[end link]) - Just passing through.";
		if player consents:
			LineBreak;
			say "Giving the other woman an unsure nod, you let Omio know that you'll be willing to help, but stipulate that you need to know everything that's going on and what things she and this mysterious [']Prome['] organization are up to. 'I told you, I can't tell you much, but if you help me then I'll tell you as much as I can based on what my employers say. Is that alright?' Omio seems both elated and unsure at the same time. At this point you feel that it might be best to go ahead and help the other, if just to see where this whole thing leads, and nod before asking the redhead where to begin.";
			say "'Thank you. You have eternal gratitude for your support.' The redhead takes a small bow and then lifts herself up to look at you with bright conviction shining in her golden orbs 'For now I just need you to bring me back some sample of different strains of the virus so I can analyze them and then send them back to be researched by my employers.'";
			say "'When you're ready to begin my little [bold type]quest[roman type] just type... oh excuse me, say so, ok? Wow, I must have my computer on the brain again or something.' Omio cocks her head to the side in confusion while putting a finger to her chin.";
			now omq is 1;
			now Omiotalk is 2;
	else:
		say "[one of]'I'm so glad that you've decided to stop by and pay me a little visit. It does get a little lonesome out here.'[or]'Would you care for some tea? I have a different blend than the one you had before.'[or]Omio is busy typing on her computer so she pays little attention to you except to nod her head when you call her name.[or]'I have no reason for you to be here now.'[or]'Won't you do something for me to help my research? Pretty please?'[or]Omio is busy relaxing on her sofa while listening to the wind play through her open patio screen.[or]'It would be nice if this all happened in a much more calm and controlled sort of way,' Omio says offhandedly while chuckling to herself.[or]Omio sits on the floor in a meditation position with her eyes closed and her legs crossed.[or]'The world is made up of fools, beast and men now. I wonder what the future will tell from this strange and trying history left for others to tell.' Omio chuckles darkly.[or]'One day I'll have what I'm seeking, and then...'[or]'It's always a good time for tea, don't you think?' Omio asks while sipping a cup of warm brew while at her computer desk.[or]'Time... I won't let it pass me by like before. This [']time['] I'll be the victor!'[at random]";


Section 4 - TeaTime

Omioteatime is an action applying to nothing.

Understand "drink tea" as Omioteatime.
Understand "have tea" as Omioteatime.

Check Omioteatime:
	If Omio is not visible, say "Excuse me?" instead;

LastOmioteatime is a number that varies. LastOmioteatime is usually 777.
[Omioteatime is a number that varies.][@Tag:NotSaved][Does not compile]

carry out Omioteatime:
	if lastOmioteatime - turns < 6:
		say "'Sorry, but I'll have to ration the tea for now. Please come back a little later if you want another cup.' Omio bows slightly after saying this.";
		stop the action;
	now lastOmioteatime is turns;
	let TEA be a random number between 1 and 5;
	if TEA is 1:
		say "Omio nearly starts to dance around the living room in joy as you ask for some tea. Quickly going into her kitchen the redhead puts on a pot just as you settle down onto Omio's comfy sofa in wait for the tea to boil. Almost ten minutes later Omio returns with two small cups of steaming brew settled on top of a large silver tray with a smile gracing her face. 'I hope you like my homemade brand of mixed ginger, chamomile and honey.' Graciously thanking the redhead for her kind offer you wait for your hostess to sit next to you, placing the tray on her lap, before grabbing one of the ceramic cups and then casually blowing across the surface steaming amber liquid. Once you are certain that the heat won't scald your tongue you tip the porcelain up to your lips to taste the herbal liquid.";
		say "The pleasant taste of herbs mixed with the spicy tang of ginger has you murring contently as you let the lukewarm tea flow soothingly down your throat. Settling yourself back further into the sofa you sigh happily as you find your thoughts all but fading away as you let the cool wind of the plains blow in from the open window. Omio quietly sits beside you sipping her own tea. Her fond gaze slips right by your notice.";
		PlayerDrink 5;
		decrease libido of player by 5;
		increase humanity of player by 3;
		increase score by 1;
	else if TEA is 2:
		say "Omio nods to you and then goes to fix the tea, though curiously enough, she does so very, very quietly. Not sure of what has happen to upset the redhead you cautiously sit down onto her couch and then settle back while waiting for the tea to be made. The sounds of bubbling and hissing coming from the kitchen helps your senses to calm down a little bit, but it's only when Omio returns with a smile onto her face that you know that all is well. Or close enough to it. 'I hope you like this combination of peach and lemon mixed with a touch of vanilla. I used the fruits from my garden to make this particular blend.' Omio blushes at that and you nod in gratefulness before accepting the cup she hands you.";
		say "Breathing in the warm vapors you let your mind drift for a moment before blowing over the tea to cool it off. Once you are sure you won't burn your tongue on the liquid you tip the porcelain up to your lips and then begin drinking your offered beverage. The warmth of the tea mixed with the sweetness of fruit and honey has you chuckling as your insides feel like they're receiving a tender massage. Omio decorously smiles over at you from where she has sat herself onto the sofa, but you don't take much notice at the moment as you hum quietly into your drink.";
		PlayerDrink 5;
		decrease libido of player by 8;
		increase humanity of player by 4;
		increase score by 1;
	else if TEA is 3:
		say "Omio chuckles at you somewhat playfully before skipping her way into the kitchen to fix you your tea. Feeling slightly embarrassed by the girlishly way the other is behaving you drop yourself down onto the sofa and then hum to yourself in wonder. It's not but a few minutes later when Omio returns with two cups placed on a silver tray and goofy grin held tightly onto her face. 'Please enjoy this offered cup of chamomile, strawberry, pineapple mixed with rock sugar crystals.' You cautiously smile to the redhead and then carefully take one of the cups of tea.";
		say "Seeing Omio's bright golden eyes shining down at you from where she stands you flip your eyes to the steaming orangey colored liquid and then blow over it to cool it off. Opening your mouth and then flipping the ceramic cup upwards you swallow down the tea... and to your surprise you find that the taste is wonderful! The fruity taste mixed with the saccharine sweetness of the rock sugar has you chuckling despite not exactly feeling so giddy just a moment ago. Omio giggles herself and then sits down besides you with her own cup. Before long the two of you are snickering like two children sharing a secret as you look back and forth at each other from over the rims of your respective cups.";
		PlayerDrink 5;
		decrease libido of player by 10;
		increase humanity of player by 6;
		increase score by 1;
	else if TEA is 4:
		say "Omio hums into the back of her throat as she goes to the kitchen to fix you your tea. Settling yourself down onto the redhead's couch you silently wonder what's going through the Omio's mind at the moment as her silence is somewhat... unusual. It takes barely ten minutes before the tea is done, but that proves just enough time for you to fall close to sleep as you let the billowing wind coming in from the open patio door caress over and across your [facename of player] face. Sighing in pleasant harmony you barely notice it when Omio comes over to place a cup of steaming tea into your face. However, the warm scents of cloves, honey, jasmine and raspberries all mixed together wafting underneath your nose has you blinking as you suddenly come back to earth.";
		say " Turning you look up at Omio and then down to the offered cup you thank the redhead for her the beverage and the take the ceramic drinking utensil into hand. Blowing over the surface of the crimson liquid you smile when the warm scent seeps down into your chest. Looking to Omio and thanking her once again with your eyes instead of your lips you pour the tea down into your throat and then let the warm drink pool into your belly. The taste is almost divine and licking inside of the inner dimension of the ceramic cup you find yourself blushing slightly when you unexpectedly hear a playful giggle echo next to you. Not even having to look up to know that the redhead is laughing at you, you finish off your tea and then turn your head away from Omio to look out at the wind rolling across the grass of the open plains.";
		PlayerDrink 5;
		decrease libido of player by 5;
		increase humanity of player by 4;
		increase score by 1;
	else if TEA is 5:
		say "Omio seems to be in somewhat of a sour mood, but that doesn't stop the redhead from smiling at you as she walks off to make that requested tea. Sitting back onto the redhead's plush sofa you wait quietly for the tea to be ready, silently you hope that the redhead will be in better spirits when she returns. When the smell of brewing herbs starts to waft throughout the air you find yourself humming pleasurably as the scent flows into you. When the redhead returns to the living room it's with two cups placed carefully onto a small tray perched in between her tanned hands. 'This is a mixed blend of peppermint and jasmine and sugar. I hope you like.' There's something in the redhead's words that make you nod somewhat hesitantly, before taking one of the twin porcelain cups.";
		say "Sniffing the brew and then blowing over the steaming liquid you carefully lift the cup up to your lips and then take a sip. Though slightly bitter you find yourself not minding in the least as the sweet taste of the sugar that follows makes up for it. Omio chuckles when you smack your lips in delight of the sweet aftertaste. When you turn to regard the redhead you blush slightly when you notice her golden eyes gazing at you fondly. 'Thank you for having tea with me right now, I really appreciate the company.' Omio whispers before taking a swallow of her own teal colored drink.";
		PlayerDrink 5;
		decrease libido of player by 5;
		increase humanity of player by 5;
		increase score by 1;
	if libido of player < 0, now libido of player is 0;
	if humanity of player > 100, now humanity of player is 100;



Section 5 - Bedroom

Bedroom is a room.

The description of Bedroom is "Omio's bedroom is unexpectedly bare, unlike the main room of the house. A large Japanese futon has been settled onto the hardwood floor back against the far wall of the room in between the only two windows within the sleeping area. Said windows are framed by teal-blue curtains and from the way the linens sway with the rustling of the breeze it's easy to imagine Omio having pleasant dreams in here as the area feels somewhat harmonious... or maybe ethereal in nature. A small nightstand sits over by the left wall with a blue vase placed on top of the stand. A pink flower hangs sleepily from out of the cerulean urn. Above the nightstand hangs a large painting of a ferocious Chinese dragon.".
Nightstand is in Bedroom. It is fixed in place.

instead of sniffing Bedroom:
	say "The lingering scents of wind and earth have mixed into the sleeping area giving it a somewhat otherworldly scent.";

West of Bedroom is MainRoom.



Section 6 - Nightstand

The description of Nightstand is "A small nightstand sits idly against the left side of the room. From the looks of the crafted wood the stand both looks and feels old... very old. Maybe you could try and [bold type]open[roman type] it?".

instead of sniffing Nightstand:
	say "The nightstand smells old and somewhat musky.";

unlocknightstand is an action applying to nothing.

Understand "unlock nightstand" as unlocknightstand.
Understand "open nightstand" as unlocknightstand.
Understand "open" as unlocknightstand.

Check unlocknightstand:
	If Nightstand is not visible, say "ESP much?" instead;

Carry out unlocknightstand:
	say "Going over to pull open the topmost drawer of the nightstand you find that it is locked. Tugging on the handle does you little good as the drawer holds fast against your attempts to get into it. Grunting in disappointment you try to open the next drawer down, yet an unamused cough stops you from doing so seconds before your fingers can touch the second drawer's handle. Turning your head towards the door you look up to see Omio staring at you with a dark glower creasing her tanned face. Trying to laugh away your mortification at being caught you are you are not ready to receive a tea pot to the face.";
	say "Falling back onto the hardwood of the floor you twitch in pain as a growing lump begins to rise on your head. 'And that's what you get for snooping through a girl's things!' Omio says before stomping off in a huff. Amazingly enough the tea pot rolls away after the redhead as if following Omio out the door, however, you're currently too dazed to take notice.";
	decrease HP of player by 20;
	if HP of player < 0, now HP of player is 1;



Section 7 - Kitchen

Kitchen is a room.

The description of Kitchen is "Omio's kitchenette is made up of ashen walls with a white tiled floor housing a modern style stove and refrigerator with a single chrome sink resting next to said refrigerator. Large wooden cabinets sit on both the top and bottom sides of refrigerator and stove. More than likely the cupboards house a plentiful storage of food for Omio to cook with, yet from the lingering smells filling the area it would seem that the redhead prepares a lot more tea in here than food. Over by the side of the backdoor leading into the plains there stands a large dining table and two comfortable looking chairs with a Chinese styled tea set sitting atop the surface of the table.".

The invent of Kitchen is { "water bottle", "food", "chips", "tasty peach" }.

instead of sniffing Kitchen:
	say "Omio's kitchen smells of herbs and spices all boiled together into various mixes to make soul calming tea.";

East of Kitchen is MainRoom.


Section 8 - VacantUpstairs

VacantUpstairs is a room.

The description of VacantUpstairs is "Nothing occupies the large space that once looked to have been a very large guest room. The hardwood floors have not a single speck of dust on them so Omio must use this area for something, though what this might be is unknown at the time. A single window looking out into the world at the end of the room lets the light from the[if daytimer is day] warm sunlight[else] glowing stars and shining moon[end if]. Maybe you could [bold type]look out[roman type] the window to see the outside world?".

instead of sniffing VacantUpstairs:
	say "The empty room smells of... nothing? Not even dust, dirt, mold or spider webs. Wait? Do spider webs have a smell?";

Glass Window is in Vacant Upstairs.

Down of VacantUpstairs is MainRoom.


Section 9 – Glass Window

The description of Glass Window is "A glass window illuminates the [if daytimer is day]su[else]moo[end if]nlight streaming from outside of the plains. Maybe you could [bold type]look out[roman type] to see the world around you?".

Instead of sniffing glass window:
	say "The glass window smells like glass, grass, light and night.";


Lookingoutwindow is an action applying to nothing.

Understand "look out" as lookingoutwindow.
Understand "gaze outside" as lookingoutwindow.

Check lookingoutwindow:
	if Glass Window is not visible, say "Why look through a window when you can just turn around in a circle to see the world?" instead;

Carry out lookingoutwindow:
	say "Going over to the window and then looking through the glass you find the rolling plains staring back at you almost dreamily. Because it's [if daytimer is day]day time the world is illuminated with a bright and forgiving light[else]night time the world is bathed in the mysterious glow of the moon turning everything almost white[end if]. From what you can see there seem to be varying mutants roaming around outside and by the looks of all of them they seem to be going on with life as if an apocalypse never happened. Maybe it never really did? Could this world you're in now be the [']real['] world while the other was just an illusion?";



Section 10 - For the Future

For the Future is a situation.

The sarea of For the Future is "Plains".
When play begins:
	add For the Future to badspots of furry;
	add For the Future to badspots of girl;
	add For the Future to badspots of guy;

Instead of Resolving a For the Future:
	say "Navigating your way across the plains you come across an unfamiliar sight that has you pausing somewhat in surprise. Tilting your head to the side, in a vain hope that maybe altering your perception will somehow change the scene happening in front of you, you come to find that, nope, you are indeed witnessing a completely human looking woman talking to a beast of a centaur stallion. Not quite sure what's going on you find yourself pulling your head back into its rightful position and then charging over to the pair when you notice the centaur suddenly rear up at the woman. You barely take notice of the woman's somewhat calm demeanor as she stands there while looking somewhat unimpressed by the other as you prepare yourself for the fight to come.";
	challenge "Centaur Stallion";
	if lost is 0:
		say "Driving off the hybrid human/horse you pant slightly from the exertion before turning worriedly to look at the woman you just [']saved[']. What you come to find is an unimpressed strawberry redhead glowering at you in disapproval. 'Thanks a lot, whoever you are, you just managed to ruin the first lucky break I had at trying to talk one of those asses.' The redhead sighs before shaking her head in mild frustration and you quickly begin to wonder if saving this broad was the right move to make.";
		say "'Oh well,' the redheaded woman says as she lifts her face to look at you with the most stunning honey colored eyes you've seen before smiling impishly at you. 'I can understand what you were trying to do so I suppose I should thank you.' You wait for a second to hear this verbal show of gratitude, but it never comes. You give the woman, who looks about to be somewhere in her mid-twenties, a slightly questioning look. 'What?!' she says hotly. 'I already said [italic type]thank you[roman type]. What more do you want?'";
		WaitLineBreak;
		say "Realizing that you've got a real piece of work on your hands you turn in preparation to go about your way when a hand grabs your shoulder in an effort to stop you. 'Waitwaitwait. That came out wrong. I'm sorry.' You turn to watch as the redhead takes a step back and then flushes while twiddling her fingers together in front of her face. 'Let me try again. My name is Omio and I am very pleased that you helped to save me from the [']danger['] I was in. In a show of gratitude I would like to invite you over to my humble abode just over by the way for some tea.";
		say "Omio takes a small bow after she finishes speaking and then lifts herself up to smile nervously at you. You sense that the woman is sincere about her apology, but something about her just seems off to you. You flippantly tell the redhead that you [italic type]might[roman type] come by later, if you find the time. 'That's fine. I live just over by the small pond just north of here.' Omio points to someplace you can't see, but you get the general feel for the direction as you squint slightly. 'Anytime you can come by would be fine. And again, thank you.'";
		LineBreak;
		say " After picking up a pack that you hadn't seen hiding in some of the knee tall grass behind her, you watch as the redhead goes about her way in silent grace. Taking care to watch her until this [']Omio['] becomes a small dot shrinking into the distance you find yourself wondering if you should take the redhead up on her offer for tea. She doesn't seem too bad, if just somewhat ill mannered, so maybe it might be worth the trouble after all? Also, there are some budding questions filling up your mind as you wonder how such a person has survived unchanged for so long. Maybe there is something to be learned from this woman? She said her place was a research studio... right? That shouldn't be too hard to find in the middle of the plains.";
		now Researcher Studio is known;
		now For the Future is resolved;
		increase score by 15;
	else:
		say "Having lost to the centaur stallion and been [']seeded['] by the mutated horse-like creature, you find yourself slightly annoyed as you start wipe off from the sticky centaur cum flowing down your [if player is female]slightly puffy pussy[else]chest[end if]. An out of nowhere shriek makes your head up just in time to see the woman you had tried to save coming over to you with a small opened jar in her hands. 'Don't move a muscle,' she says excitedly and for some reason you comply by going still as she starts to scoop the white cum up from off of your [if player is female]weeping cunt[else]torso[end if].";
		say "'This is [italic type]exactly[roman type] what I need.' The redheaded woman collects the centaur stallion's seed and then caps the jar only to hurriedly put the near full container away into a bag sitting at her feet. 'Thank you so much!' The redhead smiles to you in an unexpectedly chipper manner and you slowly find yourself cautiously backing up from the oddball woman. Did she not just see you get owned by a lust-drunk centaur and then subsequently [if player is female]fucked right up the cunt like a mare[else]creamed across the chest as though you were a hand towel[end if]? Or maybe the more important questions to be asked are - why did she collect the stallion's cum and what is she gonna use it for latter?";
		WaitLineBreak;
		say "You nod to the strange redhead and then watch as her brightly lit golden eyes twinkle at you with almost childlike jubilation. 'You have got to come to my studio now! There's no way that I could let someone as resourceful as you get away from me!' The redheaded is almost fanatically adamant about this as, once she grabs her backpack from off of the ground, she quickly takes you by the hand and then starts to pull on you towards the northern area of the plains. You struggle against the woman's [']impressive['] grip while asking, in a rather loud and boisterous voice, if she's got some sort of mental problem before successfully ripping your hand away from the redhead.";
		say "'No am I not crazy!' The woman shouts after she turns to face you and then stomps one foot across the ground as if that will help prove her point. You then ask her why in the name of all that is holy would she try and drag you off against your will without so much as giving you her name. 'Oh! I didn't tell you who I was?' You shake your head at the other and then cautiously take a few steps back from the other. 'Oops. Sorry 'bout that.' The redhead takes a small bow and then gives you her name. 'My name is Omio. And I'm a... researcher, per say, working out here for the betterment of mankind.' You give the redhead a dubious look at that.";
		WaitLineBreak;
		say "'Look, I could go into my whole spiel here, but if you just come to my studio then I'll explain everything. It's over by the northern end of the plains.' Omio hikes a thumb behind herself and then chuckles for some unknown reason. 'If you come I'll even share some tea with you and then tell you the whole story.";
		say "Not sure what to say you tell Omio that you [italic type]might[roman type] think about it if you can find some time later on. 'That's fine, I can accept that promise.' The strawberry redhead turns away from you and then begins to off on her, however, before she can leave completely you sudden call out to her to ask what she plans to do with that centaur stallion cum you managed to [italic type]acquire[roman type] for her. Omio stops and then shakes her head before turning to regard you. 'Come to my [bold type]Research Studio[roman type] and I'll tell you.' A snicker from the woman has you shuddering slightly as Omio turns to go off about her way, leaving you with your thoughts.";
		now Researcher Studio is known;
		now For the Future is resolved;
		increase score by 15;




[
when play ends:
	if omq > 2 and omq is not 100:
		if humanity of player < 9:
			say "Even though your mind is all but gone you do remember a female with golden eyes that you helped out before. Taking some time to go back to the plains in an effort to relocate the other you end up finding an abandoned house right where you were sure the once lived. Sniffing the place and going inside to find no trace of anyone you leave without a second thought as you come to the conclusion that you must have imagined the entire thing.";
		else:
			say "After the military rolls into town you find yourself going back to Omio's studio to look for the redhead. What you find upon crossing the plains is an empty studio that looks as though it hadn't seen much use in maybe ten years? Odd since the garden outside seems as though it has been watered very recently. Not understanding this you search around the place, calling out for Omio as you do so, without much success in locating the .";
			say "When you finally decide to give up almost thirty minutes later you stumble across something shining on the ground several steps away from the house. Kneeling down and picking up the thing you realize that you've found a mini GPS unit. Turning on the power of the little machine you blink in awe as a set of directions flash in front of your face with the destination name 'Prometheus Prison' glowing faintly above the coordinates.";
			say "Could Omio have left this behind for you? And if so, what happened to her to make her neutralize her presence here so efficiently?";
]

Researcher Studio ends here.
