Version 3 of Angie by Sarokcat begins here.
[Version 3 - Whole file rebuilt and expanded - by Wahn]

[ Variables:                                                  ]
[                                                             ]
[ AngieHappy - location + readiness for sex                   ]
[  0: starting stage                                          ]
[  1: Angie NPC moved to the Gift Shop                        ]
[  2: player found the catnip                                 ]
[  3: player delivered the catnip to Angie                    ]

[ AngieTalk - reward for saving her                           ]
[  0: starting stage                                          ]
[  1: player got a medkit                                     ]

[ AngieAroused - sex/relationship                             ]
[  0: starting stage                                          ]
[  1: player+Angie had sex                                    ]
[  3: often had sex with the player, developing attraction    ]
[  6: often had sex with the player, admitting attraction     ]
[  7: Angie in anthro partner for the player mode             ]
[ 50: Angie in wild panther mode                              ]
[                                                             ]

AngieHappy is a number that varies.
AngieTalk is a number that varies.
AngieAroused is a number that varies.
LastAngieLearned is a number that varies. LastAngieLearned is usually 250.

Section 1 - Finding Angie

AngieTrapped is a situation.
The sarea of AngieTrapped is "Zoo";
when play begins:
	add AngieTrapped to badspots of hermaphrodite;
	add AngieTrapped to badspots of furry;

Instead of Resolving a AngieTrapped:
	if AngieHappy is 0:
		say "     Wandering along the zoo pathways, you hear several of the creatures roaming the zoo apparently fighting nearby. Curious you move slightly closer to investigate, and see a few of the beasts appear to be fighting outside one of the smaller animal pens, you really aren't sure what they are fighting about, but it could be dangerous to interfere, do you do so anyways? ";
		if player consents:
			say "     [line break]";			
			say "     Deciding that whatever this is about, it might be best if you intervened, you step forward and prepare to fight!";
			fight;
			fight;
			say "     As you recover from your recent exertions, you hear a voice call out from the small den the creatures were fighting outside of. 'Is it safe now?' the voice calls, causing you to turn your head and see the face of a female black panther wearing a zookeeper's hat stick itself out, looking around before the rest of the body follows. You find yourself staring at her changed body as she steps into sight fully and comes to stand before you on digitigrade paws. The woman's face is a blend of panther and human, bearing a friendly expression as she examines you in turn, and she is wearing the remains of what was obviously a zookeeper's uniform.";
			say "     The clothes do have seen better days however, as her beige mesh vest hangs open, revealing a shirt that is torn almost all the way down, and now does nothing to conceal the rather large breasts that obviously expanded enough to tear it apart. Her shorts are in even worse shape, having obviously had something large claw a hole in the crotch for easier access, a hole that now gapes open revealing not only her new panther snatch, damp with obvious arousal, but also shows the hermaphrodite's erect panther-like cock, its soft barbs easily visible.";
			say "     [WaitLineBreak]";
			say "     Noticing where your gaze has strayed, the former zoo employee coughs, drawing your attention back to her muzzle. 'Thanks for driving those two off. I was sure I was about to get mounted and bred, and this time I don't think I would have managed to get away again. To be honest... I'm not sure I would have wanted to if it was as good as...' Her voice trails off, before she catches herself daydreaming and continues.";
			say "     'Err - sorry for zoning out on you like that. My name's Angie. We really should get to a safer spot, staying in the open isn't a good idea - who knows what other creatures might have been attracted by the fighting here. Hm, I know the zookeeper's office and the storage sheds at the back of the zoo are... occupied. How about the exhibits near the entrance? Ah, or the gift-shop? That was clear when you came in? Great, let's go!'";
			increase AngieHappy by 1;
			move Angie to the Zoo Giftshop;
			now battleground is "void";	[blocks a random fight after this]			
			move player to the Zoo Giftshop;
		otherwise:
			say "     [line break]";
			say "Deciding it might be best to let them fight amongst themselves, you continue on your way.";			
	otherwise if AngieHappy is 1:
		say "     Traveling down the zoo pathways, you hear some strange sounds coming from one of the enclosures. Taking a cautious look, you see what appears to be a large panther-like beast, growling and chuffing as it tries to reach something that appears to have fallen into a narrow space beside the den.  You watch for a while as the beast tries increasingly desperate measures to get at whatever is stuck in there, before he eventually gives up and stalks off in a huff. Curiosity getting the better of you, you go down to investigate and find that some small cloth wrapped packet has rolled into the crack.";
		say "     Grabbing a nearby branch, you manage to push the small bundle far enough to the front for you to reach and take it, finding the packet surprisingly light. As you take a look at it, you see that it's filled with some kind of dried plant matter. [if facename of player is listed in infections of Felinelist]The smell of the stuff in there is just amazing, waking the desire to sniff it, eat it, roll around in it in you. Only with some willpower do you manage to wrap it up tight again, tucking the packet away for later investigation, then continue through the zoo.[otherwise]While it seems to exude a nice pleasantly minty odor, you can't quite tell why the big panther wanted it so badly. Shrugging you decide to tuck it away for further investigation later, and continue on through the zoo.[end if]";
		increase carried of catnip by 1;
		now AngieHappy is 2;
		Now AngieTrapped is resolved;
		
catnip is a grab object. It is not temporary.

Table of Game Objects (continued)
name	desc	weight	object
"catnip "	"A small packet of catnip. It's pretty light, containing only dried, fragrant leaves."	0	catnip

the usedesc of catnip is "[catnip use]";

instead of sniffing catnip:
	say "[catnip use]";

to say catnip use:
	say "You open the packet of catnip and take a deep whiff. ";
	if facename of player is listed in infections of Felinelist: 
		say "As you're feline yourself, the intoxicating scent of the plant hits you like a sledge hammer. You're so taken with the heavenly stuff that you can't help yourself but rub your nose in the dried leaves, licking some of them up and chewing them. As buzzed and horny as you are from the effects, you barely notice - or care - that you're scattering most of the dried catnip on the ground as you do so.";
		increase libido of player by 100;
		decrease carried of catnip by 1;
	otherwise:
		say "It smells nice, somewhat like mint, but you don't see how a cat could go crazy over this. Maybe you have to be a feline yourself to understand...";

		
			
Section 2 - Zoo Giftshop

Zoo Giftshop is a room.
Zoo Giftshop is west of Zoo entrance.

the scent of Zoo Giftshop is "[zoogiftscent]";

to say zoogiftscent:
	if AngieAroused > 0:
		say "     The musky scent of panther sex fills the air in here.";
	otherwise if AngieHappy > 0:
		say "     As Angie's new home, the gift shop smells of panther.";
	otherwise:
		say "     There is the scents of many animal creatures having been through here.";

The invent of Zoo Giftshop is { "chips" , "soda" };

The description of Zoo Giftshop is "[shopappearance]";

to say shopappearance:
	if AngieAroused is 3:   [ Angie + Midnight in the gift shop ]
		say "     The Zoo's giftshop now looks decidedly different now. Much of the destroyed merchandise has bee thrown out at this point, and the floor is relatively clear and clean. The destroyed soda and snack machines are still standing over in the corner, although it looks like Angie has probably gone through and recovered anything of use from them already. The walls of the shop are now decorated with posters of large cats running and posing, with the pictures of panthers being the most prominently displayed. Other feline themed merchandise is scattered around the place prominently, and it looks like Angie has laid out a number of animal print blankets over in the corner near the register counter for her and Midnight to sleep, although from the musky scent of feline arousal filling the air, you doubt that sleeping is the main priority for either of them."; 
	otherwise if AngieHappy > 0:   [ Angie moved into the gift shop ]
		say "     The Zoo's giftshop is looking much better now that Angie is here. Much of the destroyed merchandise has been swept into one corner to be sorted through at some point, leaving the rest of the floor relatively clear. The destroyed soda and snack machines are still standing over in the corner, although it looks like Angie has probably gone through and recovered anything of use from them already. The shelves that once held the books on the various animals throughout the zoo now hold stacks of rescued papers instead, Angie obviously saving the most legible pieces from the various destroyed books in case they might be useful later. There is a small employees only door behind the counter, leading to the breakroom and the employees bathroom.";
	otherwise:   [ base state without Angie ]
		say "     The Zoos own little gift-shop, this place is decorated in safari paraphernalia and merchandise bearing the images of various animals. Unfortunately it seems several of the animals have decided to pay the shop a visit themselves, and much of the merchandise has been clawed or strewn around the floor. Special attention seemed to have been paid to the soda and snack machines, which have been smashed open and their contents mostly emptied around the room, though you think there might be a few items left if you look hard enough. Looking around, you spot a section that at one time was full of books detailing the habits and practices of many of the zoo animals. These could have at one point been very useful to you in your current situation, if they weren't already clawed near to bits. There is a locked door behind the cashiers counter marked 'Employees only'.";
			

Section 3 - Angie

Angie is a woman.
The description of Angie is "[AngieAppearance]";
The conversation of Angie is { "Mewl!" }.
lastfuck of Angie is usually 250.


to say AngieAppearance:
	if AngieAroused is 50:   [ Angie in wild-panther mode with Midnight ]
		say "     Wandering around the gift shop happily is the six foot tall humanoid black panther herm you brought back from the zoo-grounds. She looks slightly more bestial now that she has given in to her new bodies urges so completely. Her large black furred breasts swinging freely around as she moves things around in the shop, Angie has obviously abandoned any pretense at being human, as she is now clad only in her soft black fur. Her long panther tail lashing behind her teasingly, and her half erect feline cock poking seductively out of its sheath above her damp female sex.";
		say "     She shoots you a teasing smile as she notices you watching her, pausing for a minute to stretch and give you good view of her partially feline body, balancing easily on her large feline paws as she stalks around the shop with feline grace."; 
	otherwise if AngieAroused is 7:   [ Angie in anthro partner mode with the player ]
		say "     Wandering around the gift shop happily is the six foot tall humanoid black panther herm you brought back from the zoo-grounds. <clothing description>.";
		say "     She shoots you a teasing smile as she notices you watching her, pausing for a minute to stretch and give you good view of her partially feline body, balancing easily on her large feline paws as she stalks around the shop with feline grace."; 		
	otherwise:
		say "     Standing over by the counter, eyeing the destruction in the store sadly, is a six foot tall humanoid black panther. She sports a nice rack of large breasts, barely hidden by her stretched and torn shirt. On top of that, she wears her zoo worker's vest, though it too is several sizes too small for her new frame. She has replaced her torn shorts with a short khaki skirt with a little cheerful lion waving on them, though this does little to hide the bulge where her new cock presses against the fabric, and her long black tail lashes idly behind her, lifting the rear of the skirt up for easier access from behind. She seems to balance easily on her paws however, her movements swift and smooth like that of the hunting cat she now resembles.";

the scent of Angie is "[if AngieAroused > 1]Angie's scent is that of a herm panther, heavy with the smell of sex and arousal.[otherwise]Angie's scent is that of a herm panther, with a hidden scent of suppressed arousal.[end if]";
						
instead of conversing the Angie:
	if carried of catnip > 0 and AngieHappy < 3:
		say "     Angie smiles at you and says 'Hey, welcome back. Did things... go... ok... Wait... what's that wonderful smell?' Her panther-like nose twitches as she takes in the scent of the air around, then focuses on you, sniffing down your clothes until she finds the small wrapped packet of leaves in your pocket. 'That smell... his smell... and something else... please, can I have it? I just... need more of it...' Angie says with a slightly dreamy look on her face.";
		say "     [line break]";
		say "     Do you give her the packet?";
		if player consents:
			say "     [line break]";
			say "     'Thanks I just... I have to smell more of that,' Angie says in a slightly distracted tone, watching intently as you fish the packet out and hand it to her. As soon as you hold the packet out to her, she snatches it up and immediately brings it too her muzzle for a good long sniff. You watch as her eyes close in pleasure as she inhales, then almost absentmindedly begins rubbing the small packet over her nose and face with one of her hands, while the other reaches under her skirt and begins stroking herself. Seeming to have completely forgotten your presence, Angie moans as she leans back against the shop counter, her large breasts heaving as she fills her lungs with the intoxicating scent of the bag's contents.";
			say "     'God this... smell, I should know this smell,' Angie gasps out, her voice sounding strangely unfocused and happy. 'Never smelled... anything... so good... before, it's making me... so very hot.' she moans, the hand stroking her cock rising up to play with her large breasts. You find yourself transfixed by the strange erotic show Angie is putting on for you without even realizing it. Suddenly her eyes shoot open, and her hands stop moving for a second, 'Catnip! Dammit, I knew it!' Angie exclaims, then moans again, unable to stop herself from taking another long sniff from the wrapped packet, 'God! It's good! Oh damn,' Angie says, as she begins to run her free hand down her body again."; 
			say "     [WaitLineBreak]";
			say "     'This, this is what we kept for the big cats...,' she continues absentmindedly, and you aren't even sure if she remembers you are in the room with the way she is panting and moaning as she touches herself. 'Big cats... like him... mmm I can smell him on it... smells so good... mmm what was it about catnip, something, should remember... but its making me... need him more...'  The panther herm moans as she seems to be reliving some erotic memory as she rubs the panther scented catnip on herself.";
			say "     'So strong... mm his cock, harder,' Angie moans obviously lost in lust, her free hand now rubbing underneath her stiff barbed cock as she massages her female opening, 'So aroused, catnip, mild aphrodisiac... mmm... to cats, mmm that was it, oh fuck me,' Angie yowls, her hands both lowering to her genitals as she drops the catnip packet somewhere on the floor and she pumps her cock with one hand and her pussy with the other. She lets out another long catlike yowl as she sprays her seed over her chest, and a rush of wetness explodes out from between her thighs.";
			say "     [WaitLineBreak]";
			say "     Panting, she leans back against the counter, her tail lashing behind her in satisfaction as she just stands there for a moment, before finally coming back to herself. 'Oh shit,' Angie says as she takes a look down her front, covered in her own sticky panther cum, and then glancing up at you. 'Wow that was... um I had better get cleaned up now I guess,' She says seeming embarrassed slightly, but also still seeming even more aroused then ever. 'Thanks for finding that catnip though, God, I guess I just didn't know what I was missing there, sex like this, is just so... amazing...' Angie says with a happy grin.";
			say "     'I almost wish I knew where that panther was so I could go and... Well never mind, I better get cleaned up and put that catnip somewhere safe for now... until next time anyways.'  Angie says as she begins to head to the shop bathroom, although you don't think she intended you to hear that last part.";
			now AngieHappy is 3; 	
			decrease carried of catnip by 1;
		otherwise:
			say "     Angie sighs as you cover the small bundle up more securely, 'Maybe, maybe that's for the best,' she says, her feline eyes still fixed on where you put the packet. 'That scent is very... distracting,' she continues, half panting as her nipples press out, spreading her vest open even farther. Still, no matter how relieved at your decision she tries to act, she still seems somewhat disappointed, though you decide not to press her on that, for now at least.";
			say "     [line break]";
			say "     You doubt you can have a normal conversation with Angie when she's in a state like this. Maybe you should just give her the packet, or stash it somewhere else...";
	otherwise:
		say "[AngieTalkMenu]";		

