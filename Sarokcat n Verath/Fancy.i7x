Fancy by Sarokcat n Verath begins here.
[ Version 1.4 - Stablemaster cunnilingus ]

"Adds an NPC to Flexible Survival with a variety of responses and goals..."

[ fancyquest ]
[ 0 = not started / refused ]
[ 1 = found ignored memos ]
[ 2 = agreed to find items ]
[ 3 = gave tiger patches and wyvern goop ]
	[ got leather duster ]
[ 4 = told to find construction materials / tools ]

[ 16 = become Stablemaster ]
[ 101 = fled Hardware Fort in front of Horsemen ]
[ 102 = failed Hardware Fort too often ]

[ Thirst of Fancy:]
[ 0 = not started / refused ]
[ 1 = found ledger token ]
[ 2/3 = agreed to investigate warehouse ]
[ 4 = return suit to Fancy]
[ 5 = find Nermine ]
[ 98 = rejected helping Fancy ]
[ 99 = got coordinates from Fancy but no further involvement ]
[ 100 = redeemed token ]

NightmareOfficeRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule:
	if fancyquest > 15 and fancyquest < 100 and NightmareOfficeRoomConnection is 0:
		change the north exit of Employee Access to Master's Office;
		change the south exit of Master's Office to Employee Access;
		now NightmareOfficeRoomConnection is 1; [room connected]

Section 0 - NPC Setup

