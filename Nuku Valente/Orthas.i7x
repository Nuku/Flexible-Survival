Version 2 of Orthas by Nuku Valente begins here.
[Version 2.1 - Hard Mode adjustment - Stripes]

Section 1 - Orthas Eggses

orthasstart is a number that varies.

after going east from Trevor Labs Lobby when the hp of doctor matt is greater than 2 and orthasstart is -1:
	now orthasstart is 0;


instead of going east from Trevor Labs Lobby when the hp of doctor matt is greater than 2 and orthasstart is 0 and orthas is visible:
	say "((This arc written by Khabi))";
	say "As you enter the downstairs area of the lab, Orthas, the dragoness who has been guarding the good Doctor this whole time, stops you. She's probably six and a half feet tall, and a rather imposing figure, but there is no malice apparent in her appearance.";
	say "'Hey --- you've been helping out the doctor. I figure I could talk to you for a while, as someone else who was interested in doing so.' She offers to tell you her story, if you'll stay and listen.";
	if the player consents:
		say "'I worked here before the outbreak,' she begins. 'I was a security guard then, too, a big fella. Yeah, I was male before this all started --- I've gotten used to being female and dragon-y. Anyway, after the outbreak, most of the people in the lab panicked. But Doctor Matt stayed here, and so I decided to stay and protect him. Since the Doctor is doing his part by staying in the city and learning what he can about... whatever is causing this --- I don't pretend to know half of what comes out of his mouth --- I decided to stay and keep an eye out for him.'";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "'More than a few of the more... feral creatures out there have broken into the lab. So it was one of them that got a better hold of me than I would have liked, and that's what triggered me changing into... this form. On the other hand, I found that switching genders and gaining some scales --- and claws --- have definitely not made my job any harder.' ";
		say "She looks at you thoughtfully. 'You know, you look like you can handle yourself in a fight. Can I ask you a favor? I'd like you to guard the doctor for a while, while I take care of something in the basement.' (Y/N?)";
		if the player consents:
			say "As soon as the door closes behind the dragoness entering the basement, the front door of the lab is forced open by one of the creatures from outside!";
			now battleground is "Outside";
			fight;
			say "Seemingly as soon as you're finished with the first creature who entered, another one pounds at the door with force and gets inside!";
			fight;
			say "After a while, the surrounding area around the lab seems to calm down. It doesn't take too long for Orthas to return from downstairs --- but she looks disheveled, lost, and confused. Quickly rushing to her aid, you help her over to the lounge area where she spends much of her time. As she looks up at you, you begin to realize that she is flushed and looking at you with what you can only assume is lust. It is somewhat similar to the lust-addled looks you've gotten from other infected creatures out in the city. She licks her lips and eyes you closely, looking over your body, and sniffing closely at you, and you're not totally sure why.";
			say "'Mmm.. you smell really good,' she says, her eyes looking at you with a gaze positively filled with lust. 'I know I'm not looking my best... but you don't want to have a romp with me, do you?' She smiles at you widely --- you can practically smell the heat coming off of her. (Y/N?)";
			if the player consents:
				say "She lets out a toothy grin, as she reaches up with strong arms and pulls you down into a kiss. Her long tongue wraps around yours, as her other hand rubs over your body, which already has begun to respond to her actions. She pulls off the kiss after a moment, and rips off the rest of her clothes, what's left after her visit to the basement. Her body is toned and athletic, looking practically amazonian to your own lust-filled eye. Her hands caress every part of your body for a moment, before assisting you out of your own clothes.";
				if cocks of player is greater than 0:
					say "'Ooooh... you're quite the stud!' She says, getting a good gander at your manhood, already reaching past half-erect just from the arousal of the moment and the sight of your body. It doesn't take her long to get into a position for you to take her --- laying on her back on the seat cushions, in fact. 'Mmm! Come on big boy, give me what you can provide!' An idle thought passes through your mind about whether dragonesses would lay eggs or have live young, but all thoughts thereof are lost on you as you push into her sweltering depths.";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					say "In a matter of moments, your hips are firing roughly into hers and your maleness is stretching her walls, the dragoness['] muscles stretching and contracting to become a perfect fit over your member. She herself has her tongue lolling out of her mouth, and her hands squeeze at her hefty bosom while you ride her. Her pussy muscles seem to be working overdrive on your member, and she is practically roaring in pleasure so loud that you're certain the Doctor on the floor above can hear her loud and clear.";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					say "Before long, you realize that your pleasure is reaching its peak before you had even begun to realize it, her pussy walls clamping down on your cock in such a way that they seem to be practically milking it for your cum --- which, in fact, they are. But they prove successful, and you paint the deepest depths of her cunt with gouts of your seed, and her own slit gushes her femcum over your writhing member and balls.";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					if cunts of player is 0:
						say "Orthas blinks and moans out in lust. With a shock, you both realize that her belly has begun to swell out into what obviously must be pregnancy, but with vastly more speed than you have ever seen. At the same time, your member is slowly pushed out of her sex by.. something. She is blushing a deep red when she sees that it is a lengthy, tapered... almost tentacle-like, really, phallic thing. Thinking quickly, you help her up and hustle up to Dr. Matt.";
						say "'What are you --- oh my!' Dr. Matt immediately rushes into action and starts examining Orthas, both her expanding belly and the odd pink organ sprouted from her sex. 'Well, I think I know what's happened. Orthas, you have an ovipositor. What that means is, when you are inseminated, you will be able to... implant eggs into willing or unwilling subjects.'";
						if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
						say "'Well, that's a relief,' she says sarcastically, holding her swollen belly.";
						if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
						say "'It only swells up this quickly, Orthas, you will not immediately have to lay the eggs. What basically happens is that you will now have the ability to eject the eggs at will, with some effort. Each insemination should give you two or three eggs, fairly small size --- the size of your inflated belly is related to what parts of your genetics are still mammalian. I will have to do a large amount of study on this matter, and I assume you will be willing to help?'";
						now orthasstart is 3;
						stop the action;
					otherwise:
						say "Orthas gets a funny look on her face, one that you've seen more in the lust-filled beasts on the outside. She rises and pushes you off of her, licking at her lips. Slowly, you begin to realize that her belly has begun to inflate into what appears to be a pregnancy but far more quickly than any you have ever seen. And if this was not a sexy enough scene to drive any watcher wild, she moans hotly as her sex begins to push. She begins to masturbate frantically, driving her fingers deep into her snatch --- still possessing of some of your cum --- and in moments, her sex distends and a long, pink, tentacle-like organ appears constantly dripping what seems to be lubricant that is a milky white.";
						if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
						say "In your shock, you don't even realize what's happening as she locks her lips with yours again, kissing you hungrily. Her breasts press into yours, her heavy belly pushed into your body --- when her organ finds its way behind your balls into your slit. The writhing member is constantly shifting and moving as she thrusts her hips, hilting you in seconds. You would complain, if that wonderful member didn't feel so damn good. She moans hotly, her body quivering as it adjusts to a new kind of activity.";
						if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
						say "Her 'cock' is straining, pushing, and for a second, it pops through your cervix. Her eyes go wide, and her pupils dilate, as once she pops it through again, her hips go still. You can feel a large pressure at the base of the organ --- she doesn't have a knot, does she? That's when you realize, all of a sudden, that the 'knot' is moving up her appendage. You try to move, but she has you pinned, her draconic strength working to her advantage here. The 'knot' continues up her member, and after several small orgasms, you can feel it slip through your cervix, into your womb. This is accompanied by a monstrous orgasm that knocks you out cold through its sheer strength.";
						if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
						say "You awake to Dr. Matt examining both you and Orthas in his lab. He's muttering about 'ovipositors' and 'astounding' and things like that. When you get his attention, he stands and nods. 'Ah, you're awake. Good. Allow me to explain what happened. Orthas went into the basement to fight something the lab keeps down there for... study, to destroy it, I assume. However, it got the best of her.'";
						if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
						say "She scoffs. 'I almost had it,' she mutters.";
						say "'Anyway,' continues the good doctor, not appreciating being so interrupted. 'It defeated her, but instead of destroying her, it raped her and the result is this change to her physiology. The organ there is an ovipositor --- when she is inseminated, two to three eggs will swell to gestation, and then the organ will reveal itself. She can then implant the egg in a willing or unwilling partner. Alternatively, she can release the eggs in a more conventional manner, and do with them as she pleases.' He looks down his glasses from behind the mask of his bio suit. 'I trust you will both be more careful in the future.' He turns back to his work, before turning back around and looking at you. 'And by the way, you're pregnant.' Orthas blushes profusely.";
						Impregnate with "Dragon";
						now orthasstart is 4;
						stop the action;
				otherwise if cunts of player is greater than 0:
					say "She smiles warmly, and she licks down your body using her skilled tongue. Before long, after playing her tongue over your soft breasts and hard nipples, she trails her tongue over your belly button and drifts down to your heated vent. It doesn't take her very long to have her long tongue playing deep inside your slit, your thighs tightly clasped around her head in pleasure. She is working wonders with her tongue, as you lay back, your eyes closed. Your slit leaks your fluid all over the char she has you leaned back in, before she pulls back for a moment. Then, you are treated to a curious surprise.";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					say "Orthas leans back and furiously masturbates, her fingers pushing deeper and deeper, before she pulls them out.... pulling something else out with them! She rubs at the pink tendril --- appearing appendage, which leaks a thick white fluid that appears to be quite different from cum. And before you have time to react, she has used her surprising speed to push the writhing appendage, almost tentacle-like in appearance, at your slit --- which she then pushes inside. Before you can even complain, her hips are pumping and the appendage --- that you still aren't even sure what it is --- is wiggling inside of you."; 
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					say "As your mind goes blank in pleasure, you can hear her moaning in pleasure as she fucks you, and she too seems to be enjoying herself. Eventually, she brings you to a mind-altering climax, her shifting member driving you wild as she ejects lubrication into you with her orgasm, moaning out in pure pleasure as she does.";
					if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
					say "After a while, you come back to reality, and Orthas is sitting next to you, looking completely female again. She looks apologetically at you as you pant and your mind tries to register what happened. 'I'm sorry... something happened with the thing down there... it gave me this, and I'm not sure what it's for. But in the heat of the moment, I could feel it aching to go inside you, and it seemed so right...' she looks confused, cautious, and hurt, but after some calming words from you, she calms down, and nods to herself. 'I'm going to have to figure out what this thing is for,' she says, and she seems to be considering going up to ask Dr. Matt. She asks you if you want to find out, as well.";
					if the player consents:
						say "After some brief instruction from Dr. Matt, it becomes clear to both of you that what Orthas has gained is an ovipositor. If she is impregnated by a male or herm, she will start swelling up with eggs, and she will be able to use it to push those eggs into willing or unwilling partners. She gets a devilish look in her eye and smiles. 'Hmm... now to find a dick...' she mutters. You leave the lab a little bit more wary, but definitely feeling energized from the sex.";
						now orthasstart is 3;
						stop the action;
					otherwise:
						now orthasstart is 2;
						say "'Well, if you come back later, I'll surely know what it's for,' she says.";
						stop the action;
			otherwise:
				say "She looks extremely disappointed, but nods, understanding. 'Yeah, it has to seem strange, doesn't it? Well, if you come back, the offer still stands.'";
				now orthasstart is 1;
				stop the action;
		otherwise:
			say "She looks at you, disappointed. 'Well, alright. I'll stay at my post then. But if you change your mind, come back.'";
			now orthasstart is -1;
			continue the action;
	otherwise:
		say "'Oh, well that's alright then,' she says, seeming disappointed. 'Come back, if you want to talk.'";
		now orthasstart is -1;
		continue the action;

