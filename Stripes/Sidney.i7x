Version 1 of Sidney by Stripes begins here.
[ Version 1.1 - Pregnancy and children ]
[Version 1.2 - Minor maintenance and character relocation - Luneth]

"Adds a former soldier named Sidney to the Flexible Survival game."

[        HP of Sidney                                                          ]
[ 0 - not encountered	                                                         ]
[ 1 - met, unconvinced                                                         ]
[ 2 - convinced                                                                ]
[ 3 - transformed                                                              ]
[ 4 - spoke to post-tf                                                         ]
[ 5 - had sex post-tf F/F                                                      ]
[ 6 - had sex post-tf M/F                                                      ]
[ 7 - M/F in another position                                                  ]
[ 99 - happy tf end                                                            ]
[ 100 - sent back to base                                                      ]
[ 101 - failed all attempts                                                    ]

[       level of Sidney                                                        ]
[ 21-50 furries                                                                ]
[ 21 = red fox vixen                                                           ]
[ 22 = otteress (f)                                                            ]
[ 23 = otteress (u)                                                            ]
[ 71-80 = feral forms                                                          ]
[ 71 = wusky                                                                   ]

[     lust of Sidney                                                           ]
[ 0 = not preggers                                                             ]
[ 1-8 = early pregnancy                                                        ]
[ 9-16 = late pregnancy                                                        ]
[ 17+ = birthing time                                                          ]

[        XP of Sidney                                                          ]
[ # of offspring                                                               ]

Section 0 - Basic NPC Setup

Table of GameCharacterIDs (continued)
object	name
Sidney	"Sidney"

Sidney is a woman.
The description of Sidney is "[sidneydesc]".
The conversation of Sidney is { "Thanks." }.
the scent of Sidney is "[sidneyscent]".
sidneyformtalk is a truth state that varies. sidneyformtalk is usually false.
sidneyanal is a truth state that varies. sidneyanal is usually false.
sidneytalk1 is a truth state that varies. sidneytalk1 is usually false.
sidneytalk2 is a truth state that varies. sidneytalk2 is usually false.
sidneytalk3 is a truth state that varies. sidneytalk3 is usually false.
sidneytalk4 is a truth state that varies. sidneytalk4 is usually false.
fangsidney is a truth state that varies. fangsidney is usually false.

Section 1 - Event

Table of GameEventIDs (continued)
Object	Name
Meeting Sidney	"Meeting Sidney"

Meeting Sidney is a situation.
The sarea of Meeting Sidney is "Outside".
when play begins:
	add Meeting Sidney to badspots of furry;
	add Meeting Sidney to badspots of girl;

sa_redvixen is a truth state that varies. sa_redvixen is usually false.
sa_otteress is a truth state that varies. sa_otteress is usually false.
sa_wusky is a truth state that varies. sa_wusky is usually false.

Instead of resolving Meeting Sidney:
	if HP of Sidney is 0:
		say "     Traveling through the city, you spot a weaponless soldier staring blankly out of a blown-out window of a ruined building. The unattractive man looks down at a small device he's holding, rolling it around in his hand. Given how he's lost in thought, he doesn't notice your cautious approach until you're just a couple of meters away. When he does spot you, he [if the player is bodily human and the player is facially human and the player is skintone human]jumps up in surprise and puts the thing back into his pocket[else]jumps back in surprise and moves to escape further into the building. He pauses when you call out to him, but keeps his distance for the moment[end if]. Once he realizes that you only want to talk, he calms down and allows you to come closer.";
		say "     The soldier introduces himself as Sidney. 'My squad's... gone. We had a rough time of it on this mission. At first, only a few got picked off one at a time. One got too curious about some sticky gunk he'd found and went downhill fast after that. The rest got taken down and transformed during an attack, turning into sex beasts of all genders. I'd barely managed to get away from that last one.' He doesn't seem particular broken up about the whole matter, more relating it matter-of-factly and maybe even with a bit of longing.";
		say "     'That was a few days ago and I've been... uh... taking stock of the situation since then. Mission's over though. Nothing left but to go back to base and report in, I guess...' he says, trailing off with obvious disappointment at the prospect. You notice that he's slipped a hand to the pocket into which he stashed the object he had earlier. 'Say. Have you ever wanted... oh, nevermind,' he says, cutting himself off as he reaches down to pick up his pack.";
		WaitLineBreak;
		let bonus be ( charisma of Player - 10 ) / 2;
		if "Female Preferred" is listed in feats of Player, increase bonus by 2;
		if "Always a Pussy" is listed in feats of Player, increase bonus by 2;
		if "Dominant" is listed in feats of Player, increase bonus by 1;
		if "Haggler" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus] vs 12:[line break]";
		if bonus + dice > 11:
			say "[sidneyconvinced]";
		else:
			say "     You try to ask the soldier what he's talking about, but he gets defensive. 'Look, I don't even know why I brought it up to a random stranger. I need to go,' he says, making a quick departure. You can't help but wonder what that was all about. Perhaps you'll see him around again.";
			now HP of Sidney is 1;
	else if HP of Sidney is 1:
		say "     You end up spotting Sidney, the solitary soldier you'd met earlier. He's again musing quietly, clearly undecided about something. You approach and greet him again, and he seems happy to see a friendly face. The two of you chat for a little while, discussing what you've seen in the city. You pick up on that same interest he'd shown earlier. Once he's relaxed, you try to ask him about what's been on his mind.";
		WaitLineBreak;
		let bonus be ( charisma of Player - 10 ) / 2;
		if "Female Preferred" is listed in feats of Player, increase bonus by 2;
		if "Always a Pussy" is listed in feats of Player, increase bonus by 2;
		if "Dominant" is listed in feats of Player, increase bonus by 1;
		if "Haggler" is listed in feats of Player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus] vs 10:[line break]";
		if bonus + dice > 9:
			say "[sidneyconvinced]";
		else:
			say "     You try to steer the conversation to what's been on his mind and why he hasn't returned to base yet, but he gets a little upset. 'Never you mind that. I'm just... scouting the area first. Can't be too careful these days. Don't want some crazy beast to get the jump on me,' he says with a fake laugh even as he's grabbing his pack. 'Look, maybe I'll see you around,' he adds, heading on his way.";
	else if HP of Sidney is 2:
		say "     You end up spotting Sidney, the solitary soldier looking for a gender swap. He smiles to you when you come over, happy to see a friendly face. 'Are you up for trying to help me with my little problem,' he asks, nervously eager. He presents his remaining options to you.";
		say "[sidneyoptions]";