Fancytalk is a number that varies.
Fancyaroused is a number that varies.[not a needed number, but used to set different arousal states if they aren't automatically willing to just hop into bed.]
Fancyquest is a number that varies.[often used for quests or renamed to Fancyquest, see Boris for some good examples of this, totally unneeded if the NPC doesn't have an associated quest.]
Fancyfucked is a number that varies. Fancyfucked is usually 0.
Nightmareslavery is a number that varies.
Nightmaremastery is a number that varies.
nmformswitch is a truth state that varies.
fancymfcount is a number that varies.	[controls cycling through the various M/F sex scenes]
fancyffcount is a number that varies.	[controls cycling through the various F/F sex scenes]

Table of GameCharacterIDs (continued)
object	name
Fancy	"Fancy"

Fancy is a woman.
[Physical details as of game start]
ScaleValue of Fancy is 3. [human sized]
SleepRhythm of Fancy is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Fancy is 0. [X cock]
Cock Length of Fancy is 0. [X Inches]
Ball Size of Fancy is 0.
Ball Count of Fancy is 0. [X balls]
Cunt Count of Fancy is 1. [X pussy]
Cunt Depth of Fancy is 24. [X Cunt]
Cunt Tightness of Fancy is 12. [X Cunt]
Nipple Count of Fancy is 2. [X nipples]
Breast Size of Fancy is 4. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Fancy is true. [can take oversized members without pain]
Sterile of Fancy is false.
PlayerMet of Fancy is false.
PlayerRomanced of Fancy is false.
PlayerFriended of Fancy is false.
PlayerControlled of Fancy is false.
PlayerFucked of Fancy is false.
OralVirgin of Fancy is false.
Virgin of Fancy is false.
AnalVirgin of Fancy is false.
PenileVirgin of Fancy is true.
SexuallyExperienced of Fancy is true.
MainInfection of Fancy is "Mareslut".
Description of Fancy is "A rather sexy looking mare eyes you with amusement from where she is seated at the small table she is using as a desk, wearing only her soft pelt of white horse fur and a set of white panties that reveal far more than they conceal. Her body is well built and nicely rounded in all the right places. The horsewoman has nice strong thighs, and her powerful hooves stretch out in front of her, her legs parted teasingly to give you a good view of her tightly stretched panties. She rests her equine muzzle on her slightly hoof-like hands as she looks at you with anticipation, her deep blue eyes twinkling with amusement as she cocks her ears forward to hear what you have to say.".
Conversation of Fancy is { "Grumble!" }.
The icon of Fancy is Figure of Fancy_icon.

instead of sniffing Fancy:
	say "Fancy smells like a strong, willful mare. She smells strongly of sex and arousal, clearly an experienced lover.";

Section 1 - Talking w/Fancy

instead of conversing the Fancy:
	if Fancytalk is 0:[first time you encounter the NPC text]
		say "     'Well, hey there. It's interesting to see a new face all the way over here,' the white mare says with a smile on her muzzle before chuckling slightly to herself. 'Let me guess, the receptionist is off playing with that donkey toy of hers again, and there was no one at the front?' she asks with some amusement as she looks up at you. When you just shrug, she sighs and continues. 'Yeah well, figured as much. I guess since they let you in here, you must be a customer of some stripe... Either that or a very fast talker. Either way, welcome to [']The Stables['],' the mare says as she leans back and halfheartedly gestures with one of her hoof-tipped hands at the building.";
		say "     'It might be a bit old and all, but it's still nice and sturdy, and above all pretty damn secure - which has certainly become a more important factor due to recent events,' the mare adds, before focusing her attention back on you fully. 'The name's Fancy, and I'm kind of the mare in charge of this area, though it doesn't take much to keep things running smoothly enough. Though it certainly could be a bit better if we could only get some proper supplies,' Fancy says with a shrug. 'Still, this is the Mare's Quarters which, as you can see, is where all the mares stay and hang out when they aren't [']working['].' She pauses for a moment as she grins at you, stretching her hooves out in front of her teasingly as she leans back on her stool slightly.";
		say "     'In case you haven't figured it out yet, the Stables is a [']working house['], a pleasure palace, or to put it pretty bluntly, a proper whorehouse. It used to be people would come here on trips or vacation, and the women would come over from the red light district and do some [']room service['] of their own,' Fancy says as she watches your reaction with amusement. 'Now the owner just rents out members of his [']stable['] to anyone who has something to trade. I understand he used to be an avid collector of horses at one point, and now well, he just moved on to collecting a different type of horseflesh,' the mare says with some amusement.";
		say "     'So that's the basics, though I am sure you had figured most of it out for yourself already. After all, you did come here for a reason, I'm sure,' Fancy says with a smile, before sighing. 'Sad to say though, most of us mares over here are relaxing for now, and while I am sure you could certainly manage to entice several of them to play with you, they really are supposed to be resting and waiting their turn,' she says as she glances around at the few mares hanging around nearby pretending not to be listening. 'So if you are looking for some fun, you should head back and go through the doors to the main building, north of the reception desk. Of course if you just want to hang around with some mares, feel free to hang around here as long as you want,' the mare says with a smile as she shifts her weight forward to give you a nice view of her ample breasts. 'And I'm sure if you hang around here a while we can certainly find ways to help you fit in so to speak, and maybe you could even help me get this place fixed up a bit if you wanted. It would certainly be appreciated after all.'";
		increase Fancytalk by 1;
	else if fancyquest is 1 and Thirst of Fancy is 1:
		say "     Do you want to mention the ignored memos to Fancy, or ask her about the token you found in the ledger?";
		LineBreak;
		[]
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "The ignored memos";
		now sortorder entry is 1;
		now description entry is "Tell Fancy about the ignored memos";
		[]
		choose a blank row in table of fucking options;
		now title entry is "The token";
		now sortorder entry is 2;
		now description entry is "Ask Fancy about the token";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if (nam is "The ignored memos"):
						say "[NightmareQuest]";
					else if (nam is "The token"):
						say "[PonyQuest]";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	else if (Thirst of Fancy >= 3 and Thirst of Fancy < 90) or (fancyquest is 0 and Thirst of Fancy is 1) or (fancyquest is 100 and Thirst of Fancy is 1):
		say "[PonyQuest]";
	else if fancyquest >= 2 or (fancyquest is 1 and (Thirst of Fancy >= 90 or Thirst of Fancy is 0)):
		say "[NightmareQuest]";
	else if fancyaroused is 1:
		say "     'It was nice of you to help Daisy and Onyx out with their distraction I must admit,' the white mare says with a soft smile as she looks up at you with a teasing wink. 'One would almost think you wanted to stay around and help me keep this place running smoothly,' Fancy says with a soft smile as she looks around the mare's quarters before returning to eying you speculatively.";
	else if Fancytalk is 1:[Normal short messages the NPC will say each time you talk to them]
		say "[one of]'Hanging around the mares['] area some more? We are always glad to see a friendly face.'[or]'Back again? Maybe you are interested in a position here at the Stables? Or maybe even several positions?' Fancy says with a suggestive grin.[or]'Those damn horsemen are always breaking things on accident and never fixing them. I swear...'[or]'Try some of the food over there on the table. You might like it.'[or]'So, what do you like in a mare?' Fancy asks you teasingly. 'Breasts, legs, or ass?' she says, her hands rubbing over each part in turn as she watches your reactions.[or]'Were you looking for something here? Or maybe you were looking for someone?' Fancy asks you teasingly.[or]'I wish I could get some help around here sometimes; I only have two hooves after all!'[or]'You know what one of the best parts about this place? When they say hung like a horse around here, they really aren't kidding!' Fancy says with a snicker.[or]'It's good to have a nice safe stall to sleep in here while things go to hell out there. You should try it yourself sometime.'[or]'Enjoying the Stables so far?'[at random]";

Section 2 - Nightmare Quest

to say NightmareQuest:
	if fancyquest is 16:
		say "     [one of]'Welcome back, Stablemaster! How can I help you?'[or]'I was right, you do make a fine Stablemaster.'[or]'Have you decided what you are going to call the former Stablemaster? I am partial to Topaz myself.'[or]'Anything I or my mares can do for you now?'[or]'Be careful, there are still a few of the stallions who might try challenging you in the halls for dominance.'[or]'Now that you are in charge, I look forward to actually getting some things done around here!'[or]'Have you decided what to do about those uppity hyenas yet?'[or]'Don't worry about things around here. Now that you are the boss, the other stallions have started listening to me more.'[at random]";
	else if fancyquest is 15:
		say "'Ah, you're back. Ready to hear the plan?' Fancy says with a broad smile, before continuing without waiting for you to agree. 'Basically the Stablemaster is in hiding, with some of his most trusted lieutenants nearby and keeping a lookout for him. The real problem is, if you tried to just break in to his office, he would most assuredly slip out one of his escape tunnels. No, you need to surprise him, which is where Daisy comes in,' she says with a smile as she gestures at the demure looking mare standing in the corner and eyeing you lustfully. 'Sometimes when we find a particularly lovely looking mare... we inform the Stablemaster, and when she is ready for her first breeding, we bring her to him and he finishes her transformation,' the white mare says with a smile and a fond sigh as if remembering something, before turning back to look at Daisy again. 'In this case, we have Daisy, who is exactly the type of mare he likes to 'break in' so to speak. So now all we need to do is let him know she is ready, and he will send one of his lieutenants for her.' Fancy turns back to you with a smile as she looks up at you. 'That's where you come in, all you need to do is take the place of the lieutenant and escort her back to the Stablemaster. He won't pay any attention to you once he gets a whiff of a nice virgin mare's heat, or at least he won't until after he lets you both in hopefully. Which is going to be your one shot at this,' the white mare says with a nervous snort and a slight shake of her head. 'If you lose, well we won't have another shot at this, and you and I are certainly not going to be trying again anytime soon. So be sure you are ready before we start,' she says with a soft smile before finally pausing and waiting for your response. Are you ready to take on the Stablemaster?";
		if Player consents:
			say "'Wonderful! I'll send a mare right away to let them know Daisy is ready for her final session,' Fancy says with a smile as she signals one of the other mares to come over and hands her an obviously prepared message for the mare to deliver. You find yourself waiting nervously by the door where Fancy indicates for the escort to arrive. You don't have to wait that long before one of the large and powerful horsemen saunters in, looking for his master's new prize, and you waste no time in attacking!";
			now inasituation is true;
			challenge "Horseman";
			now inasituation is false;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "Having defeated the horseman, you quickly slide on his decorated harness and grin slightly at the feel of the leather on your skin, even as the mares take the horseman away to lick his wounds for him... and possibly other portions of his anatomy as well. You are distracted from that sight, however, by the sight of Fancy leading a rather nervous and blushing Daisy up to you by a freshly attached collar and leash, and you can feel your own body stir as your sensitive new nose detects the faint but powerful scent of a mare in heat wafting off the mostly changed woman. Taking the leash carefully, you quickly begin heading down the corridor Fancy directs you to, your mind already beginning to fill with thoughts of the fun you and daisy might have later on, once the Stablemaster is dealt with of course. These idle and sexy thoughts distract you until you are almost at the Stablemaster's door, at which point you shake yourself and try to focus on the task at hand. Reaching the door you knock to let him know you have arrived, and are not surprised when a small slot opens in the door so the Stablemaster can get a look at his visitors. Not unsurprisingly just as Fancy predicted, the burning red eyes staring out of the slot barely pay you any attention, but are immediately fixed upon the sexy new mare next to you, and you hear the person on the other side take a deep breath before panting slightly with arousal, her scent of heat obviously affecting the Stablemaster just as strongly as it did you.";
				say "The slot in the door slams shut, and you can hear several locks click back before the door swings open wide and you and Daisy are ushered inside the rather nicely appointed room, most of which appears to be taken up by large mattresses and cushions like something out of a porn movie. Turning quickly as the door swings shut behind you, you get your first look at the Stablemaster and find yourself almost in awe of the power radiating within the dark black horseman, his mane and tail almost seeming on fire with dark energy as he stares with lust at Daisy. The sight of his shimmering black hide reminds you of your own transformation, and you realize that this is going to be a tough fight as you slip the gold collar Nermine gave you out of your pack carefully. You don't have much time to prepare for combat however, as his eyes drift from daisy to you, and you can see his almost demonic red eyes widen as he takes in your own powerful form, and you leap forward with the collar outstretched, trying to snap it on him and end the fight quickly. Unfortunately, he reacts with almost supernatural speed as he knocks the collar away, its golden runed form disappearing into the cushions nearby as the Stablemaster grins at you evilly. You almost swear you can see smoke coming out from his equine nostrils as you prepare yourself for what promises to be a very tough fight.";
				now inasituation is true;
				challenge "Nightmare";
				now inasituation is false;
				if fightoutcome >= 10 and fightoutcome <= 19:
					if Player is male:
						say "Grinning down at your obviously needy new pet, you decide to waste no time in ensuring her body bears your mark permanently, as well as your collar. And you quickly have her bent over one of the cushions and are buried up to the hilt in her new amazingly soft wetness, the fact that she was a powerful independent stallion only minutes before only making your conquest of the new mares soft body seem all the sweeter as you thrust into her again and again. As aroused as you both are, it doesn't take much for you to cum, your orgasm making you cry out with pleasure as you fill her body with your seed, branding her as your pet now and forever. And as the former Stablemaster, and now stableslut collapses down on the cushions as you pull out of her. You turn with amusement to the other heat-filled mare in the room, a smile tugging on your face as you move forward to do your Stablemaster's duty with the new mare as well...";
						say "Eventually though, after you have sated your lusts on your new mares bodies several times, you call in several of the horsemen, and enjoy their looks of shock as they see the state of the former Stablemaster. They quickly snap to attention however as you explain the way things are going to be from now on, nodding with increasing eagerness as they bring Fancy and several of the other important equines in the Stables to your office so you can begin to go over the changes you plan to make. Eventually your first days work is done, and you relax back in your new office happily, already planning a few redecorations as you grin with amusement at where your new slave is sitting waiting for you.";
					else:
						say " You grin down with amusement at your obviously needy new pet, the eager and lust-filled expression on the new mares face making you feel even more powerful and dominant as you lie back on the cushions to rest after your recent exertions. Not wanting to waste the moment, you quickly gesture for the former Stablemaster to come over and prove what a good little stableslut she is now instead, as you spread your legs slightly for her. The black mares eyes light up with joy as she crawls forward and buries her muzzle in your obviously damp snatch, her soft tongue and velvety muzzle feeling amazing as she begins to lick and tease at your damp sex like a pro. Grinning at that thought, you hear a moan of arousal from the other mare in the room, and deciding not to leave her unattended to, you gesture for daisy to come join the fun as well. Soon the changing mare is kneeling down next to you while you fondle her breasts and one of your hands pumps in and out of her heat-filled pussy teasingly, her changing hands roaming your body, even as your new slave worships your sensitive maresex lovingly.";
						say "Given how aroused you all are, it isn't long before you are all orgasming again and again, your body shuddering with pleasure as the two mares worship it adoringly. Your muzzle stretches with amusement as you see Daisy's changing form quickly catch up to that of your new sluts, as she finally gives in fully to her heat and becomes a proper little mare slut for your amusement. Eventually though, after you have sated your lusts on your new mares bodies several times, you call in several of the horsemen, and enjoy their looks of shock as they see the state of the former Stablemaster. They quickly snap to attention however as you explain the way things are going to be from now on, nodding with increasing eagerness as they bring Fancy and several of the other important equines in the Stables to your office so you can begin to go over the changes you plan to make. Eventually your first days work is done, and you relax back in your new office happily, already planning a few redecorations as you grin with amusement at where your new slave is sitting waiting for you.";
					now Nightmaremastery is 1;
					now Daisy is in Master's Office;
					move player to Master's Office;
					change the north exit of Employee Access to Master's Office;
					change the south exit of Master's Office to Employee Access;
					now fancyquest is 16;
				else:
					say "'So this is what my new pet wanted to do to me, well remind me to reward Fancy properly for her gift of a lovely new slavegirl,' Your master says with amusement as he looks down on you with a smug smile, the sexy tones of his voice making you shudder and whimper with need, 'Though perhaps I should take some time out to enjoy my new pets first, what do you say pet?' he asks you with amusement, and you find yourself nodding eagerly as your master comes towards you, his cock bobbing teasingly as he approaches, and your mind fills with his amazingly arousing male musk. 'Well pet, spread those legs for your master,' the powerful stallion says with amusement, and you whimper at your stupidity as you hurry to comply, maybe if you had spread yourself as soon as you noticed how wonderful your master was, he would already be inside your eager body you think as you curse your slowness and resolve to do better. He chuckles softly as you eagerly spread your body out in front of him, and wastes no time burying his amazing blunt stallionhood in your deep mare's pussy, making you moan with delight as you feel your master's cock inside your body. He wastes little time in pulling back and thrusting into you again, his amazing velvety cock making you moan with delight as he begins to build up a rhythm of sharp fast thrusts into your eager form.";
					say "Each thrust of his cock into your body seems to resonate with the power still within you, and the new lovely collar you wear, and you can feel each stroke of his cock into your body burn through your mind as well. Each powerful thrust of your master into your body altering your mind as well, as all those unnecessary thoughts of independence and dominance are erased, and the rest of your memories are rewritten and changed to be more appropriate to those of a servant of such a powerful master. Your ambitions for success shift to become ambitions for your master's success, your knowledge and skills exist for him to use, and your beautiful slutty body is his to use and enjoy. This realization makes you cry out with pleasure, and your pussy clench eagerly around the stallions thick rod, causing him to grunt in pleasure as well as with one last powerful thrust he buries himself in your body one last time, as his thick wonderful seed spills forth into your all too eager womb.";
					say "The feel of your master's seed filling you is so amazing, you find yourself crying out with pleasure yet again, as the amazing sensations intensify and your own orgasm rocks your body, sending your already lust hazed mind spiraling out of control as you pant limply underneath the wonderful specimen of stallionhood above you. You barely notice when your master pulls his still thick rod out of your body, as you lie there limply, only barely able to think enough to miss that wonderful warm feeling of being filled as you look up at him with dazed eyes as the stallion turns eagerly to the other heat-filled mare over in the corner. What a lucky mare you find yourself thinking absently as your eyes drift shut and you begin to drift off in a haze of pleasure, such a lucky lucky mare indeed to be fucked and bred by such a powerful stallion, and maybe even bear his foals.... With that last thought swimming around in your head, you finally succumb to the teasing whispers of unconsciousness, with a happy smile on your new equine muzzle ";
					now Nightmareslavery is 1;
					now humanity of Player is 0;
[					now Body of Player is ""; ]
[					now BodyName of Player is "equine"; ]
[					now scalevalue of Player is 3; ]
[					now bodydesc of Player is "sultry"; ]
[					now bodytype of Player is "[one of]equine[or]horse-like[at random]"; ]
[					now SleepRhythm of Player is 2; ]
					follow the turnpass rule;
			else:
				say "Defeated by the horseman, you feel utterly humiliated as he prepares to haul his prize off to the Stablemaster for training, only to be saved at the last minute by the intervention of Fancy and several of the other mares who pile on the victor. Their excited cooing and praise for his prowess distracts the horseman as he quickly becomes lost amidst the sea of female horseflesh, his attention diverted from you long enough for you to crawl away and escape. As you begin to recover for a minute, you sigh sadly as you realize that you are in no shape to fight the Stablemaster now, not with your body as sensitive as it is from the horseman's attentions, and by the time you have recovered the Stablemaster will surely be suspicious and check his returning lieutenant carefully.... Unfortunately this means that you will have to wait and try the trap again once you have properly recovered from the horseman's sexual assault...";
				SanLoss 20;
		else:
			say "'Well OK then, but don't wait too long, we won't have many opportunities at this,' Fancy says nervously as she glances around the Stables, before sighing and settling back down to wait for you to be ready.";
	else if fancyquest is 14:
		if hellgatherquest is 6:
			say "'You're back! Do you have the ingredients we need and the item?' Fancy asks nervously as soon as you approach her, and lets out a large sigh of relief as you pull out the small pouch with the ingredients you gathered, as well as the small box containing the collar Nermine made for you. 'What a relief, I don't think I could have put up with the stress much longer,' she says with a smile as she takes the pouch with you and quickly heads into one of the rooms in the mares quarter to mix up your next drink. You find yourself smiling at the numerous mares in the area as you wait, enjoying their submissive and aroused responses, and realizing that if you succeed at becoming the Stablemaster, all the mares in the Stables will belong to you... and the stallions too actually now that you think about it. It isn't long however before Fancy returns with your final drink, a rather larger one this time than the other smaller vials, and you raise one of your rather expressive new equine eyebrows at her questioningly. 'You will need all the help you can get, so I had the girls gather as much of the ingredients needed as possible... besides this should be your last dose,' the white mare says with a smile as she holds the cup up for you to drink.";
			say "Feeling rather exposed as she obviously expects you to drink the mixture right here and now, you nervously shrug before putting the cup to your lips and draining the contents. The now familiar burning and tingling sensation rushing through your body and filling you with strange energy, even as you can feel your muscles begin to twist and reshape. You groan slightly as your form shifts, the change spreading through your body faster than ever before as your feet shift and change into powerful flame colored hooves, your legs shifting as well into the proper digitigrade stance of a powerful stallion. The feel of your hands shifting and your arms and body becoming far more muscular and equine is actually increasingly amazing, and you let out a loud low whinny of pleasure as you back shifts and lengthens slightly, before the changes begin to eventually settle down. Even your mane and tail seem to blaze brightly now with an almost fiery energy, and your obsidian black hide seems to shimmer and absorb the light as it shines darkly in the well-lit room. You can tell as you look around that your new form is absolutely the pinnacle of equine power and sexuality from the many admiring and lustful looks all the mares in the area are giving you, and you pause for a minute to stretch and show off your new body before turning back to Fancy.";
			now fancyquest is 15;
			say "'Wow, you look... amazingly good,' the obviously aroused mare says rather dreamily, before shaking herself slightly and smiling back up at you. 'This could actually work I think, you just need to beat the Stablemaster now, and get the collar on him, I take it Nermine explained what it does?' she says with a smile, her smile stretching into a rather predatory grin for an equine as you nod in agreement. 'Excellent. Now the only hard part left is actually drawing the Stablemaster out, or getting you in to see him. He has been extremely cautious lately, and with good reason obviously.' Fancy smirks slightly as her eyes linger on your new powerful equine form. 'Now we have a plan for that actually, and we have been keeping her nice and ready just in case things worked out,' she says with a gesture at the almost completely changed mare named Daisy. 'You just me know when you are ready to take him on, and we will get you in to see him! What happens then depends on you... though for my sake at least, I hope you win,' Fancy says with a smile as she looks up at you with a mixture of lust and adoration in her eyes.";
			now nightmaretf is 4;
			now BodyName of Player is "Nightmare";
			now Body of Player is "the strong and powerful body of a black stallion, with blood red hooves and hoof tipped hands, as well as a large chest and fully digitigrade equine legs. Your new body is amazingly responsive and powerful feeling, with almost unnatural amounts of energy surging through you constantly";
			attributeinfect "Nightmare";
			StatChange "Strength" by 4;
			StatChange "Stamina" by 4;
			StatChange "Charisma" by 4;
		else:
			say "'Any word back on the ingredients we need? Or the item that was ordered from her?' Fancy says with a hopeful smile as she looks up at you eagerly, and you feel rather embarrassed as you shake your head and she sighs unhappily. 'Well keep trying... We can't keep the plan from the Stablemaster much longer...' the white mare says with some disappointment as she goes back to her duties as head mare.";
	else if fancyquest is 13:
		say "'Looking great there you sexy beast you,' Fancy says with a smile as she takes in your new surprisingly sleek black equine countenance, and your shimmering black furred hide. 'I have a bit of bad news for you though,' the white mare says with a soft sigh as she shakes her head slightly. 'I think the Stablemaster is getting suspicious, and well, it would of course have been too much to hope that he wouldn't notice the power coming on and the new atmosphere around here. Though I don't think he knows about you yet, after all, you're still here aren't you?' she says with a sly grin on her muzzle before continuing. 'But this means we probably have to act a bit faster than intended, and you are going to need another dose even sooner than expected, and one with a bit of extra kick as well if you know what I mean.' The mare winks at you teasingly before smoothing her hand through her soft white fur and continuing nervously. 'The problem is, well we haven't managed to collect another draft of the main ingredient yet, and I haven't managed to get another of the horsemen to go to the weird shop at the mall where I get the special additives to mix into it that help to make you just as powerful as the Stablemaster is. Plus I ordered a special item from her as well a while ago, and while it wasn't quite ready last I heard she needed some special ingredients to finish it...' Fancy sighs helplessly, before looking up at you coyly. 'Maybe you could go check on the shop near the mall? Though I heard it moves sometimes... I think the shopkeepers name was Nermine, and well... no one else I trust will go near her after what happened to the last stallion to visit her, though in my defense, she does make a lovely little cow now, and her milk is quite nice!' she says nervously, before sighing and looking up at you hopefully, her words and attitude making you wonder just what kind of trouble you are about to get into.";
		now fancyquest is 14;
		now hellgatherquest is 1;
	else if fancyquest is 12:
		say "'Going to finish your drink? A lot of work went into acquiring it after all,' Fancy says teasingly as she leans back at her desk, obviously hoping for a sexy show.";
	else if fancyquest is 11:
		if provingstallionhood is 3:
			say "'Excellent work!' Fancy says as you return once again to the now familiar mares quarters. 'I heard back from several of the stallions about your smashing victory, and now everyone is behind you pretty solidly, or at least willing to wait and see what happens,' she says with a sexy smile as she pulls out another of those vials filled with the increasingly familiar multicolored liquid. 'And best of all, I managed to get the ingredients together to mix up another batch of the Stablemaster's special drink for you. Which should really help toughen you up a bit more, and best of all, should sexy you right up as well.' The mare smirks slightly with amusement as she passes over the full vial, obviously anticipating the changes to your body almost as much as you are beginning to.";
			now fancyquest is 12;
			ItemGain Nightmare Vial by 1;
		else:
			say "'Did you need some help working out what to do?' Fancy asks as you return to talk with her again. 'Go hunt around outside until you find a hyena rep, and have them take you to their negotiator, you won't talk to the matriarch most likely, but one of her lackeys, and they will probably make you put on a show or test you somehow before agreeing. After that, go explore in the Stables proper until you find a horseman who can guide you to where the worst doubters of your ability are, at which point you can pummel some sense into them!' she says with increasing excitement as she grins up at you.";
	else if fancyquest is 10:
		say "'Oh, I love the new look!' Fancy says with a broad smile as she takes in your newly changed face, her eyes examining your shapely new muzzle and lovely new mane. 'And I really like your mane! You are going to be a big hit around here, I can tell already!' she says as she fans herself teasingly with her hand, her honest appreciation making your new equine muzzle stretch in a grin as you glance around at several of the other obviously aroused mares eyeing you speculatively. 'Still we do have a few things left to do, thanks to your efforts, a lot of the mares are on board, but some of the stallions are starting to get nervous, the Stablemaster isn't known for being lenient, and quite frankly most of them don't think you have a chance in hell of actually replacing him. Not to mention several of the deals he has going on around town that certainly benefit the Stables,' Fancy says with a sigh, before shrugging and leaning forward slightly, her bright blue equine eyes fixed on you intently. 'That's why we need a show of force, to keep them quite a bit longer while you get more powerful, and so they can help me get your next drink prepared. So we need to make you seem both competent and powerful, fortunately several of us have come up with a way for you to do both, though it is going to require a bit of effort on your part.' She pauses for a minute and looks at you hopefully, seeming relieved when you nod at her eagerly.";
		say "'Well first things first, we need you to help 'renegotiate' an agreement we recently made with one of the largest gangs in the city, the hyenas. Honestly the current agreement pretty much favors the hyenas, and several people have been grumbling about it already.' Fancy smiles as she pulls out a sealed piece of paper and passes it over to you. 'This is a somewhat more fair agreement that I think they might go for; it's still somewhat in their favor unfortunately, but well they do outnumber us by a fair bit,' she says with a shrug, and you nod as well as you tuck the paper away safely. 'But if you can get the few concessions on that paper agreed to, I think that would silence a lot of the dissenters, and be a good step towards proving how tough you are. Once you have got the agreement, come back to the Stables, and several of the stallions have agreed to let you prove yourself by taking on several of the Stablemaster's closest supporters. If you can beat them, it will be a big blow to the Stablemaster's reputation, and certainly silence any doubts as to your ability to hold your own,' the sexy white mare says with a nervous grin as she sends you on your way, and you find yourself sighing slightly as you prepare to go 'bargain' with the hyena gang out in the city.";
		now fancyquest is 11;
		now provingstallionhood is 1;
	else if fancyquest is 9:
		say "'Well? Going to take a drink? We can't exactly keep pressing forward with fixing this place up if you aren't powerful enough to replace the current Stablemaster after all!' The sexy white mare says with a teasing smile as she looks you up and down speculatively.";
	else if fancyquest is 8:
		if generatorfixing is 4:
			say "'Welcome back!' Fancy greets you exuberantly as you approach, 'No need to tell me about it, everyone noticed when some of the lights came back on and the refrigerators started working again. This is going to make life around here so much better for everyone!' she says with a happy smile, and you can see several of the other nearby mares nodding in agreement and eyeing you speculatively. 'Here you definitely earned this,' Fancy says as she passes you another vial full of that strange yet powerful liquid, 'Several of the mares helped me acquire the ingredients this time, call it a thank you for all the work you have done for us so far, plus we can't wait to see how our new 'master' turns out!' she says with a fond wink as she grins up at you.";
			now fancyquest is 9;
			ItemGain Nightmare Vial by 1;
		else:
			say "'Still having trouble finding the information you need? Remember once you find a good reference guide head out back of the Stables to help them hook it up!' Fancy says with a broad smile and a happy tone, 'I just can't wait to have power again! Even if we will have to ration it!'";
	else if fancyquest is 7:
		say "'Ah there you are, and I see you definitely look a bit better now as well,' Fancy says teasingly as she eyes your new equine tail with open admiration, before shaking her head slightly and refocusing her attention on your face. 'Still, now that you have started to change, we have to keep things moving before the current Stablemaster finds out about this. You definitely aren't ready to take him on quite yet, and I certainly can't help but obey if he asks me anything,' the white mare says with a soft sigh before shaking her equine head sadly. 'Not that he ever really comes down here that is, which should give us some time,' Fancy says hopefully, before giving you a rather sexy equine grin as she flicks her mobile ears teasingly. 'Which we should definitely use to get on top of things around here, especially with all the new repairs to be made. Speaking of which, several of the stallions could use a bit of help, actually,' she says with a sigh as she rubs her forelock ruefully. 'They may be well endowed and all, but just not so much in the brain department anymore.' The mare shakes her head ruefully before looking back at you with a smile.";
		say "'Which is where we could use a bit of your help honestly, they brought back a pretty nice generator, several of them actually, as well as some solar panels. And in theory we should have power, and hot water again now... if they could only figure out how to get it running and wire it into the building without shorting everything out, or hurting someone else.' The white mare actually snickers slightly as she leans closer for a minute and whispers in a low voice. 'One of the stallions actually managed to shock himself pretty good messing around with it, his fur is still standing straight up and he has a hilarious stutter now as well! Not that it hasn't gotten him plenty of sympathy from the ladies as well.' Fancy chuckles at the situation, and gives you a little wink, and you can feel yourself grinning a bit as well at the image she paints. 'But well, that's where we could use your help, if you know anyone in town who knows electronics or can find some good instructions on the subject, well they could sure use the help out back, and to be honest I really don't trust the stallions to mess with something that dangerous on their own,' she says with a smile, and remembering the vast number of books back in the library, you nod to the sexy mare, and assure her you will do your best to find out what you need to know so you can hook the power up.";
		now fancyquest is 8;
		now generatorfixing is 1;
	else if fancyquest is 6:
		say "'Not having second thoughts are you?' Fancy asks teasingly as she gestures at the strange vial she handed you. 'If you want to become Stablemaster and continue to help out around here, you are going to need the power that gives you...' she says with a soft smile, before winking slightly, 'Besides I just can't wait to see how you turn out!'";
	else if fancyquest is 5:
		say "'You're back! Thanks a ton for all the help so far,' Fancy says with a happy smile as she sees you approach, 'Everyone's starting to take an interest in keeping the place in better shape now, and things are starting to get a bit more comfortable around here, and a bit safer too now that we are fixing some of the underground areas,' the white mare says with a smile as she pats your arm in thanks, her hand lingering a bit longer than necessary as she strokes your arm slightly before continuing. 'In fact, considering all you have done for us, you have made several friends around here, and more than a few mares are hoping you will join us on a more permanent basis at some point, including me,' Fancy says with a soft blush as she winks at you. 'You are actually doing a much better job of paying attention to the needs of the equines around here so far than the Stablemaster is... which actually brings up an interesting question...' Fancy pauses for a minute as if trying to decide exactly what to say, before sighing and leaning forward to address you directly, her equine eyes staring directly into yours as she continues. 'Have you thought about maybe well, challenging the Stablemaster at some point? We could really use someone with your strength and concern for the Stables in that position instead of the current owner,' the white mare asks you in a rather low voice as she looks up at you hopefully. Do you decide to take her up on her offer to replace the Stablemaster?";
		if Player consents:
			say "'That's wonderful! Of course you aren't powerful enough to take him on yet, and I am not sure everyone would accept you as the new Stablemaster yet either,' Fancy says in a low voice as she rubs the side of her muzzle thoughtfully 'Well first you need a much more powerful equine form than anyone else has, fortunately I can actually help you with that after having been here so long and watched the Stablemaster whenever I could...' she says with a rather mischievous smile as she glances around quickly before continuing, 'I even managed to acquire an item of his, which should let you start to acquire a similar form once you use it.... though it will take a bit more time and possibly some help from some of the others here to acquire more items,' she says with a sigh as she slips you a small wrapped package which seems to hold some form of glass inside, 'So if you keep helping me fix things around here, and get to know more people, we should be able to make you strong enough to replace the Stablemaster, and get you the support of the stablehands as well,' she says with a smile as she leans back and relaxes, while you take the item she gave you and examine it more closely, finding it to be a small glass container filled with some murky white and black liquid....";
			now fancyquest is 6;
			ItemGain Nightmare Vial by 1;
		else:
			say "'That's... really too bad,' Fancy says with a soft sigh, 'Well I suppose it was good of you to help us out a little bit at least, though I probably won't ask you for any more help in the future,' the white mare says with a sigh as she goes back to what she was doing.";
			now fancyquest is 0;
	else if fancyquest is 4:
		if recoveredhardware is 0:
			say "     'Having trouble finding a suitable spot? Well don't worry, I am sure you will find one if you keep looking,' Fancy says with a bright smile on her equine muzzle. 'And I really appreciate the help you are giving us with this. Why, if the Stablemaster cared half as much for the Stables as you do.... well maybe we can get into that later...' she says with a teasing wink.";
		else if recoveredhardware is 1:
			say "     'Having trouble finding a suitable spot? Oh, you've got one? Well, keep at it and hopefully you'll be able to get our stallions in there,' Fancy says with a bright smile on her equine muzzle. 'And I really appreciate the help you are giving us with this. Why, if the Stablemaster cared half as much for the Stables as you do.... well maybe we can get into that later...' she says with a teasing wink.";
		else:
			say "     'I hear you've been having trouble dealing with the creatures making trouble at that hardware store. You go toughen yourself up and head back in there. We really need those supplies and I really appreciate the help you're giving us with this,' she says alluringly. Why, if the Stablemaster cared half as much for the Stables as you do.... well maybe we can get into that later...' she says with a teasing wink.";
	else if fancyquest is 3:
		say "     'Back again and looking to help?' Fancy asks you with a happy smile as you approach her again, though she doesn't wait for a response on your part before continuing. 'Now that we have some stuff to do some patchwork around here, we could use some help getting some of the larger pieces we need to do some repairs,' she says with a rather determined nod of her equine head. 'Now I don't expect you to go hauling beams and construction tools back here on your own or anything, but I do need you to find and secure us a good supply of the items. Here,' she says as she hands you what looks like a small radio transceiver. 'I had one of the mares who knows a little bit about electronics still put this together, and I bullied a few of the stallions into agreeing to go out to pick up the items once you find them. It's amazing what a horse will do when his source of sex is threatened,' Fancy says with a soft equine snicker as she shakes her head at the silliness of the stallions.";
		say "     'All you need to do is locate a good spot somewhere in the city, possibly a large [bold type]hardware[roman type] store or construction site, clean it out of troublemakers, and then guard it while the stallions head there and haul off the materials. Should be simple for a fine and powerful specimen like yourself, right?' the white mare says with a teasing wink as she settles back down in her chair.";
		now fancyquest is 4;
		now Hardware Fort is active;
	else if fancyquest is 2:
		if carried of wyvern goop > 4:
			say "     'Ah yes! That sticky stuff should work fine to plug up some of the holes and hold some of the walls together when it hardens! Perfect!' Fancy says with increasing enthusiasm as she looks at the items you pull from your pack.";
			if carried of Tiger patch > 4:
				say "     'And you have some rubber patches here, too! Though that is a very odd patterned rubber,' she says with an intrigued tone as she looks at the striped patches of rubber before shrugging absently. 'Still, they should work great for patching some of the wiring and covering smaller holes. And since it looks like it might be still infectious, I wonder if we could find a [']volunteer['] to try a patch or two on so we could get more whenever we needed... Though maybe that's a thought for later,' Fancy says in an extremely cheerful tone as she takes the items from you and sets them aside.";
				say "     'I'll have several of the mares work on the repairs in their spare time. And I have to thank you for your help as well. It's really nice to have someone actually follow through on getting us some help around here,' she says with an equine grin as she leans back and stretches slightly. 'I wish the Stablemaster would take more of an interest in the running of the place instead of just enjoying the place... but still...' Fancy sighs slightly on the last note, before shrugging helplessly.";
				say "     'Still what can we get you for your help.... I know!' she says with a smile as she stands up and stretches slightly. 'Wait right here,' she says as she wanders off, her tail swaying teasingly behind her as she vanishes into one of the nearby rooms. She returns shortly with a rather interesting looking large black leather duster. 'This should help, and look pretty sexy as well,' Fancy says with a wink as she slips the soft leather coat onto you. You note that the leather appears to be not only rather sexy looking, but is also discreetly reinforced in key places. Having this on would help protect you quite well out there as well!";
				ItemLoss wyvern goop by 5;
				ItemLoss tiger patch by 5;
				ItemGain leather duster by 1;
				now fancyquest is 3;
			else:
				say "     'Though it looks like we still need some rubber patches to go with the plaster-like stuff,' Fancy says with a sigh. 'Maybe you should look around somewhere with a lot of balloons or something? Wasn't there a fair in town?' she asks hopefully as she looks at you.";
		else:
			say "     'Still no luck on finding the materials?' Fancy asks with a sad sigh. 'I am sure you can find some of them out there in the city somewhere. It doesn't matter if they are infectious or not really. In fact, it might be mildly preferable honestly...' she says with an equine grin as she gives you a wink.";
	else if fancyquest is 1:
		if fancyaroused > 1:
			say "     'Hey again there sexy,' Fancy says with a teasing wink as she looks at you curiously for a minute, only to blink when you mention the ignored memos. 'It figures they would just throw them away like that,' the sexy white mare says with a sigh. 'But it's nothing you need to worry your little head about right now,' she adds with a soft teasing smile as she stretches her nearly naked form out teasingly, seemingly unworried about the problem right now with you in front of her.";
			now fancyquest is 0;
		else:
			say "     'Hey there again, did you have some more questions about this place or did you need help with something?' Fancy asks with a soft smile on her white muzzle as she looks up at you again. She blinks in surprise as you mention the stack of memos you found, and that you were actually wondering if she needed help instead. Fancy's briefly stunned and then sighs, 'So they just tossed all my requests on a desk somewhere and forgot about them? That sounds about normal for this place, so I don't know why I am surprised.' She shakes her equine head sadly, before concentrating her attention on you again. 'And while I am sure I'm probably not supposed to get help from outside sources, if you are offering I certainly can't afford to turn down some help,' Fancy says with a rueful smile as she looks at you expectantly. Do you offer to help out?";
			if Player consents:
				say "     'Great! I could really use some help around here,' Fancy says happily as she rubs her hands together and smiles. 'Now let's see... what to deal with first...' She pauses for a minute as she stares around the mare's quarters speculatively before smiling and turning her large equine blue eyes back to you. 'I know! Since unlike most of us, you can still go out into the city and find things and, unlike the stallion's, you might actually bring back something other than new recruits, maybe you could bring me a few items,' the white mare says with a smile as she looks at you, and her grin only grows larger when you nod in agreement.";
				say "     'Great! Well, the first thing I suppose we really need is some supplies we can use to help patch this place up a bit. If you could get us some kind of sticky goop or substance to fill in holes and plug some of the leaks with and maybe a bit of rubber to patch some of the wiring with, it would be a great start,' she says with a small smile. 'About five samples of each should be enough to get us started,' Fancy adds with a happy nod of her equine head as she sends you on your way. You wonder idly where you will find the required items...";
				now fancyquest is 2;
			else:
				say "     'Ah well, I shouldn't be surprised I suppose, it isn't like anyone else wants to help out around here anyways...' she says with a sigh, before going back to pointedly ignoring you.";
				now fancyquest is 0;
	else if fancyquest is 101:
		say "     Fancy gives you an angry look as you come over. 'Oh, come slinking back here, have you? That's pretty bold of you after running out on the horsemen back when they were getting attacked. They eventually managed to get away with some stuff, but nowhere near everything they could have and only after taking heavy losses. They aren't too pleased with you at all and I can't say I blame them.' She crosses her arms sternly and gives a neighing grumble.";
		now fancyquest is 100;
	else if fancyquest is 102:
		say "     Fancy gives you an angry look as you come over. 'Oh, so you managed to pull yourself up out of that mess and so you come back here thinking everything's fine? That's pretty bold of you after all of your screw-ups with those hardware supplies. I told you to make sure it was safe before bringing the horsemen and in and instead you kept getting them into trouble. They managed to get away with some stuff, but nowhere near everything they could have and only after taking heavy losses. They aren't too pleased with you at all and I can't say I blame them.' She crosses her arms sternly and gives a neighing grumble.";
		now fancyquest is 100;
	else if fancyquest is 100:
		say "     [one of]'Get whatever it is you're here for over and done with and then shove off,' the mare grumbles[or]'I don't feel like even looking at you right now,' she grumbles before turning and stomping away[or]'You should clear out of here before I call the horsemen on you,' she threatens[or]'I don't want you harassing my mares, you failure,' she snarls[or]'I'd offer you some of the food, but I'm not even sure I want you among my mares,' she snaps at you[or]'I don't see why you think you can keep bothering me like this,' she grumbles[or]'Well, there's no chance you're getting any of this now,' she says tauntingly as she poses sexily and plays with her breasts[or]'Those horsemen you let down aren't too bright, but at least their strong and brave - not like you. And it helps that they're also hung like horses,' she laughs mockingly[or]'You better not be bothering my mares,' she tells you sternly[at random].";


Section 3 - Pony Quest

to say PonyQuest:
	if Thirst of Fancy is 1:
		if fancyquest <= 1:
			say "     The mare examines the token and scrap of page you had retrieved from the ledger. 'Well, I can tell you what this place is,' she finally says after a long period of silence. 'This is one of the Stables['] suppliers of gear, although we hardly buy from them. It's a warehouse in the Red Light District which has fancier stuff - pardon the pun - than what the stallions normally get: latex, silk, that kind of thing. Most of their orders come from the girlier ones, and they don't get nearly as much leeway to spend as the big guys - the Stablemaster likes his henchmen loyal, so in return they get their picks while the rest of us scrounge for scraps.' A hint of resentment creeps into her voice for just a brief moment.";
			if fancyquest is 0 and Ignored Memos is resolved:
				say "     Shaking her head, her muzzle creases into a frown. 'So why did our dear Stablemaster order several crates of gear from them? The normal orders barely fill a single box, and we have more than enough of the regular stuff anyway. Plus he's being very discreet about this - if I hadn't checked this code, I don't think anyone would have known about this order. He's up to something.' She turns to you and narrows her eyes. 'I know what I said before, and I wasn't intending to ask anything of you again... but this is important, and I'm far too busy to do this myself. If you happen to be passing by the warehouse, you can try exchanging this token for whatever this is meant to redeem. If it looks interesting, I'll be grateful if you were to bring it back here.' She doesn't sound particularly hopeful, however, clearly still stung from your earlier rejection.";
				now Thirst of Fancy is 2;
			else:
				say "     Shaking her head, her muzzle creases into a frown. 'So why did our dear Stablemaster order several crates of gear from them? The normal orders barely fill a single box, and we have more than enough of the regular stuff anyway. Plus he's being very discreet about this - if I hadn't checked this code, I don't think anyone would have known about this order. He's up to something. Do you mind doing me a favor and checking out what this item is? This paper is good for one redemption - if you get a sample, we can figure out what he's planning.' She gives you a set of directions that you take care to memorize. 'And be careful - if he knows you're onto him, he might have sent someone to meet you there,' she warns.";
				now Thirst of Fancy is 3;
		else if fancyquest is 100:
			say "     It takes a few tries before Fancy even acknowledges you long enough to listen to your explanation. 'I don't know why I'm bothering to help you at all,' she grumbles, 'but this is a token from one of our suppliers in the Red Light District. I'll give you the coordinates if it'll make you remove yourself from my sight.' She scribbles something roughly on a piece of paper and thrusts it in your direction, immediately going back to ignoring you.";
			now Thirst of Fancy is 99;
	else if Thirst of Fancy is 3:
		say "     'Any luck finding the place?' the mare asks eagerly. 'It should be in the Red Light District, you can't miss it. [if Resolution of Transformationledger is 1]You might want to be on your guard, though; the Stablemaster is in a bad mood, so it sounds like he's discovered your sabotage. Keep an eye out for his goons.'[else if Resolution of Transformationledger is 2]The floor supervisor is a friend of mine - just give her the token and say that Fancy sent you if you're having trouble.'[end if]";
	else if Thirst of Fancy is 4:
		say "     Fancy breaks into a sly grin as you set the bag down in front of her. 'No luck with opening this?' she comments in amusement. 'I know the feeling. Let me get it for you.' She takes a pair of scissors and slices the bag open, allowing its contents to spill out. It smells very much like new rubber, and you're not sure whether you want to cover your nose or take a deep breath. 'Figures,' Fancy snorts as she holds up the outfit, letting it unfurl into its proper shape. 'He's tired of waiting for the nanites to do their work, so he wants to turn more people into ponies the good old-fashioned way. Can't believe the nerve of him to spend all our funds on this instead of repairing this old place... Well, we know what he's planning now.'";
		say "     The mare gives you a thoughtful look. 'I have an idea in mind that might take him down for good using his own playthings against him, but I'll probably need your help. The downside is that you'll have to wear one of these things for a while. Interested?'";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Agree to help Fancy.";
		say "     ([link]N[as]n[end link]) - This is too much for you. No thanks.";
		if player consents:
			LineBreak;
			say "[ContinuePonyQuest]";
		else:
			LineBreak;
			say "[EndPonyQuest]";
	else if Thirst of Fancy is 5:
		say "     'Have you gotten Nermine's item yet?' Fancy asks anxiously, then lets out a sigh at the negative answer. 'We're still working on modifying that suit - it's a delicate process, trying to make the changes as unnoticeable as possible. But we need that item if we're going to take the Stablemaster down for good.'";

to say EndPonyQuest:
	if fancyquest is 0 and Ignored Memos is resolved:
		say "     She folds her arms and huffs. 'Between you and me, I'm out of options. Maybe it's better that he does whatever he likes, and hopefully he'll eventually get bored of this place and turn it over to someone else.' She lets out a defeated sigh and turns back to her work without a further word."; [Ends the storyline]
		now Thirst of Fancy is 98;
	else:
		say "     She folds her arms and huffs. 'I can't do anything about this on my own, but I'll send him a memo telling him exactly what I think of his little scheme. We really need to find a replacement for that useless lout...'"; [Ends the storyline]
		now Thirst of Fancy is 98;

to say ContinuePonyQuest:
		say "     She tosses you the latex garment, the suit landing in your arms with a soft flop. 'What you're holding there is a ponysuit,' she explains to you as she holds up a card that had been hidden within the fabric, showing you a picture of what appears to be a blank-eyed horse. 'It's meant to keep you stuck inside while making you look like a pony on the outside - the perfect slave for our little place, in other words. You won't be able to use a finger when your hands are in the hoof mitts, and without a finger you're not getting out of this by yourself. You'll be stuck inside, no doubt making horsey noises out through your little muzzle while you're getting pounded by a lucky stallion.' She flashes you a grim smile.";
		say "     'What we're going to do is make sure you're not helpless inside, so you can get close to the Stablemaster,' she continues. 'The suit will need to be modified with wrist zips so you can slip your hands out in a split, and in the meantime I've commissioned something that can deal with the Stablemaster if you can get close enough to use it on him. I'll have your suit sorted if you can go find this shopkeeper called... Nermine, I think... and hopefully her shop hasn't moved - it should be near the mall. Try not to let her turn you into a cow,' she quickly adds.";
		now Thirst of Fancy is 5;



Section 4 - Fucking Fancy

Instead of fucking the Fancy:
	if Player is neuter:
		say "     Currently lacking a gender, you don't really have much to tempt Fancy away from her duties at the moment.";
	else if fancyquest >= 100:
		say "     'While a little romp might be fun, I don't particularly feel you're what I'm looking for. Clearly I was wrong about you; you messed things up too much.";
	else if lastfuck of Fancy - turns < 6:
		if fancyquest < 16:
			say "     'That certainly sounds tempting, but I've unfortunately still got a lot of work to do around here. Despite what the Stablemaster may think, this place doesn't run itself.'";
		else:
			say "     The white mare moans as you fondle her, but rebukes your offer for sex. 'That is very tempting, Stablemaster, but there is still a lot of work I need to take care of around here. This place doesn't run itself, you know.'";
	else if fancyquest is 16:
		quietrestorenightmareform;
		say "     Eyeing Fancy, you grow aroused and approach her with lustful intent[if nmformswitch is true]. Your lust for the mare who helped make you Stablemaster awakens your Nightmare form, transforming your body to that of the powerful equine[end if]. Putting your arms around her, you grope the lovely white mare with a hoof-hand on her breast and another on her ass. She moans at the possessive manhandling and makes no attempt to stop you.";
		if Player is male:
			if fancymfcount is even:
				say "     'Come to take your privilege, my Stablemaster? I think I can fit you into my busy schedule,' she says teasingly, rubbing herself back against you, already feeling your stiff member rubbing across her labial folds. You can feel the growing dampness of her arousal, the mare quite aroused by the touch of your equine cock and the scent of your virile musk. Fondling her breasts, you have her lean over the feeding table and spread her legs before thrusting your [cock size desc of Player] shaft into her accommodating cunt. She nickers in lustful delight as you plough into her, claiming this ivory mare as is your right as the master of this brothel.";
				say "     Fancy, as your female counterpart, is perfectly sized to accept your [if Cock Length of Player < 5]small[else if Cock Length of Player < 12]adequate[else if Cock Length of Player < 24]sizable[else if Cock Length of Player < 36]mighty[else]huge[end if] member with just enough tightness to provide for a really good fuck. Your flat glans pushes deep inside her with every thrust you make, kissing at her cervix when you push fully into her wanton hole. Her moans and nickers of pleasure grow more heated when you start nipping at her shoulders and neck while you mate her. Her plump breasts swing and sway as you pound into her with growing zeal. For while you started out slow, remembering how much she's done for you to make you what you are now, you start to lose track of that and focus instead on how you need to show this strong, confident mare that you're the master now. And she takes the rough mating eagerly, her body and mind lusting for her chosen stallion to fill her with his seed.";
				say "     As your climax approaches, you grab her breasts once again and start playing with their large, pink nipples. Pinching and playing with them coaxes dribbles of milk from her mammaries that soon turn to squirts of mare milk spraying across the foodstuffs on the table. Knowing this will infect any visitors who sample the items as well as help keep the mares here as horny females, you make sure to anoint everything with a fresh dose of Fancy's milk. The thoughts of those hapless visitors turning into more mares for you to breed is enough to drive you to climax. Thrusting fully into the moaning mare, you unleash your hot semen into her. With your glans kissed right up against her cervix, much of your [Cum Load Size of Player] load is sent directly into her waiting womb. Before pulling out, you motion for several of the others mares watching the lustful mating to come over. They eagerly accept your cock into their hooves and mouths when you pull out while others lap the excess dripping from Fancy's creamy cunt. You fuck several of these girls before you finish by having Fancy herself suck your well-used cock clean.";
			else:
				say "     'Back for more, I see,' she says playfully as she reaches down to take hold of [if Cock Count of Player > 1]one of [end if]your stiff equine cock[smn]. 'Mmm... let me show you how much I appreciate having a new, strong stud around here,' she adds, lowering herself to her knees and nuzzling at your manhood. She rubs your flared glans[esmn] all across her equine face, letting your musky pre drool onto her white coat. After slathering herself in your scent, she nuzzles lower still and starts licking and kissing your balls, exciting you further. You give an appreciative nicker as she licks across your scrotum and nibbles it lightly. It pleases you greatly to have this strong, confident mare worshiping your stallionhood.";
				say "     After lavishing all this attention upon your equine pride, you're dribbling all the more. Seeing this, she licks her lips and then plunges her muzzle over [if Cock Count of Player > 1]one of [end if]your black spire[smn]. She works your [cock size desc of Player] cock with expert skill. Her practice from satisfying the stallions and training the mares to do the same has made her very talented at pleasing [if Cock Length of Player > 25]even a big[else]a[end if] horse cock like yours. She does things with her tongue, palate, teeth and long mouth and throat that you would not have believed possible were you not experiencing it for yourself.";
				say "     And despite the great pleasure her muzzle brings, she's also able to keep you from blowing your load too quickly, drawing it out without letting the ecstasy wane. This oral delight is drawn out until finally you grab her head and shove your cock down her throat before unleashing your pent-up load[if Cock Count of Player > 2]. Your additional penises spew forth semen as well, painting streaks of goo onto the mare's beautiful face and body[else if Cock Count of Player is 2]. Your additional penis spews forth semen as well, painting streaks of goo onto the mare's beautiful face and body[end if]. Blast after blast of powerful stallion cum fills her muzzle and is swallowed down until you're drained. After you pull out, you select a few of the mares watching the lustful display to come over. You screw them while watching a pair take turns eating out the lead mare.";
			increase fancymfcount by 1;
		else:
			if fancyffcount is even:
				say "     'Come to take your privilege, my Stablemaster? I think I can fit you into my busy schedule,' she says teasingly, rubbing herself back against you. You slip your hoof-like hand from her ass to between her legs, running your fingers across her labial folds. They are already quite damp with her arousal, your touch and your scent having a strong effect on the mare. Fondling her breasts, you have her lean over the feeding table and spread her legs before thrusting your fingers into her accommodating cunt. She nickers in lustful delight as you play with her body, claiming this ivory mare as is your right as the mistress of this brothel.";
				say "     Fancy, as your white counterpart, responds with nickers and moans as you pump your digits into her heated cunny. These grow even more excited when you start nipping at her shoulders and neck as you finger-fuck her. Her plump breasts swing gently as your thrusting fingers make her hips rock over your wriggling digits. For while you started out slow, remembering how much she's done for you to make you what you are now, you start to lose track of that and focus instead on how you need to show this strong, confident mare that you're the mistress now. And she takes the rough fingering eagerly, her body and mind lusting for her chosen mistress to have her way with her.";
				say "     After driving the ivory mare to a quick climax, you grab her breasts with your sticky fingers and start playing with their large, pink nipples. Pinching and playing with them coaxes dribbles of milk from her mammaries that soon turn to squirts of mare milk spraying across the foodstuffs on the table. Knowing this will infect any visitors who sample the items as well as help keep the mares here as horny females, you make sure to anoint everything with a fresh dose of Fancy's milk. The thoughts of those hapless visitors turning into more mares for your collection gets you wet and dripping between the legs. Turning the moaning mare around, you push her to her knees and press her equine muzzle to your crotch. Needing no instruction, the still dripping mare dives right in, licking across and into your cunny. Her broad tongue, familiar with pleasing the equine pussies of her charges, plays artfully across your sensitive folds and clit. She gives you a very satisfying tonguing before you climax, soaking her muzzle in your hot juices. When you finally push her away, you motion for several of the others mares watching the lustful sex to come over. They eagerly accept their own turns between your legs, licking and lapping at your pussy for their own share of your strong juices, reminding them to whom they belong. You go through several of the girls before you finish by having Fancy eat you out once again to another powerful climax.";
			else:
				say "     'Back for more, I see,' she says playfully as she presses her ivory body to yours. Her hands move down to your crotch, rubbing across [if Cunt Count of Player > 1]the wet folds of your pussies[else]your wet folds[end if]. 'Mmm... let me show you how much I appreciate having a new, strong mare around here,' she adds, lowering herself to her knees and nuzzling at your cunn[yfn]. She rubs her lips and broad nose against your wet loins, smearing your warm juices across them. After filling her nose and marking her muzzle with your scent, she releases a sighing nicker and gives your puss[yfn] a long, slow lick from bottom to top, exciting you further. You give an appreciative nicker as she licks across your folds and nibbles them lightly. It pleases you greatly to have this strong, confident mare lavishing attention upon your cunt[sfn].";
				say "     This treatment gets you all the more excited and soon you're practically dripping with juices. Seeing this, she licks her lips and then presses her muzzle back between your legs. She works her tongue into [if Cunt Count of Player > 1]one of [end if]your sopping hole[sfn] to stimulate you further while lapping up your juices with obvious skill. Clearly practiced from training and rewarding the mares under her charge, she uses her tongue, lips and fingers in wonderful ways to please her nightmare mistress.";
				say "     And the great pleasure her muzzle and hands bring is repeated through several powerful orgasms[if Cunt Count of Player > 1], shifting back and forth between your cunts to further your ecstasy[end if]. This oral delight is drawn out until finally you grab her head and press it firmly to your quivering loins as you neigh loudly in a mind-blowing release. Your strong juices soak her tongue and muzzle while your inner walls squeeze and tug at that nimble tongue inside you. She drinks down as much as she can get, happily letting the scent of her chosen mistress mark her with the rest. After you release her, she rubs her sticky fingers over her breasts, getting her nipples shiny with your juices. Calling over some of the watching mares, you set a pair of them to task licking the excess juices that have down your legs and then to clean your crotch. You enjoy this sensual cleaning while watching another pair take turns between eating out the lead mare and sucking on her nipples.";
			increase fancyffcount by 1;
		decrease humanity of Player by 4;
		if "Strong Psyche" is listed in feats of Player, increase Humanity of Player by 1;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 1;
		now lastfuck of Fancy is turns;
[	else if fancyaroused is 1:
		say "'Hmm that sounds like an interesting proposition,' the white mare says with a teasing grin as she looks you up and down appraisingly. 'But as you can see from all the mares and stallions around this place, I certainly am not lacking for sex anytime I feel the need for some [']action['], so to speak,' Fancy says with a soft chuckle as she runs one of her hoof-tipped hands through her mane of silvery hair absently, her chest heaving interestingly as she does. 'Though I might be interested in having a more, long term companion around... And given the help you gave Onyx and Daisy in deciding to be proper members of the Stables, I think you might have the right mindset to help me out with this place. If you would be interested in staying around a while that is....' she says with an equine grin as she looks at you and waits for your response.";
		if Player consents:
			say "'Well that's a wonderful offer and I would love to take you up on it actually, but as you can see the author is lazy and hasn't finished this increasingly smexy side quest, so you will just have to enjoy helping me patch the place up until they do,' the mare says with a teasing smile as she goes back to what she was working on, leaving you to curse this unknown author's laziness.";
		else:
			now fancyaroused is 5;
			say "'That's just too bad then, but seeing as I have all these delicious equines to choose from for casual fun, I think I will just have to decline your offer for now,' Fancy says with a slightly dismissive shrug of her large shoulders."; ]
	else:
		say "     'Sorry, there friend, but I think we should keep things professional between us. For now anyways,' the sexy white mare says with a teasing wink. 'Maybe after we get to know each other better, we can really 'Get to know each other,' but until that happens...' She shrugs softly and gives you an equine grin as she leans back on her stool, her long equine tail swishing across the ground absently behind her.";






[Fancyquest-
	Male dominant, must have turned onyx female in the Stables or outside.
	She will want you to take out several key players around the Stables... since the 'master' hasn't been listening to her much lately, and she thinks you might have what it takes to become a better 'master'. And will provide you with several stolen drinks that supposedly helped the 'master' gain power. (TF items a la nermine.)
	Female- even if you haven't messed with onyx, she needs a number of items from around town to help fix the area up, and she thinks you could be the one to collect them, which will turn you into a slutty sexy female mare over time, and guarantee you a prime spot in the Stables as her slutty lover, guard, and collector.]




Section 5 - Nightmare vial

nightmaretf is a number that varies.

Table of Game Objects (continued)
name	desc	weight	object
"Nightmare Vial"	 "a small vial of some strange whitish liquid, though flashes of red and black can be glimpsed inside the swirling vial"	1	 Nightmare Vial

Nightmare Vial is a grab object. Understand "Vial" and "Nightmare" as Nightmare Vial.

instead of sniffing Nightmare Vial:
	say "The scent from the vial's liquid is powerful, equine and sulfurous.";

Usedesc of Nightmare Vial is "[nightmaremagic].";

To say nightmaremagic:
	if jackalmantf > 0:
		say "For some reason your body seems to fight with itself for a minute as you ingest the vial of strange liquid, and you get flashes of dark images and strange places in your eyes as your body convulses helplessly. Eventually though the tremors fade, and you lie there panting on the ground for several minutes before you are able to move again, though looking yourself over you can't see that the strange vial of liquid changed any of your nice and sexy jackal-like features...";
		stop the action;
	if jackalboytf > 0:
		now nerminetalk is 1;
		now jackalboytf is 5;
		say "You feel strange as the liquid runs down your throat, feeling strangely more dominant and less like a good little jackal slut as the changes begin to run through your body.";
		say "The strange salty yet delicious taste of the strange mixture washes over your tongue, and burns like fire or fine whiskey as it slides down your throat easily. Before you know it you have drank the whole vial and are licking your lips looking for more. It isn't long however, before you are distracted by a strange warmth growing within as what feels like a dim coal of power burning within you ignites. And you moan as your body begins to shift and reshape itself, your spine seeming to crack slightly and become more flexible, as a silken waterfall of fine horsehair erupts from your rear, spilling forth to form a surprisingly comfortable and handsome long black equine tail, with just the hint of a dark reddish color when the light reflects off of it. You swish your new tail behind you experimentally for a minute, finding it surprisingly easy to move and control, the new balance your tail provides to be quite helpful as well as handsome. You grin slightly with a strange pleasure at your new appendage, as well as the new sense of power burning within you awoken by the strange but delicious liquid.";
		now TailName of Player is "Nightmare";
		now tail of Player is "You have a long sexy shimmering equine tail swaying teasingly behind you, its silken black and deep red colored strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take.";
		StatChange "dexterity" by 5;
		now fancyquest is 7;
		now nightmaretf is 1;
		stop the action;
	if nightmaretf is 0:
		say "Eyeing the unusual liquid dubiously for a minute, you watch the strange play of the light off the whitish fluid, noting the dark and almost red swirls within the vial. Feeling rather dubious, but increasingly curious about the vial, you decide you might as well get on with it, and carefully take a drink. The strange salty yet delicious taste of the strange mixture washes over your tongue, and burns like fire or fine whiskey as it slides down your throat easily. Before you know it you have drank the whole vial and are licking your lips looking for more. It isn't long however, before you are distracted by a strange warmth growing within as what feels like a dim coal of power burning within you ignites. And you moan as your body begins to shift and reshape itself, your spine seeming to crack slightly and become more flexible, as a silken waterfall of fine horsehair erupts from your rear, spilling forth to form a surprisingly comfortable and handsome long black equine tail, with just the hint of a dark reddish color when the light reflects off of it. You swish your new tail behind you experimentally for a minute, finding it surprisingly easy to move and control, the new balance your tail provides to be quite helpful as well as handsome. You grin slightly with a strange pleasure at your new appendage, as well as the new sense of power burning within you awoken by the strange but delicious liquid.";
		now TailName of Player is "Nightmare";
		now tail of Player is "You have a long sexy shimmering equine tail swaying teasingly behind you, its silken black and deep red colored strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take.";
		StatChange "dexterity" by 5;
		now fancyquest is 7;
		now nightmaretf is 1;
		stop the action;
	if nightmaretf is 1:
		say "Holding the strange vial up, you once again gaze curiously at the strange whitish liquid, with its unusual black and red streaks, recalling both the rush of power and the strangely fascinating taste of the liquid from your last drink. Feeling rather adventurous, you eagerly toss back the liquid in one large drink, before gasping as the fiery sensation once more burns its way down your throat and spreads throughout your body. You feel a sense of power growing within you, and you find yourself grinning ferally for a minute, before the bones in your jaw begin to stretch and snap. You groan as the burning sensation spreads throughout your face, your bones reshaping as your forehead flattens out and your eyes shift positions. The sensation is surprisingly pleasant however, feeling much more like a building pressure instead of pain, as something inside you slowly presses outwards and reshapes your face to better match that of a proper equine. After several minutes, your face begins to settle down into its new configuration, and you give out a rather equine snort of relief from your new large nostrils, even as you explore your larger mouth and flat teeth with your tongue, and your new sharper eyes scan your surroundings noticing things about them you never saw before. Flicking your ears from side to side, you notice several black and red strands from your new mane have a tendency to fall into view, their shining colors going quite well with the dark black fur of your new equine face. Amused and eager to see your new face, you glance into a nearby reflective surface, only to blink in surprise as you see your bright red eyes now almost seem to burn with an inner light, just like that small reservoir of power within you burns brighter now as well.";
		now FaceName of Player is "Nightmare";
		now Face of Player is "rather sexy coal black equine muzzle stretching forward from your face, your broad forehead and mobile black equine ears sitting atop your new countenance are rather sexy as well. Although the most striking features of your new face have to be your eyes, which burn from within with an inner fire that is almost mesmerizing to look at, and the dark black and red mane of hair which spills down the back and sides of your head, the iridescent strands of black and red hair seeming to almost burn with your every movement as they frame your new face.";
		StatChange "Perception" by 4;
		StatChange "Intelligence" by 3;
		now fancyquest is 10;
		now nightmaretf is 2;
		stop the action;
	if nightmaretf is 2:
		say "Holding the vial up, you find yourself grinning widely with anticipation as you look at the swirling liquid within, before tipping it back and drinking it all down. The delicious liquid burns all the way down your long muzzle and throat as you drink it up, the sensation quickly spreading through your entire body this time. Soon you moan with pleasure as your skin darkens, and shadows almost seem to gather around you and blend into your body as dark black fur covers your entire form. The sensation of the tingling fur growing is much like having your entire body stroked from within and without at the same time by invisible hands, and you moan with increasing pleasure as you stroke your sensitive body with your own hands as well. Eventually however the changes stop, leaving you coated in midnight black horse fur, which almost seems to meld into the shadows around you, and with an even more powerful fire burning inside you.";
		now Skin of Player is "[one of]dark black[or]shimmering black furred[or]Nightmare[or]Coal black[or]midnight black furred[or]shadowy furred[at random]";
		now SkinName of Player is "Nightmare";
		now fancyquest is 13;
		StatChange "Charisma" by 4;
		StatChange "Stamina" by 4;
		now nightmaretf is 3;
		stop the action;



An everyturn rule:
	if nightmaretf is 1:
		if TailName of Player is not "Nightmare":
			say "Your spine cracks and shifts, and your rear shifts and changes slightly as your lovely red and black equine tail once more grows out of your rear. Its soft, sexy strands feel rather comforting as they overwhelm your more recent infection.";
			now TailName of Player is "Nightmare";
			now tail of Player is "You have a long sexy shimmering equine tail swaying teasingly behind you, its silken black and deep red colored strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take.";
	if nightmaretf is 2:
		if TailName of Player is not "Nightmare":
			say "Your spine cracks and shifts, and your rear shifts and changes slightly as your lovely red and black equine tail once more grows out of your rear. Its soft, sexy strands feel rather comforting as they overwhelm your more recent infection.";
			now TailName of Player is "Nightmare";
			now tail of Player is "You have a long sexy shimmering equine tail swaying teasingly behind you, its silken black and deep red colored strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take.";
		if FaceName of Player is not "Nightmare":
			say "You feel a strange yet familiar burning pressure in your head, and cry out slightly as your face pushes forward and reshapes itself again, your forehead flattening out and your eyes burning with an inner flame as your dark equine muzzle finishes reshaping itself, your dark red mane once more shimmering like fire as it trails down the back of your fully equine face once more.";
			now FaceName of Player is "Nightmare";
			now Face of Player is "rather sexy coal black equine muzzle stretching forward from your face, your broad forehead and mobile black equine ears sitting atop your new countenance are rather sexy as well. Although the most striking features of your new face have to be your eyes, which burn from within with an inner fire that is almost mesmerizing to look at, and the dark black and red mane of hair which spills down the back and sides of your head, the iridescent strands of black and red hair seeming to almost burn with your every movement as they frame your new face";
	if nightmaretf is 3:
		if TailName of Player is not "Nightmare":
			say "Your spine cracks and shifts, and your rear shifts and changes slightly as your lovely red and black equine tail once more grows out of your rear. Its soft, sexy strands feel rather comforting as they overwhelm your more recent infection.";
			now TailName of Player is "Nightmare";
			now tail of Player is "You have a long sexy shimmering equine tail swaying teasingly behind you, its silken black and deep red colored strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take.";
		if FaceName of Player is not "Nightmare":
			say "You feel a strange yet familiar burning pressure in your head, and cry out slightly as your face pushes forward and reshapes itself again, your forehead flattening out and your eyes burning with an inner flame as your dark equine muzzle finishes reshaping itself, your dark red mane once more shimmering like fire as it trails down the back of your fully equine face once more.";
			now FaceName of Player is "Nightmare";
			now Face of Player is "rather sexy coal black equine muzzle stretching forward from your face, your broad forehead and mobile black equine ears sitting atop your new countenance are rather sexy as well. Although the most striking features of your new face have to be your eyes, which burn from within with an inner fire that is almost mesmerizing to look at, and the dark black and red mane of hair which spills down the back and sides of your head, the iridescent strands of black and red hair seeming to almost burn with your every movement as they frame your new face";
		if SkinName of Player is not "Nightmare":
			say "Your body once more burns with that strange inner fire, as it seems to crackle over and under your skin, the strange power within you sweeping over your form until once again you are completely covered in a shadowy midnight black coating of fur.";
			now SkinName of Player is "Nightmare";
			now Skin of Player is "[one of]dark black[or]shimmering black furred[or]Nightmare[or]Coal black[or]midnight black furred[or]shadowy furred[at random]";
	if nightmaretf is 4:
		if TailName of Player is not "Nightmare":
			say "Your spine cracks and shifts, and your rear shifts and changes slightly as your lovely red and black equine tail once more grows out of your rear. Its soft, sexy strands feel rather comforting as they overwhelm your more recent infection.";
			now TailName of Player is "Nightmare";
			now tail of Player is "You have a long sexy shimmering equine tail swaying teasingly behind you, its silken black and deep red colored strands seeming to catch and bend the light slightly around themselves until they almost appear to burn with an inner dark fire with every step you take.";
		if FaceName of Player is not "Nightmare":
			say "You feel a strange yet familiar burning pressure in your head, and cry out slightly as your face pushes forward and reshapes itself again, your forehead flattening out and your eyes burning with an inner flame as your dark equine muzzle finishes reshaping itself, your dark blood red mane once more shimmering like fire as it trails down the back of your fully equine face once more.";
			now FaceName of Player is "Nightmare";
			now Face of Player is "rather sexy coal black equine muzzle stretching forward from your face, your broad forehead and mobile black equine ears sitting atop your new countenance are rather sexy as well. Although the most striking features of your new face have to be your eyes, which burn from within with an inner fire that is almost mesmerizing to look at, and the dark black and red mane of hair which spills down the back and sides of your head, the iridescent strands of black and red hair seeming to almost burn with your every movement as they frame your new face";
		if SkinName of Player is not "Nightmare":
			say "Your body once more burns with that strange inner fire, as it seems to crackle over and under your skin, the strange power within you sweeping over your form until once again you are completely covered in a shadowy midnight black coating of fur.";
			now SkinName of Player is "Nightmare";
			now Skin of Player is "[one of]dark black[or]shimmering black furred[or]Nightmare[or]Coal black[or]midnight black furred[or]shadowy furred[at random]";
		if BodyName of Player is not "Nightmare":
			say "You can feel that strange energy from the vials you drank building up withing you again, and causing your body to burn with energy as it begins to twist and reshape itself as it changes back into your now familiar and comfortable equine form. Flexing your hands and stomping your hooves on the ground, you find yourself grinning with amusement as you throw off the weak and pathetic infection that tried to mar your Nightmarish equine beauty.";
			now BodyName of Player is "Nightmare";
			now Body of Player is "the strong and powerful body of a black stallion, with blood red hooves and hoof tipped hands, as well as a large chest and fully digitigrade equine legs. Your new body is amazingly responsive and powerful feeling, with almost unnatural amounts of energy surging through you constantly";
			attributeinfect "Nightmare";
		if CockName of Player is not "Nightmare":
			now CockName of Player is "Nightmare";
			now Cock of Player is "[one of]equine[or]blunt-tipped[or]horse-like[at random]";


to quietrestorenightmareform:
	now nmformswitch is false;
	if BodyName of Player is not "Nightmare" or the player is not pure:
		now nmformswitch is true;
		setmonster "Nightmare" silently;
		turn the Player into a "Nightmare";


Section 6 - Leather Duster

Table of Game Objects (continued)
name	desc	weight	object
"leather duster"	"A toughened duster made of reinforced leather, all black and very bad-ass."	10	leather duster

leather duster is equipment. It is not temporary.
The AC of leather duster is 22.
The effectiveness of leather duster is 75.
The placement of leather duster is "body".
The descmod of leather duster is "You are wearing a really bad-ass duster made of toughened black leather.".
The slot of leather duster is "body".

the scent of leather duster is "The leather smells vaguely of saddle oil.".



Section 7 - ponysuit

Table of Game Objects (continued)
name	desc	weight	object
"ponysuit"	"A full-body latex catsuit with a pony-shaped hood and hoof-shaped mitts attached, restricting the fingers of the wearer. Comes with a long tail made of synthetic fibre."	10	ponysuit

ponysuit is a grab object.
ponysuit is equipment.
It is not temporary.
Plural of ponysuit is false.
Taur-compatible of ponysuit is false.
Size of ponysuit is 3.
AC of ponysuit is 0.
Effectiveness of ponysuit is 0.
Placement of ponysuit is "body".
Descmod of ponysuit is "Your body is encased in a full-body latex catsuit with an integrated ponyhood and hoof mitts, as well as a long tail swishing from your rear. The hidden wrist-zips on the sleeves ensure you can use your fingers when necessary.".
Slot of ponysuit is "body".
Scent of ponysuit is "Smells like rubber, and a hint of horse.".



Section X - Variables







Fancy ends here.
