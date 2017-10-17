Version 3 of Orthas by Stripes begins here.
[Version 3.1 - New sex sub-variations for herm sex w/Orthas - Stripes]
[- Originally Authored By: Nuku Valente -]

Section 0 - Orthas

Orthas is a person. "A dragon person, clearly female, is watching the area. If her name badge is accurate, her name is 'Orthas'.".
The description of Orthas is "[orthasNPCdesc]".
The conversation of Orthas is { "Eggses!" }.
Orthas is in Trevor Labs Lobby.

the scent of orthas is "Orthas smells like a strong, powerful dragoness[if hp of Orthas is 2 or hp of Orthas is 3]. She has a lingering scent of arousal hanging over her[else if hp of Orthas is 4]. She has a strong scent of arousal and egg-laying hanging over her[end if].".

the fuckscene of orthas is "[orthasfuck]".

to say orthasNPCdesc:
	say "     Orthas is a black-scaled dragon woman. She stands about six and a half feet tall, with wings that are about three feet long each folded to her back. She watches the area intently, her arms crossed half the time. Behind her, a slender reptilian tail sways slowly. Her overall shape is human, especially those huge, F cup knockers that heave distractingly with every breath she takes. Her overall build is quite strong, enough so that the clothes she's wearing have trouble fitting, making for an impressive guard.";


Section 1 - Conversation

instead of conversing the Orthas:
	if hp of Orthas < 3:
		say "     [one of]'Hello there.'[or]'The good doctor is upstairs. You can see him. Don't cause trouble.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'What is it like out there?'[in random order]";
	else if hp of Orthas is 3:
		say "     [one of]'Hello there.'[or]'Hey there, hot stuff.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'What is it like out there?'[in random order]";
	else if hp of doctor matt >= 8 and hp of Orthas is 4:		[finished Main Storyline 1 + Orthas task 1 w/Dragon egg]
		say "[orthas_task2_start]";
		now hp of Orthas is 5;
	else if hp of Orthas is 4:
		say "     [one of]'Hey there, how's momma?'[or]'Hey there, hot stuff.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'What is it like out there?'[in random order]";
	else if hp of Orthas is 5 or ( hp of Orthas is 6 and footlocker is not owned ):
		say "     [one of]'Hey there, how's momma?'[or]'Hey there, hot stuff.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'What is it like out there?'[or]'Have you had a chance to stop by my place yet?'[or]'Don't forget about that little errand I asked you to run.'[in random order]";
	else if hp of Orthas is 6:
		say "[orthas_task2_done]";
		now hp of Orthas is 7;
	else if hp of Orthas is 7:
		say "     [one of]'Hey there, how's momma?'[or]'Hey there, hot stuff.'[or]'You are pretty brave to wander the city right now.'[or]'I would explore too if I wasn't guarding the doctor.'[or]'You be sure to come back to me, hon.'[or]'What is it like out there?'[or]'You keep doing your best to help the doc so we can all get out of here safe and sound.'[or]'I'm proud of you for braving the city to help the doc.'[or]Orthas gives you a hug, running her scaled hand over your [if gestation of child > 0]rounded belly. 'Mmmm... you're so pretty when you're preggers,[else]belly. 'Mmm... looks like someone needs an egg in them,[end if]' she rumbles.[in random order]";


Section 2 - Orthas Task 1 - Guard Duty

after going east from Trevor Labs Lobby when the hp of doctor matt is greater than 2 and hp of Orthas is -1:
	now hp of Orthas is 0;

[instead of going east from Trevor Labs Lobby when the hp of doctor matt is greater than 2 and hp of Orthas is 0 and orthas is visible:	]
after going down from 2F Trevor Labs when the hp of doctor matt is greater than 2 and hp of Orthas is 0 and orthas is visible:
	move player to Trevor Labs Lobby;
	[(This arc written by Khabi)]
	say "     As you enter the downstairs area of the lab, Orthas, the dragoness who has been guarding the good Doctor this whole time, stops you. She's probably six and a half feet tall, and a rather imposing figure, but there is no malice apparent in her appearance.";
	say "     'Hey --- you've been helping out the doctor. I figure I could talk to you for a while, as someone else who was interested in doing so.'";
	say "     [bold type]She offers to tell you her story, if you'll stay and listen.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		LineBreak;
		say "     'I worked here before the outbreak,' she begins. 'I was a security guard then, too, a big fella. Yeah, I was male before this all started --- I've gotten used to being female and dragon-y. Anyway, after the outbreak, most of the people in the lab panicked. But Doctor Matt stayed here, and so I decided to stay and protect him. Since the Doctor is doing his part by staying in the city and learning what he can about... whatever is causing this --- I don't pretend to know half of what comes out of his mouth --- I decided to stay and keep an eye out for him.'";
		WaitLineBreak;
		say "     'More than a few of the more... feral creatures out there have broken into the lab. So it was one of them that got a better hold of me than I would have liked, and that's what triggered me changing into... this form. On the other hand, I found that switching genders and gaining some scales --- and claws --- have definitely not made my job any harder.' ";
		say "     She looks at you thoughtfully. 'You know, you look like you can handle yourself in a fight. Can I ask you a favor? I'd like you to guard the doctor for a while, while I take care of something in the basement.' (Y/N?)";
		if the player consents:
			say "     As soon as the door closes behind the dragoness entering the basement, the front door of the lab is forced open by one of the creatures from outside!";
			now battleground is "Outside";
			fight;
			say "     Seemingly as soon as you're finished with the first creature who entered, another one pounds at the door with force and gets inside!";
			fight;
			say "     After a while, the surrounding area around the lab seems to calm down. It doesn't take too long for Orthas to return from downstairs --- but she looks disheveled, lost, and confused. Quickly rushing to her aid, you help her over to the lounge area where she spends much of her time. As she looks up at you, you begin to realize that she is flushed and looking at you with what you can only assume is lust. It is somewhat similar to the lust-addled looks you've gotten from other infected creatures out in the city. She licks her lips and eyes you closely, looking over your body, and sniffing closely at you, and you're not totally sure why.";
			say "     'Mmm.. you smell really good,' she says, her eyes looking at you with a gaze positively filled with lust. 'I know I'm not looking my best... but you don't want to have a romp with me, do you?' She smiles at you widely --- you can practically smell the heat coming off of her. (Y/N?)";
			if the player consents:
				say "     She lets out a toothy grin, as she reaches up with strong arms and pulls you down into a kiss. Her long tongue wraps around yours, as her other hand rubs over your body, which already has begun to respond to her actions. She pulls off the kiss after a moment, and rips off the rest of her clothes, what's left after her visit to the basement. Her body is toned and athletic, looking practically amazonian to your own lust-filled eye. Her hands caress every part of your body for a moment, before assisting you out of your own clothes.";
				now the icon of Orthas is figure of Orthas_icon;
				project the icon of Orthas;
				if cocks of player is greater than 0:
					say "     'Ooooh... you're quite the stud!' She says, getting a good gander at your manhood, already reaching past half-erect just from the arousal of the moment and the sight of your body. It doesn't take her long to get into a position for you to take her --- laying on her back on the seat cushions, in fact. 'Mmm! Come on big boy, give me what you can provide!' An idle thought passes through your mind about whether dragonesses would lay eggs or have live young, but all thoughts thereof are lost on you as you push into her sweltering depths.";
					WaitLineBreak;
					say "     In a matter of moments, your hips are firing roughly into hers and your maleness is stretching her walls, the dragoness['] muscles stretching and contracting to become a perfect fit over your member. She herself has her tongue lolling out of her mouth, and her hands squeeze at her hefty bosom while you ride her. Her pussy muscles seem to be working overdrive on your member, and she is practically roaring in pleasure so loud that you're certain the Doctor on the floor above can hear her loud and clear.";
					WaitLineBreak;
					say "     Before long, you realize that your pleasure is reaching its peak before you had even begun to realize it, her pussy walls clamping down on your cock in such a way that they seem to be practically milking it for your cum --- which, in fact, they are. But they prove successful, and you paint the deepest depths of her cunt with gouts of your seed, and her own slit gushes her femcum over your writhing member and balls.";
					WaitLineBreak;
					if cunts of player is 0:
						say "     Orthas blinks and moans out in lust. With a shock, you both realize that her belly has begun to swell out into what obviously must be pregnancy, but with vastly more speed than you have ever seen. At the same time, your member is slowly pushed out of her sex by.. something. She is blushing a deep red when she sees that it is a lengthy, tapered... almost tentacle-like, really, phallic thing. Thinking quickly, you help her up and hustle up to Dr. Matt.";
						say "     'What are you --- oh my!' Dr. Matt immediately rushes into action and starts examining Orthas, both her expanding belly and the odd pink organ sprouted from her sex. 'Well, I think I know what's happened. Orthas, you have an ovipositor. What that means is, when you are inseminated, you will be able to... implant eggs into willing or unwilling subjects.'";
						WaitLineBreak;
						say "     'Well, that's a relief,' she says sarcastically, holding her swollen belly.";
						WaitLineBreak;
						say "     'It only swells up this quickly, Orthas, you will not immediately have to lay the eggs. What basically happens is that you will now have the ability to eject the eggs at will, with some effort. Each insemination should give you two or three eggs, fairly small size --- the size of your inflated belly is related to what parts of your genetics are still mammalian. I will have to do a large amount of study on this matter, and I assume you will be willing to help?'";
						now hp of Orthas is 3;