instead of sniffing the Orthas:
	say "Orthas smells like a strong, powerful dragoness[if orthasstart is 2 or orthasstart is 3].  She has a lingering scent of arousal hanging over her[otherwise if orthasstart is 4].  She has a strong scent of arousal and egg-laying hanging over her[end if].";

Orthasfuck is an action applying to nothing.

Understand "fuck orthas" as orthasfuck.

lastorthasfuck is a number that varies. lastorthasfuck is usually 250.

Check orthasfuck:
	if orthas is not visible:
		say "Who?" instead;
	if orthasstart is less than 2:
		say "'I am flattered, really, but no thank you.'" instead;
	if lastorthasfuck - turns is less than 12:
		say "'Even I need a moment to breath, hon, you come back later.'" instead;

carry out orthasfuck:
	now lastorthasfuck is turns;
	if cocks of player is greater than 0 and cunts of player is less than 1: [ male player ]
		say "'Well, fine, but be sure to come by later if you get somewhere for me to plant them,' she says, remembering last time. She disrobes, revealing her toned, athletic body once again, unveiling her good sized breasts --- that seemed to grow a bit after her first pregnancy --- and runs her hands over your tight, sexy male form as well, waiting to get at what she knows is down in your drawers.";
		say "And before long, she's got it! The sultry dragoness is on her knees between your legs, her lovely bosom wrapped around your cock, and the tip of the member poking through her cleavage is firmly embedded in her mouth. Her long draconic tongue is running circles around your member, teasing you all the way to full erection. She leans over the couch, and lifts her long, muscular tail, exposing her tight pussy lips. You know what lies hidden there, but it doesn't deter you in the least, making you smile as you grip her hips and stab your member home.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "She howls out her pleasure again, prompting Dr. Matt to stomp on the floor, as you energetically fuck her. She runs her muscular hips back into yours, pleasure rising quickly in both of your bodies as you quickly push toward climax. Nearly as soon as your massive orgasm overtakes you, you can already feel her shifting tightly, her belly beginning to inflate. She looks at you hungrily as she watches your body there, and she flips over, licking her lips. 'Mmm... hey, do you wanna help me with this?' She holds up her ovipositor, and she smiles cutely, trying to goad you into 'helping' you with her egg 'problem'. (Y/N?)";
		if the player consents:
			say "'Mmm.. then get down there and do it!' She begins to massage her breasts, pinching at her nipples --- you're a bit surprised to see that she lactates when she's swollen up like this. But her ovipositor waits, and so you set about your task with gusto, licking up the pink length as it writhes in your hand. You know you don't have to do this, but you want to. In a few moments, the first of her three eggs is sliding up and you take control, rubbing at her 'member' below the base of the bulge, lifting the egg further up her lubricated ovipositor. With a keening cry of pleasure, the egg pops out of her 'dick'.";
			say "After two more, she lifts you up and gives you a big sloppy kiss. 'Aaaah... you're wonderful, you know that?'";
		otherwise:
			say "'Awww!' She giggles. 'And here I thought I was going to get you to suck them out,' she says.";
	otherwise if cunts of player is greater than 0 and cocks of player is less than 1: [ female player]
		let seed be 0;
		if "demon seed" is listed in the invent of the player:
			say "She sniffs, and reaches into your pockets, and pulls out the little vial of Demon Seed that you have, and she gets a wonderful idea. A terrible, wonderful, awful idea. 'Hey... mind if I use this?' she asks, coyly. (Y/N)";
			if the player consents:
				now seed is 1;
			otherwise:
				say "'Awww!' She pouts. 'Well, we can still have fun!'";
		if seed is 0:
			say "'As payment, get down and please me!' She giggles, as she stands and gets naked, smiling as she exposes her tight slit to you. You know what's held within, but you don't care --- after all, you'll be riding it later. She moans hotly as you take your tongue and put it to good use against her slit. Her pussy is practically dripping even after only a few licks. Your lips are set against her pussy lips, your hands gripping her tight, muscled ass as you push your tongue deeper, harder.";
			say "It doesn't take all that long for a minor orgasm to hit the dragoness, and trigger the appearance of her 'member'. You can feel it pushing out of her sex from the tip of your tongue, and you're giving her an entirely different kind of oral for a couple moments, before she smiles and tips you back. 'Alright, you're ready.. I can smell you.' She smiles and lays down on the floor, her 'cock' pointed skyward, purring a little.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "You scamper aboard and climb atop her 'cock', moaning as it penetrates you deeply. Her pleasure is already at a peak, but it is you now who gets to enjoy this pleasure for a long time. You can feel her ovipositor releasing its lube into you with numerous small orgasms. It writes and twists inside you, driving itself into your deepest depths. With how active it is, it doesn't take long for you to yowl out in pleasure and climax over it, letting out a pleasured moan, and a particularly strong burst of the lube shows that Orthas enjoyed it too.";
		otherwise:
			say "'Mm, let's get down to business then.' She strips nude, and lays back deeply on the carpet, lifting her hips up. She empties the demon seed into her sex, and reaches down to massage and aid it deeper and deeper. In only a matter of moments, the seed takes hold and she lets out a pleasured moan --- her belly beginning to swell, her breasts swelling a bit with milk, as her ovipositor comes out, a bit of the purple seed still on it. She giggles, and rolls forward, her large belly pushing her 'member' down as you get into a feral, doggy-style position.";
			say "Her 'cock' stabs its way into you, and she begins to fuck you earnestly, her 'cock' straining as she pushes it deeper, deeper, still deeper. As you can feel it tapping at your cervix, you endure a rough orgasm, and then you feel one of the eggs pushing at your slit. Deeper the egg pushes, and eventually you can feel it stretching your walls' deepest depths. It pops through into your cervix, and a rush of pleasure signifies that this session is temporarily over."; 
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if the gestation of the child is greater than 0:
				say "The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
				decrease gestation of child by a random number from 5 to 10;
				if gestation of child is less than 1, now gestation of child is 1;
			otherwise:
				say "You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
				impregnate with "Dragon";
				now orthasstart is 4;
	otherwise: [ Herm ]
		say "'Alright!' She can't even wait, as she drops down and gets your member out of your pants and/or sheath before she can even worry about whether you or she has disrobed. She has you half-hard before all the clothes can even come off, and when that's finally finished, the distraction complete, she finally pushes her head down, taking your whole member in as deep as she can, her fingers doing two things. One pair of fingers are fingering herself, the other pair are fingering your own slit.";
		say "Just when you can scarcely take the oral stimulation anymore, she pops off your dick after one particularly long bob, panting softly as she catches her breath. She pushes you down and takes your dick into her pussy, already craving that cum deep inside her --- it seems this new physiology has made her quite the egg slut. The dragoness bounces on your cock as hard as she can, her incredibly strong cunny muscles working hard on that dick of yours.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "You can't take much of this, and you cum hard and strong into her, moaning out in pleasure as even as the first bursts of your cum splash against her cervix, her body is already making ready for part two of this interaction. When your orgasm dies down, she has laid on top of you, her heavy breasts pressed into yours as her belly swells into yours. Before her belly has even finished swelling to its full size, she's already pulled off your dick and laid down, coaxing out her ovipositor. Anal or vaginal? (Yes for Vaginal)";
		if the player consents:
			say "Climbing on, you push her 'cock' toward your slit, and you already feel her pushing deep at your cervix --- it doesn't take long for it to reach full length, does it? She bobs her hips, but since she is in control of her eggs, she waits for you to get your pleasure first. But with the way that 'member' bobs and weaves in your slit, it won't take you long at all, and as you climax, you feel the egg pushing at your slit, and forcing its way up your pussy into your womb.";
			if the gestation of the child is greater than 0:
				say "The essence of the egg just stimulates and aids the progress of the child already inside of you, dissolving its essence to help the young one grow.";
				decrease gestation of child by a random number from 5 to 10;
				if gestation of child is less than 1, now gestation of child is 1;
			otherwise:
				say "You can feel the egg deposit itself in your womb, and you're quite sure you'll be carrying the egg's resident for a few days to come... ";
				impregnate with "Dragon";
				now orthasstart is 4;
		otherwise:
			say "Deciding you don't need to come out of this with another pregnancy, you climb on but angle the ovipositor for your rear. You know that this egg will stretch you more than you've ever been stretched in that hole, but you don't care, knowing that you're more comfortable not carrying another child in the womb at the moment. It doesn't take Orthas long to get to the point where her egg is pushing up her 'shaft', and you can feel it pressing hard at your anal opening, and somehow, the egg finds its way past your tight anal ring, passing further up her shaft. After a few more tense moments of mixed pain and pleasure, the egg finishes its journey up there, and pops out of her shaft, making you moan lustfully... the egg will come out later.";


