Version 2 of Alex by Nuku Valente begins here.
[Alex v2.0 by Stripes]

Section 1 - Alex & Alex's Condo

Alex is a person. Alex is in Alex's Condo.
The conversation of alex is { "Poing!" }.
lastAlexfucked is a number that varies.  lastAlexfucked is usually 500.
alexbrunch is a number that varies.
alexdiego is a number that varies.
alexleeinfo is a number that varies.
gettinglee is a number that varies.

the scent of Alex is "[alexscent]".

to say alexscent:
	if alexbrunch < 4:
		say "Alex smells like a mix of human and ferret.";
	otherwise:
		say "Alex smells of male ferret and brunchtime fun.";

The description of Alex is "A[if alexbrunch < 4] mostly humanoid male with ferret-like ears and a long, sinuous tail.  He has a twitchy animal nose with whiskers around it.  He has a slightly rumpled suit on, still looking good despite his changes.  He is a pleasant enough looking person who looks even better in those moments when he's not stressed or worried by his clients[otherwise]lex is a sexy ferret male, with a cute mustelid head.  His twitchy animal nose has an array of whiskers around it.  He has a slightly rumpled suit on, still looking good despite his changes.  You find his new look quite pleasing to the eyes and he certainly seems much happier and friendlier of late.  It seems the changes he's undergone are for the better[end if].";

Alex's Condo is a room. It is fasttravel. It is private.
The description of Alex's Condo is "     Near the top of the high rise condo building, Alex's home has an good view of the area, if partially blocked by several of the other surrounding high rises.  His place is fairly well-maintained, the mustelid tidying up occasionally.  It does have the faint, tangy smell of mustelid musk, but it's not too strong.  It is well-furnished, with expensive, trendy-looking furniture and decor.  The big screen television and large stereo are silent, but fill a sizable portion of one wall.  Several pieces of classy art adorn the others, all matching nicely with each other and the room decor as a whole.  There are several legal briefs and law books open on the coffee table in the living room.  Scattered around the floor are several colourful rubber objects, clearly outlets for any ferrety urges[if alexbrunch > 3].  There has been an increase in the number of rubber toys and shiny things scattered around the condo as the lawyer's gotten more ferrety[end if].  A glance in the kitchen shows that it's not as tidy, and is equally ultra-modern, if now useless.  He's set up a small camper stove on his stove top and is using that for cooking.  Between bouts of manic ferretness, the mustelid lawyer is sitting on his couch, focusing on his papers.";

the scent of Alex's Condo is "[alexcondoscent]".

to say alexcondoscent:
	say "The condo smells pretty clean.  Male mustelid[if alexbrunch > 0], brunch[end if], potpourri and candles are the predominant scents.";

Section 2 - Conversing with Alex

Instead of conversing the Alex:
	if progress of alex is 0:
		say "     'Have you come back to reconsider my offer?  I could certainly use your help on this.  And remember, I'm willing to get you supplies for your assistance,' the mustelid lawyer says with a smile.  Do you agree to help him? (Y/N)";
		if the player consents:
			say "     'Oh, fantastic!  Trust me on this, I'm definitely going to make it worth your while.  My first client is named Lorenda.  She lives in the Red Light District.'  You are about to ask why she lives there, when he can see the question in your eyes before you even ask it, and sighs.  'Lorenda is a landlady there, who owns the buildings where many of the shops are set up.  She prefers to live there so she can keep a close eye on her tenants.  Now, would you go get her?'  He seems impatient.  Of course, being a high-level lawyer brings a sizable ego.";
			now progress of alex is 1;
			now find lorenda is unresolved;
		otherwise:
			say "     His smile falters a little, but he tries to remain positive.  'Please continue to consider my proposal.  I think we'll both benefit from it.'";
	otherwise if progress of alex is 3:
		say "     Alex, just coming off a bout of ferretness, puts down the chew toy and looks up at you as you try to tell him you found Darrell.  He looks side to side for the missing sports star, then at you in with a mix of confusion and anger on his face.  'Where's Darrell?  I thought you were saying that you'd found him.'  This is where you have to explain to Alex that Darrell survived the incident, but not in the same way he started it.  Upon hearing that Darrell was still sane and relatively secure mentally, Alex is pleased enough, anyway.  'He can still pay me,' says Alex, 'and that's good enough.  Here's your next installment.'  He hands you another bit of food and water as payment.";
		increase carried of food by 1;
		increase carried of water bottle by 1;
		increase score by 20;
		extend game by 2;
		say "[line break]     'Alright, there's only one client left, and this one's gonna be a doozy, I'll wager.  This last client of mine is an aide to a City Council Member - well, possibly ex-city council at this point.  He doesn't have a whole lot of money, but his case'll be pretty big news if I can get a court to listen to him.  So as far as publicity, this is a huge case for me.  I need you to find him and bring him here.'  He sighs a bit, and his nose wiggles, almost cutely, you think to yourself.  'I'm not sure where he is, honestly.  He was a bit of an outdoorsman, so you might be able to find him at the park or the beach.  Other than that, I can't offer you anything else, besides his name, which is Lee.'";
		now progress of alex is 4;
	otherwise if alextalk is 0 and progress of alex is less than 5:
		say "     Alex's whiskers twitch as he looks at you sternly.  'I need you back out there,' he grumbles before relaxing.  'Sorry, I'm just on edge lately.  My clients may need your help out there, too.  I'm worried about them.'[line break]     He points to his body.  'Besides, look at me.  Once we get out of this mess, out there in the real world, I'll be a joke if I don't have some big clients to get me started again.  I know there'll be a lot of legal ramifications from all this and I want to be poised to represent those who want a normal life despite their changes.  And [if humanity of player is less than 100]from the looks of you[otherwise]if something goes wrong out there before you're rescued[end if], you may even end up wanting my services.  If you can come through, I'll even give you a big discount.";
		now alextalk is 1;
	otherwise if progress of alex is 1 and a random chance of 3 in 5 succeeds:
		say "     'Please continue looking for Lorenda.  She's in the red light district.  Given what's happening in the city, I think she needs your help first' he says meaningfully.  You nod in understanding, as that part of town would be particularly vulnerable to this outbreak.";
	otherwise if progress of alex is 2 and a random chance of 3 in 5 succeeds:
		say "     'I need you to track down Darrell,' the weaselly lawyer says.  'Being a pro sports star, his case could be worth a lot to me.  He should be at the Smith Haven Mall.'  He points out his window, indicating the large shopping center in the distance and the main route leading to it.";
		Now Smith Haven Mall Lot is known;
	otherwise if progress of alex is 4 and a random chance of 3 in 5 succeeds:
		say "     The mustelid fiddles with a shiny ball as he looks over his papers.  'Have you found Lee? He should be at the park or the beach.'";
	otherwise:
		say "[alexrandomtalk]";