[						stop the action;]
					else:
						say "     Orthas gets a funny look on her face, one that you've seen more in the lust-filled beasts on the outside. She rises and pushes you off of her, licking at her lips. Slowly, you begin to realize that her belly has begun to inflate into what appears to be a pregnancy but far more quickly than any you have ever seen. And if this was not a sexy enough scene to drive any watcher wild, she moans hotly as her sex begins to push. She begins to masturbate frantically, driving her fingers deep into her snatch --- still possessing of some of your cum --- and in moments, her sex distends and a long, pink, tentacle-like organ appears constantly dripping what seems to be lubricant that is a milky white.";
						WaitLineBreak;
						say "     In your shock, you don't even realize what's happening as she locks her lips with yours again, kissing you hungrily. Her breasts press into yours, her heavy belly pushed into your body --- when her organ finds its way behind your balls into your slit. The writhing member is constantly shifting and moving as she thrusts her hips, hilting you in seconds. You would complain, if that wonderful member didn't feel so damn good. She moans hotly, her body quivering as it adjusts to a new kind of activity.";
						WaitLineBreak;
						say "     Her 'cock' is straining, pushing, and for a second, it pops through your cervix. Her eyes go wide, and her pupils dilate, as once she pops it through again, her hips go still. You can feel a large pressure at the base of the organ --- she doesn't have a knot, does she? That's when you realize, all of a sudden, that the 'knot' is moving up her appendage. You try to move, but she has you pinned, her draconic strength working to her advantage here. The 'knot' continues up her member, and after several small orgasms, you can feel it slip through your cervix, into your womb. This is accompanied by a monstrous orgasm that knocks you out cold through its sheer strength.";
						WaitLineBreak;
						say "     You awake to Dr. Matt examining both you and Orthas in his lab. He's muttering about 'ovipositors' and 'astounding' and things like that. When you get his attention, he stands and nods. 'Ah, you're awake. Good. Allow me to explain what happened. Orthas went into the basement to fight something the lab keeps down there for... study, to destroy it, I assume. However, it got the best of her.'";
						WaitLineBreak;
						say "     She scoffs. 'I almost had it,' she mutters.";
						say "     'Anyway,' continues the good doctor, not appreciating being so interrupted. 'It defeated her, but instead of destroying her, it raped her and the result is this change to her physiology. The organ there is an ovipositor --- when she is inseminated, two to three eggs will swell to gestation, and then the organ will reveal itself. She can then implant the egg in a willing or unwilling partner. Alternatively, she can release the eggs in a more conventional manner, and do with them as she pleases.' He looks down his glasses from behind the mask of his bio suit. 'I trust you will both be more careful in the future.' He turns back to his work, before turning back around and looking at you. 'And by the way, you're pregnant.' Orthas blushes profusely.";
						Impregnate with "Dragon";
						now hp of Orthas is 4;
[						stop the action;]
				else if cunts of player is greater than 0:
					say "     She smiles warmly, and she licks down your body using her skilled tongue. Before long, after playing her tongue over your soft breasts and hard nipples, she trails her tongue over your belly button and drifts down to your heated vent. It doesn't take her very long to have her long tongue playing deep inside your slit, your thighs tightly clasped around her head in pleasure. She is working wonders with her tongue, as you lay back, your eyes closed. Your slit leaks your fluid all over the char she has you leaned back in, before she pulls back for a moment. Then, you are treated to a curious surprise.";
					WaitLineBreak;
					say "     Orthas leans back and furiously masturbates, her fingers pushing deeper and deeper, before she pulls them out.... pulling something else out with them! She rubs at the pink tendril --- appearing appendage, which leaks a thick white fluid that appears to be quite different from cum. And before you have time to react, she has used her surprising speed to push the writhing appendage, almost tentacle-like in appearance, at your slit --- which she then pushes inside. Before you can even complain, her hips are pumping and the appendage --- that you still aren't even sure what it is --- is wiggling inside of you.";
					WaitLineBreak;
					say "     As your mind goes blank in pleasure, you can hear her moaning in pleasure as she fucks you, and she too seems to be enjoying herself. Eventually, she brings you to a mind-altering climax, her shifting member driving you wild as she ejects lubrication into you with her orgasm, moaning out in pure pleasure as she does.";
					WaitLineBreak;
					say "     After a while, you come back to reality, and Orthas is sitting next to you, looking completely female again. She looks apologetically at you as you pant and your mind tries to register what happened. 'I'm sorry... something happened with the thing down there... it gave me this, and I'm not sure what it's for. But in the heat of the moment, I could feel it aching to go inside you, and it seemed so right...' she looks confused, cautious, and hurt, but after some calming words from you, she calms down, and nods to herself. 'I'm going to have to figure out what this thing is for,' she says, and she seems to be considering going up to ask Dr. Matt. She asks you if you want to find out, as well.";
					if the player consents:
						say "     After some brief instruction from Dr. Matt, it becomes clear to both of you that what Orthas has gained is an ovipositor. If she is impregnated by a male or herm, she will start swelling up with eggs, and she will be able to use it to push those eggs into willing or unwilling partners. She gets a devilish look in her eye and smiles. 'Hmm... now to find a dick...' she mutters. You leave the lab a little bit more wary, but definitely feeling energized from the sex.";
						now hp of Orthas is 3;