to say AngieTalkMenu:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Ask about her past";
	now sortorder entry is 1;
	now description entry is "Have her tell you what happened before you found her.";
	now toggle entry is AngieTalk rule;
	choose a blank row in table of fucking options;
	now title entry is "Talk about the zoo";
	now sortorder entry is 2;
	now description entry is "Speak with her about the zoo and gift-shop.";
	now toggle entry is AngieTalk rule;	
	choose a blank row in table of fucking options;
	now title entry is "Ask about her";
	now sortorder entry is 3;
	now description entry is "Ask how she feels about being an anthro panther.";
	now toggle entry is AngieTalk rule;
	choose a blank row in table of fucking options;
	now title entry is "Just chat with her";
	now sortorder entry is 4;
	now description entry is "Do a bit of small-talk with Angie.";
	now toggle entry is AngieTalk rule;
	if AngieAroused > 0:
		choose a blank row in table of fucking options;
		now title entry is "Tell her about your adventures";
		now sortorder entry is 5;
		now description entry is "Tell Angie what's going on in the city.";
		now toggle entry is AngieTalk rule;
	choose a blank row in table of fucking options;
	now title entry is "Learn from Angie";
	now sortorder entry is 6;
	now description entry is "Let her teach you something useful about animals.";
	now toggle entry is AngieTalk rule;		
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the AngieTalk rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Ask about her past"):
			say "[AngieTalk1]";
		if (nam is "Talk about the zoo"):
			say "[AngieTalk2]";	
		if (nam is "Ask about her"):
			say "[AngieTalk3]";				
		if (nam is "Just chat with her"):
			say "[AngieTalk4]";				
		if (nam is "Tell her about your adventures"):
			say "[AngieTalk5]";				
		if (nam is "Learn from Angie"):
			say "[AngieTalk6]";
		wait for any key;
		
to say AngieTalk1:   [talking about her past]
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:	
			say "     Angie explains 'I work here, or at least I used to, as one of the big cat handlers. Of course that all changed a little bit ago, when I went to take care of the panthers, and I found out that Midnight, one of the male cat was waiting there to take care of me instead. He was on me so fast, forcing me down and then fucking me, god it was so good,' Angie says, her eyes going unfocused for a minute as she pants at the memory. 'I didn't know what was going on, but I couldn't bring myself to to stop him, it was probably the best I've ever felt in my life, being his feline fuck toy,' she says with a moan.";
			say "     'But he wasn't the only one of the cats that got loose, and before he could finish making me into his pet fully, he got interrupted by one of the other cats. While the two of them squabbled over me, I managed to crawl away and lock myself in one of the side rooms while my changes finished. Once I managed to recover I started sneaking around the zoo-grounds, to see if I can figure out whats going on, or if I can find some supplies. Unfortunately,' Angie says with a sigh, 'That's when those other two managed to find and corner me, and then you showed up. I'm grateful to you for your help there.'";
		-- 2:
			say "     Angie explains 'I've always loved animals, so I did an internship here while still in school, then later went on to study zoology at Tenvale College and got a real job here. Caring for all these animals is a very fulfilling job, a bit dirty sometimes when you have to clean up the enclosures, but nothing I can't live with.' Her face takes on a thoughtful expression as she continues, 'I really hope my animals are okay - may they be in the zoo or out in the city. Even though a few tried to jump and mount me - and Midnight did much more than try - I do still care about all of them.'";
		-- 3: 
			say "     Angie explains 'There were some reports about strange occurrences on the radio the morning of the day everything went to hell, but I didn't listen too closely and just switched over to some nice music. Who was I to know what would happen next...'";
		-- 4:
			say "     Angie muses 'I think us zookeepers must have been the first to be transformed, with almost everyone in the animal enclosures when this chaos started. Or maybe it was someone in the petting zoo area - I can only imagine the scenes when the animals suddenly started petting back...'";						
		
to say AngieTalk2: 		[talking about the zoo]
	if AngieTalk is 0:   [giving the player a reward medkit in here]
		say "      Looking around in the gift-shop, Angie says 'It's sad to see this place is in such a state, still it's no surprise considering what the rest of the Zoo is like.' She sighs wistfully as she looks over the devastation before turning her golden eyes back to you. 'Thanks again for your help out there, I really appreciate it,' Angie says, a grateful smile crossing her muzzle. 'I'm still getting used to all the changes, both in me and in the Zoo itself, but I'll help you out any way I can to pay you back for earlier. There might still be some useful supplies out in the zoo as well.' She pats her forehead with a paw and says 'Oh, that reminds me - I recovered a couple med-kits from the employees room. You should take one of them,' she says, then she hands you a medkit.";
		increase carried of medkit by 1;
		now AngieTalk is 1;
		say "You received a medkit!";
	otherwise if AngieTalk is 1:  [already gave the player a medkit]
		say "     'If you see anything else out there you need help with let me know, I'm going to be staying around here for a while trying to see if I can find some of the emergency stashes, I know there are several around here.' Angie says, then sighs and admits, 'Plus I just can't really bear to leave the zoo, I really loved this place you know? It's hard seeing it like this, and I worry about the animals out there in the city, of course.' She says as she pauses to think about it for a second, 'I suppose I count as one of those animals now myself too, its almost scary how tempting it is sometimes to just give in to these new instincts....'";
		say "      'I just don't think I can trust myself to go out there with you, if it got to be too much I might actually end up helping some of those wonderful beasts hold you down and fuck you while I...' Her voice trails off a minute as she blushes in embarrassment, although you note her cock is pushing up on the front of her skirt as her tail lashes behind her in excitement. 'Um yeah lets just say its best if I stay here for now.'";

to say AngieTalk3:   [ask about her]
	if AngieAroused is 50:   [ Angie in wild panther mode]
		say "     <Angie talking about how happy she is with Midnight there>";	
	otherwise if AngieAroused is 7:  [ Angie in anthro partner mode]
		say "     A";	
[
	otherwise if AngieAroused > 5:  [ admitted feelings for the player ]
		say "     A";		
	otherwise if AngieAroused > 2:  [ starting feelings for the player ]
		say "     A";
]
	otherwise if AngieAroused > 0:  [ had sex with the player ]
		say "     'Hey welcome back' Angie says with a bit of a purr, 'It's great to see you again, and I can't thank you enough for showing me how much fun this new body of mine could be!' The large panther herm says as she stretches her feline form out for you, 'God! I just love my anthro shape now, and I wish I knew where that panther was so I could thank him properly, and maybe you could come along too,' she says with a feline grin as she looks you up and down. 'Still I think I better stay here for now, since someone has to take care of this place, although,' she admits, looking around a bit guiltily, 'I have kinda been moving all the cat merchandise I could find into the break room here, kind of my own little stash of almost porn, if you know what I mean.' She gives you a wink as her tail lashes behind her in excitement.";
		say "     'But if you need any help just let me know, and maybe I can teach you a few things about how to handle yourself and the animals out there sometime, its the least I can do.' Angie says with a feline smile, 'Though if you find any hot sexy panthers out there, be sure to lead them back here,' She purrs with a teasing wink, before she goes back to what she was doing with a little bit of a new sultry sway to her hips and tail.";	
	otherwise:
		say "     'Hey welcome back' Angie says with a bit of a purr. 'Being an anthro panther is pretty great once one gets used to it. Soft fur, a lithe figure, and the senses I have now are so much sharper than a human's,' the large panther herm says as she stretches her feline form out for you. 'God! I just love my anthro shape now, and I wish I knew where Midnight was so I could thank him properly...' she says with a feline grin. 'Still I think I better stay here for now, since someone has to take care of this place,' she admits.";
		say "     'But if you need any help just let me know, and maybe I can teach you a few things about how to handle yourself and the animals out there sometime, its the least I can do.' Angie says with a feline smile.";	
			
to say AngieTalk4:   [chatting]
	if AngieAroused is 50: 
		say "     [one of]'Interested in Learning some new tricks? I would be more then happy to teach you,' Angie purrs happily, before grinning, 'And I am sure Midnight could teach you a few tricks as well, if you wanted him to.' She says with a soft feline chuckle.[or]Angie purrs and rubs herself up against you absently, before continuing to poke around the store as she makes it into a proper feline den.[or]'i knew you would be back to play with us soon,' Angie says with a feline grin.[or]'You should stay and play a while, He is sure to make a proper cat out of you,' She says as she gestures at the large panther next to her.[or]'Wouldn't you love to have a sleek panther-like form just like mine?'[or]'I just can't thank you enough for bringing Midnight back to me!' Angie says with a happy purr of contentment.[or]'Being a big cat trainer was never as much fun as letting Midnight train me is,' The panther herm says with a teasing smile.[or]'You know, if you let him make you a proper panther as well, we could be mates together..' Angie says teasingly...[or]'I just love acting like a nice slutty kitty with Midnight,' Angie purrs as she rubs herself happily, 'I bet you would like it too If you just let yourself play a little.'[or]'I love watching the way Midnight moves,' Angie says with a happy smile, 'I often find myself actually mimicking Midnight when he prowls around the shop, it makes me feel so much more like a proper little panther when I do...'[or] 'I bet your having all sorts of adventures in the city, you should TELL me about them sometime.'[or] 'My fur is wonderful and I know Midnight loves me the way I am but sometimes I wonder how I'd look in red.'[or] Angie looks out the window with longing, 'Oh I want to be out there but then who would look after my sexy Midnight? Tell me about the other felines out there?' [or] Angie closes her eyes and breathes in a long drag of your scent. 'Ooooh what have you playing with? You must tell me.'[at random]";	
	otherwise if AngieAroused is 7:
		say "     <talk>";
	otherwise:
		say "     Angie says [one of]'Back again? I haven't found anything useful here yet.'[or]'Hey I'm glad your back, it can get kind of lonely here.'[or]'Oh thank goodness your back, I was starting to talk to the animal pictures on the wall!'[or]'I hope someone finds some kind of cure for this soon, I keep having the strangest thoughts.'[or]'I hope the animals are all right out there... oh and the people too I suppose...'[or]'Strangely enough, I think some of the animals stayed in their enclosures even after all the changes, maybe they liked it here?'[or]'I wonder what happened to the rest of the staff...'[or]'Be careful, some of the animals here were pretty dangerous before, now I don't even want to imagine how bad it could get.'[or]'Mmmmmm.' Angie says staring off into the distance, her hand under her skirt and her eyes unfocused 'Panthers... mmmm...'[or]'If you find out whats going on let me know ok?'[or]'God! I need a break. For some reason, I keep fantasizing about the panther in the poster over there.'[or]'If you find any of the hyenas be careful, they were some of the first animals to change I gather.'[or]'I wonder what happened over at the elephant cages, the ground was covered in white when I ran by...'[or]'I swear I think I saw one of the tigers go by on all fours, only it had the upper body of a humanoid tiger instead of a tiger head, like some weird kind of what did they call them... centaurs?'[at random]";
	
