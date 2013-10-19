Version 1 of Meredith by Stripes begins here.
[Version 1 - Rescue & Human]

"Adds another member of the paratrooper squad triggered by Vanessa to Flexible Survival."

Section 0 - Rescue Attempt

to say Meredith_rescue:
	say "     As you chat with Vanessa, she gets quite serious and motions for you to come a little closer.  She slips an electronic device from her pack.  'We had a researcher with our group we were supposed to escort during our scouting mission.  She's got a tracer on her, which I've got the locator for.  For security, the rest of the team didn't know about the tracer, but the brass figured someone on the team needed to be able to track her down if we got separated.'  She keeps her voice low as she explains all this to you.";
	say "     'Now, I shouldn't be telling you all this, let alone letting you see the tracker, but the situation's changed.  When my squad was blown off course and separated, I'd lost track of her signal.  I figured she'd gotten infected, with her clothes and the transmitter getting destroyed.  But as you can see,' she says, showing you the screen and the blip on it, 'she's reappeared and has been on the move ever since.  I have to guess wherever she was hiding was shielding the signal until she resurfaced.  Her path is very erratic, so I think she's trying to get away from something.  Since I'm down my squad and you're familiar with the city, can I get you to help me rescue her?  It would really mean a lot to me,' she says, reaching for her pack.  Shall you accompany her on the rescue attempt?";
	if the player consents:
		say "     Since she's clearly going to go out there regardless if you're coming or not, you nod in agreement and prepare to venture forth[if Coleen is bunkered].  She calls Coleen over as well to join your impromptu rescue team[end if].";
		say "     You[if coleen is bunkered] and Coleen[end if] follow the tracker to the city's seedier red light district.  While the [if coleen is bunkered]two soldiers don't say anything, they're clearly nervous about entering such a sexualized area[otherwise]soldier doesn't say anything, she's clearly nervous about entering such a sexualized area[end if], even with you escorting them[if Entrance to the Red Light District is known].  Having been there before, you try to seem confident for them[otherwise].  Having not ventured into the area before, you try your best to hide your own uncertainty[end if].  You move steadily towards the blip on the monitor, sometimes having to adjust your path because of its movements or to avoid some of the residents of the area.";
		attempttowait;
		if Coleen is bunkered:
			say "     As you're getting close, you spot a half-dozen kangaroo women ahead of you.  They seem quite excited and are clearly tracking the same target as you.  These must be the researcher's pursuers.  Before you can close the distance, they break off into three teams of two, in an attempt to surround their quarry.  It looks like there's no time to avoid them and you'll need to confront the marsupial females if you're to rescue the woman.  You all split up, breaking off to each deal with one of the groups  before they can reach her.  Suddenly on your own, you rush forward, trying to take down the two you've got to deal with.";
			say "     Getting closer, you can hear them saying something about 'grabbing her for tonight's entertainment' before they notice you.  One hesitates briefly, torn between pursuing their prey and facing you, but the other charges at you in quick bounds.";
			challenge "red kangaroo";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having beaten and dealt with the first of them, you turn your attention to the other one.  You hope for a moment she might break and run for it, but instead her eagerness for sex drives her to come after you as well.";
				challenge "red kangaroo";
				if fightoutcome >= 10 and fightoutcome <= 19:
					say "     With the second of them down, you press forward in the direction they were headed.  Lacking the tracking unit, you can only head in the direction of the reseacher's last known position.  Fortunately, you're able to catch the sounds of a struggle and turn towards it.  There you find Vanessa and Coleen making their stand together to protect her squadmate.  Thankfully, the woman seems uninfected for the moment.  Her two protectors are worn, but so are the encroaching kangaroos.  When you come in at them from behind, one of them breaks off and makes a run for it, leaving her companions to yell indignities at her.  The soldiers use this opportunity to counterattack, and you wade into the fray moments later.  Soon enough, the other roos are forced to retreat.";
					say "[meredithrescue_succeed]";
				otherwise if fightoutcome >= 20 and fightoutcome <= 29:
					say "[meredithrescue_fail]";
				otherwise:
					say "[meredithrescue_flee]";
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:
				say "[meredithrescue_fail]";
			otherwise:
				say "[meredithrescue_flee]";
		otherwise:
			say "     As you're getting close, you spot a half-dozen kangaroo women ahead of you.  They seem quite excited and are clearly tracking the same target as you.  These must be the researcher's pursuers.  Before you can close the distance, they break off into two teams of three, in an attempt to surround their quarry.  It looks like there's no time to avoid them and you'll need to confront the marsupial females if you're to rescue the woman.  You both split up, breaking off to both deal with one of the groups before they can reach her.  Suddenly on your own, you rush forward, trying to take down the three you've got to deal with.";
			say "     Getting closer, you can hear them saying something about 'grabbing her for tonight's entertainment' before they notice you.  While the first of them charges in at you in quick bounds, the other two hesitate, torn between torn between pursuing their prey and facing you.";
			challenge "red kangaroo";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     With the first of them dispatched, you are about to continue on when the second of them comes rushing forward.";
				challenge "red kangaroo";
				if fightoutcome >= 10 and fightoutcome <= 19:
					say "     Having beaten and dealt with the other two, you turn your attention to the last of them.  You hope for a moment she might break and run for it, but instead her eagerness for sex drives her to come after you as well.";
					challenge "red kangaroo";
					if fightoutcome >= 10 and fightoutcome <= 19:
						say "     With the trio down, you press forward in the direction they were headed.  Lacking the tracking unit, you can only head in the direction of the reseacher's last known position.  Fortunately, you're able to catch the sounds of a struggle and turn towards it.  There you find Vanessa making her stand to protect her squadmate.  Thankfully, the woman seems uninfected for the moment.  Her protector is worn, but so are the encroaching kangaroos.  When you come in at them from behind, one of them breaks off and makes a run for it, leaving her companions to yell indignities at her.  The centaur uses this opportunity to counterattack, and you wade into the fray moments later.  Soon enough, the other roos are forced to retreat.";
						say "[meredithrescue_succeed]";
					otherwise if fightoutcome >= 20 and fightoutcome <= 29:
						say "[meredithrescue_fail]";
					otherwise:
						say "[meredithrescue_flee]";
				otherwise if fightoutcome >= 20 and fightoutcome <= 29:
					say "[meredithrescue_fail]";
				otherwise:
					say "[meredithrescue_flee]";
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:
				say "[meredithrescue_fail]";
			otherwise:
				say "[meredithrescue_flee]";
		follow the turnpass rule;
		now Entrance to the Red Light District is known;
	otherwise:
		say "     Deciding you don't want to get involved in what seems to you like a wild goose chase, you tell her you've got other matters to deal with.  She seems rather disappointed that you won't be coming along, but nods and quickly finishes getting ready.  She hugs her [if xp of Vanessa is 2]child[otherwise]children[end if] and heads on her way";
		if coleen is bunkered:
			say " with Coleen at her side.  You go about your own business, though you do notice as time wears on that they've not returned.  Past the point of expecting to never see them again, the bunker door is opened and Coleen, looking quite battleworn and exhausted, stumbles inside[if sarah is bunkered].  She pushes past you with an angry grunt and staggers over to Sarah to be comforted[otherwise].  She pushes past you with an angry grunt and staggers over to her bunk to pass out[end if].  It's very clear the rescue failed and that Vanessa will not be returning at all.";
			now lastColeenfucked is turns - 8;
		otherwise:
			say ".  You go about your own business, though you do notice as time wears on that she's not returned.  Eventually you have to presume she simply won't be coming back at all.";
		now hp of meredith is 100;
		now hp of Vanessa is 51;
		remove Vanessa from play;