to say alexrandomtalk:
	say "     Alex's whiskers twitch a little as he looks up from his legal briefs to talk with you for a moment.  '[one of]Thanks for agreeing to help me on this.'[or]Yes? Something I can do for you?'[or]The city's become really dangerous lately.'[or]I tried talking to one of those wolverines out there before I met you.  Watch out for them - they've really lost it.'  He rubs his side, which is clearly still sore from the encounter.[or]From my window, I saw a feline cop.  I thought he might be able to help me, but he assaulted one of the weaker mutants and laughed as he fucked her hard.  He was twice my size, so I- I stayed inside until he was gone,' he says softly, ashamed of his weakness.[or]I have to wonder if this is some sick joke,' he says sadly as he points to himself.  'A lawyer made into a weasel.'[or]I spotted a peacock out there with my binoculars.  It seems to entrance its victims somehow before leading them off somewhere.'[or]I was never a very physical guy.  I've gotten through this mess mostly on luck for now, but I'm not strong enough to go out there and explore.  Thankfully, I'm safe enough in here.'[or]The few other tenants I've seen left in here seem benign and leave me alone.  But please don't go snooping around or bothering them.  I don't want to risk upsetting them.'[or]I've got to keep focused on my work.  It helps keep these strange instincts at bay.'[or]There's a beautiful butterfly creature fluttering around out there at times.  It's very pretty, in an odd sort of way.'[or]One of my neighbours had a pet ferret.  I wonder if I caught this because of it.'[or]I'd really like a moment to relax and unwind, if you know what I mean.'[or]I've always been a sensitive guy, I think.  All this fighting, insanity and death is really upsetting.'[or]Ahhh!  All this waiting is so frustrating,' he growls before getting up and running around and over his couch like a manic ferret for a bit.  Eventually, he settles down and collapses on the couch, panting and feeling much better after releasing all that pent up energy.[or]Do you like my place?  I decorated it myself.  I'll miss it when we go,' he sighs softly.[or]I've kept an eye out from my window using these,' he says, holding up a pair of binoculars.[or]I don't like leaving here too often, as there are so many stairs to climb whenever I get back.'[or]Being pent up in here makes the ferret in me go stir crazy at times.'  He grabs a nearby rubber ball and chews at it for a few times, chirring softly as he does.  'If I don't give it some release, things can get... messy.'[in random order]";


Section 3 - The Search (Quests)

Meet Alex is an situation.
The sarea of meet alex is "High";
Alex has a number called progress.
Alex has a number called alextalk.

Instead of resolving Meet Alex:
	say "((Quest arc written by Khabi - update & post-quest by Stripes))[line break]";
	say "     As you explore the High Rise district, you hear a voice calling out to you. Spinning quickly, you see a man walking toward you, who is holding his hands up - he is wearing a business suit, and he is unarmed. Once you lower your hackles from being so surprised - this city has taught you to stay on your toes - he approaches you.";
	say "     'Good [short time of day], [if breast size of player is greater than 0]Ma'am[otherwise]Sir[end if]. My name is Alex... well, I don't suppose last names are important anymore, are they?'";
	say "     Now that you get a better look at him, even though he initially appeared unchanged, it's become quite clear upon closer inspection that he too has a few changes. His ears have mutated to become somewhat pointed, and now rest near the top of his head. He has a small button nose, with prodigious whiskers on either side, and a furry tail swivels from behind him. You think it looks somewhat... mustelid, perhaps a ferret or weasel of some sort. You are about to ask him about it when he continues.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     'Look, it's hard to find friends in this city after the incident. And so since you seem to be somewhat sane still... [if player is not purehuman]despite your changes... [end if]I figure you might be able to help me. If you're out exploring the city, it means you can handle the monsters out there.' His nose twitches, as do his whiskers, as he seems to be pondering something. 'Before the incident, I was a high-priced lawyer, and once rescue comes, I plan on returning to that job. But I have three wealthy clients that won't be able to pay me if they get turned into creatures without a thought in their heads but sex.'";
	say "     You feel like you're starting to get the gist of what the shorter man is leading up to. He speaks very quickly, probably having something to do with his profession.  'Here's my proposition,' he says. 'I have access to a pretty solid stockpile of food and water. For each of my clients you manage to bring back to me, to my condo in the high-rise over there,' he points, 'I'll give you one of each. How's that sound?'";
	now Alex's Condo is known;
	if the player consents:
		say "     'Oh, fantastic! Trust me on this, I'm definitely going to make it worth your while. My first client is named Lorenda. She lives in the Red Light District.' You are about to ask why she lives there, when he can see the question in your eyes before you even ask it, and sighs. 'Lorenda is a landlady there, who owns the buildings where many of the shops are set up. She prefers to live there so she can keep a close eye on her tenants. Now, would you go get her?' He seems impatient. Of course, being a high-level lawyer brings a sizable ego.";
		now progress of alex is 1;
		now find lorenda is unresolved;
	otherwise:
		say "     'Ah. Well then, if you change your mind, here's my address.' You now have access to Alex's Condo!";
	now Meet Alex is resolved;


Find Lorenda is a situation.
The sarea of Find Lorenda is "Red".
Find Lorenda is resolved.
Lisacheat is a number that varies.

Instead of conversing the Lisa while progress of alex is 1 and lisacheat is 0:
	say "     You decide to talk to Lisa about your search for Lorenda.  She nods and tells you that she may have seen her recently.  'I can't be certain, hon.  I used to just work here, so I've only seen her once or twice.  But I think it was her that I spotted go by outside.  She seemed a little frantic, and ran around a corner before I could call out to her.'  She points you in the direction she was heading.  That should help narrow down your search.";
	now lisacheat is 1;


Instead of resolving Find Lorenda:
	let found be 0;
	if lisacheat is 1:
		let bonus be (( perception of player minus 10 ) divided by 2 ) + 5;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		if bonus + dice is greater than 16:
			say "With the help of Lisa's information, you manage to find her trail!";
			now found is 1;
		otherwise:
			say "Despite your search and Lisa's information, you fail to find her.  She has to be around here somewhere.";
	if lisacheat is 0:
		let bonus be ( perception of player minus 10 ) divided by 2;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
		if bonus + dice is greater than 16:
			say "You manage to find her trail!";
			now found is 1;
		otherwise:
			say "Despite your search, you fail to find her.  She has to be around here somewhere.";
	if found is 1:
		if humorous is banned or guy is banned:
			say "     You follow a hopeful trail and you suddenly realize there are other tracks following the same trail.  You rush forward and arrive to find a pair of creatures bearing down on a woman screaming frantically down one of the alleyways.  She is pinned to the wall, between the pair of them.  Thinking quickly, you rush to her aid!";
			now battleground is "Outside";
			fight;
			say "     Dealing with one mutant, you turn your attention to the second before it can reach Lorenda.";
			fight;
		otherwise:
			say "     You follow a trail and you suddenly realize that there's a trickle of cum that follows the same trail.  You arrive to find a pair of Cock Cannons aimed gainfully at a woman screaming frantically down one of the alleyways.  She is pinned to the wall, between the pair of them.  Thinking quickly, you rush to her aid!";
			challenge "Cock Cannon";
			say "     Dealing with one mutant, you turn your attention to the second before it can reach Lorenda.";
			challenge "Cock Cannon";
		say "     She whimpers, and you pull her up from her spot on the alley concrete.  'Wh-what were those things[if player is not purehuman]?  What are you[end if]?'  She seems a bit panicked, but has calmed significantly once you dealt with the pair.  She hasn't totally escaped the city's various mutations - her clothes are painfully strained with the size of her inflated breasts and she bears a floofy fox tail likely given to her by one of those latex foxes or another vulpine - but she remains mostly human.  You point out that what they were was patently obvious, which earns you a smirk.  Once you explain that Alex sent you, she nods and gladly follows you back to his condo in the High Rise District.";
		now the player is in Alex's Condo;
		say "     Upon arriving, the door is thrown open by the weaselly lawyer who ushers both of you inside.  He shuts it behind him, letting out a sigh of relief as he leans back against it.  First, he shows her to the living room and sets her down with a cup of coffee, then he returns to you.  'Thanks for bringing her in.  You've done me a major favor, so here you go.'  He gives you some food and water.  He even gives you an extra bottle as a bonus for coming through for him despite the danger.";
		say "     'My next client is an athlete.  He plays for the city's basketball team.  His name's Darrell.  I don't know where he was when the incident happened, but I believe he may have been at the mall.  The team was doing a promotion at the shoe store there some time before the accident.'";
		increase carried of food by 1;
		increase carried of water bottle by 2;
		increase score by 50;
		extend game by 8;
		now progress of alex is 2;
		now battleground is "void";
		now find lorenda is resolved;