to say sidneyconvinced:
	say "     With it clear that there's something troubling the soldier, delaying him from returning to base, you ask him about the thing he's got. At first, he tries to pass it off as being nothing, but you tell him you know it must be important to him if he's obsessing over it like this. He grows quiet for a bit, slowly pulls it out and plops himself down on a chunk of rubble.";
	say "     'I was gonna ask before if you'd ever wanted something all your life, but you knew you could never get it and you had to accept that.' You nod, figuring everyone must feel that way about something. Seeing how he's paused again, you put a hand on his shoulder encouragingly. He looks up at you, then back down at the thing he's holding.";
	WaitLineBreak;
	say "     It doesn't seem particularly special. The top half is a tennis-ball-sized device with a small needle tip and a few buttons. Below that is a clear cannister full of dull gray goo placed like a handle behind the trigger.";
	say "     'We were given this for our mission. It's some sort of fancy nanite transfer unit - a one-time sample collection device. An expensive little gizmo, they said. The nanites here,' he says while tapping the glass capsule, 'collect a complete data sample of the target. That way they can then be analyzed... or transferred into someone else to make an identical physical copy.'";
	WaitLineBreak;
	say "     Looking at the soldier's bent nose, jutting chin and unibrow, you think you have an idea of where this is going, but are surprised by what he says next. 'I've always wanted to be a woman - soft, beautiful, loving, fertile. I know I don't look the type, and that's kinda the problem. No way I'd have ever been able save up enough for an operation and it wouldn't make me pretty.";
	say "     'Now this whole mess, it's a dream come true - but it's full of risks. I saw the guys I was sent in with get turned into mindless breeding sluts and crazy multi-gender monsters[if Player is herm] (no offense)[end if], and I don't want that. I want to still be me, but finally better. I've been putting it off for a while - trying to psych myself up into doing it, I guess - and even found a few possible candidates to copy around here. But getting a sample's too risky, especially since I'm long out of ammo and have no backup. Unless you're willing to maybe help me out?' he asks. 'I've got a few possible donors in mind.'";
	now HP of Sidney is 2;
	say "[sidneyoptions]";


to say sidneyoptions:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if guy is banned, now sa_wusky is true;
	if sa_redvixen is false:
		choose a blank row in table of fucking options;
		now title entry is "Red Fox Vixen";
		now sortorder entry is 1;
		now description entry is "sultry vixen-woman";
	if sa_otteress is false:
		choose a blank row in table of fucking options;
		now title entry is "Otteress";
		now sortorder entry is 2;
		now description entry is "female anthro otter";
	if sa_wusky is false:
		choose a blank row in table of fucking options;
		now title entry is "Feral Wusky";
		now sortorder entry is 3;
		now description entry is "feral wolf-husky";
	say "[link]0 - Discuss options[as]0[end link][line break]";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]99 - Maybe later[as]99[end link][line break]";
	say "[link]100 - Don't do it![as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Help him obtain a [description entry] form?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Red Fox Vixen":
					say "[sidney_rfv_cap]";
				else if nam is "Otteress":
					say "[sidney_otteress_cap]";
				else if nam is "Feral Wusky":
					say "[sidney_wusky_cap]";
				if sa_redvixen is true and sa_otteress is true and sa_wusky is true:	[***update as new are added***]
					WaitLineBreak;
					say "     With that last failure, Sidney seems completely dejected. You try to cheer him up, but he won't listen. He sighs and turns off, mumbling about how he must be fated to never get what he wants. You offer other possibilities, but he's given up fully by this point, saying he'll just accept it and go back to base. In the end, you have to let him go.";
					now HP of Sidney is 101;
				now sextablerun is 1;
		else if calcnumber is 0:
			say "Talking it over with Sidney, you have him describe the various options he's considering.";
			let y be 0;
			if sa_redvixen is false:
				increase y by 1;
				say "[link]Option [y]:[as][y][end link] 'There's a lovely red vixen roaming around here. She's got such a nice figure and fluff in all the right places. She's alluring and beautiful. Fast, too,' he adds. 'I've seen a few randy beasts try to catch her, but she always gets away so easily. She does some of that crazy [']parcour['] stuff like it's nothing. We'll have to be quick if we want to catch her.' (dexterity)[line break]";
			if sa_otteress is false:
				increase y by 1;
				say "[link]Option [y]:[as][y][end link] 'I've seen this otter woman around her at times. She's so pretty - sleek and sexy. And flexible, too. I mean, I've seen her do some... well, you know,' he says, blushing a bit. 'It'd be nice to have a body like that. She seems pretty calm too, but I doubt she'd listen to me long enough to let me explain. You might be able to talk to her, or at least talk our way close enough to grab her.' (charisma or strength)[line break]";
			if sa_wusky is false:
				increase y by 1;
				say "[link]Option [y]:[as][y][end link] 'There's this female husky I've been keeping my eye on. She's got this deep black coat and such a pretty, happy face. Now, she's been caught by this feral wolf and he's been turning her into his wolf bitch. She's part wolf now and stuck on all fours, but she's still got that coat of hers and she's still as strong and determined as ever,' he says with admiration. 'I wouldn't mind even if it means being more of an animal if I can get to be a lovely female like her.' (fight)[line break]";
		else if calcnumber is 99:
			say "     You make some excuse about how now is not a good time and that he should make sure he's fully prepared before such a change. He nods, saying he hopes you'll return to assist him soon.";
			now sextablerun is 1;
		else if calcnumber is 100:
			say "     Sidney is disappointed when you refuse to help him, telling him instead to go back to the base. He looks dejectedly at the device and nods, putting it away. 'You're right. It's not mine to use and I have a duty to the army. I'll report back to the perimeter,' he says sadly, walking off.";
			now HP of Sidney is 100;
			now Meeting Sidney is resolved;
			now sextablerun is 1;


Section 2 - Form Captures

Part 1 - Red Fox Vixen

to say sidney_rfv_cap:
	say "     Suggesting that you try going after the red vixen, the two of you make a quick plan and then split up. You're able to find her easily enough and start moving in on her. Once you're spotted, she's instantly wary and moves to a nearby building. And when you continue towards her, the race is on as she jumps to grab a hanging ladder and zips up it.";
	let playernum be dexterity of Player + ( level of Player / 2 );
	if "Black Belt" is listed in feats of Player, increase playernum by 2;
	let monsternum be 18;
	if hardmode is true:
		increase monsternum by level of Player / 3;
	let playernum be a random number between 1 and playernum;
	let monsternum be a random number between 1 and monsternum;
	say "Dexterity - [special-style-1][playernum][roman type] vs [special-style-2][monsternum][roman type]:[line break]";
	if Playernum >= monsternum:
		say "     You give chase, quickly getting up the ladder and racing along the rooftop. You go from rooftop to rooftop, going up or down as needed as the two of you go on a zigzagging chase[if level of Player > 10]. The familiarity you've gained with the city and its design by traveling through it helps considerably, giving you an idea of what to expect next[end if]. You are able to keep up with her and eventually are even able to make a few moves to cut her off, forcing her to take a new path. And soon that new path leads her right to the waiting Sidney.";
		say "     The soldier grabs the surprised vixen by the arm and pins her against the large rooftop air conditioner he was hiding behind. While she's still stunned, he pulls out the nanite copying device and jabs the short needle into her side. With a pull of the trigger, a whirring sound and a flutter of indicator lights, it is done. The vixen breaks free, tosses a snarling insult and runs off again. By this point, you're too winded to continue pursuit and there's little point in doing so. Quickly confirming with Sidney, he's gotten the sample.";
		WaitLineBreak;
		say "     He looks at the silvery jar and pauses only for a moment before jabbing himself with the needle and pulling the trigger again. He groans as the metallic fluid is injected into him. The effects are sudden, causing him to stumble to his knees as rapid and full-bodied transformation ensues. He quickly starts pulling off his clothes to watch. Red fur spreads out from the point of injection. His figure changes to that of the agile vixen, losing bulk for a few added inches of height. And for breasts, the globes of mammaries swelling up under the fluff on his chest. As his head changes, gaining a muzzle and pointed ears first, he releases a long, feminine moan and pulls down the front of his pants to reveal a wet and juicy vixen muff between now her legs. The changes continue with her long, bushy tail growing out as the whole of her shifts until you're left looking at an identical copy of the luscious vixen whose ass you've been chasing all around the neighborhood.";
		say "     With Sidney now transformed into a sultry vixen, there is no chance of her returning to the military base, so you offer to let her stay the library for safety until rescued. She agrees happily even and follows you, unable to keep from touching and looking herself over in joyful awe at her dream come true - well, after a fashion, at least. You doubt she'd dreamt of being a walking, talking fox femme back before this all started, but she certainly seems pleased with the results.";
		now HP of Sidney is 3;
		now level of Sidney is 21;
		move Sidney to Breakroom;
		move player to Breakroom;
		now Resolution of Meeting Sidney is 1; [became a vixen]
		now Meeting Sidney is resolved;
	else:
		say "     You give chase, doing your best to follow her up the ladder and race along the rooftops. You go from rooftop to rooftop, going up or down as needed as the two of you go on a zigzagging chase. You're able to keep her in sight for a while, but she's too agile and you fall further and further behind as she takes surprising turns or crosses obstacles you must circumvent. Eventually, she loses you entirely and you have to head back to Sidney with the bad news. The two of you doubt you'll get another chance at her, as she'll be on the lookout for you now and won't let you get close again.";
		now sa_redvixen is true;


