Version 2 of Sturm by Prometheus begins here.
[ By Prometheus and Lost Directions]
[ Version 2 - Movement Schedule and Companion Function - By Prometheus and Lost Directions]

[   HP of Sturm - relationship variable with the player          ]
[   0: not met                                                   ]
[   1: At the library                                            ]
[   2: Improved relations with Player                            ]


[Notes]
[ Interactions with Urik to boost his muscle mass?]

[Movement Schedule]
an everyturn rule:
	if HP of Sturm > 1 and Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Bunker and Sturm is in Bunker:
				say "     [bold type]Sturm departs upstairs, telling Blanche that he's heading to the Courtyard.[roman type][line break]";
			else if Player is in Courtyard:
				say "     [bold type]You see Sturm approaching, the two of you exchanging a friendly nod with each other in greeting before he, Bernard, and Lumi begin training together.[roman type][line break]";
			move Sturm to Courtyard;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Courtyard:
				say "     [bold type]Sturm bids you goodbye before returning in the library to spend time with his mother again.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Appearing from the courtyard, Sturm raises a hand in greeting before walking over to Blanche and lifting his chess set from beneath the table, the two of them proceeding to set it up while light-heartedly arguing over which one of them gets to be white.[roman type][line break]";
			move Sturm to Grey Abbey Library;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Grey Abbey Library:
				say "     [bold type]Sturm heads out the door, calling over his shoulder that he if you need him that he'll be in the garden.[roman type][line break]";
			else if Player is in Grey Abbey Garden:
				say "     [bold type]Sturm calls out a greeting as he approaches and you see some of the stress leave his shoulders as he inhales the fresh air.[roman type][line break]";
			move Sturm to Grey Abbey Garden;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Grey Abbey Garden:
				say "     [bold type]Sturm waves goodbye, telling you that he is returning to the makeshift den in the computer room.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]As he comes in through the door, Sturm looks immensely pleased to see you and Blanche together in the den.[roman type][line break]";
			move Sturm to Computer Lab;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Computer Lab:
				say "     [bold type]Under Blanche's approving gaze, Sturm gives you a hug before informing you that he is going to the break room to get something to eat.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Sturm gives you a nod as he comes in before wandering over to Bernard to see what food is available.[roman type][line break]";
			move Sturm to Breakroom;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Breakroom:
				say "     [bold type]Wiping his mouth, Sturm tells you that he is going out to the garden.[roman type][line break]";
			else if Player is in Grey Abbey Garden:
				say "     [bold type]Sturm gives a you a smile and a nod when he sees you before going over to sit near his mother.[roman type][line break]";
			move Sturm to Grey Abbey Garden;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Grey Abbey Garden:
				say "     [bold type]Sturm gives you and Blanche a hug before disappearing into the library on his way out into the city on a scavenging trip with Bianca.[roman type][line break]";
			move Sturm to Nowhere;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if a random chance of 4 in 5 succeeds:
				if Player is in Bunker: [Sturm]
					say "     [bold type]Sturm greets you having just returned from a scavenging, before assisting his mother in doing some cleaning.[roman type][line break]";
				if Player is in Grey Abbey Garden: [Bianca]
					say "     [bold type]Bianca runs over and gives you a hug, just having returned from scavenging, before finding a spot to watch Penelope and Lumi spar.[roman type][line break]";
				move Sturm to Bunker;
				move Bianca to Grey Abbey Garden;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Sturm	"Sturm"