[
Instead of conversing the Rod while progress of alex is 2:
	say "     'Darrell?  Yeah, he was here when it all went down.  But... you might be a little surprised.[if hp of ronda is 0]  Go talk to my girl, she knows where he is.'[otherwise]'  He shrugs, and points to the north.  'Go ask the others.  They might know where he is.'  He seems a little bummed.[end if]";
]

instead of going to Mall Atrium while progress of alex is 2:		[now works for getting there either from Nermine's shop or the food court]
	now the player is in Mall Atrium;
	if Ronda is in Mall Atrium:
		say "     You arrive in the atrium of the mall and approach Ronda, Rod's girlfriend.  'Yeah, I know where he is.  Darrell, c'mere!'  Another mall rat approaches, and it shortly becomes clear that the city's star point guard is now a good deal furrier and rattier.  He arrives and asks her 'What's up?'  She explains the situation, and he nods, facing you.  After some brief explanation, the white rat nods.  'You can go tell Alex I appreciate his concern, but I'm pretty good here at this point.'  You try to convince him, but he stands firm on it.  'Nah, I'm good here, man.'  Darrell waves and heads back to talk to some of the other rats, putting his arms around a pair of the girls.  You sigh a bit, and you have some mixed news for Alex the next time you see him.";
	otherwise:
		 say "     You arrive in the atrium of the mall and approach one of the various mall rats there.  After going back and forth between a few of them, eventually you come to Darrell.  It shortly becomes clear that the city's star point guard is now a good deal furrier and rattier.  'What's up?' the white rat asks.  After some brief explanation, he nods.  'You can go tell Alex I appreciate his concern, but I'm pretty good here at this point.'  You try to convince him, but he stands firm on it.  'Nah, I'm good here, man.'  Darrell waves and heads back to talk to some of the other rats, putting his arms around a pair of the girls.  You sigh a bit, and you have some mixed news for Alex the next time you see him.";
	now progress of alex is 3;


instead of entering the Confession Booth while progress of alex is 4:
	say "You ask the priest if she's seen anyone.";
	say "'Oh! Yes, I believe I know something that might help you.  A man has barricaded himself inside one of the storage sheds to the north of the beach.  There's a chance that he may be the one you're looking for.'  You profusely thank the priestess, who waves off the praise.  'Thank the Goddess for your good fortune, not me.  Stay safe and explore a newness of yourself through change, my child.'";


instead of conversing the Diego while progress of alex is 4 and alexdiego is 0 and diegotalk is 1:
	say "You ask Diego if he's happened to have seen anyone hiding out in the park that meets Lee's description.  He shakes his head, saying he's not seen anyone like that, though you can never be certain if they changed too much.";
	now alexdiego is 1;


instead of conversing the Alex while gettinglee > 4 and alexleeinfo is 0:
	say "     Normally, I shouldn't divulge information about a client's case, but this is an emergency and you can be considered part of my staff.'  He slips a paper from one of the case files on his table.  This memo that Lee found discusses under the table deals between members of the governor's staff and the city councillors of several cities in the area.  If that's really Lee in there, mention that I want to talk with him about these names here and he should realize that you could only get that info from me.  If it's not him, it won't mean anything to that person and the information is still safe until brought to court.";
	now alexleeinfo is 5;


Lee's Shed is a room.
West of Dirty Sheds is Lee's Room.

Instead of going west from dirty sheds:
	if progress of alex is 4:
		say "     You come to a shed that has been barricaded shut.  'Stay away!  I don't want any of you freaks coming in here!'  You ask if the person inside is Lee, and you hear what might be a grunt in the affirmative, before he shouts again.  'Who's asking? Who sent you!?'  You tell him that Alex sent you, but it appears that, with all the madness going on, it's something he's reluctant to believe.  He starts mumbling that it's all some kind of setup.  Do you attempt to persuade him to come with you? (Y/N)";
		let success be 0;
		if the player consents:
			let bonus be (( charisma of player minus 10 ) divided by 2) + alexleeinfo;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] vs 20 and score [dice plus bonus]: ";
			if dice + bonus is greater than 19:
				say "[line break]     'Oh... he really did send you, didn't he?'  You hear things being shoved aside, and the door opens a crack, a cat's eye peering out, trying to gauge if the coast is clear.  Seeing that it is, Lee steps out, and he isn't a he anymore.  In fact, he seems to have more in common with the gryphons and hyenas running around the city as far as her new gender at this point.  'C-come on, let's hurry.  I don't want anyone to see me!' she says.  She throws her coat over her head to cover her feline ears, holding it down with paw-like hands.";
				now success is 1;
			otherwise:
				say "[line break]     'Ha! As if I'd believe that!' He starts rambling on about lying monsters in his city, no longer listening to you. You get the feeling you[apostrophe]ll have to try again later to convince him to come out once he[apostrophe]s calmed down.";
		if success is 0:
			say "     Do you attempt to break down the door? (Y/N)";
			if the player consents:
				let bonus be ( Strength of player minus 10 ) divided by 2;
				let dice be a random number from 1 to 20;
				say "You roll 1d20([dice])+[bonus] vs 22 and score [dice plus bonus]: ";
				if dice + bonus is greater than 21:
					 say "[line break]     'Ahhhh!!!'  Upon breaking inside, you see for the first time that 'he' may not have been the correct way to call him.  She has fainted on the floor, and her body is obviously feminine, though bulged in the crotch of her now too-tight pants.  She has cute cat ears and paw-like hands.  You gingerly pick her up, and hurry to the High Rise district, before she wakes up.";
					now success is 1;
				otherwise:
					say "[line break]     You throw your body against the door, but it seems too tough for you.  Maybe you could try again later.";
		follow the turnpass rule;
		if success is 1:
			now progress of alex is 5;
			move the player to Alex's Condo;
			say "     Arriving back at the High Rise district, Alex is bemused to see that this latest client has made a rather serious reassignment in gender, but he is pleased to see that Lee at least seems to have her faculties in order.  'Alright,' he says.  'Here's your reward for the last bit.'  You receive one more food and one more water.";
			increase carried of food by 1;
			increase carried of water bottle by 1;
			increase score by 40;
			extend game by 10;
			say "[line break]     The weaselly lawyer looks you up and down, sizing you up.  'You know... I have a reputation as a hell of a lover,' he says, leering a little bit but remaining professional.  'What I'm saying is,' he chuckles, 'if you come and visit, I'd be willing to show you a good time.'";
			say "     He adjusts his tie.  'That wouldn't be professional to do while Lee and Lorenda still here,' he says.  'Give me about a day to find safe lodging for them in one of the other condos, and then we can see about those options.'";
			now lastAlexfucked is turns;		[creates the 1 day delay before sexy times]
		otherwise:
			increase gettinglee by 1;
			if gettinglee > 5 and alexleeinfo is 0:
				say "     This doesn't seem to be working for you.  Perhaps [bold type]Alex[roman type] has more info to help you convince Lee to trust you.";
	otherwise:
		say "     You take a quick look around, but you don't find anything of interest at the moment.  They are either locked or have already been raided.";


