Version 2 of Equinoid Camp by Song begins here.
[ Version 1.2 - Player initiated pet sex - Stripes                              ]
[ Version 2.0 - Equinoid Camp expansion and more interactions - Song            ]

"Adds a camp for the Black Equinoids and a few NPCs to interact with."

Section 1 - Contact

to say equinoidcampinvite:
	say "     As you prepare to leave, the equinoid moans for you to wait. 'Stop, mighty hunter. Perhaps you are worthy to join us after all. A few of the others have spoken of the defeats you have given them. We are a herd of powerful warriors and the herd could use others like you. I'm sure you would find our companionship most enjoyable,' she adds, running her hands over her body sexily.";
	say "     [bold type]Shall you take her up on her offer and meet with her herd?[roman type]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Go along with the equinoid.";
	say "     ([link]N[as]n[end link]) - Decline.";
	if player consents:
		LineBreak;
		say "     Deciding this might at least be worth looking into, you help the fallen equinoid to her feet. You order her to lead the way, telling her that you'll at least go to meet with them. She smiles and nods, confident in her tribe's greatness to convince you. She takes you deeper into the park along a path you'd not noticed before. In time, you reach a barricade of wooden stakes with a stern looking horse herm guarding the gate.";
		WaitLineBreak;
		say "     'Halt, Amaryllis! Who is this outsider you bring to the herd? You were warned, Amaryllis. No more strays.' The large equine plants the base of her spear firmly in the ground and glares at the equinoid with you.";
		say "     Amaryllis snarls indignantly. 'This is no stray, Bryony. This is the warrior who has been defeating our patrols. [SubjectProCap of player] is interested in joining the herd,' she says, running a hand almost possessively over you while glaring at the larger herm.";
		say "     Bryony just snorts in response and reiterates that only members of the herd may enter the camp. As the two equinoids start to argue, it draws the attention of others. When one strides up wearing an ornate headdress made from carved wood and colorful wire, the others grow silent. This one, clearly someone in authority, looks you over.";
		WaitLineBreak;
		say "     'So, Amaryllis, you have found another? Your eagerness to grow the pride is commendable, but is this one truly worthy? Many of the herd are not happy to see [ObjPro of player] here after entering our territory and fighting with your herd sisters.'";
		say "     Glancing around, you do see that the crowd has grown and not all of them are looking at you with the usual sexual interest you've come to expect from the infected, but instead with a sterner look. Perhaps this wasn't such a good idea, but you can't really back down now either, at least not to their faces. You decide the best course of action is to be strong, as they seem to respect that. You [if player is not defaultnamed]introduce yourself as [name of player], then [end if]tell their leader that you've seen their strength and that you've proven your own to them. You add that Amaryllis has spoken of the herd and has convinced you that you would be stronger together.";
		say "     Their leader scrutinizes you with a keen eye while you talk. 'Perhaps you might convince us of your good intentions towards the herd. We are in a dispute with the Painted Wolves. Confront and defeat them on our behalf and perhaps you might be found worthy.' There is considerable whispering among the equines and Amaryllis blanches a little.";
		say "     Seeing a way out, you agree to her terms. You are ordered to defeat at least three of them before you'll be welcome again at their gates. While you're uncertain how they could know if you are actually successful, there's no need for you to come back if you don't want to, either.";
		now equinoidstatus is 6;
	else:
		LineBreak;
		say "     You shrug and turn away, leaving her behind as she alternates between moaning for you to come and threatening you with reprisals for rejecting the herd. You have little worry though, having beaten several of these [']great warriors['] already.";
		now equinoidstatus is 5;


Section 2 - Initiation
[Camp details defined in Section 3]