[						stop the action;]
					else:
						now hp of Orthas is 2;
						say "     'Well, if you come back later, I'll surely know what it's for,' she says.";
[						stop the action;]
			else:
				say "     She looks extremely disappointed, but nods, understanding. 'Yeah, it has to seem strange, doesn't it? Well, if you come back, the offer still stands.'";
				now hp of Orthas is 1;
[				stop the action;]
		else:
			say "     She looks at you, disappointed. 'Well, alright. I'll stay at my post then. But if you change your mind, come back.'";
			now hp of Orthas is -1;
[			continue the action;]
	else:
		LineBreak;
		say "     'Oh, well that's alright then,' she says, seeming disappointed. 'Come back, if you want to talk.'";
		now hp of Orthas is -1;
[		continue the action;]


Section 3 - Orthas Task 2 - Mementos

to say orthas_task2_start:
	say "     'Look, I was wondering if you could give me a hand again. It shouldn't be as much trouble as my last favour turned out to be - how was I to know those beasts were waiting for me to leave my post?  It's lucky I wasn't just going go to the washroom or something and had actually gotten a replacement guard,' she says with a grin.";
	say "     From your glare at her for having to be that replacement to be attacked, she coughs and gets back to the original matter. 'Well, as I was saying, this means I can't really be leaving my post to go running around in the city. Now as I've said, I'm not too attached to my old life, but there is a few things I'd like to hold onto. I'd really appreciate it if you could go to my old place and pick up a few of my things for me,' she says, putting added emphasis on her appreciation with a rumbling purr and a teasing talon stroke. Her tail winds around you, pulling you in close to her. 'You'll do that for me, won't you?' she says, licking your cheek and nibbling your ear. You moan and nod, hardly thinking about it and just wanting to get the dragon's favour.";
	say "     Orthas smiles and gives you a quick kiss. 'Thanks, hon. Now, my place is off near the Red Light District of town. Hey - don't give me that look! It wasn't that kind of neighbourhood when I first moved there and... well, there wasn't much point in moving away after- Look, nevermind that! Here's the address. ";
	if Entrance to the Red Light District is unknown:
		say "     And from the info I've gathered from some of the others scavengers who've been in through here, this route should at least get you into the area.'";
		now Entrance to the Red Light District is known;
	say "     Having given you the address on a slip of paper, the dragoness stomps back to her post. Well, it sounds like a trip to find [bold type]Orthas's house[roman type] is in your future.";
	now Orthas's House is unresolved;


Orthas's House is a situation. The level of Orthas's House is 5. It is resolved.
The sarea of Orthas's House is "Red".

instead of resolving Orthas's House:
	if hp of Orthas is not 5:
		say "ERROR-Orthas-[hp of Orthas]E: Incorrect event activation.";
	else if hp of Doctor Matt > 100:
		say "     You end up wandering in the vicinity of the address Orthas gave you. Thinking about what you've done to her, you crumple up the paper and toss it away. There's no real point in going there at this point.";
	else:
		say "     Wandering the residential side-streets around the sexually charged neighbourhood, you manage to find the street name on Orthas's note. Following the numbers, you come to what was probably once a very nice two-story home with a white picket fence around the yard. Like most of the homes on this street, the place has already been broken into and raided by scavengers and/or horny mutants. But the current state of the place seems to be more than that, looking like it's been poorly maintained for some time.";
		say "     Moving cautiously, you step inside. For a home of this size, it feels surprisingly cold and empty. There's only a few pieces of furniture, no family photos, only one coat and pair of shoes by the door. After taking a peek in the kitchen to find it picked clean by earlier looters, you head upstairs to get the dragon's old stuff. The feeling of emptiness is even stronger there with the two smaller bedrooms being unused save to store a few boxes. The few furnishings of the master bedroom includes only a small bed and dresser.";
		say "     As instructed, you open the bedroom closet and take out the footlocker from inside. Picking it up, you find it like the rest of the house - mostly empty. While a little cumbersome and a little heavy, you can carry it easily enough. Digging a little further into the closet, behind some suit bags and a military dress uniform, you find something more useful to you - a crossbow and quarrels. You grab it and, finding the mechanism still works, head off to find something to use for target practise.";
		say "     Hoping for more useful stuff, or at least useful targets, you move on to searching the rest of the house. Unfortunately, the noise of your rummaging around draws the attention of some nearby creature. You have to toss aside your new toy, having shot all its quarrels, and turn to face the kangaroo woman who's burst into the room.";
		challenge "Red Kangaroo";
		if fightoutcome <= 29:
			say "     Your encounter with the randy female over, you decide to just make your escape, having had no luck since your initial find aside from the collection of Elvis collector plates you'd been using for crossbow practise. While you suspect the noise of that was the source of your troubles, it was quite a bit of fun. Regardless, you leave the place with the footlocker in tow and your new toy slung to your pack.";
			now carried of crossbow is 1;
		else:
			say "     Making your escape from the house and the randy roo, you grab the footlocker you came here for, but have to abandon the crossbow and its spent quarrels. Maybe it wasn't such a good idea to use those Elvis collector plates for target practice.";
		now carried of footlocker is 1;
		now hp of Orthas is 6;
	now Orthas's House is resolved;