Sturm is a man.
ScaleValue of Sturm is 4. [7' 2"]
Body Weight of Sturm is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Sturm is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Sturm is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Sturm is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Sturm is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Sturm is 10. [length in inches]
Breast Size of Sturm is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Sturm is 2. [count of nipples]
Asshole Depth of Sturm is 10. [inches deep for anal fucking]
Asshole Tightness of Sturm is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Sturm is 1. [number of cocks]
Cock Girth of Sturm is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Sturm is 10. [10 Inches]
Ball Count of Sturm is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Sturm is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Sturm is 0. [number of cunts]
Cunt Depth of Sturm is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Sturm is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Sturm is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Sturm is false.
PlayerRomanced of Sturm is false.
PlayerFriended of Sturm is false.
PlayerControlled of Sturm is false.
PlayerFucked of Sturm is false.
OralVirgin of Sturm is true.
Virgin of Sturm is true.
AnalVirgin of Sturm is true.
PenileVirgin of Sturm is true.
SexuallyExperienced of Sturm is true.
TwistedCapacity of Sturm is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Sturm is true. [steriles can't knock people up]
MainInfection of Sturm is "".
Description of Sturm is "[SturmDesc]".
Conversation of Sturm is { "Woof grrr" }.
The scent of Sturm is "     Sturm, smells of the city. Sweat, sexual fluid, and dust mingle with his natural wolfy scent."

to say SturmDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Sturm] <- DEBUG[line break]";
	if HP of Sturm is 0:
		say "     Sturm is an anthropomorphic male wolf with thick white fur covering his large, toned body. As the eldest male child of Blanche he is frequently on guard outside of her office den, scrutinizing all that approach and ready to see off any threats, something that he seems quite capable of given that his family is still here. He doesn't bother to wear clothes leaving his body bare for all to see, including his plump sheath and heavy balls between his legs. You briefly wonder to yourself how many creatures have felt his weight atop them before shaking your head to dismiss the thought. There's very little way of knowing anyway.";
		say "     Perhaps feeling your eyes running over him, Sturm looks at you and gives a disdainful snort before turning back to watch for threats. Like all of his siblings, he is devoted to his mother and her safety above all else, but unlike the others, he looks at you disapprovingly at times and you wonder what you have done to cause such an emotion to be directed at you. Most of the times that he catches himself doing it, he makes the effort to appear a little more friendly, but you are sure that the issue continues to fester below the surface, whatever it may be.";
	else if HP of Sturm is 1:
		say "     Sturm is an anthropomorphic male wolf with thick white fur covering his large, toned body. As the eldest male child of Blanche he is frequently on guard around the library, scrutinizing all that approach and ready to see off any threats, something that he seems quite capable of given that he protected his family when they were at the office den. He doesn't bother to wear clothes leaving his body bare for all to see, including his plump sheath and heavy balls between his legs. You briefly wonder to yourself how many creatures have felt his weight atop them before shaking your head to dismiss the thought. There's very little way of knowing anyway.";
		say "     Perhaps feeling your eyes running over him, Sturm looks at you and gives an amused snort before turning back to what he was doing. Like all of his siblings, he is devoted to his mother and her safety above all else, though he does seem to look at Bianca nearly as protectively. While he seemed to be semi-hostile towards you, he has improved since he and his family moved here, though you are unsure whether this is only at his mother's instruction or if he has decided to let go of whatever grudge he had with you. Either way, it is a relief to not have him glowering at you.";

[Character Notes - Sturm:

Species: Canine (Wolf)
Gender: Male
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Harem
- Friendly Competition with Siblings
-
]

Section 2 - Talking

instead of conversing the Sturm:
	if "First Talk" is not listed in Traits of Sturm:
		say "     'Thank you for letting us live here. I realize that I was surly in the past, but I'm glad that my poor attitude didn't have consequences for the rest of my family,' Sturm says. You cautiously ask whether Blanche had some influence on this change of heart. He clenches his jaw before relaxing again with a sigh. 'She may have had a few words about it, yes, but I am genuinely grateful. I seem to have been wrong about you. Mom may be a little too trusting at times, but she is also a lot better than most at seeing the good in people. I guess she was right in your case.' Pleased with your son's progress you give him a hug, enjoying the warmth that radiates from his fluffy body. 'You've still got some way to go before you hug like Mom, but you might yet get there,' Sturm teases you as you part. Rolling your eyes, you tell him that you'll talk again later, letting him get back to whatever it was that he was doing before you interrupted him.";
		TraitGain "First Talk" for Sturm;
	else:
		say "[SturmTalkMenu]";

to say SturmTalkMenu:
	say "     What do you wish to talk about with the protective white wolf?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Small Talk";
	now sortorder entry is 1;
	now description entry is "Have an idle conversation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 2;
	now description entry is "Boop Sturm on the nose";
	[]
	if Charisma of Blanche > 3 and HP of Sturm > 1 and White Wolf One is not listed in companionList of Player:
		choose a blank row in table of fucking options;
		now title entry is "Take as Companion";
		now sortorder entry is 3;
		now description entry is "Ask Sturm to join you";
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
				if (nam is "Small Talk"):
					say "[SturmTalk1]";
				if (nam is "Boop"):
					say "[SturmTalk2]";
				if (nam is "Take as Companion"):
					say "[SturmTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Sturm looks about to say something before shaking his head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SturmTalk1: [Small Talk]
		say "     '[one of]Pretty quiet day today. I've only seen a couple of panther-taurs wandering by, but they didn't seem interested in the library fortunately[or]It is a relief not to have to worry about the drakes any more. Even the whelps are bad enough, but the larger ones weren't the sort of things I wanted to encounter on scavenging trips[or]Mom seems to have settled in here well. She seems a lot less worried recently though she managed to hide her fear from my brothers and sisters[or]Hopefully the Painted Wolves won't come searching for us here, though I would imagine that the trip would be dangerous enough for them to think twice about it and that doesn't even take into account the difficulty of overwhelming those of us who live here[at random].'";

to say SturmTalk2: [Boop]
	say "     Aware that he may stop you should he realize what you are doing, you feign scratching the side of your head before lunging forward and quickly booping Sturm on the nose. 'And here I thought that I could trust you,' he grumbles, though the flick of his tail suggests that the gesture wasn't entirely unwanted. 'I'll have to keep a closer eye on you. Booping your own son...' he mutters as he turns away and skulks off, still unable to control his tail's more temperate reaction.";

to say SturmTalk3: [Companion]
	say "     You ask Sturm whether he would be interested in coming with you out into the city. He smiles widely and nods, darting in for a quick hug, his tail wagging wildly. 'Thank you, [BlancheMomDadTitle]. Really. I'd love to.' You privately chuckle at how such an innocent question can transform the usually stern wolf into a puppy.";
	AddCompanionFunction "White Wolf One";

Section 3 - Sex

instead of fucking Sturm:
	say "     'While I appreciate the offer, I don't know you very well yet. Mom may vouch for you, but this seems like the sort of thing that I should build up my levels of trust for.' It would seem that Sturm isn't yet ready for this. (WIP)";

Section 4 - Events

instead of navigating Grey Abbey Library while ((Sturm is booked or Sturm is bunkered) and HP of Sturm is 1 and Charisma of Blanche > 0):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[SturmApology]";

to say SturmApology:
	say "     As you go in through the door, you find yourself suddenly submerged in an avalanche of snow-white fur, spurring the realization that someone is now hugging you. While you try to move yourself enough to get a good look at who is, you hear his heartbeat rise a little as a familiar voice commands, 'Stop struggling and listen, because this is hard for me to say and important that you listen.' Sturm loosens his bear hug which gives enough leeway to look at his expression, usually cold and stern, instead reminding you of Blanche as he continues, 'Considering how you were never around I had honestly thought that there wasn't much difference between you and the infected that wandered the city; only looking for a reliable source of pleasure.' While his grip never wavered, his voice did, whether from remembering the Office Den or thinking of his new life at the Library, you can't tell.";
	say "     Though those words make you silently wonder for a moment if you should have carried Blanche back to the Library despite her protests, Sturm continues speaking. 'I realize now after seeing the Library and your willingness to let others stay here that you are a lot more like Mom than I had thought, so I want to apologize for the way I have acted towards you and hope that with this we can start over by treating each other as family.' Obviously done he looks at you, nervously expectant of your answer. Having heard Sturm's apology and his willingness to accept you, you can't help but smile and return the hug that he has been giving you for a while now. The wordless actions eliciting happy tail wagging from Sturm as he realizes that you aren't holding his hostility against him, though the hug ends up lasting for quite some time before you finally both return to your usual antics.";
	now HP of Sturm is 2;

instead of going to Grey Abbey Library while HP of Sturm > 1 and "Sturm - Chess Set" is listed in Traits of Sturm and Sturm is in Grey Abbey Library and Player is not CoA:
	say "     You spot Sturm and Blanche at their usual table, setting up a game of chess. As your son sees you approach, he waves to you, drawing his mother's attention to your arrival. 'Hello, mon chéri. Have you come to join us? Did you want me to let you play Sturm instead of me?' she asks, standing up to give you a kiss on the cheek. 'Afraid that I'll finally beat you, Mommy?' the male wolf teases. 'Sorry. It would seem that I need to remind our son not to mess with his mother. He used to be such a nice boy...' she mock-laments. 'I play as white, of course. We argued a bit when we first played, but he couldn't say no to Mommy forever.' You realize that you haven't had a proper look at the chess set, other than the wood-and-marble box. Both the black and white pieces are exquisitely carved in the shape of wolves, and you can't help but notice some similarity between the white queen and Blanche, though that may just be your imagination. 'I got it from that strange jackal's shop. Don't ask what it cost. It's rude to discuss such things,' the matriarch explains as she makes the opening move.";
	say "     As they play, it doesn't take you long to see the difference in their strategies. Sturm seems reluctant to lose any of his pieces, forgoing taking his mother's pieces if it would mean that he would lose any in return, even if it would be considered a good trade. Blanche seems to know this and exploits it, quickly putting her son in a disadvantageous position, deftly making her pieces fulfill their potential before they can be taken. By the time she has Sturm in checkmate, she may have lost most of her pieces, but she has three queens. 'I don't feel that I'm good at this,' Sturm mutters dejectedly, though he still begins to set up for another game. 'You don't seem to care who you lose...' 'Before we start again, would you mind if we discussed it?' Blanche asks him, comfortingly stroking the back of his hand. 'Ok, I suppose.' 'You're looking at your pieces the same way that you look at your me, your brothers, your sisters, and, to a lesser extent, your [BlancheMomDadTitle]. I'm certainly very grateful for how protective you are of us, but chess is a game. The purpose is to win, and to have fun, within the rules.'";
	WaitLineBreak;
	say "     'When it comes to real life, I hold no such compunction. To protect those I love, I will bribe, brutalize, and do whatever is necessary to protect those I love, something that I'm sure that you can relate to. You are not pieces on a board for me to exploit. You are my ends and my all. [if hunger of Alexandra is 1]Don't tell Alexandra, but i[else]I[end if]f there is no other way to ensure your safety, I will break whatever rules I deem necessary, consequences to me be damned.' You don't believe that you've seen this side of Blanche before, the wolfess gripping the queen tightly in one hand. Seeing your look of shock, her face softens. 'My children may take after me more than you realize,' she says softly, squeezing your hand affectionately before turning back to her son. 'I notice that you've warmed up to your [BlancheMomDadTitle] recently, and I assume that you now consider them part of the family, correct?' Sturm nods. 'Good. I thought it best if you two found your own way to something more than coexistence, but there were a few times when I thought that I would have to mediate,' Blanche gently scolds him.";
	say "     'But enough serious talk. Do you understand what you need to do to get better at chess?' she asks him. 'Yes, Mommy. Separate reality from the game,' Sturm replies, his tail wagging a little. 'Good boy. Who's my favorite puppy?' Blanche praises him. Curious, you interject and ask why Sturm is her favorite, especially when she has so many children. She blushes a little, opening her mouth to reply before closing it again and looking thoughtful. 'It's just something that she says,' Sturm cuts in. 'Wendis asked her in the past and she said that we each have something about us that makes us her favorite.' 'I don't love any of them less than the others, so it is impossible to have a favorite,' Blanche joins in. 'I just say it to Sturm the most as he needs to hear it most. I don't blame you, and I don't think that he does any more, but he took your absences when he was growing up rather hard and at times needed to be reassured that he mattered. It is probably my biggest failure as a mother for not discussing this with you at the time, and for that I am sorry. To both of you,' she apologizes, grasping each of you by the hand.";
	WaitLineBreak;
	say "     'He's also the only one to have been in a situation where I had to be actively protected, not counting that mess in the park,' Blanche adds, her tone forcibly light. Frowning, you ask whether she would mind elaborating. 'You know how I usually stayed at the den while my children went scavenging?' You nod. 'I persuaded him to let me accompany him and Bianca. Once. We split up to search some houses and I got ambushed by some horrifying creature. It was covered in black chitin and had huge claws and teeth. Have you ever met anything like that in the city? Well, anyway, I screamed and tried to spray it with pepper-spray, but it did nothing other than make it angrier and it leapt at me. I froze. I couldn't think of anything other than that I might die, but Sturm pushed me out of the way and the thing crashed into him instead. I'll spare you the details, but he was quite injured by the time Bianca arrived and we managed to drive it off. I think that he gave as good as he got, but thank goodness for the nanites['] ability to mend... I'm sure that the others would have probably done the same, but he put himself in harm's way for me. I [italic type]know [roman type]how far he will go to protect us.'";
	say "     Blanche looks a little drained from the memory, resting her head against your shoulder when you give her a hug. 'I don't go out on scavenging trips any more. A few times wandering around as a family, but nothing that leaves me by myself in enclosed spaces. I also don't use pepper-spray anymore,' she says, briefly producing a Taser from gods know where. 'Much more effective.' You would imagine so. 'Now, unless you wish to take mine or Sturm's place, would you mind if we were allowed to focus on that instead? Dividing my attention might earn you points with him, especially if he won, but I would then have to find a way to get even,' Blanche teases, changing the subject back to the game at hand. While you are tempted to try your hand at chess against one of them, you decide that you'll leave them in peace for now. 'Maybe next time, [BlancheMomDadTitle],' Sturm says, before focusing on his opening move.";
	TraitGain "Sturm - Intense Chess Match" for Blanche;
	TraitLoss "Sturm - Chess Set" for Sturm;

instead of going down from Grey Abbey Library while Sandra is bunkered and HP of Sturm > 1 and "Sandra - Sexual Interest" is not listed in traits of Sturm and Player is not CoA and a random chance of 1 in 2 succeeds:
	if "Sandra - Horny Bunny" is not listed in Traits of Sturm:
		say "     You enter the bunker to find Sturm and Blanche introducing themselves to Sandra, making up for not greeting her when she arrived. 'Hello, I'm Blanche. What's your name?' the wolfess asks. 'Sandra. You're not going to eat me are you?' the rabbit replies, her eyes wide as she stares up at the wolves. 'I won't, but my son Sturm might,' Blanche teases, momentarily baring her teeth. Sturm rolls his eyes. 'Mom, you're embarrassing yourself. I'm not going to eat anyone,' he groans. 'I don't know. It might be worth it for a stud like you,' Sandra replies. There is a moment of silence while what she said sinks in. 'Wait. Did I say that out loud?' With a loud 'Eep', Sandra dashes away, her cheeks scarlet and the two wolves at a loss for words. Finally, Blanche breaks the silence. 'I'm not sure whether to say that she has a crush on you, or whether she just craves what's between your legs,' she ponders. 'Mom! Inappropriate!' Sturm hisses, his own face likely as red as Sandra's was. 'You're a very handsome young man, so I'm sure that it's the former,' the MILF says in a fruitless attempt at consolation. 'MOM!!!' Chuckling, you leave them to it.";
		TraitGain "Sandra - Horny Bunny" for Blanche;
		TraitGain "Sandra - Horny Bunny" for Sturm;
		TraitGain "Blanche - Nice Wolfess" for Sandra;
		TraitGain "Sturm - Wolf Stud" for Sandra;
	else:
		say "     You find Sturm and Sandra sitting together on one of the beds, the rabbit running her hands over his biceps as they talk. 'You can feel the muscle even through all your fur,' she exclaims, squeezing his arm to emphasize her point. 'That's how muscles work, silly rabbit,' Sturm replies with amusement. The bunny gives him a look. 'Oh. That was a pickup line, was it? Yes. My duties mean that I am physically active most of the time,' the wolf awkwardly says before allowing his eyes to roam over the young woman's body. 'I think that you're attractive too. What was it that you said when we met? You wouldn't mind if I ate you?' Sandra's breath quickens and she fidgets as her gaze remains fixed on the predator looming beside her. 'I... I would be open to that. Not literally being eaten, but you know... pinned down and... ravished,' she gasps, her arousal steadily growing.";
		if HP of Fang is 3: [Alpha Fang via Sandra]
			say "     'But what would your Alpha think? His little rabbit being claimed by another male, another wolf?' Sturm growls, running a finger down Sandra's cheek and making her quiver. 'I-I don't know. He'd probably have to claim me back again. Punish me for letting another male breed me. It would be so... intense,' the";
		else:
			say "     'You want to be completely at my mercy? A little rabbit trapped by a big, bad wolf?' Sturm growls, running a finger down Sandra's cheek and making her quiver. 'Y-yes. Your body pressing me into the ground and your thick shaft stretching me to my limit before you roughly breed me. There's just something so... primal about it,' the";
		say "bunnygirl moans, rubbing her thighs together at the thought of it all. Unfortunately, the moment is interrupted by the sudden appearance of Ernest. 'Sturm, I've finally found you. Bianca's encouraging Claude to be overly sociable again and Mom won't do anything about it. Either get Mom to stop her or do it yourself. Please? Later is fine, just before we have to go out scavenging again,' he asks desperately before returning upstairs again, his focus on his own predicament meaning that he notices neither you nor Sandra. 'What it is to be the oldest,' Sturm tiredly mutters while the bunny looks up at him with frustration, though also a little sympathy. 'I'm sorry Sandra. We'll have to talk another time. I enjoyed it, though hopefully next time we'll have longer to properly get to know each other.' Gently patting the rabbit on the head, Sturm stands up and returns upstairs, nodding to you in passing. Though Sandra is left alone and sexually frustrated, you get the impression that this will only drive her to pursue the white wolf more intently.";
		TraitLoss "Sandra - Horny Bunny" for Sturm;
		TraitLoss "Sturm - Wolf Stud" for Sandra;
		TraitGain "Sandra - Sexual Interest" for Sturm;
		TraitGain "Sturm - Sexual Interest" for Sandra;
	move Player to Bunker;

[Shower Event with Jimmy - see file Prometheus/Jimmy.i7x]
[Blanche (and children?) scavenging in the city. (Urban Forest? Park?)]
[Sturm scavenging in the city (increase a counter?)]


Section 5 - Companion

Table of GameCharacterIDs (continued)
object	name
White Wolf One	"White Wolf One"

White Wolf One is a pet.
NPCObject of White Wolf One is Sturm.
understand "Sturm" as White Wolf One.
IDList of White Wolf One is { "Sturm", "sturm", "White Wolf One", "white wolf one" }.
printed name of White Wolf One is "Sturm".
Description of White Wolf One is "[SturmDesc]".
Weapon Damage of White Wolf One is 15.
The level of White Wolf One is 1.
Dexterity of White Wolf One is 15.
The summondesc of White Wolf One is "[SummonSturm]".
The dismissdesc of White Wolf One is "[DismissSturm]".
The assault of White Wolf One is "[one of]With a growl, Sturm lunges at your opponent, using his momentum to put more force behind his punch.[or]Grabbing your foe by the arm, Sturm attempts to twist it behind their back and make them surrender.[or]Seeing a brief opening, Sturm attempts rams his shoulde rinto their ribs, driving the air from their lungs.[or]Sturm feints a kick before striking them across the jaw with his fist instead![at random]".
the fuckscene of White Wolf One is "WIP".

to say SummonSturm:
	if Sturm is visible: [summoning while standing next to him]
		say "     Walking over to Sturm, you ask whether he would be interested in coming with you out into the city. He smiles widely and nods, darting in for a quick hug, his tail wagging wildly. 'Thank you, [BlancheMomDadTitle]. Really. I'd love to.' You privately chuckle at how such an innocent question can transform the usually stern wolf into a puppy.";
	else: [regular summoning]
		say "     Sturm for all his many qualities doesn't possess the ability to hear you when you aren't in earshot. Perhaps you should try again when you can see him.";
		now SummonFailure is true;

to say DismissSturm:
	move Sturm to Grey Abbey Library;
	if Player is not in Grey Abbey Library: [regular dismiss]
		say "     With a word, you get Sturm's attention and tell him that he should head back to the library for now. He looks indignant for a moment but bites his tongue and merely nods. 'Fine. I guess I'll see you at home then,' he grumbles as he walks away, before hurrying back. '[BlancheMomDadTitle]. I enjoy this time together. Just so you know,' he says quickly as he gives you a firm hug before turning away and rushing off before you have a chance to reply. You know that he can handle himself, but you still feel guilty for dismissing him here. ";
		if White Wolf Two is listed in companionlist of Player: [Bianca]
			say "'Going somewhere that you don't want him to see? Perhaps to see one of your secret families?' Bianca teases you as she watches her brother leave. ";
		else:
			say "You would imagine that Bianca will be pleased to have her brother back. ";
		say "With that in mind, you continue your exploration.";
	else: [dismissing Sturm in the abbey]
		say "     With a word, you get Sturm's attention and tell him that he should stay here at the library for now. He looks conflicted but eventually nods. 'I suppose this gives me the chance to spend more time with the rest of my family,' he concedes as he walks away, before hurrying back. '[BlancheMomDadTitle]. I enjoy this time together. Just so you know,' he says quickly as he gives you a firm hug before turning away and rushing off before you have a chance to reply. You know that he can handle himself, but even he needs a rest from time to time. ";
		if White Wolf Two is listed in companionlist of Player: [Bianca]
			say "'Going somewhere that you don't want him to see? Perhaps to see one of your secret families?' Bianca teases you as she watches her brother leave. ";
		else:
			say "You would imagine that Bianca will be pleased to have her brother to play with again. ";
		say "With that in mind, you ready yourself to continue exploring.";

Sturm ends here.