Part 2 - Otteress

to say sidney_otteress_cap:
	say "     Suggesting you approach the female otter, the two of you go off in search of her. Sidney leads you to one of the spots he's seen her frequent occasionally and she's thankfully there. You approach the otteress in a friendly manner, allowing you to get closer. Shall you [link]explain the situation (Y)[as]y[end link] or just try to [link]grab her (N)[as]n[end link]?";
	if Player consents:
		let bonus be ( charisma of Player - 10 ) / 2;
		if bodyname of Player is "Sea Otter":
			increase bonus by 1;
		if facename of Player is "Sea Otter":
			increase bonus by 2;
		let targetnum be 15;
		let dice be a random number between 1 and 20;
		say "     Charisma - You roll 1d20([dice])+[bonus]: [dice + bonus] vs [targetnum]: ";
		if bonus + dice >= targetnum:
			say "As you draw nearer, you start to explain what you want, the otteress listening. You know it sounds kind of crazy, so you try your best to reassure her that you aren't trying to hurt her or fuck her. At first, she seems skeptical, but you do manage to keep her listening long enough that Sidney can have his say. As he told you, he explains how he's always wanted to be a woman and goes on to say how pretty she is and that he'd like to be just like her. It won't hurt or change her, you add, just that it'll make Sidney identical to her.";
			WaitLineBreak;
			say "     'So you'd be like my twin or something?' she asks. 'I... I always wanted a sister. You promise this won't hurt?' she asks nervously. 'I don't like needles.'";
			say "     'Just a little pinch and it'll be over. Then we'll be sisters,' Sidney says tenderly, smiling as he holds the device out. The otteress nods and closes her eyes tightly as the soldier pushes the short needle into her side and hold it there for a few moments. She gives a little eep and shivers, but holds herself steady. With a pull of the trigger, a whirring sound and a flutter of indicator lights, it is done.";
			WaitLineBreak;
			say "     Confirming he's got the copy, the otteress eagerly encourages him to complete the process. Nodding to her now, he jabs himself with the needle and pulls the trigger again. He groans as the metallic fluid inside is injected into him. The effects are sudden, causing him to stumble to his knees as rapid and full-bodied transformation ensues. He quickly starts pulling off his clothes to watch. Brown fur spreads out from the point of injection. His figure changes to that of the flexible otter, losing bulk as he becomes streamlined for swimming. And for breasts, the petite globes of mammaries swell up under the waterproof coat of fur. As his head changes, gaining a muzzle and rounded ears first, he releases a long, feminine moan and pulls down the front of his pants to reveal a wet and juicy otter muff between now her legs. Long, flowing hair grows from the top of her head, rich brown like her counterpart's. The changes continue with her long, muscular tail growing out as the whole of her shifts until you're left looking at an identical copy of the sexy otteress beside her.";
			say "     They both look the transformed Sidney over, paws running over her body as they compare her to the original. Finding the copy perfect, they hug and kiss happily. 'Oh, we really are twins. And you got your dream. I'm so happy for you,' the original says. The pair snuggle and chat for a while, getting to know each other better. Eventually though, the otter femme says it's time for her to return to her raft as they'll be missing her. You can suggest that Sidney [link]stay with you (Y)[as]y[end link] or [link]join her new sister (N)[as]n[end link] with the other otters.";
			if Player consents:
				say "     You offer to let Sidney stay with you at the library. She's tempted to go along with his new twin, but recognizes the risk in that and bids her farewell for now. They share a long goodbye during which Sidney tells her repeatedly to go with the soldiers to the rescue facility and that she'll find her there. She makes sure the otteress knows her full name, rank and unit as well as how to get in contact with her once the rescue happens. After more hugs and kisses, some of which get pretty heated, the two part. The original otteress climbs onto a hidden scooter and zips off back towards the shore, most likely to return to her raft of otters.";
				say "     Sidney is quiet but happy as she follows you to the library. She's unable to keep from touching and looking herself over in joyful awe at her dream come true - well, after a fashion, at least. You doubt she'd dreamt of being a walking, talking otter femme back before this all started, but she certainly seems pleased with the results.";
				now HP of Sidney is 3;
				now level of Sidney is 22;
				move Sidney to Breakroom;
				move player to Breakroom;
				now Resolution of Meeting Sidney is 2; [became an otter, stayed]
				now Meeting Sidney is resolved;
			else:
				say "     Suggesting that Sidney go with her, she smiles happily and gives her a big hug. 'Oh, that's right! You're family now. Come, you need to meet everyone else. They'll [bold type]love[roman type] you,' she gushes as they share more hugs and kisses, some of which get pretty heated. Bidding you a fond farewell, the two of them climb onto a small scooter the otteress had hidden and zip off towards the shore.";
				now HP of Sidney is 99;
				now level of Sidney is 22;
				now Resolution of Meeting Sidney is 3; [became an otter, left]
				now Meeting Sidney is resolved;
		else:
			say "As you draw nearer, you start to explain what you want, the otteress listening. 'Get away you crazy weirdos!' she exclaims suddenly, turning and running off. You try to pursue her, but it's too late. She's got a small scooter stashed nearby that she uses to make her escape. You'll not get another chance to approach her now.";
			now sa_otteress is true;
	else:
		let bonus be ( strength of Player - 10 ) / 2;
		increase bonus by ( level of Player / 2 );
		if "Martial Artist" is listed in feats of Player:
			increase bonus by 1;
		if "Black Belt" is listed in feats of Player:
			increase bonus by 1;
		let targetnum be 13;
		if hardmode is true:
			increase targetnum by level of Player / 3;
		let dice be a random number between 1 and 20;
		say "     Strength - You roll 1d20([dice])+[bonus]: [dice + bonus] vs [targetnum]: ";
		if bonus + dice >= targetnum:
			say "Continuing to talk reassuringly, you draw closer to your target. 'Grab her!' you yell to Sidney and the two of you tackle her. It is hard to get a grip on her; the female otter is super-flexible, bending and squirming like a fur-covered slinky. She almost manages to slip away a few times, but your strength [if level of Player > 10]and experience [end if]wins out and you pin the otter girl down long enough for Sidney to use his device.";
			say "     Thankfully the nanite copying device is quick. All he has to do is jab the short needle into her side and hold it there for a few moments. With a pull of the trigger, a whirring sound and a flutter of indicator lights, it is done. Once he's confirmed he's got the copy, Sidney nods to you and you release the otter. She gives the two of you a hard slap across the face. 'Mashers!' She then climbs onto a hidden scooter and zips away.";
			WaitLineBreak;
			say "     He looks at the silvery jar and pauses only for a moment before jabbing himself with the needle and pulling the trigger again. He groans as the metallic fluid is injected into him. The effects are sudden, causing him to stumble to his knees as rapid and full-bodied transformation ensues. He quickly starts pulling off his clothes to watch. Brown fur spreads out from the point of injection. His figure changes to that of the flexible otter, losing bulk as he becomes streamlined for swimming. And for breasts, the petite globes of mammaries swell up under the waterproof coat of fur. As his head changes, gaining a muzzle and rounded ears first, he releases a long, feminine moan and pulls down the front of his pants to reveal a wet and juicy otter muff between now her legs. Long, flowing hair grows from the top of her head, rich brown like her counterpart's. The changes continue with her long, muscular tail growing out as the whole of her shifts until you're left looking at an identical copy of the sexy otteress who was here just moments ago.";
			say "     With Sidney now transformed into a sexy otteress, there is no chance of her returning to the military base, so you offer to let her stay at the library for safety until rescued. She agrees happily even and follows you, unable to keep from touching and looking herself over in joyful awe at her dream come true - well, after a fashion, at least. You doubt she'd dreamt of being a walking, talking otter femme back before this all started, but she certainly seems pleased with the results.";
			now HP of Sidney is 3;
			now level of Sidney is 23;
			move Sidney to Breakroom;
			move player to Breakroom;
			now Resolution of Meeting Sidney is 2; [became an otter, stayed]
			now Meeting Sidney is resolved;
		else:
			say "Continuing to talk reassuringly, you draw closer to your target. 'Grab her!' you yell to Sidney and the two of you tackle her. You try your best to get a grip, but the female otter is super-flexible, bending and squirming like a fur-covered slinky. Slipping free of your grip, the two of you stumble over each other as she rushes away. You try to pursue her, but it's too late. She's got a small scooter stashed nearby that she uses to make her escape. You'll not get another chance to approach her now.";
			now sa_otteress is true;