instead of navigating Equinoid Camp while equinoidstatus is 10:
	[puts Black Equinoid as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Black Equinoid":
			now monster is y;
			break;
	say "     Following the path you were shown, you head towards the equinoid camp, but are stopped at the outer barricade. Bryony is there again and she glares at you angrily and readies her spear. You stand your ground and tell her that you want to speak with their leader, as you've passed her test. Others have begun to approach, drawn by the noise.";
	say "     Amaryllis is among them and she runs into your arms, clearly elated at your success, but many of the others still seem skeptical of you. Before she and Amaryllis have a chance to start arguing again, their leader appears and separates the pair. She then turns to you.";
	if player is perminfected:
		say "     Their leader looks you over for a while, but then frowns and motions for several of the warriors. 'This one is tainted and unable to become one of us. To welcome one in such a state into our midst would lead to our destruction. The traveler may take this as reward for their help against the wolves, but that is all.' A basket of fruit is tossed at your feet while the warriors step forward, ushering you to leave after claiming your reward.";
		increase carried of food by 2;
		now equinoidstatus is 100;
		now Equinoid Camp is unknown;
		move player to Park Entrance;
	else:
		say "     'I see that you have returned. I was uncertain if you would, even when I'd heard you'd dealt with several of the wolves. I have spoken with the other leaders, and while several are uncertain of your right to join us,' she says, looking at Bryony, 'they have accepted to welcome you in peace while within our walls if you join our great tribe. The enemy of our enemy has the right to prove themselves our friend.'";
		say "     Speaking softer to just you now, she adds, 'They are a good people though, and they will accept you in time if you accept them. I expect you will still have trouble with some outside the camp, though. Show them your strength and they will respect you in time.'";
		say "     She raises her voice again, so all assembled may hear. 'You will need to undergo the purification ritual to truly become one of us. To accept to join us is to accept this.'";
		say "     [bold type]How do you respond to the tribe leader's offer?[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Accept. You could use some respite from the chaos of the city, and the equinoids might prove useful allies.";
		say "     ([link]N[as]n[end link]) - Decline. You have your suspicions about this ritual, and the equinoids may prove hostile if you sever your allegiance later.";
		if player consents:
			LineBreak;
			say "     Speaking aloud for the others to hear, you tell her that you are ready to join the tribe and become one of them. The reaction among the group is mixed, but it seems most are willing to accept this. Some though, as you were warned, seem displeased but hold their tongues. Amaryllis, for her part, is elated and grabs your hand, leading you through the gate as Bryony grudgingly opens it. Amaryllis sticks her tongue out while the other black equinoid glares at her.";
			say "     You are followed by several others through the trees and into the camp of the equinoids. It's a rather primitive community, with wooden huts and barns that make little use of scavenged materials. They clearly expect you to seem impressed by it, so you do your best to appear that way. Amaryllis leads you to one of the larger halls and you enter with the others. There, a scented bath is prepared as well as several of the equinoids.";
			if player is male:
				say "     You bathe in the warm waters with Amaryllis, the rich scents filling your head and arousing you. The equinoids around the bath run their hands over your [bodydesc of player] body, groping you as they wash you while Amaryllis kisses you and runs her hands down between your legs. As she strokes your cock to erection, several more equinoids enter, strong warriors these. They stand at the edge of the bath and are stroked by the bath servants, their cocks all pointed at you.";
				say "     But you are given little opportunity to notice that, as Amaryllis is now moving atop your erect shaft and sinking down onto it with a soft nicker of pleasure. She's straddled your hips facing you and begins riding your [cock of player] cock while running her hands over your chest. As the first splatters of equinoid cum start spraying onto you both, you're already fucking wildly and soon you're cumming hard with a loud neigh of delight. You can feel the equinoid seed soaking into you even as you seek to breed the lovely one riding you.";
				say "     Bathed, anointed and having consummated with the equinoids, you rise from the musky waters as one of them. You feel much closer to this strong people. Exiting the large hall, you go out into the compound with a greater appreciation for the simple life they live with nature. While a few of them move away, many greet you as one of them now that you've been properly welcomed into the herd.";
			else if player is female:
				say "     You bathe in the warm waters with Amaryllis, the rich scents filling your head and arousing you. The equinoids around the bath run their hands over your [bodydesc of player] body, groping you as they wash you while Amaryllis kisses you and runs her hands down between your legs. As she fingers your pussy, you can see her equine cock at the ready. At this time, several more equinoids enter, strong warriors these. They stand at the edge of the bath and are stroked by the bath servants, their cocks all pointed at you.";
				say "     But you are given little opportunity to notice that, as Amaryllis is now pulling you into her lap and atop her erect shaft and sinking it into you with a soft nicker of pleasure. Straddling her hips, you begin riding her throbbing cock while she runs her hands over your chest. As the first splatters of equinoid cum start spraying onto you both, you're already fucking wildly and soon you're cumming hard with a loud neigh of delight as your lover pumps her hot seed into you. You can feel the equinoid seed soaking into you even as you're being bred by the lovely one you're riding.[impregchance]";
				say "     Bathed, anointed and having consummated with the equinoids, you rise from the musky waters as one of them. You feel much closer to this strong people. Exiting the large hall, you go out into the compound with a greater appreciation for the simple life they live with nature. While a few of them move away, many greet you as one of them now that you've been properly welcomed into the herd.";
			else:
				say "     You bathe in the warm waters with Amaryllis, the rich scents filling your head and arousing you. The equinoids around the bath run their hands over your [bodydesc of player] body, groping you as they wash you while Amaryllis kisses you and runs her hands around your waist. As she fingers your asshole, you can see her equine cock at the ready. At this time, several more equinoids enter, strong warriors these. They stand at the edge of the bath and are stroked by the bath servants, their cocks all pointed at you.";
				say "     But you are given little opportunity to notice that, as Amaryllis is now pulling you into her lap and atop her erect shaft and sinking it into you with a soft nicker of pleasure. Straddling her hips, you begin riding her throbbing cock while she runs her hands over your chest. As the first splatters of equinoid cum start spraying onto you both, you're already fucking wildly and soon she's cumming hard with a loud neigh of delight, pumping her hot seed into you. You can feel the equinoid seed soaking into you [if player is mpreg_ok]even as you're being bred by the lovely one you're riding[else]and give a hazy sigh, your sexless body left to stew in pent-up pleasure[end if].[mimpregchance]";
				say "     Bathed, anointed and having consummated with the equinoids, you rise from the musky waters as one of them. You feel much closer to this strong people. Exiting the large hall, you go out into the compound with a greater appreciation for the simple life they live with nature. While a few of them move away, many greet you as one of them now that you've been properly welcomed into the herd.";
			SanLoss 20;
			now tailname of player is "Black Equinoid";
			now facename of player is "Black Equinoid";
			now skinname of player is "Black Equinoid";
			now bodyname of player is "Black Equinoid";
			now cockname of player is "Black Equinoid";
			attributeinfect;
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			WaitLineBreak;
			if libido of player < 30, now libido of player is 30;
			if humanity of player < 21:
				say "     Overwhelmed by your transition, thoughts of your old life fade away. You choose to accept living in the peaceful village with the equinoids. In time, you and the others seem to forget that you were ever unwelcome, and you live a simple life with the strong and beautiful equinoids.";
				wait for any key;
				now equinoidstatus is 11;
				end the story saying "You join the equinoid herd as another of their people.";
				now battleground is "void";
				wait for any key;
				follow the turnpass rule;
				stop the action;
			else:
				now equinoidstatus is 12;
				say "     You are brought in front of the tribal leaders, with the one you've met before sitting with a youthful looking equinoid beside her. '[if player is defaultnamed]Newcomer[else][name of player][end if], we welcome you into the tribe and the herd. You are now one with us and welcome among us. As you have voiced intentions of continuing to travel and explore the fallen city for the time being, it has been decided that this cannot be permitted alone. Those who have been recently welcomed are still weak and vulnerable to the outside influences of the creatures of the city.'";
				say "     'To protect and guide our newest member, we shall send one of our young warriors with you. Liliana is to accompany you, to protect you and to guide you back to us should you stray from the herd.' The equinoid rises stiffly and walks to your side[if player is not lonely], forcing your [companion of player] to step aside for her[end if]. Amaryllis gives her a bit of a jealous glance, but Liliana is either oblivious to it or ignores it entirely. 'We expect you to keep her with you. This is to be a journey for her as well as protection for you. We will not be pleased if you do not fulfill your duties in this regard.' You glance over at your new equinoid companion and nod to the tribal leader before heading into the compound to look around.";
				now equinoid warrior is tamed;
				now the companion of the player is equinoid warrior;
				say "     (The equinoid warrior is now [']tamed['] and has made herself your active pet! Should you dismiss her from your side, you can reactivate her as your pet by typing [bold type]pet equinoid warrior[roman type] and initiate sex with her while active by typing [bold type][link]fuck equinoid warrior[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. You may still remove her as your active pet using [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type], though the herd may not be pleased about that.)[line break]";
				increase score by 25;
				wait for any key;
				move player to Equinoid Camp;
		else:
			LineBreak;
			say "     Reaction to your rejection of the offer is mixed. Amaryllis is clearly disappointed, but Bryony smiles smugly. Many of the tribe seem offended while others are more ambivalent to this. Their leader nods and motions for one of the herd to approach with a basket. 'We accept your decision. We are an honorable people and will provide you this in thanks for your help with the wolves instead,' she says, passing you the small basket of fruit. She drops her voice while talking to you. 'Do not expect that all of the tribe will be pleased with this slight. It would be wise to expect some of the warriors to come seeking to more forcibly add you to the herd as another of their mares instead.'";
			say "     She turns back to those gathered. 'The traveler has assisted us against the wolves and so may leave here in peace.' And with that, and a little grumbling from some, the equinoids disperse, Amaryllis walking away sadly while Bryony watches you go.";
			increase carried of food by 2;
			now equinoidstatus is 100;
			now Equinoid Camp is unknown;
			move player to Park Entrance;


Section 3 - Equinoid Camp

Equinoid Camp is a room. It is fasttravel. It is private. It is sleepsafe.
The earea of Equinoid Camp is "Park".
The description of Equinoid Camp is "[EquinoidCampDesc]".

to say EquinoidCampDesc:
	say "     You stand in a large and sprawling field of long, swaying grass. Spread out among the area are primitive wooden structures that provide enclosed spaces for rest and recreation. Although spartan in construction, these buildings seem more than sturdy enough to withstand the temperate California weather.";
	say "     To the north is the communal recreation and bathing area. To the east are more elaborate tents that are presumably set aside for their tribal leaders. To the south is the gate where you entered, and to the west are a couple barns for storing supplies.";

instead of sniffing Equinoid Camp:
	say "The equinoid camp smells strongly of the horse people living there. The scent of long, lush grass and wild flowers hangs in the air.";

Nakoma's Tent is a room. It is private. It is sleepsafe.
Nakoma's Tent is east of Equinoid Camp.
The description of Nakoma's Tent is "[NakomaTentDesc]".

to say NakomaTentDesc:
	say "     A roomy and lavishly decorated enclosure, Nakoma's tent is arranged in bohemian style, replete with layered textiles and exotic patterns that lend a disarming atmosphere to her abode. The ground is covered in rugs and silky furs. Her queen-sized bed is arranged with many small, colorful pillows and surrounded by an elegant canopy. The thick tarp of her tent blocks out most the [if daytimer is day]sunlight[else]ambient light[end if], leaving only the warm, flickering glow of sconces and tiki torches to illuminate the area.";
	say "     A large wooden table sits in the center of the room with some plans and maps of the city spread across it. These papers are pinned in place with tacks, and areas of interest are circled or otherwise marked. Several of the tribe's most prestigious warriors sit around it, making plans or otherwise discussing strategy under the watchful eye of their leader.";

instead of sniffing Nakoma's Tent:
	say "Nakoma's tent smells of herbs, scented oil, fur and a hint of equine arousal.";

Definition: a person is blequinoidbodied: [Determines if the player is fully black equinoid]
	if bodyname of player is "Black Equinoid" and player is pure, yes;
	no;

Equinoid Camp ends here.
