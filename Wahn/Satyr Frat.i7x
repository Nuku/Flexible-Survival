Version 1 of Satyr Frat by Wahn begins here.
[ Version 1 - Initial Event ]

[ SatyrFratPartyStage                                                  ]
[  0: Free Drink event not done yet                                    ]
[  1: player helped in the free drink event (punched Richard)          ]
[  2: player helped in the free drink event (fought incubi - won)      ]
[  3: player helped in the free drink event (fought incubi - fled)     ]
[  4: player helped in the free drink event (fought incubi - lost)     ]
[  5: player helped in the free drink event (BJ for Richard)           ]
[  6: player helped in the free drink event (got fucked by Richard)    ]
[ 99: player declined helping the satyrs                               ]

SatyrFratPartyStage is a number that varies.

to say Satyr Frat Party:
	say "     You walk over the campus with the two satyrs, chatting a bit as you go along. Their names are Kerr and Talov, and the two of them are pretty mellow and friendly, going on and on how much fun the party will be. Seems to you as if they stopped more than just once to drink cups of wine on the way too. After a while, Kerr asks you to take his place pushing the barrel for a moment, then skips ahead, scouting out where you're going. When he comes back a moment later, he says, 'We've got a small problem... they've got someone standing guard.' Seeing your questioning expression at this, he continues, 'Well, it's like this - we're the surprise guests... in that no one knows we're coming. The frat-boys have been partying for a while, so they are tipsy and distracted enough not to care too much if we join them... but that guy back there looks like he drew the short straw. Totally sober and alert.'";
	say "     [line break]";
	say "     Already having downed a few cups themselves, your two satyr compatriots seem a bit indecisive in how to deal with this little problem. You doubt they'll manage their plan on infiltrating the frat party on their own. Do you want to help them out?";
	if player consents:
		say "     [line break]";
		say "     Telling Kerr and Talov that you'll deal with things, you walk ahead of them and soon see a young man standing guard in front of a frat house in which a roaring party is going on. He's tall and pretty handsome too, dressed in a black Phi Alpha Nu t-shirt and jeans. From the looks of his muscled body, he's obviously an athlete - which throws the option of just attacking him out of the window. A prolonged brawl right in front of the house would surely be noticed even by the wildest partying crowd, and a jeering crowd of onlookers is exactly what your satyr friends don't need.";
		say "     [line break]";		
		say "     You could try knocking him out with a sucker-punch [link](1)[as]1[end link] - if it's all over in a second, no one might notice. Or you could try to get him out of position with some quick lying [link](2)[as]2[end link]. And of course, being a satyr yourself, there's always the option of just charming the pants off the young man [link](3)[as]3[end link] - he definitively won't be thinking of guarding anything while you take care of him...";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to punch him out, [link]2[end link] to talk your way through this, or [link]3[end link] to have sex with him.";
		if calcnumber is 1:								[knockout]
			say "     [line break]";			
			let bonus be (( the Strength of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Strength-Check vs 18)";
			increase diceroll by bonus;
			say "     [line break]";						
			if diceroll is greater than 17:
				say "     Walking up to the young human man in a relaxed, nonthreatening manner, you greet him and... land a hard punch right in his face. Unprepared for this sudden violence, the frat-member just crumples to the ground. That went surprisingly smooth. You have a quick look over to the house, but none of the partying people seems to have noticed your very short altercation. Grabbing the knocked-out student under the arms, you start dragging him out of sight, around the corner of the frat-house's garage. As you do so, Kerr and Talov pass you with their barrel, rolling it towards the entrance of the building. You can tell from Kerr's expression that he's a bit surprised at your violent solution to this situation.";
				say "     After you finish dragging your unconscious victim around the corner and put him on the ground behind a tall bush, you unobtrusively check for the other satyrs. Looks like they made it into the building alright. With a smile at the thought of the two of them joining the party and handing out wine left and right, you walk away from the frat-house - for now. Maybe you should return here sometime and see what you've just helped do...";
			otherwise:
				say "     Walking up to the young human man in a relaxed, nonthreatening manner, you greet him and... land a punch right in his face. Unprepared for this sudden violence, the frat-member stumbles backwards, but quickly catches himself. Uh-oh... that just made him angry. Using the moment in which the muscled guy shakes off the slight daze you gave him as a head-start, you dash away down the street, quickly followed by the yelling and cursing young man. This might not have been such a bright idea after all - he almost catches you several times, proving the speed and stamina a trained athlete can muster. Only when you jump over a hedge just after turning a corner do you get rid of him, as he dashes past your hiding spot.";
				say "     Phew, that was close. Though at least you can be sure that you gave Kerr and Talov enough time to make their way into the party.";
			now SatyrFratPartyStage is 1;
		if calcnumber is 2:								[lying]
			say "     [line break]";			
			say "     Running up to the young human man on quick hooves, you do a bit of play-acting as if you're out of breath, then pant that you saw a group of incubi climbing over the fence behind the house. The athletic young man's eyes widen in alarm and he says 'What?! Where? And who are -' Quickly interrupting him before he can really think about anything, you tell him to come quickly and run past the garage of the frat-house, turning the corner towards the backyard. And it works - the frat party guardian follows you a moment later, leaving his post to check out your imaginary incubi.";
			say "     Though as it turns out, they're not as imaginary as you thought - there actually are two incubi climbing over the fence! What a coincidence. Dropping down into the garden, they take up poses that show off their inhumanly perfect bodies and await you and the frat-member behind you calmly. 'Didn't I say there'd be a delicious banquet of studs in here? I'll take the left one,' one of them says to the other, then they attack.";
			challenge "Incubus";
			if fightoutcome >= 20 and fightoutcome <= 29:									[lost]
				say "     After the incubus finishes with you, he's suddenly punched out by the frat guy, who finished off his own attacker in the meantime. The young man helps you back to your feet, meanwhile closely watching the incubi pick themselves up and flee. When the two of you walk back to the front of the house afterwards, he says 'Thanks for the warning and... er, help. I'm Richard by the way.' He's too intent in getting back to his post to do more than have a short chat on the way, but you get the impression that he's a pretty friendly and nice guy. As you come to the front of the house, your satyr compatriots are nowhere in sight - seems like they made it into the building alright. Getting another bit of thanks from Richard, you say your goodbyes and walk away. Maybe you should return here sometime later and see what you've just helped do...";
				now SatyrFratPartyStage is 4;
			otherwise if fightoutcome >= 30:			[fled]
				say "    Sometimes it's best to flee - this isn't really your fight after all. As you dash off, you see that the frat guy has finished off his own incubus. He lunges at yours as the demon tries to run after you, bringing both of down to sprawl on the ground, wrestling with each other. And that's the last you see of the fight, as you turn a corner and move further away. A bit of a dick move to leave the young man to fight alone, though at least you can be sure that you gave Kerr and Talov enough time to make their way into the party.";
				now SatyrFratPartyStage is 3;
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:  			[won]
				say "     After finishing off the incubus, you look around and see frat guy standing over his own opponent. The young man claps your shoulder in camaraderie and keeps a close watch on the bruised incubi as they pick themselves up and flee. When the two of you walk back to the front of the house afterwards, he says 'Thanks for the warning and help. I'm Richard by the way.' He's too intent in getting back to his post to do more than have a short chat on the way, but you get the impression that he's a pretty friendly and nice guy. As you come to the front of the house, your satyr compatriots are nowhere in sight - seems like they made it into the building alright. Getting another bit of thanks from Richard, you say your goodbyes and walk away. Maybe you should return here sometime later and see what you've just helped do...";
				now SatyrFratPartyStage is 2;
		if calcnumber is 3:								[sex]
			say "     [line break]";			
			say "[SatyrFratSex]";
	otherwise:
		say "     [line break]";
		say "     Maybe it's for the best that the two of them won't manage to pass their infective wine to dozens of frat members here on the campus. With a well-meant suggestion of just taking their wine barrel and enjoying the contents themselves, you leave the satyrs and turn your attention back to more important matters.";
	
to say SatyrFratSex:	
	say "     Walking up to the young human man in a relaxed, nonthreatening manner, you greet him and start a conversation. As it turns out, his name is Richard and he just started out here in Tenvale College on a sports scholarship this semester. He's a running back in the football team and joined the Phi Alpha Nu fraternity as a legacy member, just like his father before him. Nevertheless, he's still low on the totem pole - which explains why he's out here on guard duty and not enjoying himself with all the others inside. He's got a bit of a wistful look in his eye as he tells you about it, finishing 'I'd love to party with the guys... err, and all the hot chicks we've got over. Yeah, love the babes on campus. Definitively.'";
	say "     That last bit was said a bit too hurriedly, a blurt of words only making clearer what he wanted to hide. And catching his eyes stray down your body for a second confirms it a moment later - so Richard has some interest there for both sides of the fence. Perfect, for what you're planning. Keeping him talking about what he likes in women and his past conquests, you get the football-player in a receptive mood, then smoothly compliment him on what great shape he's in. Things progress to him showing off his muscles, then you feeling and... gently stroking them, just a little bit at first, then ever bolder. Soon you're standing very close besides the young man, one hand on the growing bulge in his pants. In the most charming tone you can manage, you tell him...";
	say "     [line break]";
	say "     That you want to give him a blowjob [link](1)[as]1[end link]. That you want him to fuck you [link](2)[as]2[end link].";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		otherwise:
			say "Invalid choice.  Type [link]1[end link] to blow him or [link]2[end link] to get fucked.";
	if calcnumber is 1:								[BJ]
		say "     As wound up as you've got the athletic student, he eagerly and immediately agrees and lets himself be led around the corner of the frat-house's garage, to a nice secluded spot between several high bushes. Looking back before joining him there, you see your two satyr compatriots, grinning broadly at how you're dealing with the frat party guardian. While they start rolling their barrel on towards the goal, you pull Richard close and give him a deep kiss. His eyes widen at actually being intimate with [if cunts of player is 0]another male[otherwise]a herm[end if] for the first time and he freezes for a second, then quickly gets over his shock and happily replies in kind. As you make out with the young man, your hands quickly undo his button and zipper, opening the way to the quite impressive tent showing at the front of his boxer shorts.";
		say "     He moans between your kisses as you slide your hands under the band of his shorts, fondling his balls and jerking him off with the other hand. Then you kneel down, pulling down his pants and shorts as you go along, freeing his well-sized manhood to dangle just before your nose. Very nicely hung, your young running back. Eager to get going, you take hold of his shaft and slowly lick up the underside of Richard's shaft, making him pant loudly in lust. Soon arriving at the tip of his manhood, you play your tongue over it, teasing his slit for a moment, then slide your lips over his cock and sink them down along its length.";
		say "     [WaitLineBreak]";
		say "     While bobbing up and down on Richard's shaft, you use your hands to play with his balls, stroking and fondling to give your partner even more pleasure. At one point, you even snake a hand through between his legs, seeking out the round and firm globes of his butt to give them a good squeeze, then moving on what lies between them. Richard's pants come even quicker as you rub a finger around his pucker, which culminates in a pleasantly surprised gasp as you push it in a moment later, probing his virgin hole. Nice and tight, and you can make this strong male give a very cute little squeal when you rub his prostate. Definitively something to remember for later - though for now, you decide it'd be better to just concentrate on the blowjob.";
		say "     With you so eagerly going down on him, as well as touching and stroking his body, it's no big wonder that Richard soon gets closer and closer to orgasming. His pants and moans rise in volume and frequency until he finally gives a breathless grunt of 'I'm coming!' and blasts of his cum start filling your mouth. You feel the pleasant taste of his seed on your tongue for a moment, then swallow it down as more and more pulses out of his cock. 'That was *pant* amazing!' Richard gets out after getting himself under control again, before accepting a kiss that lets him taste his own cum a moment later.";
		say "     [WaitLineBreak]";
		say "     After a bit more pretty nice making out with the student, you leave to pull his pants back up, unobtrusively checking for the other satyrs in the meantime. Looks like they made it into the building alright. With a smile, you playfully grope Richard's butt one last time, then bid him farewell and watch as he walks back to his post. Maybe you should return here sometime later and see what you've just helped do...";
		now SatyrFratPartyStage is 5;
	otherwise if calcnumber is 2:			[Fuck]
		setmonster "human";
		choose row monster from the table of random critters;
		say "     As wound up as you've got the athletic student, he eagerly and immediately agrees and lets himself be led around the corner of the frat-house's garage, to a nice secluded spot between several high bushes. Looking back before joining him there, you see your two satyr compatriots, grinning broadly at how you're dealing with the frat party guardian. While they start rolling their barrel on towards the goal, you pull Richard close and give him a deep kiss. His eyes widen at actually being intimate with [if cunts of player is 0]another male[otherwise]a herm[end if] for the first time and he freezes for a second, then quickly gets over his shock and happily replies in kind. As you make out with the young man, your hands quickly undo his button and zipper, opening the way to the quite impressive tent showing at the front of his boxer shorts.";
		say "     He moans between your kisses as you slide your hands under the band of his shorts, fondling his balls and jerking him off with the other hand. Then you kneel down, pulling down his pants and shorts as you go along, freeing his well-sized manhood to dangle just before your nose. Very nicely hung, your young running back. Eager to get going, you take hold of his shaft and slowly lick up the underside of Richard's shaft, making him pant loudly in lust. Soon arriving at the tip of his manhood, you play your tongue over it, teasing his slit for a moment, then slide your lips over his cock and sink them down along its length.";
		say "     [WaitLineBreak]";
		say "     While bobbing up and down on Richard's shaft, you use your hands to play with his balls, stroking and fondling to give your partner even more pleasure. At one point, you even snake a hand through between his legs, seeking out the round and firm globes of his butt to give them a good squeeze, then moving on what lies between them. Richard's pants come even quicker as you rub a finger around his pucker, which culminates in a pleasantly surprised gasp as you push it in a moment later, probing his virgin hole. Nice and tight, and you can make this strong male give a very cute little squeal when you rub his prostate. Definitively something to remember for later - though for now, you want to get fucked yourself.";
		say "     Pulling your lips off his nice and wet shaft with a pop, you pant that it's time for him to fuck you, quickly dropping your gear and clothes to the ground before bending over for Richard. Wiggling your furred butt invitingly is all it takes for the young man to step up to you and put the tip of his shaft against your hole. With a lustful grunt, he thrusts right in, plunging his manhood deep into you. 'Man, that feels as good as any pussy I ever fucked - maybe better!' he pants as he wraps his arms around your chest from behind. Being fucked by this very eager young man, you delight in flexing your inner muscles and listening to the moaned and gasped reactions you get as you do. With it this being his first time, with a [if cunts of player > 0]herm[otherwise]man[end if] that is, it's no big wonder that Richard soon gets closer and closer to orgasming. His pants and moans rise in volume and frequency until he finally gives a breathless grunt of 'I'm coming!' and pounds his cock into your hole one last time as it starts blasting spurt after spurt of cum.[mimpregchance]";
		say "     [WaitLineBreak]";
		say "     You can feel his manhood twitch and pulse with more and more of his seed being deposited into you, leaving you with a pretty nice and full sensation. Holding on to you and leaning his head against your back, Richard gets out 'That was *pant* amazing!' You pull off his still hard cock with a wet slurp, then turn around and give him a deep kiss. After a bit more pretty nice making out with the student, you leave to pull his pants back up, unobtrusively checking for the other satyrs in the meantime. Looks like they made it into the building alright. With a smile, you playfully grope Richard's butt one last time, then bid him farewell and watch as he walks back to his post. Maybe you should return here sometime later and see what you've just helped do...";
		now SatyrFratPartyStage is 6;

Satyr Frat ends here.