to say AngieTalk5:   [telling her adventure stories]
	say "     Angie listens raptly as you tell her about your adventures in the city. She seems particularly interested when you tell her about the other feline mutants you've seen around, so you expand on your experiences, rendering your encounters in intimate detail. As you do so, the panther-herm's cock begins to rise as Angie strokes it unconsciously. 'Oh all those cats sound so beautiful,' she purrs[if AngieAroused is 50], glancing back at Midnight guiltily. [otherwise]. [end if] 'Listen I know you love me as I am, but I've been craving a little, 'Angie licks her lips and smiles naughtily, 'variety. Those rubber tigresses sound like just the thing. If you came in here looking like that...' she grins, leaving the rest to your imagination.";	
	
to say AngieTalk6:   [learn from Angie]
	if LastAngieLearned - turns is less than 8:
		say "     'Sorry,' Angie says as she looks you up and down, 'But I don't think you have fully mastered the last lesson yet, why don't you try coming back a bit later.";
	otherwise:
		now LastAngieLearned is turns;
		say "     Asking Angie for helpful tips for surviving out in the city, she happily grabs several pages from the shredded nature books she has managed to salvage while here. With those as lecture notes, she begins to teach you all kinds of tricks about both animal behaviour and how to survive handling wild beasts safely. She is a surprisingly good teacher, and soon you feel like you have a better grasp on the intricacies of combat and survival!";
		say "     [line break]";
		say "     Your xp has increased slightly!";
		increase xp of player by a random number between 5 and 30;
		

Instead of fucking the Angie:
	if lastfuck of Angie - turns < 6:
		say "     'Sorry, I know you want to try that again just as much as I do,' Angie says with a soft purr of remembrance, 'But it seems like I still need a bit of time to recover before I can do anything like that again.' Giving you a hug to soothe your disappointment, she then goes back to what she was doing.";
	otherwise if bodyname of player is "Panther Taur" and player is pure and AngieAroused is 50:
		say "[AngiePTFun]";
	otherwise if bodyname of player is "Rubber tigress" and player is pure and AngieAroused is 50:
		say "[AngieRTFun]";
	otherwise if AngieHappy < 3:
		say "     'Sorry, but I think I'll pass, that might just be a bit too much for my mind to take right now' Angie says apologetically as you approach her about sex, although you can easily see your offer has definitely got her interested. She even begins to pant slightly and from the bulge in her short skirt, her cock is at least half-hard."; 		
	otherwise if cunts of player is 0 and cocks of player is 0:
		say "     Seems like you're currently not quite equipped to have sex with anyone. Maybe try this again when you've got a cock or pussy...";
	otherwise:
		say "[AngieSexMenu]";

to say AngieSexMenu:
	blank out the whole of table of fucking options;
	if cocks of player > 0 and cunts of player is 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 1;
		now description entry is "Mount the sexy pantheress.";
		now toggle entry is AngieSex rule;
	if cunts of player > 0 and cocks of player is 0:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked by her";
		now sortorder entry is 2;
		now description entry is "Let the sexy pantheress mount you.";
		now toggle entry is AngieSex rule;
	if cunts of player > 0 and cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Herm sex with Angie";
		now sortorder entry is 3;
		now description entry is "Have some fun with the other hermaphrodite.";
		now toggle entry is AngieSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the AngieSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Fuck her"):
			say "[AngieSex1]";
		if (nam is "Get fucked by her"):
			say "[AngieSex2]";
		if (nam is "Herm sex with Angie"):
			say "[AngieSex3]";
		wait for any key;
	now lastfuck of Angie is turns;
			
