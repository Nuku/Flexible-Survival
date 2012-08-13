Pursuit of Science by Kaleem Mcintyre begins here.


Section 0 - Questing Chain

gatherwolfcum is a number that varies.
gatherdemonseed is a number that varies.
gatherdogmilk is a number that varies.


omioquesting is an action applying to nothing.

understand "help Omio" as omioquesting;
understand "Omio help" as omioquesting;
understand "quest Omio" as omioquesting;
understand "Omio quest" as omioquesting;
understand "quest for Omio" as omioquesting;

check omioquesting:
	if Omio is not visible, say "You can't very well offer to help them if they're not here." instead;

carry out omioquesting:
	if omq is 0:
		say "     You should probably talk to Omio to her know you're willing to help first.";
	otherwise if omq is 1:
		say "[omioquest1]";
	otherwise if omq is 2:
		say "[omioquest2]";
	otherwise if omq is 3:
		say "[omioquest3]";
	otherwise if omq is 100:
		say "You unfortunately won't be able to assist me further with my research.  The creatures don't seem to be around anymore.";


Section 1 - Demon, Wolf, Dog

to say omioquest1:
	if guy is banned or hellspawn is banned or furry is banned:
		say "Omio closes her eyes and rubs her temples of a minute, as if thinking very hard about something.  This goes on for more than a minute, making you wonder if something is wrong with the redhead.  Just as you're about the touch her shoulder to make sure she's alright, her eyes pop open, startling you.  'This is most unfortunate.  It seems the creatures we are looking for are no longer around.  It's almost as if someone banished them.  I'm sorry, but you won't be able to assist me further.";
		now omq is 100;
	otherwise:
		say "Omio lowers her head, mumbles something to herself and then nods somewhat cautiously before returning her gaze back up to yours. 'If you will, then please bring me five samples of wolf cum, four samples of demon seed, and three samples of dog milk.' Omio asks somewhat indecisively. 'If you can manage that then I can move forward with my research and perhaps give you a reward that you may be able to use on your own journey throughout the city.' You tightly nod at Omio and then prepare yourself mentally for what's to come next.";
		now omq is 2;


to say omioquest2:
	let wolfcumfound be 0;
	let demonseedfound be 0;
	let dogmilkfound be 0;
	if gatherwolfcum is 0:
		repeat with k running through invent of player:
			if k is "wolf cum", increase wolfcumfound by 1;
		if wolfcumfound >= 5:
			say "'Thank you so much for this!' Omio says as she suddenly jumps into the air and snatches the vials of wolf cum from you, almost startling the crap out of you. 'This will go a long way towards my research and development project for the overseer.' You try and ask the woman what she means, but Omio is just too excited to listen to you right at the moment as she continues to dance around.";
			delete wolf cum;
 			delete wolf cum;
			delete wolf cum;
			delete wolf cum;
			delete wolf cum;
			now gatherwolfcum is 1;
	if gatherdemonseed is 0:	
		repeat with k running through invent of player:
			if k is "demon seed", increase demonseedfound by 1;
		if demonseedfound >= 4:
			delete demon seed;
			delete demon seed;
			delete demon seed;
			delete demon seed;
			say "I appreciate all of your efforts in working with me on this. I-I honestly didn't think you would go through such an endeavor for me.' Omio seems to choke up somewhat and from what you can see the redhead is sincere in her sorrow. 'Oh well, thank you for your troubles.' Omio walks over to hug you and then place a gentle peck on your [facename of player] head.";
			now gatherdemonseed is 1;
	if gatherdogmilk is 0:
		repeat with k running through invent of player:
			if k is "dog milk", increase dogmilkfound by 1;
		if dogmilkfound >= 3:
			delete dog milk;
			delete dog milk;
			delete dog milk;
			say "'This is exactly what I need. Thank you for all of your help.' Omio looks over the collected sample of dog milk and then cocks her head back and forth while looking at the rolling white fluids. 'I should probably freeze this as soon as possible.' Omio goes off about her business and seems to flat out ignore you.'";
			now gatherdogmilk is 1;
	if gatherwolfcum is 1 and gatherdemonseed is 1 and gatherdogmilk is 1:		[complete]
		say "'Having gathered all of the materials that I need I can most assuredly say that I and the group I represent are most pleased to have rendered your assistance in advancing our cause.' Omio bows before you and then goes about lifting herself back up to stare at you with her piercing golden orbs. 'Because of your continued efforts I'll tell you more about our group, if you'd like.'(Y=Yes, N=No)[line break]";
		if player consents:
			say "'Alright. The group who I work under is a somewhat small organization, at the moment, that is trying to make a safe enough haven of this apocalyptic world so that mutants, like yourself and I, can go about to live and work and just be despite our budding feral-like natures.' You give Omio a funny look as try and figure out just exactly what part of her is [']mutated[']. The redhead sees your roving eyes, but says nothing more about herself, instead she moves right along with her speech. 'With the world in the state it is now the military won't be able to do much other than succumb to the infection sooner or later, unless someone makes an strong enough vaccination to combat the source of the problem. But even then, if they do, so what?'";
			say "'So what if they do manage to make a vaccine? It's not a cure though. If you know them like I do then you already know that there is no cure for what's happening out there. There was never meant to be one in the first place when the infection was supposed to become wide spread, but now that it has gone underway against the desired time everyone in the military is silently aware that the new world about to be born will be one they can't do a damn thing about.' Omio seems to grow dire with her words and soon starts to circle around the room. Unlike before, however, when the redhead was [']pulling your chain['] now you get the feeling that something much more calamitous is coming underway. And when next she speaks your fears and concerns are made real.";
			say "'As more and more mutations come into being there's a strong possibility that a new world war might flare up between the humans that are left [']uninfected['] and those mutants who won't accept being treated as a second class citizen. You've seen and heard of the civil wars fought before, well those will be nothing compared to what happens when a group of ill-tempered renegades stir up a small group and really bring things to a head with both guns and tempers blazing out of control. Just imagine it – and entire group of wolves, lions and the like all marching together against a greater number of humans.' The picture that comes into your mind is a spooky one, but not one that's unfeasible. 'Even if the remaining humans managed to survive an onslaught like that what kind of precedence will this set for those not taking part in the conflict?'";
			say "'The people I support fear that this might happen, a [']them verses us['] kind of race war, so in hopes to nip such a thing into the bud [italic type]we[roman type] need to gather as much data as we can on the mutations running around now and build up a strong understanding of the biological, mental, and emotional needs of these new mutants. Its only in this way can we build up a strong enough foundation to work with the newly formulating government to set both laws and settlements where those mutants unable to intermix with the rest of the general public will be able to find a place to call home. I don't mean a reservation, I'm talking about maybe turning half the country over to my organization and making it a free state of mutants, if need be.";
			say "'The ferals aren't going to go anywhere anytime too soon, but we can't just let them run free forever.' Omio sighs heavily as she sits herself down onto her sofa. Looking over the somewhat tired redhead you get the feeling that the conversation is over with. Though all of this information is rather much to take in, it does explain certain things about the future to come. Maybe helping Omio out more with her research will benefit everyone involved? Only time will tell. 'Anyway,' The redhead gets up and then cheerfully smiles at you. 'You've done your work for me, so here are some gifts for you. Take them with my thanks.'";
		otherwise:											[need more]
			say "'Oh, ok.' Omio shrugs, but doesn't seem all that hurt by your lack of interest in what she knows. 'Anyway,' The redhead cheerfully smiles at you. 'You've done your work for me, so here are some gifts for you. Take them with my thanks.'";
		add "water bottle" to invent of player;
		add "food" to invent of player;
		add "chips" to invent of player;
		add "soda" to invent of player;
		extend game by 8;
		increase score by 50;
		now omq is 3;
	otherwise:
		say "'Now remember, I need you to locate several samples for my work.  To start my work, I am in need of five samples of wolf cum, four samples of demon seed and three samples of dog milk.  You should be able to find those back in the city if you look around for them.  As for the reward, we can talk about that after we're finished.";
		if gatherwolfcum is 0:
			if wolfcumfound is 0:
				say "'Please remember that I need those samples as quickly as humanly, or otherwise in this case, possible. I know you have other things to accomplish, but time is really working against us and all.' Omio says with a calm, but commanding tone while watching you with her golden eyes shining pointedly into your face.";
			otherwise:
				say "'You don't have quite enough wolf cum at the moment, but I do commend you ability to gather what I need in spite of everything that's going on here in the city.' Omio smiles at you and then gives you a playful wink. 'I need five samples in total.  Good luck on your quest[if cunts of player > 0]gorgeous[otherwise if cocks of player > 0]handsome[otherwise if cunts of player > 0 and cocks of player > 0]my friend[end if].";
		otherwise:
			say "Now, you've already taken care of the wolf cum, so you can focus on the other stuff on the list.";
		if gatherdemonseed is 0:
			if demonseedfound is 0:
				say "'I know that it might be a little dangerous to ask you to face off against demons and the likes, but I really do need the full number of those samples, ASAP. If I remember correctly then there were reports of demons infesting the sewers of that big mall within the city. What was its name again?' Omio pauses for effect and then actually puts a finger underneath her chin to think about it. 'You know what... I don't think I actually remember. Was it south-something? Or was it Smithhaven? Or maybe Sicily?[line break]";
			otherwise:
				say "'I need you to gather even more of their demonic seed for my work.  I will need a total of four samples from those creatures.  I know facing off against them is asking quite a bit, but as you've seen, they're not quite as tough as they look.  They are beings created partially of fear and lies, and so those with enough bravery and strength of will are able to beat their physically imposing forms.  Remain confident and you will continue to prevail against them.";
		otherwise:
			say "With the demon seed taken care of, you can check that off the list of items.";
		if gatherdogmilk is 0:
			if dogmilkfound is 0:
				say "I know this might be a little strange a request, but please don't try and milk any old dog to bring back it's juice.' Omio giggles slightly. 'What I need is the milk of the mutant collie that's walking around town that stands about twelve feet tall in height. She's really not too hard to miss, but she can be somewhat elusive when she wants to be. Please find and bring me her milk so I can analyze it.'";
			otherwise:
				say "'I see you found the collie in question, I hope she wasn't too rough on you. She can be kinda frisky, but she honestly doesn't mean any harm.' Omio seems to snicker at this and you have to wonder just if the redhead knows the mutant in question.";
		otherwise:
			say "You've gotten enough dog cum for me, so you can worry about the other remaining samples.";



Section 2 - Unicorn

to say omioquest3:
	say "We have more work to do, but preparations must be made to get it started.";
	say "(More to come soon.)[line break]";

