Version 1 of Serafino by Rikaeus begins here.
[Version 1 - Introduction of Serafino + His Spa + 1 Massage Scene + 1 Sex Scene]

[   Loyalty of Serafino                                    ]
[   0: Hasn't visited the spa and met him                  ]
[   1: Has met him and visited the spa                     ]

Section 1 - First meeting

after going to Phoenix Rebirth Spa while Loyalty of Serafino is 0:
	say "     Pushing the double doors open to the so-called spa instantly in your face is a vermillion feathered being smiling happily at you, clearly excited for you being here. 'Oh! You've definitely never been here, I memorize every face I've seen.' A clearly male voice speaks to you. Getting a closer look at the person in front of you, it's very obvious that they're a bird, but what kind they are you have no clue, possibly a phoenix by the name of the spa? Nevertheless you nod at him, saying that you wanted to check out the place, not having noticed it before, those words causing him to practically preen right before your very eyes.";
	say "     Spinning and gesturing to the open lobby of the spa with his hands the bird speaks out loud to you. 'Well then, I welcome you to the Phoenix Rebirth Spa and I am its owner, Serafino one of the Four Lords of Atlantis,' he says with a bow. Giving a curious look at the extravagant gesture, you look around at the area. It's a simple waiting room with chairs sitting at either side and tables with various magazines sitting on top of them. At the back end of the lobby is a counter that you assume Serafino sits at to take appointments. Behind it are a couple doors that you have no clue as to where they lead to. Overall, it's a rather simple place, but the owner has a personality that stands out.";
	WaitLineBreak;
	say "     'Now, if you wish to get a massage... or have some fun, just talk to me my friend, I'd be glad to help you.' Serafino says with a wink. Getting the idea that he means something more intimate than simple hanging out when he talks about fun, you'll talk to him if you're curious. Though, by how he is, you wonder if his massages are also like that as well. Anyways, you tell the bird that you'll be happy to take him up on his offer when you're interested. That appears to make him smile and nod before he turns around and makes his way to his counter where he sits down and starts sorting through some papers.";
	now Loyalty of Serafino is 1;

Section 2 - Room

Table of GameRoomIDs (continued)
Object	Name
Phoenix Rebirth Spa Lobby	"Phoenix Rebirth Spa Lobby"

Phoenix Rebirth Spa Lobby is a room.
Phoenix Rebirth Spa Lobby is northeast of Atlantis City Market.
The description of Phoenix Rebirth Spa Lobby is "[PhoenixRebirthLobby]".
earea of Phoenix Rebirth Spa Lobby is "Atlantis".

to say PhoenixRebirthLobby:
	say "     When you look around the lobby of the spa you don't exactly see anything extravagant. It's a rather simple room, with dark red walls and dark blue carpet. Lining both the left and right walls are waiting room-esque chairs that sit in from of coffee tables. On top of the coffee tables are different magazines that are more than likely there for people to read while waiting. At the end of the room is a counter with papers and different knick-knacks and Serafino sitting in a chair writing on the documents. Behind the phoenix is a set of four doors that you have no clue as to where they lead.";

Section 3 - Npc

Table of GameCharacterIDs (continued)
object	name
Serafino	"Serafino"

Serafino is a man.
[physical details as of game start]
Humanity of Serafino is 80. [is thousands of years old]
ScaleValue of Serafino is 3. [human size]
Cock Count of Serafino is 1. [has a cock]
Cock Length of Serafino is 8. [has an 8 inch cock]
Ball Size of Serafino is 3. [size of balls]
Ball Count of Serafino is 2. [has a pair of balls]
Cunt Count of Serafino is 0. [no vagina]
Cunt Length of Serafino is 0. [Doesnt have a vagina to get stretched]
Cunt Tightness of Serafino is 0. [Doesnt have a vagina to get stretched]
Nipple Count of Serafino is 2. [Has two normal nipples]
Breast Size of Serafino is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
PlayerMet of Serafino is false.
PlayerRomanced of Serafino is false.
PlayerFriended of Serafino is false.
PlayerControlled of Serafino is false.
PlayerFucked of Serafino is false.
OralVirgin of Serafino is false.
Virgin of Serafino is false.
AnalVirgin of Serafino is false.
PenileVirgin of Serafino is false.
SexuallyExperienced of Serafino is true.
The description of Serafino is "[SerafinoDesc]".
The conversation of Serafino is { "<This is nothing but a placeholder!>" }.
The scent of Serafino is "     The phoenix gives off a smell that reminds you of a rough mixture of flames, oils and ashes.".
Serafino is in White Tiger Alchemy Shop.

to say SerafinoDesc:
	say "     Looking over at the phoenix the first thing you notice are his vermillion colored feathers which stand out brightly alongside his blue eyes in the spa lobby. Next to that is his outfit, which is rather... mundane for a noble. Serafino is wearing a black tank top that doesn't seem to exactly fit him, as it quite tightly hug his figure. Paired with his shirt is a set of form-fitting cargo pants revealing his legs and ass shape to the world, as if he doesn't care that everyone sees his figure. All you're getting from looking at him, is that you are pretty sure he's an exhibitionist. Though the phoenix does seem to notice you staring and winks in your direction";

instead of conversing the Serafino:
	say "     Making your way up to where Serafino is writing on papers, you cough, getting his attention. 'Oh? Do you want something my friend?' He asks with a curious tone.";
	say "[SerafinoTalkMenu]";

to say SerafinoTalkMenu:
	LineBreak;
	say "What do you want to talk with Serafino about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Four Lords";
	now sortorder entry is 1;
	now description entry is "Learn about him and the other nobles";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Back Massage";
	now sortorder entry is 2;
	now description entry is "Ask for a massage";
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
				if nam is:
				-- "Four Lords":
					say "[SerafinoTalk1]";
				-- "Back Massage":
					say "[SerafinoMassage1]";
				WaitLineBreak;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the white tiger who just scoffs at you before getting back to work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SerafinoTalk1:
	say "     'Me and the others?' He asks with a tilt of his head. You nod, curious as to his opinion of them. 'Aaah, So, I don't know if you're aware but us Four Lords are the nobles of Atlantis, basically we're advisors to King Poseidon.' Serafino says. You nod at him, understanding what he says. 'Now, as for my opinions about everyone, well that's a loaded question,' he says with a chuckle. You laugh as well, guessing that they're probably all friends but still each have different opinions about each other. 'But I guess out of all of all of them I get along with the most with Astor,' the phoenix says with a shrug.";
	say "     He's an azure dragon and pretty nice and quite the amazing cook. As for why I get along with him the best, it has to do with the fact that out of all of them he doesn't have a stick up his ass or acts like a kung fu sensei.' Serafino says with a roll of his eyes. Oh, you sense some tension there, you have to hear this. 'Well, the stick up his ass is Sheng, who's a white tiger. Now don't get me wrong, he's an amazing friend! But, he's the most... [']noble['] acting of us which can grate on my nerves sometimes, ya know?' He asks. You nod, saying that it does make sense that it can aggravate some people.";
	WaitLineBreak;
	say "     'But then there's Kuo, a black tortoise, who's always calm and collected, acting like one of those asian kung fu senseis back on television. Granted, he does run a dojo, but he never lets loose or jokes around, it kinda unnerves me sometimes.' Serafino says with a shrug. You kinda are getting the idea that the phoenix is a free spirit and somebody like that would probably turn him off personality wise. 'But I do love them all as my friends despite that some of them irk me, as I have been with them for millenia,' he says with a chuckle. Giving him a shocked look at that last bit he waves that off. 'That's a story for another day my friend, after all that'll take a fair amount of time to discuss.' Serafino says before returning to work.'";

Section 4 - Sex

instead of fucking Serafino:
	if (lastfuck of Serafino - turns < 3): [You sexed the phoenix in the last 9 hours]
		say "     As soon as you suggest sex, the phoenix chuckles. 'I know I'm randy but I do need some recovery time, come back in a bit and then we'll see,' he says, waving you off before returning to his work.";
	else:
		say "     Walking up to the phoenix you give him a sultry wink which causes him to raise a brow and then hum before speaking. 'What to do with you, what to do?' He thinks out loud.";
		say "[SerafinoSexMenu]";

to say SerafinoSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Under Counter Blowjob";
	now sortorder entry is 1;
	now description entry is "Blow him under the counter";
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
				if (nam is "Under Counter Blowjob"):
					say "[SerafinoSex1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head and say you actually don't have anything in mind, which just causes the bird to chuckle and return to his work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SerafinoSex1:
	say "     Serafino appears to get an idea right away, gesturing for you to come behind the counter. Curious, you do as he asks, and he promptly scoots his chair back. 'How about you take care of me under here?' He asks with a wink, causing you to get an embarrassed look. You ask him about what about any customers coming in? 'Well, then just be sure not to make any noise,' the phoenix says with a chuckle. Sighing and shrugging your shoulders, you get down and crawl under the counter before turning so that you're face to face with the bird's crotch. 'Perfect! Now for us to have some fun!' Serafino said with a smile.";
	say "     Reaching out to the phoenix's pants you unbutton them and reveal that he goes commando as his cock flops out of the fabric. With his hand, he pulls you towards it, causing you to inhale the musky scent that's coming from his crotch. Slipping your tongue out, causing you to wipe away the sweat on his dick. Trailing upwards, you end up reaching the head of his length. Deciding not to be idle with your hands, you move them up to free his balls, taking them into your palms and rolling them around. Serafino lets out a muffled groan thanks to you ministrations, clearly enjoying what you're doing.";
	WaitLineBreak;
	say "     Deciding to take it a step further, you take him into your mouth feeling a spurt of pre-cum come out as you do so. Going slowly down on him, you notice that it doesn't take long for Serafino to regain his composure, a glance upwards allowing you to see he's resumed work. However, a sense of thrill hits you when you hear somebody come in and the phoenix slams you down on his length, making you hold back a gag so as not to be heard. When the person reaches the counter you hear them asking about getting a massage, so your sexual partner appears to go into business mode. Thankfully Serafino doesn't hold you down forever, only for probably less than half a minute. So thankfully you get some time to breath quietly.";
	say "     Going back down on his cock, you swirl your tongue around it as carefully as you can. The added carefulness seems to cause the phoenix's lower hips to shudder and make the customer ask if he's alright. 'Nah, I'm fine, I'm currently busy right now but if you come back later I'll be free.' Serafino said to them before you hear them walk out the door. Once it closes you look up and see him smirking at you before he speaks. 'Well, you did a good job keeping quiet so nobody heard you, how about we take it up a notch?' he asks. You give him a look that basically says that you're challenging him.";
	WaitLineBreak;
	say "     Taking that challenge, he grabs ahold of your head and bucks his hips up into you, causing his cock to go all the way into your throat. You manage to once again resist the urge to gag and are able to deepthroat him. Once he's balls deep you inhale, taking in his musky scent once more. After that Serafino begins to roughly fuck your face, causing sloshing and slurping sounds to come out of your mouth. You're rather glad that nobody's in here at the moment or your place would definitely be revealed. Though now that you think about it, you've been at this for quite a while, so the phoenix should be close by now.";
	say "     A few minutes after you think that, the feathered balls in your hand tighten up and Serafino lets out a grunt as he pulls you down all the way so that his length is all the way in your throat. Seconds later you feel warm ropes of cum shoot down your throat, coating it nice and good, filling your stomach. Looking up as it happens you can see that the phoenix has a blissed-out face, enjoying his orgasm. He rides out his climax, relaxing his grip on your head. When you pull back a trail of semen trails from the tip of his cock to your mouth before disconnecting. 'Heh, you look nice like that,' he says with a chuckle. After that he scoots back and allows you to get up. 'Well, if you want to have some more fun, then just talk to me again!' He says with a smile before getting back to work, leaving you alone.";
	if PlayerFucked of Serafino is false:
		now PlayerFucked of Serafino is true;
	now lastfuck of Serafino is turns;

to say SerafinoMassage1:
	say "     You tell the phoenix that you wish to schedule a back massage, which causes him to perk up happily. 'Oh? That's perfect! Well I'm actually free right now, so if you can pay the price I can get you in right now,' Serafino says with a smile. Nodding, you ask him what the price is for it? 'Well, for the back massage, it's two blue gel,' he explains. You ask why specifically that kind of item. 'I've found that it's good for the back and can help relieve pain in the muscles back there. Of course you don't have to worry about any changes to your body due to it, as I use my magic to neutralize the nanites, so do you have any?' Serafino asks.";
	if carried of blue gel > 1:
		say "     [bold type]Aware that you are carrying enough jars of blue gel, do you want to give it to him?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Yeah!";
		say "     [link]N[as]n[end link] - Nah.";
		if Player consents:
			say "     Passing the jars over to the phoenix he happily accepts them before standing up. 'Alrighty then! Come on then!' He says with a cheerful smile, leading you through the door directly behind his counter. It leads into a hallways that leads into a room with a full body length table. Once you're in here you remove anything that would get in the way of the massage and wait for Serafino who chuckles. 'Oh, you don't have to wait, get on the table my friend,' he says with a smile, gesturing to the area. You nod and climb on top, laying chest down and exposing your back to him so that he can take care of you.";
			say "     While you're on your stomach you hear the phoenix moving some jars around, clearly opening a few. 'I think you'll love this massage,' he says with a chuckle. Seconds later you feel a cool sensation on your back before pressure is applied to a specific section. A pleasurable sensation shoots through you as a knot is undone, causing you to moan out loud. The hands on you move to another section and push again, causing more good feelings to reverberate through your body. As Serafino continuously undoes knots in your back you can't help but think this is definitely something you needed.";
			WaitLineBreak;
			say "     However, you soon feel something heavy, thick, and long between your ass cheeks, unsure as to what it is. It slides back and forth, causing a groan to slip from your mouth with the moans from the massages. It isn't until you feel something blunt at your hole that you realize it's more than likely your phoenix masseuse's cock. He gives a tiny little push and the tip of his cock pops into you, making your pleasurable sounds end up being much louder. Serafino slowly inches himself into you, his girth widening your insides. Despite all of this, he still keeps up his efforts at massaging you, moving onto your shoulders, working on a difficult knot.";
			say "     Your masseuse then begins to pick up the pace, his feathered balls starting to slap heavily against your cheeks. You just close your eyes and let yourself fall into the bliss of the massage and the sensation of his cock rubbing against your insides, enjoying it all. You're loving it to the point that you're moving your ass back to meet his thrusts. With your added help you manage to assist Serafino's cock in finding your prostate, making the already massive amounts of pleasure you're feeling grow much larger. The phoenix above you chuckles at your slowly unraveling self.";
			WaitLineBreak;
			say "     It's soon clear though that your masseuse is approaching his climax as his cock seems to be slowly swelling in his hole. When it finally reaches what appears to be maximum girth, Serafino slams into you one last time before warmth fills you, signaling that the phoenix has shot his load. [if Player is neuter]The sensation causes your pleasure to skyrocket, the nerves all over your body lighting up and flaring. Normally this would cause fluid to come out but since you don't have any it just causes the good feelings to practically triple[else if Player is herm]The sensation causes your pleasure to skyrocket and your cock to shoot its load, the cum not having anywhere to really go and end up smearing itself against your belly. Your pussy is just the same, ending up leaking a lot of femcum that just ends up going on your legs[else if Player is male]The sensation causes your pleasure to skyrocket and your cock to shoot its load, the cum not really having anywhere to go and it ends up smearing itself against your stomach, making quite a mess[else if Player is female]The sensation causes your pleasure to skyrocket and your pussy to spasm before starting to leak copious amounts of femcum. However, it doesn't have anywhere to go but your legs so the fluids just smear themselves there[end if]. Once the both of you come down from your sexual high, you feel your friend pull out and move away for a few seconds. When he comes back a towel is placed on you and you're rubbed down.";
			say "     'Can't leave you dirty after all, turn over if you will,' he asks out loud, his request you happily comply with. After you end up on your back he continues to rub the towel all over you, though he focuses on your ass, making sure to clean it of his cum. Once you're nice and clean, Serafino holds out a hand to help you up, which you gladly take. When you are standing up, the phoenix leads you back through the hallway and into the lobby. 'Remember, come back when you want another massage!' He says happily, clearly having enjoyed the event just as much. You tell him you will, letting him return to his work.";
			if PlayerFucked of Serafino is false:
				now PlayerFucked of Serafino is true;
			now lastfuck of Serafino is turns;
			increase humanity of Player by 20;
		else:
			say "     You shake your head, telling him that you've decided against the massage today even though you have the gel. The phoenix chuckles at you and waves it off. 'Don't worry! Just come back when you want one,' he says, his voice telling you that it's perfectly fine. After he finishes speaking he returns to work and you alone in the center of the lobby.";
	else:
		say "     You apologize to the phoenix, telling him that you don't have any blue gel at the moment. This causes Serafino to chuckle and wave it off. 'Don't worry! Just come back when you have enough to pay and I'll give you an appointment,' he says his voice assuring you that he's telling the truth. After he finishes, he returns to work and you're alone in the center of the lobby.";

Serafino ends here.