to say meredithrescue_succeed:
	say "     While Vanessa trots after the fleeing mob of kangaroos, you're free to check of Vanessa's squadmate.  This woman, the researcher they were to escort around while scouting, is clearly not a soldier[if coleen is bunkered] like the others[end if].  While not out of shape, she's not got the same physical strength one would expect from someone in the military.  Instead she seems rather bookish with her nerdy glasses and the plain haircut her ginger hair's been given.  While no model, she's fairly pretty in a geeky sort of way.";
	say "     Still catching her breath after the extended chase and last-minute rescue, it takes her a moment to overcome her shock enough to stagger to her feet and start inching slowly along the wall she's backed up against.  'Umm... thanks for... dealing with those... ah... girls.  I'll just be going now.  If you don't mind, that is,' she says nervously, inching closer to the edge of the building.";
	say "     'And after all the trouble we went through to find you, that's the thanks we get,' Vanessa teases as she canters back over to the woman.";
	say "     'No, that's okay.  I'll jus... Vanes... whaaaa!  Oh no!  My notes!' she exclaims first in surprise and then in panic as she spills her papers and they start to blow away.  She scrambles to grab them while babbling her thanks for the rescue, surprise at Vanessa[if Coleen is bunkered and Sarah is bunkered] and Coleen's transformations[otherwise]'s transformation[end if] elation at having found some friendly faces.  As she starts straightening up one handful, another bunch slip free from under her arm, spilling onto the ground.  While you should probably be helping her, you can't help but watch and sneak peeks at her ass or bosom when she bends over to pick up papers[if coleen is bunkered].  From the way Vanessa and Coleen just roll their eyes and smile, such clumsiness is probably typical of her.  Eventually you all do go over and help her deal with them so you can make your way back to the safety of the bunker[otherwise].  From the way Vanessa just rolls her eyes and smiles, such clumsiness is probably typical of her.  Eventually you both do go over and help her deal with them so you can make your way back to the safety of the bunker[end if].";
	attempttowait;
	if coleen is bunkered:
		say "     While on the way back to the library, she's introduced to you as Meredith, which they shorten to Mere at times.  She's given a quick explanation of the situation at the hidden bunker and what little is known about the rest of the team.  Vanessa and Coleen also give quick summaries of their misadventures before asking what happened with her.";
	otherwise:
		say "     While on the way back to the library, she's introduced to you as Meredith, which the centaur shortens to Mere at times.  She's given a quick explanation of the situation at the hidden bunker and what little is known about the rest of the team.  Vanessa also gives a quick summary of her misadventure before asking what happened with her.";
	say "     'Well, I was busy taking photos while parachuting down, so I didn't notice we'd gotten blown apart until we'd gotten separated.  My landing was a little rough, but I'd thankfully ended up on top of a parking garage instead of out in the open with creatures.  I headed down in the underground sections and found a service room a few floors down.  The creatures went there infrequently and usually only in couples, so it was pretty easy to stay hidden.  When they did come by, usually to make out in one of the cars, I hid and took notes on their behaviour,' she says, leafing through her papers.  'The El Camino was particularly popular for some reason,' she giggles, blushing a bit.";
	say "     'I'd probably have waited this out down there as long as I could.  It was a fascinating place to observe the... ummm... activities of the various infection subspecies in the area.  But then those kangaroo girls came by.  From what I overheard, one of them had spotted me while she and a male were down there and came back with her friends to catch me.  They've been trying to get me for quite some time, even searching for me whenever I'd found a new hiding spot.  I have to surmise they wanted me for more than the usual quick romp.  According to my figures, without some further impetus, there's a 45% chance they'd have broken out into a spontaneous makeout session within the first hour and the probability rises to-wahhh!  Ooof!' she moans, having turned to walk backwards while showing you a graph she'd drawn, resulting in her falling on her ass as she stumbles onto the library steps.  Vanessa kindly helps her up, though you do catch the centaur's hand running across the girl's rear while she does.  You all head inside and Meredith flops herself out on one of the cots, clearly pleased to have a chance to rest on something even remotely resembling a bed.";
	now hp of meredith is 1;
	move meredith to bunker;
	now lastfuck of meredith is turns;