to say AngieSex1:  [fucking her]
	if AngieAroused is 0:
		say "     Angie looks at you with desire, though she is still hesitant about this and says 'I'm not really sure it's ok to just give in to the urges like this, but it does feel so very very good. Do you really think its ok?' Seems like she'll need a little bit of convincing yet before you can fuck her. Doing your best to calm and reassure her, you...";
		say "     [line break]";
		let bonus be (( the Charisma of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Charisma-Check)";
		increase diceroll by bonus;
		say "     [line break][line break]";
		if diceroll is greater than 12:		
			say "     ...manage to get her over that last reluctance. 'Just a little bit of fun couldn't hurt...' Angie almost moans as she leans towards you, lust rising in her eyes. She continues, 'I just can't keep denying myself what I need.' Then she shrugs her vest off onto the floor and steps up close. Her large breasts rub up against you as she reaches down between your legs, her large slightly pawlike hands finding your erect cock, and stroking it several times, making you gasp.";
			say "     'Oh god, I need that in me so bad!' Angie says with a moan, before backing off and turning away from you. You are slightly surprised for a moment, but her intent instantly becomes clear as she leans over and braces herself over the shop's counter, her large breasts pressed up against its glass top. Her panther tail lifts straight up above her raised ass, giving you a tantalizing view of her winking lips. When you don't move forward immediately, she shoots a pleading back at you over her shoulder. 'Please, I need you. God! I need you to mount me with that wonderful [cock of player] cock so badly, and take me like an animal just like HE did, please!'";
			say "     [WaitLineBreak]";
			say "     She keeps begging as she wiggles her hips at you, her tail lashing in arousal and need. You find yourself unable to turn down such an obviously desperate plea for your attention and decide it would be best to give her what she wants. Moving up behind her large form, you grin as she wiggles her ass at you, the tail lashing and teasing you until you pin it down. You find yourself gripping her hips tightly and Angie moans as you rub your cock over her needy hole.";
			say "     Delighted by her reaction to your member, you swiftly sheath yourself inside her, letting out a gasp of pleasure as her hot velvet folds part readily for your cock. Angie moans and writhes underneath you like a cat in heat, and you pull out slightly, then begin to pump your hard cock into her over and over again. The feeling of her soft furred body underneath you as you fuck her tight hole is amazing, and Angie seems to be loving the feeling even more, as she gasps and pants for you to take her harder, and faster, and to pin her down and take her like an animal.";
			say "     [WaitLineBreak]";			
			say "     You can't help but grin as you respond to her need by doing what she asks, increasing your pace as you lean over her form, pressing her down against the shop counter as she yowls out her pleasure to the empty room, each lusty and needful sound another sign of your total victory over her body. All too soon, you reach the point of no return and orgasm within her hot folds, your seed shooting into her needy passage triggering Angie's own earthshattering orgasm. She lets loose a loud catlike scream of pleasure, as her cock covers the front of the counter with her own seed, and her trembling folds milk seem to milk every last bit of cum out of you.";
			say "     Eventually you both manage to come back to your senses, and as you pull out of her, Angie looks back at you with a self satisfied look on her face. Her skirt still hangs uselessly on her well fucked body as she regains her balance after your exertions. 'That was amazing, we have to do this again and again soon, god I can't believe I ever didn't want to give in to anything that feels this good!' Angie says with a happy smile as she looks at you in thanks. 'And I owe it all to your help, if I can ever do anything to repay you, you let me know!' She tells you with obvious sincerity, before staggering towards the restroom to clean herself up.";
			now lastfuck of Angie is turns;			
			increase AngieAroused by 1;
		otherwise:
			say "     ...can't quite manage to quell her fears. Biting her lip, the pantheress gives a shake of her head and moves back a few steps with a sigh.";
	otherwise if AngieAroused > 0 and AngieAroused < 7:  [undecided Angie without Midnight]
		say "     'Oh god yes, I can't wait!' Angie says with a moan, her paw trailing over your [cock of player] cock one last time, then she backs off and turns away from you. You are slightly surprised for a moment, but her intent instantly becomes clear as she leans over and braces herself over the shop's counter, her large breasts pressed up against its glass top. Her panther tail lifts straight up above her raised ass, giving you a tantalizing view of her winking lips. When you don't move forward immediately, she shoots a pleading back at you over her shoulder. 'Please, I need you. God! I need you to mount me with that wonderful [cock of player] cock so badly, and take me like an animal just like HE did, please!'";
		say "     [WaitLineBreak]";
		say "     She keeps begging as she wiggles her hips at you, her tail lashing in arousal and need. You find yourself unable to turn down such an obviously desperate plea for your attention and decide it would be best to give her what she wants. Moving up behind her large form, you grin as she wiggles her ass at you, the tail lashing and teasing you until you pin it down. You find yourself gripping her hips tightly and Angie moans as you rub your cock over her needy hole.";
		say "     Delighted by her reaction to your member, you swiftly sheath yourself inside her, letting out a gasp of pleasure as her hot velvet folds part readily for your cock. Angie moans and writhes underneath you like a cat in heat, and you pull out slightly, then begin to pump your hard cock into her over and over again. The feeling of her soft furred body underneath you as you fuck her tight hole is amazing, and Angie seems to be loving the feeling even more, as she gasps and pants for you to take her harder, and faster, and to pin her down and take her like an animal.";
		say "     [WaitLineBreak]";			
		say "     You can't help but grin as you respond to her need by doing what she asks, increasing your pace as you lean over her form, pressing her down against the shop counter as she yowls out her pleasure to the empty room, each lusty and needful sound another sign of your total victory over her body. All too soon, you reach the point of no return and orgasm within her hot folds, your seed shooting into her needy passage triggering Angie's own earthshattering orgasm. She lets loose a loud catlike scream of pleasure, as her cock covers the front of the counter with her own seed, and her trembling folds milk seem to milk every last bit of cum out of you.";
		say "     Eventually you both manage to come back to your senses, and as you pull out of her, Angie looks back at you with a self satisfied look on her face. Her skirt still hangs uselessly on her well fucked body as she regains her balance after your exertions. 'That was just amazing,' the panthress purrs happily. 'Almost as good as having a real cat mount me,' Angie says teasingly as she rubs her dark furred body up against you. 'I almost can't wait till you can fuck me like that again, holding me down and making me a proper kitty toy for you to use whenever you want...' She murrs softly with excitement at the thought, and you find the image of the strong pantherwoman submitting to you again and again to be rather enticing as well, even as she rubs up against you one last time before relaxing back on the counter, with a happy smile on her muzzle..";
		if AngieAroused < 6:
			increase AngieAroused by 1;
	otherwise if AngieAroused is 7:    [player-Angie relationship]
		say "     <sex>";
	otherwise if AngieAroused is 50:   [Midnight present]
		say "     'That sounds like a wonderful idea!', the naked and obviously excited panther herm says at your proposition, purring as she leans close to you, her soft warm body rubbing up against yours. 'I just can't thank you enough for all you've done for me, but maybe I can start by showing you just how much fun I can be now?' Angie says teasingly, her enticing scent filling your nose and making you pant eagerly even as she runs her softly furred hand over your [skin of player] skin. You find your hands stroking her soft black fur almost on their own, and soon she lowers her muzzle down to yours and kisses you enthusiastically, her feral feline taste exploding in your mouth while her rumbling purr rolls through your body.";
		say "      The two of you get interrupted by another soft rumbling noise, and Angie breaks the kiss, still panting with lust, so the two of you can turn to look to where Midnight is watching with obvious interest. The large black feline is lying sprawled on his side, his golden eyes gleaming in the dimly lit gift shop, the tip of his tail lashing from side to side behind him as he lets out another low rumbling purr. 'Mmmm, I think Midnight wants to play too. What do you think, should we let join in?' Angie purrs out, obviously excited by the idea of the large cat being with her at the same time you are. 'Or should we just give the big kitty a nice show instead?' she says as she playfully strokes your cheek with the back of her slightly pawlike hand.";
		say "     [line break]";
		say "     Do you let Midnight join you in mounting Angie?";
		if player consents:
			say "     [line break]";
			say "     'Oh yes this is going to be such fun,' Angie purrs as she moves closer to you, her paws slowly stroking down over your chest as she lowers herself to kneel before. Her face level with your groin, she slowly traces her tongue over your already erect cock, the slightly raspy texture making you shudder as it trails across your member. 'Mmm! I want this, I want your cock in my mouth while his cock fills me up,' Angie moans, her rear lifting up teasingly as she looks up at you. Your erection twitches in agreement, and you find yourself sitting down on the ground in front of Angie.";
			say "     Purring eagerly, the pantheress moving towards you on all fours, her tail lashing behind her in sinuous movements even as Midnight stalks forward to take advantage of her teasing invitation. You are distracted from the large cat as Angie gently rubs the soft fur of her muzzle along the sides of your cock, her whiskers brushing against your thighs and making you moan and thrust your hips up instinctively. Bracing yourself with your hands on the floor, you lean back slightly, groaning in lust as her tongue licks over your cock again.";
			say "     [WaitLineBreak]";
			say "     Angie lets out a low yowl of pleasure of her own as Midnight takes advantage of her position to mount the lusty pantheress himself. The sight of the large cat thrusting into her body is increadibly erotic, making you even harder for when she lowers her muzzle back down to your crotch. You moan as she opens her muzzle slightly and slips her lips around the tip of your cock, the feel of her soft lips rubbing across your shaft while her tongue teases its tip making your eyes roll back with pleasure.";
			say "     You pant as Angie begins to bob her head over your cock in time to the thrusting of the feral panther on top of her, her lips slipping a little further down your rod with each motion, the soft fur of her muzzle brushing against your body teasingly as she takes more and more of your maleness into her mouth. Lowering your gaze from the ceiling, you find yourself staring into Midnight's eyes, the large cat panting loudly and bearing a knowing grin at your pleasure of feeling Angie's muzzle engulfing your shaft and sucking on it eagerly.";
			say "     [WaitLineBreak]";
			say "     You can feel your climax building, the feel of her tight warm mouth and slightly textured tongue making you groan in pleasure as Angie lavishes your shaft with attention. Soon you cry out as the building orgasm explodes throughout your body and your cock releases its fertile cream into Angie's waiting mouth, making the feline zookeeper moan in pleasure as she eagerly tries to swallow it all down. Midnight lets out a low cry of his own just moments later, and you can feel Angie shudder in pleasure as her moan of orgasm slips out from around your cock.";
			say "     Not much later, your cock begins to soften, and Angie gives it a few last eager licks as Midnight dismounts from her well fucked body. The former zookeeper smiles up at you happily as she licks the last of your cream off her lips, and you smile back as you realize just how much more fun she is now as a lovely little panther pet for you and Midnight to play with...";
		otherwise:
			say "     [line break]";
			say "     'Oh god yes, I can't wait!' Angie says with a moan, her paw trailing over your [cock of player] cock one last time, then she backs off and turns away from you. You are slightly surprised for a moment, but her intent instantly becomes clear as she leans over and braces herself over the shop's counter, her large breasts pressed up against its glass top. Her panther tail lifts straight up above her raised ass, giving you a tantalizing view of her winking lips. When you don't move forward immediately, she shoots a pleading back at you over her shoulder. 'Please, I need you. God! I need you to mount me with that wonderful [cock of player] cock so badly, and take me like an animal just like HE did, please!'";
			say "     [WaitLineBreak]";
			say "     She keeps begging as she wiggles her hips at you, her tail lashing in arousal and need. You find yourself unable to turn down such an obviously desperate plea for your attention and decide it would be best to give her what she wants. Moving up behind her large form, you grin as she wiggles her ass at you, the tail lashing and teasing you until you pin it down. You find yourself gripping her hips tightly and Angie moans as you rub your cock over her needy hole.";
			say "     Delighted by her reaction to your member, you swiftly sheath yourself inside her, letting out a gasp of pleasure as her hot velvet folds part readily for your cock. Angie moans and writhes underneath you like a cat in heat, and you pull out slightly, then begin to pump your hard cock into her over and over again. The feeling of her soft furred body underneath you as you fuck her tight hole is amazing, and Angie seems to be loving the feeling even more, as she gasps and pants for you to take her harder, and faster, and to pin her down and take her like an animal.";
			say "     [WaitLineBreak]";			
			say "     You can't help but grin as you respond to her need by doing what she asks, increasing your pace as you lean over her form, pressing her down against the shop counter as she yowls out her pleasure to the empty room, each lusty and needful sound another sign of your total victory over her body. All too soon, you reach the point of no return and orgasm within her hot folds, your seed shooting into her needy passage triggering Angie's own earthshattering orgasm. She lets loose a loud catlike scream of pleasure, as her cock covers the front of the counter with her own seed, and her trembling folds milk seem to milk every last bit of cum out of you.";
			say "     Eventually you both manage to come back to your senses, and as you pull out of her, Angie looks back at you with a self satisfied look on her face. Her skirt still hangs uselessly on her well fucked body as she regains her balance after your exertions. 'That was just amazing,' the panthress purrs happily. 'Almost as good as having a real cat mount me,' Angie says teasingly as she rubs her dark furred body up against you. 'I almost can't wait till you can fuck me like that again, holding me down and making me a proper kitty toy for you to use whenever you want...' She murrs softly with excitement at the thought, and you find the image of the strong pantherwoman submitting to you again and again to be rather enticing as well, even as she rubs up against you one last time before relaxing back on the counter, with a happy smile on her muzzle..";			
		Infect "Pantherherm";
		now lastfuck of Angie is turns;
		now lastfuck of Midnight is turns;
						
to say AngieSex2:  [getting fucked by Angie]
	if AngieAroused is 0:
		say "     Angie looks at you with desire, though she is still hesitant about this and says 'I'm not really sure it's ok to just give in to the urges like this, but it does feel so very very good. Do you really think its ok?' Seems like she'll need a little bit of convincing yet before you can fuck her. Doing your best to calm and reassure her, you...";
		say "     [line break]";
		let bonus be (( the Charisma of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Charisma-Check)";
		increase diceroll by bonus;
		say "     [line break][line break]";
		if diceroll is greater than 12:		
			say "     ...manage to get her over that last reluctance. 'Just a little bit of fun couldn't hurt...' Angie almost moans as she leans towards you, lust rising in her eyes. She continues, 'I just can't keep denying myself what I need.' Then she leans closer, shrugging her vest off onto the floor as she rubs herself up against you. 'And I can tell from the way you are acting just what you need as well,' she adds in a teasing voice 'You want to find out just what it's like to be mounted by a nice big cat yourself I see. I really can't say that I blame you for that, and I have to admit I AM looking forward to trying this wonderful new cock of mine out on you.'";
			say "     Angie runs her hands over your body, focusing her attentions on your breasts and your already a bit moist sex, before leaning over and giving you a long kiss, her tongue teasing yours as her large breasts press up against your body. And they are not the only thing pressing up against you - Angie's thick panther cock brushes against your belly, obviously erect and ready for the fun to come. Breaking the kiss, you find yourself panting almost as much as she is, the scent of her strong feline arousal overwhelming you, immediately vanquishing any thoughts you might have to resist her attentions.";
			say "     [WaitLineBreak]";
			say "     Indeed, you aren't able to resist her at all, just going along with it as she moves behind you, her large paws pushing you down onto the ground in front of her. With your ass raised up in the air, you brace yourself on your hands and knees for what is to come. Angie wastes no time in gripping your hips and rubbing her cock against your rear, 'Now I've never done this before,' Angie says with a moan as her cock brushes up between your thighs, making you shiver at the soft barbs rubbing up against your skin, 'This is all just instinct on my part, so just bear with me.'";
			say "     Immediately after her admission, she begins to thrust herself against you, her cock rubbing against your crotch several times before it finally finds its way inside your swollen nether lips. You gasp in lust and Angie lets out a yowl of pleasure as her cock plunges into you, the barbs on her feline member sending miniature explosions of pleasure through you as they press into your inner walls. After a second of the two of you just sitting there panting, coming to grips with the wonderful new feelings, Angie fully gives in to her male instincts and begins fucking you in earnest.";
			say "     [WaitLineBreak]";
			say "     She starts pulling out and thrusting into you again and again in short rough movements, the barbs pulling and tugging at your inner folds in a strangely pleasureable manner. Then she leans her body down over you, her large breasts pressing into your back as she rests more and more of her weight on you, forcing your face down to the ground as her thrusts increase in both speed and force.  You are panting in desire as she covers you and fucks you roughly, with an almost bestial abandon, and then acting on some inner instinct of her own, Angie lets out a growl, and grips the back of your neck with her teeth.";
			say "     Pleasure shoots through you as her teeth lightly but firmly grip your skin, and for just a moment you feel like you know what it must have been like for Angie, trapped helplessly under a wild beast, a beast intent on fucking you roughly just like the animal it is, your will and desires completely secondary to its bestial needs... and it feels wonderful. As your wild coupling continues, you soon find yourself screaming in orgasm, just as Angie lets loose her own beast-like roar above you, her cock shooting its changed seed deep into your body.[impregchance]";
			say "     [WaitLineBreak]";
			say "     You both lie there for a minute, panting as you try to absorb what just happened. Eventually her cock starts to softens and she pulls it back out of you, then staggers back to lean on the counter, while you stare up at her from your position on the floor. Angie looks down at you with a self-satisfied look on her face, her skirt still hanging uselessly on her tired body as she regains her balance after her recent exertions.";
			say "     'That was unbelievably amazing,' she says with a lusty grin on her face, 'God, we have to do this again soon, I just can't believe I ever didn't want to give in to feelings this amazing, hell I wish I had gained a cat cock even sooner!' Angie says with a dreamy smile as she looks down at you in thanks. 'And I owe it all to you and your help, I never would have discovered how good it could be if it wasn't for you. if I can ever do anything to repay you, you let me know!' She tells you with obvious sincerity, before staggering towards the restroom to clean herself up.";
			now lastfuck of Angie is turns;		
			increase AngieAroused by 1;
		otherwise:
			say "     ...can't quite manage to quell her fears. Biting her lip, the pantheress gives a shake of her head and moves back a few steps with a sigh.";
	otherwise if AngieAroused > 0 and AngieAroused < 7:  [undecided Angie without Midnight]
		say "     'Mmm, yes! It looks like you are definitely ready,' she says as she runs one of her soft paws teasingly over your increasingly damp pussy, her claw rubbing across your clit and making you gasp with renewed arousal as the panther herm chuckles at your eager response. 'I knew you couldn't resist the temptation to be mated like a needy female in heat,' Angie says happily, as a large feline grin spreads across her muzzle, 'It's the most amazing feeling ever, a strong male cat pinning you down while his cock enters your body again and again...'";
		say "     Angie runs her hands over your body, focusing her attentions on your breasts and your already a bit moist sex, before leaning over and giving you a long kiss, her tongue teasing yours as her large breasts press up against your body. And they are not the only thing pressing up against you - Angie's thick panther cock brushes against your belly, obviously erect and ready for the fun to come. Breaking the kiss, you find yourself panting almost as much as she is, the scent of her strong feline arousal overwhelming you, immediately vanquishing any thoughts you might have to resist her attentions.";
		say "     [WaitLineBreak]";
		say "     Indeed, you aren't able to resist her at all, just going along with it as she moves behind you, her large paws pushing you down onto the ground in front of her. With your ass raised up in the air, you brace yourself on your hands and knees for what is to come. Angie wastes no time in gripping your hips and rubbing her cock against your rear, 'So very eager, you need it just as badly as I did,' Angie says teasingly, with a soft moan as her cock brushes up between your thighs, making you shiver at the soft barbs rubbing up against your skin, 'Don't worry, it only gets better from here, and soon you won't be able to imagine being anything other then a proper little mate for the cats. Wanting them to pin you down, and fill you with that wonderful feline cock again and again like a cat in heat...'";
		say "     You can hear her whisper teasingly into your ear through her harsh panting, you would respond, but she gives you no time to think about her incredibly erotic words, as she begins to thrust herself against you, her cock rubbing against your crotch several times before it finally finds its way inside your swollen nether lips. You gasp in lust and Angie lets out a yowl of pleasure as her cock plunges into you, the barbs on her feline member sending miniature explosions of pleasure through you as they press into your inner walls. After a second of the two of you just sitting there panting, coming to grips with the wonderful new feelings, Angie fully gives in to her male instincts and begins fucking you in earnest.";
		say "     [WaitLineBreak]";
		say "     She starts pulling out and thrusting into you again and again in short rough movements, the barbs pulling and tugging at your inner folds in a strangely pleasureable manner. Then she leans her body down over you, her large breasts pressing into your back as she rests more and more of her weight on you, forcing your face down to the ground as her thrusts increase in both speed and force.  You are panting in desire as she covers you and fucks you roughly, with an almost bestial abandon, and then acting on some inner instinct of her own, Angie lets out a growl, and grips the back of your neck with her teeth.";
		say "     Pleasure shoots through you as her teeth lightly but firmly grip your skin, and for just a moment you feel like you know what it must have been like for Angie, trapped helplessly under a wild beast, a beast intent on fucking you roughly just like the animal it is, your will and desires completely secondary to its bestial needs... and it feels wonderful. As your wild coupling continues, you soon find yourself screaming in orgasm, just as Angie lets loose her own beast-like roar above you, her cock shooting its changed seed deep into your body.[impregchance]";
		say "     [WaitLineBreak]";
		say "     You both lie there for a minute, panting as you try to absorb what just happened. Eventually her cock starts to softens and she pulls it back out of you, then staggers back to lean on the counter, while you stare up at her from your position on the floor. Angie looks down at you with a self-satisfied look on her face, her skirt still hanging uselessly on her tired body as she regains her balance after her recent exertions.";
		say "     'That was unbelievably amazing,' she says with a self satisfied look on her face, stroking her soft fur happily. 'Don't you want to do that again soon? Maybe even with a real panther as well? I know I just can't wait.' Angie says with a dreamy smile as she looks down at you panting on the floor, her teasing words speaking to some part of you and making you imagine being held down and fucked by both Angie, and several other large masculine cats, the increasingly erotic images filling your mind and making your body tingle with desire again even as you try to recover from your intense orgasm.";
		say "     [WaitLineBreak]";
		say "     'A nice large panther mounting me, while I mount you, doesn't that sound nice, mating you again and again until both our bellies are nice and full of little panthers...' Angie purrs, obviously lost in thought for a minute before focusing on you again, 'Or maybe I could just mount you again soon, and make you my mate, and you could submit to me every night...' The large panther herm says teasingly, obviously seriously interested in the erotic idea, as she looks at you with a happy smile on her muzzle.";
		now lastfuck of Angie is turns;		
		if AngieAroused < 6:
			increase AngieAroused by 1;
	otherwise if AngieAroused is 7:    [player-Angie relationship]
		say "     <sex>";
	otherwise if AngieAroused is 50:   [Midnight present]
		say "     'That sounds like a wonderful idea!', the naked and obviously excited panther herm says at your proposition, purring as she leans close to you, her soft warm body rubbing up against yours. 'I just can't thank you enough for all you've done for me, but maybe I can start by showing you just how much fun I can be now?' Angie says teasingly, her enticing scent filling your nose and making you pant eagerly even as she runs her softly furred hand over your [skin of player] skin. You find your hands stroking her soft black fur almost on their own, and soon she lowers her muzzle down to yours and kisses you enthusiastically, her feral feline taste exploding in your mouth while her rumbling purr rolls through your body.";
		say "      The two of you get interrupted by another soft rumbling noise, and Angie breaks the kiss, still panting with lust, so the two of you can turn to look to where Midnight is watching with obvious interest. The large black feline is lying sprawled on his side, his golden eyes gleaming in the dimly lit gift shop, the tip of his tail lashing from side to side behind him as he lets out another low rumbling purr. 'Mmmm, I think Midnight wants to play too. What do you think, should we let join in?' Angie purrs out, obviously excited by the idea of the large cat being with her at the same time you are. 'Or should we just give the big kitty a nice show instead?' she says as she playfully strokes your cheek with the back of her slightly pawlike hand.";
		say "     [line break]";
		say "     Do you let Midnight join you?";
		if player consents:
			say "     [line break]";
			say "     'Mmm, yes! This is going to be so fun,' Angie purrs as she lowers her paw down to rub it over your already damp passage. 'I think I want to play with your lovely little pussy myself, fill that nice body of yours up with my big cock and make you beg for more,' the sexy panther whispers into your ear teasingly, her whiskers brushing across your cheek as she rubs her erect cock up against your side. You moan with arousal as her paws trace up your body, rubbing across your breasts several times, as she lowers you down onto one of the nearby blankets.";
			say "     'That's right, why don't you lie back and spread your legs wide for me, and then we can see if Midnight wants to play too,' Angie purrs out eagerly, her teasing suggestion sounding incredibly erotic to your sex-fogged mind. Spreading your legs out wide, you lean back as the obviously aroused panther herm moves over you eagerly, her rumbling purr filling your ears as she rubs her soft fur up against your body. Angie grins as she lowers her hips down to meet your own, her tail lashing eagerly in anticipation. As her feline member rubs against your nether lips, she pants, 'Soon you'll be all mine,' rubbing her cheek against yours as she continues, 'Just feel that wet little pussy, so eager for me to sink my new cock into.' She purrs with pleasure as the tip of her shaft pushes into your body, making you gasp with pleasure at her entry.";
			say "     [WaitLineBreak]";
			say "     Suddenly Angie groans above you, and you can feel her weight press you down as she shifts forward in a sudden lurch, her cock driving deep into your body and making you shudder with pleasure. Angie groans again, her eyes half closed in extacy, and looking down you can see that Midnight has taken advantage of her position to mount the pantheress and settle himself onto her back. You are distracted from the erotic sight as Angie's cock shifts within you again, rocking back and forth inside you and causing you to gasp in pleasure as her feline barbs brush across your g spot with each thrust.";
			say "     Panting breathlessly, you find in a deep kiss as Angie suddenly covers your mouth with her own, her feline tongue teasing your own even as her cock thrusts into you again and again. Groaning, you realize faintly that each time Midnight thrusts into Angie's body, the feline zookeeper thrusts into yours as well. The strange threesome including a feral beast turns you on quite a bit, and you hold Angie's body close, your hands running over her soft fur, even as her own pawlike hands rub against your sides.";
			say "     [WaitLineBreak]";			
			say "     The three of you rub up against each other, your pleasure building with each soft touch, and hard thrust, until finally you hear Midnight roar in triumph above you, his orgasm obviously triggering Angie's own, as the pantheress yowls and shudders with pleasure, her cock stiffening within you as it spills its seed into your body. You shudder in built-up arousal and let out a low cry of your own, the feel of Angie's warm seed coating your womb triggering your own intense orgasm, pleasure sweeping across your mind as she holds you to her, her mouth finding your own as she kisses you deeply again.";
			say "     Eventually you feel some of the weight shift off of you, as Midnight dismounts from his mate, and then you shudder when Angie shifts and slowly pulls herself out of you, your pussy tingling and feeling slightly empty as she rolls over to rest on the blanket beside you. Feeling something settle onto your other side, you look over to see Midnight sprawled out beside you as well, and as Angie pulls you close and whispers into your ear what a good mate you are for her, you realize how nice it is just to lie here like this, with your mates' soft fur rubbing up against your sides.[impregchance]";
			say "     [WaitLineBreak]";			
			say "     The three of you relax together like that for a while, until with a sigh you finally haul yourself back up onto your feet to go back to your searching through the city, though as you look back at Angie and Midnight sprawling comfortably out and looking at you with interested eyes, you wonder idly if it wouldn't be a better idea just to stay here with them and become the lusty little feline mate they so obviously want you to be...";
		otherwise:
			say "     [line break]";
			say "     'Mmm, yes! It looks like you are definitely ready,' she says as she runs one of her soft paws teasingly over your increasingly damp pussy, her claw rubbing across your clit and making you gasp with renewed arousal as the panther herm chuckles at your eager response. 'I knew you couldn't resist the temptation to be mated like a needy female in heat,' Angie says happily, as a large feline grin spreads across her muzzle, 'It's the most amazing feeling ever, a strong male cat pinning you down while his cock enters your body again and again...'";
			say "     And they are not the only thing pressing up against you - Angie's thick panther cock brushes against your belly, obviously erect and ready for the fun to come. Breaking the kiss, you find yourself panting almost as much as she is, the scent of her strong feline arousal overwhelming you, immediately vanquishing any thoughts you might have to resist her attentions.";
			say "     [WaitLineBreak]";
			say "     Indeed, you aren't able to resist her at all, just going along with it as she moves behind you, her large paws pushing you down onto the ground in front of her. With your ass raised up in the air, you brace yourself on your hands and knees for what is to come. Angie wastes no time in gripping your hips and rubbing her cock against your rear, 'So very eager, you need it just as badly as I did,' Angie says teasingly, with a soft moan as her cock brushes up between your thighs, making you shiver at the soft barbs rubbing up against your skin, 'Don't worry, it only gets better from here, and soon you won't be able to imagine being anything other then a proper little mate for the cats. Wanting them to pin you down, and fill you with that wonderful feline cock again and again like a cat in heat...'";
			say "     You can hear her whisper teasingly into your ear through her harsh panting, you would respond, but she gives you no time to think about her incredibly erotic words, as she begins to thrust herself against you, her cock rubbing against your crotch several times before it finally finds its way inside your swollen nether lips. You gasp in lust and Angie lets out a yowl of pleasure as her cock plunges into you, the barbs on her feline member sending miniature explosions of pleasure through you as they press into your inner walls. After a second of the two of you just sitting there panting, coming to grips with the wonderful new feelings, Angie fully gives in to her male instincts and begins fucking you in earnest.";
			say "     [WaitLineBreak]";
			say "     She starts pulling out and thrusting into you again and again in short rough movements, the barbs pulling and tugging at your inner folds in a strangely pleasureable manner. Then she leans her body down over you, her large breasts pressing into your back as she rests more and more of her weight on you, forcing your face down to the ground as her thrusts increase in both speed and force.  You are panting in desire as she covers you and fucks you roughly, with an almost bestial abandon, and then acting on some inner instinct of her own, Angie lets out a growl, and grips the back of your neck with her teeth.";
			say "     Pleasure shoots through you as her teeth lightly but firmly grip your skin, and for just a moment you feel like you know what it must have been like for Angie, trapped helplessly under a wild beast, a beast intent on fucking you roughly just like the animal it is, your will and desires completely secondary to its bestial needs... and it feels wonderful. As your wild coupling continues, you soon find yourself screaming in orgasm, just as Angie lets loose her own beast-like roar above you, her cock shooting its changed seed deep into your body.[impregchance]";
			say "     [WaitLineBreak]";
			say "     You both lie there for a minute, panting as you try to absorb what just happened. Eventually her cock starts to softens and she pulls it back out of you, then staggers back to lean on the counter, while you stare up at her from your position on the floor. Angie looks down at you with a self-satisfied look on her face, her skirt still hanging uselessly on her tired body as she regains her balance after her recent exertions.";
			say "     'That was unbelievably amazing,' she says with a self satisfied look on her face, stroking her soft fur happily. 'Don't you want to do that again soon? Maybe even with a real panther as well? I know I just can't wait.' Angie says with a dreamy smile as she looks down at you panting on the floor, her teasing words speaking to some part of you and making you imagine being held down and fucked by both Angie, and several other large masculine cats, the increasingly erotic images filling your mind and making your body tingle with desire again even as you try to recover from your intense orgasm.";
			say "     [WaitLineBreak]";
			say "     'A nice large panther mounting me, while I mount you, doesn't that sound nice, or maybe he could mount you while I put that lovely little mouth of yours to use, or maybe we could even have him mount you, while I mount him...' Angie purrs, obviously lost in thought for a minute before focusing on you again, 'Or maybe I could just mount you myself every time, and make you my sexy little mate, and you could submit to me every night, and be my little sexy panther pet, and I could be his..' The large panther herm says teasingly, obviously seriously interested in the erotic idea, as she looks at you with a happy smile on her muzzle.";	
		Infect "Pantherherm";
		now lastfuck of Angie is turns;
		now lastfuck of Midnight is turns;
			
	
to say AngieSex3:  [herm sex with Angie]
	if AngieAroused is 0:
		say "     Angie looks at you with desire, though she is still hesitant about this and says 'I'm not really sure it's ok to just give in to the urges like this, but it does feel so very very good. Do you really think its ok?' Seems like she'll need a little bit of convincing yet before you can fuck her. Doing your best to calm and reassure her, you...";
		say "     [line break]";
		let bonus be (( the Charisma of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Charisma-Check)";
		increase diceroll by bonus;
		say "     [line break][line break]";
		if diceroll is greater than 12:		
			say "     ...manage to get her over that last reluctance. 'Just a little bit of fun couldn't hurt...' Angie almost moans as she leans towards you, lust rising in her eyes. She continues, 'I just can't keep denying myself what I need.' Then she leans closer, shrugging her vest off onto the floor as she rubs herself up against you. 'Mmm! It feels like you need it too,' Angie says as she rubs your cock, before one of her hands drifts down farther to your excited pussy before stroking it a few times as well. 'And just like me it looks like you have two different sets of equipment to play with now don't you,' Angie says as she lets out a sultry purr, obviously anticipating the upcoming fun.";
			say "     'Of Course the real question then is - how do we want to do this? I know I would just love it if you mounted me with that wonderfully stiff cock, just like HE did when he changed me, though I could try putting my own cock to good use on you as well.' Angie says, her mouth open and panting as she stares at you, 'So what do you want to do first?  Do you want to mount me like an animal in heat?' She asks you, the thought obviously getting her even more aroused as she waits for your answer.";
			say "     [line break]";
			say "     Fuck Angie (Y), or get fucked by her (N)? ";
			if player consents:
				say "     [line break]";
				say "     'Oh god, I need that in me so bad!' Angie says with a moan, before backing off and turning away from you. You are slightly surprised for a moment, but her intent instantly becomes clear as she leans over and braces herself over the shop's counter, her large breasts pressed up against its glass top. Her panther tail lifts straight up above her raised ass, giving you a tantalizing view of her winking lips. When you don't move forward immediately, she shoots a pleading back at you over her shoulder. 'Please, I need you. God! I need you to mount me with that wonderful [cock of player] cock so badly, and take me like an animal just like HE did, please!'";
				say "     [WaitLineBreak]";
				say "     She keeps begging as she wiggles her hips at you, her tail lashing in arousal and need. You find yourself unable to turn down such an obviously desperate plea for your attention and decide it would be best to give her what she wants. Moving up behind her large form, you grin as she wiggles her ass at you, the tail lashing and teasing you until you pin it down. You find yourself gripping her hips tightly and Angie moans as you rub your cock over her needy hole.";
				say "     Delighted by her reaction to your member, you swiftly sheath yourself inside her, letting out a gasp of pleasure as her hot velvet folds part readily for your cock. Angie moans and writhes underneath you like a cat in heat, and you pull out slightly, then begin to pump your hard cock into her over and over again. The feeling of her soft furred body underneath you as you fuck her tight hole is amazing, and Angie seems to be loving the feeling even more, as she gasps and pants for you to take her harder, and faster, and to pin her down and take her like an animal.";
				say "     [WaitLineBreak]";			
				say "     You can't help but grin as you respond to her need by doing what she asks, increasing your pace as you lean over her form, pressing her down against the shop counter as she yowls out her pleasure to the empty room, each lusty and needful sound another sign of your total victory over her body. All too soon, you reach the point of no return and orgasm within her hot folds, your seed shooting into her needy passage triggering Angie's own earthshattering orgasm. She lets loose a loud catlike scream of pleasure, as her cock covers the front of the counter with her own seed, and her trembling folds milk seem to milk every last bit of cum out of you.";
				say "     Eventually you both manage to come back to your senses, and as you pull out of her, Angie looks back at you with a self satisfied look on her face. Her skirt still hangs uselessly on her well fucked body as she regains her balance after your exertions. 'That was amazing, we have to do this again and again soon, god I can't believe I ever didn't want to give in to anything that feels this good!' Angie says with a happy smile as she looks at you in thanks. 'And I owe it all to your help, if I can ever do anything to repay you, you let me know!' She tells you with obvious sincerity, before adding 'And maybe next time I can help you feel so happily full of cum yourself,' she says with a glance at your unused female parts. Then she starts to clean up the new mess the two of you made.";
			otherwise:
				say "     [line break]";
				say "     'Mmm! You would rather experience being mounted yourself, I see,' Angie says with a feline grin, 'I really can't say that I blame you for that, and I have to admit I AM looking forward to trying this wonderful new cock of mine out on you.' Angie runs her hands over your body, focusing her attentions on your breasts and your already a bit moist sex, before leaning over and giving you a long kiss, her tongue teasing yours as her large breasts press up against your body.";
				say "     And they are not the only thing pressing up against you - Angie's thick panther cock brushes against your belly, obviously erect and ready for the fun to come. Breaking the kiss, you find yourself panting almost as much as she is, the scent of her strong feline arousal overwhelming you, immediately vanquishing any thoughts you might have to resist her attentions.";
				say "     [WaitLineBreak]";
				say "     Indeed, you aren't able to resist her at all, just going along with it as she moves behind you, her large paws pushing you down onto the ground in front of her. With your ass raised up in the air, you brace yourself on your hands and knees for what is to come. Angie wastes no time in gripping your hips and rubbing her cock against your rear, 'Now I've never done this before,' Angie says with a moan as her cock brushes up between your thighs, making you shiver at the soft barbs rubbing up against your skin, 'This is all just instinct on my part, so just bear with me.'";
				say "     Immediately after her admission, she begins to thrust herself against you, her cock rubbing against your crotch several times before it finally finds its way inside your swollen nether lips. You gasp in lust and Angie lets out a yowl of pleasure as her cock plunges into you, the barbs on her feline member sending miniature explosions of pleasure through you as they press into your inner walls. After a second of the two of you just sitting there panting, coming to grips with the wonderful new feelings, Angie fully gives in to her male instincts and begins fucking you in earnest.";
				say "     [WaitLineBreak]";
				say "     She starts pulling out and thrusting into you again and again in short rough movements, the barbs pulling and tugging at your inner folds in a strangely pleasureable manner. Then she leans her body down over you, her large breasts pressing into your back as she rests more and more of her weight on you, forcing your face down to the ground as her thrusts increase in both speed and force.  You are panting in desire as she covers you and fucks you roughly, with an almost bestial abandon, and then acting on some inner instinct of her own, Angie lets out a growl, and grips the back of your neck with her teeth.";
				say "     Pleasure shoots through you as her teeth lightly but firmly grip your skin, and for just a moment you feel like you know what it must have been like for Angie, trapped helplessly under a wild beast, a beast intent on fucking you roughly just like the animal it is, your will and desires completely secondary to its bestial needs... and it feels wonderful. As your wild coupling continues, you soon find yourself screaming in orgasm, just as Angie lets loose her own beast-like roar above you, her cock shooting its changed seed deep into your body.[impregchance]";
				say "     [WaitLineBreak]";
				say "     You both lie there for a minute, panting as you try to absorb what just happened. Eventually her cock starts to softens and she pulls it back out of you, then staggers back to lean on the counter, while you stare up at her from your position on the floor. Angie looks down at you with a self-satisfied look on her face, her skirt still hanging uselessly on her tired body as she regains her balance after her recent exertions.";
				say "     'That was unbelievably amazing,' she says with a lusty grin on her face, 'God, we have to do this again soon, I just can't believe I ever didn't want to give in to feelings this amazing, hell I wish I had gained a cat cock even sooner!' Angie says with a dreamy smile as she looks down at you in thanks. 'And I owe it all to you and your help, I never would have discovered how good it could be if it wasn't for you. if I can ever do anything to repay you, you let me know!' She tells you with obvious sincerity, before adding 'And maybe next time you can take take a turn mounting me,' she says with a glance at your cum-dripping cock. Then she starts to clean up the new mess the two of you made.";
			now lastfuck of Angie is turns;
			increase AngieAroused by 1;
		otherwise:
			say "     ...can't quite manage to quell her fears. Biting her lip, the pantheress gives a shake of her head and moves back a few steps with a sigh.";
	otherwise if AngieAroused > 0 and AngieAroused < 7:  [undecided Angie without Midnight]
		say "     'Ready to play with the kitty again?' Angie says, trailing one of her claws down your chest teasingly. Her soft rumbling purr fills the gift shop and the scent of her arousal spikes even higher, making you grin at how eager she is to play as she tosses her vest to the side without hesitation. 'I haven't been able to think of much else since you showed me what I was missing,' she purrs as she rubs her large breasts up against your body, the formerly reluctant pantherherm obviously having no remaining inhibitions. Lowering her muzzle down to yours and kissing you eagerly, her feline tongue teases your own as she clutches you tightly to her.";
		say "     Eventually she breaks the kiss, panting needily and obviously aroused, looking at you with her slit pupiled eyes already filling with bestial lust. 'It looks like your nice and ready to play with me too,' Angie moans seductively as she rubs your cock, before one of her paws drifts down farther to your excited pussy before stroking it a few times as well. 'And just like me you have two different sets of equipment to play with now don't you.' Angie teases as she lets out a sultry purr, her paw like hands stroking your body eagerly, obviously anticipating the upcoming fun.";
		say "     [WaitLineBreak]";
		say "     'Of course the real question then is, how do we want to do this, I know I would just love it if you mounted me with that wonderfully stiff cock, just like HE did when he changed me, mating me like the wonderful slutty little beast I am.' She murrs slightly at the obviously arousing thought, before continuing, 'Though I could try putting my lovely new cock to good use on you as well, It would make me sooo happy to help you feel the pleasure of being mated properly, down on all fours like a proper panther,' Angie says, her muzzle hanging open open as she pants with list as she stares at you, 'So what do you want to do first? Do you want to mount me like an animal in heat?' She asks you, the thought obviously getting her even more aroused as she waits for your answer.";
		say "     [line break]";
		say "     Fuck Angie (Y), or get fucked by her (N)? ";
		if player consents:
			say "     [line break]";		
			say "     'Oh god yes, I can't wait!' Angie says with a moan, her paw trailing over your [cock of player] cock one last time, then she backs off and turns away from you. You are slightly surprised for a moment, but her intent instantly becomes clear as she leans over and braces herself over the shop's counter, her large breasts pressed up against its glass top. Her panther tail lifts straight up above her raised ass, giving you a tantalizing view of her winking lips. When you don't move forward immediately, she shoots a pleading back at you over her shoulder. 'Please, I need you. God! I need you to mount me with that wonderful [cock of player] cock so badly, and take me like an animal just like HE did, please!'";
			say "     [WaitLineBreak]";
			say "     She keeps begging as she wiggles her hips at you, her tail lashing in arousal and need. You find yourself unable to turn down such an obviously desperate plea for your attention and decide it would be best to give her what she wants. Moving up behind her large form, you grin as she wiggles her ass at you, the tail lashing and teasing you until you pin it down. You find yourself gripping her hips tightly and Angie moans as you rub your cock over her needy hole.";
			say "     Delighted by her reaction to your member, you swiftly sheath yourself inside her, letting out a gasp of pleasure as her hot velvet folds part readily for your cock. Angie moans and writhes underneath you like a cat in heat, and you pull out slightly, then begin to pump your hard cock into her over and over again. The feeling of her soft furred body underneath you as you fuck her tight hole is amazing, and Angie seems to be loving the feeling even more, as she gasps and pants for you to take her harder, and faster, and to pin her down and take her like an animal.";
			say "     [WaitLineBreak]";			
			say "     You can't help but grin as you respond to her need by doing what she asks, increasing your pace as you lean over her form, pressing her down against the shop counter as she yowls out her pleasure to the empty room, each lusty and needful sound another sign of your total victory over her body. All too soon, you reach the point of no return and orgasm within her hot folds, your seed shooting into her needy passage triggering Angie's own earthshattering orgasm. She lets loose a loud catlike scream of pleasure, as her cock covers the front of the counter with her own seed, and her trembling folds milk seem to milk every last bit of cum out of you.";
			say "     Eventually you both manage to come back to your senses, and as you pull out of her, Angie looks back at you with a self satisfied look on her face. Her skirt still hangs uselessly on her well fucked body as she regains her balance after your exertions. 'That was just amazing,' the panthress purrs happily. 'Almost as good as having a real cat mount me,' Angie says teasingly as she rubs her dark furred body up against you. 'I almost can't wait till you can fuck me like that again, holding me down and making me a proper kitty toy for you to use whenever you want...' She murrs softly with excitement at the thought, and you find the image of the strong pantherwoman submitting to you again and again to be rather enticing as well. 'I wish you could know what it was like to feel this good, nice and mated by a hot sexy panther,' she murrs teasingly even as she rubs up against you one last time, her paw trailing down over your damp female opening teasingly, before relaxing back on the counter, with a happy smile on her muzzle, leaving you feeling strangely aroused at the thought.";
			now lastfuck of Angie is turns;
		otherwise:
			say "     [line break]";
			say "     'Oh yes, I knew you couldn't resist the temptation to be mated like a needy female in heat,' Angie says happily, as a large feline grin spreads across her muzzle, 'It's the most amazing feeling ever, a strong male cat pinning you down while his cock enters your body again and again...' Angie runs her hands over your body, focusing her attentions on your breasts and your already a bit moist sex, before leaning over and giving you a long kiss, her tongue teasing yours as her large breasts press up against your body.";
			say "     And they are not the only thing pressing up against you - Angie's thick panther cock brushes against your belly, obviously erect and ready for the fun to come. Breaking the kiss, you find yourself panting almost as much as she is, the scent of her strong feline arousal overwhelming you, immediately vanquishing any thoughts you might have to resist her attentions.";
			say "     [WaitLineBreak]";
			say "     Indeed, you aren't able to resist her at all, just going along with it as she moves behind you, her large paws pushing you down onto the ground in front of her. With your ass raised up in the air, you brace yourself on your hands and knees for what is to come. Angie wastes no time in gripping your hips and rubbing her cock against your rear, 'So very eager, you need it just as badly as I did,' Angie says teasingly, with a soft moan as her cock brushes up between your thighs, making you shiver at the soft barbs rubbing up against your skin, 'Don't worry, it only gets better from here, and soon you won't be able to imagine being anything other then a proper little mate for the cats. Wanting them to pin you down, and fill you with that wonderful feline cock again and again like a cat in heat...'";
			say "     You can hear her whisper teasingly into your ear through her harsh panting, you would respond, but she gives you no time to think about her incredibly erotic words, as she begins to thrust herself against you, her cock rubbing against your crotch several times before it finally finds its way inside your swollen nether lips. You gasp in lust and Angie lets out a yowl of pleasure as her cock plunges into you, the barbs on her feline member sending miniature explosions of pleasure through you as they press into your inner walls. After a second of the two of you just sitting there panting, coming to grips with the wonderful new feelings, Angie fully gives in to her male instincts and begins fucking you in earnest.";
			say "     [WaitLineBreak]";
			say "     She starts pulling out and thrusting into you again and again in short rough movements, the barbs pulling and tugging at your inner folds in a strangely pleasureable manner. Then she leans her body down over you, her large breasts pressing into your back as she rests more and more of her weight on you, forcing your face down to the ground as her thrusts increase in both speed and force.  You are panting in desire as she covers you and fucks you roughly, with an almost bestial abandon, and then acting on some inner instinct of her own, Angie lets out a growl, and grips the back of your neck with her teeth.";
			say "     Pleasure shoots through you as her teeth lightly but firmly grip your skin, and for just a moment you feel like you know what it must have been like for Angie, trapped helplessly under a wild beast, a beast intent on fucking you roughly just like the animal it is, your will and desires completely secondary to its bestial needs... and it feels wonderful. As your wild coupling continues, you soon find yourself screaming in orgasm, just as Angie lets loose her own beast-like roar above you, her cock shooting its changed seed deep into your body.[impregchance]";
			say "     [WaitLineBreak]";
			say "     You both lie there for a minute, panting as you try to absorb what just happened. Eventually her cock starts to softens and she pulls it back out of you, then staggers back to lean on the counter, while you stare up at her from your position on the floor. Angie looks down at you with a self-satisfied look on her face, her skirt still hanging uselessly on her tired body as she regains her balance after her recent exertions.";
			say "     'That was unbelievably amazing,' she says with a self satisfied look on her face, stroking her soft fur happily. 'Don't you want to do that again soon? Maybe even with a real panther as well? I know I just can't wait.' Angie says with a dreamy smile as she looks down at you panting on the floor, her teasing words speaking to some part of you and making you imagine being held down and fucked by both Angie, and several other large masculine cats, the increasingly erotic images filling your mind and making your body tingle with desire again even as you try to recover from your intense orgasm.";
			say "     [WaitLineBreak]";
			say "     'A nice large panther mounting me, while I mount you, doesn't that sound nice, or maybe you could mount me while he mounts you...' Angie purrs, obviously lost in thought for a minute before focusing on you again, 'Or maybe I could just mount you again soon, and make you my mate, then we could take turns being on top' The large panther herm says teasingly, obviously seriously interested in the erotic idea, as she looks at you with a happy smile on her muzzle.";
			now lastfuck of Angie is turns;		
		if AngieAroused < 6:
			increase AngieAroused by 1;
	otherwise if AngieAroused is 7:    [player-Angie relationship]
		say "     <sex>";
	otherwise if AngieAroused is 50:   [Midnight present]
		say "     'That sounds awesome!', the naked and obviously excited panther herm says at your proposition, purring as she leans close to you, her soft warm body rubbing up against yours. 'I just can't thank you enough for all you've done for me, but maybe I can start by showing you just how much fun I can be now?' Angie says teasingly, her enticing scent filling your nose and making you pant eagerly even as she runs her softly furred hand over your [skin of player] skin. You find your hands stroking her soft black fur almost on their own, and soon she lowers her muzzle down to yours and kisses you enthusiastically, her feral feline taste exploding in your mouth while her rumbling purr rolls through your body.";
		say "      The two of you get interrupted by another soft rumbling noise, and Angie breaks the kiss, still panting with lust, so the two of you can turn to look to where Midnight is watching with obvious interest. The large black feline is lying sprawled on his side, his golden eyes gleaming in the dimly lit gift shop, the tip of his tail lashing from side to side behind him as he lets out another low rumbling purr. 'Mmmm, I think Midnight wants to play too. What do you think, should we let join in?' Angie purrs out, obviously excited by the idea of the large cat being with her at the same time you are. 'Or should we just give the big kitty a nice show instead?' she says as she playfully strokes your cheek with the back of her slightly pawlike hand.";
		say "     [line break]";
		say "     Do you let Midnight join you?";
		if player consents:
			say "     [line break]";		
			say "     'This sounds like so much fun, and it gives me a wonderful idea,' Angie says with a purr as she moves over to you, taking your hand in her paw and leading you over to where Midnight is lying sprawled out on the floor. 'A wonderfully naughty idea,' she says with a soft chuff as she pulls you down next to the panther with her. Midnight looks over at the two of you curiously as Angie rubs herself up against him, slowly pushing the large cat over onto his back. 'Mmm, yes! I want to play with him, while you pound yourself into me nice and rough...'";
			say "     Angie moans as she trails her hand down your chest, the tip of one claw gently rubbing across your erect cock for a second, then she turns to face Midnight, shifting her hips so that they rub up against your body teasingly. You groan with increasing arousal as she rub's Midnight's pussy and the cat get the idea of what she wants to do and starts to purrs happily. As Angie moves up between the herm feline's legs and positions herself above the panther, you waste no time in following her. With a feline grin at you over her shoulder, she reaches back and guides your stiff cock to her damp passage. She moans as you slide your arms around her body and grip her close, your cock sinking into her waiting female opening, its warm folds welcoming you into her body eagerly.";
			say "     [WaitLineBreak]";
			say "     You find yourself groaning in pleasure as she shifts her hips slightly, rubbing them up against you as she lines herself up, then she shifts forward, pulling you with her as she sheathes her own cock into the panther beneath you both. Midnight lets out a soft yowl of pleasure and the feline's front paws rub across Angie's furred shoulders as the panther tries to pull her close. The sight of the woman you're having sex with mating a feral beast at the same time is strangely erotic and you find yourself gripping Angie tightly as you begin to thrust into her.";
			say "     The herm panther woman yowls in pleasure and runs her hands over the panther under her, even pulling Midnights muzzle to her own for a deep kiss as she moves eagerly between the two of you. The sight of the formerly reluctant zookeeper giving herself over so completely to the pleasures of her new form only excites you even more, and you groan as you thrust into her body with increased vigor. Lust fills your mind as Angie writhes between your bodies, her soft fur pressing up against your chest even as her tail rubs up against your side and her tight pussy gripping your cock tightly with every wonderful thrust into the panthress's body.";
			say "     [WaitLineBreak]";
			say "     Soon she is unable to hold out under the dual stimulation you and Midnight are giving her, and Angie yowls with pleasure as she orgasms between you. Feeling her orgasm is just too much for you to resist, and you groan with pleasure as your own intense climax wracks your body, your cock spilling its seed into her even as Midnight yowls and paints her chest with the panther's own seed. Groaning, you pull yourself out of her, completely spent, only to smile at her nearly boneless collapse on top of Midnight, her rumbling purr of sexual satisfaction filling the room even as Midnight licks the top of her head several times in approval.";
			say "     Helping Angie off the large cat, you are surprised by her sudden turn to give you a deep kiss as well. Midnight chufs in amusement as she kisses you, then collapses back down onto the blanket next to the black panther. With the happy look of a well fucked feline on her face, Angie relaxes next to you for a while, making you feel rather proud of your efforts.";
		otherwise:
			say "     [line break]";
			say "     'Well then, lets put on a nice and exciting show for him, It looks like you are certainly ready to preform,' Angie says teasingly as she rubs your cock, before one of her paws drifts down farther to your excited pussy before stroking it a few times as well. 'And just like me you have two different lovely sets of equipment to play with now don't you.' Angie teases as she lets out a sultry purr, her paw-like hands stroking your body eagerly, obviously anticipating the upcoming fun.";
			say "     'Of course the real question then is, how do we want to do this, I know I would just love it if you mounted me with that wonderfully stiff cock, filling me up with that wonderfully stiff cock, just like he does, rutting me like the slutty little beast I am.' She murrs slightly at the obviously arousing thought, before continuing, 'Though I could try putting my lovely new cock to good use on you as well, It would make me sooo happy to help you feel the pleasure of being mated properly, down on all fours like a proper panther,' Angie says, her muzzle hanging open open as she pants with list as she stares at you, 'So what do you want to do first? Do you want to mount me like an animal in heat?' She asks you, the thought obviously getting her even more aroused as she waits for your answer.";
			say "     [line break]";
			say "     Fuck Angie (Y), or get fucked by her (N)? ";
			if player consents:
				say "     [line break]";					
				say "     'Oh god yes, I can't wait!' Angie says with a moan, her paw trailing over your [cock of player] cock one last time, then she backs off and turns away from you. You are slightly surprised for a moment, but her intent instantly becomes clear as she leans over and braces herself over the shop's counter, her large breasts pressed up against its glass top. Her panther tail lifts straight up above her raised ass, giving you a tantalizing view of her winking lips. When you don't move forward immediately, she shoots a pleading back at you over her shoulder. 'Please, I need you. God! I need you to mount me with that wonderful [cock of player] cock so badly, and take me like an animal just like HE did, please!'";
				say "     [WaitLineBreak]";
				say "     She keeps begging as she wiggles her hips at you, her tail lashing in arousal and need. You find yourself unable to turn down such an obviously desperate plea for your attention and decide it would be best to give her what she wants. Moving up behind her large form, you grin as she wiggles her ass at you, the tail lashing and teasing you until you pin it down. You find yourself gripping her hips tightly and Angie moans as you rub your cock over her needy hole.";
				say "     Delighted by her reaction to your member, you swiftly sheath yourself inside her, letting out a gasp of pleasure as her hot velvet folds part readily for your cock. Angie moans and writhes underneath you like a cat in heat, and you pull out slightly, then begin to pump your hard cock into her over and over again. The feeling of her soft furred body underneath you as you fuck her tight hole is amazing, and Angie seems to be loving the feeling even more, as she gasps and pants for you to take her harder, and faster, and to pin her down and take her like an animal.";
				say "     [WaitLineBreak]";			
				say "     You can't help but grin as you respond to her need by doing what she asks, increasing your pace as you lean over her form, pressing her down against the shop counter as she yowls out her pleasure to the empty room, each lusty and needful sound another sign of your total victory over her body. All too soon, you reach the point of no return and orgasm within her hot folds, your seed shooting into her needy passage triggering Angie's own earthshattering orgasm. She lets loose a loud catlike scream of pleasure, as her cock covers the front of the counter with her own seed, and her trembling folds milk seem to milk every last bit of cum out of you.";
				say "     Eventually you both manage to come back to your senses, and as you pull out of her, Angie looks back at you with a self satisfied look on her face. Her skirt still hangs uselessly on her well fucked body as she regains her balance after your exertions. 'That was just amazing,' the panthress purrs happily. 'Almost as good as having a real cat mount me,' Angie says teasingly as she rubs her dark furred body up against you. 'I almost can't wait till you can fuck me like that again, holding me down and making me a proper kitty toy for you to use whenever you want... I can be a proper pet for you and Midnight.' She murrs softly with excitement at the thought, and you find the image of the strong pantherwoman submitting to you again and again to be rather enticing as well. 'I wish you could know what it was like to feel this good, nice and mated by a hot sexy panther,' she murrs teasingly even as she rubs up against you one last time, her paw trailing down over your damp female opening teasingly, before relaxing back on the counter, with a happy smile on her muzzle, leaving you feeling strangely aroused at the thought.";			
			otherwise:
				say "     [line break]";
				say "     'Oh yes, I knew you couldn't resist the temptation to be mated like a needy female in heat,' Angie says happily, as a large feline grin spreads across her muzzle, 'It's the most amazing feeling ever, a strong male cat pinning you down while his cock enters your body again and again...' Angie runs her hands over your body, focusing her attentions on your breasts and your already a bit moist sex, before leaning over and giving you a long kiss, her tongue teasing yours as her large breasts press up against your body.";
				say "     And they are not the only thing pressing up against you - Angie's thick panther cock brushes against your belly, obviously erect and ready for the fun to come. Breaking the kiss, you find yourself panting almost as much as she is, the scent of her strong feline arousal overwhelming you, immediately vanquishing any thoughts you might have to resist her attentions.";
				say "     [WaitLineBreak]";
				say "     Indeed, you aren't able to resist her at all, just going along with it as she moves behind you, her large paws pushing you down onto the ground in front of her. With your ass raised up in the air, you brace yourself on your hands and knees for what is to come. Angie wastes no time in gripping your hips and rubbing her cock against your rear, 'So very eager, you need it just as badly as I did,' Angie says teasingly, with a soft moan as her cock brushes up between your thighs, making you shiver at the soft barbs rubbing up against your skin, 'Don't worry, it only gets better from here, and soon you won't be able to imagine being anything other then a proper little mate for the cats. Wanting them to pin you down, and fill you with that wonderful feline cock again and again like a cat in heat...'";
				say "     You can hear her whisper teasingly into your ear through her harsh panting, you would respond, but she gives you no time to think about her incredibly erotic words, as she begins to thrust herself against you, her cock rubbing against your crotch several times before it finally finds its way inside your swollen nether lips. You gasp in lust and Angie lets out a yowl of pleasure as her cock plunges into you, the barbs on her feline member sending miniature explosions of pleasure through you as they press into your inner walls. After a second of the two of you just sitting there panting, coming to grips with the wonderful new feelings, Angie fully gives in to her male instincts and begins fucking you in earnest.";
				say "     [WaitLineBreak]";
				say "     She starts pulling out and thrusting into you again and again in short rough movements, the barbs pulling and tugging at your inner folds in a strangely pleasureable manner. Then she leans her body down over you, her large breasts pressing into your back as she rests more and more of her weight on you, forcing your face down to the ground as her thrusts increase in both speed and force.  You are panting in desire as she covers you and fucks you roughly, with an almost bestial abandon, and then acting on some inner instinct of her own, Angie lets out a growl, and grips the back of your neck with her teeth.";
				say "     Pleasure shoots through you as her teeth lightly but firmly grip your skin, and for just a moment you feel like you know what it must have been like for Angie, trapped helplessly under a wild beast, a beast intent on fucking you roughly just like the animal it is, your will and desires completely secondary to its bestial needs... and it feels wonderful. As your wild coupling continues, you soon find yourself screaming in orgasm, just as Angie lets loose her own beast-like roar above you, her cock shooting its changed seed deep into your body.[impregchance]";
				say "     [WaitLineBreak]";
				say "     You both lie there for a minute, panting as you try to absorb what just happened. Eventually her cock starts to softens and she pulls it back out of you, then staggers back to lean on the counter, while you stare up at her from your position on the floor. Angie looks down at you with a self-satisfied look on her face, her skirt still hanging uselessly on her tired body as she regains her balance after her recent exertions.";
				say "     'That was unbelievably amazing,' she says with a self satisfied look on her face, stroking her soft fur happily. 'Don't you want to do that again soon? Maybe even with a real panther as well? I know I just can't wait.' Angie says with a dreamy smile as she looks down at you panting on the floor, her teasing words speaking to some part of you and making you imagine being held down and fucked by both Angie, and several other large masculine cats, the increasingly erotic images filling your mind and making your body tingle with desire again even as you try to recover from your intense orgasm.";
				say "     [WaitLineBreak]";
				say "     'A nice large panther mounting me, while I mount you, doesn't that sound nice, or maybe you could mount me while he mounts you...' Angie purrs, obviously lost in thought for a minute before focusing on you again, 'Or maybe I could just mount myself every time, and make you my mate, then we could take turns being on top' The large panther herm says teasingly, obviously seriously interested in the erotic idea, as she looks at you with a happy smile on her muzzle.";				
		Infect "Pantherherm";
		now lastfuck of Angie is turns;
		now lastfuck of Midnight is turns;
						
	
	
[Angie + Panther Taur fun]
to say AngiePTFun:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Pantherherm":
			now monster is y;
			break;
	if AngieAroused is 50:  [midnight is there]
		say "     Angie rears up in place as you approach before the poofed fur on  her tail settles down, 'Oh! I thought you were one of the mutants for a moment there.' She pauses, then laughs a little, 'I guess you are. You look...' she approaches you and begins to circle around you, eyeing your every contour. A soft purr announces Midnight's approach as he joins the inspection, sniffing at you curiously a moment.";
		if cocks of player is greater than 0:
			say "     Angie turns around and flags her tail, 'I have to have it,' she says in a needy tone, almost begging. 'I want to be under a panther with hands.' Midnight gives a sudden loud huff, as if insulted somehow, and hops up onto your back with his forepaws, grabbing at your hips even as you stumble forward onto Angie. 'Bad kitty!' calls Angie, but he doesn't seem to be minding her anymore, jabbing at you with a pointed feline shaft.";
			say "     [WaitLineBreak]";
			if cunts of player is greater than 0:
				say "     Midnight's shaft sinks into your black furred cunt, sinking deep as he grabs at your feline hips to draw you back into his powerful breeding motion, growling with delight. You're nudged forward with each slam as he starts to rapidly piston against your hot panther cunt. ";
			otherwise:
				say "     Midnight aligns his heavy tool with your ass and penetrates you in a bright flash of pain. He draws back and the barbs pull lightly at your innards, sending strange trembles of pleasure through you as he begins thrusting with wild abandon. ";
			say "Despite Midnight's attention, you rear up enough to grab Angie's firm feline ass and draw her under yourself to shove your [cock size desc of player] shaft into her. She yowls as it spreads her heated vulva, trembling with increasing desire. Each time you draw back, you can feel those barbs tugging lightly at her sensitive walls, playing her like a fine instrument as you begin to rock between your two lovers, taking and being taken like a well oiled machine of eroticism.";
			say "     You slide up against Angie's back, pressing your furry chest against her as you reach around and take hold of her lovely curves. Your greedy fingers cup and explore across each hill, taking time to tug lightly at the thick teats, half hidden in the dense black fur on your way to the next. Under your eager rutting motions, Angie screeches like the cat she is, moans mixed with feline roars as she flexes powerfully around you.";
			say "     [WaitLineBreak]";
			say "     Midnight, not to be outdone, begins to pull you back more urgently as he grinds his sheath against your rump, tail arched up over his back as he pistons gracefully in time with your withdrawals from Angie, pushing you between being sorrounded by wet heat and having the feral beast's firmness sunk deep inside your sensitive body. It starts to feel like too much, the tension growing higher and higher before it breaks like a dam before the flood. You fill Angie's waiting cunt with seed as your cock barbs dig into the sensitive flesh, holding you still for a moment. The sensation of your fluttering passage around Midnight's shaft pushes him to the edge and his teeth find your back, nipping harshly even as he buries to the hilt and begins to fill you with thick blasts of his feline cream.[impregchance]";
			say "As the moment of fulfillment passes, you draw from Angie, and Midnight dismounts from your back, both falling back to fours on the store room floor. Midnight moves up between your legs, nuzzling your belly affectionately. Angie turns to face you, reaching for your cheeks and pulling you in for a fierce, purring, kiss. 'It was everything I hoped for.' she whispers to you, before finally getting back to work with a smile on her face.";
		otherwise:
			say "     Angie circles you once more before she rears up and sets her paws on your furry back, pulling your lower body towards herself. 'Mine', she says, nudging at your bottom with her increasingly firm feline shaft. A soft growl comes from her and, looking over your shoulder, you can see her tail lashing agitatedly with her building lust. ";
			if cunts of player is greater than 0:
				say "Without hesitation, she sinks her thick shaft into you, testing your ability to contain it as she leans onto your tauric back, sinking that meat into your body in a swift slide. ";
				if cunt length of player is greater than 15:
					say "Your large feline cunt accepts the shaft without problem, and though it is a massive pole, it slides wetly along your sensitive, trembling, passage, forcing a cooing purr from deep in your chest.";
				otherwise:
					say "You feel your cunt being stretched painfully around the shaft, pain and pleasure mixing in sharp tingly spikes as she works her way to the hilt regardless, stretching you without reservation in her goal to embed herself fully in your sleek panther body.";
					increase cunt length of player by 3;
				say "     As she rocks against you, her barbs tug harshly at you, at first sending shivers of displeasure, but with each tug, the sensation seems to shift subtly, until you are rocking against her, trying to get more of it. Your cunt weeps your fluids with a maddening arousal as you and she rock together intently.";
				say "     [WaitLineBreak]";
				say "     A soft meow distracts you from the pleasure behind, and Midnight rears up, placing his paws on your fore shoulders and leaning up to give you a licking across your black snout and nose. You lick back at him, reaching to hug the beast in close as you rise higher and higher in pleasure. Midnight scootches closer, draping his paws over you as he grinds upwards, driving his erection between your low hanging breasts, starting to tit fuck you eagerly. He leaves drops of pre-cum across your pelt, glittering like pearls on the dark background.";
				say "     Behind you, Angie drives home powerfully, and her shaft swells several inches at the base, a ripple that flows up into you, bursting into a jet of seed that is soon followed by several fresh offerings of creamy fluid, filling you to capacity with her hot fluids. Those barbs lock into your tender flesh, and you wobble in place, only held up by Angie and Midnight's paws as your womb cries out in purest delight. A fresh warmth across your front alerts you to the fact that Midnight found his own satisfaction, painting your front with his grey spunk with a sudden roar of release. He slips loose of you and curls up close by, suddenly disinterested.[impregchance]";
				say "     [WaitLineBreak]";
				say "     Angle relaxes against your back, snuggling against you, 'You were just what I needed. I wanted to mount a nice kitty for so long.' Her forelegs squeeze against your barrel of a lower body and she reaches under herself to get at your tail, tugging lightly before she pulls free wetly and settles down behind you, purring like a motor with satisfaction and leaving you to drip her fluid.";
			otherwise:
				say "She finishes her inspection and seems a little dissapointed, 'You're missing a little something there, hon, why don't you get a little... something, and come back. I really want to give that a test run if you know what I mean.";
				continue the action;
		Infect "Pantherherm";
		Infect "Pantherherm";
		now lastfuck of Angie is turns;
		now lastfuck of Midnight is turns;


[Angie + Rubber tigress fun]
to say AngieRTFun:
	If cunts of the player is greater than 0:
		say "     Angie blinks when she notices you. 'Oh my! You weren't kidding, were you?' You shake your head as you spread your arms, then slowly turn in a circle showing off your rubbery body to the pantheress. Intrigued, she drops to all fours and circles around you, nipping and pressing against your body, testing the smooth texture of your skin. Being touched like that and breathing in her feline scent quickly begins to arouse you.";
		say "     Sweet juices begin to dribble down your inner thighs. Angie laps at it, her rough tongue slipping over your smooth skin, growling in encouragement as you spread your legs to allow her better access to you dripping cunt. She gives you one long lap which makes you squeak with pleasure. You beg for more but instead she stands, pressing her huge throbbing cock against your stomach. She kisses you, your tongue twists around hers briefly before Angie pulls back. Her eyes are wide with amazement and lust. 'My god, you really are a living toy!' Her grin turns wicked, 'Time to play!'";
		say "     [WaitLineBreak]";
		say "     Before you know what is happening, the panther herm seizes you by the ears and forces you down to your knees, rubbing your nose against her rock-hard cock. 'Suck it, toy!' she growls without a trace of that niceness you know, 'Suck it or I pop you!' You feel the needle sharp points of her claws prick the rubber skin of your head. You consider resisting, but her cock smells so good, it wouldn't hurt to take a few licks to help your stressed friend. Opening your mouth to take a lick, you quickly find out that the pantheress isn't in the mood to go slow - as she forcefully thrusts into you, driving the shaft of her erection past your flexible teeth and up into your skull. Your vision blurs as your entire head deform around her thick shaft, like a baker punching a pizza in midair.";
		say "     'Yes!' Angie cries and pulls you up before slamming you back down on to her, and this time the shaft threads down your throat, making your neck bulge with its thickness. Your eyes bulge as her spines rake against your wind pipe, not hurting but rather giving you a strange pleasureable feeling as the nanites reshape your mouth and jaws into a round channel, perfect for Angie's cock. She continues to slam your face into her crouch, making your nose squeak with every thrust. The noise attracts Midnight's attention and just a moment later, you feel his cock pierce your nethers. Both panthers thrust into you with abandon and your mouth is too full to scream as you feel both cocks swell. Angie roars as she cums first, followed by Midnight, your body swelling like a balloon with the torrent of their cum.[impregchance]";
	otherwise:
		Say "     Angie blinks when she notices you. 'Oh my! You weren't kidding, were you?' You shake your head as you spread your arms, then slowly turn in a circle showing off your rubbery body to the pantheress. Intrigued, she drops to all fours and circles around you, nipping and pressing against your body, testing the smooth texture of your skin. Being touched like that and breathing in her feline scent quickly begins to arouse you.";
		say "     Beads of precum start to form at the tip of your quickly hardening shaft, to drip down to the floor below. Angie laps at your cock and balls, her rough tongue slipping over your smooth skin, growling in encouragement as you spread your legs to allow her better access. She gives you one long lap along your erection, then sucks on its head for a moment, which makes you squeak with pleasure. You beg for more but instead she stands, pressing her huge throbbing cock against your stomach. She kisses you, your tongue twists around hers briefly before Angie pulls back. Her eyes are wide with amazement and lust. 'My god, you really are a living toy!' Her grin turns wicked, 'Time to play!'";
		say "     [WaitLineBreak]";
		say "     Before you know what is happening, the panther herm seizes you by the ears and forces you down to your knees, rubbing your nose against her rock-hard cock. 'Suck it, toy!' she growls without a trace of that niceness you know, 'Suck it or I pop you!' You feel the needle sharp points of her claws prick the rubber skin of your head. You consider resisting, but her cock smells so good, it wouldn't hurt to take a few licks to help your stressed friend. Opening your mouth to take a lick, you quickly find out that the pantheress isn't in the mood to go slow - as she forcefully thrusts into you, driving the shaft of her erection past your flexible teeth and up into your skull. Your vision blurs as your entire head deform around her thick shaft, like a baker punching a pizza in midair.";
		say "     'Yes!' Angie cries and pulls you up before slamming you back down on to her, and this time the shaft threads down your throat, making your neck bulge with its thickness. Your eyes bulge as her spines rake against your wind pipe, not hurting but rather giving you a strange pleasureable feeling as the nanites reshape your mouth and jaws into a round channel, perfect for Angie's cock. She continues to slam your face into her crouch, making your nose squeak with every thrust. The noise attracts Midnight's attention and just a moment later, you feel his huge cock pierce your asshole. Both panthers thrust into you with abandon and your mouth is too full to scream as you feel both cocks swell. Angie roars as she cums first, followed by Midnight, your body swelling like a balloon with the torrent of their cum.[impregchance]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	Decrease humanity of player by 20;
	now thirst of player is 0;
	Infect "Pantherherm";
	Infect "Pantherherm";
	Infect "Pantherherm";
	Infect "Pantherherm";
	Infect "Pantherherm";
	say "     [line break]";
	say "     As your bones settle back into place Angie cuddles up to you, licking your new fur. 'Oh that was wonderful,' she purrs, 'Tiger's aren't as sexy as panthers but they'll do in a pinch, right?' She laughs as you rub your throat, which still feels stretched. 'Was I a little rough? It's funny, you know. You touch my cock, then suddenly I'm all dominate and growly.  You lick my pussy and I'm a needy little whore. It's a switch.' She sighs and leans her head onto you chest, 'Thanks for being my toy, felt good to be in charge for once, Midnight's a very top cat panther.";
	now lastfuck of Angie is turns;
	now lastfuck of Midnight is turns;

when play ends:
	if AngieAroused is 2:
		if humanity of player is less than 10:
			say "     Following your example, Angie quickly gives in to her baser urges as well, roaming the city with you for a short time, and proving an eager and enthusiastic mate. After a bit though, she finds her desires focusing more and more on the black cat she was originally changed by, and she abandons you to search for his feline company.";
		otherwise:
			say "     Angie is happy to come with you when you are rescued, And is an eager and enthusiastic companion as you make your way back into normal society. It's nice to have another city survivor with you who understands what you went through, and the strong carnal desires you managed to wake in her make her an eager and passionate lover as well. Still, you eventually lose her once again to her first love, as she finally manages to get a job at one of the major zoos in the area. Her catlike attributes will be a major plus, she tells you eagerly, as the zoo she managed to get a job at has one of the best large cat programs around. Feeling happy for her though somewhat more lonely now, you wish her well as she goes off to her new job, seeming happy and eager, and obviously very interested in a little 'after hours' work with some of the larger cats. But as she did say you could come by and visit anytime, and she might even introduce you to some of her 'favorites' among the big cats if you do, hmmm...";

Angie ends here.