Part 3 - Feral Wusky

to say sidney_wusky_cap:
	say "     Suggesting you try freeing the wusky, you have him lead you to the lair of the wolf holding her captive. Looking over the ruined shop, take a moment to ready yourself before entering. Inside you find the female wolf-dog chained to a water pipe and the large wolf creature between you and her. He snarls at you and approaches with teeth bared.";
	now showlocale is false;
	challenge "Feral Wolf";
	now showlocale is true;
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Defeating and driving off the large wolf, you're free to approach the wusky. Sidney takes out the nanite copying device and jabs the short needle into her side. With a pull of the trigger, a whirring sound and a flutter of indicator lights, it is done. Confirming with Sidney that he's gotten the sample, the two of you then free the wolf-husky hybrid. With a barking thanks and a few licks, she dashes out the door and off into the city.";
		WaitLineBreak;
		say "     He looks at the silvery jar and pauses for a few moments before jabbing himself with the needle and pulling the trigger again. He groans as the metallic fluid is injected into him. The effects are sudden, causing him to stumble to his knees as rapid and full-bodied transformation ensues. He quickly starts pulling off his clothes to watch. Black fur spreads out from the point of injection. His figure changes to that of the hardy wusky, shifting steadily towards a four-footed stance. Mostly hidden by the fluffy white fur spreading across his chest, you can see the soft swell of breasts forming. As his head changes, gaining an elongated muzzle and canine ears first, he releases a long, feminine moan. He scrambles to pull down the front of his pants with his increasingly paw-like hands, eventually revealing a wet and juicy canine muff between now her legs. The changes continue with her big, fluffy tail growing out as the whole of her shifts until you're left looking at an identical copy of the feral wusky who you'd both freed just a minute or two ago.";
		say "     With Sidney now transformed into an animalistic wolf-husky, there is no chance of her returning to the military base, so you offer to let her stay at the library for safety until rescued. She agrees happily even and follows you, unable to keep from touching and looking herself over in joyful awe at her dream come true - well, after a fashion, at least. You doubt she'd dreamt of being reduced to an animal just to become female, but she seems satisfied with the price paid.";
		now HP of Sidney is 3;
		now level of Sidney is 71;
		move Sidney to Breakroom;
		move player to Breakroom;
		now Resolution of Meeting Sidney is 4; [became a wusky, stayed]
		now Meeting Sidney is resolved;
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After your humiliating defeat and the subsequent abuse, you crawl your way out of the shop as the wolf turns his attention back to his original prize. As Sidney helps you leave, you can hear the snarls of the victorious wolf celebrating by screwing the trapped female. From the sounds of it, there won't be much left of the old wusky by the time he's done.";
		now sa_wusky is true;
	else:
		say "     You are driven back by the wild wolf creature. As Sidney helps you leave, you can hear the snarls of the victorious wolf celebrating by screwing his trapped prize. From the sounds of it, there won't be much left of the old wusky by the time he's done.";
		now sa_wusky is true;


Section 3 - Sidney Post-TFTG

to say sidneyscent:
	if level of Sidney is 21:
		say "The sultry vixen smells of foxes, flowers and sex.";
	else if level of Sidney is 22 or level of Sidney is 23:
		say "The sleek otteress smells of the sea.";
	else if level of Sidney is 71:
		say "The feral wusky has a distinct doggy scent all her own.";