[

Section 1 - Gathering Materials

Gathering Materials is a situation.
The sarea of Gathering Materials is "Red";

gat is a number that varies.
Dre is a number that varies.
wolfcumfound is a number that varies.

Instead of resolving a Gathering Materials:
	If gat is 1:
		say "Walking up to a nearby storefront you find yourself peering inside of the darkened windows to see if there's anyone inside. Not seeing anyone, being as the entire building is without power and darker than the sky at midnight, you sigh before wondering if you should try your luck at breaking inside. When your senses suddenly buzz a warning you snap your head off to the side just in time to see a feral wolf coming your way.[line break]";
		challenge "Feral Wolf";
		say "Having dealt with that minor distraction you look down to your side to find two glass vials next to your foot. Not remembering them being there before you pick up the bottles and then look over the two vials. When you see the familiar face of a certain researcher smiling back at you stamped onto the front of the vials you sighs wearily. And just when you thought you were close to forgetting about Omio fate would have to remind you of the whacky woman.[line break]";
		say "Turning the vials over completely you not that they are [']wolf cum['] and [']demon seed['], respectively. Tilting your head in confusion as you wonder if the wolf you just fought was carrying these extracts you are suddenly bombarded with a sudden painful headache.[line break]";
		say "[italic type]Hey, can you hear me?[roman type] When Omio's voice suddenly calls out from nowhere you look around in confusion as you try to figure out what's going on. [italic type]Hey, if can you hear me say something already.[roman type] Grunting and then speaking out loud you hear a happy chirp-like cheer from the redhead. [italic type]Oh good, for a minute I was worried that this might not work.[roman type] Asking the other woman what she means you find your answer followinga series of overly delighted chuckles.[line break]";
		say "[italic type]Well, you see, I was trying an experiment to see if I could project my thoughts outside of my body. I was hoping to get into contact with my employers this way, but there seems to be some kinks in the mechanism that I'm using at the moment.[roman type] Asking the other why she is contacting you out of the blue like this you get a snort followed by a whimsical response from of the redhead. [italic type]Well, honestly I wasn't try to, honestly. I was just reaching out and for some reason or another I seemed to have been able to get in contact with your thoughts. I'll assume it's because we're on the same wavelength.[roman type][line break]";
		say "As your confusion goes over the line between you and Omio you start to hear the redhead cackling almost deviously at you. [italic type]Never mind. Any who, do you have my samples of wolf cum and demon seed there with you?[roman type] Looking down at the two vials you nod before realizing that Omio can't physically see you at the moment. Replying with an affirmative the redhead purrs all of a sudden. [italic type]Alrighty then, if you wouldn't mind I need a favor.[roman type][line break]";
		say "Nervously you ask the other what she needs. [italic type]That wolf that was carrying these was a [']participant['] in an experiment I am running. However, because she escaped from me before I could finish my experiment I need you to do me a favor and gather up three more samples of wolf cum for me.[roman type] Not really sure if you want to deal with this you ask Omio what's in it for you. [italic type]The joy of helping an innocent researcher with her experiments?[roman type][line break]";
		say "Telling Omio to try again you get a slightly annoyed response from the woman. [italic type]Alright. Alright. If you help me out then I'll use the technology I'm working on to give you some items you can use on your journey in return. That sound about fair?[roman type] Nodding and then letting Omio know that you'll get what she needs as soon as possible. [italic type]Goodie. After you're done make sure you come back here, alright? Oh and could you stick the hand you have holding onto the vials with out for a moment?[roman type] Not sure why you simply do as asked.[line break]";
		say "Without warning the two containers begin to shimmer and then disappear from your hand in a flash of light and you blanch slightly in awe of this...miraculous?...happening. [italic type]The marvels of teleportation, made convenient by a genius researcher. Ahhh, wouldn't my pa' and ma' be proud of me if they could see me?[roman type] You're not sure how to answer that so instead you just swallow and go about your way to collect the other samples for Omio. Three vials of wolf cum was it?[line break]";
		now gat is 2;
		increase score by 1;
		stop the action;
	if gat is 2:
		let wolfcumfound be 0;
		repeat with R running through invent of player:
			if R is "wolf cum", increase wolfcumfound by 1;
		if wolfcumfound < 3:
			say "[bold type]Not quite enough samples of wolf cum, but then again...'[roman type] Omio says offhandedly inside of your head. [bold type]'Good luck on your quest [if cunts of player > 0]gorgeous[otherwise if cocks of player > 0]handsome[otherwise if cunts of player > 0 and cocks of player > 0]my friend[end if][roman type].";		
		if wolfcumfound > 2:
			delete wolf cum;
			delete wolf cum;
			delete wolf cum;
			say "When the three vials of wolf cum disappear from your hand as you return to the front of the store you had first heard Omio's call come from you only take a second to freak out before calming down. Omio's voice is quick to perk up inside of your head afterwards after this strange happening. [italic type]'Having gathered all of the materials that I need I can most assuredly say that both I and the group I represent are most pleased to have rendered your assistance in advancing our cause.' Omio says without the least hint of a joke lining her words. For some reason you feel as though you are speaking to a different person than the one from before. Could Omio have multiple personalities? [italic type]'Because of your continued efforts I'll tell you more about our group, if you'd like.'(Y=Yes, N=No)[line break]";
			if player consents:
				say "[italic type]Alright then. The group who I work under is a somewhat small organization, at the moment anyway, that is trying to make a safe enough haven of this apocalyptic world so that mutants, like yourself and I, can go about to live and work and just [']be['] despite our budding feral-like natures.'[roman type] You make a funny face at that and soon, for some reason or the other, you can almost feel Omio rolling her eyes at you. From what you can remember there wasn't a lot of the redhead that looked mutated. Silently you wonder if Omio will explain herself to you, however the researcher fails to elaborate and instead moves on with her speech. [italic type]With the world in the state it is now the military won't be able to do much other than succumb to the infection sooner or later, unless someone makes an strong enough vaccination to combat the source of the problem. But even then, if they somehow manage to do so, so what?[roman type][line break]";
				say "[italic type]If you think about it, so what if they do manage to make a vaccine? It's not a cure. If you know the people in power like I do then you already know that there is no cure for what's happening out there. There was never meant to be one in the first place when the infection was [italic type]supposed[roman type] to become wide spread, but now that it has gone underway against the desired time the top heads in the military are silently aware that the new world about to be born will be one they can't do a damn thing about.'[roman type] Omio seems to grow dire with her words, but unlike before when she was [']pulling your chain['] with her outlandish world ending tale you now get the feeling that something much more calamitous is coming in progress. And when next she speaks your fears and concerns are made real.[line break]";
				say "[italic type]As more and more mutations come into being there's a strong possibility that a new world war might flare up between the humans that are left [']uninfected['] and those mutants who won't accept being treated as a second class citizen. You've heard of the civil wars fought before, well those will be nothing compared to what happens when a collection of ill-tempered renegades stir up a small group and really bring things to a head with both guns and tempers blazing out of control. Just imagine it – and entire group of wolves, lions and the like all marching together against a greater number of humans.[roman type] The picture that comes into your mind is a spooky one, but not one that's unfeasible. [italic type]Even if the remaining humans managed to survive an onslaught like that what kind of precedence will this set for those not taking part in the conflict?[roman type][line break]";
				say "[italic type]The people I support fear that this might happen, a [']them verses us['] kind of race war, so in hopes to nip such a thing into the bud [bold type]we[roman type] need to gather as much data as we can on the mutations running around now and build up a strong understanding of the biological, mental, and emotional needs of these new mutants. Its only in this way can we build up a strong enough foundation to set both laws and settlements where those mutants unable to intermix with the rest of the general public will be able to find a place to call home. I don't mean a reservation, I'm talking about maybe turning half the country over to my organization and making it a free state of mutants, if need be.[roman type][line break]";
				say "[italic type]The ferals aren't going to go anywhere anytime too soon, but we can't just let them run free forever.'[roman type] Omio sighs heavily and you can sense that the other has worn herself out going over all of this. When Omio fails to speak to you a minute or two later you get the idea that the conversation is over with. Going over what you just heard, though all of this information is rather much to take in, it does explain certain things about the future to come. Maybe helping Omio out more with her research will benefit everyone involved? Only time will tell. [italic type]Oh, don't let me forget your payment and all. Take them with my thanks. Also, [bold type]I'll be working in the park trying to do some testing with a unicorn strain of the virus[roman type] if you should want to encounter me again. Come look for me there, alright?[roman type] Light fills your vision and soon there are provision laid out on the ground at your feet. How exactly is Omio doing all of this? And the [bold type]park,[roman type] really?";
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "chips" to invent of player;
				add "soda" to invent of player;
				extend game by 8;
				increase score by 10;
				now dre is 1;
				now Gathering Materials is resolved;
			otherwise:
				say "[italic type]'Oh, ok.'[roman type] Omio doesn't seem all that hurt by your lack of interest in what she knows. [italic type]'Anyway, you've done your work for me, so here are some gifts for you. Take them with my thanks.[roman type] Light fills your vision and soon there are provision laid out on the ground at your feet. How exactly is Omio doing all of this? [line break]";
				say "[italic type]Also, [bold type]I'll be working in the park trying to do some testing with a unicorn strain of the virus[roman type] if you should want to encounter me again. Come look for me there, alright?[roman type].";
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "chips" to invent of player;
				add "soda" to invent of player;
				extend game by 8;
				increase score by 10;
				now dre is 1;
				now Gathering Materials is resolved;


Section 2 – Dream of a Unicorn

Dream of a Unicorn is a situation.
The sarea of Dream of a Unicorn is "Park";

dre is a number that varies.
nta is a number that varies.

When play begins:
	Add Dream of a Unicorn to badspots of furry;
	Add Dream of a Unicorn to badspots of girl;
	Add Dream of a Unicorn to badspots of guy;
	Add Dream of a Unicorn to badspots of hermaphrodite;

Instead of resolving a Dream of a Unicorn:
	If dre is 0:
		say "Walking through the park you find yourself stopping when you notice [if Omiotalk is 1]Omio[otherwise]a redheaded woman in a blue chinese dress[end if] talking to someone hiding in the shadow of a tree. Not sure what's going on you merely watch the two and then blink when both the redhead and the mysterious [']person['] suddenly blink out of existence. Twisting your head around to make sure that you're not dreaming you find that – yep – [if Omiotalk is 1]Omio[otherwise]the strange woman is gone[end if] and the other are gone.[line break]";
	if dre is 1:
		say "Finding Omio sitting at a table inside of the park you cautiously walk to over to the redhead while flipping your head back and forth to make sure that no roaming mutants pop out on you. Making as much noise as possible to alert her to your presence you almost leap out of your [skin of player] skin when sharp golden eyes turn to regard you. At seeing that it's just you Omio lets her face until a friendly mask is placed over the redhead's formerly irritated features. 'Oh hey, I was just thinking about you!' With that look on her face you wonder if you should start running about now. When the redhead gets up to stretch you note all of hidden muscles she possesses in her arms as the sleeves of her blue Chinese styled dress slip down her bicep.[line break]";
		say "Omio slowly lowers her arms and then walks over to reach out to hug you tightly into her somewhat modest chest. 'I sooo need your help right now.' You try to ask the other what she needs, but sadly it gets muffled into the redhead's warm and slightly comfy feeling bosom. When Omio decides to let you go, some minutes later, you pant slightly as your [facename of player] face is somewhat very sweaty. Despite her size the redhead is both very strong and has a very high body temperature. Odd. 'If you have some time I need you to do me a big favor.'[line break]";
		say "Asking the other what she needs you get a slightly shocking surprise out of the other. 'Well I need to examine a unicorn, but at the moment I don't want to be bothered with the only one in town because of [']circumstances['] beyond my control.' Omio scowls slightly and covers her chest with both of her arms and you get the feeling that something big must be up to make the normally bubbly redhead so upset. 'Any who, because of this I would like for you to become a unicorn and then come back here so I can examine you.' At this you blink at Omio – the redhead is smiling at you sincerely – and then ask her if she's lost her mind. When the other begins to giggle at you, you realize that she has indeed lost her marbles.[line break]";
		say "'Nope. I need to draw both blood and other samples from someone with the body of a unicorn so that I collect and catalogue data on certain rare and mythical creatures. Don't worry I know where you can find one to borrow some [']genetic material['] from.' Omio wags her eyes at you lewdly and then tells you about the Palomino where a unicorn barkeeper works. 'I'm sure he'd be very happy to help you out with becoming a unicorn, especially if you were to help him with a problem or two.' The red smiles again and you can only suck on your teeth as you wonder what you've gotten yourself into with this gold eyed harlot. 'Oh, and make sure you come back here after you are done!'";
		now dre is 2;
		increase score by 1;
		stop the action;
		now PALOMINO is known;
	if dre is 2 and bodyname of player is not "Unicorn":
		say "'Remember I need your body to be that of a unicorn so that I can collect some samples.' Omio says before winking up at you. 'Oh and also, don't forget, that the guy you are looking for is in the club named the Palomino. The place should be downtown somewhere, if it hasn't been overrun already by the ferals running around.' Omio hums thoughtfully as she says this, her face is tight with contemplation.";
		stop the action;
	otherwise:
		say "Omio nearly squeals, correction, she does squeal, as the redhead looks over your impressive unicorn body and then gets up from her spot on the sofa to hug you tight. Grunting from the feel of the woman's strong grip you wonder if the other is some kind of behemoth-type mutant in disguise as you feel your ribs starting to creak slightly[if facename of player is bodyname of player]. Whinnying for the other to let you go you all but collapse as you suck in grateful gulps of air when the redhead suddenly releases you[otherwise]. Trying to break free from Omio's grip you, you all but collapse back onto the ground when the redhead suddenly releases you[end if]. 'Thank you so much for this! I never would have thought that you would make such a [if cocks of player > 0]studly[otherwise if cunts of player > 0]charming[otherwise if cunts of player > 0 and cocks of player > 0]magnificent[end if]steed.'[line break]";
		say "Omio continues to squeal like a schoolgirl having her first crush while bouncing up and down like mad, but before you can get too weirded out by the redhead's behavior the redhead has her game face on and is looking at you with a stoic mask of professionalism. 'Now that you've acquired all of the genetic material needed with your transformation please sit down on the table over there.'[line break]";
		say "Nodding in somewhat disbelief at the sudden change of the other you do as your told without further ado. Maybe she really does have some kind of personality disorder? A slight shudder goes through you as you speculate over just exactly what the redhead is going to do to you. You are not prepared for a bright white light to flare up out of nowhere, only to disappear a moment later, momentarily blinding you. When next you can see you look to find Omio with a face mask strapped around her tanned nose and chin, a pair of white latex gloves on, a nurse's scrub covering her blue Chinese dress, while carrying an old fashion black leather doctor's bag that look like it had slipped through a time hole from the 1960s.[line break]"; 
		say "'Alright,' Omio says and your eyes nearly pop out of your skull when the woman comes over to you and then starts trying to undress you. 'I'm going to need you to get out of these and then prepare for some advance medical testing, the likes of which is not standardized by any health organization in America.' The chuckle that seeps free from the redhead makes the hairs along the back of your spine lift up in pure and unadulterated fright. Maybe if you run now you could try and get away? Probably not with the way Omio is looking at you.[line break]";
		say "You try and say something but all you can do is goldfish as the redhead continues to try and loosen you from your only decent set of clothing. Sadly enough, you find the thought of being naked in front of Omio somewhat arousing and soon you are helping the golden eyed female to strip you down[if cocks of player > 0] Making sure to rub suggestively along your groin when Omio unzip your pants you find that Omio barely even blinks when your [cock of player] cock slips free from your confining leg wear[otherwise]. Rubbing against the cleft of your tight puss when you shakily unfasten the ties of your pants you wonder if Omio ever gets embarrassed by these sorts of things[end if]. Once you are fully naked Omio then proceeds to go about checking your blood pressure, examining both of your eyes and ears, measuring your arms, legs, chest [if facename of player is bodyname of player] and then shaving away bits of your glimmering horn to place the snippets into a small Petri dish[otherwise]and then nods her head at you somewhat briskly[end if] before pulling out some other medical tools.[line break]";
		say "Drawing blood and saliva from you next and then storing the fluids into small test tubes Omio goes about asking you several questions while at the same time giving you no speculations as to her own thoughts. Some of the questions are a bit...invasive...but you don't have much of a problem answering Omio because of the strangely disarming nature in which the redhead asks them. Once that is done the redhead stands up and then looks you over completely. A playful light shimmers inside of Omio's golden eyes as she looks at your crotch.[line break]";
		say "'Now, time for the next portion of the testing. [bold type]Are you ready?[roman type]'(Y=yes, N=no)";
		if player consents:
			if cocks of player > 0:
				say "'Now don’t worry none Mr. Stallion. I'm going to treat you really, really good.' Omio's fake Texan accent has you stammering slightly in disquietude, however, before you can do much of anything the other has her hands on your [cock of player] cock and is stroking it to full hardness. One would think that with latex gloves on the feeling of the redhead stroking you would be uncomfortable, but that proves not to be so, especially as your precum starts to ooze from the tip of your slit on down over the length of your manhood. Grunting as you slowly start to thrust your hips up into the female's hand you can't help but groan as your eyes flutter close while your back arches from the exquisite hand job your getting.[line break]";
				say "You grip the sides of the couch with your meaty fingers when Omio brings up her other hand to begin twisting your cock with strong, but easy, pumps. Trying to hold onto your orgasm as you feel your balls quickly start to twitch between your legs you pant through clenched teeth while bucking almost frantically up into Omio's talented hands. It's sadly, or rather wonderfully, a losing battle for you as Omio seems to know exactly what she's doing. Stroking down the thick pulsing veins on your organ the redhead quickly proceeds to finish you off quickly when she moves one of her hands down to tease at your balls. A playful chuckle from Omio echoes in your twitching ears as the red continues to milk you in an effort to get out your churning load of cum -- her hands are now moving in a rapid paced motion up and down your cock almost becoming a white blur to you.[line break]";
				say "Grunting and then shouting your ecstasy to the world you fire your cum up out of your cock with almost rocket-like force, which consequently makes the gleaming trails of frothy ooze spray up over your head before slowly coming to rain down onto your face, chin and neck. Blinded by the stars popping across your vision soon after you never notice how the redhead backs away from you and then pulls out a large jar to collect your spurting cum up off of your lap. All you notice is blissful darkness as you pass clean out from the exertion of such a breathtaking orgasm.[line break]";
				say "When you wake up from your inopportune nap you have a hard time remembering what exactly happened, that is, until you find your clothes still in a puddle on the ground and your lap sticky with dried cum. Blushing slightly as the memories return to you, you look around to see where Omio has gotten to. When you see nothing and no one, save some skunk girls grinning at you from behind a bush you decide that Omio must have used her teleporter to go back home. Either that or walked. Picking up your clothes you note that there are several provisions laid out on the ground for you, but upon doing so you find a scraweled note slipping free from one of your pockets. On it there are some illegibal words witten down and an address to some place in the [bold type]High Rise District[roman type].[line break]";
				say "Did Omio leave this for you? And if so what's this about [bold type]new attire[roman type]?";
				add "food" to invent of player;
				add "water bottle" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				now nta is 1;
				now Dream of a Unicorn is resolved;
			otherwise:
				say "'Alright then, just hold still while I conclude the last portion of the examination.' Omio chuckles and quickly you find yourself trying to back away from the other. You fearful retreat only succeeds in causing you to slip further onto the table, which consequently gives Omio a perfect opening as a white gloved hand reaches down to dip two fingers into your open cunt. A sudden grunt of pleasure quickly turns into panting moans as you feel Omio's, surprisingly thick digits, slip deeper and deeper into you until the redhead has both of her knuckles buried inside of your [bodyname of player] pussy. Spreading your legs on instinct you buck and shiver as the wannabe doctor's swirls her fingers around inside of your cunt while pressing her thumb over the nub of your clit. Arching and panting your body feels like you're about to go into heat as your honey begins to leak out from the inside of your now gaping folds.[line break]";
				say "Seeing you in such a intriguing position Omio snickers and then brings the rest of her fingers together to bury all five of her digits into your oozing pussy. Feeling those sinful fingers pressing down deeper into you, you can't help but to throw back your head and then shout out a strong cry of bliss when your fleshy lips flutter and then lock up vice tight around Omio's roving fingers. Holding the redhead's hand down tight you buck and then groan as gouts of blue nectar dribble out of you and onto Omio's gloved hand as you climax powerfully.[line break]";
				say "When you come down from off of your high you drop back onto the table and then begin to pant like an overworked freight train. Mind whirling as though you've gone through an unbelievable experience, which technically you have, you blink your eyes open and then look down just in time to see Omio collecting your colorful nectar into a large jar. When the redhead speaks next you can only twitch an eye as Omio's words sink deep into your brain. 'Thanks a lot for this sample! I never would have gotten old Harold to give me anything unless I raised my ass for him. But thankfully I didn't have to do that because you did instead!' The redhead holds up the now capped jar and then pulls out a sharpie to label it. 'With this we can test some new theories to see if unicorn cum actually does extend one's life! Maybe if you feel like it you can work we me and my company later on to see if this is true or not?'[line break]";
				say "You pass out from exhaustion before you can comment on that one and when you wake up you have a hard time remembering what exactly happened, that is, until you find your clothes still in a puddle around you on the floor and your lap sticky with your spilled honey. Blushing slightly as the memories return to you, you quickly get up and then go about your way before any trouble can find you. In your backpack are several extra supplies that had been given over by Omio as well as a note.[line break]";
				say "On the small piece of scrawled paper there are some illegible words and an address to somewhere in the [bold type]High Rise District[roman type]. Maybe Omio needs you to go there next and what's this about [bold type]new attire[roman type]?";
				add "food" to invent of player;
				add "water bottle" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				now nta is 1;
				now Dream of a Unicorn is resolved;
		otherwise:
			say "'Well I suppose we can skip it for today then.' Omio smiles patiently while saying this. The look in her eye is a bit forlorn, but at the same time you don't think you're ready for her to try anything more on your. 'Ok, well, I'm going to be working in the [bold type]high rise district[roman type] to find materials necessary to craft some [bold type]new attire[roman type]. If you want to come and help me out again just head there.' Omio winks at you and then moves to take of her gloves and scrubs.[line break]";
			say "When the redhead is done with the clean up portion of the examination she lays out several provisions for you and then turns to go off about her way.[line break]";
			add "food" to invent of player;
			add "water bottle" to invent of player;
			add "peach" to invent of player;
			extend game by 8;
			now nta is 1;
			now Dream of a Unicorn is resolved;
			
	
Section 3 – New Attire

New Attire is a situation.
The sarea of New Attire is "High";

nta is a number that varies.
mol is a number that varies.

Instead of resolving a New Attire:
	If nta is 0:
		say "You don't know why but suddenly you find yourself accosted by several Leopardmen . All of the seem rather hungry to have at your [if cocks of player > 0]sexy[otherwise]delicious[end if] looking [bodyname of player] body. Not really wanting to deal with them you try and make a break for it!";
		let bonus be (( the Strength of the player minus 5 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 12:
			say "Pulling a slick move on the frisky felines you bolt before any of them can get their claws on you.";
		otherwise:
			say "Not being able to get away you find yourself surrounded! No choice but to fight then!";
			challenge "Leopardman";
			challenge "Leopardman";
			challenge "Leopardman";
			if lost is 0:
				say "Having beaten off the frisky felines you find yourself picking up some of their fur as a trophy!";
				add "Spotted Fur" to invent of player;
				add "Spotted Fur" to invent of player;
			otherwise:
				say "Looking down and then rubbing over yourself you try and wipe as much sticky leopard cum off of your body as you can before heading off about your way. What a day!";
	if nta is 1:
		say "When a voice suddenly rings out inside of your head you don't panic as you realize who it is. [italic type]Nice to know you're getting use to me.[roman type] You shrug and then let Omio know that in this town having imaginary friends talking inside of one's head is probably the most norm thing to happen in a world gone mad. [italic type]Imaginary am I? How...well then again. Never mind. Anyway, feel like doing me a favor?[roman type][line break]"; 
		say "Knowing that Omio's requests, so far anyway, usually end up being beneficial to you, you acquiesce to the redhead's desires. [italic type]Alright, I need for you to gather up some more materials for me today.[roman type] Asking what type you find your eyes widening in surprise slightly. [italic type]Nothing too difficult, just acquire five pieces of leopard fur and three clumps of tainted wool. Preferably from the creatures running around here.[roman type] Questing Omio on where she expects you to get wool from with most of the city in such disarray you get a slightly startling surprise in return.[line break]";
		say "[italic type]I think that some sheep people in the city need some help finding one of their own that fell into a sewer or something. If you can, find the lot of them in the city and get their help and that should cause them to spread their infection throughout the city.[roman type] The audacity of Omio's words make you blink for a second. Did she just tell you to willingly allow something to spread its infection throughout the city?[line break]";
		say "[italic type]No, I asked you to help out a bunch of lost sheep. They'll be the one's doing the spreading of their infection. All you need to do is fight and best some of the rams and then sheer some of their wool.[roman type] Questioning Omio about the ethics of doing such a thing you hear a laugh from out of the woman. [italic type]If you can still care about others given these hard and trying times then I know that you are the one I...[roman type] Omio goes silent at that and suddenly the mental connection between you and she goes dead.[line break]";
		say "What in the world was that about?!? Shaking your head you decide just to gather up the materials Omio needs while putting the rest of everything else out of your mind. With Omio its more than likely that the truth of whatever's going on with her will be revealed later on. You recall that she said she needed five pieces of spotted fur and three pieces of tainted wool, right?";
		now nta is 2;
		increase score by 3;
		stop the action;
	if nta is 2:
		let spottedfurfound be 0;
		let taintedwoolfound be 0;
		repeat with r running through invent of player:
			if r is "Spotted fur", increase spottedfurfound by 1;
			if r is "Tainted wool", increase taintedwoolfound by 1;
		if spottedfurfound < 5:
			say "'You don't have enough fur for me. Maybe you could try looking for some more high rise district?' Omio asks sweetly.";
		if taintedwoolfound < 3:
			say "'Not enough wool dear. Perhaps you could search for some more rams within the city.' Omio informs you with a smile.";
		if spottedfurfound > 4:
			delete Spotted Fur;
			delete Spotted Fur;
			delete Spotted Fur;
			delete Spotted Fur;
			delete Spotted Fur;
		if taintedwoolfound > 2:
			delete Tainted wool;
			delete Tainted wool;
			delete Tainted wool;
		say "[bold type]The next bit of text is kinda long. You can skip it if you'd like. (Y=Skip, N=Read)[roman type]";
		if player consents:
			say "Omio gabs at you about the past and future and what not but you're not really paying attention. You do thank her when she teleports you your new gear though. It never hurts to be polite after all. Through all of the chatter though Omio mentions something about working on the plains. Something about having to [bold type]whack[roman type] prairie dogs?";
			add "leopard suit" to invent of player;
			add "water bottle" to invent of player;
			add "food" to invent of player;
			add "peach" to invent of player;
			extend game by 8;
			increase score by 20;
			now mol is 1;
			now New Attire is resolved;
		otherwise:
			say "Omio hums through the link the both of you share as she teleports the materials off of your hand. Faintly you can almost swear that you can feel her putting the fur and wool into some...her cauldron maybe... before you shake such a feeling away. Just how strong is this connection between you getting you wonder, but before you can speculate Omio's voice comes over the [']line['] between you? [italic type]Thank you so much for this, because of you I can now create the thing that I was trying to craft earlier.[roman type] Asking her what she is planning to do with the fur and wool you collected you find yourself gasping in pain when your mind's eye suddenly explodes with the sight of Omio, in her home way out on the plains, standing over her fireplace and stirring something. Your corporal eyes widen in some confusion as the redhead nonchalantly dumps the fur and wool into the steaming broth of pinkish-purple liquid that is bubbling inside of her cauldron. [italic type]'It might not be very scientific, but watch this,[roman type][line break]";
			say "You remain silently transfixed by the vision you are seeing as Omio takes a wooden ladle and then plunks it into the pot to start stirring the contents around. From what you can see the tainted wool and spotted fur seem to be mixing together like spices being put into a soup, but that couldn't be possible, right? When a red vial suddenly floats over to the redhead your mouth is about ready to drop.  Watching Omio as she looks over the liquid and then uncorks the vial before dumping the crimson solution into the cauldron you smile with almost child-like glee as the pinkish-purple pool the red liquid immediately transforms the mixture a sickly green color. [line break]";
			say "When scent follows after sight you find yourself sneezing as the musky and sharp scent of feline suddenly brushes across your nose. White smoke slowly begins to fill up the area around Omio. Within minutes of stirring the mixture you find yourself chuckles as Omio lets out a beautifully annoying chirp as she looks over the fur and wool flowing together to become one large mass. Returning to looking at the mixture you find your jaw almost hitting the floor when you see Omio pull out a large mass of...[']spotted cotton[']?[line break]";
			say "[italic type]Finally! This is proof that we can synthesize new fabrics and other substances from the infected hides and pelts of other mutants.[italic type] Omio says matter-of-factly. Quietly you ask the other why she needed to obtain this information. [italic type]Because by the time the situation here in the city is resolved, or at least contained, I don't think that there will be many natural based resources available on earth that the average person will be able to keep covering their bodies without becoming infected.[roman type] Omio seems to grow solemn at this.[line break]"; 
			say "[italic type]Think about it, you got this material from an infected sheep, now imagine what would happen if/when a farmer that supplies cotton to a large industry lets his herd become tainted without his knowledge. Baring the fact that the new mutates will probably let the farmer in on the secret once they screw him/her while the other's not looking to make them join the herd, what do you think will happen if a if steps aren't taken to check over a shipment of infected cotton in order to neutralize the virus?[roman type][line break]";
			say "Omio moves on before you can think to form up a coherent thought to the problem. [italic type]That's hundreds to thousands of pounds of cotton that could have a ram/ewe viral strains on them. If that gets out to a country that's not fully vaccinated then that's thousands to maybe even millions of people that could end up growing sheepskin and hooves before anyone knows what has happened. There's no way that that can be allowed to happen.[roman type] Omio pauses before continuing her lecture. [italic type]You have to realize that the clothes you wear absorb both sweat and skin cells whenever you put them, so looking at it from that position you can say that you are basically re-infecting yourself again and again every time you take something off and put it back. It's just that, usually, a certain strain of the virus is so strong in one person/creature that unless you have gained the ability to withstand infections you're constantly being physically changed on a molecular level as you go about your day.[roman type][line break]";
			say "[italic type]However, with the city in the state that it is in not too many people are really running around in clothes right at the moment, save for the military and maybe a few select others. Unless portable microwave units, or something close enough to it, become standard everyday tools then any contact with something infected, even if it washed, will have the possibility of transforming an untreated person into one of the infected. So, imagine if you will, millions of people possibly not being vaccinated in the future -- for one reason or another. That opens up the possibility of new strains of viruses being born right underneath the noses of the various governments of the world.[roman type][line break]";
			say "Looking to the large clump of material dripping dry on the wooden ladle Omio is holding up you feel as though you should ask her something, but what exactly? (Y=About the past, N=About the future)[line break]";
			if player consents:
				say "Seeing that Omio's mind is somewhat accommodating you ask her about the past, specifically about if something like this happened before. [italic type]Once, though it was only supposed to be a test, just a harmless test.[roman type] The redhead answer quietly. [italic type]An experiment was run on a small group to see how they would handle the introduction of a new strain of genetic code into their own primitive bodies.[roman type] Omio chuckles all of a sudden. [italic type]I suppose you could say that things turned out well since the mutations that were born were everything that we could have hoped for, however, the fact that the test subjects all ended up with tails, claws, fangs, and the instincts of predators didn't help them to flourish in their own world after the changes became...permanent.[roman type][line break]";
				say "You ask Omio which part of the world this unknown testing happened at some unknown time ago. You're not prepared for the redhead's answer, [italic type]Which world are you talking about because there were more than a few that got...[bold type]genetically modified[roman type] in the past.[roman type][line break]";
				say "[italic type]Don't worry about it, just know that previous events won't be repeated if I have anything to say about it. If you give me some time I'll go over and work on this material to make it into something useful for you. You could so with some decent armor and all.[roman type] The redhead sudden giggles girlishly and in a flash you are pushed back from the vision of Omio and her home to instead return back into your own body. The headache you now have is almost on the level of a migraine and quickly you turn your head off to the side to throw up.[line break]"; 
				say "[italic type] Sorry about that, but the advance stages of the thought projection program can be a little...hazardous...to an untrained mind like yours. I'll make sure not to [']pull['] you like that, so please forgive me.[roman type] Reaching into your pack for some water you swallow and then slosh the liquid throughout your mouth before spitting. It's an hour later when you feel well enough to pick yourself up to leave. Though right before you do a small bundle appears before you in a blinding flash of light and idly you find yourself smirking at how [']normal['] this all seems. A slight [']buzz['] from Omio a minute later mentions something about her working on the plains. Something about having to [bold type]whack[roman type] prairie dogs?";
				add "leopard suit" to invent of player;
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				increase score by 20;
				now mol is 1;
				now New Attire is resolved;
			otherwise:
				say "Asking the redhead about the future you watch as a tiny smile blossoms onto Omio's tanned face. [italic type]It's my hope that the Prometheans will be able to do much better with my research than what the government tried to do. I [bold type]pray[roman type], and I don't usually pray for a lot, that their leader will have the wisdom and intelligence to know how to deal with this situation to turn it into something that will benefit everyone instead of just a select few.[roman type] Omio snorts as though in vexation about something. [italic type]Though, then again I might be getting my hopes up for nothing. Not that this would be a first for me.[roman type] The redhead shrugs. [italic type]But what can I say, I'm a hopeful idiot.[roman type][line break]";
				say "Tentatively you ask Omio what she means by that, but find yourself blinking in confusion back when the redhead starts laughing all of a sudden. [italic type]My, my, aren't we the curious one. Do you really think I'll give away all of my secrets? Any who, if you give me some time I'll go and work on this material to make it into something useful for you.[roman type] The redhead giggles girlishly and suddenly you find yourself thrust back mentally into your body.[line break]"; 
				say " The headache you now have is almost on the level of a migraine and quickly you turn your head off to the side to throw up. [italic type] Sorry about that, but the advance stages of the thought projection program can be a little...hazardous...to an untrained mind like yours. I'll make sure not to [']pull['] you like that, so please forgive me.[roman type] Reaching into your pack for some water you swallow and then slosh the liquid throughout your mouth before spitting. It's an hour later when you feel well enough to pick yourself up to leave. Though right before you do a small bundle appears before you in a blinding flash of light and idly you find yourself smirking at how [']normal['] this all seems. A slight [']buzz['] from Omio a minute later mentions something about her working on the plains. Something about having to [bold type]whack[roman type] prairie dogs?";
				add "leopard suit" to invent of player;
				add "water bottle" to invent of player;
				add "food" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				increase score by 20;
				now mol is 1;
				now New Attire is resolved;

Section 4 – Whack a PD

Whack a PD is a situation.
The sarea of Whack a PD is "Plains";

mol is a number that varies.
tru is a number that varies.

Instead of resolving a Whack a PD:
	If mol is 0:
		say "Wandering the plains you happen to notice the large number of prairie dogs running around. This wouldn't have at all been strange...had they not been topside. Not seeing any reason to mind them you move on, though somewhat carefully as you don't want to sink into the ground by accident.";
	if mol is 1:
		say "Going to speak to Omio you find yourself jumping slightly when a sharp noise out in front catches onto the edge of your hearing. A flash of red and blue shoots pass you and before you know it you're heading outside to see what the commotion is on about. What you find when you get outside is Omio screeching as the redhead kicks the furry hides of several prairie dogs that have happened into her garden. 'That's it, I'm going to do it. I swear by the highest [bold type]TRUTH[roman type] there is that I'm goin to make a device for you guys and fry the whole lot of you!' From the way Omio is going about her business it would seem as though she's had to deal with the rodents trying to take bits and pieces of her garden before. With viper like quickness the redhead expertly grabs the furry critters by the neck when they pop out of their little hiding holes and then literally gives them the boot to send them back across the plains.[line break]";
		say "Not wanting to get in the other's way you watch for several minutes as Omio displays a certain level of ferocity you wouldn't have expected out of the normally playful, if not somewhat silly, researcher. Right up to the point when you notice more prairie dogs coming inbound towards you.";
		challenge "Prairie Dog";
		challenge "Prairie Dog";
		challenge "Prairie Dog";
		challenge "Prairie Dog";
		challenge "Prairie Dog";
		say "When the lasts of the little furry pests are gone you walk over to Omio to check on the redhead to.[line break]";
		if the facename of player is "Prairie Dog":
			say "Turning to have a look at you Omio screams from where she is on her knees checking over her herbs and vegetables. Trying to reassure the redhead that you are you and not a feral prairie dog, despite your [facename of player] face staring at her, Omio seems not to believe you as she swiftly sends a savage uppercut towards your chin.[line break]"; 
			if strength of player < 25:
				say "Omio's attack is so great that you are lifted up off of the ground and then sent hurdling through the sky back towards the city as pain screams throughout your jaw. Feeling your body floating as light as a feather you find yourself looking down at the world below as you slowly sail past the plains. Blinking and then looking down you find that the grassy knoll is kind of beautiful from this distance, though you'd never have thought that you'd see it in this sort of way before, and for a moment you feel your breath catch into your throat as you take a new appreciating of the world beneath your feet.[line break]"; 
				say "Floating, or rather flying as you are, isn't so bad, you come to realize, however that though soon gets put on hold as you notice your path leading you directly into a flock of wyverns. Trying to angle your body to stop you only succeed in making the situation worse as impact head-on into one of the flying scalies.[line break]"; 
				say "Slamming into one of the wyverns both you and the flying reptile squawk in pain at your star-crossed gathering. However, the worst part doesn't exactly come until two seconds later when you and your impromptu mount end up spiraling down onto the ground when the wyvern loses its focus and forgets to flap its massive wings on a coming updraft. Screaming as the ground hurriedly grows larger in front of your eyes you hang onto to your traveling companion in vain hopes that, you'll at least, survive the jarring impact you know is coming.[line break]";
				if a random chance of 2 in 5 succeeds:
					say "Thankfully the wyvern ends up breaking both of your falls as it crashes onto a large truck. Well more so for you than the reptile because by breaking your fall the flying scalie has given you the time to both to collect yourself and then jump off of its backside. Deciding that this adventure is over for today you hurry on your way back to your bunker at top speeds. Good thing to because five seconds after you start to beat feet several of the fallen wyvern's companions are flying overhead to have a look-see over at their dazed and slightly moaning cohort.[line break]";
					decrease hp of player by 15;
					Move player to Bunker;
					extend game by 8;
					increase score by 15;
					now tru is 1;
					now Whack a PD is resolved;	
				otherwise:
					say "Thankfully enough, for the wyvern at least, the reptile is able to spin around and then right itself to jumpstart flying once again. Sadly for you however, you end up being dislodged when the other spins around. Yelping and then slamming your eyes shut in hopes that death with be quick you find yourself gasping in pain when you finally hit the ground. Or rather, when you hit an opened truck full of...sand? Blinking and then coughing up a storm as plume of dirt rains down over the top of your head you find yourself cocking your head in slight confusion when you realize that – yes – you are indeed inside of the back of a large truck filled with...sand.[line break]";
					say "A fit of giggles come over you without your permission and soon you lie back into the truck and then roll around in the sand as you think about how ironic this all is. That is, right before you notice several dark forms hovering above you in the sky. Your laughter almost turns into sobs when you note that the [']dark forms['] looming over you happen to be the large flock of wyverns from before. The large collective of winged reptiles seem particularly [italic type]incensed[roman type] about you having hurt one of their own.[line break]";
					challenge "Wyvern";
					challenge "Wyvern";
					challenge "Wyvern";
					challenge "Wyvern";
					challenge "Wyvern";
					say "After dealing with those pest, and then wiping their gunky slime-like mucous down from off of your body, you decide that today's adventure is over and that its time to head for home. Though oddly enough, you manage to procure some bottles of water from the ground beside the truck before you go.[line break]";
					add "water bottle " to invent of player;
					add "water bottle" to invent of player;
					Move player to Bunker;
					extend game by 8;
					increase score by 25;
					now tru is 1;
					now Whack a PD is resolved;		
			otherwise:
				say "Omio's attack sends you reeling back from an instant K.O. and soon stars are popping out in front of your eyes as darkness covers you vision. The last thing you hear before unconsciousness kicks in is, 'Why in the hell are these things continuously bothering me!? I'm so going to make a [bold type]shock[roman type] device for these pests. For about being nice!'[line break]";
				decrease hp of player by 100;
				if hp of player < 1, now hp of player is 1;
				extend game by 8;
				increase score by 10;
				now tru is 1;
				now Whack a PD is resolved;		
		otherwise:
			say "'GODS!!!' Omio yells while shivering and rocking herself slightly. 'I can't stand those little pests! One of these days I'm going to create a super rodent killing machine and then let it go to town wiping out every last vegetable eating pest I can find on this stupid planet! I'm so going to make a [bold type]shock[roman type] device for these pests. For about being nice!' Omio begins to rant more and more and quickly you get the feeling that maybe leaving would be a good thing to do before her ire finds its way centering on you. Taking your leave you notice several peaches on the ground at your feet and quickly move to pick them up while heading off. Lucky![line break]";
			add "peach" to invent of player;
			add "peach" to invent of player;
			add "peach" to invent of player;
			extend game by 8;
			increase score by 15;
			now tru is 1;
			now Whack a PD is resolved;


[Section 5 - A Shocking Development

A Shocking Development is a situation.
The sarea of A Shocking Development is "Plains";

sol is a number that varies.
tru is a number that varies.

Instead of resolving a A Shocking Development:
	if sol is 0:
		say "Listening to [if Omiotalk is 1]Omio cackling like mad as she gleefully plays with something in her room you walk backwards out of the mad researcher's[otherwise]someone laughing their fool head off from isnide of the studio you quietly exit the[end if] house just as quickly and quietly as you had come in";
	if sol is 1:
		say "Heading Omio's place you are not ready for what happens next! 'Think fast!' Omio cheers before tossing something your way.";
		let bonus be (( the Dexterity of the player minus 5 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 12:
			say "Catching the thing by the hand you find yourself getting shocked slightly as an electrical snap surges up throughout your spine. Tossing the item away as though burned you find the redhead giggling at you slightly as she comes over to pat you onto the face. 'Well, I'm glad that worked out well.' You ask Omio what she just tried to do to you and then sigh in exasperation when you get your answer. 'I'm working on a new kind of electrical taser device that will give your opponents a powerful shock. The one I gave you was just a prototype that I knew wouldn't work quite so well. I wouldn't want you to be hurt in any kind of serious way, now would I?'[line break]";
			say "Sadly enough you're not sure how to answer the redhead so instead you simply ask Omio why she felt the need to try the device on you. 'Oh, because I've decided to give you several of my working units for you to use at your leisure while outside. I know how dangerous it can be out there so I wanted to give you something to show my appreciation of your efforts in helping me out, and in surviving this place.' The look in the golden eyes of the redhead tells you that Omio is speaking the truth, but you get the funny feeling that she's not admitting everything.[line break]";
			say "Deciding not to let it bother you, you simply nod to Omio and then hold out your hand in wait for her to hand over the devices. A squeal makes you flinch slightly as the redhead researcher runs off upstairs and then comes back down with several of the [']fully functional['] devices in her arms. 'Now remember, these are the working models so you'll have to be careful with them. Also, you'll have to make sure that you use them exactly as I tell you to, otherwise you might end up getting a teensy little shock yourself.[line break]";
			say "You nod hesitantly to Omio and then listen as the woman tells you how to work the device. Ironically enough all she tells you to do is to prime them by pressing the only red button on front of them and then to throw them at your opponent. 'Oh and please remember,' You find yourself looking up at Omio just as the redhead is walking towards her computer table. 'They only have one charge a piece so, you wisely young grasshopper!'[line break]";
			say "'Also if you want to know a little [bold type]truth[roman type] about me then maybe you can come by later on. I feel giggly enough to tell you some of my secrets!' Omio winks at you before going off about her business.";
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			extend game by 8;
			increase score by 10;
			decrease hp of player by 30;
			if hp of player < 1, now hp of player is 1;
			now tru is 1;
			now A Shocking development is resolved;
		otherwise:
			say "Fumbling your hands and failing to catch the thing Omio tossed you wind up listening to the round hockey puck-like object make a sharp [italic type]zing[roman type] sound before it hisses and then goes quiet. Stopping yourself from picking it up where it landed at your feet you snap your head up to the redhead and then ask her what she just tried to do to you. Omio pouts as she looks at you somewhat in vexation.[line break]";
			say "'You were supposed to have caught that.' You ask her what [']that['] thing was supposed to do to you. 'Oh, give you a little shock. Nothing big, but enough to make your [skin of player] body tingle for a little bit.' You look at Omio somewhat distrustfully at that point as you narrow your eyes at the redhead. 'Oh, don't worry -- I wouldn't do anything lethal to you. I have plans for you yet, my sweet like helper.' The redhead chuckles somewhat evilly at you and you shiver without being able to control yourself. Again, you feel as though being careful around this woman is a must.[line break]";
			say "Sadly enough at that point you're not sure how to respond to Omio, but you muster up the will to outright as the redhead why she felt the need to try the device on you. 'Oh, because I've decided to give you several of my working units for you to use at your leisure while outside. I know how dangerous it can be out there so I wanted to give you something to show my appreciation of your efforts in helping me out, and in surviving this place all on your little lonesome.' The look in the golden eyes of the redhead tells you that Omio is speaking the truth, but you get the funny feeling that she's not admitting everything.[line break]";
			say "Deciding not to let it bother you, you simply nod to Omio and then hold out your hand in wait for her to hand you the devices. A squeal makes you flinch slightly as the redhead researcher runs off upstairs and then comes back down with several of the [']fully functional['] devices in her arms. 'Now remember, these are the working models so you'll have to be careful with them. Also, you'll have to make sure that you use them exactly as I tell you to, otherwise you might end up getting a teensy little shock yourself.[line break]";
			say "You nod hesitantly to Omio and then listen as the woman tells you how to work the device. Ironically enough all she tells you to do is to prime them by pressing the red button on the front of them and then to throw them at your opponent. 'Oh and do remember this,' You find yourself turning your head up so you can look at Omio as she heads off towards the kitchen. 'They only have one charge a piece, so do you them sparingly.'[line break]";
			say "'Also if you want to know a little [bold type]truth[roman type] about me then maybe you can come by later on. I feel giggly enough to tell you some of my secrets!' Omio winks at you before going off about her business.";
			add "Stun bomb" to invent of player;
			add "Stun bomb" to invent of player;
			extend game by 8;
			increase score by 10;
			now tru is 1;
			now A Shocking Development is resolved;]
			

Section 6 - Truth

Truth is a situation.
The sarea of Truth is "Plains";

Tru is a number that varies.
spl is a number that varies.

Instead of resolving a Truth:
	if tru is 1:
		say "Try to get Omio's attention you find that the redhead researcher is almost completely ignoring you as she resolutely focuses in on her work as she rapidly taps her fingers along the keyboard of her computer. 'Hold on, I'm looking for something.' Figuring that the redhead is not about to give you the attention you desire you head over to her sofa and then flop down onto the beige cushions. Cuddling up to your backpack and looking out to the open patio door allowing the warm winds of the plains to flow into the room you find yourself slowly closing your eyes.[line break]";
		say "'And so I need you to make sure that these samples arrive into the hands of the director as soon as possible, is that understood?' Omio's voice reaches out to you in your haze of sleep. You want to rise and ask what's going on, but you're suddenly just too tired to fight off the need to sleep. 'And what of this one?' Another voice, this one unfamiliar to you, asks[if cocks of player > 0]. 'He's my pet project. He's not to be touched or harmed by any of your operatives, otherwise they deal with me personally[otherwise if cunts of player > 0]. 'She's my pet project. She's not to be touched or harmed by any of your operatives, otherwise they deal with me personally[end if]. Am I clear, Siegfried?' Omio growls with a rumble strong enough that small fixtures tremble around inside of the room while she taps her foot impatiently across the floor.[line break]";
		say "Crystal.' The last you hear of the other, before darkness and unconsciousness takes you back into its embrace, is the sounds of shoes stepping off from the hardwood floor and then crunching onto grass before. When next you wake Omio is typing away on her computer with the same focused intensity she had been using before you fell asleep. Trying to converse with to the redhead only nets a grunt of mild irritation from the female.[line break]";
		say "Not seeing much else you can at the moment you take your leave. Maybe she'll be in better spirits later on. Perhaps she might have [bold type]something special[roman type] for you later?[line break]";
		now spl is 1;
		increase score by 2;
		now Truth is resolved;



Section 7 - Something Special

Something Special is a situation.
The sarea of Something Special is "Plains";

spl is a number that varies.
opcl is a number that varies.
mdl is a number that varies.

Instead of resolving a Something Special:
	if spl is 1:
		say "Hey, I need you to do me a favor today.' You take a sudden step back at the forwardness of the redhead, but nod all the same as Omio gazes straight into your face. 'I need you to pick up a package for me from someone in the [bold type]red light district[roman type]. Don't worry,' Omio stops you before you can start to ask anything with a raised hand. 'It's just some supplies and equipment that I need from a black market dealer. She's waiting for you somewhere near the Aussie pub near the downtown red light district, so could you please go and get them for me.[line break]";
		say "The package that I need is very [bold type]important[roman type] to me so I really need those things. Like, yesterday.' Omio looks to you with an almost demanding glower in her eyes and quickly you get the message that it's time to be off. Though a part of you wonders what she could need so badly, you figure that you'll find out when you hunt down this mysterious woman. Wait, what does this person even look like again?[line break]";
		now opcl is 1;
		now spl is 2;
	if spl is 2:
		say "Asking Omio about the woman you are supposed to be meeting up with you watch as the redhead stares at you blankly. Sighing and then reminding her about your task you watch as the information almost literally crosses her eyes before it stops in her brain. 'OH!! Uhm, sorry, I...hehe.' she flusters and you silently count to five before breathing sighing. 'The woman you are looking for is a blonde with a scar over her nose wearing a white hoodie. She should be easy enough to spot since she's probably still very much human. Oh, and she's in the red light district.' Omio cheerfully says, but you get the feeling she may have totally forgotten about the assignment she just asked you to take on. What a scatter brain!";
	if spl is 2 and Ointerrogate is 1 and "lumpy box" is not listed in invent of player:
		say "'Huh? What do you mean the police stopped you while you were looking for my package handler?' Omio asks and you tell the redhead exactly what happened while you were out in the city. 'Really? That's...not very surprising.' You wait patiently for Omio to explain herself. A minute later you grunt into the pit of your throat when no answer is forthcoming. It's only when the other looks at you nervously that she chuckles and then coughs in preparation to speak. 'Well you see, the person you are looking for, well, she just so happens to be wanted for murder.[line break]";
		say "Your brain actually stops at that point and Omio uses your mental pause to go right on speaking. 'You see, the blonde in question, whose name I always forget, happens to be wanted throughout both the states and some other countries for suspected smuggling and a few unsolved murders. I know for a fact that she's innocent of the latter, but her mysterious nature, and bad timing, has gained her a rap sheet almost ten miles long. Most of it would be thrown out in court by a decent lawyer, but at the same time she's always on the run from the police so she can never get into court to have this nonsense throw out.' Omio giggles nervously as your left eye begins to twitch.[line break]";
		say "'Don't worry, if you just go and pick up my package then all will be well. You have nothing to do with her, on either a personal or business level, and the police are idiots for even trying to sequester you for information since you, technically, don't know anything relevant about the blonde.' You let Omio know that you don't appreciate being dragged into all of this. 'I know, and I'm sorry, but you're the only one who I can ask. So please,' The redhead takes your hand and then stares up at you with shining golden eyes that seem to grow moist all of a sudden. 'Do bring back my package for me.'[line break]"; 
		say "You remove your hand from the redhead's grasp when her eyes start to flutter and then ask her why she wants the parcel so badly. 'It's filled with chemicals and other materials I need for my experiments.' Omio says offhandedly. 'Most of them are illegal to ship into this country and the blonde is the only one who can supply what I need. So, it's kinda vital that I get them ASAP, otherwise my experiments might come to a screeching halt!' Omio playfully smiles before winking at you.[line break]"; 
		say "Why are you friends with this crazy woman again?[line break]";
		now spl is 3;
	if "lumpy box" is listed in invent of player:
		say "'Oh!! Thank you so much!' Omio takes the offered package and then quickly darts off into her room to check over it. Too tired to bother chasing after the redhead you simply move over to Omio's sofa and then crash onto the soft cushions. Minutes later find Omio coming back out of her room and then dancing around merrily while humming somewhat upbeat into the pit of her throat. Turning to look at you the redhead can't help but grin like a lunatic as she comes over to sit down next to you.[line break]";
		say "You'll never know how grateful I am for all of this, but I do so seriously appreciate all you have done for me! Those chemicals will keep me going for a long while to come and my reports will be perfectly documented and written now that I have the parts to upgrade my laptop with! 'Omio cheerfully smiles at you and you can't help, but not passively at the other woman. 'What's wrong? You seem kinda beat.' Giving the redhead a [italic type]look[roman type] you recap your adventure with the blonde and the two lizards. 'Really? That's peculiar.' [line break]";
		say "Getting up and then stretching you figure that maybe it would be a good time to get going. Especially if the somewhat narrowed eyed look the other woman is giving you says anything about her current mood.[line break]";
		say "'Oh before you go, I just wanted you to know I'm going to be working on a big [bold type]alchemy[roman type] project soon, so be on the look out to help. If you feel the need to come around, that is.' Omio shyly smiles at you while saying this and you groan slightly before sighing.";
		delete lumpy box;
		add "peach" to invent of player;
		add "food" to invent of player;
		add "water bottle" to invent of player;
		extend game by 8; 
		increase score by 25;
		now mdl is 1;
		now Something Special is resolved;

	
Section 8 - Alchemy

Alchemy is a situation.
The sarea of Alchemy is "Plains";

mdl is a number that varies.
hyd is a number that varies.

Instead of resolving a Alchemy:
	if mdl is 1:
		say "'OK, so here's the deal,' Omio speaks up out of the blue. just as you cross the threshold into her home 'At present I have all of the materials needed to make some really nifty items here within the studio, however, I don't have an [']energy conduit['] necessary to transmute the raw bits and pieces into suitable alchemical compounds and reagents.' The redhead says as if you had a clue about what she's talking about. 'While I could make a conduit from scratch that would take days and personally, I just don't want to waste that kind of time since I've already found one here within the city.' A bad feeling slowly creeps its way down your spine as you look at the Cheshire smile growing on Omio's tanned face. Would the redhead really ask you to...[line break]";
		say "'Somewhere within the museum,' Yep, she would. 'there's a certain artifact that bears the pattern of a serpent coiled around itself and biting at its own tail crafted onto the front of a bronze amulet. I need you to retriever this medallion for me, by either fair of foul means. I don't particular care which, just please bring me back that objet d'art.' Omio says while placing both of her hands onto your [bodyname of player] shoulders and then gripping you somewhat tightly as if to stress her point.[line break]";
		say "Hesitantly nodding to Omio you watch as the golden eyed redhead smiles to you and then releases your shoulders before turning you around to send you off on your way. In the back of your mind you kinda find it ironic how with the world going all to hell how larceny is becoming somewhat commonplace for you.[line break]";
		say "'Oh and before you go,' Omio stops you midway as you head for the patio door. 'The amulet would be listed under the name [bold type]Ouroboros[roman type]. If that helps any.' Nodding to Omio you throw two fingers up and then wave to signal your departure.";
		now mdl is 2;
	if mdl is 2:
		say "'Please retrieve that medallion, the [bold type]Ouroboros[roman type], for me. I should be in the museum...unless someone has already stolen it.' Omio nibbles on the end of her fingernail as she says this.";
	if "medallion" is listed in invent of player :
		say "The squeal Omio let's out upon seeing you holding onto the medallion is almost enough to make your ears hurt as the redhead's scrambles over to you and then gently takes the artifact she had so requested off of your hands. 'Thank you so much for this! Now I don't have to go through the effort of trying to craft one of these relics for myself.' Omio rubs the bronze metal against her tanned face and for a moment you almost think that you can see her golden eyes spark with an electric-like glow.'[line break]";
		say "'Thank you again. This will be a big help for me.' Omio looks to you with a smile that speaks of something you're not quite sure of as golden eyes seem to gleam almost like stars from within the redhead's face. 'Now then, to pay you back I can give you some more information on the organization I work for, if you'd like?(Y=Yes, N=No)[line break]";
		if player consents:
			say "'Alright.' The air grows heavy between you both as Omio walks over to her sofa and then pats the cushions for you to join her. Following after the redhead you listen as the redhead begins to talk without a hint of her normally bubbly attitude coloring her words. 'As I've already said once or twice before, the people I work for are in the midst of making a place where mutants who feel that they can't live in the ordinary world any longer can go and be who and what they are with intolerable restraint. This might not seem much to you right now, but consider this point somewhat carefully: with the way the humanity is now do you think that you'll be happy living as somewhat of an outcast to [']normal['] people?'[line break]";
			if humanity of player > 45:
				say "The scathing look you give the redhead doesn't seem to faze Omio as she shrugs at you somewhat uninterestedly. 'Think what you will, but you're a mutant now. Whether you like it or not, you will no longer be seen as a regular [']person['] anytime to soon by either the military or the new administration formulating where the old government has fallen in the wake of this changing world. That being the case of things me, you and everyone else not considered a human will have to try to reintegrate back into normal society. However, what if we can't? What then?'[line break]";
				say "'What do we do when/if the time comes that the reigning governing body of the country says [']you're not good enough for us so you need to leave[']? We could possibly pack up and move somewhere else, or we could stay and fight for our rights, but with the laws as they would they even apply to creatures like us? Would the legislation of the states even protect us if push comes to shove? And if not, then what?' Omio seems to be speaking more to herself than you right about now.[line break]";
				say "'With the way things are going with the media portraying those here in the city like some kind of debased vagrants with no sense of morality or consciousness, and I know this because my organization is carefully monitoring all forms of news broadcasts, regular people who don't know anything of what's happening are going to get...confused by the situation. Knowing this and knowing of how hostilities have been in the past towards those who are [']different['], are you really ok with living in a world where you are looked down on by the very people you once considered yourself part of?'[line break]";
				say "'You don't have to answer right now, but just listen. My organization, the Prometheans, are working to try and make sure that everything will be okay in the end for us. We've got wealth enough to both shelter, feed, and educate new mutates as well as facilities where we can hone our individual skills and abilities to better prepare those just coming into the world so that they can understand how to deal with both the humans and mutants around them. In the case of the rapid increase in mutates being born out of wedlock between individuals who may not even be ready to deal with the responsibility of parenthood, someone has got to shoulder this burden.[line break]"; 
				say "With the collapse of the former government and rise of such a concepts like individual responsibility, something this country has been rather weak at fostering in the past, we have to be ready for both the mental collapse of minds not ready to cope with such burdens and those who are not emotionally stable enough to stand up and take care of themselves.'[line break]";
				say "'For now though,' Omio says catching you just as you are about to go too deep into your own thoughts. 'Don't worry about it. Just know that there is a going to be a safe enough haven for you to go, if you feel that the world is becoming too much, provided that you are willing to do you share enough to help out the collective whole.' Omio glares at you while saying this. 'We're not running a charity site for people looking to just get over, we're running a place where everyone helps everyone else. All for one and one for all, as you could say.'[line break]";
				say "Anyway,' The redhead smiles and then giggles in her normal girlish way. The heavy air around the room from the previous conversation is now dispelled in the face of a more uplifting feeling. 'Thank you for helping me out just now. I'm going to be working more on my experiments so please, continue to help me out as much as you can. It will go a long way towards making this so much better for everyone involved.' Omio winks and you breathe out a sigh of disbelief at the golden eyed woman's sudden personality flip. [line break]";
				delete medallion;
				add "food" to invent of player;
				add "water bottle" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				increase score by 5;
				now hyd is 1;
				now Alchemy is resolved;		
			otherwise:
				say "You smile lustfully to Omio while coyly asking her what's so wrong with that? 'I see someone is succumbing to their licentious nature, you may want to take care of that before you end up somewhere in the park rutting with skunks.' Omio advises while rolling her eyes towards the ceiling. You only chuckle at the other before asking her to continue with her story.[line break]"; 
				say "'Anyway…with the way things are going with the media portraying those here in the city like some kind of debased vagabonds with no sense of morality or consciousness, and I know this because my organization is carefully listening to certain broadcasts, regular people who don't know anything of what's happening are going to get...confused by the situation. Knowing this and knowing of how hostilities have been in the past towards those who are [']different['] are you really ok with living in a world where you are looked down on by the very people you once considered yourself part of?'[line break]";
				say "'You don't have to say anything, but just listen. My organization, the Prometheans, are working diligently to try and make sure that everything will be okay in the end for those like you and me. We've got wealth enough to both shelter, feed, and educate new mutates as well as facilities where others can hone their individual skills and abilities to better prepare those just coming into the world so that they can know how to deal with the people around them. And in the case of the rapid increase in mutates being born out of wedlock between individuals who may not even be ready to deal with the responsibility of parenthood, someone has got to shoulder this burden.[line break]"; 
				say "With the collapse of the former government and the rise of such a concepts like individual responsibility, something this country has been rather weak at fostering in the past, we have to be ready for both the mental collapse of minds not ready to cope with such burdens and those who are not emotionally stable enough to stand up and care for themselves.'[line break]";
				say "'For now though,' Omio says catching you just as you are about to go deep into thoughts of[if cocks of player > 0]nice juicy cunts dribbling with sweet honey[otherwise]hard and thick cocks leaking pre cum like slow flowing rivers[end if]. A tea kettle smacks you across the head all of a sudden. 'Don't worry about it. Just know that there is a going to be a safe enough haven for you to go, if you feel that the world is becoming too much, provided that you are willing to do you share enough to help out the whole.' Omio glares at you as the tea kettle rolls on the floor back into the kitchen. 'We're not running a charity site for people just looking to get over on someone else. We're running a place where everyone helps everyone else. All for one and one for all, as you could say.'[line break]";
				say "Anyway,' The redhead smiles and then giggles in her normal girlish way signifying that the conversation's focus has now changed. 'Thank you for helping me out just now. I'm going to be working more on my experiments so please, continue to help me out as much as you can. It will go a long way towards making this so much better for everyone involved.' Omio winks and you breathe out a sigh of disbelief at the golden eyed woman's sudden personality flip. [line break]";
				delete medallion;
				add "food" to invent of player;
				add "water bottle" to invent of player;
				add "peach" to invent of player;
				extend game by 8;
				increase score by 5;
				now hyd is 1;
				now Alchemy is resolved;			
		otherwise:
			say "'Alright.' Omio giggles good-naturedly. It seems the redhead is not bothered by your lack of interest in her people in the slightest. Maybe that's proof she trusts you? Or maybe not? 'Any who, thanks for all of your hard word. Please, accept these as a gift for all of your trouble, my sweet little bandit in disguise.' The thought of your past capper makes you roll your eyes to the ceiling.[line break]";
			delete medallion;
			add "food" to invent of player;
			add "water bottle" to invent of player;
			add "peach" to invent of player;
			extend game by 8;
			increase score by 5;
			now hyd is 1;
			now Alchemy is resolved;


Section 9 – Hydra Captain

Hydra Captain is a situation.
The sarea of Hydra Captain is "Plains";

hyd is a number that varies.
bch is a number that varies.

Instead of resolving a Hydra Captain:
	if hyd is 1:
		say "Today you find Omio sitting at her desk and going over something on her computer. Nothing unusual there, however, when the redhead suddenly jumps up out of the blue and then dashes off towards her room you find yourself somewhat perplexed by the strangeness of the golden eyed woman's antics. Blinking and then looking as the redhead returns with something bundled into her hands you have little time to think over what said thing is before Omio is stuffing the item into your arms.[line break]";
		say "'Get this to the warehouse district and into the arms of one Captain Red-eyes, please and thank you.' Omio says without a hint of explanation. Trying to ask the redhead what exactly is going on Omio rapidly shakes her head from side to side as her lips tighten into a scowling frown all of a sudden. 'Please, just get this to Red-Eyes down at the warehouse. It's a [bold type]Special Delivery[roman type] that the other is waiting for. And you can't miss him, he's a giant blue hydra with two heads who'll, knowing him, be barking orders along the south dock area of the warehouse district at one of his workers.'[line break]";
		say "Asking the other why she just doesn't teleport the case to this Captain Redeye the redhead sighs and then looks away. When no answer comes you find yourself not knowing what else to say at this point. Best to move along then.";
		add "undisclosed case" to invent of player;
		increase score by 2;
		now hyd is 2;
	if bch is 1:
		say "'Thank you for getting that case to Redeye.' Omio says and you simply nod to the redhead. The hydra's words still ring in your ear somewhat so you feel slightly confused as you try to think on Omio's relationship to the sea serpent and your own choices for the future. 'I guess the last thing to do now is to get you to head to the [bold type]beach[roman type] and collect a certain material for me. That is, if you can spare the time. Omio looks to you with a strange, almost haunted look and for a minute you have to wonder...";
		increase score by 2;
		add "Fresh Apple" to invent of player;
		now bch is 2;
		now Hydra Captain is resolved;


Section 10 - Unprecidented 

Unprecidented is a situation.
The sarea of Unprecidented is "Beach";

bch is a number that varies.
omq is a number that varies.

Instead of resolving a Unprecidented:
	If bch is 2:
		say "Walking along the beach you come to a sudden stop when a familiar voice pops into your head. [italic type]Hey, are you busy?[roman type] Shaking your head and then answering Omio back that you aren't you listen to the redhead researcher chuckle at you before sighing. [italic type]Ironic that you wouldn't be, what with everything going on and all. Anyway, I'm of the mind to try to make something extra special today so if you have a [bold type]flotsam club[roman type] on hand would you mind me taking it?";
		say "Telling the other that you'll think it over you listen to Omio hum her reply before ending the link between the two of you.";
		now bch is 3;
	if bch is 3 and "flotsam club" is listed in invent of player:
		say "Hearing Omio's voice in the back of your head asking your about the club you recall that you did find one and do have it one hand. But should you let Omio have it? Knowing the redhead, anything might happen if she gets her claws onto the piece of wood. But then again, has she ever let you down before? You can live without a piece of driftwood, right?(Y=Yes, N=No)[line break]";
		if player consents:
			say "Telling Omio that you have one and that you wouldn't mind giving it to her you pull the piece of wood out and then wait. Just like before, in a flash of light, the flotsam club is taken off of your hands leaving you to hold air in its place. Feeling slightly vulnerable without your weapon you ask Omio what she's going to do with it. Your answer comes as your mind is taken from where you are on the beach back to Omio's studio. Trying to keep your cool at feeling your stomach twisting and your head slowly starting to pound you blink your mind's eye once and then look to see Omio holding your club.[line break]";
			say "Watching as your weapon tossed into the redhead's cauldron like a vegetable into a hot pot you find yourself staring in awe as the piece of driftwood simply [italic type]melts[roman type] into the brewing yellowish orange mixture before disappearing completely. [italic type]Just as I thought,[roman type] Omio mutters secretly making your head turn towards the researcher as a question blooms inside of your head. A smile peels across the redhead's tanned lips just as a dubious look crosses yours. Asking the other woman what she means by her last statement Omio hushes you as she intently focuses on the pot in front of her. [italic type]Don't interrupt me. I'm in the process of making science happen![roman type][line break]";
			say "Not knowing what to say to that you simply hover in your current disembodied form as Omio goes about trying to do this and that with the newly made soup that had once been your former weapon. It takes maybe an hour, or maybe less, time seems to be really out of order when one doesn't have a physical body to count the seconds off with, for anything exciting to happen, but what does happen next astounds you.[line break]";
			say "While she had been stirring the contents of her pot Omio had been systematically pouring in chemicals and reagents into the mix. From what you could see it would appear that the redhead had just been mixing and matching things at will, and by some of the looks that crossed her face Omio probably had been, but the final result was something you hadn't expected at all. When the redhead finished brewing her out of the cauldron came a long and shining piece of metal. How that had happened...you're still not sure, but at seeing the evidence being hauled into Omio's hand, via a large pink kitten paw pot holder, you cannot deny the result of this new experiment.[line break][line break]";
			say "[italic type]So I can transmute wood into metal. Given that I should be able to turn iron into either orichalcum or mythril.[roman type] Omio  seems to go off somewhere inside of her own head and while you might normally have not minded being outside of [']your['] head is now starting to become draining to the point of exhaustion. [italic type]Oh, sorry to keep you waiting. If you give me a moment then I'll fashion this into something slightly useful for you and then send it your way.[roman type] Nodding to the redhead you watch as Omio goes off before you have a chance to actually reply to her verbally...or would it be mentally in this case?[line break]";
			say "[italic type]Well, it's ready for you now![roman type] Omio squeaks as she comes out of her room while polishing a long rod about seven feet tall and one and a half inches wide. [italic type]I hope you like it.[roman type] Omio says before teleporting the weapon away to return it to you. Returning to yourself a second later you find the weapon perched perfectly in between your hands. Giving the rod a few test swings, after you've puked of course, you find that you have a good weapon on your hands as the pole is much stronger than the club and much lighter too. [line break]";
			say "Thanking Omio for her gift and then go about placing the rod down at your side so that you can lean on it as your knees are currently threatening to give out. [italic type]Consider it a gift for all of your hard work.[roman type] The redhead chuckles at you before sighing somewhat mournfully. [italic type]After everything that you've done for me I do want you to know that you have not only my gratitude, but also a place with me and my people within the Promethean society.[roman type][line break][line break]"; 
			say "[italic type]Though from what you've shown me you may not need to be taken care of nor provided for, so it may be me calling on you instead of the other way around later on. I hope you'll be willing to help me out, if I ever need it.[roman type] Telling the redhead that you'd think it over Omio simply nods at you before chuckling again.[line break]";
			say "[italic type]That's fine. I can accept that without problem. Anyway, if you ever need a place to stay then just come on over and hang out for a while. I'll be more than happy to share some tea with you.[roman type] When the sudden mental image of Omio moving to bow low to you filters through your mind's eye you can only chuckle and then shake your head at the crazy researcher. [line break]";
			say "An out of place feeling crosses your mind moments after your [']see['] Omio rise back up to her full height. The feeling is somewhat painful, but not in a physical way...more like...empty? Trying to understand what's going on you get the oddest sense that you may not see Omio again after the city is rescued...or sanitized. However, that can't be right. The other just asked you to come by and help her out sometime later on. Maybe you're just feeling lonesome since you'll probably not have a reason to see the other quite so often. Maybe going to her place to share some tea with Omio would be a good thing to do, whenever you have the time, that is.[line break]";
			add "Organi Rod" to invent of player;
			delete flotsam club;
			now omq is 2;
			increase score by 25;
			now Unprecidented is resolved;
		otherwise:
			say "Telling the redhead that you'll be okay, you decide not to give her the club. [italic type]Ok, no biggie, well anyway I wanted to thank you for all you've done for me. It has really been a big help. If you ever need anything then please stop by, I'll be more than happy to help you out with whatever you may need.[roman type] Omio chirps, yet for some reason you get the funniest notion that you may never see the other woman after the events within the city get under some kind of control. But that's not possible...is it?[line break]";
			say "Omio's posture reveals nothing of her thoughts as she continues stirring her cauldron. It's times like these that you wish you knew the redhead better, but then again, you've got some time to learn a bit more about her, right? Maybe sharing some tea with her whenever you aren't busy elsewhere would be fitting to bring the both of you closer together?[line break]";
			now omq is 2;
			increase score by 15;
			now Unprecidented is resolved;



Table of Game Objects(continued)
name	desc	weight	object
"leopard suit"	"A leopard fur tailored shirt and pair of pants that Omio, a slightly whacky researcher made for you. The material is very flexible and adjusts well onto your body."	5	leopard suit

leopard suit is equipment. 
leopard suit is not temporary. 
The AC of leopard suit is 2. 
The placement of leopard suit is "body". 
The descmod of leopard suit is "A shirt and pair of pants made from both leopard fur and wool covers them.".
The slot of leopard suit is "body".

Instead of smelling leopard suit:
	say "A strong scent of Leopard lingers over both the shirt and pants. A feeling of ferocity surges throughout your spine from the warm and comforting scent.";

]

[Table of Game Objects (continued)
name	desc	weight	object
"Stun bomb"	"A hockey puck shaped electrical bomb."	1	Stun bomb

Stun bomb is a grab object. It is a part of the player. It is fast. It is not temporary.

instead of sniffing the Stun bomb:
	say "The smell of ozone lingers around the bomb. Placing your nose too close causes your face to tingle slightly.";


to say useStun bomb:
	select and option from the table of Stunbombchoice;
	
this is the Stun bombattack rule:
	now battleitem is 1;	[combat item chosen - retaliate to be handled internally]
	choose row monster from the table of random critters;
	say "Tossing the Stun bomb at the mutant in front of you,[one of]you find a slight perverse delight in watching the creature get zapped by the eletrical device[or]you feel slighltly bad as you watch the electrical charge that course through the creature's body[at random].[line break]";
	let the attack bonus bec(( the strength of the player plus the intelligence of the player minus 12 ) divided by 2) plus level of the player;
	 let dam be a random number between 15 and 25 + ( weapon damage of the player times ( a random number from 80 to ( 120 + level of player ) ) ) divided by 100;
	decrease monsterhp by dam;
	if monsterhp is greater than 0:
		say "Shivering slightly the mutant tries to shake off the electric discharge, but once it has the creature raises its head to growl ominously at you .[line break].";
		follow the retaliation rule;
		if the hp of the player is less than 1:
			lose;
	otherwise:
		win;
	rule succeeds;] 



Table of Game Objects(continued)
name	desc	weight	object
"lumpy box"	"Supposed medical equipment and solutions that the redheaded researcher Omio wanted/needed."	1	lumpy box

lumpy box is a grab object.
it is part of the player.
It is not temporary.

Instead of sniffing lumpy box:
	say "The small brown wrapped package smells of chemicals, tools, and...cherry lip balm!?";



Table of Game Objects (continued)
name	desc	weight	object
"medallion"	"A unusual bronze artifact that bears a serpent biting at its own tail."	1	medallion

medallion is a grab object. It is part of the player.  It is not temporary.

instead of sniffing medallion:
	say "A strong scent of ancient times and alchemical mixtures covers the medallion.";



Table of Game Objects (continued)
name	desc	weight	object
"undisclosed case"	"A case Omio hastily shoved into your hands."	1	undisclosed case

undisclosed case is a grab object. It is part of the player.  It is not temporary.

instead of sniffing undisclosed case:
	say "The case smells of something fruity as well as spicy. Liquor, maybe?";


Table of Game Objects (continued)
name	desc	weight	object
"Organi Rod"	"A rod laden with a metallic substance reminiscent of gold. Transformed from a normal club into this by the power of alchemy the rod is both tougher and more damaging, though it weighs a lot less. "	5	Organi Rod

Organi Rod is an armament. It is part of the player. It has a weapon "[one of]your mystic rod[or]your smooth and polished staff[or]your gleaming pole[or]your seven foot staff of pain[at random]". The weapon damage of Organi Rod is 15. The weapon type of Organi Rod is "Melee". It is not temporary.

instead of sniffing Organi Rod:
	say "The rod smells of alchemical residue with a touch of heart and soul from a bubbly researcher.";





Pursuit of Science ends here.