to say meredithrescue_fail:
	say "     Beaten by the kangaroos, you are distracted with sex for quite some time.  By the time you recover your senses and go looking for the others, all you find are some torn scraps of cloth and the signs of a struggle.  You make your way back to the bunker to recover";
	if coleen is bunkered:
		say ".  About a half-hour later, Coleen manages to make it back to the bunker, looking quite battleworn and exhausted as she stumbles inside[if sarah is bunkered].  She gives you a brief hug before staggering over to Sarah to be comforted[otherwise].  She gives you a brief hug before staggering over to her bunk to pass out[end if]";
	otherwise:
		say ".  You wait for quite some time for any sign of either the centaur woman or her teammate, but neither show";
	say ".  It's painfully clear to you that Vanessa will not be returning at all.";
	now hp of meredith is 100;
	now hp of vanessa is 51;
	remove vanessa from play;

to say meredithrescue_flee:
	say "     Making your escape from the kangaroos, you have to withdraw and hope the others will be alright.  You make your way back to the bunker to wait and recover
Beaten by the kangaroos, you are distracted with sex for quite some time.  By the time you recover your senses and go looking for the others, all you find are some torn scraps of cloth and the signs of a struggle.  You make your way back to the bunker to recover";
	if coleen is bunkered:
		say ".  About a half-hour later, Coleen manages to make it back to the bunker, looking quite battleworn and exhausted as she stumbles inside[if sarah is bunkered].  She gives you a brief hug before staggering over to Sarah to be comforted[otherwise].  She gives you a brief hug before staggering over to her bunk to pass out[end if]";
	otherwise:
		say ".  You wait for quite some time for any sign of either the centaur woman or her teammate, but neither show";
	say ".  It's painfully clear to you that Vanessa will not be returning at all.";
	now hp of meredith is 100;
	now hp of vanessa is 51;
	remove vanessa from play;


