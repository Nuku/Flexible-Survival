Version 1 of RodAndRonda by Stripes begins here.
[ Version 1.3 - Flagging fight w/Slut Rat as a situation]

Section 1 - Rod

Rod Mallrat is a person. "[if hp of Ronda is not 100]A relatively harmless looking mallrat named Rod is lounging around [one of]the pizza place[or]McDonalds[or]one of the tables[or]the guarded bathroom area[at random][otherwise]Rod the slut rat is [one of]stretched out on some cushions[or]curled up for a quick nap[or]wiping some stray globs of cum from her fur and then licking them from her fingers[or]tinkering with some odd and ends she's found among the slut rats['] collected junk[at random][end if].".
The description of rod mallrat is "[roddesc]".
The icon of Rod Mallrat is figure of Rod_icon.
Rod is a trader.
Rod Mallrat is in Mall FoodCourt.
The conversation of Rod Mallrat is { "empty" };

to say roddesc:
	if Rod is in Mall FoodCourt:
		say "     Rod is a tall handsome figure of a man, if you ignore the fact that he's half rat[if Ronda is not in Mall Atrium].  He's looking a little dishevelled of late[end if]. A long narrow snout has a twitching wet nose, and a long naked pink tail flickers behind him. He wears clothes that look like they belong in a Hot Topic, and he is usually just chilling out, propped up against something and looking to be in no great hurry at all.";
	otherwise:
		say "     Rod has become a sexy slut rat.  She has curvy hips, a tight waist and large bosom.  She has a black leather outfit like most of the other slut rats, though hers is certainly much skimpier, showing off her new breasts, cute ass and bulging crotch.  She has a very feminine face, though you can still pick out a few traces that remind you of the old Rod to help you identify her.  She has black fur and a long, naked rat tail.  She's managed to keep some of her personality thanks to Ronda, but is thoroughly a horny slut rat now.";

the scent of Rod is "[if hp of Ronda is not 100]Rod smells of rats and his mall home.[otherwise]Rod smells of slutty rats and sex.  Lots of sex.[end if]".

instead of conversing Rod Mallrat:
	if tmapfound is 1:		[***needs Slut Rat version?]
		say "'Oh hey that scratching looks kinda familiar!' Rod says when you show him the map, snatching it out of your hands he looks at it from several angles, before heading off to the north. 'I'll be right back, dude.  I wanna show this to the others!' The well-dressed mall rat calls back over his shoulder.   You spend some time wandering around the food court poking into places for a bit before Rod returns, your original message and map with him, and another piece of paper as well. 'Hey sorry about the delay, took a bunch of us to puzzle this stuff out,' he says as he hands you the two pieces of paper. 'Turns out that's some kinda map as ya figured, found a map store here in the mall and managed to match it up to the coast here for ya, leads to some island that ain't too far away actually. No clue what's on the island though,  but the scratchings on the front part are definitely a warning about pirates[if level of player < (7 - levelwindow)]!  You'd best toughen yourself up before trying to find a way over there[otherwise]!  Best be careful[end if].'  Rod says with a shrug, then grins. 'Turns out one of our guys left and ran into some sea rats out there somewhere, too.  Some of the other mall rats are thinking about hitting the beach sometime to find [']em.  Not me though, but hey whatever you're doing, it sounds kinda exciting.  Let us know how it all turns out, ok? And if ya see any sea rats, say hi for us,' Rod finishes, before he goes back to his being cool and hanging around the food court.  You look down at your original map, and the translated map with a small speck of land not far off the coast circled - with this you might be able to find the pirates!  And maybe some treasure too!";
		increase tmapfound by 1;
	otherwise if hospquest is 8 and nerminepackage > 0 and rodhosp is not 0 and hp of Ronda is not 100:
		say "     'Those big, spotted hairballs that rolled in here the other day?  That was a bad scene, dude.  They started to get fresh with some of the girls in the atrium and tried to drag them off.  Well, we wouldn't put up with that.  Never try to force a mall rat from their mall, man.  We don't want none of them goons and their friends in here again.'";
		now rodhosp is 1;
	otherwise if progress of alex is 2 and hp of Ronda is not 100:
		say "     'Darrell?  Yeah, he was here when it all went down.  But... you might be a little surprised[if hp of ronda is 0 or hp of Ronda is 10].  Go talk to my girl, she knows where he is.'[otherwise].'  He shrugs, and points to the north.  'Go ask the others.  They might know where he is.'  He seems a little bummed.[end if]";
	otherwise if hp of Ronda is 0:
		say "     [one of]'Did I introduce myself yet? I'm Rod, Rod Mallrat.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'Dude, you see those nagas? They hunt us mall rats, you know.  Scary shit, no joke.'[or]'Like the threads? My girl picked them out for me.'[or]'Dude, just chillin['].'[or]'Sup?'[at random]";
	otherwise if hp of Ronda is 1 or hp of Ronda is 2:
		say "     [one of]'Oh, hey there.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'I miss my sweet Ronda.'[or]'Oh, hey there,' he says with a sigh.[or]'Watch out for those infected rats.   Dunno where they came from, but they're bad news.  The rats they get don't come back.'[or]'Sup?'[at random]";
	otherwise if hp of Ronda is 3:
		say "     [one of]'So, will you help me out?'[or]'Have you gone to find out what the dog-woman in the shop needs to help Ronda?'[or]'You should go visit Nermine and see what she needs.  You promised you'd help fix Ronda.'[at random]";
	otherwise if hp of Ronda is 4 or hp of Ronda is 5:
		say "     [one of]'Don't give up.  Please keep looking for the stuff Nermine needs.'[or]'Thanks for helping me out.'[or]'Have you had any luck in finding the stuff to help Ronda?'[or]'Remember, she wanted something from a lizard girl at the park and the awesomest fruit you can find from the forest.'[at random]";
	otherwise if hp of Ronda is 6:
		say "     'Thanks for helping me out.  Good luck finding that other stuff.'[line break]";
	otherwise if hp of Ronda is 7:
		say "     'Dude!  Bring that to Nermine.";
	otherwise if hp of Ronda is 8:
		if Slutrat den is unknown:
			say "     'Now comes the tough part, dude.  You'll need to find the nest of those infected rats and all like black-ops infiltrate the place.  They drag off anyone they beat, so the best way would be to let them catch you and see if you can learn the way there.  I'd totally do it myself, but no rat they take ever makes it back.'";
		otherwise:
			say "     'Well, since you know how to find them, now we need to figure out which one of them is Ronda.  That'll be trickier.  She's got a tattoo of a red heart on her thigh right by her... you know.  She did it back when we started going out, before we became professional mall rats instead of just human ones.  But the tattoo's still there, giving her a red patch of fur[if pooltable of slutrat den is 3].'  Having gotten well acquainted with both Eight-Ball and Skeeball, you know neither of them have a mark like that.  Nor have any of the others you've spotted.  But that's only a handful of slut rats out of a few dozen who come and go[otherwise].'  Having spent some time with several of the slut rats, you've not spotted any of them with a mark like that yet.  But that's only a handful out of a few dozen who come and go[end if].";
			say "     'You'll need to cozy up to the rats until you find Ronda,' he continues.  'Once you find her, get her somewhere alone and give her the stuff.  Use these chocolates, bud.  They're her fave.  Just be careful.  We'll only get one shot at this.'";
			now hp of Ronda is 9;
	otherwise if hp of Ronda is 9:
		say "     'Please keep looking for my dear, sweet Ronda.  She's got a heart-shaped mark right here,' he says, tapping at his inner thigh.";
	otherwise if hp of Ronda is 10:
		say "     [one of]'Thanks for helping out with Ronda.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'Dude, keep an eye on those rats.  They're still down there.'[or]'Like the threads? My girl picked them out for me.'[or]'Dude, just chillin['].'[or]'Sup?'[or]'It's good to have Ronda back, but man! does she ever play rough now,' he says, rubbing his backside.[or]'Ronda and I really appreciate all your help getting us back together.'[or]'It's so nice having Ronda back.  Though her new... ummm... you know... Got to get used to that.'[or]'I'm so happy that Ronda's back safe and sound.'[at random]";
	otherwise if hp of Ronda is 99:
		say "[one of]'Oh, hey there.'[or]'You got stuff to trade? I could use something to tinker with to take my mind off things.'[or]'I miss my sweet Ronda.'[or]'Oh, hey there,' he says with a sigh.[or]'Please be careful.  We don't want to lose you too.'[or]'Sup?'[at random]";
	otherwise if hp of Ronda is 100:
		say "[one of]'Hey there, sweet stuff.'[or]'I'm still up for a little trading and tinkering.  It gives me something to do between sex.'[or]'Thanks again for helping Ronda and I get back together.'[or]'Mmm... this new me is so sexy.'[or]'I only remember bits about my life before coming here, but it can't be as great as this.'[or]'We should play around again soon.'[or]'Everyone's been so nice to me down here, making sure I get fucked all the time.'[or]'Ronda's always got first dibs on me, but she loves seeing me get fucked by the others, too.'[at random]";
	otherwise:
		say "[one of]'Oh, hey there.'[or]'You got stuff to trade? I love tinkering with stuff. Just give it to me and watch me in action.'[or]'I miss my sweet Ronda.'[or]'Oh, hey there,' he says with a sigh.[or]'Sup?'[at random]";