to say orthas_task2_done:
	now carried of footlocker is 0;
	say "     Giving the footlocker to Orthas, she takes it with less eagerness than you expected. After taking a deep breath, she opens it up and reviews its contents quietly. Among the items you see are a case of medals, a plaque of commendation and a framed photo. She takes out the photo with a sad sigh. It is a picture of a happy couple in front of the house you were in earlier. The strong, handsome man has his arm around the lovely woman, her belly somewhat rounded with her oncoming pregnancy.";
	say "     'My wife. Well, my ex-. She ended up leaving me before our baby was even two.' She pulls out another photo, showing a brown-eyed baby girl. 'She left me a month after I went back on duty. She didn't even tell me. Just up and left a note saying I was never around because of the service. By the time I got back and found out, she'd left town and shacked up with a new guy.";
	say "     'That was all years ago,' she says setting the photos upside down. 'I resigned my commission and eventually ended up doing security here. Since this place is military affiliated, an old commander of mine put in a good word and pulled a few strings for me. Besides,' she says tapping her medals['] case, 'spec ops training looks real good when applying for this sort of job.'";
	say "     She tosses the stuff back into the box and closes it up. 'Look, I didn't get much of a chance to prove myself as a parent or husband, but I know I can do it.' She wraps her tail around you, pulling and turning you into a hug from behind with her hands on your [if gestation of child > 0]pregnant [end if]belly and her wings around you. 'My old life ain't really worth remembering, but I don't want to forgot to do better this time around. Now, I can't promise to be around all the time - the doc's work's important and someone's got to protect him. But I figure someone like you'll understand that a bit better as sometimes there's things you've got to take care of too. Once we're out of this mess, I'll be around for you and the eggs when you need me.'";
	WaitLineBreak;
	if cocks of player > 0:
		say "     Orthas nips along your neck and grinds her hips against your ass. A hand wanders down to your [cock size desc of player] cock as her touches become more erotic. After fondling you to erection, she nuzzles down your side and gets you to turn back around so she can sink your [cock of player] manhood into her muzzle. Her maw is hot and her long tongue twines around your shaft, getting you to moan as pre drools from your cumslit. She works her mouth over you, careful of her teeth, and gives you quite the blow job.";
		say "     Once she's gotten you good and horny, she lays herself back across her security desk, wantonly spreading her legs. With a tantalizing grin, she fingers her dripping snatch before spreading her folds invitingly. 'Come on, lover,' she purrs sensually and you can hardly resist such an invitation. Tossing aside your gear and moving into position, you grab her legs and drive your throbbing cock into her cunny, causing the dragoness to cry out lustfully. You pound away at her, giving her the thorough breeding she desires.";
		say "     The dragoness's strong inner muscles, capable of dealing with pushing out her eggs, squeeze and massage around your thrusting member, increasing the pleasure for both of you. The thought of dumping your load in her and there being an egg produced right away makes you feel like a virile stud, eager to knock up this fecund scaled beauty. Nuzzling her bosom, you lick and kiss her nipples, telling her how sexy she looks and how you're looking forward to putting an egg in her. To this she grins and licks your cheek with her draconic tongue, rumbling how she's looking forward to putting her egg in you.";
		say "     Before you can respond to this, the squeezing and milking of her vaginal walls intensifies as her orgasm begins with a roar. Under the powerful stimulation her quivering cunny provides, you don't hold out much longer and are soon blasting your gooey seed into her womb. By the time you're done emptying your load into her, she's already sitting up and rolling you over onto your back. Pulling off your spent shaft, she lets her emerging ovipositor slap wetly against it with a lustful grin. ";
		now calcnumber is 0;
		if cunts of player > 0:
			say "     Knowing what she's after, shall you let her pop that egg [link]into your womb (1)[as]1[end link], [link]into your ass (2)[as]2[end link] or [link]onto your belly (3)[as]3[end link]?";
		else:
			say "     Knowing what she's after, shall you let her pop that egg [link]into your ass (2)[as]2[end link] or [link]onto your belly (3)[as]3[end link]?";
		while ( cunts of player is 0 and calcnumber is 1 ) or ( calcnumber < 1 or calcnumber > 3 ):
			say "Choice? ([if cunts of player > 0]1[else]2[end if]-3)>";
			get a number;
		if calcnumber is 1:
			say "     Orthas rumbles sexily as you guide her dripping ovipositor to your pussy. You moan as that cock-like member penetrates you, pushing past your juicy folds and diving into your depths after only a few thrusts. Wrapping your legs around her waist, you goad her to fuck you, not that she needs any encouragement on that score. Her pulsating rod drives into you again and again as it leaks slick lubrication to prepare you for what's to come. And seeing her belly swelling up, you know it's coming soon.";
			say "     Panting heavily as the egg starts to move, Orthas grabs your shoulders for support. Her ovipositor presses at your cervix, working it open even as you can feel the bulge of the egg start to force your folds to spread open. After some initial difficulty, your body adjusts and soon you're sharing the dragoness's pleasure as the firm ovoid makes its journey into your womb. You climax again as you feel it finally settle into your uterus with a good splatter of the dragoness's fluids.";
			if the gestation of the child is greater than 0:
				say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
				decrease gestation of child by a random number from 5 to 10;
				if gestation of child is less than 1, now gestation of child is 1;
			else if player is impreg_able:
				say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
				impregnate with "Dragon";
				now pregtype is 1;
			else:
				say "     Rubbing your rounded belly, you can feel the egg breaking back down into a gooey mix of semen and lubricating fluids that fill you with warm feeling of pleasure.";
		else if calcnumber is 2:
			say "     Orthas rumbles sexily as you guide her dripping ovipositor between your ass cheeks. She grinds against your back door, making sure to send several spurts of lubricating fluids onto and into that stretching ring. And once she's gotten you good and lubed up, she drives that cock-like member into you, pushing past your anus and into your warm bowels. Wrapping your legs around her waist, you goad her to fuck you, not that she needs any encouragement on that score. Her pulsating rod drives into you again and again as it leaks more slick lubrication to prepare you for what's to come. And seeing her belly swelling up, you know it's coming soon.";
			say "     Panting heavily as the egg starts to move, Orthas grabs your shoulders for support. Her ovipositor throbs deep inside you as you can feel the bulge of the egg start to force your back door open even wider. After some initial difficulty, your body adjusts and soon you're sharing the dragoness's pleasure as the firm ovoid makes its journey into your rectum and then into your bowels. You climax again as you feel it finally settle into your [if the player is mpreg_ok]hidden womb[else]belly[end if] with a good splatter of the dragoness's fluids.";
			if the player is mpreg_ok:
				if the gestation of the child is greater than 0:
					say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
					decrease gestation of child by a random number from 5 to 10;
					if gestation of child is less than 1, now gestation of child is 1;
				else:
					say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
					impregnate with "Dragon";
					now pregtype is 2;
			else:
				say "     Rubbing your rounded belly, you can feel the egg breaking back down into a gooey mix of semen and lubricating fluids that fill you with warm feeling of pleasure.";
		else:
			say "     While she seems a little disappointed that she's not going to be putting her egg in you, she does moan happily as you take her cock-like member in both hands and start pumping it. Lubricating fluid from it drools out onto your belly as you pump the pulsating flesh. As her excitement builds and her belly swells up, you stroke faster, pressing her ovipositor alongside your cock so they're being stroked together.";
			say "     Panting heavily as the egg starts to move, Orthas grabs your shoulders for support. Her ovipositor throbs against your manhood as you can see the bulge of the egg moving into the external portion of her pseudo-shaft. With your helpful stroking, the ovoid makes its journey through and out, plopping out onto your tummy with a gooey splatter of lubricating fluids. It gets further messy with a sticky blast of your semen as you climax again, aroused to orgasm by the strangely erotic experience.";
	else if cunts of player > 0:
		say "     Orthas nips along your neck and grinds her hips against your ass. A hand wanders down to your [cunt size desc of player] pussy as her touches become more erotic. As her caresses get you wet, she nuzzles down your side and gets you to turn back around so she can lip at your juicy folds. Her breath is hot and her long tongue glides into your cunny, getting you to moan as she drinks of your honeyed waters. She delicately teases your clit, getting you all the more worked up.";
		say "     Once she's gotten you good and horny, she strips off your gear and lays you back across her security desk. 'Come lover, I want to be inside you again,' she rumbles. You spread your legs as you eye her drooling ovipositor, now emerged from her slit, with a lustful hunger. Grabbing your ankles, she raises your legs into a V-shape and moves into position. Her tentacular-shaft brushes across your sensitive folds before sliding into you with a wet slurp. With a grin, she has it wriggle and ripple inside you, causing you to moan again.";
		say "     Showing more proficiency with her phallic tentacle than when she'd first used it on you, she has it ripple and wriggle inside you in unusual, but thoroughly pleasing ways. You can't help but moan as it works its way deeper, probing to your very depths to kiss at your cervix. Having no egg to deposit, she contents herself with merely brushing against the entrance to your womb while moaning that she hopes to put another one in there soon. With the image of that in her mind, she roars out in orgasmic delight, sending a gush of lubricating fluids into your cunt. Feeling those waves of fluid being pumped into you sends you over the edge and your cry of release joins hers.";
	else:
		say "     Orthas nips along your neck and grinds her hips against your ass. A hand wanders down to your bare groin as her touches become more erotic. As her caresses get you panting, she slips off your gear and pushes you down over her security desk. 'Oh, my poor lover, left with nothing for us to play with.' Grinding her hips harder against your rear, you feel her slick ovipositor emerging and gliding between your ass cheeks to kiss at your anus. 'Nothing but this, that is,' she rumbles lustfully as her lubricating fluids drool onto and into that stretching ring.";
		say "     Before you can respond, her cock-like member emerges further, pushing past your anus and into your warm bowels. You moan as you're penetrated, that phallic tentacle of hers strangely pleasurable as it undulates inside you. With her strong hands on your shoulders, she rumbles and nuzzles at the back of your neck while she fucks your tight ass. She shows more proficiency with her unusual member than when she'd first used it on you, having it ripple and wriggle inside you in strangely erotic ways. You can't help but moan again as it works its way deeper, probing deep inside you. Having no egg to deposit, she contents herself with buggering you thoroughly while moaning that she hopes to put another egg in you soon. With the image of that her mind, she roars out in orgasmic delight, sending a gush of lubricating fluids into your bowels. Feeling those waves of fluid being pumped into you has you cry out in bliss, your anal walls squeezing and milking at it for more.";
	say "     After that's all over with, she cuddles with you, giving you licking kisses[if player is impreg_now] while stroking your belly[end if][if crossbow is owned]. When her gaze wanders over to your pack, she smiles. 'Oh, so you found my crossbow, did you?  Well, you keep it if you like it. I expect you'll get more use out of it and I'd feel better knowing you've got it to protect you.' She[else]. She[end if] pauses for a moment. 'Say, did you happen to see my Elvis collector's plates?  I feel bad for having to leave The King behind. Could you maybe go back and get them for me?' she says, twirling a finger along your chest in a way that would be sexy had your blood not just run cold.";