to say sidneydesc:
	if HP of Sidney < 3:
		say "ERROR-Sidney-[HP of Sidney]L: You should not be able to find me!";
	else if level of Sidney is 21:
		if graphics is true:
			project the figure of Sidney_vixen_icon;
		say "     The soldier-turned-vixen is quite the sexy female. Sidney has a sleek, feminine body with foxy curves and an alluring sway in her step. She's got lovely blue eyes that stand out against her rich, crimson fur. Her vulpine muzzle ends in luscious lips that are an even brighter shade of red. She's got large, shapely breasts with dark areolae half-hidden under the white fluff of her chest. Sidney has acquired a silvery gown that fits the new her very nicely and has even added a hole at the back for her big, fluffy tail.";
	else if level of Sidney is 22 or level of Sidney is 23:
		if graphics is true:
			project the figure of Sidney_clothed_icon;
		say "     The soldier-turned-otteress is quite the sexy female. Sidney has a sleek, feminine body with streamlined curves and smallish breasts with perky nipples. Her brown fur has a glossy sheen to it that is quite pretty. She's got lovely brown eyes that match her fur. Her otter-like head has a mane of flowing brown hair that she's left draping over she shoulders rather than in the tight ponytail that her [if level of Sidney is 22]donor twin[else]body doppelganger[end if] had. She combs it repeatedly, clearly loving having such long, beautiful hair. Sidney's acquired a sunshine yellow swimsuit that fits the new her very nicely and has even added a hole at the back for her thick, rudder-like tail.";
	else if level of Sidney is 71:
		if graphics is true:
			project the figure of Sidney_wusky_icon;
		say "     The soldier-turned-wusky is quite the pretty dog. Sidney has a strong physique from her husky heritage and increased overall size from the feral wolf side of her. Her fur's a deep black with a white underbelly. There's a few traces of dark gray on the head and wherever the black changes to white, slightly blending the transition. Her canine head has some lupine touches, such as pointier ears and a stronger jaw, but still has the bright blue eyes common in huskies. Being four-footed now and having only limited use of her paws, she's forgone wearing clothing beyond a pink shawl and instead simply does her best to keep herself well-groomed.";
	if lust of Sidney > 8:
		say "     Her tummy's become visibly rounded with [if XP of Sidney > 0]another [end if]pregnancy, the [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]canine[end if] seeming quite pleased with her advancing condition.";
	if XP of Sidney > 0:
		say "     Sidney's [if level of Sidney is 21]kits are pretty[else if level of Sidney is 22 or level of Sidney is 23]pups are cute[else]puppies are cute[end if] like their mom. They are quite well-behaved, quietly playing games, reading or otherwise amusing themselves.";
		if XP of Sidney > 2:
			say "     A quick tally of the [if level of Sidney is 21]fox[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] kids has you count [XP of Sidney] of them. One or two of them are often cuddled up with their nurturing mother.";
		else:
			say "     One or both of them are often cuddled up with their nurturing mother.";
		say "     Sidney seems very happy in her new role as the loving mom.";


Instead of conversing the Sidney:
	if HP of Sidney < 3:
		say "ERROR-Sidney-[HP of Sidney]T: You should not be able to talk to me!";
	else if HP of Sidney is 3:
		say "     'I really appreciate everything you've done for me. I don't think I would have been able to make my dream come true without you. It's going to take some getting used to being a [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if], but I already know I'm going to love it,' she says while [if level of Sidney is 71]running around you on all fours with her tail wagging frantically[else]posing sexily on the nearby desk[end if].";
		say "     'And you're still looking out for me by giving me a safe place to stay. It's pretty nice here. Defensible, uninteresting to the lust-crazed creatures, large enough to house plenty of people, and with books to provide distraction and a means to hold onto humanity. Oh, and I'll keep a look out for you too. Quite literally,' she adds, 'I'll stay posted by this window and keep watch for trouble attempting to come around back.'";
		now HP of Sidney is 4;
	else if HP of Sidney >= 4 and sidneytalk1 is false and a random chance of 1 in 3 succeeds:
		say "     'When I first heard what was going on in the city, I thought it was amazing that I could become female that way. But seeing the others driven mad or reduced to lust-filled animals was completely different. That drove home all the warnings and rumors we'd heard before coming into the city and I got really scared of getting close to the wild mutants. I mean, what if something didn't go as expected? The last thing I wanted was to become some sex-crazed male beast, to never have my dream come true and instead be assaulting the females the real me would much rather be. Trapped like that would've been...' she says, shuddering.";
		now sidneytalk1 is true;
	else if HP of Sidney >= 5 and sidneytalk1 is true and sidneytalk2 is false and a random chance of 1 in 3 succeeds:
		say "     'Before all this, I wouldn't even have considered being some kind of animal [if level of Sidney is not 71]woman [end if]when I thought about being female. But while I was trying to decide what to do once I was all alone out there, they were always the ones that stuck in my mind the most. It's going to be a new world after this - there's no stopping that now - and I want to truly be a part of that world. With your help, I've got a body that I really love - that finally feels like [bold type]me[roman type]. We shouldn't be blindly fighting this; we should be looking for a way to safely let everyone be whomever or whatever they want.";
		now sidneytalk2 is true;
	else if HP of Sidney >= 5 and sidneytalk1 is true and sidneytalk3 is false and a random chance of 1 in 3 succeeds:
		if level of Sidney is 21:
			say "     'I love being a smoking hot vixen. I can hardly wait for the rescue - I'm going to have so much fun,' she purrs, running her paws down her sides before cupping her big melons. 'Looking like this, I could have a lover for every day of the week.'";
		else if level of Sidney is 22 or level of Sidney is 23:
			say "     'I love this new body of mine. I've always enjoyed swimming and I can't wait to see how much better I'll be at it now that I'm a sleek and sexy otteress. And now I don't have to be self-conscious about being seen in swimwear. This bod'll make sure I'll be one of the hottest girls on the beach,' she says, stretching to show off her swimsuit-clad form.";
		else if level of Sidney is 71:
			say "     'I won't lie and say being an [']animal['] doesn't have its obvious drawbacks, but it's not all bad. I've still got some use of my paw-hands, for one.' Sidney demonstrates, managing to wiggle her stubby fingers with some effort to pick up and turn the pages of a book. 'Besides, I'm sure an adorable girl like me'll be able to get by on her charms,' she adds teasingly with a wave of her rump (and its juicy pussy) towards you.";
		now sidneytalk3 is true;
	else if HP of Sidney >= 6 and sidneytalk1 is true and sidneytalk4 is false and a random chance of 1 in 3 succeeds:
		say "     'I know I could've just jumped on the first alpha dick I found, but I didn't want to just be some mindless breeder whore. Thanks to you, I'm still me, but I'm also the woman I've always wanted to be... well, more or less,' she adds with a grin[if level of Sidney is 71] and a wag of her tail[else], running her hands over her furry form[end if]. 'I wanted to experience the joys of childbirth and womanhood, but that'd be no fun if I was too drugged up on sex hormones to even notice who's fucking me. And now, I [if XP of Sidney > 0]am[else]can be[end if] a mother,' she says with a contented smile.";
		now sidneytalk4 is true;
	else if XP of Sidney > 0 and a random chance of 1 in 3 succeeds:
		say "     [one of]'It's great being a mom. I feel so complete now,' she says with a smile as she looks at her frolicking children.[or]'Even though they grow up extra-fast these days, it's still a wonderful chore to raise kids,' she says with a tired smile.[or]'Giving birth [if XP of Sidney > 2]that first time[else]for the first time[end if] was painful and wonderful all at once.'[or]Sidney's got [if XP of Sidney > 2]two of her kids[else]her two kids[end if] in her arms and is reading to them.[or]Sidney's brushing the fur of one of her kids with a brush[if level of Sidney is 71] in her muzzle[end if].[in random order]";
	else:
		say "     '[one of]This is wonderful, but it'll take some getting used to.'[or]Thanks for your help. I'm so much happier this way.'[or]No unusual activity. Well, nothing unusual for this sex monster apocalypse,' she jokes as she sits on guard by the window.[or]It's great being such a pretty [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] instead of the ugly old me. I was never a handsome man and would have looked worse as a woman. Trading in for this new body was definitely the way to go.'[or]I know I'm just a doppelganger or clone of someone else, but this body feels all new to me.'[or]Being female is even better than I'd imagined. I feel so _right_ now.'[or]I guess I'm glad I waited until I had some help to get me transformed, otherwise I wouldn't have met you and probably wouldn't have gotten a body anywhere near as wonderful as this one,' she says happily.[or]Thanks for letting me stay here. I doubt they'd let me back to base like this. They probably wouldn't even have let me get anywhere close to the perimeter. With what happened the first few times some mutants got too close to the blockade, those guys have gotten really itchy trigger fingers.[or]Don't I look [if level of Sidney is 21]beautiful as a vixen[else if level of Sidney is 22 or level of Sidney is 23]lovely as an otteress[else]adorable as a fluffy wusky[end if]?' she asks, showing off her new body.[at random]";