Section 1 - Meredith the Mare

Meredith is a woman.
The description of Meredith is "[meredithdesc]";
The conversation of Meredith is { "Oops!" }.

the scent of the Meredith is "[if hp of Meredith is 1]Meredith still has the stale and fading scent of a parking garage clinging to her[otherwise]Meredith smells of horses and female arousal[end if].";

to say meredithdesc:
	if hp of meredith is 0 or hp of Meredith is 100:
		say "ERROR-Meredith-[hp of Meredith]L: You should not be able to find me!";
		remove Meredith from play;
	if hp of meredith is 1 or hp of meredith is 2 or hp of meredith is 3:
		say "     Meredith is a researcher that Vanessa's scouting team was to escort during their failed mission.  Having been found and rescued, she's been brought back here to await recovery by the military.  She's a rather plain young woman with an average build, though the occasion peek you've snuck show her to have some nice tits and a cute ass.  She's fairly pretty in a geeky sort of way once you look past her nerdy glasses and the plain haircut her ginger hair's been given.  She's wearing a grey shirt and khaki cargo pants.  Her many pockets hold a collection of technical and scientific instruments, which she fiddles with frequently.  Having found an old binder in the library, she's stuffed her crumpled notes into it and can often be found adding to them.";
	otherwise if hp of meredith is 4:
		say "***tf 1";
	otherwise if hp of meredith is 5:
		say "***tf 2";
	otherwise if hp of meredith is 6:
		say "***tf 3 - complete?";


Section 2 - Conversation