Section 4 - Sexy Times!

Instead of fucking the Alex:
	if progress of Alex < 5:
		say "     The mustelid lawyer rubs his cute, ferrety ears and shakes his head.  'Look!  Right now I think you should focus more on finding my clients than on my changed body's hormone levels.'";
		stop the action;
	if alexbrunch < 4:		[Had 0 to 3 brunches]
		if lastAlexfucked - turns is less than 8:
			say "The ferret-eared lawyer smiles at your advances, but shakes his head.  'I'm sorry, hon.  I want to make our time together as enjoyable as possible, so a little time to recover from all this excitement and deal with other matters would be best.  I do have to rest and prepare these cases.  As soon as the military gets us out, I need to move on them since they've already been delayed by the outbreak.'";
			stop the action;
		otherwise:
			now lastAlexfucked is turns;
			say "[alexsexytimes1]";
	otherwise:				[4+ brunches]
		if lastAlexfucked - turns is less than 4:
			say "The ferrety lawyer smiles at your advances, but shakes his head.  'I'm sorry, my dear.  I want to make our time together as enjoyable as possible, so a little time to recharge would be best.'  He rubs a paw over his mustelid head, chirring.  'But I do have a lot more pep now, so give me a few more hours and I should be ready for another ferrety romp.  Besides, that'll give me a little more time to work on these papers before playtime.'";
			stop the action;
		otherwise:
			now lastAlexfucked is turns;
			say "[alexsexytimes2]";
	if remainder after dividing turns by 8 > 5 or remainder after dividing turns by 8 is -1 or remainder after dividing turns by 8 is -2:	[early or mid-morning sex]
		say "[alexbrunchtime]";
		follow the turnpass rule;
	otherwise:
		follow the turnpass rule;


