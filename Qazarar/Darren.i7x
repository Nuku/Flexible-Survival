Version 1 of Darren by Qazarar begins here.

Section 1 - NPC

[ Loyalty of Darren                                            ]
[   0: haven't spoken to                                       ]
[		1: met Darren                                              ]
[   2: helping Darren                                          ]
[   3: helped Darren                                           ]
[   4: eventual breeding availability?                         ]

[ HP of Darren 																								 ]
[   0: Haven't helped with base                                ]
[   1-4: Started cleaning things up                            ]
[   5: Getting there                                           ]
[   6+: added later                                            ]

Table of GameCharacterIDs (continued)
object	name
Darren	"Darren"

Darren is a man.
Darren is in Salamander Hideaway.
ScaleValue of Darren is 3. [human sized]
SleepRhythm of Darren is 1. [day active]
Cock Count of Darren is 1.
Cock Length of Darren is 8. [check values]
Ball Size of Darren is 5. [check values]
Ball Count of Darren is 4.
Cunt Count of Darren is 0.
Cunt Depth of Darren is 0.
Cunt Tightness of Darren is 0.
Nipple Count of Darren is 2.
Breast Size of Darren is 0.
PlayerMet of Darren is false.
PlayerRomanced of Darren is false.
PlayerFriended of Darren is false.
PlayerControlled of Darren is false.
PlayerFucked of Darren is false.
OralVirgin of Darren is true.
Virgin of Darren is true.
AnalVirgin of Darren is true.
PenileVirgin of Darren is false.
SexuallyExperienced of Darren is false.
Loyalty of Darren is usually 0.
MainInfection of Darren is "Salamander".
Description of Darren is "[DarrenDesc]".
Conversation of Darren is { "<This is nothing but a placeholder!>" }.
The scent of Darren is "     He smells of smoke and fire.".

to say DarrenDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Darren] Loyalty: [Loyalty of Darren] <- DEBUG[line break]";
	say "     Darren is a fairly tall salamander, though notably taller and very visibly more masculine than any of his counterparts. His skin is a vibrant reddish orange, and very smooth at that. He seems to have declined to wear any clothing, and with the heat you can feel coming off his skin, you can understand why. This also has the side effect of making his reasonably large reptilian endowment completely visible, along with the unusual four balls hanging behind it. Looking back up to his face, you can see that he's grinning, but it seems nervous rather than predatory, his bright yellow eyes carefully watching.";

Section 2 - conversation

instead of conversing the Darren:
	say "[DarrenTalkMenu]";

to say DarrenTalkMenu:
	say "     What do you want to talk about with Darren?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Darren about himself and his history";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Salamander";
	now sortorder entry is 2;
	now description entry is "Ask him about his new form";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Help";
	now sortorder entry is 3;
	now description entry is "See if he needs any help";
	[]
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
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[DarrenTalk1]";
				if (nam is "Salamander"):
					say "[DarrenTalk2]";
				if (nam is "Help"):
					say "[DarrenTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the salamander, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DarrenTalk1: [himself]
	say "     You ask Darren to tell you a little more about himself, and what he's doing here. He shuffles around somewhat nervously, but seems to muster enough courage to start speaking. 'Well, I used to just be an intern in the area, nothing particularly special. I mostly just answered phones and sorted mail, like some sort of glorified secretary. Eventually all of, well, this happened, and when I saw what was going on I locked myself in my apartment, tried to just ride it out, you know? It worked for a few days, but eventually I ran out of canned soup and had to start leaving to find supplies. Then the ineveitable happened and I was changed, until I eventually found this little hidey-hole, and have been cleaning it up since. Not as pretty as my apartment was, but it's a lot safer.'";
	if Loyalty of Darren < 1:
		now Loyalty of Darren is 1;

to say DarrenTalk2: [his form]
	say "     You've seen salamanders around the area, but nothing quite like Darren. You ask him about his new body, and he stammers, making an expression you're sure would have a blush if his skin were'nt already red. Eventually he gathers the nerve to go into detail. 'Well, on a trip to forage some supplies, I apparently wasn't as stealthy as I thought, because three of the salamanders had followed my back. They broke down my door and dragged me away, to some sort of... nest, I guess. I didn't really understand all of what they said at the time, I was a bit too panicked, but it seems they thought I'd be easy pickings for what they wanted, and with what happened I can't say they were exactly wrong.'";
	say "     'Eventually I did find out what they had taken me for. All of the other salamanders as you may have noticed were female, and they were looking for a breeding stud of their own. In a way it would sound kind of cool if it wasn't so terrifying. At this point the actual moment itself is a blur, but once it was over I woke up looking like this, their perfect idea of a stud in body, and for the next few days they made sure to take full advantage of it.' For a moment he pauses, and gestures to his erect shaft. 'That's how I learned that this thing never actually goes down, at least that I've seen. No matter how much they used me like a toy or how long since then it's just been erect the whole time. It even gets painful if I don't get, well, relief practically every couple of hours. It's certainly been an experience being like this, but now that I've gotten away from them, I'm hoping things will be a bit different.'";
	if Loyalty of Darren < 1:
		now Loyalty of Darren is 1;

to say DarrenTalk3: [helping]
	if Loyalty of Darren < 2:
		say "     After seeing the state of the room, and how on edge Darren has been looking, you decide to ask him if he needs any help. He glances around, before looking straight at you again. 'Well, as muchas I try to make it on my own out here, I have had a bit of trouble finding enough food supplies. There's some, of course, but it seems harder to find sealed things every day. If you'd be able to bring me [bold type]three packages of food[roman type] that would help a lot.' You nod, and tell him you'll see what you can do.";
		now Loyalty of Darren is 2;
	else if Loyalty of Darren is 2:
		if carried of food > 2:
			say "     Thinking of what you have in your pack, you realize you have enough food to give Darren what he asked for, should you choose. [bold type]Do you give him your food?[roman type]";
			LineBreak;
			if Player consents:
				say "     This time when you return to the little hideaway, you have a gift for Darren. When you speak to him about helping him out, you show him some of the preserved food you've found scavenging, and offer him three portions. He takes it from you gratefully and steps aside to store it in a small cabinet in the corner, more intact than the others nearby it. 'Thanks so much, friend. I've been too nervous to really go as far as I probably should when looking for food, after some close calls, so this makes a huge difference.' When he returns over to you, he seems to pause for a moment before he darts in and gives you a quick hug. 'I think the worst part has been how alone I've felt out here. I'm glad to know that there's at least one person I can trust right now.'";
				ItemLoss food by 3;
				now Loyalty of Darren is 3;
			else:
				say "     You decide against giving the food to Darren for the moment, for your own reasons.";
		else:
			say "     'Hey, thanks for offering to help me out, it's really a load off my shoulders to know that I'm not totally alone out here.' You don't have anything to give him right now, but you nod your head in agreement, and tell him you'll bring him some supplies when you can.";
	else: [placeholder text until update]
		say "     'Things have been okay at the moment, but I might need some more help from you eventually.'";
		[say "[DarrenRebuilding]";]

to say DarrenRebuilding: [assorted tasks to improve the hideaway and get closer to Darren]
	if hp of Darren is 0: [basic scene, cleaning things up]
		say "     A";
	else if hp of Darren < 5:
		say "     A";
		[insert talk style table with different tasks]
	else:
		say "     A";

Section 3 - Fucking

instead of fucking the Darren:
	say "[SexWithDarren]";

to say SexWithDarren:
	if (lastfuck of Darren - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     'I'm still a bit worn out from last time, but I'd be happy to chat with you instead.' Darren gives you a light smile.";
	if Loyalty of Darren is 0:
		say "     You haven't even spoken to him yet!";
	else:
		say "     'Well, I'm sure we can think of something to do together, but nothing too wild, okay?'";
		say "[DarrenSexMenu]";

to say DarrenSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer a BJ";
	now sortorder entry is 1;
	now description entry is "Volunteer some oral action";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him to fuck you";
	now sortorder entry is 2;
	now description entry is "See about getting some salamander dick";
	[]
	if player is male and (Loyalty of Darren > 2):
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck him";
		now sortorder entry is 3;
		now description entry is "Ask if you can test out his ass";
	[]
	if (Loyalty of Darren > 3) and (Player is female or "MPreg" is listed in the feats of Player):
		choose a blank row in table of fucking options;
		now title entry is "Get bred";
		now sortorder entry is 3;
		now description entry is "Have the salamander stud breed you";
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
				now sextablerun is 1;
				if (nam is "Offer a BJ"):
					say "[DarrenSex1]";
				if (nam is "Ask him to fuck you"):
					say "[DarrenSex2]";
				if (nam is "Ask to fuck him"):
					say "[DarrenSex3]";
				if (name is "Get bred"):
					say "[DarrenSex4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the salamander, and tell him you've reconsidered for now.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DarrenSex1: [blow him]
	say "     With Darren's cock visibly needy, you volunteer yourself to help him relieve the pressure, if only for a little while. The salamander enthusiastically nods in response. 'That would be incredible. I can do some of it myself, but it just isn't the same.' Because his member is already exposed and ready, there's nothing else you need to do for this particular act other than to get down onto your knees to better be in position. This brings you face to face with the perpetually throbbing shaft, lined with smooth ridges and already seeming to almost vibrate in anticipation. You were already fully prepared to take care of this for him, so there's really no point in waiting any further.";
	say "     You lean forward and start by licking at the head, and almost recoil instinctively from the heat. Carefully proceeding, you realize that it's not as scalding as you thought initially, and while it's almost too hot to be pleasant, it doesn't quite go that far. Pushing past the sensation you move further downward, lashing your tongue against each ridge as you pass, the heat slowly becoming more and more enjoyable. Finally this takes you down to his heavy sack, hanging down with the weight of his quartet of seed factories. Each one feels like a molten center, exuding even more heat than the rest of his body, drawing you in. You have no problem following your opening move by eagerly paying your respects to them, using your lips and tongue interchangeably to lavish each one until you're sure he's almost ready to blow.";
	WaitLineBreak;
	say "     With great difficulty, you pull back until your face is one more resting in front of the tip, the quivering member sitting excitedly in front. You bring up both hands, one circling around the shaft, the other cupping balls carefully. Your fingers move quickly, tugging and teasing, and in a few mere seconds he erupts, his blazing seed splattering across your face, shot after shot of the delightful mix. The sensation is wonderful, and the near-volcanic smell enticing, enough to make you want to stop and bask in the feeling of it all. However, you know you have more work to do. Just a glance at his cock reveals how much he still needs release, so you promise him it won't be the last load you help with.";
	say "     This time, you go in for a more direct approach. In a single swift motion you move forward until you're able to take the head of the shaft into your mouth, and start sinking deeper. The almost wavy texture as you descend further down the shaft makes you enjoy being on the giving side even more, and you can easily tell just how much Darren is enjoying the reverse by how much his dick is already starting to throb again. Knowing you'd be smiling if it wasn't for how full your mouth is, you focus once again on your new task, bobbing vigorously up and down, applying varying sensations to the surface through your skilled tongue. Already on edge from your earlier worship, the energetic sucking is enough to bring him to a peak once more, with fresh jets of salamander seed shooting down your throat. You swallow with satisfaction, disentangling yourself from your hot companion, and getting back to your feet. While his cock still seems ready to go, you can see that Darren himself seems worn out from your efforts, so for now at least you'll consider it finished.";
	NPCSexAftermath Player receives "OralCock" from Darren;
	now lastfuck of Darren is turns;

to say DarrenSex2: [get fucked]
	say "     You ask Darren if he wouldn't mind putting his studly member to work on you. He seems slightly nervous about it, and seems conflicted for a moment, before answering. 'Alright, I'll do it[if Player is female]. But only your ass, I'm not exactly comfortable with going any further than that right now[end if].' You nod, and look around the room for a good spot. Though at the moment there aren't too many options, you eventually beckon Darren over to the couch in the corner, and lay flat on your stomach across it. While this position won't lend itself quite as well to the same energetic motions as some, you're convinced that the salamander can make good use of it regardless, and make yourself comfortable.";
	say "     It only takes a moment for Darren to move into position above you, and soon after you can feel the tip of his shaft resting against your rear passage. He pauses, and you can hear a deep intake of breath as he steels himself, before he thrusts his hips forwards. The shape of the head allows it to slide in fairly easily, giving you only the slightest discomfort—one that is quickly washed away as the continued motion brings the series of ridges along after it. As each one pops into your tight hole you get a fresh jolt of pleasure rushing through your veins. At the same time, his member exudes a powerful heat that warms your insides, making the pleasures burn even hotter as well. The feelings the entire act causes are so intense that you scarcely even realize that he has stopped, his entire member buried fully in you.";
	WaitLineBreak;
	say "     Before you can process the emotions you're feeling, he begins to move again, this time pulling back out. The ridges of his shaft exiting you provides a sensation that is different, but no less intense than when they entered. When he reaches the apex of his motion, he seems to hang for just a second before he plummets back down, his thrusts empowered by gravity. From there the individual strokes blur together, compounding into a mess of heat and pleasure that quickly brings you to your own climax, feebly trying to move under him, but unable to focus enough to do so. Finally your stupor is broken by the sensation of molten seed flowing into you, a clear sign of the salamander hitting his peak as well.";
	say "     You mentally relax, thinking that marks the end of your copulation. Instead of the relief you expect however, you're disabused of the notion by a renewed pleasure erupting as Darren resumes his power thrusting. Despite having peaked only moments before, he continues to spear open your ass anew on each thrust, bringing you to greater depths of pleasure than you ever expected. You feel as if you've sunken to the muddled depths of a lust-addled dream, and fallen straight through onto the other side into a new mess of sensation entirely, one where you can only give in to the joy of salamander cock. However, even this new task can only last so long, and eventually enough time passes for him to climax yet again, though he has also managed to incite another two from you in his path towards it. Once he's been taken care of for a second time, he at last pulls back from you entirely, giving a sigh of satisfaction. When you muster the strength, you roll over to look back at him, and while his shaft seems as rock hard as ever, Darren himself seems fully exhausted by his activity. You give him a smile, and silently look forward to another chance to experience this again.";
	NPCSexAftermath Player receives "AssFuck" from Darren;

to say DarrenSex3: [do the fucking]
	say "     Knowing that Darren is more comfortable with you than before, you chance to ask him if he'd be okay trying things from the other direction, and letting you test out his salamander ass. The expression that shows up on his face starts as one of shock, but slowly morphs into one of clear embarrassment instead. [if AnalVirgin of Darren is true]'I, well, um. I haven't really thought about that kind of thing before, at all really. But all the same, I'd be willing to give it a try with you. How exactly does this work?' You give him a brief explanation, and[else]Smiling at how nervous he is despite his prior experience, you[end if] bring him over to sit on the couch, before spreading his legs to reveal both his package and the tight passage below it. To make it both easier for yourself and more pleasurable for him, you lift his legs up even further, hooking them over your shoulders, leaving him fully exposed. This conveniently also places your own member in position for penetration, but you pause for a moment, and ask him a final time if he's ready.";
	say "     Much more firmly than before, Darren nods to you. You return the favor, and immediately follow up by pressing yourself forward, keeping the head of you cock up against his entrance. Rather than shove in immediately, you take several moments to gyrate slightly, rubbing back and forth across his entrance to tease him, and get him used to the sensation of having something foreign up against him at all. After a few moments, you're sure that the time you've given him is suitable enough to be acclimated, and you prepare to thrust in, making that pivotal motion. You twitch your hips forward, spreading his tightness just wide enough to allow your member entry, and procuring a powerful gasp from his throat as the sensation hits him all at once. Emboldened by the positive reaction, you start pressing in deeper and deeper, savoring the pure heat around your shaft, and the blissful moans of the salamander you're impaling.";
	WaitLineBreak;
	say "     You reach the depths of your thrust in no time at all, Darrens inner walls easily allow you in even as they grip tightly around you. It seems that the transformation that gave him a dedicated stud body managed to also make him particularly receptive to being anally pounded, and you'll be taking excellent advantage of that fact. Following that realization, you pull your hips back just a few inches, and start pistoning in and out far more thoroughly, slamming yourself in to the hilt on each thrust. True to form, the salamander's moans only grow in intensity as you start fucking him harder, his quartet of balls rolling around from the force of your thrusts, and precum visibly dribbling from the tip of his shaft. You shift your angle of entry slightly, and the sharp increase in the pitch of his moans reveals that you've successfully discovered your target—his overworked prostate. Several more well-targeted thrusts prove to be all it takes to make his own shaft erupt, spilling his heated seed onto his chest, and a few lazy jets landing on you.";
	say "     If this were in any way a rational situation, this could be a moment to stop, take a breath, and let Darren recover from his exhaustion. At this point however, you know there is no stopping this, no resting, until you've truly shown him the depths you can take him to with this, as both of you sink further into the intoxicating feeling of being so close, and so connected. For a split second you've pulled back, but only to hammer in further, entwining your arms around his legs as you do so in order to spread him further, making every thrust that much deeper, harder, and more intense. Darren's unending virility is being put to the test in an entirely new way, but his shaft has risen to the challenge, coming back to full hardness again even as it's bounced around helplessly from the fucking he's receiving. You can feel a matching pleasure rising up in you as well, the heat and tightness combining with the sheer sensuality to create a rising tide you can't ignore.";
	WaitLineBreak;
	say "     Eventually the swirling mass of lust building up in the two of you reaches a point of no return. You can feel the salamander climaxing again just as clearly as you can see it, his rear clenching and convulsing around you. This is enough to bring you to the edge as well, and you make on final charge, slamming as deep as you can into him, your cock twitching inside him with each spurt you release, the motions almost perfectly in time with the feeble jerks of his own cock as it drools out another load between the two of you. As the coursing pleasure rides through the two of you, you lean further inwards and claim his mouth for a kiss, closing the lustful circuit. You melt into each other, fully entranced by the totality of your sensations, until finally your bodies both rest, your joined climax ending as you withdraw, the taste of Darren's sweet lips still on your tongue. The both of you are completely exhausted, stained in seed, and completely satisfied.";
	if AnalVirgin of Darren is true:
		say "     'That... that was really something. I definitely didn't expect to like it quite that much, but apparently I've become just a bit of a natural, huh? Either way, this was great, and I'd be happy to do this again, or maybe experiment in some other ways.' You give Darren a brief hug, and thank him for being so open, looking forward to the next chance to have to try something like this. Maybe you can even try out some entirely new things with him in the future, and give him even more chances to learn his new preferences.";
	NPCSexAftermath Darren receives "AssFuck" from Player;

to say DarrenSex4: [breeding, currently not accessible]
	if Player is female:
		say "     A";
		NPCSexAftermath Player receives "PussyFuck" from Darren;
	else:
		say "     A";
		NPCSexAftermath Player receives "AssFuck" from Darren;

Section 5 - Location

Table of GameRoomIDs (continued)
Object	Name
Salamander Hideaway	"Salamander Hideaway"

Salamander Hideaway is a room.
Description of Salamander Hideaway is "     This small service building has clearly been repurposed into a living space, with a number of comfortable pieces of furniture scattered around the space, and a makeshift kitchen set up in one corner.".
Approaching the Capitol Building is northwest of Salamander Hideaway.
Salamander Hideaway is southeast of Approaching the Capitol Building.

instead of going southeast from Approaching the Capitol Building while Loyalty of Darren is 0:
	say "     While walking through the Capitol district, you spot a pair of luminous eyes examining you through a narrow gap in a doorway. When you focus your gaze to examine more closely, you can see them move out of visibility as you hear a small crashing sound. A moment later, a small panel seems to cover the gap you'd just seen. It seems like someone might be hiding back there, though they aren't being quite as stealthy about it as they think.";
	say "     [bold type]Do you want to go check it out?[roman type][line break]";
	if Player consents:
		if bodyname of Player is "Salamander":
			say "     You approach the door you saw a moment ago, and knock firmly. For a second, the panel opens back up, revealing the same eyes you saw before, but scarcely a moment later you can see those eyes widen before the opening is slammed closed again. You blink, surprised by the reaction they had, before trying to figure out what happened. You didn't even have a chance to speak, so the only thing that might have turned them off of you would be your appearance. Maybe you'd have better luck trying again if you came back looking different...";
		else:
			say "     You approach the door you saw a moment ago, and knock firmly. For a second, the panel opens back up, revealing the same eyes you saw before, but scarcely a moment later you can see those eyes widen before the opening is slammed closed again. Before you can react further, you hear a voice coming through the door. 'Okay, you get a few points for not being with them, but I think you should tell me who you are and why you're here before I even think about letting you in.' You explain your situation as a survivor, and how you were out exploring. Several seconds pass in silence, and finally the peephole opens again, once more revealing the same bright eyes. 'Okay, you seem trustworthy, but please don't make me regret this.";
			say "     From the other side of the door, you can hear several clanking sounds before the door itself slides open. On the other side is a tall, vaguely lizardlike figure. At a second glance, you realize that maybe that isn't quite right, as he more closely resembles the salamanders that sometimes stalk this area than any reptile. And he is clearly the correct term, as unlike those creatures this new face is very clearly male, with one of the most masculine physiques you've seen outside of bodybuilders, and a shaft that seems to already be shockingly hard. Contrary to what you'd expect from someone looking like that, however, his face seems to be significantly uncertain and nervous when looking at you.";
			WaitLineBreak;
			say "     'Uh, hello. Sorry about all this, things have been kind of crazy lately, and I haven't had many visitors who weren't trying to assault me. I'm Darren, by the way.' He rubs the back of his head awkwardly, and you return the favor and give him your name. During the exchange you take a moment to look around, and you see that you're in a fairly small room, one that may have simply been some sort of storage space before, but is now fitted into a reasonably cozy space to stay. 'I don't exactly have a lot to offer right now, but you're welcome to come in, now that I know you aren't, well, gonna attack me or anything.'";
			move player to Salamander Hideaway;
	else:
		say "     Well, it's not really your problem, so you decide to just leave it alone. Maybe some other day you'd be interested, but for now you return to your adventures.";

Darren ends here.