instead of conversing the Meredith:
	if hp of meredith is 0 or hp of Meredith is 100:
		say "ERROR-Meredith-[hp of Meredith]T: You should not be able to talk to me!";
		remove Meredith from play;
	if hp of meredith is 1:
		say "     'I want to thank you for helping Vanessa find me.  I was really afraid those kangaroos would get me in the end.  Aside from something about a pub, I didn't really catch what they were talking about when they came after me.  I was too focused on avoiding spending the rest of my days as a horny marsupial.'  Meredith adjusts her glasses, using the motion to try and obscure her blushing.";
		say "     'But I should be pretty safe here,' she says, looking around the bunker.  'Secluded, fortified and built to house lots of survivors over the long term - this should be a secure place to await rescue.  Staying here will limit my research... unless you can keep finding more survivors got me to examine and observe.'";
	otherwise if hp of meredith is 2 and lastfuck of meredith - turns >= 8:
		say "     Going over to speak with Meredith, you see that she's busily smoothing out her notes and re-sorting them into piles.  Seeing you there, she smiles and motions for you to take a seat.  'I've been able to do some analysis and I have some findings to go over with you.  Like I said, I was able to observe numerous creatures in and around the parking garage,' she says, holding up a hand-drawn map of the layout of the cars.  It includes a tally of the number of times it was [']visited['] as well as page references to each individual visit.";
		say "     'There's some definite behaviour patterns that begin to emerge as you start to compare between several individuals of a given strain.  There's definite trends and interests systemic to particular groups, as you've probably noticed already.  Common mannerisms and attitudes, similar pick-up lines, predelictions for certain forms of intercourse... clearly this behaviour has to be carried over and induced in the victims by the nanites,' she says as she shows you several charts and graphs which you can't make heads or tails of, but nod regardless.  'In many ways, those infected overcome by the infection are slaves to the narrow set of instincts particular to their strain, locked into a narrow set of behaviour patterns because of the overwhelming stimuli.  Clearly, there are individual exception to these, but most who become infected or new offspring of a strain are primarily influenced by the mental changes enforced by the nanites.'";
		say "     As she continues on, she starts going into numbers and percentages as more charts are pulled out.  You start to glaze over as the technical jargon becomes thicker.  It's only when she accidentally knocks a brown envelope off the cot and numerous photographs of creatures caught mid-coitus spill out that she stops.  'Eeep!  My... umm... reference images.'  Blushing brightly, she quickly stuffs the photos, most of sex happening in or on a car, back into the envelope.  'So... ahh... yes, there's a lot to be learned by observing the infected and understanding their behaviour patterns.'  And with that, she quickly stores away her notes and heads out into the library, still bright red in the cheeks.  Your head is still quite confused by all the numbers and charts, but you were able to glean some useful information from among the barrage of scientific jargon (gaining [level of player + intelligence of player] xp).";
		increase xp of player by level of player + intelligence of player;
		now lastfuck of meredith is turns;
		increase hp of meredith by 1;
	otherwise if hp of meredith is 2:
		say "     [one of]'Please keep an eye out for more survivors.  Aside from helping with my research, this place is probably much safer for them to await rescue.'[or]'It's good to see Vanessa again, even if she's changed quite a bit.  She certainly seems happy with it though.'[or]'I got to observe several very bizarre infections while out in the Red Light District.  I'm glad [if coleen is bunkered]Vanessa and Coleen weren't[otherwise]Vanessa wasn't[end if] infected by any of the more extreme strains out in the city.  While becoming a taur is a significant physiological alteration, there are much worse out there.'[or]'As exciting - ah... scientifically speaking, I mean - this all has been, I'm glad my first practical experience didn't end up being with some infected creature I don't even know.'[or]'I've taken a few samples from Vanessa[if the number of bunkered people + the number of booked people > 3] and the others[end if] to perform some tests.'[or]'I was able to make quite a few observations on the creatures during my time monitoring their - ahem - activities in the parking garage.  Once I get my papers sorted and have a chance to look over, I should be able to share some of my results with you.  Just the basic stuff though - military contract and all that.  I'm sure you understand.'[or]'I'd seen quite a few creatures from my vantage point, including a few not normally native to the area.  Those were usually accompanied by one of those tigress hookers.  Oh man, could they yowl when... ahem... nevermind,' she says, blushing and turning away.[or]'During my observations, I'd not seen any creatures that really interested me.  Well, many of them were quite exciting or interesting, but none that I'd particularly want to end up being.  Vanessa's quite lucky to have been turned into such a pretty centaur.'[or]You go over to chat with Meredith, but she's gone and dropped something under her cot.  You instead end up watching her cute little ass wiggle around as she squirms to reach it.  By the time she's emerged, you've completely lost your train of thought and will have to come back later once you remember what you wanted to talk about.[or][if coleen is bunkered][meredith_coleen_msg][otherwise]'Please keep an eye out for any others from the squad.  I'm worried about what may have happened to them.'[end if][or]'I've undergone treatment to make me more resistant to the infection, but in can only protect me so much.  A concerted effort by all those marsupial girls would have been too much for it.'[in random order]";
