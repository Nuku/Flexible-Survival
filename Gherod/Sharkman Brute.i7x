Version 1 of Sharkman Brute by Gherod begins here.

"Adds the Sharkman Brute species to the game."

[ Version 1 - Created File ]

to say GenerateTrophyList_SharkmanBrute:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "sharkman brute scale" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (25 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say Sharkman Brute Wins:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if HP of Player > 0: [player submitted]
			say "     You figure that there is no need for a fight when there are so many other things you could be doing together to spend energy. Or, perhaps, he really is so menacingly strong that you would rather not fight him. Nevertheless, you raise your arms and beckon him to not charge at you. He does stop, tilting his head in confusion. 'What? Oh, I thought you were one of those maniacs who fight literally every creature they see. Good to know ain't one of those!' He walks up to you and pats you on the back a little harder than you would feel comfortable with, and keeps his large hand on your shoulder. 'Not that I don't like fighting, but there's more fun ways to spend pent-up energy! Like partying or sex... Actually, do you wanna have some fun?' He then pulls you against him for a bro-like hug, slightly smothering you against his big muscles.";
		else:
			say "     You try to fight against this powerhouse of a sharkman, however, his strength proves to be too much for you. After hitting you several times, everything in your body hurts all over, even without any major injuries. As you are barely able to move, the sharkman takes an opportunity to tackle you while you are distracted and tired, hits you with full force and manages to bring you down to the ground. He then sits by your chest and squeezes your arms and torso between his legs, successfully immobilizing you. 'Looks like I win! You were really fighting aggressively there...! What's wrong?' he asks, and you only look back at him with a grimace. 'Oh, sorry, didn't mean to hurt you all that much, I just sorta had to, uh... Defend myself!'";
			say "     He loosens his probably close-to-deadly thigh grip, which alleviates the pain. These guys are really strong, and something tells you they are not fully aware of how much... 'So, now that we've settled this, how about we have some fun? Surely there's better ways to spend energy that don't involve trying to knock each other off, yeah?'";
		WaitLineBreak;
		say "     Facing this peculiar situation, you consider your options. Shall you even think about [bold type]having sex with the sharkman?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No!";
		if player consents:
			Linebreak;
			say "[SharkmanBruteSexMenu]";
		else:
			Linebreak;
			say "     Maybe you are fine with just walking away without engaging into anything sexual. The sharkman does not force you to stay and, in fact, lets you go without much insisting. 'Aw... Alright... Well, see you next time then!'";
			now infectbypass is true;

to say Sharkman Brute Loses:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if fightoutcome is 11: [submitted by libido victory]
			say "     As you so meticulously perform what you could only describe as a sensual dance with your best seduction abilities, you manage to evade the sharkman's attempts at bringing you down. Such skill comes with the added extra of having turned him on beyond what he, most likely, would have expected upon meeting you. 'Well, aren't you one teasing little bastard! Can't say I'm unpleasantly surprised...' he says, dropping the fight right there and then. 'So, now that you've done your thing, how about we have some fun together? Surely you weren't just doing that with no interest whatsoever on this body, right?' The enormous sharkman then starts flexing, every single one of his muscles bulging as he moves them.";
		else:
			say "     Your skill in battle proves to be superior as you manage to defeat the sharkman, causing him to drop on his knees with a grimace. 'Ow! Ooow...! Okay, okay! You win! I surrender! No need to continue hitting me so hard like that!' he exclaims, and since you really do not see a reason to keep beating him, you simply stand put. 'Thanks! Phew, you're quite a strong fighter! I wasn't expecting to be so easily outmatched! So, uh... I guess I lost, which means you get to do whatever you want to me or something like that, yeah?' He seems willing to let you have your way with him, and so cheerfully so. While only slightly odd, perhaps you should take on the opportunity to enjoy some pleasurable time with a willing sex partner...";
		WaitLineBreak;
		say "     Facing this peculiar situation, you consider your options. Shall you even think about [bold type]having sex with the sharkman?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No!";
		if player consents:
			Linebreak;
			say "[SharkmanBruteSexMenu]";
		else:
			Linebreak;
			say "     Maybe you are fine with just walking away without engaging into anything sexual. The sharkman does not force you to stay and, in fact, lets you go without much insisting. 'Aw... Alright... Well, see you next time then!'";
			now infectbypass is true;

to say SharkmanBruteSexMenu:
	say "     How shall you do this?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck both his cocks";
	now sortorder entry is 1;
	now description entry is "A sharkman is always proud of his two dicks. Why not service them";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Suck both his cocks"):
					say "[SharkmanBruteSexBlowjob]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Maybe you are fine with just walking away without engaging into anything sexual. The sharkman does not force you to stay and, in fact, lets you go without much insisting. 'Aw... Alright... Well, see you next time then!'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SharkmanBruteSexBlowjob:
	say "     Looking at the two red tips already poking out of the slit on his crotch, you know exactly what kind of fun you could be having with this handsome sharkman. It almost seems like he read your mind just then, as these internal cocks begin to push themselves out, growing bigger by each seconds, while your eyes glance between them and his face. 'Well, the antecipation's kinda getting me... So, uh, would you like to blow me?' he goes ahead and asks, to which you nod, bringing a hand over each of his rods and stroking them to their highest erection point. 'Oh, fuck that feels good... I like having them both worked like that, it's double the pleasure... Doesn't compare to when I used to just have one!'";
	say "     You continue to jerk them as they keep on throbbing, putting a toothy smile on the sharkman's face. 'Yeaaah, that's great... Come put your mouth on one of them! I promise they taste great!' he asks, with the premise of a good time for the both of you. Seeing the sharkman so eager to get his dicks sucked, you figure it would be wise to not tease him about too much. Looking up at him and back down at his endowments, you bring your lips to the one to your right first and wrap them around the thick shaft. While they are not too different from a human's, their tips are pointier and somehow bend a little more, having enough flexibility to be prehensible while keeping most of its more familiar shape.";
	WaitLineBreak;
	say "     Now, all the remains is to bring that cock deeper into your mouth, with the other's shaft already rubbing against your left cheek. It seems he can also move them unlike most males, almost like an extra limb! 'Mmh... Yeah, you're good... warm mouth, careful with your teeth... Can't say the same about my mates back home, they're not nearly as good as you...!' Hearing his praise, you start to pick up the pace as you give him a proper blowjob to at least one of the cocks, the other being just left throbbing in your hand as you stroke it together with your oral efforts. This might seem like a lot to handle, but after a while, it does kind of feel natural to you. While it is double the work, it also seems to result in double the plasure for the sharkman, just as he said.";
	say "     It is the way he smiles and how he cannot keep his breath under a steady rhythm that further encourages you to please him, a positive feedback that triggers your sense of accomplishment, besides his words of praise and appreciation. Feeling the impact of your efforts, you stop sucking on the first cock and move to the second, once more wrapping your lips around it and bringing it as deep as possible towards your throat. 'Oooh, damn... That's going deep, alright... Ungh, can you keep stroking the other one?' You do just that, returning your hand to the first cock you left and stroke it just like you did the previous. He appreciates you for it, 'Like that, yeah... Fuck, you're so good...'";
	WaitLineBreak;
	say "     You merely keep this up, simply changing from one dick to another, sucking and stroking the one out of your mouth, to then have them trade places and repeat. As you keep alternating, the sharkman's sensations are refreshed, and this fact is, almost entirely by itself, responsible for making him precum like a pump tube with a leak. It has a salty taste to it, and definitely not an unpleasant one at that, with the sheer amount of liquid helping you twirl and slide your tongue around and across the tip, shaft and pretty much the whole thing a lot more easily. 'Fuuck, I swear I usually have more stamina than this, but you're taking such good care of me that I- ungh... I'm getting really close...'";
	say "     The messiest thing about this is that these are, indeed, two cocks, and the sharkman is one hell of a massive man. So, while you are sucking on one of his members, the other one is freely spraying precum all over your face, neck, sometimes shoulders... Whatever it catches. You can only imagine what it will be once he gets to blow his load! And that is an exciting image to picture once you hear him warn you of how close he is to hit his climax. Since he has been so communicative, you ask him if he would prefer if you slowed down, to which he replies 'No... Not really, I kinda wanna cum... Maybe grab the both of them and stroke them until I explode? It's gonna be a hard one... Or, wait... No, I know. Step back...'";
	WaitLineBreak;
	say "     As you step back, the sharkman takes hold of both his cocks with one hand each and begins to stroke them, fixating his gaze on you, who is... pretty much in front of the danger zone. That seems to be exactly what he wants, as he continues to jerk faster and faster. 'Yeah, that's it! Let me give you a cum bath... That's the least I could do to show all my appreciation for- FUCK it's c-com- Oooh...!' Before he can even finish his words, he goes past his point of no return, and you expectantly brace for what is to come. Nothing would have prepared you for a powerful gush of sharkman cum right in your face, forcing you to close your eyes as both his dicks continue to shoot uncontrollably. 'Fuuuck! That's a lot...!'";
	say "     No, really, it is quite a lot. You even put your hands in front of your face because it is absurd, not only the quantity of it, but how this sharkman is nearly bruising your face with the power of those spurts! Exaggerations apart, it really is a massive load, soaking your face and upper torso with dripping jizz by the time he is nearly done with it. He promised you a cum bath, and he definitely delivered. 'Phew... I-is that done? Oh shit... That's a whole fucking lotta cum! We probably should wash that up before it dries...' You let him know that you shall take care of it once you are able to. 'Good, yeah... That was fun! Can we do that again in a bit? I should be ready to go very shortly.'";
	say "     You almost cannot believe his words! These sharkmen must be really energetic...";
	if PlayerMet of Skyler is true:
		NPCSexAftermath Player receives "OralCock" from Skyler;
	else:
		CreatureSexAftermath "Player" receives "OralCock" from "Sharkman Brute";
		if Snapjaw Beach Camp is not known:
			say "[SharkmanBruteSBCEvent]";

to say Sharkman Brute Desc:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     This enormous beastman now stands before you with a menacing aura and a gleaming grin made by many sharp teeth. He is an anthropomorphic muscular shark with black and white scales, with a few battle scars scattered all over his powerful body. The strength he possesses is evident, and the way he puffs his chest demonstrates an overflowing confidence that would intimidate any average person. Wearing nothing but his own naked figure, he begins to move towards you menacingly... Though, this entire posture and apparent attitude is then contradicted by a sudden, unexpected cheerfulness. Flexing his muscles and still grinning, he greets you and prepares for what you think could be a fight. 'Hey you! How about a little sparring? It'd be cool to fight someone as a warm up!'";
		say "     [bold type]You cannot help but think this is a really odd area for anything remotely resembling a shark to roam...[roman type][line break]";

Section 2 - Snapjaw Beach Camp Event

to say SharkmanBruteSBCEvent:
	say "     'Well, you're a really fun person! Damn nice to have met you! Say... One more thing before you decide to go and we risk never meeting each other again...' He then walks up to you and places his hand on your opposite shoulder, prompting you to walk with him. 'Would you like to see where I'm living? Yeah, it's not here in this weird place, we have a sort of a [bold type]beach camp[roman type] that we found out it is somehow connected to this place by an underwater passage. I... don't think you could get through on your own, it's a bit of a long one and tricky to navigate, but I know the way and could take you there! I'm a really good swimmer! And I'd really love if you got to know about this place before you left!'";
	say "     You could consider his offer, but quite frankly, why would you not accept his help to explore this place? It is not like he is some sort of shark person who could lure you into a trap only to eat you or something... 'I promise it's a fun place! We throw parties in there, we even got someone making drinks, the sea just for us, and we can fuck a whole lot too! And, yeah, I know that maybe venturing into a shark den might not sound like the best idea, but I promise we're all cool dudes. Just... dudes, yeah. The shark women were a little, uh... too fierce.' Well, all you can do is give it some thought, though he seems to really want to have you come along.";
	say "     Maybe you should take his offer? Otherwise, [bold type]you doubt you will be able to find him around this area again[roman type]...";
	say "     ([link]Y[as]y[end link]) - Go with him.";
	say "     ([link]N[as]n[end link]) - No, that is enough. You shall part ways.";
	if player consents:
		Linebreak;
		say "     It does seem this sharkman genuinely appreciates your company and looks forward to build a friendship with you, so you see no reason to refuse his offer. Nodding along, you let him know that you shall come with him, but you do have questions regarding this underwater passage, as you cannot really breathe under these conditions... Or as far as you know. 'Oh, right! I think I can fix that. I did tell you I'm a great swimmer, so I can just hold you and take you there at full speed. Then, if you need air, I can always... give you some.' He scratches the back of his neck with mild embarrassment, and you can only wonder if that means he is suggesting some sort of mouth-to-mouth thing. 'Just in case you need it, of course! I would never take advantage of that situation...'";
		say "     Well, with the biggest problems taken care of, you tell him to show you the way. 'Oh, sure thing! It's through here, there's a lake nearby just past these woods. I've marked the way with a few scratches on the trunks! Or more like chomps... I used my teeth.' This cunning decision might have saved you a lot of time as these woods can be quite confusing, but the sharkman finds his way pretty easily. This lake he mentioned is actually in the middle of the swamp area, where it is humid and dark. Nobody would think this could lead to a beach, so you find it important to ask him if he is sure this is the right way. 'Trust me, it is! I know what it looks like, believe me when I say I also thought it was weird as fuck!'";
		WaitLineBreak;
		say "     The sharkman then beckons you to come closer to the lake, which is mostly green and filled with moss. It definitely is not a place you would want to take a dive in. 'So, uh... You're gonna be soaked, but hopefully we'll only have to take one trip!' he says, and you ask why he could not just give you the location. Maybe you could find a way around these lands and meet him on the other side. He is quick to reply to that, however, 'There's no reason to not take this path! It's much quicker and safer! For me, at least... As for you, well... I guess if you can find your way into High Rise District and head towards the coast, you could find us...' he walks in front of you as he speaks, 'Or you could just come with me!'";
		say "     As he says this, he pulls you to him, hugs you closely, and then... You are forced to dive with him into the water, causing a loud and messy splash everywhere. The scare made you gasp, which was a good thing, because you are being brought deeper and deeper into the water as the sharkman swims at an incredible speed! His grip is powerful and tight, but also very secure, as he just continues to swim into this underwater passage and beyond while you do your best at holding your breath. Despite the length he mentioned, there always seems to be a sort of blue-ish light illuminating this tunnel, and an oddly unnatural one at that. Midway, it gets harder to hold your breath, but the sharkman, being aware of this, brings your mouth to his, which sustains you until the end of the trip...";
		say "     Being a sort of amphibious hybrid creature has its perks, and it all proves to be worth it once you finally arrive at your destination...";
		WaitLineBreak;
		move player to Snapjaw Beach Camp;
		move Skyler to Snapjaw Beach Camp;
		say "     Eventually, you are allowed to take a deep breath of fresh air as the sharkman emerges from the water, much clearer in comparison... And saltier. You cannot even tell how long you have been swimming with him, or rather, being carried over by him, but you sure are glad to be safe. 'There! We've just arrived! You good?' he asks with a silly cheerful smile that, pretty honestly, kind of looks a bit terrifying from this up close with all those teeth, though there is a slight bit of dorky adorableness to it. Still, you cannot help but feel a tad annoyed at how he pushed you into the water like that, so you give him an earful on how that is wrong and reckless. 'Hey, I knew we'd get here safely! Trust me, one of the things I know best besides fucking is swimming! And you're fine, aren't you? That's what matters!'";
		say "     You really have to roll your eyes, but at least you are fine, indeed. And this beach seems to be quite nice, once you take some time to glance over your surroundings. 'This is where I and my mates live. We used to be on the main beach way over there,' he points north as he says this, 'But things didn't work out with the shark women, as they had this odd focus on behaving like pirates... We just wanna have fun, you know? So we traveled here and set up a camp... And the rest, well, you know.' It seems the sharkmen here have been getting through just fine, though if this is a camp, this must mean they may have some sort of leader, perhaps, so you ask him about it. 'Leader... Hm, I guess I'd be the closest to that...'";
		WaitLineBreak;
		say "     'My name's Skyler, by the way! And, uh... I'd love if you remained around for a while! We're a bunch of cool folks, I promise! We've got food to spare, as well...' You let him know you shall consider, now that you are here, either way. Though, you have to ask him how to navigate this area, as currently you feel quite disoriented. 'Oh, right! So, if you head over there,' he then points south, towards the end of the beach and the lower point of the surrounding cliff, 'You can climb up that elevation and you should see High Rise District. That should be pretty much all you need to know, really... We tend to prefer to keep away from that place, and now that we can scout that forest... I think it's called Avalon...? Well, it has been a far better place to explore, even though it strangely had a few odd effects on us...'";
		say "     You can only ask what odd effects were those, and after throwing a chuckle, he replies, 'Our bodies! We're fucking beasts since we've been eating stuff from there! We even had to enlarge our shacks, and I can't even use my campervan anymore... Though, it seems the growth stopped for me. Not all of us were affected, however, but almost everyone was. We used to be just, like, a few inches taller than when we were human, basically. Now it's more like a few feet. Not that I'm complaining about it, honestly it just feels amazing...' Speaking of which, you now worry that you will not be able to take that passage on your own... 'Ah, well... If you ask nicely, I can take you back and forth, so don't worry. Your traveling won't be hindered in any way.'";
		WaitLineBreak;
		say "     If that is the case, maybe you could explore this beach a little bit and let Skyler be on his way. You let him know that you shall take a look around. 'Sure thing! You can find me in this area, mostly. Just ask around if you can't see me. Oh, and I'll let the folks know you're a welcome guest.' With that said, the sharkman lets you walk around freely as he lets everyone know you are, indeed, always welcome to their beach.";
		AddNavPoint Snapjaw Beach Camp;
		now PlayerMet of Skyler is true;
		say "     << Author's Note: This area, including Skyler himself and the Sharkmen Brute tribe, are all still under early development. More content on them will be added in the future! >>";
	else:
		Linebreak;
		say "     You end up telling the sharkman that you would prefer if you parted ways. He had a cheerful expression once, but upon hearing that, he lowers his head in sadness. 'Oh... Was it something I said? No? Okay, yeah, I... I understand. I'm just a stranger shark dude, after all... Oh well. I hope you'll be fine, at least. If we don't ever meet again, it's been nice anyway...' Now, you obviously made him sad, but he is already walking away, dragging his shark tail through the ground in such a defeated marching...";
		say "     It almost looks like you broke his heart! And maybe you did...? But you have made your decision, thus, you shall also get moving.";
	choose a row with name of "Sharkman Brute" in the Table of Random Critters;
	now area entry is "Nowhere";

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Sharkman Brute";
	add "Sharkman Brute" to infections of CanineList;
	add "Sharkman Brute" to infections of FurryList;
	add "Sharkman Brute" to infections of NatureList;
	add "Sharkman Brute" to infections of MaleList;
	add "Sharkman Brute" to infections of SheathedCockList;
	add "Sharkman Brute" to infections of BipedalList;
	add "Sharkman Brute" to infections of TailList;
	now Name entry is "Sharkman Brute";
	now enemy title entry is "Sharkman Brute";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He leaps forward and goes to bite you with his sharp teeth, though he only nibbles you surprisingly softly. It still hurts, however.[or]The large sharkman swipes at you with his tail.[or]The big sharkman tries to tackle you, the impact alone being enough to nearly throw you off balance![or]He goes for a punch, which you can tell was not done with full force. However, he is so powerful that it was enough to hurt you.[or]The large sharkman attempts to pin you down under his strong bulk, and while he hits you with his charge, you manage to endure.[or]He runs towards you and swiftly embraces you. This would not be so bad, if he had not decided to also squeeze you so tightly! You are smothered against his muscles before being let go.[at random]";
	now defeated entry is "[Sharkman Brute Loses]";
	now victory entry is "[Sharkman Brute Wins]";
	now desc entry is "[Sharkman Brute Desc]";
	now face entry is "that of a shark with a rough snout, above a mouth filled with sharp jagged shark-like teeth stretching out in an easy grin, definitely giving you a very shark-like appearance";
	now body entry is "long and incredibly muscular, however combined with aquatic elements that makes it more than adequate for cutting through the water, like your long shark-like dorsal fin, your webbed hands and feet. You feel like you would be a terror in any underwater situation, though moving around on land is slightly awkward";
	now skin entry is "[one of]shark-like[or]rough pebbled[or]rough gray[at random]";
	now tail entry is "You have a long, shark-like tail dragging along the ground behind you, its circular shape narrowing down until it broadens out into a very shark-like set of fins. It is covered in [Skin of Player] flesh and drags slightly along the ground behind you with every step, forcing you to lean forward as you walk. You can't help but feel it would be much less awkward if you could just get it in the water.";
	now cock entry is "[one of]prehensile[or]flexible[or]forked[or]shark-like[at random]";
	now face change entry is "it presses forward, your nose flattening into thin slits as your mouth erupts with sharp shark-like teeth, gills explode along the side of your neck as your eyes shift slightly and your hair disappears, leaving you with a predatory shark-like appearance";
	now body change entry is "it seems to twist and change, elongating into a longer form, but also incredibly muscular. Your hands and feet seem to draw up somewhat closer to the body, and thick webbing spreads between your fingers and toes. You groan as a large shark-like fin forces its way out from your spine, and so, your body finishes changing you into a form better able to survive in an aquatic environment, and prey upon anything you find there";
	now skin change entry is "your flesh becomes tougher and thicker, seeming to become slightly pebbled and grayish as it changes to resemble that of a shark, making you feel somewhat dry and uncomfortable out of the water";
	now ass change entry is "your rear seems to stretch out behind you as your body is forced to tilt forward to balance the large shark-like tail forming behind you, you groan as your long new tail flattens out at the tip, into two large fins, and a smaller fin grows from just before the tip, your new tail dragging behind you as you move around on the land, but you somehow know that it will be a big asset to you the next time you go in the water";
	now cock change entry is "it changes and draws up into your body, tucking itself inside your new protective slit. Teasing it out for a minute, you can see it has surprisingly not taken a shape not much different than a human's, except it is way more red.";
	now str entry is 38;
	now dex entry is 22;
	now sta entry is 23;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 87;
	now lev entry is 12;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 32;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Avalon";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 2;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 16;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 50;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "sharkman brute scale";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "sharkman brute man-milk";
	now CumItem entry is "sharkman brute cum";
	now TrophyFunction entry is "[GenerateTrophyList_SharkmanBrute]";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]scaly[or]muscled[or]elongated[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]selachian[or]shark-like[at random]";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 1;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Husky Alpha"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a tooth-filled muzzle pushes forward to give you the head of a proud husky"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"sharkman brute scale"	"A textured scale that has a dim colorful glow when covered in darkness. It feels tough and dry when you touch it, but smooth if you rub it."	0	sharkman brute scale