Section 5 - Sexy Times Sidney

Part 1 - Basic System

the fuckscene of Sidney is "[sexwithSidney]".

to say sexwithSidney:
	if HP of Sidney < 3:
		say "ERROR-Sidney-[HP of Sidney]F: You should not be able to find me yet. Resetting.";
		now HP of Sidney is 0;
		now Sidney is nowhere;
		if girl is not banned and furry is not banned, now Meeting Sidney is active;
	else if Player is neuter:
		say "     You should settle on a gender of your own before trying to sex up the gender-shifted soldier.";
	else if lastfuck of Sidney - turns < 6:
		say "     'I'm still getting used to all this. It's been wonderful, but I think I could use a bit of a break.'";
	else if HP of Sidney is 3:
		say "     Sidney's undergone a major change. You should talk to her and see how she's taking it before trying to jump in the sack with her.";
	else if HP of Sidney is 4 or HP of Sidney is 5:
		if Player is male:
			say "[sexwithSidney_01]"; [doggy style over desk for first M/F]
			now HP of Sidney is 6;
		else:
			say "[sexwithSidney_04]"; [cunnilingus for F/F]
			now HP of Sidney is 5;
		now lastfuck of Sidney is turns;
	else:
		say "[sidney_sexmenu]";

to say sidney_sexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Doggy style";
		now sortorder entry is 1;
		now description entry is "fuck the [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] doggy style";
		choose a blank row in table of fucking options;
		now title entry is "Missionary";
		now sortorder entry is 2;
		now description entry is "fuck the [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] missionary style";
	if Player is male and HP of Sidney >= 7:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 5;
		now description entry is "fuck the [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] in the ass";
	choose a blank row in table of fucking options;
	now title entry is "Receive oral";
	now sortorder entry is 6;
	now description entry is "have her [if Player is male]suck you off[else]eat you out[end if]";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Doggy style":
					say "[sexwithSidney_01]";
				else if nam is "Missionary":
					say "[sexwithSidney_02]";
				else if nam is "Anal":
					say "[sexwithSidney_03]";
				else if nam is "Receive oral":
					say "[sexwithSidney_04]";
				now lastfuck of Sidney is turns;


Part 2 - Sex Scenes

to say sexwithSidney_01:
	if level of Sidney is 71:
		say "     '[if HP of Sidney < 6]It feels great to finally be a girl. And now I want you to make me a woman[else]Come on, stud. I want to feel you deep inside me again[end if],' Sidney says sensually as she nuzzles your groin. She makes a show of wiggling her rear as she puts her forepaws on the desk. Presented with such a tantalizing offer[if HP of Sidney < 6] and such a special opportunity[end if], you promise the lovely femme you'll make her feel wonderful.";
	else:
		say "     'It feels great to finally be a girl. And now I want you to make me a woman,' Sidney says sensually as she runs her paws over your torso. She makes a show of wiggling her rear as she leans on the desk. Presented with such a tantalizing offer[if HP of Sidney < 6] and such a special opportunity[end if], you promise the lovely femme you'll make her feel wonderful.";
	say "     To start her off, you stroke and caress her furry body. Your touches are softly sensual, drawing pleasured moans from the [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if][if lust of Sidney > 8]. You caress her belly bulge of her pregnancy, proof that she's truly and fully female now[end if]. Your fingers drift to her pussy, already sopping wet at the prospect of [if HP of Sidney < 6]her first [end if]mating, and you slip a pair of fingers into her. Her whimpers of delight increase.";
	say "     'Oh please. Please don't tease me[if HP of Sidney < 6]. I've waited so long for this moment[else]. I need it so bad[end if],' she moans. Pulling your fingers from her sopping hole, you replace them with the throbbing cock she's begging for. And when she moans upon penetration, you pop those juice-coated fingers into her mouth. She licks and sucks the femme cum from your digits, relishing the taste of her very own pussy.";
	say "     Her cunt squeezes and quivers upon your rod as you hold it in her[if HP of Sidney < 6]. And while Sidney may be a virgin, her copied cunt certainly isn't, responding eagerly and with experience to getting fucked[else]And while Sidney may be new to sex, her experienced cunt responds eagerly to getting fucked[end if]. She pants softly and rolls her hips into your thrusts, her needy body loving every moment of it. The [if level of Sidney is 21]sultry vixen yips[else if level of Sidney is 22 or level of Sidney is 23]sexy otter churrs[else]feral wusky barks[end if] in pleasure as you quicken your pace.";
	if HP of Sidney < 6:
		say "     'This is... oooo... so... ahhh... even better... than I'd dreamed,' she pants between your thrusts. Pleased with how much your lover is enjoying her first time, you can't help but feel a swell of pride. And that further fuels your lust. You nuzzle at the back of her head, nibble her ears and coo softly about what a sexy woman she is. Hearing this sends the gender-shifted soldier into orgasmic delight, her needy cunt milking at your shaft as she cries out. You join her in climax a few moments later, pumping your hot load into her womb. Her orgasm peaks again as she feels the hot rush of your semen inside her for the first time. By the time you've finished and have pulled out, the no-longer-virginal [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] sags down onto the ground with a happy sigh, gently [if level of Sidney is 71]licking[else]caressing[end if] her leaking pussy with blissful awe.";
	else:
		say "     'It still... oooo... can't... ahhh... can't believe how... ohh baby! ...how great this feels,' she pants between your thrusts. Pleased with how much your lover is enjoying your lovemaking, you can't help but feel a swell of pride. And that further fuels your lust. You nuzzle at the back of her head, nibble her ears and coo softly about what a sexy woman she is. Hearing this sends the gender-shifted soldier into orgasmic delight, her needy cunt milking at your shaft as she cries out. You join her in climax a few moments later, pumping your hot load into her womb. By the time you've finished and have pulled out, the sated [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] sags down onto the floor with a happy sigh, basking in the blissful afterglow of sex.";
	if lust of Sidney is 0 and a random chance of 3 in 5 succeeds, now lust of Sidney is 1; [preggers]