[	otherwise if hp of meredith is 3 and lastfuck of meredith - turns >= 4:
		say "***accident";		]
	otherwise if hp of meredith is 3:
		say "     [one of]'Please keep an eye out for more survivors.  Aside from helping with my research, this place is probably much safer for them to await rescue.'[or]'It's good to see Vanessa again, even if she's changed quite a bit.  She certainly seems happy with it though.'[or]'I got to observe several very bizarre infections while out in the Red Light District.  I'm glad [if coleen is bunkered]Vanessa and Coleen weren't[otherwise]Vanessa wasn't[end if] infected by any of the more extreme strains out in the city.  While becoming a taur is a significant physiological alteration, there are much worse out there.'[or]'As exciting - ah... scientifically speaking, I mean - this all has been, I'm glad my first practical experience didn't end up being with some infected creature I don't even know.'[or]'I've taken a few samples from Vanessa[if the number of bunkered people + the number of booked people > 3] and the others[end if] to perform some tests.'[or]'I hope my research is able to help you better understand the creatures out there.  I'm going to continue my research as best I can from in here.  As it is, I've gathered a lot of data and can use the quieter time in here to analyze it.'[or]'I'd seen quite a few creatures from my vantage point, including a few not normally native to the area.  Those were usually accompanied by one of those tigress hookers.  Oh man, could they yowl when... ahem... nevermind,' she says, blushing and turning away.[or]'During my observations, I'd not seen any creatures that really interested me.  Well, many of them were quite exciting or interesting, but none that I'd particularly want to end up being.  Vanessa's quite lucky to have been turned into such a pretty centaur.'[or]You go over to chat with Meredith, but she's gone and dropped something under her cot.  You instead end up watching her cute little ass wiggle around as she squirms to reach it.  By the time she's emerged, you've completely lost your train of thought and will have to come back later once you remember what you wanted to talk about.[or][if coleen is bunkered][meredith_coleen_msg][otherwise]'Please keep an eye out for any others from the squad.  I'm worried about what may have happened to them.'[end if][or]'I've undergone treatment to make me more resistant to the infection, but in can only protect me so much.  A concerted effort by all those marsupial girls would have been too much for it.'[in random order]";
	otherwise if hp of meredith is 4:
		say "***tf 1";
	otherwise if hp of meredith is 5:
		say "***tf 2";
	otherwise if hp of meredith is 6:
		say "***tf 3 - complete?";


to say meredith_coleen_msg:
	if hp of meredith < 4:
		say "     [one of]'Vanessa and Coleen and all the rest of the squad were very nice to me even though I'm not a soldier.  They got stuck with orders to escort me into and around the city.  They were really patient with my clumsiness during our practice drops.  I hope the rest of them are at least happy in their new lives.'[or][if coleenslut > 0 or coleenalpha > 0 or coleencollared > 0]'Coleen's been changed considerably by the infection, but part of her original self is still there.  She's just gained some... added urges... that modify her overall behaviour.  But she's a cute and happy husky, which is much better than many of the creatures I've seen out there.'[otherwise if sarahslut > 0]'Coleen's showing some husky traits due to her contact with that other female victim.  Scientifically speaking, it is interesting to watch the progression of her transformation.  I can't help but be curious to see it through to completion,' she says, blushing a little.[otherwise]'Coleen's been very fortunate to have avoided infection up to now.  Unless we're recovered soon, I don't know how much longer she'll be able to stay human, even in here.'[end if][cycling]";
	otherwise if hp of meredith is 4:
		say "***tf 1";
	otherwise if hp of meredith is 5:
		say "***tf 2";
	otherwise if hp of meredith is 6:
		say "***tf 3 - complete?";


Section 3 - Sex with Meredith

the fuckscene of Meredith is "[sexwithMeredith]".

to say sexwithMeredith:
	if hp of meredith is 0 or hp of Meredith is 100:
		say "ERROR-Meredith-[hp of Meredith]F: You should not be able to fuck me!";
		remove Meredith from play;
	otherwise if hp of Meredith is 1 or hp of Meredith is 2 or hp of Meredith is 3:
		say "     Meredith blushes at your offer, but turns away.  'I'm sorry, but that's the infection talking.  I mean, I'm grateful for your help and all, but I should focus on my research.'";
	otherwise if lastfuck of Meredith - turns < 6:
		say "     'Mmm... as informative as it has been, I could use a bit of a break.  Besides, I need to write down my observations on how I've responded to our last session,' she says with a smile, casually groping herself with one hand as she scribbles down some notes.";
	otherwise if hp of meredith is 4:
		say "***tf 1";
	otherwise if hp of meredith is 5:
		say "***tf 2";
	otherwise if hp of meredith is 6:
		say "***tf 3 - complete?";



Meredith ends here.