sharkman brute scale is a grab object.
It is temporary.
Usedesc of sharkman brute scale is "[BiolizardmanBruteScaleUse]";

to say BiolizardmanBruteScaleUse:
	say "Holding the glowing scale between your fingers, you stroke over it, surprised by how soft it feels despite its dry texture. Strangely, the scale disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Sharkman Brute";

instead of sniffing sharkman brute scale:
	say "The scale has a faint reptilian scent.";

Table of Game Objects (continued)
name	desc	weight	object
"sharkman brute cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'sharkman brute cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	sharkman brute cum

sharkman brute cum is a grab object.
sharkman brute cum is cum.
sharkman brute cum is infectious.
Strain of sharkman brute cum is "Sharkman Brute".
Usedesc of sharkman brute cum is "[sharkman brute cum use]";

to say sharkman brute cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing sharkman brute cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"sharkman brute man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'sharkman brute man-milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	sharkman brute man-milk

sharkman brute man-milk is a grab object.
sharkman brute man-milk is milky.
Purified of sharkman brute man-milk is "distilled milk".
sharkman brute man-milk is infectious.
Strain of sharkman brute man-milk is "Sharkman Brute".
Usedesc of sharkman brute man-milk is "[sharkman brute man-milk use]";

to say sharkman brute man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the reptilian man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing sharkman brute man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Sharkman Brute ends here.