Table of Game Objects (continued)
name	desc	weight	object
"footlocker"	"     The small footlocker you've retrieved from Orthas's house. It's bulky, but thankfully nowhere near full."	15	footlocker
"crossbow"	"A sporting crossbow. More for target practise than actual hunting, but still a fine and intimidating weapon. There's a good sized set of quarrels to go along with it as well."	8	crossbow

footlocker is a grab object.
it is part of the player.
It is not temporary.

instead of using footlocker:
	if hp of Orthas >= 7 or hp of Doctor Matt >= 100:
		say "     There's no point in hanging onto this bulky thing any longer, so you get rid of it.";
		now carried of footlocker is 0;
	else:
		say "     The footlocker's locked. You don't think Orthas would be pleased with you prying into her personal stuff.";

the scent of the footlocker is "There's no particular scent to this.".

crossbow is armament. It has a weapon "[one of]a quick shot[or]a well-aimed shot[or]your crossbow[or]a crossbow quarrel[or]a launched quarrel[at random]". It is ranged. It is not temporary. It is a part of the player. The weapon damage of crossbow is 6. The objsize of crossbow is 3.


Section 4 - Sex with Orthas

to say orthasfuck:
	if orthas is not visible:
		say "Who?";
	else if hp of Orthas is less than 2:
		say "     'I am flattered, really, but no thank you.'";
	else if lastfuck of Orthas - turns is less than 12:
		say "     'Even I need a moment to breathe, hon, you come back later.'";
	else:
		now lastfuck of Orthas is turns;
		if cocks of player is greater than 0 and cunts of player is less than 1: [ male player ]
			say "     'Well, fine, but be sure to come by later if you get somewhere for me to plant them,' she says, remembering last time. She disrobes, revealing her toned, athletic body once again, unveiling her good sized breasts --- that seemed to grow a bit after her first pregnancy --- and runs her hands over your tight, sexy male form as well, waiting to get at what she knows is down in your drawers.";
			say "     And before long, she's got it! The sultry dragoness is on her knees between your legs, her lovely bosom wrapped around your cock, and the tip of the member poking through her cleavage is firmly embedded in her mouth. Her long draconic tongue is running circles around your member, teasing you all the way to full erection. She leans over the couch, and lifts her long, muscular tail, exposing her tight pussy lips. You know what lies hidden there, but it doesn't deter you in the least, making you smile as you grip her hips and stab your member home.";
			WaitLineBreak;
			say "     She howls out her pleasure again, prompting Dr. Matt to stomp on the floor, as you energetically fuck her. She runs her muscular hips back into yours, pleasure rising quickly in both of your bodies as you quickly push toward climax. Nearly as soon as your massive orgasm overtakes you, you can already feel her shifting tightly, her belly beginning to inflate. She looks at you hungrily as she watches your body there, and she flips over, licking her lips. 'Mmm... hey, do you wanna help me with this?'.";
			say "     [bold type]She holds up her ovipositor, and she smiles cutely, trying to goad you into [']helping['] you with her egg [']problem['].[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Help.";
			say "     ([link]N[as]n[end link]) - Dont break.";
			if the player consents:
				let oraltemp be 1;
				if "MPreg" is listed in feats of player:
					say "     You are about to start stroking and licking her cock-like ovipositor when you feel a stirring in your lower belly, causing you to moan. Remembering your hidden womb, you could take her egg in another manner. Shall you ride her and get that egg deposited inside you?";
					if the player consents:
						now oraltemp is 0;
						say "     Heeding your kinky desire, you climb onto the dragoness's lap. 'What are y...' she starts to ask before you get her slick ovipositor lined up with your pucker and you start sinking yourself down onto it. She moans in surprise and pleasure as you sink yourself down onto her 'shaft' and start riding eagerly. It doesn't take Orthas long to get to the point where her egg is pushing up her 'shaft', and you can feel it pressing hard at your anal opening, and somehow, the egg finds its way past your tight anal ring, passing further up her shaft. After a few more tense moments of mixed pain and pleasure, the egg finishes its journey up there, and pops out of her shaft and slides into your womb from its back entrance. You moan in kinky pleasure at having taken her egg in such a manner.";
						if the gestation of the child is greater than 0:
							say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
							decrease gestation of child by a random number from 5 to 10;
							if gestation of child is less than 1, now gestation of child is 1;
						else:
							say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
							impregnate with "Dragon";
							now pregtype is 2;
							if hp of Orthas < 4, now hp of Orthas is 4;
				if oraltemp is 1:
					say "     'Mmm.. then get down there and do it!' She begins to massage her breasts, pinching at her nipples --- you're a bit surprised to see that she lactates when she's swollen up like this. But her ovipositor waits, and so you set about your task with gusto, licking up the pink length as it writhes in your hand. You know you don't have to do this, but you want to. In a few moments, the first of her three eggs is sliding up and you take control, rubbing at her [']member['] below the base of the bulge, lifting the egg further up her lubricated ovipositor. With a keening cry of pleasure, the egg pops out of her [']dick['].";
					say "     After two more, she lifts you up and gives you a big sloppy kiss. 'Aaaah... you're wonderful, you know that?'";
			else:
				say "     'Awww!' She giggles. 'And here I thought I was going to get you to suck them out,' she says.";
		else if cunts of player is greater than 0 and cocks of player is less than 1: [ female player]
			let seed be 0;
			blank out the whole of table of itemselection;
			repeat with Q running through owned cum grab objects:
				choose a blank row in table of itemselection;
				now object entry is Q;
				now holding entry is carried of Q;
				now objname entry is printed name of Q;
			if there is no object in row 1 of table of itemselection:
				now seed is 0;
			else:
				let tappeditem be pocketknife;
				if the number of filled rows in table of itemselection is 1: [If there is only one relevant item]
					choose row 1 in table of itemselection;
					now tappeditem is object entry;
					say "     She sniffs, and reaches into your pockets, and pulls out the little vial of [tappeditem] that you have, and she gets a wonderful idea. A terrible, wonderful, awful idea.";
					say "     [bold type]'Hey... mind if I use this?' she asks, coyly.[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Yes.";
					say "     ([link]N[as]n[end link]) - No.";
					if player consents:
						LineBreak;
						now seed is 1;
						delete tappeditem;
					else:
						LineBreak;
						say "'Awww!' She pouts. 'Well, we can still have fun!'";
				else:
					sort table of itemselection in object order;
					say "     She sniffs, and reaches into your pockets, and pulls a number of your cum-filled containers that you have, and she gets a wonderful idea. A terrible, wonderful, awful idea. 'Hey... mind if I use one of these?' she asks, coyly. (Y/N)";
					say "[bold type]Select Cum:[roman type][line break]";
					say "[bracket]The effect is the same regardless of choice[close bracket][line break]";
					repeat with y running from 1 to number of filled rows in table of itemselection:
						choose row y from the table of itemselection;
						say "([y]) [link][objname entry][as][y][end link] [bold type]([holding entry])[roman type][line break]";
					LineBreak;
					say "(0) [link]Don't use seed[as]0[end link][line break]";
					while tappeditem is pocketknife:
						say "Choice? (0-[number of filled rows in table of itemselection])> ";
						get a number;
						if calcnumber > 0 and calcnumber <= number of filled rows in table of itemselection:
							choose row calcnumber in table of itemselection;
							now tappeditem is object entry;
							say "     You choose [tappeditem].";
						else if calcnumber is 0:
							now tappeditem is journal;
				if tappeditem is not journal:
					now seed is 1;
					delete tappeditem;
				else:
					say "'Awww!' She pouts. 'Well, we can still have fun!'";
			if seed is 0:
				say "     'As payment, get down and please me!' She giggles, as she stands and gets naked, smiling as she exposes her tight slit to you. You know what's held within, but you don't care --- after all, you'll be riding it later. She moans hotly as you take your tongue and put it to good use against her slit. Her pussy is practically dripping even after only a few licks. Your lips are set against her pussy lips, your hands gripping her tight, muscled ass as you push your tongue deeper, harder.";
				say "     It doesn't take all that long for a minor orgasm to hit the dragoness, and trigger the appearance of her 'member'. You can feel it pushing out of her sex from the tip of your tongue, and you're giving her an entirely different kind of oral for a couple moments, before she smiles and tips you back. 'Alright, you're ready.. I can smell you.' She smiles and lays down on the floor, her 'cock' pointed skyward, purring a little.";
				WaitLineBreak;
				say "     You scamper aboard and climb atop her 'cock', moaning as it penetrates you deeply. Her pleasure is already at a peak, but it is you now who gets to enjoy this pleasure for a long time. You can feel her ovipositor releasing its lube into you with numerous small orgasms. It writes and twists inside you, driving itself into your deepest depths. With how active it is, it doesn't take long for you to yowl out in pleasure and climax over it, letting out a pleasured moan, and a particularly strong burst of the lube shows that Orthas enjoyed it too.";
			else:
				say "     'Mm, let's get down to business then.' She strips nude, and lays back deeply on the carpet, lifting her hips up. She empties the demon seed into her sex, and reaches down to massage and aid it deeper and deeper. In only a matter of moments, the seed takes hold and she lets out a pleasured moan --- her belly beginning to swell, her breasts swelling a bit with milk, as her ovipositor comes out, a bit of the purple seed still on it. She giggles, and rolls forward, her large belly pushing her [']member['] down as you get into a feral, doggy-style position.";
				say "     Her [']cock['] stabs its way into you, and she begins to fuck you earnestly, her [']cock['] straining as she pushes it deeper, deeper, still deeper. As you can feel it tapping at your cervix, you endure a rough orgasm, and then you feel one of the eggs pushing at your slit. Deeper the egg pushes, and eventually you can feel it stretching your walls['] deepest depths. It pops through into your cervix, and a rush of pleasure signifies that this session is temporarily over.";
				WaitLineBreak;
				if the gestation of the child is greater than 0:
					say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
					decrease gestation of child by a random number from 5 to 10;
					if gestation of child is less than 1, now gestation of child is 1;
				else:
					say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
					impregnate with "Dragon";
					now pregtype is 1;
					if hp of Orthas < 4, now hp of Orthas is 4;
		else: [ Herm ]
			if hp of Orthas >= 7 and a random chance of 1 in 2 succeeds and bodyname of player is not listed in infections of TaurList:
				say "     You give Orthas that look and she grins. 'Aw yeah! Let's do this!' she says eagerly. She pushes you backwards over her security desk even as a hand gropes its way between your legs. Soon enough, you're getting hard in her scaly hand as she pumps your manhood to erection. Her draconic muzzle bends down to let her run her long tongue tease across your shaft before she envelops it in her steamy maw. The oral warm-up is brief but intense, her tongue playing across your dick as she sucks it. As she's wrapping up, she slips her muzzle lower to let her writhing tongue squirm into your cunt.";
				say "     With you more than ready by this point, she lays across the desk with her tail raised high and her toned ass on display. She gives her rear a tantalizing wiggle and reaches back between her legs to part her wet folds, showing you her welcoming, waiting vagina. Needing no encouragement, you're atop the black dragoness right away, grinding your [cock size desc of player] cock against her scaly rear before lining up and thrusting into her. She gives a lustful growl of pleasure and pushes back into your thrust. Her hot tunnel squeezes and milks at your cock, longing for the seed to fertilize her eggs.";
				WaitLineBreak;
				say "     You can't take too much of this intense ride and it's no long before your cum hard and strong into her, pumping your [cum load size of player] load into her. Your semen splatters against her cervix and it drawn past it as your lover gives orgasmic moans. You reach around her to grope her big melons while you drain your balls into her womb. And it's not long before her overactive uterus is hard at work preparing for the second stage of your fun, causing her belly to swell up quickly with the growth of her eggs. Knowing what's coming next, you've pulled out and Orthas has turned around to ready her emerging ovipositor.";
			else:
				say "     'Alright!' She can't even wait, as she drops down and gets your member out of your pants and/or sheath before she can even worry about whether you or she has disrobed. She has you half-hard before all the clothes can even come off, and when that's finally finished, the distraction complete, she finally pushes her head down, taking your whole member in as deep as she can, her fingers doing two things. One pair of fingers are fingering herself, the other pair are fingering your own slit.";
				say "     Just when you can scarcely take the oral stimulation anymore, she pops off your dick after one particularly long bob, panting softly as she catches her breath. She pushes you down and takes your dick into her pussy, already craving that cum deep inside her --- it seems this new physiology has made her quite the egg slut. The dragoness bounces on your cock as hard as she can, her incredibly strong cunny muscles working hard on that dick of yours.";
				WaitLineBreak;
				say "     You can't take much of this, and you cum hard and strong into her, moaning out in pleasure as even as the first bursts of your cum splash against her cervix, her body is already making ready for part two of this interaction. When your orgasm dies down, she has laid on top of you, her heavy breasts pressed into yours as her belly swells into yours. Before her belly has even finished swelling to its full size, she's already pulled off your dick and is coaxing out her ovipositor.";
			say "     [bold type]Would you like to take it in your cunt or ass?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Cunt.";
			say "     ([link]N[as]n[end link]) - Ass.";
			if the player consents:
				LineBreak;
				if hp of Orthas >= 7 and a random chance of 1 in 2 succeeds and bodyname of player is not listed in infections of TaurList:
					say "     Sitting on the edge of her desk, Orthas pulls you up into her lap, readying to drive that phallic tendril of hers into you. With your hand to guide it, you aim it towards your slit and moan as it wriggles into you. It worms its way into you with delightful pulses. Soon it's nudging at your cervix, working to tease that final barrier loose. With her tentacle [']cock['] rubbing through the full length of your vagina, she's able to drive you to another orgasm, a female-centric one this time, just as her egg is nudging its way past your pussy lips. Travelling through her rippling [']member['], it passes through your spasming tunnel and - with a few mind-numbingly pleasurable pushes - pops past your cervix to be deposited in your womb.";
				else:
					say "     Moving to the floor, Orthas lays down with her slick phallus at the ready. Climbing on, you push her [']cock['] toward your slit, and you already feel her pushing deep at your cervix --- it doesn't take long for it to reach full length, does it? She bobs her hips, but since she is in control of her eggs, she waits for you to get your pleasure first. But with the way that [']member['] bobs and weaves in your slit, it won't take you long at all, and as you climax, you feel the egg pushing at your slit, and forcing its way up your pussy into your womb.";
				if the gestation of the child is greater than 0:
					say "     The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
					decrease gestation of child by a random number from 5 to 10;
					if gestation of child is less than 1, now gestation of child is 1;
				else:
					say "     You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
					impregnate with "Dragon";
					now pregtype is 1;
					if hp of Orthas < 4, now hp of Orthas is 4;
			else if "MPreg" is listed in feats of player:
				LineBreak;
				if hp of Orthas >= 7 and a random chance of 1 in 2 succeeds and bodyname of player is not listed in infections of TaurList:
					say "     Sitting on the edge of her desk, Orthas pulls you up into her lap, readying to drive that phallic tendril of hers into you. With your hand to guide it, you aim it towards your back door and moan as it wriggles into you. It worms its way into your rectum with delightful pulses. Soon it's squirmed deep inside you and is nudging at that hidden second entrance to your womb. At this point, you're far too lustfully excited by the prospect of what is to come to think better of it. You start riding that undulating ovipositor for all you're worth while it works to tease that final barrier loose. With her tentacle [']cock['] rubbing along your sensitive rectal walls and pulsing against your prostate, she's able to drive you to another orgasm just as her egg is nudging its way past your anal ring. Travelling through her rippling [']member['], it passes through your spasming tunnel and - with a few mind-numbingly pleasurable pushes - pops past your secondary cervix to be deposited in your womb. This sends a kinky thrill through you and you masturbate yourself, both cock and pussy, until you're fully spent from your orgasm.";
				else:
					say "     Moving to the floor, Orthas lays down with her slick phallus at the ready. Deciding to avoid your cunt, you climb on but angle the ovipositor for your rear. As you sink down onto its slick length, you remember that your womb links in there as well, ensuring you'll get pregnant either way you take one of the dragon's eggs. But you are too lustfully excited by the idea to think better of it, and start riding eagerly. It doesn't take Orthas long to get to the point where her egg is pushing up her [']shaft['], and you can feel it pressing hard at your anal opening, and somehow, the egg finds its way past your tight anal ring, passing further up her shaft. After a few more tense moments of mixed pain and pleasure, the egg finishes its journey up there, and pops out of her shaft and slides into your womb from its back entrance. You moan in kinky pleasure at having taken her egg in such a manner.";
				if the gestation of the child is greater than 0:
					say "The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
					decrease gestation of child by a random number from 5 to 10;
					if gestation of child is less than 1, now gestation of child is 1;
				else:
					say "You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
					impregnate with "Dragon";
					now pregtype is 2;
					if hp of Orthas < 4, now hp of Orthas is 4;
			else:
				LineBreak;
				if hp of Orthas >= 7 and a random chance of 1 in 2 succeeds and bodyname of player is not listed in infections of TaurList:
					say "     Sitting on the edge of her desk, Orthas pulls you up into her lap, readying to drive that phallic tendril of hers into you. Rather than come out of this with another pregnancy, you guide it with your hand towards your back door and moan as it wriggles into you. It worms its way into your rectum with delightful pulses. Soon it's squirmed deep inside you as you ride that undulating ovipositor for all you're worth. With her tentacle [']cock['] rubbing along your sensitive rectal walls and pulsing against your prostate, she's able to drive you to another orgasm just as her egg is nudging its way past your anal ring. Travelling through her rippling [']member['], it passes with a kinky mix of pleasure and pain through your spasming tunnel and is eventually deposited deep inside your bowels along with a gush of gooey fluids. This sends a kinky thrill through you and you masturbate yourself, both cock and pussy, until you're fully spent from your orgasm. A pleasure you'll likely repeat a little later when the egg comes back out.";
				else:
					say "     Moving to the floor, Orthas lays down with her slick phallus at the ready. Deciding you don't need to come out of this with another pregnancy, you climb on but angle the ovipositor for your rear. You know that this egg will stretch you more than you've ever been stretched in that hole, but you don't care, knowing that you're more comfortable not carrying another child in the womb at the moment. It doesn't take Orthas long to get to the point where her egg is pushing up her [']shaft['], and you can feel it pressing hard at your anal opening, and somehow, the egg finds its way past your tight anal ring, passing further up her shaft. After a few more tense moments of mixed pain and pleasure, the egg finishes its journey up there, and pops out of her shaft, making you moan lustfully... the egg will come out later.";