to say alexsexytimes1:
	say "     With a grin, Alex slides an arm around your waist and leads you off to his bedroom.  This room, like the rest of his condo, is tastefully decorated with modern furnishings.  There are several candles around the room, as well as a camping lantern to provide light in the evenings.  His bed is quite large and covered in [one of]red[or]blue[or]turquoise[or]crimson[or]aqua[or]scarlet[at random] satin sheets today.  He kisses you softly as he lowers you onto the soft sheets, intent on repaying you for all your help, as well as dealing with his pent up arousal from being up here all alone.  His hands run across your body, helping you out of any remaining clothes.  Once you[']re naked and comfortable on his bed, he slowly strips for you, taking off his suit and baring his body to you.  He s[if alexbrunch is 0]eems a little embarrassed by showing his changed body to[otherwise]hows his changing body to you proudly, having grown much more comfortable with it and with[end if] you.";
	say "     Aside from his ears, nose and muzzle, you can see that he[']s softly-furred and ferret-like from his [if alexbrunch is 0]thighs[otherwise if alexbrunch is 1]waist[otherwise if alexbrunch is 2]chest[otherwise if alexbrunch is 3]shoulders[end if] down to his feet, which are a little paw-like.  His fur has a two-tone tan colouration.  His cock, poking from a tan-furred sheath, is slender and has a strangely curved tip.  He runs his fingers over it slowly as he climbs onto the bed to join you, stroking himself towards full hardness[alexbodyreset].";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     Alex runs his hands over your body, stroking it sensually as he nuzzles your cheek.  Soon he[']s moving down to your neck, licking and nibbling as he softly chirrs.  His whiskered face moves do to your nipples, teasing them with a few licks before continuing down your body. His tongue plays across your [bodyname of player] body as it goes slowly lower and lower.  His tongue eventually reaches your groin and starts licking over your tender, sensitive flesh.";
	if cocks of player > 0 and cunts of player > 0:		[HERM]
		say "     The ferret runs his fingers over your cock[if cocks of player > 1]s, holding them[otherwise], holding it[end if] up as he buries his muzzle against your hard meat, taking in your scent with a moan of pleasure.  His tongue glides over your [cock size desc of player] cock[if cocks of player > 1]s[end if] slowly, working over every square centimeter of [if cocks of player > 1]them[otherwise]it[end if] and your balls to pleasure you.";
		say "     After tending to your male genitals, he nuzzles under your balls to give your pussy some attention.  The ferret runs is fingers over your wet lips, the spreads them as he teasingly brushes his tongue across them.  He works his tongue across your pussy again and again, nibbling your folds from time to time.  Once he[']s tended to every square centimeter of your lips and gotten you drippingly wet, he dives his tongue into you and starts licking and lapping with considerable zeal.";
		say "     Having gotten you quite worked up, when he finally plunges his mouth down over your cock and starts sucking it firmly, you moan loudly.  He smiles up at you and rubs one hand over your [ball size] to slip a finger into your pussy while the other strokes his animalistic member.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     His nimble fingers and artful muzzle tease your [cockname of player] shaft and [cunt size desc of player] pussy until you can hold back no longer and shoot your hot load down the ferrety man[']s throat.  He sucks it all down with soft moans until your balls are drained.  His muzzle pulls back and he slides his slinky body up yours to kiss you.  As your tongue dives between his lips, you can feel the mustelid[']s cum spraying across your body.";
	otherwise if cocks of player > 0:				[MALE]
		say "     The ferret runs his fingers over your cock[if cocks of player > 1]s, holding them[otherwise], holding it[end if] up as he buries his muzzle against your hard meat, taking in your scent with a moan of pleasure.  His tongue glides over your [cock size desc of player] cock[if cocks of player > 1]s[end if] slowly, working over every square centimeter of [if cocks of player > 1]them[otherwise]it[end if] and your balls to pleasure you[if anallevel is 3].  He continues lower, sliding his tongue across your tight pucker in several slow licks.  His tongue wriggles against your back entrance and eases its way into your rectum as he eagerly rims you for increased pleasure[end if].  Having gotten you quite worked up, when he finally plunges his mouth down over your [cockname of player] penis and starts sucking it firmly, you moan loudly.  He smiles up at you and rubs one hand over your [ball size] balls while the other strokes his animalistic member.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     His nimble fingers and artful muzzle tease your [cockname of player] shaft until you can hold back no longer and shoot your hot load down the ferrety man[']s throat.  He sucks it all down with soft moans until your balls are drained.  His muzzle pulls back and he slides his slinky body up yours to kiss you.  As your tongue dives between his lips, you can feel the mustelid[']s cum spraying across your body.";
	otherwise:								[FEMALE]
		say "     The ferret runs is fingers over your wet lips, the spreads them as he teasingly brushes his tongue across them.  He works his tongue across your pussy again and again, nibbling your folds from time to time.  Once he[']s tended to every square centimeter of your lips and gotten you dripping wet, he dives his tongue into you and starts licking and lapping with considerable zeal.  After having gotten you all worked up, you moan loudly as that nimble tongue sets to work inside you.  He smiles up at you and slips a finger into your snatch alongside his tongue while his other paw strokes his animalistic cock.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     His nimble finger and playful tongue tease your sensitive clit and inner walls until you can hold back no longer.  You moan loudly as your orgasm washes over you, pouring your sweet waters across his tongue.  He laps them up excitedly, making you moan all the more until your climax finally wanes into a pleasant afterglow.  Not overstaying his welcome in your now oversensitive pussy, he slips his tongue and finger out and gives you a long lick to get your dripping juices.  His muzzle pulls back and he slides his slinky body up yours to kiss you.  As your tongue dives between his lips, you can feel the mustelid[']s cum spraying across your body.";
	say "     After kissing and snuggling, he wipes his sticky mess off of you with a towel before it can dry uncomfortably.  He snuggles up to you as you both take a quick nap after your romp.";
	wait for any key;

to say alexsexytimes2:
	say "     With a grin, Alex slides an arm around your waist and leads you off to his bedroom, pulling clothes off each other as you go.  You are quite familiar with this room now and move onto the bed eagerly, spreading yourself out on the [one of]red[or]blue[or]turquoise[or]crimson[or]aqua[or]scarlet[at random] satin sheets.  He stretches out his fully ferret body before you, then bounds around excitedly on the bed with you, licking and nibbling you all over, making you alternately giggle and moan[alexbodyreset].";
	say "     Alex looks over your lovely, ferret body and dooks happily at the sight of his beautiful mate.  You both roll around on the large bed, slender, flexible bodies intertwining as you run your paws over each other.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	if cocks of player > 0 and cunts of player > 0:		[HERM]
		say "     Eventually, the smaller ferret moves his paws to your groin, taking your maleness in one and playing with your wet folds with the other.  'My dearest, what to do with you?  You have this lovely cock, begging to fill your little ferret love.  Does the big, sexy herm want to pin me down and have her way with my tight bottom?  But you also have this cute, dripping puss, ready and waiting for your lover[']s ferret cock.  Do you need him to fill you with his hot seed and breed you like an animal?'  Both offers sound so delightful to you, but which do you prefer to take? (Y-mount him, N-get fucked)";
		if the player consents:					[HERM - MALE OPTION]
			say "     You answer by flipping the smaller male onto his chest and grinding your cock against his rear.  He wiggles his tight ass against your shaft and presents his tight tailhole to you while passing you a bottle of lube he[']s pulled from the nightstand.  'Take me, you big, sexy hob,' he moans with another hard push back against you.";
			say "[alexmalesexy2]";
		otherwise:							[HERM - FEMALE OPTION]
			say "     You answer by flipping the smaller male onto his back and pouncing atop him.  You grind your wet pussy down over his hard cock, making him moan.  You look down at his animalistic cock and it makes your ferret pussy wet.  You want this sexy hob to mate you all the more.  His paws move up to your breasts, stroking and caressing them.  'You make such a sexy jill, my dear,' he says, grinding his cock up against you.  'And I want to make you a dam.'";
			say "[alexfemalesexy2]";
	otherwise if cocks of player > 0:				[MALE]
		say "     Eventually, the smaller male ends up beneath you and moans as your hard cock grinds against his rear.  He wiggles his tight ass against your shaft and presents his tight tailhole to you while passing you a bottle of lube he[']s pulled from the nightstand.  'Take me, you big, sexy hob,' he moans with another hard push back against you.";
		say "[alexmalesexy2]";
	otherwise:								[FEMALE]
		say "     Eventually, you[']ve had enough playing around and pounce atop the cute ferret the next time he[']s on his back.  You grind your wet pussy down over his hard cock, making him moan.  You look down at his animalistic cock and it makes your ferret pussy wet.  You want this sexy hob to mate you all the more.  His paws move up to your breasts, stroking and caressing them.  'You make such a sexy jill, my dear,' he says, grinding his cock up against you.  'And I want to make you a dam.'";
		say "[alexfemalesexy2]";
	say "     Your frantic romp done, you both roll apart, panting for breath.  As you[']re drifting off for a quick nap, you can feel him snuggling up against you.  Your body entwines with his, cuddling the smaller ferret in your arms.";
	wait for any key;


to say alexmalesexy2:
	if a random chance of 1 in 3 succeeds or anallevel is 3:
		say "     Unable to resist such an offer, but wanting a little more fun before the main event, you pour some lube onto your fingers and slip one into the horny ferret's ass.  He moans and squirms in delight, but pushes back harder onto your intruding digit.  Deciding he's already ready for more, you push a second finger into him to stretch him out further.  You make a point to tease his prostate, which has his cock twitching and dripping with precum onto his tan tummyfur.  You're tempted to suck it, but know that'd probably set him off at this point.";
		say "     With him quite ready and worked up now, you get your cock nice and slick with the lube, then sink it down into him.  His loosened ass spreads open for you readily as you thrust steadily deeper and deeper.  He moans in delight beneath the larger, sexy ferret filling him.";
	otherwise:
		say "     Unable to resist such an offer, you get your cock nice and slick, then sink it down into him.  His ass spreads open for you slowly as you thrust steadily deeper and deeper.  He moans in delight beneath the larger, sexy ferret filling him.";
	say "     You take your time until you[']re fully sheathed in him before you start pounding into him harder and faster.  He twists his flexible upper body so he can lick and kiss you while holding his ass presented to you.  As you stretch out overtop him and he nuzzles and nips at your neck, you take his cock in your paw and stroke him while pounding his rump with an increasingly frantic pace.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "     Finally, you are driven over the edge and slam your cock deep inside him, shooting your hot seed into the sexy ferret[']s rump.  He moans and dooks happily, begging for you to give him all you[']ve got.  With the tight grip of his asshole around you and his inner walls almost milking at you for more, you are happy to oblige and give him as much as you can while his own seed splatters onto the sheets.";


to say alexfemalesexy2:
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	say "     Unable to resist such a sexy offer, you take a hold of his cock and point it upright, teasing your pussy[']s wet lips against it.  As your juices run down his length, you lower yourself down over his throbbing meat.  You both dook in delight and start bouncing on the bed with each thrust he makes into you.";
	say "     With his slender cock stuffed fully inside you, you lower your flexible body overtop of him, bringing your breasts to the smaller ferret[']s muzzle.  He licks and suckles at your nipples, making you shiver in delight.  His paws grip your ass, squeezing it as he pulls your hips down into each thrust he makes.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Finally, he is driven over the edge and thrusts his cock deep inside you, shooting his hot seed into his sexy mate[']s vagina and womb.  You both moan and dook as he fills you with his thick semen.  Driven to orgasm yourself, your inner walls squeeze and pull at his cock, begging it to give you all it can.  His throbbing member and heavy balls are happy to oblige, filling you delightfully full.[impregchance]";
	if baby is 0 and gestation of child is not 0:
		now facename of child is "Ferret";
		now bodyname of child is "Ferret";
		now skinname of child is "Ferret";


Section 5 - Brunch!

to say alexbrunchtime:
	increase alexbrunch by 1;
	say "[line break]";
	if alexbrunch < 4:				[First to third brunch]
		say "     Upon waking up after the restful nap, you find yourself alone in the bed and the scent of bacon in the air.  Drawn from the bed by its siren song, you pull on the bathrobe he[']s left for you and head to the kitchen.  There you find Alex working over his camping stove, preparing a breakfast of bacon and eggs, along with juice and pancakes.  The juice may be powdered, but the pancakes are covered in fresh berries and a white chocolate sauce.  'Good morning, my dear.  Your brunch is almost ready.  I hope you[']ll have time to eat before you head out.'";
		say "     You enjoy your brunch in the dining room, enjoying a friendly meal with the weaselly lawyer who[']s become surprisingly generous with his food now.  Perhaps with the stress of his missing clients behind him, he[']s more able to relax with you.  You do find yourself gaining a growing fondness for the cute fellow as you discuss your adventures in the altered city.  And besides, he certainly was good in the sack.";
		say "     Once the meal is done, you prepare to head on your way and [if alexbrunch is 1]find while getting dressed that you[']ve gained a new tail.  As you look it over in the mirror, you can see that it[']s slender and covered in soft, snowy fur[otherwise if alexbrunch is 2]discover that your body is growing soft fur all over it.  It is a pure, snowy white colour all over[otherwise if alexbrunch is 3]notice that your head is becoming more ferrety.  You gain a cute, pink nose with plentiful whiskers and a mustelid[']s muzzle.  It has soft white fur all over it, pure as the driven snow[end if].  Alex smiles and snuggles up to you happily upon seeing your changing body.  He gives you another kiss and squeezes your rear, moaning as you squeeze his tight bottom in return.";
		say "[brunchtimechange]";
		increase score by 5;
	if alexbrunch is 4:				[Fourth brunch]
		say "     Waking up in the morning at Alex[']s again, you can smell and hear the ferret in the kitchen making breakfast for you again.  You slip the bathrobe on and slink quietly out to join him.  As you step into the kitchen, you are surprised to find the ferret pumping at his stiff cock, shooting his spunk into the white chocolate sauce for the pancakes.";
		say "     Having been caught, he stops and looks at you nervously.  You can[']t really find it in you to be mad with the sneaky ferret and slide up beside him.  With your arm around him, you start stroking his cock, allowing him to finish his waning orgasm with a final, big blast into the creamy sauce.";
		say "     With his cum to complete today[']s sauce, you start mixing it in while he continues cooking.  You lower yourself to your knees and smear some of the chocolate sauce on his cock before passing the spoon up to him.  He slowly licks it clean as you do the same to his cock.  He moans and whimpers in pleasure at the attention, trying his best to focus on the cooking while you suck him off.  Eventually you get your tasty treat while he only burns the eggs a little.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		if cocks of player > 0:			[MALE/HERM]
			say "     The smaller ferret climbs into your lap when you head to the dining room to eat, sharing one large plate.  You snuggle, kiss and tease one another playfully while eating your breakfast, enjoying the ferret[']s special pancakes all the more for knowing what makes them special.  The ferret playfully grinds his ass against your cock as he happily informs you that Lorenda and Lee are getting along well.  It seems she[']s helping [apostrophe]him[apostrophe] become more comfortable with being partly a [apostrophe]her[apostrophe] as well and they are making a rather cute couple.";
		otherwise:					[FEMALE]
			say "     You climb into his lap when you head to the dining room to eat, sharing one large plate.  You snuggle, kiss and tease one another playfully while eating your breakfast, enjoying the ferret[']s special pancakes all the more for knowing what makes them special.  The ferret[']s playful fingers tease your pussy as he happily informs you that Lorenda and Lee are getting along well.  It seems she[']s helping [apostrophe]him[apostrophe] become more comfortable with being partly a [apostrophe]her[apostrophe] as well and they are making a rather cute couple.";
		say "     Once your meal is done, you head back to the bedroom to get ready to head back out, but more prominently in your mind, to watch the next wave of changes overcome you.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     You slip off the robe and stretch out your body in front of the mirror, watching the changes in your reflection.  Your body grows more lithe and flexible.  You test out this flexibility, bending and contorting yourself with ease in front of the full length mirror[if cocks of player > 1].  And speaking of [']full length['], the sight of your changing body excites your cocks to full erection.  Like Alex[']s, they are smooth and slender with an upward curving glans[otherwise if cocks of player is 1].  And speaking of [']full length['], the sight of your changing body excites your cock to full erection.  Like Alex[']s, it are smooth and slender with an upward curving glans[end if][if cunts of player > 1].  You take a moment to examine your pussies as well, playing with your pink folds, rich with the scent of aroused mustelid[otherwise if cunts of player is 1].  You take a moment to examine your pussy as well, playing with your pink folds, rich with the scent of aroused mustelid[end if].";
		say "[brunchtimechange]";
		say "     Your changes done, you bound back into the living room with fresh excitement to find Alex has continued changing as well.  His infection has progressed up further, fully covering his head and arms now, making him a tan and brown ferret.  He has a cute mask of dark fur around his eyes on his now mustelid muzzle.  You chirr and nuzzle him, running your nimble paws over his body as you both share several kisses before parting.";
		increase score by 10;
	if alexbrunch > 4:		[5+ brunches, breakfast in bed]
		say "     Once again waking up in Alex[']s bed with the morning light streaming down onto you, you can smell the scent of food being made.  You stretch and are about to rise when Alex comes in wearing only a grin, carrying two bed trays with brunch on it.  He kisses you good morning as he puts your tray down, then joins you in bed with his.  You share a lovely morning with him, nuzzling and kissing as you eat your breakfast.";
		say "     During your breakfast in bed, [pillowtalk]";
		say "     Once your breakfast is finished and set aside, you both have a quick romp on the bed.  It[']s mainly just rolling around with each other while nibbling and nuzzling, through there are a few gropes thrown in for fun.  Afterwards, with that last boost to your spirits, you get your stuff together and get ready to head out into the city again.";
	decrease hunger of player by 12;
	if hunger of player is less than 0, now hunger of player is 0;
	decrease thirst of player by 12;
	if thirst of player is less than 0, now thirst of player is 0;
	if morale of player is less than 0:
		increase morale of player by 50;		[meal+drink morale boost]
		if morale of player is greater than 0, now morale of player is 0;
		say "You feel better having eaten.";
	increase morale of player by 3;			[happy ferret morale boost]
	wait for any key;


to say brunchtimechange:
	if alexbrunch is 1:
		now tailname of player is "Ferret";
		now tail of player is "Emerging from the base of your spine is a slender tail covered in ivory fur.";
	if alexbrunch is 2:
		now skinname of player is "Ferret";
		now skin of player is "soft, white fur that covers your";
[		increase charisma of player by 1;
		say "[bold type]Your charisma has increased by 1.[roman type][line break]";	]
	if alexbrunch is 3:
		now facename of player is "Ferret";
		now face of player is "that of an adorable mustelid with darting eyes that search for shinies.  You have a cute, pink nose with plentiful whiskers on your ferrety muzzle";
[		increase intelligence of player by 2;
		say "[bold type]Your intelligence has increased by 2.[roman type][line break]";	]
	if alexbrunch is 4:
		now bodyname of player is "Ferret";
		now body of player is "the slender and flexible form of a ferret.  You constantly have the urge to weave and bob about playfully as you move";
		now cockname of player is "Ferret";
		now cock of player is "ferret";
		now scalevalue of player is 3;
		now bodydesc of player is "[one of]flexible[or]slinky[or]slender[or]bouncy[at random]";
		now bodytype of player is "[one of]mustelid[or]ferret-like[at random]";
		now the daycycle of player is 0;
[		increase dexterity of player by 2;
		decrease stamina of player by 1;
		say "[bold type]Your dexterity has increased by 2 while your stamina has dropped by 1.[roman type][line break]";	]


to say alexbodyreset:
	if alexbrunch is greater than 0 and tailname of player is not "Ferret":
		say ".  Seeing your changed tail, his hands move down to your rear, stroking and squeezing it until your ferret tail is restored";
		now tailname of player is "Ferret";
		now tail of player is "Emerging from the base of your spine is a slender tail covered in ivory fur. ";
	if alexbrunch is greater than 1 and skinname of player is not "Ferret":
		say ".  His playful hands caress all over you, dooking happily as your soft, white fur is restored";
		now skinname of player is "Ferret";
		now skin of player is "soft, white fur that covers your";
	if alexbrunch is greater than 2 and facename of player is not "Ferret":
		say ".  He kisses and nuzzles at your face all over, nibbling your ears.  You can feel your head changing, returning to its once-mustelid shape";
		now facename of player is "Ferret";
		now face of player is "that of an adorable mustelid with darting eyes that search for shinies.  You have a cute, pink nose with plentiful whiskers on your ferrety muzzle.";
	if alexbrunch is greater than 3 and bodyname of player is not "Ferret":
		say ".  Alex rubs his slinky body against yours, chirring as your body becomes slender and ferret-like once more";
		now bodyname of player is "Ferret";
		now body of player is "the slender and flexible form of a ferret.  You constantly have the urge to weave and bob about playfully as you move";
		now scalevalue of player is 3;
		now bodydesc of player is "[one of]flexible[or]slinky[or]slender[or]bouncy[at random]";
		now bodytype of player is "[one of]mustelid[or]ferret-like[at random]";
		now the daycycle of player is 0;
	if alexbrunch is greater than 3 and cockname of player is not "Ferret":
		say ".  Rubbing his stiff cock against your loins, his precum leaks onto you.  You can feel pleasant tingles as they are restored to their mustelid nature";
		now cockname of player is "Ferret";
		now cock of player is "ferret";


to say pillowtalk:
	let T be a random number between one and ten;
	if T is 1:
		say "Alex nibbles at your ear, inviting you to remain here with him until rescue comes.  He has plenty of supplies for both of you.  His offer is very tempting, but you reluctantly decline, telling him you still have things to do out in the city.  He is seems a little melancholy after your response, but you easily fix that with a few playful gropes and nibbles.  Ferrets are inherently positive creatures, it seems.";
	if T is 2:
		say "you caress his muzzle and nuzzle him, asking him to come back with you to the safety of the bunker.  You offer to help him bring whatever supplies he needs, but he declines the tempting offer.  He feels safest here and also wants to be available for Lorenda and Lee as well.  'Ah, I see, you just want to get your hands on my food,' he jokes.  You tickle him back.  'What do you expect?  The way to a [if cunts of player > 0]wo[end if]man[']s heart is through h[if cocks of player > 0]is[otherwise]er[end if] stomach.  I think you proved that with your special pancakes.'";
	if T is 3:
		if cocks of player > 0:				[MALE/HERM FUN]
			say "Alex leans over and takes a hold of your cock, stroking you slowly and steadily.  You pant and moan softly as you try your best to continue your meal, making the playful ferret step up his game.  You keep eating, with increasing difficulty, until finally you drop your fork with a loud moan as your orgasm runs through you and you shoot your hot seed across your plate, further seasoning your food.";
		otherwise:						[FEMALE FUN]
			say "Alex leans over and slips a pair of fingers into your pussy, slowly stroking and teasing you.  Your hips quiver, but you try your best to continue your meal, making the playful ferret step up his game.  You keep eating, with increasing difficulty, until finally you drop your fork as your orgasm runs through you and your hot juices spray onto his paw.  He grins as he brings his wet paw back to his plate, dripping some of your juices as he takes a slice of peach in his fingers.  He makes a show of eating it for you, sucking your juices from his fingers between nibbles.";
	if T is 4:
		say "you reach over and take the ferret[']s cock in your paw, stroking and pumping at it, making him moan softly.  You nibble his ear as you watch his reactions intently.  As he grips the sheets in his paws, you quickly move your plate over his, catching the thick spray of cum on it, further seasoning your meal.  'Looking for more of my special white chocolate sauce, hon?' he chuckles.  'Now that I know what[']s in it, I do, my sneaky little hob,' you reply with a nibble to his cheek before digging into the sloppy pancakes with increased zeal.";
	if T is 5:
		say "you both exchange sexy pillowtalk, with him telling you what a lovely [if cunts of player > 0]jill[otherwise]hob[end if] you make.  He traces his body over your altered figure, smiling as he says how much closer its made you both.  You tell him as well that he[']s become sexier as a full ferretmorph and that you[']re glad to share that with him.  Your fingers knead up his chest, then stroke his mustelid face as you tell him how nice it has been to watch him change into a such sexy lover for you.";
	if T is 6:
		say "Alex tells you that Lorenda and Lee are making out well, loving each other[']s company a great deal.  It seems that more and more they[']re becoming sexy cat-vixen herms together, but managing to keep each other sane.  You chuckle and nibble his ear, replying that they must be enjoying each other[']s company like you two have been.";
	if T is 7:
		say "Alex runs his paw along your side and nibbles your ear, telling you that Lorenda and Lee have been asking about you.  It seems they want to thank you for saving them and getting them together.  They[']ve been rather overtly suggesting that you both come over sometime for a little fun at their place.  Alex runs his finger along your thigh as he tells you that part, making it clear to you just what kind of fun those two have in mind.";
	if T is 8:
		say "Alex wriggles his flexible body out from under his half-filled tray and nuzzles between your legs, licking and kissing at your [if cunts of player > 0 and cocks of player > 0]cock and pussy[otherwise if cocks of player > 0 and anallevel is 3]cock and anus[otherwise if cocks of player > 0]cock[otherwise]pussy[end if].  You moan in delight, rubbing a paw through his headfur as you enjoy his oral ministrations with your meal until finally he gets a juicy treat as well when you cum.";
	if T is 9:
		say "you talk to Alex about how he[']s changed while you[']ve known him.  He[']s become a much nicer person over the time you[']ve known him.  You cautiously ask him if he thinks it has to do with his growing changes, and he agrees.  'Part of it was the stress about my clients, but only part.  I think letting my ferret side out has made me happier and more positive overall.  I may get a little hyperactive at times, but it[']s hard to stay sad now.  I have a little romp around the room or hide a few shiny things and I[']m right as rain.'";
	if T is 10:
		say "Alex leans over and nuzzles you, looking serious.  He chirrs softly and nibbles you ear, asking you to please be careful out there and to come back to him.  You hug him very tightly, give him a big kiss and promise him that you will.";


Section 6 - Endings

when play ends:
	if bodyname of player is "Ferret":
		if humanity of player < 10:
			say "     After your mind gives out to the infection, you are eventually drawn back to Alex[']s condo.  After happily greeting you, he quickly realizes something is wrong and that you[']ve lost yourself to the infection.  He is briefly saddened by this, but rebounds quickly as you playfully coax him into another romp on the bed.  You can[']t speak much any more, save for requests for sex or the occasional loving phrase for your sexy, ferret guardian during brief moments of clarity.";
			say "     When the military comes through to rescue everyone, Alex takes care of you and makes sure you are safely taken with him and his clients.  There is some argument about what to do with you, but Alex puts his legal prowess to the test and eventually gets you entrusted to his care after you[']re deemed non-infectious.  He even shows you the press tape of his impassioned plea for the brave soul who rescued and protected his clients at the eventual loss of their own mind.  You have trouble following the words, but it warms your heart to hear him talk about you with so much love.";
			say "     He takes good care of you, giving you a lovely room of your own filled with toys, both mundane and sexual, to keep you happy while he[']s away at work.  Lorenda and Lee are taken on as his house staff and your act as your daytime guardians.  They are very happy to play with you and help sate your sexual needs.";
			if cunts of player > 0 and "Sterile" is not listed in feats of player:	[BREEDABLE]
				say "     Alex seems to be quite successful - certainly he[']s able to pay your playmates very well and he[']s soon buying an even larger home with a bigger playroom for you.  It also comes complete with a lovely nursery for the growing kits in your womb.  He[']s especially rambunctious after winning a big case and still surprises you with breakfast in bed at times.";
			otherwise:											[NON-BREEDABLE]
				say "     Alex seems to be quite successful - certainly he[']s able to pay your playmates very well and he[']s soon buying an even larger home with a bigger playroom for you.  He[']s especially rambunctious after winning a big case and still surprises your with breakfast in bed at times.";
		otherwise:
			say "     When the time comes for the military to come through and you are picked up, you inform the military team that you[']ve safely protected a group of survivors in the high rise district.  You give them directions to Alex[']s building as well as the condo numbers where the survivors can be found.  You are soon reunited with Alex and company while you await full debriefing and decontamination.";
			say "     Having a lawyer with your group certainly helps, making it much easier for you all to get free of the military compound.  Once out, Alex throws himself into his cases, tackling them with a frantic zeal that throws the opposing lawyers for a loop.  On Darrell[']s case, one finally snaps and makes a comment about Alex[']s species in court and the case is as good as won from that point on.";
			say "     While Alex is hard at work, you[']ve thrown yourself into studying law as well.  Alex, Lorenda, Lee and you all share Alex[']s palatial new home.  The other two did not fare as well financially, with most of their assets wiped out by the outbreak.  Ostensibly, Alex hires them on as housekeepers, but pays them incredibly well to basically be permanent houseguests.  They are quite happy with their false roles, even occasionally strutting around in French maid outfits when they're feeling particularly kinky and want to seduce the ferrets into some fun.";
			if humanity of player > 49 and intelligence of player > 15:
				say "     While Alex becomes a successful litigator dealing with civil-business cases, you focus on advocating change to federal law.  You work to see change made to protect the needs of transformees and their offspring.  The array of issues to confront is astonishing: from simple identity issues for gender-altered and trans-species people to protecting voting rights and the eligibility to hold public office.";
				say "     Thanks to the efforts of you and a few others, transformees maintain the right to hold elected positions with few restrictions.  You also ensure that the only amendments to impeachment statues are reasonable ones to permit the removal of a newly-transformed elected representative, and only if they are deemed to have sufficient mental changes.  As a candidate[']s views, politics and platform could radically change away from the electorate that selected them, this is a reasonable concern, but it also keeps good, sane officials from being removed for inconsequential changes.  You are praised often for your fair-mindedness and insight when these new laws are enacted.";
			otherwise:
				say "     While Alex becomes quite successful in civil-business litigation, often working on cases related to species and transformation issues, you are not quite able to match his success.  He remains very supportive of you and you do manage to build up a good practice of your own, focusing on the handling of species-based hate crimes and discrimination.  While public spokespeople seem to get the credit for influencing social change, you know you[']re there at the front lines fighting the cases they talk about when they speak out for equality.  But somehow, despite your very busy lives, Alex is still able to find the time to make you breakfast in bed with his special pancakes every now and then.";
			if cunts of player > 0 and "Sterile" is not listed in feats of player:	[BREEDABLE]
				say "     Throughout your successful lives together, Lorenda and Lee are there for you both, good friends and occasional partners.  Their hybrid kittens help to fill the large home you all share and are wonderful playmates to your own ferret kits.";
			otherwise:											[NON-BREEDABLE]
				say "     Throughout your successful lives together, Lorenda and Lee are there for you both, good friends and occasional partners.  Their hybrid kittens help to make your large house into a home.";
			if humanity of player > 49 and intelligence of player > 15 and charisma of player > 15:	[BEST ENDING ADD-ON]
				say "     In your later years, you end up being instrumental in dealing with the growing problem of the hyena gangs.  The improvements to TF rights you[']ve brought about keep the situation from escalating beyond control.  Without a mass of disaffected youth to call upon, their influence was already dwindling.  When you finally are called to step in and negotiate with the leaders, you are able to curb the violence and end the coming crisis.";
				if coonstatus is 101:				[coon pet]
					say "     You watch as the first tf presidential candidate is announced while you and Alex snuggle with breakfast in bed.  Lorenda and Lee, in the mood to make a show of playing frisky maids with your pink coontoy, are there with you to see it.  You all smile and agree he won[']t win, but you don[']t care.  You know you will when you run in a few years' time.";
				otherwise:
					say "     You watch as the first tf presidential candidate is announced while you and Alex snuggle with breakfast in bed.  Lorenda and Lee, in the mood to play frisky maids that day, are there with you to see it.  You all smile and agree he won[']t win, but you don[']t care.  You know you will when you run in a few years' time.";


Alex ends here.