to say sexwithSidney_02:
	say "     Laying Sidney on her back, you move into position atop her. She smiles up at you[if level of Sidney is 71] as you spread her hind legs,[else], spreading her legs for you and so[end if] putting her wet and waiting muff on display. You waste little time in mounting the [if level of Sidney is 21]red vixen[else if level of Sidney is 22 or level of Sidney is 23]sleek otter[else]feral wusky[end if], enjoying the sensual sigh of satisfaction she releases as you plunge into her.";
	say "     Her wet tunnel grips and squeezes around you as you start thrusting. Her paws [if level of Sidney is 71]kick sporadically in the air as you fuck her so satisfyingly[else]rub over your [bodydesc of Player] body as you fuck her so satisfyingly[end if]. Leaning [if lust of Sidney > 8]over her pregnant belly[else]in[end if], you share a passionate kiss with the [if level of Sidney is 21]sultry vixen[else if level of Sidney is 22 or level of Sidney is 23]flexible otter[else]cute canine[end if]. Your pace quickens as your lovemaking continues until she [one of]moans[or]whimpers[or]pants[at random] heavily and her hips and loins tremble beneath you in orgasmic release. Having her climaxing beneath you pushes you over the top in short order and you pump your hot, sticky load into the sexy female.";
	say "     When finished, you pull out slowly. She watches you exiting her and [if level of Sidney is 71]rolls onto her side, burying her muzzle between her legs to lap up your warm semen from her sloppy cunt[else]slips a few fingers into her sloppy cunt, enjoying having your semen warming her insides[end if]. 'Having a horny stud cum inside my very own pussy is the best thing I've ever felt. I hope it never gets old.'";
	if HP of Sidney is 6, now HP of Sidney is 7;
	if lust of Sidney is 0 and a random chance of 3 in 5 succeeds, now lust of Sidney is 1; [preggers]


to say sexwithSidney_03:
	if sidneyanal is false:
		say "     At your suggestion of trying the [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if][']s back door, she's surprisingly open to the idea. 'Yeah, I want to do everything this new me has to offer. I wasn't really interested in that kind of fun as a guy, but getting it in the butt as a [if lust of Sidney > 8]pregnant [end if]girl makes it extra-extra-kinky,' she says. 'Just take it easy on me. It's my first time, after all,' she adds. You nod and start by [if anallevel is 3]rimming her tailhole[else]spreading some spit across her tailhole[end if] after she [if level of Sidney is 71]puts her forelegs up on the desk[else]leans her body over the desk[end if].";
	else:
		say "     Sidney grins at your suggestion that the [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] take it in the back door again. 'Sounds like fun. It makes me feel so naughty,' she says with a wink. 'I'm such a dirty girl for taking it up the butt[if lust of Sidney > 8] while pregnant[end if],' she adds as she [if level of Sidney is 71]puts her forelegs up on the desk[else]leans her body over the desk[end if]. She raises her tail extra-high, giving you a fine view of that puckered hole of hers. You again start by [if anallevel is 3]rimming her tailhole[else]spreading some spit across her tailhole[end if] to get her ready to go.";
	say "     After your prep's gotten her crinkled hole relaxed and slick, you move atop her and get your hard shaft lined up. You press your [cock of Player] cock against her butthole and ease it in [if Cock Length of Player > 12]extra-[end if]slowly, letting her adjust to having your [cock size desc of Player] manhood moving inside her. Her asshole remains snug and squeezing around your cock even after it's relaxed and ready for you to fuck it. And fuck it you do, working your shaft in and out of her furry butt in slow, steady strokes that quickly has her panting and moaning[if sidneyanal is false]. And while this may be Sidney's first experience with anal sex, it seems her copied body knows what to do, responding with[else]. Sidney's copied body responds with[end if] sensual rolls of her hips and well-timed squeezes of her inner walls, adding to the pleasure you both feel. The [if level of Sidney is 21]sultry vixen yips[else if level of Sidney is 22 or level of Sidney is 23]sexy otter churrs[else]feral wusky barks[end if] in pleasure as you quicken your pace.";
	if sidneyanal is false:
		say "     'This feels... uggh... so deliciously na-ah-ah-naughty. I... ooo... feel like such a-ahh! dirty little slut,' she groans and pants between your thrusts. Pleased with how much your lover is enjoying her first anal experience, you become all the more aroused. And while it takes an effort not to pound her relentlessly, your thrusts do become firmer, drawing such cute little whimpers from the [if level of Sidney is 21]sexy vulpine[else if level of Sidney is 22 or level of Sidney is 23]sleek lutrine[else]feral canine[end if] beneath you. Reaching down between her legs, you diddle her pussy and rub her clit, driving her to orgasm. Her hips grind back against you and her anus flutters wildly around your shaft as she cums, and so you cum hard in response shortly thereafter. You blast your [Cum Load Size of Player] load into her tight ass, creaming her bowels with your sticky seed[if Ball Size of Player > 5] until the excess comes flowing out around your spurting member[end if]. By the time you've finished and pulled out, Sidney's completely worn out and sags down onto the floor, your cum leaking from her stretched and well-used pucker.";
	else:
		say "     'Ohhh... This makes me... uhh... feel like such a-ahh! dirty little slut,' she groans and pants between your thrusts. Pleased with how much your lover is enjoying the anal fucking you're providing, you become all the more aroused. And while it takes an effort not to pound her relentlessly, you do lean overtop her and thrust harder into her squeezing back door. The [if level of Sidney is 21]sexy vulpine[else if level of Sidney is 22 or level of Sidney is 23]sleek lutrine[else]feral canine[end if] moans and whimpers cutely beneath you at the harder thrusting, but clearly enjoys it as well.";
		say "     You nuzzle at the back of her head and nibble her ears. You tease her about how she's becoming such a naughty, dirty and oh-so-sexy woman while diddling her pussy and rubbing her clit, driving her to orgasm. The gender-shifted soldier moans in orgasmic delight, her hips grinding back against you and her anus flutting wildly around your shaft as she cums, and so you cum hard in response shortly thereafter. You blast your [Cum Load Size of Player] load into her tight ass, creaming her bowels with your sticky seed[if Ball Size of Player > 5] until the excess comes flowing out around your spurting member[end if]. By the time you've finished and pulled out, Sidney's completely worn out and sags down onto the floor, your cum leaking from her stretched and well-used pucker.";
	now sidneyanal is true;