Section 5 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

when play begins:
	add { "Dragon" } to infections of furry;
	add { "Dragon" } to infections of tailweapon;

to say losetoorthas:
	now fightstatus is 2;
	say "     The powerful dragoness strikes you with a mighty blow, you are sent flying out the broken door, landing in the hall. As you struggle to rise, you can see her inside, passing the microwave device across Dr Matt to halt the transformation, but it's clear that the damage is at least partially done. The doctor is fondling herself and Orthas even as the dragoness tries to help her, though the hybrid is sane enough to instruct Orthas to continue the process.";

to say beatorthas:
	now fightstatus is 1;
	say "     You manage to knock the dragoness senseless and look over her and the transforming Dr Matt.";

to say orthasdesc:
	choose row monster from the table of random critters;
	let debit be 0;
	if hardmode is true and level of player > 12, let debit be level of player - 12;
	now lev entry is 12 + debit;
	now hp entry is 150 + ( debit * 6 );
	now monsterhp is 150 + ( debit * 6 );
	now wdam entry is 10;
	if hardmode is true, now wdam entry is 12 + ( ( 2 * debit ) / 5 );
	say "[line break]     Orthas, the black dragon, steps forward to battle you. She stands about six and a half feet tall and has a very athletic body. Her bat-like wings are each about three feet long and folded onto her back at the moment. And while she may have large, F-cup breasts, they don't seem to affect her balance or ability to fight at all. Her eyes blaze with anger and thick smoke curls up from her nostrils as she moves to deal with you for your betrayal.";
	if Susan is in Primary Lab:
		say "     The dragoness is still rather woozy after the blow given to her by the doe. While it doesn't look like she'll be able to help you further with the fight, she has made the dragoness a little easier to deal with.";
		decrease monsterhp by 25 + debit;
		decrease wdam entry by square root of ( wdam entry - 8 ); [drops by 1 at regular, by 2 if wdam is 12, by 3 if 17...]
		decrease lev entry by 1;