Section 2 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ]

when play begins:
	add { "Dragon" } to infections of furry;
	add { "Dragon" } to infections of tailweapon;

to say losetoorthas:
	now fightstatus is 2;
	say "     The powerful dragoness strikes you with a mighty blow, you are sent flying out the broken door, landing in the hall.  As you struggle to rise, you can see her inside, passing the microwave device across Dr Matt to halt the transformation, but it's clear that the damage is at least partially done.  The doctor is fondling herself and Orthas even as the dragoness tries to help her, though the hybrid is sane enough to instruct Orthas to continue the process.";

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
	say "[line break]     Orthas, the black dragon, steps forward to battle you.  She stands about six and a half feet tall and has a very athletic body.  Her bat-like wings are each about three feet long and folded onto her back at the moment.  She was large, F cup breasts, but they don't seem to affect her balance or ability to fight at all.  Her eyes blaze with anger and thick smoke curls up from her nostrils as she moves to deal with you for your betrayal.";
	if Susan is in Primary Lab:
		say "     The dragoness is still rather woozy after the blow given to her by the doe.  While it doesn't look like she'll be able to help you further with the fight, she has made the dragoness a little easier to deal with.";
		decrease monsterhp by 25 + debit;
		decrease wdam entry by square root of ( wdam entry - 8 );		[drops by 1 at regular, by 2 if wdam is 12, by 3 if 17...]
		decrease lev entry by 1;


Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
   Choose a blank row from Table of random critters;
   now name entry is "Dragon"; [Name of your new Monster]
   now attack entry is "[one of]The dragoness slams into you, slamming you back against one of the tables![or]Orthas slashes out at you with her sharp claws, slashing you violently![or]The dragoness's sharp teeth dig into your arm, biting into your flesh![or]Despite her large size, the black dragoness makes a sweeping kick to your legs, sending you to the ground![or]Orthas's jaws move in, trying to bite your head.  You manage to grab her head and keep her from getting you with a potentially lethal bite.  As you struggle to hold her, she exhales a thick cloud of smoke and sparks that cause you to choke![or]Orthas strikes at you with a series of martial arts strikes.  You struggle to block, but end up battered![or]Orthas feints with her fists and manages to wrap her tail around your waist long enough to land a powerful uppercut![at random]"; [Text used when the monster makes an Attack]
   now defeated entry is "[beatorthas]"; [ Text or say command used when Monster is defeated.]
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
   now sex entry is "nochange";     [ Invalid answer intentionally getting no change in gender]
   now hp entry is 150;            [ How many HP has the monster got? ]
   now lev entry is 12;            [ Level of the Monster, you get this much xp if you win, or this much xp halved if you loose ]
   now wdam entry is 10;            [Amount of Damage monster Does when attacking.]
   now area entry is "nowhere";    [ Location of monster, in this case nowhere]
   now cocks entry is 1;            [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
   now cock length entry is 8;        [ Length infection will make cock grow to if cocks]
   now cock width entry is 4;        [ Size of balls apparently ;) sneaky Nuku]
   now breasts entry is 2;            [ Number of Breasts infection will give you. ]
   now breast size entry is 3;        [Size of breasts infection will try to attain ]
   now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
   now cunts entry is 1;            [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
   now cunt length entry is 12;        [ Length of female sex  infection will attempt to give you. ]
   now cunt width entry is 5;        [ Width of female sex  infection will try and give you ]
   now libido entry is 20;            [ Set to zero in this monster to control elsewhere ]
   now loot entry is "";            [ Dropped item.  Key will be used later ]
   now lootchance entry is 0;        [ Chance of loot dropping 0-100 ]


When play ends:
	if orthasstart is 4 and humanity of player is greater than 10 and hp of doctor matt <= 100:
		say "Once rescue comes, taking everyone with a sane mind out of the city, Orthas comes with you. She's grateful to you for continuing to help with the doctor, and so she stays fairly nearby you in your lives outside. You spend a lot of time together, and many eggs are laid, both into you and elsewhere. During this time, Orthas also learns that she can have a more conventional pregnancy if she holds the eggs inside of herself long enough, and finds that they grow significantly larger if she does so.";
		if Snow is in Grey Abbey Library and Sandra is in the Bunker and susan is in primary lab:
			say "At one point in your lives outside, Orthas stands with a silly grin on her face when you arrive at home. Susan, Snow, and Sandra are all sitting on the living room couch, also smiling, and this is the first time you notice that her ovipositor is extended. You suddenly realize you got home about 15 minutes too late.";


Orthas ends here.