to say sexwithSidney_04:
	if Player is male:
		say "     Taking out your cock[smn], you offer [itthemm] to the [if level of Sidney is 21]vulpine[else if level of Sidney is 22 or level of Sidney is 23]lutrine[else]canine[end if] female. She [if level of Sidney is 71]pants[else]grins[end if] at the sight of [itthemm] and leans in to nuzzle [itthemm]. Sniffing at the scent of your arousal, she moans softly and then slides her muzzle over your shaft. She licks and sucks at your cock with gusto, her body knowing just what to do. You rub a hand encouragingly over her head, petting the eager girl.";
		say "     You let her go at her own pace and she seems to enjoy, even savor, every moment of it. She lavishes your cock[smn][if cockname of Player is listed in infections of InternalList and player is female] and puss[yfn][else if Player is female], balls and puss[yfn][else if cockname of Player is not listed in infections of InternalList] and balls[end if] with attention from her [if level of Sidney is 71]long[else]talented[end if] tongue. The once cautious and reserved soldier's become quite lustful now that her inner woman's been released, and she clearly wants to thank you in the best ways possible for it[if lust of Sidney > 8]. The sight of this sexy pregnant female sucking you off is a beautiful and arousing one[end if].";
		if a random chance of 3 in 5 succeeds:
			if Cock Count of Player is 1:
				say "     With her so eagerly at work, you can only hold out so long before grunting in release. You pump your [Cum Load Size of Player] load into her muzzle and down her throat as she swallows as much semen as she can get. Releasing your spent shaft, she licks her chops and smiles up at you. 'Yummy!'";
			else:
				say "     With her so eagerly at work, you can only hold out so long before grunting in release. With one of your cocks in her muzzle, you pump a goodly share of your [Cum Load Size of Player] load into her muzzle and down her throat as she swallows as much semen as she can get. The rest ends up spraying out across her face and muzzle, marking her in gooey streaks of your seed. Releasing your spent shaft, she licks her chops and smiles up at you. 'Mmm... tasty and kinky. That was deliciously wild!'";
		else:
			say "     With her so eagerly at work, you can only hold out so long before grunting in release as she's busily licking the underside of [if Player is male]one of [end if]your shaft[smn]. You end up blowing your [Cum Load Size of Player] load across her face in gooey streaks of semen. The messy [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] smiles up at you. 'That was so hot! I love being a woman!'";
	else:
		say "     Presenting your juicy puss[yfn] to the [if level of Sidney is 21]vulpine[else if level of Sidney is 22 or level of Sidney is 23]lutrine[else]canine[end if] female, she [if level of Sidney is 71]pants[else]grins[end if] at the sight of your female loins and leans in to nuzzle your crotch. Sniffing at the scent of your arousal, she moans softly and drags her tongue slowly over your damp petals. She licks and tongues at your puss[yfn] and clit[sfn] before plunging her tongue into you. She eats you out with gusto, her body seeming to know just what to do. You rub a hand encouragingly over her head, petting the eager girl.";
		say "     You let her go at her own pace and she seems to enjoy, even savor, every moment of it. She lavishes your cunn[yfn] with attention inside and out. The once cautious and reserved soldier's become quite lustful now that her inner woman's been released, and she clearly wants to thank you in the best ways possible for it.";
		say "     With her so eagerly at work, you can only hold out for so long before crying out in release. Your hot juices run across her tongue and soak her muzzle. She laps up every last drop she can get, teasing your clit[sfn] to get a few last orgasmic moans out of you before pulling away. She leans back against the shelves and licks her chops. '[if HP of Sidney < 5]Mmm... girl on girl is even better than I'd imagined. This is going to be so much fun[else]Mmm... tasty stuff. Girl on girl is deliciously hot, especially now that I'm one of the girls[end if],' she says with a happy grin on her muzzle.";


Section 6 - Interactions

after navigating Grey Abbey Library while ( HP of Sidney >= 6 and Sidney is booked and lastfuck of Sidney > turns ) and ( Fang is booked and lastfuck of Fang > turns ) and fangsidney is false:
	say "     You arrive back to find Sidney's come out of the breakroom. At first you think she might be mentioning something she spotted to Fang, your lupine guard, but it's rapidly clear that it's more than that. The wolf goes from nuzzling the [if level of Sidney is 21]vixen[else if level of Sidney is 22 or level of Sidney is 23]otter[else]wusky[end if] to sniff along her side and then under her tail. Sidney [if level of Sidney <= 23]raises that tail and pushes aside her obstructing garments[else]raises that fluffy tail of hers[end if], allowing Fang to smell and then lick across her pussy. She shivers with pleasure and releases a happy moan.";
	say "     Shall you continue watching?";
	if Player consents:
		say "     Fang, horny wolf that he is, takes little preamble before mounting the willing female. The [if HP of Fang >= 3]big alpha[else]eager beta[end if] jabs his lupine cock into her after only a few missed attempts to find his mark. She releases a gasping cry of delight upon being penetrated. 'Show me what you've got, you big, bad wolf,' she pants. He gives a soft growl and takes her by the scruff of the neck, thrusting harder.";
		say "     You move to a better vantage point a little closer. Sidney notices you watching her being mated by the wolf [if HP of Fang >= 3]stud [end if]and looks away. But her shame is only momentary - perhaps confident in enjoying her new gender however she likes or simply remembering that you [if HP of Fang >= 3]too have been under the virile alpha[else]too have had sex with the wolf[end if]. Regardless, she lets her cries of pleasure grow as the [if HP of Fang >= 3]large[else]eager[end if] lupine mates her. Your presence makes [if HP of Fang >= 3]no difference as far as he's concerned[else]little difference to him since his alpha is allowing him to continue[end if].";
		say "     The wolf pounds into her with increasing energy, his growing knot smacking audibly against her wet folds. She grits her teeth, leans further forward and pushes back with her hips. Her pussy is pushed open by the constant battering, finally allowing him in with a wet pop. Sidney cries out in orgasm as the feral beast ties with her. He switches to short, rapid-fire thrusts, tugging and shifting his knot inside her quivering tunnel. He howls in orgasmic release a few moments later. From the happy grin on his panting face, you know he's shooting his feral semen into her, seeding his current bitch.";
		WaitLineBreak;
		say "     They remain tied like this for a while, waiting for Fang to finish unloading his [if HP of Fang >= 3]virile [end if]cum and for his knot to then go down. Fang does climb off her back and move butt to butt in canine style during this period[if Player is not neuter]. You take this opportunity to masturbate, providing them with a small show in return for the one you've received[end if]. Once freed, they part ways after sharing a sloppy kiss. Fang [if HP of Fang >= 3]returns confidently[else]respectfully returns[end if] to his post while Sidney gets up more slowly. Despite her attempts to avoid a mess, she's too new to her being female to keep her overstretched cunt closed. The wolf's seed runs down her thighs even as she tries to hold back the flow with [if level of Sidney is 71]her fluffy tail[else]a paw[end if].";
		say "     'That was... something else...' she syas with a bit of a forced laugh. 'Definitely a [']new experience['],' she adds. She makes her way slowly back towards the breakroom, trailing drops of wolfcum as she goes.";
	else:
		say "     Knowing what's coming up, you leave the pair to it. Sidney may be new to being a girl, but she can make her own decisions.";
	now lastfuck of Fang is turns;
	now lastfuck of Sidney is turns;
	now fangsidney is true;

Section 7 - Everyturn Rule (pregnancy)

an everyturn rule:
	if lust of Sidney > 0 and a random chance of 4 in 5 succeeds:
		increase lust of Sidney by 1;
		if lust of Sidney > 16 and skipturnblocker is 0:
			say "     Your thoughts drift to Sidney and how [if XP of Sidney > 0]she and her children are doing[else]she's doing now as a female[end if].";
			if XP of Sidney is 0:
				now XP of Sidney is 2;
			else:
				increase XP of Sidney by a random number between 1 and 3;
			now lust of Sidney is 0;


Section 8 - Endings

[
when play ends:
	if humanity of Player >= 10:
		if HP of Sidney >= 3 and Sidney < 99:
			say "***";
		else if HP of Sidney is 99:
			say "***";
]


Sidney ends here.