the fuckscene of Rod Mallrat is "[sexwithRod]".

to say sexwithRod:
	[puts Slut Rat as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
	if hp of Ronda is not 100:
		if Ronda Mallrat is in the Mall Atrium:
			if hp of Ronda is 0:
				say "'Dude!  I'm already taken.  Ronda would kill me if I fooled around.  Besides,' he adds with a wink, 'she's quite the sweet ride in the sack.  I'm covered.'";
			otherwise if hp of Ronda is 10:
				say "Dude!  You should know what Ronda'd do to me if I fooled around.  Makes me sore just thinking about it.'";
		otherwise:
			say "Rod just sighs sadly and shakes his head.";
	otherwise if lastfuck of Rod - turns < 4:
		say "Rod smiles and runs her paws over her body.  'Mmm... that sounds like fun, but Ronda wants another go at me and she's got first dibs.  Maybe later, sweetie.'";
	otherwise:
		let x be 0;
		say "     Rod smiles happily at your offer and pops the few catches on her outfit, getting nude in record time.  The slutty rat moans lustfully and drops to her knees in front of you.  With her paws on your groin, she starts licking your crotch";
		if cocks of player > 0:
			let x be 1;
			say ".  She runs her tongue over your throbbing penis, then sinks her muzzle down over it, licking and sucking hungrily.  Her paws tease your nuts and work the shaft as you start fucking the slutty rat's face.  You run your hands through her dark hair and rub her ears, telling her what a good, slutty rat she is.  Pleased by your words, her tongue and lips work all the harder to please you.";
		otherwise if cunts of player > 0:
			say ".  She runs her tongue over your wet labia, then dives her tongue into your cunt, licking and lapping zealously.  Her paws tease your clit and folds as you grind your pussy against her face.  You run your hands through her dark hair and rub her ears, telling her what a good, slutty rat she is.  Pleased by your words, her tongue and lips work all the harder to please you.";
		otherwise:
			say ".  Saddened to see your bare groin, she nips and licks at it while running her paws along your thighs.  She pulls you down to snuggle in her arms, guiding your lips to one of her nipples and coaxing you to nurse milk from her breast.  As you drink down the ratty milk, Rod strokes a paw over your head, whispering that she'll help you get better while her other paw plays with your asshole, granting you a little sexual relief even as you start to feel the effects of her milk.";
			say "[slut rat growth]";
		if cocks of player > 0:
			if x is 1 and a random chance of 1 in 5 succeeds:
				say "     Really quite enjoying the slutty rat's tonguework, you run your hands over her head and keep thrusting into her mouth.  With the prospect of receiving such a tasty treat from you, she starts licking and sucking all the more eagerly, intent on getting you off.  You scritch her round ears and thrust into her muzzle, your cock throbbing and spurting precum across her tongue to be slathered across your meat.  It's clear that Rod's new instincts (as well as all her recent practice) has made her quite good at sucking cock, and you cum with a loud groan as you feed your hot, thick seed to the horny rat slut.";
			otherwise if a random chance of 3 in 5 succeeds:
				say "     With the foreplay done, Rod moves onto all fours and raises her tail, offering her wet pussy to you.  Full of lustful excitement after the earlier play, you dive atop her, lining up your cock and sinking into her dripping folds.  She moans loudly and starts rocking back onto your shaft, making a big show of it for those watching around you both.  You run your hands over her body, tease her nipples and slap her ass a few times during your vigorous mating before finally blasting your hot load into the horny rat slut.";
			otherwise:
				say "     With the foreplay done, you sit and pull Rod into your lap so she's facing away from you (and towards the other rats watching the show).  Full of lustful excitement after the earlier play, she quickly gets her dripping pussy lined up with your [cock of player] cock and lowers herself down onto it.  She moans loudly and starts bouncing eagerly on your [cock size desc of player] erection, making a big show of it for those watching around you both.  You run your hands over her body, tease her nipples and slap her ass a few times during your vigorous mating before finally blasting your hot load into the horny rat slut.";
		otherwise:
			say "     With the foreplay done, you press Rod onto her back and grab her throbbing cock.  Lining it up with your [if cunts of player > 0]pussy[otherwise]asshole[end if], you sink yourself down onto it, eliciting a long moan from Rod.  Her large shaft and hefty balls throb, clearly those having gotten less attention as she's the den's favorite bottom.  She moans loudly and writhes in pleasure on the cushions as you ride her, making a big show of it for those watching around you both.  She's better hung than the average slut rat despite her [']lowly['] position, giving you a greatly satisfying fuck out of it as well.  When she finally cums, you both cry out loudly as her hot seed floods into your [if cunts of player > 0]womb[otherwise]ass[end if].[impregchance]";
		infect "Slut Rat";
		decrease humanity of player by 5;
		decrease libido of player by 25;
		if libido of player < 50, now libido of player is 50;
		now lastfuck of Rod is turns;



Section 2 - Ronda

Ronda Mallrat is a person. "[if hp of Ronda is 0]A shapely mallrat female is reclining on [one of]one of the benches[or]a box in front of a Hot Topic[or]her back on the rim of the fountain[or]a wall, preening her long tail[at random]. Ronda is her name, or so the other mallrats helpfully note.[otherwise if hp of Ronda is 10]Ronda is reclining on [one of]one of the benches[or]a box in front of a Hot Topic[or]her back on the rim of the fountain[or]a wall, preening her long tail[at random].[otherwise if hp of Ronda is 100]Ronda [one of]sits with several slut rats fawning over her[or]is stretched out across some cushions, enjoying some expensive chocolates[or]idly rubs her crotch[or]runs her paws over Rod[at random].[end if]".
The description of Ronda Mallrat is "[rondadesc]".
The conversation of Ronda is { "empty" }.
Ronda Mallrat is in Mall Atrium.

to say rondadesc:
	if hp of Ronda is 0:
		say "You have no idea if she was shapely before her infection, but she is now, with wide hips, narrow waist, and the latest of mall rat fashions. She wears a bright button that declares, 'I am a taken girl.' Aww. Her naked pink tail flickers with an unending energy as she looks about with active interest. Her lips are stained a deep red and her claws are all manicured and covered in sparkling motes. She takes care of herself, clearly. Even her white and spotted fur is glossy and healthy looking.";
	otherwise if hp of Ronda is 10:
		say "Ronda is mostly back to her old self, outwardly looking much the same, if perhaps a few inches taller.  She has wide hips, a narrow waist and a good-sized bust, all covered in the latest of mall rat fashions.  She wears a bright button that says 'Large and in charge!'  Hmmm.  Her naked, pink tail flickers with an unending energy as she looks about with active interest. Her lips are stained a deep red and her claws are all manicured and covered in sparkling motes.  She takes care of herself, clearly.  Even her white and spotted fur is glossy and healthy looking.  If anything, she seems even sexier than before her disappearance.  She certainly seems more popular, with a gaggle of giggling girls around her at all times as she [one of]talks about fashion[or]talks about boys[or]talks about her exciting adventure under the mall[or]talks about music[or]gossips with them[at random].";
	otherwise if hp of Ronda is 100:
		say "Ronda is a slut rat now, with a sexy body, dark fur and a horny disposition.  She wears a black leather outfit like the other slut rats and carries herself with confidence, being one of the earliest and most dominant rats in the group.  And her new fucktoy, Rod, has made her even more popular, with her other slut rat sisters lavishing attention upon her to be allowed an opportunity to stuff her one-time boyfriend.  Knowing to look for it, you can spot her heart-shaped marking on her thigh, though it's changed from red to a deep black, even darker than the fur around it.  She may retain a few traces of her old personality thanks to having Rod there, but she is thoroughly a horny slut rat now.";
	otherwise:
		say "ERROR-Ronda-[hp of Ronda]L: You should not be able to converse with Ronda at this point.";

the scent of Ronda is "[if hp of Ronda is not 100]Ronda smells of cheap perfume, rats and her mall home.[otherwise]Ronda smells of slutty rats, cheap perfume and lots of sex.[end if]".

instead of conversing Ronda Mallrat:
	if hp of Ronda is not 100 and hospquest is 8 and nerminepackage > 0 and rondahosp is 0:
		say "     'You asking about those macho hairball rejects from Shock Therapy?  Suzie and Anna were talking to them after they rolled in here like they owned the place.  Just a little playful flirting to tease their boys.  No harm in it.  But the kitties started getting fresh.  They offered them a ride in their swanky helicopter, which was tempting, but that'd mean leaving the mall, so the girls said [']No way['].'";
		say "     'Well, those kitty-litter heads didn't like that and started to get pushy about it.  By that point, their boyfriends had had enough and rallied the troops to deal with them.  That slutty vixen came running out of the store and the dude on her radio was squawking to know what was happening.  We kicked the lot of them out.  They came poking back once or twice, but they're not allowed to shop here anymore.  We told Bruno, he's security, on them and that crazy wolverine and a few of the boys sent them packing.'";
		now rondahosp is 1;
	otherwise if hp of Ronda is 0:
		say "[one of]'Hey there, sugar, you just call me Ronda.'[or]'You meet Rod? He's my boy. You be nice to him, or I will be very... upset.'[or]'Those clothes are out of date, hon.  You should update your wardrobe.'[or]'Being a mall rat is way better than being a human, no offense or anything to humans.'[or]'We can find anything we need here in the mall; it is our Eden.'[at random]";
	otherwise if hp of Ronda > 0 and hp of Ronda < 10:
		say "ERROR-Ronda-[hp of Ronda]T: You should not be able to converse with Ronda at this point.";
	otherwise if hp of Ronda is 10:
		say "[one of]'Those clothes are out of date, hon.  You should update your wardrobe.'[or]'Being a mall rat is way better than being a human, no offense or anything to humans.'[or]'We can find anything we need here in the mall; it is our Eden.'[or]'Thanks again for the assist,' she says.[or]'Me and the girls are getting along really well since I got back.  [']Really['] well,' she says with a wink and a grin.[or][if hp of Lucy is 0]'Have you met Lucy?' she asks, hugging one of the rat girls nearby.  'We've become good friends since I got back.'  Lucy smiles and runs her paw discretely over Ronda's lap.[otherwise]'I hope you and Lucy are getting along well.  And don't worry, I'll keep an eye on her while you're away,' she says with a wink.[end if][or]'Rod's such a good boy.  Knows his place.'[at random]";
	otherwise if hp of Ronda is 100:
		say "[one of]'I feel so much better now that I have my sweet Rod to play with.'[or]'Feel free to play with Rod whenever I'm not using her.'[or]'I love living here with my slutty Rob and all my sexy friends.  This is paradise.'[or]'Thanks again for your help with Rod.  Having her here makes everything so much better.'[or]'Rod's such a good slut.  Knows her place.'[at random]";

the fuckscene of Ronda Mallrat is "[sexwithRonda]".

to say sexwithRonda:
	[puts Slut Rat as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
	if hp of Ronda is 0:
		say "'Hey now, I ain't no floozy rat like some.  I've already got me a sexy guy wrapped around my finger.  Why would I need you?' she says, making the other girls nearby giggle.";
	otherwise if hp of Ronda is 10:
		say "'Mmmm... that sounds pretty nice, but I get plenty of action.  Don't I girls?' she says, eliciting giggles from the other nearby rat girls.";
	otherwise if hp of Ronda is 100:
		if lastfuck of Ronda - turns < 6:
			say "'I was thinking of having another go at my sexy little fucktoy soon,' she purrs as she looks over at Rod flashing her ass at her.  'Maybe a little later.'";
		otherwise:
			say "     Ronda grins as you come up to her, clearly knowing what you have in mind.  Before you can even start to ask, she presses her lips to yours, kissing you lustfully, then pushes you down onto the cushions.  She leaps atop you, grinding her throbbing cock against you as Rod helps her out of her outfit.  'Mmm... Time to thank you again for helping Rod and I get back together, sweetie.'  Rod holds his lover's cock in position as Ronda thrusts eagerly into your [if cunts of player > 0]pussy[otherwise]ass[end if] and starts pounding away at you.  Her large, heavy balls slap against your thighs and you can make out the wet sounds of Rod obediently licking her girlfriend's pussy even as her throbbing penis fucks you.  You moan in delight beneath her, thoroughly enjoying the rough fucking the dominant rat gives you.  You cry out in delight when Ronda finally jams her large, thick meat as deep as she can into you and unleashes her hot load, flooding your [if cunts of player > 0]womb[otherwise]bowels[end if] with her thick, virile semen.[impregchance]";
		now lastfuck of Ronda is turns;


Section 3 - Unleashing the Slut Rats

instead of trading the demon seed when the current action involves the ronda:
	if hp of Ronda is 0:
		project the figure of RondaSR_icon;
		say "     Ronda looks confused at the gift, 'What the heck is this gunk?' she asks, sniffing at it, then flicking a tongue out to taste it. The moment her tongue caresses the surface, she tenses, then lets out a long, airy groan. Other rats nearby come to investigate the noise, and she is soon sharing with about half a dozen of them, licking and lapping until there's none left.[line break][line break]The six rats are all panting loudly now as their breasts starts to swell up dramatically and their pants bulge with new found virility. A sudden shout breaks their reverie. The other mall rats have noticed the goings on, and converge to drive off the infected, Ronda included, forcing the changed rats off into the sewers.";
		delete demon seed;
		remove ronda from play;
		now hp of ronda is 1;
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Slut Rat":
				now area entry is "Mall";
				break;
		extend game by 16;
		increase score by 20;
		now lastfuck of Rod is turns;
	otherwise:
		say "     You think it'd probably be best if you didn't give that to Ronda.  It could start this whole mess over again.";


Section 4 - Saving Ronda

Chapter 1 - Interactions w/Rod and Nermine

instead of going to Mall FoodCourt while ( hp of Ronda is 1 and lastfuck of rod - turns >= 16 ):
	move player to Mall FoodCourt;
	if furry is banned or girl is banned or hermaphrodite is banned or humorous is banned or guy is banned:
		say "     Rod seems particularly down and you go over to talk to him.  He sighs sadly and tells you about how he went to the mysterious shop in the mall to look for a cure for Ronda.  'But the spooky dog-woman said nothing could be done for her.  She had some weird, mumbo-jumbo explanation.  Something about needing the creatures that have been banned or something.  So, I guess nothing can be done for her.'  With that, he slumps off to be alone at one of the tables in the far corner of the food court.";
		say "     (This quest requires that Furry, Girl, Guy, Hermaphrodite and Humorous content all be unbanned.)[line break]";
		now hp of ronda is 2;
	otherwise:
		now hp of ronda is 3;
		say "     Rod comes up to you as you arrive.  He seems a little more animate than he's been of late, if still rather disheveled.  'Hey, can I ask a favour?  I was, like, you know, totally missing Ronda.  You know about Ronda, dontcha?  She was there when those infected rats popped up and swarmed the place.  You must've missed it, but it was a bad scene, dude.'  You keep quiet, thinking it best that Rod and the other rats not know about your part in that incident.  'But yeah, there I was, totally bummed, when I went [']Dude!['] and got this brainwave to talk to that weird dog-girl at that creepy shop.  She was all spooky and stuff, but she said there might be a way to help Ronda.  But that's when she told me that I'd need to get some stuff out in the city, and I'm not to keen on leaving the mall, you know.  So brainwave number two comes and I'm thinking my friend can help me with it.  So that's where you come in.'  Feeling a little guilty about what happened, you agree to visit the shop on the west side of the Atrium and see what needs to be done.";

instead of conversing the Nermine while ( hp of Ronda is 3 and nerminetalk > 0 ):
	now hp of Ronda is 4;
	say "     Nermine smiles as you bring up the topic of Ronda and the slut rats.  'Ahh... I was wondering who the rat boy would find to be helping him.  Ironic that he should be picking you, eh?' she says, leaning across her counter.  'Well, perhaps you will be learning not to play around with things you are not understanding.  Now, as I told the rat boy, I should be needing some things to be making a cure for his love.  He is bound too tightly to the mall and cannot be leaving, even for the girl he loves.  But you are not having this problem.";
	say "     First, there are some lizards running around the park who are thinking they are artists.  Be finding one of them and be getting a sample of the juices from their womanly flower.  This should not be too hard a task.  More difficult is the fruit needed.  In the city, a forest has sprouted out of nowhere.  In it, there are grand trees roaming the streets, moving around on their own power.  These are producing fruits capable of restoring a person.  Eating these fruits, they are changing to become human again, or at least appearing to be human.  I am needing the best and shiniest of these fruits to be fighting the corruption affecting the Ronda-rat.  Most of the other herbs and holy items I am having already.";


before conversing the Nermine while hp of Ronda is 5:
	if lizard juice is owned and awesomest fruit is owned:
		say "[rondaitems]" instead;

to say rondaitems:
	say "     Pulling out the items Nermine needed to help Ronda, you place them on the counter.  She smiles happily and takes them.  'And now it is time to be talking about Nermine's payment for this.  The last items Nermine is needing complete the cure are to be found in a private collection in the city.  Downtown, there is high rise condo of private art collector.  He is keeping veil and staff in his penthouse suite.  Nermine is wanting you to be collecting them for her.  Veil needed to complete cure, staff is payment.  One trip for both.  Easy for one working so hard to make amends.";
	now hp of Ronda is 6;
	now Art Collector is unresolved;
	increase score by 10;
	delete lizard juice;
	delete awesomest fruit;

before conversing the Nermine while hp of Ronda is 7:
	say "[rondaitems2]" instead;

to say rondaitems2:
	say "     Nermine smiles as you hand over the items to her, examining them with a critical eye.  'You are being most helpful in this.  The staff of Tiresias will be looking good in my collection,' she says, placing the seemingly ordinary stick in the case.  'It is unfortunate I am to be burning the veil, but having one is better than none.'  With that, she takes takes it and the other items you gathered as well as a collection of other small items which probably belonged to Ronda into the back to prepare them.  When she finally emerges some time later, she hands a vial of grey fluid to you.  'You are to be giving this to the Ronda-rat.  It will be purging the dark power within her.  Be careful, is only having one chance at this and will only work for her.  I can be making no more with what is available here in the city.";
	now hp of Ronda is 8;

before conversing the Nermine while ( hp of Ronda is 8 or hp of Ronda is 9 ) and a random chance of 1 in 3 succeeds:
	say "     You have the cure you need.  Now you are needing to be finding the Ronda and giving it to her.  Talk to the Rod-rat about this.";

Table of Game Objects (continued)
name	desc	weight	object
"lizard juice"	"A small vial of the creamy, white cum from one of those lizard girls."	1	lizard juice

lizard juice is a grab object.  It is part of the player.  It is not temporary.

instead of using lizard juice:
	say "You need to save that to help Ronda.";

the scent of lizard juice is "The creamy white fluid has a thick, musky scent.".


Chapter 2 - The Art Collector Event

Art Collector is a situation.  The level of Art Collector is 9.
Art Collector is resolved.
The sarea of Art Collector is "High".

artleopardfight is a number that varies.
artattempt is a number that varies.

Instead of resolving a Art Collector:
	if artattempt is 0:
		say "     Managing to follow Nermine's directions through the available paths through the chaotic city, you manage to circumvent other creatures and obstacles to make it to the address she's provided you.  Looking up at the high rise building, your legs ache at the thought of scaling its stairs to reach the penthouse, but there is no other option.  You move quietly inside and carefully make your way to the stairwell to begin your ascent.  It is long and tiring, but you press on, not wanting to risk being found in such a confined space with the countless creatures which probably inhabit this building.  You can see several wet splotches on the stairs, many quite fresh.";
		say "     After an ascent which leaves you hungry, thirsty and aching, you make it to the access to the penthouse suite.  Opening the door, you step into the antechamber connecting to the inoperative elevator and the large doors to the suite.  Finding them unlocked, you slip quietly into the spacious foyer and living room, looking at the various pieces on display.  One of them, a veil and simple staff are held in a glass case.  The veil is a simple band of old, greyed cloth and the staff is little more than a wooden walking stick made from a straight branch, neither having anything remarkable about them.  As you look over the case, you try to decide how best to get at the contents, but are interrupted by an angry growl behind you.  Turning, you find a large leopardman stalking out of the nearby bedroom and spot several sexy leopardesses on the bed waiting for his return after dealing with the would-be thief.  This creature was once likely the art collector and has since gathered a harem of horny females to add to his collection.";
	otherwise:
		say "     Managing to make your way back to the high rise with the art collector's suite atop it, you pause, reluctant to head up and possibly face the powerful leopardman again.  Gathering your resolve, you make your way inside and begin your arduous ascent anew.   It is long and tiring, but you press on, not wanting to risk being found in such a confined space with the countless creatures which probably inhabit this building.  You can see several wet splotches on the stairs, many quite fresh.";
		say "     After an ascent which leaves you hungry, thirsty and aching, you find yourself in front of the penthouse suite again.  Opening the door, you step into the antechamber connecting to the inoperative elevator and the large doors to the suite.  Finding them still unlocked, you slip quietly into the spacious foyer and living room, looking at the various pieces on display before heading over to the one containing the veil and simple staff.  As you approach it, but are again interrupted by an angry growl from the large leopardman stalking out of the nearby bedroom.  The several sexy leopardesses are still spread out on and around the bed waiting for his return after dealing with the would-be thief.";
	increase thirst of player by 12;
	increase hunger of player by 6;
	decrease hp of player by ( hp of player divided by 6 );
	now artleopardfight is 3;
	challenge "Leopardman";
	if artleopardfight is 3:		[fled]
		say "     You manage to feint past the enraged, aroused feline and charge out of the suite.  You rush for the stairs with him in hot pursuit, but the lustful moans of the heat-ridden females draw him back inside, letting you escape.  You run down as quick as you can for the first several flights, just in case, then slow to a more reasonable pace for your long defeated descent.  You'll have to recover and try coming back another time.";
		now artattempt is 1;
	otherwise if artleopardfight is 2:	[lost]
		say "     The powerful leopard grabs you and runs his paws over you, as if trying to decide what to do with the thief he's caught.  But before he can come to a decision, the heat-ridden females on his bed start to yowl in lustful need, longing for the strong male to rejoin them.  The muscled feline grabs you roughly and drags you out onto his large patio.  While the impressive view of the skyline would normally draw your attention, it is the ground that soon fills your view as he hurls you over the side of the building.  You scream as you plummet quickly, spreading yourself out as best you can to slow your fall, but with little effect as the pavement seems to rush up at you.  As you are about to strike the ground, everything mercifully goes black.";
		now artattempt is 1;
		wait for any key;
		clear the screen;
		say "[bold type]Splud![roman type]";
		wait for any key;
		now heat enabled is false;	[temporarily turning off heat effects]
		now skipturnblocker is 1;	[temporarily turns off several other end of turn effects]
		if "Rapid Healing" is not listed in feats of player, follow the turnpass rule;
		if "Regeneration" is not listed in feats of player, follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		now heat enabled is true;	[heat effects turned back on]
		now skipturnblocker is 0;	[restores normal end of turn functions for the final turn skip after the scene]
		now hp of player is 1;
		increase hunger of player by 5;
		increase thirst of player by 5;
		decrease morale of player by 20;
		decrease humanity of player by 8;
		say "     When you finally awaken, sore and aching all over but somehow alive, you give thanks to the powerful healing abilities of the infection.  You slowly struggle to rise, the healing process having taken much out of you.  You have left a noticeable dent and several cracks in the pavement where you landed, as well as a sizable red stain.  Looking at it as you struggle to get up, you notice that something else is off - the lighting very different now.  Looking up, you see that it's [short time of day] now, many hours since your ill-fated fight with the leopardman.  After what feels like a Herculean effort, you make it to your feet and stagger off to find someplace to heal in peace.";
	otherwise if artleopardfight is 1:	[victory]
		say "     With the leopardman driven off, you can hear the lustful yowls of the felines get louder as they start to climb off the bed.  Unwilling to face down a pack of heat-ridden females, you quickly smash the case, grab the items and make a run for it.  You dash to the antechamber and into the stairwell, rushing down the first couple of flights.  When you don't hear any pursuit, you relax a little and cautiously slow down, hoping the decided to coax the defeated male from the other room to satisfy them.  You look over the strange, unassuming items and hope they are worth the effort as you stow them away carefully and make your way back outside.";
		increase score by 20;
		now hp of Ronda is 7;
		now Art Collector is resolved;

Chapter 3 - The Rescue Attempt

rondafight is a number that varies.

to say rondarescue:
	[puts Slut Rat as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
	say "     Looking around the room, you spot several of the rats in mid-coitus and try to check them out without looking too interested.  Not that the rats would mind, per se, but you might get roped into playing with them and lose track of your actual goal.";
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus]+[level of Ronda] -- [dice + bonus + level of Ronda]: vs 17.";
	if dice + bonus + level of ronda < 17:
		increase level of Ronda by 2;
		say "     Looking around the various rats in the den at the moment, you aren't able to spot one with Ronda's red heart on their fur.  You try to keep a mental list of who you've already checked, though it's hard to tell the slutty rats apart at times.";
	otherwise:
		say "     You are about to give up when you spot a flash of red on one of the large rats.  This well-endowed herm has another rat's muzzle buried under her hefty balls and licking her snatch.  You'd almost missed it because her big testes were covering the little red heart.  You're tempted to join in right away, but you won't be able to tempt her somewhere secluded until she's done with her current playtoy anyhow.  You snuggle back with one of the other rats and sit back to enjoy the show.";
		if pooltable of slutrat den is 3:
			if slutratsub > 5 or cocks of player is 0:	[bottom]
				say "     Finding yourself in Eight-ball's arms, you moan in pleasure as the rat starts playfully teasing you.  You giggle happily and wiggle back against her cock, soon rewarded with the pleasant joy of having her cock slide up into your [if cunts of player > 0]hot pussy[otherwise]tight ass[end if].  You bounce in his lap as you both enjoy the show, watching as Ronda rolls the other rat onto all fours and fucks her good and hard until she's full of overflowing semen, and so are you.[impregchance]";
			otherwise:			[top]
				say "     Finding yourself in Skeeball's arms, you moan in pleasure as the rat starts playfully teasing you.  You giggle happily and pull her into your lap.  The slutty rat grinds herself down onto your cock and moans in pleasure as you drive it into her, bouncing her in your lap as you both enjoy the show.  You watch as Ronda rolls the other rat onto all fours and fucks her good and hard until she's full of overflowing semen, and so is Skeeball.";
		otherwise:
			say "     You make out with the sexy slut rat you've found, playing around until you have both have a powerful orgasm while you watch Ronda fuck the small rat beneath her until she's full of overflowing semen.";
		infect "Slut Rat";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		project the figure of RondaSR_icon;
		say "     After the sexy show is over, you keep an eye on Ronda, letting her relax for a bit and hopefully become aroused enough to be tempted away for some more fun.  Noticing her cock start to throb as her fingertips subconsciously slide over it, you snuggle up beside her and run your paw across her hip.  At first, she doesn't seem very interested, but you start teasing her.  Once you begin to get her attention, you discretely slip out the pack of deluxe chocolates, which really pique her interest.  Whispering that you don't really have enough for everyone, you wrap your paw around her cock and lead her off towards a shadowy alcove where some junk and supplies are kept.  She follows with a paw on your ass, squeezing it.";
		say "     Once out of sight of the others, Ronda stuffs several of the chocolates into her muzzle, moaning in pleasure before pressing you into a chocolatey kiss.  Her tongue dives into your mouth, sharing the chocolate and hazelnut flavour with you as her paws run all over your body.  Fully hard and leaking precum, she grinds her cock against you lustfully.  'Oh, I've missed these so much,' she moans.  'It's like I can... almost remember...' she says softly.  You tell her that there are more waiting for her, that you'll help her remember, that her boyfriend's sent you to help change her back.  You slide the small vial of grey liquid from your pack.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     Eating another chocolate, Ronda pauses for a moment, struggling with her memories.  'I... I remember there was someone... gave me these.  Rod!  Yes, that was his name.  I can't believe I almost forgot him.'  She presses her lips to yours in another kiss, almost making you drop the vial as she pushes her chocolate-coated tongue into your mouth.  'Oh, thanks for helping me remember.  But you should help me bring him here so he can be with us.  He'd be so sexy as a big, slutty rat, don't you think?'";
		say "( NOTE: Luring Rod down may disrupt some other game content or have odd glitches/inconsistencies.  It is also considered non-canon. - The Mgmt. )[line break]";
		if the player consents:
			say "[helpingronda]";
		otherwise:
			say "[helpingrod]";

to say helpingronda:
	say "     Perhaps it's just your current, slut rat nature talking, but the idea of turning the tables around on Rod and getting him infected sounds very tempting.  You pull Ronda into another wet and chocolatey kiss, telling her that's a wonderful idea.  You end up dropping the vial on the floor and it breaks open, unnoticed by you both as you kiss and grope one another.  With your bodies and loins grinding against one another, you almost begin having sex, but manage to focus to remember that you need to invite a third rat down here for your threesome.";
	say "     You and Ronda slip out of the den and make your way back towards the connection into the mall, playfully groping and pinching each other along the way.  When you get close to the hole, you have Ronda wait out of sight around a corner while you proceed up into the Smith Haven Mall.  Trying not to attract unwanted attention, you head over to Rod, who looks hopeful at your return.  You quickly tell him to stay quiet before telling him that you've found Ronda.  Making an excuse that getting everyone excited about Ronda's escape would actually just get in the way, you tell him that his poor, sweet girl's hurt and needs his help to make it the rest of the way.  You add with a nudge and a wink that this is his chance to be the big hero for her.  Excited all the more at that, he quickly grabs your wrist and rushes towards the hole.  You follow along, letting him take the lead back beneath the mall.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     Once underground, you point Rod towards where Ronda's waiting for him and he goes charging off towards the room at the end of that maintenance tunnel.  'Rod, honey?  Is that you?' Ronda asks from the shadows.  'Oh please, come help me.  I've missed you so much,' she says with longing.  The mallrat rushes towards her, only to stop short as Ronda emerges from the shadows, revealing her intact, slut rat nature.  Rod screams and turns to run, but you are behind him, cutting off his escape.  Ronda grabs him and stuffs the last of the chocolates into his mouth before giving him a passionate kiss.  'Oh, Rod, I've missed you a lot, sweetie,' she whispers in his ear while holding his muzzle shut.  'And I can't wait to show you just how much I've missed you again and again,' she adds, grinding her throbbing shaft against his hip even as your clawed hands tear away at his clothes.";
	say "     Even though Rod's eyes are wide with fear, his body can't help but start to respond to the attention of the two slutty rats holding him.  As you stroke his rock hard cock, you can see why Ronda wants him back with a nice, big cock like his.  You give it several slow licks and roll his large, ratty balls in your paw.  Ronda's moved in behind him now, grinding her cock against his ass, then lining it up with his back door.  'I've been gone for a while.  You haven't been straying, have you?'  He stiffles a groan as you envelop his cock with your lips and start sliding his maleness into your mouth, shaking his head vehemently.  'No?  That's good, but things will be different now.  My man's going to be a proper slutty rat now,' she purrs.  And with that, she starts sinking her large cock into the other rat's backside with a moan from both of them.";
	say "     'And you'll be my slutty rat, bending over for any of the girls I want to fuck you, taking my [']Rod['] whenever I want,' she says with added emphasis, pushing her rod hard into her Rod, making the rat moan.  With the mallrat's cock in your mouth, you can feel it already starting to change and grow larger, exciting you further.  You run your paws across his hips and legs, feeling them changing to become feminine and increasingly sexy.  Just as you glance up and spot the beginning of breasts on Rod's chest, he groans loudly and cums hard, draining his balls of their pent-up mallrat cum to make room for the slut rat semen that's now making them swell larger.  After gulping down most of it, release his still hard cock and get up, pulling him into a kiss and presses the rest of his load into your mouth with this tongue, giving Rod his first taste of semen, though what will certainly not be his last.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     Looking Rod over, your eyes slide over his increasingly feminine features, his swelling chest and curvy body to his hips.  There you spot his enlarged cock and balls, but also some dampness running down his legs.  Knowing Ronda's not cummed yet, holding back to give her boyfriend a thorough fucking for his first time, you drop back to your knees to investigate.  Pushing up those bloated balls, you find a wet puss waiting there, growing larger as the new herm continues to transform.  You give that virgin cunt a few licks, delighting in Rod's moans at this new pleasure.";
	now tempnum is 0;
	if cocks of player is 0:		[no option, ride Rod's rod]
		say "     Rod's body is growing larger as well, though not quite as big as her dominant girlfriend.  The newly-minted herm's fur is also becoming darker as the slut rat infection spreads rapidly through her body.  Deciding that you want more than a suck on her cock, you coax the lustfully fucking pair to sit back on a nearby crate.  With Rod positioned in Ronda's lap, still taking the bigger rat's cock up her ass, the transforming rat's cock is ready and waiting there for you to ride.";
		now tempnum is 2;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	otherwise:					[option to fuck or ride]
		say "     Rod's body is growing larger as well, though not quite as big as her dominant girlfriend.  The newly-minted herm's fur is also becoming darker as the slut rat infection spreads rapidly through her body.  Deciding that you want more than a suck on her cock, you coax the lustfully fucking pair to sit back on a nearby crate.  With Rod positioned in Ronda's lap, still taking the bigger rat's cock up her ass, the transforming rat's spread legs offer up her wet pussy (Y) to you and her throbbing cock (N) is upright and available for you to ride as well.";
		if the player consents:
			now tempnum is 1;
		otherwise:
			now tempnum is 2;
	if tempnum is 1:
		decrease SlutratSub by 2;	[somewhat more dom]
		if SlutratSub < 0, now SlutratSub is 0;
		say "     Spreading the rat's legs a little further, you boost those heavy balls up a little and get your cock into position.  Rod bites her lip before the last of her resistance fails and she moans loudly for you to fuck her, which you quite happily do.  'Mmm... that's my good, slutty Rod,' Ronda says, nipping her ear.  'Ride those cocks.  Mmm... I can hardly wait to see you stuffed with your first litter.'  Rod bounces herself vigorously in Ronda's lap while hugging you close.";
		say "     As you fuck, the reunited couple continue to go on about how they've missed each other and how sexy the new Rod looks.  By the time you're driving your cock deep into her cunt and finally unleash your load into her new womb just moments after Ronda's semen floods her ratty bottom, Rod's finished her transformation into a sexy slut rat with curvy hips, a plump bosom, throbbing cock and dark fur.  Despite starting out male, she's become a very girly slut rat and smaller than most.  She's definitely going to be a popular fucktoy around the den.";
	otherwise:
		increase SlutratSub by 1;	[slightly more sub]
		if SlutratSub > 10, now SlutratSub is 10;
		say "     With a paw around Rod's enlarged cock, you climb onto her lap and get your [if cunts of player > 0]pussy[otherwise]asshole[end if] lined up with its dribbling tip.  Rod bites her lip before the last of her resistance fails and she moans loudly for you to let her fuck you, which you quite happily do.  'Mmm... that's my good, slutty Rod,' Ronda says, nipping her ear.  'Stuff that [if cunts of player > 0]cunt[otherwise]ass[end if].  Mmm... I can hardly wait to see you stuffed with your first litter,' she adds while fingering his still-virgin pussy.  Rod bounces herself vigorously in Ronda's lap while hugging you close, working her pulsing cock hard into you.";
		say "     As you fuck, the reunited couple continue to go on about how they've missed each other and how sexy the new Rod looks.  By the time you're cumming while Ronda's semen floods her ratty bottom and Rod's blasting her load into your [if cunts of player > 0]womb[otherwise]bowels[end if], Rod's finished her transformation into a sexy slut rat with curvy hips, a plump bosom, throbbing cock and dark fur.  Despite starting out male, she's become a very girly slut rat and smaller than most.  She's definitely going to be a popular fucktoy around the den.[impregchance]";
	say "     You and Ronda fuck Rod a few more times, showing her many of the pleasures her new body has to offer.  Ronda eventually decides to take her boyfriend turned fucktoy down to the den to show her off to the others.  Rod seems much more coherent than most slut rats after their initiation and Ronda seems to still remember in part.  You guess that having each other to support and remind one another of their identities has helped them remember a little better.  But that romp you shared certainly proves that they're slut rats through and through now as well.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     When you head back up to the Mall, you tell everyone that Rod dragged you both down under the Mall after he'd decided to finally go searching for Ronda.  You tell them that you tried to help him, but that the big rats down there got him and that you barely got away yourself.  Still high on the excitement of what happened below, you feel no guilt about your duplicitous actions, feeling much closer to your slut rat sisters now.";
	say "     Nermine gives you a inscrutable look as you're explaining what happened to the sad mall rats around you, but she says nothing.  She was asked to help reunite Rod and Ronda, and that's happened... after a fashion.  Pretty much Nermine's usual stock and trade.";
	decrease humanity of player by 20;
	increase score by 100;
	now hp of Ronda is 100;
	move Rod to Slutrat Den;
	now the icon of Rod Mallrat is figure of pixel;
	now the icon of Ronda is figure of RondaSR_icon;
	move Ronda to Slutrat Den;
	move player to Mall FoodCourt;


to say helpingrod:
	say "     You start to tell her that's Rod's waiting for her to come back to the Mall.  As you try to explain that you've found a way to change her back, she shakes her head at that and grinds her hard cock against you harder.  'Change?  Why would I want to change?  We're the sexiest beasts on the planet.  Mmm... enough talking.  Let's fuck, sweet stuff,' she rumbles, grinding her hard cock against you.  You'll have to fight her before you can get her to take it.";
	say "[line break]";
	now rondafight is 3;
	now inasituation is true;
	challenge "Slut Rat";
	now inasituation is false;
	if rondafight is 3:
		say "     As you make an attempt to flee from the slut rat, your hand gets knocked by hers, sending the vial tumbling to the ground and breaking.  Its contents spill out onto the dirty floor, ending any hope of saving her.  Ronda follows you briefly before heading back to the main group, what brief moment of clarity she had is gone forever.  Having successfully gotten away from her, all you can do is make your way back up to the mall food court.";
		move player to Mall Foodcourt;
		say "     Back up in the mall, you head over to Rod and give him the bad news that Ronda was too far gone to be saved.  Heartbroken, the depressed rat slumps off somewhere to be alone for a while.";
		now hp of Ronda is 99;
		now rondafight is 0;
	otherwise if rondafight is 2:
		say "     After being beaten by Ronda and in the ensuing wild romp, the small vial is knocked aside and shatters, spilling its contents onto the dirty floor, ending any hope of saving her.  Once she's sated herself, she heads back to the main group, what brief moment of clarity she had is gone forever.  After you recover, you make your way back up to the food court.";
		move player to Mall Foodcourt;
		say "     Back up in the mall, you head over to Rod and give him the bad news that Ronda was too far gone to be saved.  Heartbroken, the depressed rat slumps off somewhere to be alone for a while.";
		now hp of Ronda is 99;
		now rondafight is 0;
	otherwise if rondafight is 1:
		now rondafight is 0;
		now hp of Ronda is 10;
		move Ronda to Mall Atrium;
		increase score by 50;
		say "     Eventually forced to swallow, Ronda releases a muffled gasp as you keep your hand over her mouth and she starts to thrash.  Her almost manages to push you off, the renewed strength from her fear only held in check by her lack of control of her changing body.  As the potion takes effect, Ronda begins to shrink down a little and the harsher features of her slut rat face diminish, starting to look more like her old self.";
		say "     As clarity and recognition return to her eyes, she stops struggling and looks around, taking in her surroundings as if for the first time.  You whisper firmly that you're rescuing her from some dangerous creatures and she's got to be quiet as they're still around here.  Cautiously, you take your hands from her and thankfully she doesn't scream.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     'What's going on?  Last thing I remember, I was hanging out with the girls and then... it all gets hazy.  There's just vague images of rats and sex.  Where's Rod?  Is he okay?'  It seems she's thankfully forgotten how she ended up this way in the first place.  You quickly tell her that Rod sent you to rescue her.  'Oh, my dear, sweet Rod,' she says lovingly holding her paws at her chest.";
		say "     And that's when she notices her large, and now ill-fitting, leather outfit.  You quickly put your hand over her mouth again, silencing her cry of surprise.  You tell her that you'll explain on the way back and grab a sheet from the pile of junk to bundle herself in.  She nods and clutches it tightly to herself.  You notice that her changes are still slowly progressing, with her fur now something between her previous white and spotted pelt and the dark tones of the slut rats.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     You head over to the archway leading out of the entrance and make sure the coast is clear before motioning for her to follow you.  Moving quickly and quietly, you lead Ronda back out of the sewers by the safest route you know.  In the dark tunnels, it's hard to tell but the changes eventually seem to subside, with her only a little bigger than before, but otherwise looking the same.  On the way, you give her a marginally edited version of the situation with the slut rats, leaving out your involvement in the whole fiasco.  She tells you she only has a few, vague memories of her time as a slut rat and readily accepts your version of events.";
		move player to Mall Foodcourt;
		say "     Back at the food court, Ronda rushes past you and into Rod's arms.  There's a lot of kisses and tears between the reunited pair, drawing the attention of the other rats until they're surrounded by a mob of rats with questions.  Eventually, it gets to be too much for Ronda, who snaps at them that she just got back and wants some time with her man.  Grabbing him roughly by the wrist, she pushes through the crowd, grabs you with her other paw and drags you both into the back of one of the fast food joints for a little privacy.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     Ronda gives you a wild kiss, diving her tongue into your mouth.  'Thanks again, sweetie,' she says before turning her attention to Rod.  'Mmmm... and now for my clever man,' she rumbles, pushing her rat body against Rod's and letting the sheet she was wearing like a toga slide down.  As his paws roam over her body while kissing, they eventually drift lower and Rod suddenly stops short.  With her back to you, it takes you a moment to realize that Ronda's cock hasn't gone away completely, but you catch sight of her plump balls as well as her dripping pussy as her tail flicks with excitement.";
		say "     'Things are going to be a little different from now on, sweetie,' Ronda rumbles, turning Rod around to press his chest against the fridge.  Lining up her cock, she presses it to his back door.  'I've been gone for a while.  You haven't been straying, have you?  I know that slut Lucy's had her eyes on you.'  He stiffles a groan and shakes his head vehemently.  'No?  That's good.  But I still think you need a reminder that you're [bold type]my[roman type] man.'  With that, she starts sinking it into the other rat's backside with a moan from both of them.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     As Ronda starts pounding away at Rod in earnest, he looks back at you, blushing brightly at his ears.  Catching the glance, Ronda looks back at you, her rescuer, and grins.  'Mmm... let [if cunts of player > 0]her[otherwise]him[end if] watch.  That is, unless [if cunts of player > 0]she[otherwise]he[end if][']d rather join in.  What do you say?  One time offer,' she adds, flicking up her tail to flash her wet cunt again.";
		say "     What will it be?  Shall you [link]join in (1)[as]1[end link], [link]stay and watch (2)[as]2[end link] or [link]leave (3)[as]3[end link] the two to get reacquainted?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to join in, [link]2[end link] to stay and watch and [link]3[end link] to leave.";
		if calcnumber is 1:
			if cocks of player > 0:
				say "     Deciding to get in on the action, you move in behind Ronda, getting your [cock of player] cock lined up with her cunt.  Rod starts to protest, but Ronda just gives him another hard thrust.  'Oh sweetie.  Don't be jealous.  You know I love you very much, but our hero here needs to be rewarded.  You'll get your turn later.  How does that sound?' she adds, reaching around to stroke his throbbing cock while pushing deep into him again.  He moans and nods eagerly.  'Mmm... that's why I love my big, hard Rod,' she rumbles.  'He knows his girl's in charge.'";
				say "     That resolved, Ronda grins back at you and flicks her tail up meaningfully.  Knowing you've got to the go-ahead, you thrust into her eager cunt, pressing her hard and deep into her bodyfriend.  It takes a few attempts to set up a steady rhythm, but soon enough you're pounding into Ronda as she drives into Rod.  Her cunt squeezes and tugs at your meat, working your cock expertly even with the distraction of fucking Rod at the same time.  Between that and her aggressive lust, you suspect that Ronda has more lingering traces of her slut rat condition than just her cock.  You decide not to dwell on this, instead wanting to enjoy the rat's hot, wet pussy.  As she groans loudly in orgasm, blasting her hot seed into her boyfriend's belly, her vaginal walls clamp down around you and you pump your load into her.  Rod cums seconds later, spraying his semen across the steel fridge door as his tummy's plumps up a little from all the cum his girlfriend's pumping into him.";
				say "     After withdrawing and Rod and Ronda change positions, Ronda sends you on your way, saying she wants more private time with him.  'We have so much to catch up on,' she says with a grin, stroking her cock as it gets hard again.";
				if libido of player > 50, now libido of player is 50;
			otherwise if cunts of player > 0:
				[puts Mall Rat as lead monster in case of impregnation]
				repeat with y running from 1 to number of filled rows in table of random critters:
					choose row y in table of random critters;
					if name entry is "Mall Rat":
						now monster is y;
						break;
				say "     Deciding to get in on the action, you move over to Rod and Ronda.  You run a hand across her ass and down to finger her pussy, eliciting a moan from her.  Grabbing Rod's hips, she pulls him back (all while backing onto your fingers) and tells you to get in front of him.  Rod starts to protest, but Ronda just gives him another hard thrust.  'Oh sweetie.  I won't be jealous this one time.  You know I love you very much, but our hero here needs to be rewarded.  Just don't go thinking you can get away with this with anyone else.  Understand?' she adds, reaching around to give his hard cock a firm squeeze while pushing deep into him again.  He moans and nods eagerly.  'Mmm... that's why I love my big, hard Rod,' she rumbles.  'He knows his girl's in charge.'";
				say "     That resolved, you move in front of Rod and get your pussy lined up with his cock, letting him thrust into your eager cunt as Ronda pushes behind him.  It takes a few attempts to set up a steady rhythm, but soon enough Rod's pounding into you as Ronda drives into him.  His large, throbbing cock pulses inside you, fucking you deliciously well, even with the distraction of being fucked by his girlfriend at the same time.  From her aggressive lust, you suspect that Ronda has more lingering traces of her slut rat condition than just her cock.  You decide not to dwell on this, instead wanting to enjoy the rat's big, hard cock inside you.  Seconds after Ronda groans loudly in orgasm, blasting her hot seed into her bodyfriend's belly, Rod cums as well, sending his hot seed flowing up into your womb.  Your own orgasm soon follows, cumming loudly as you feel the rat's nuts being drained into you even as his own tummy plumps a little from all the cum his girlfriend's pumping into him.[impregchance]";
				say "     After withdrawing and Rod and Ronda change positions, Ronda sends you on your way, saying she wants more private time with him.  'We have so much to catch up on,' she says with a grin, stroking her cock as it gets hard again.";
				if libido of player > 50, now libido of player is 50;
			otherwise:
				say "     You consider joining in on the action, but remember that you're ill-equipped for such fun and will have to simply watch instead.";
				now calcnumber is 2;
		if calcnumber is 2:
			say "     Deciding to watch rather than join in, you move to a better vantage point to watch the action.  Rod starts to protest, but Ronda just gives him another hard thrust.  'Oh sweetie.  You know I love you very much, but our hero here deserves to see what a lovely couple we make.  If you put on a good show, you'll get your turn later.  How does that sound?' she adds, reaching around to stroke his throbbing cock while pushing deep into him again.  He moans and nods eagerly.  'Mmm... that's why I love my big, hard Rod,' she rumbles.  'He knows his girl's in charge.'";
			say "     That resolved, you settle in to watch as Ronda's large cock thrusts into Rod repeatedly.  She strokes his erection and rubs his balls, making his shaft flow with precum.  Rod's quite well hung but, while you can't be certain, it seems that Ronda's lingering slut rat cock is still larger than his.  As her nimble fingers play over the leaking shaft, she takes her time, clearly drawing out the show for you[if cocks of player > 0].  You start stroking yourself as you watch, eliciting a grin from her[otherwise if cunts of player > 0].  You start fingering yourself as you watch, eliciting a grin from her[end if].  Eventually, the herm rat pushes deep into her boyfriend's backside, blasting her hot seed into him and Rod cums a few seconds later, spraying his semen across the steel fridge door as his tummy's plumps up a little from all the cum his girlfriend's pumping into him[if cocks of player > 0 or cunts of player > 0].  You groan in orgasm as well, having thoroughly enjoyed the show[end if].";
			say "     After withdrawing and Rod and Ronda change positions, Ronda sends you on your way, saying she wants more private time with him.  'We have so much to catch up on,' she says with a grin, stroking her cock as it gets hard again.";
		if calcnumber is 3:
			say "     You shake your head and tell them that you'd not want to get in the way of their loving reunion and head out, hearing Rod start moaning again as Ronda turns her full attention back on buggering her boyfriend.";
		say "     On the way out, you do snag some supplies from the counter, the two rats too occupied to notice you helping yourself to  them.  Not that you think they'd object, but they're a bit too distracted to see that you're properly rewarded for your efforts.  (Food, chips and a can of soda obtained.)[line break]";
		increase carried of food by 1;
		increase carried of chips by 1;
		increase carried of soda by 1;
		increase score by 100;


RodAndRonda ends here.