Section 6 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Dragon"; [Name of your new Monster]
   now attack entry is "[one of]The dragoness slams into you, slamming you back against one of the tables![or]Orthas slashes out at you with her sharp claws, slashing you violently![or]The dragoness's sharp teeth dig into your arm, biting into your flesh![or]Despite her large size, the black dragoness makes a sweeping kick to your legs, sending you to the ground![or]Orthas's jaws move in, trying to bite your head. You manage to grab her head and keep her from getting you with a potentially lethal bite. As you struggle to hold her, she exhales a thick cloud of smoke and sparks that cause you to choke![or]Orthas strikes at you with a series of martial arts strikes. You struggle to block, but end up battered![or]Orthas feints with her fists and manages to wrap her tail around your waist long enough to land a powerful uppercut![at random]";
   now defeated entry is "[beatorthas]";
   now victory entry is "[losetoorthas]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
   now desc entry is "[orthasdesc]"; [ Description of the creature when you encounter it.]
   now face entry is "draconic head"; [ Face description, format as the text "You have a (your text)."]
   now body entry is "that of a well-muscled anthro dragon"; [ Body Description, format as the text "Your Body is (your text)."]
   now skin entry is "dark scaled"; [ skin Description, format as the text "You have (your text) skin."]
   now tail entry is "You have a slender, draconic tail."; [ Tail description, write a whole Sentence or leave blank. ]
   now cock entry is "ridged"; [ Cock Description, format as you have a 'size' (your text) cock]
   now face change entry is "it shifts and reforms into a dragon's head"; [ face change text. format as "Your face feels funny as (your text)." ]
   now body change entry is "your body shifts and alters itself, becoming that of a humanoid dragon"; [ body change text. format as "Your body feels funny as (your text)." ]
   now skin change entry is "hard scales form on your skin, covering your entire body in a tough, but flexible hide"; [ skin change text. format as "Your skin feels funny as (your text)." ]
   now ass change entry is "a slender, draconic tail forms behind you"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
   now cock change entry is "it changes shape, gaining firm ridges along its length to stimulate your partner"; [ cock change text. format as "Your cock feels funny as (your text)." ]
   now str entry is 20;
   now dex entry is 24;
   now sta entry is 20;
   now per entry is 15;
   now int entry is 12;
   now cha entry is 15;
   now sex entry is "nochange"; [ Invalid answer intentionally getting no change in gender]
   now hp entry is 150;
   now lev entry is 12; [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 10; [Amount of Damage monster Does when attacking.]
   now area entry is "nowhere"; [ Location of monster, in this case nowhere]
   now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 8; [ Length infection will make cock grow to if cocks]
   now cock width entry is 4; [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 2; [ Number of Breasts infection will give you. ]
   now breast size entry is 3; [Size of breasts infection will try to attain ]
   now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;
   now cunt width entry is 5;
   now libido entry is 20; [ Set to zero in this monster to control elsewhere ]
   now loot entry is ""; [ Dropped item. Key will be used later ]
   now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
   [ These represent the new additions to the table of random critters ]
   now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
   now body descriptor entry is "[one of]powerful[or]strong[or]muscular[at random]";
   now type entry is "draconic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
   now magic entry is false;
   now resbypass entry is false;
   now non-infectious entry is true;
   blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
   now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 7 - Endings

When play ends:
	if ( hp of Orthas is 4 or hp of Orthas is 5 or hp of Orthas is 6) and humanity of player is greater than 10 and hp of doctor matt <= 100:
		say "     Once rescue comes, taking everyone with a sane mind out of the city, Orthas comes with you. She's grateful to you for continuing to help with the doctor, and so she stays fairly nearby you in your lives outside. You spend a lot of time together, and many eggs are laid, both into you and elsewhere. During this time, Orthas also learns that she can have a more conventional pregnancy if she holds the eggs inside of herself long enough, and finds that they grow significantly larger if she does so.";
		if Snow is in Grey Abbey Library and Sandra is in the Bunker and susan is in primary lab:
			say "     At one point in your lives outside, Orthas stands with a silly grin on her face when you arrive at home. Susan, Snow, and Sandra are all sitting on the living room couch, also smiling, and this is the first time you notice that her ovipositor is extended. You suddenly realize you got home about 15 minutes too late.";
	else if hp of Orthas is 7 and humanity of player is greater than 10 and hp of doctor matt <= 100:
		say "     Once rescue comes, taking everyone with a sane mind out of the city, Orthas comes with you. True to her word, she stays a part of your life, visiting often to check up on you and her eggs when her duties permit. You spend a lot of time together, and many eggs are laid, both into you and elsewhere, the dragoness quite proud of her expanding clutch. During this time, Orthas also learns that she can have a more conventional pregnancy if she holds the eggs inside of herself long enough, and finds that they grow significantly larger if she does so. She proves to be a fine parent and certainly makes up for her absences with considerable [']enthusiasm['].";
		if Snow is in Grey Abbey Library and Sandra is in the Bunker and susan is in primary lab:
			say "     At one point in your lives outside, Orthas stands with a silly grin on her face when you arrive at home. Susan, Snow, and Sandra are all sitting on the living room couch, also smiling, and this is the first time you notice that her ovipositor is extended. You suddenly realize you got home about 15 minutes too late.";

[ hp of Orthas ]
[ -1 = guard duty delayed ]
[ 0 = guard duty open for discussion ]
[ 1 = refused post-guard-duty sex = LOCKED ]
[ 2 = had ovipositor sex w/o egg info ]
[ 3 = fucked orthas w/o receiving egg ]
[ 4 = fucked orthas and received egg ]
[ 5 = given task #2 - mementos ]
[ 6 = gathered w/mementos ]
[ 7 = returned w/mementos ]

Orthas ends here.
