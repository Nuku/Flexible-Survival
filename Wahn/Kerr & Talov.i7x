Version 1 of Kerr & Talov by Wahn begins here.

[
Kerr & Talov

- met in College; married
- somewhat immature relationship so far, together 3 years
- future conflict/growth potential as the BJ by Benjamin & Kerr comes out
- two different kind of hookups for their relationship: friend who fucks (player, Richard), random fuckbuddies (from the party, who're pounded and then pushed out the door; mostly doggystyle/bent over)


Talov:
- the "smarter" one of the two, good student in college
- calls Kerr "my hubby"; addressing him as "babe"
- sexual views:
	male: loves big guys, playfully dominating them; enjoys a hairy chest
	female: experimented with women before, would be fine with trans-males - doesn't like licking pussy or breasts (prefers a firm pec), but is fine with fingering/fucking pussy; likes moaning, but not squeals that hurt the ears
	quirks: likes creampies (especially with his husband), but also painting Player in cum
- has a little bit more educated word-choices ("fellow", etc.)
- sassy type of speaking
- worked as an archivist in the museum, got transformed to be a satyr but then _didn't_ join in for the frolicking and fucking but went home instead to his husband
- Colleagues: Lionel (colleague in the museum), Hughes (security guard in the museum)
- had some jealousy over Kerr hanging out with Benjamin so much (include him ribbing Kerr about going on that rowing trip - reply "yeah, but I chose you" (then hug and nuzzle)" )

Kerr:
- Real Name: Cian Kerrigan
- calls Talov "my man"; adressing him as "hobi" (arabic)
- sexual views:
	male: likes being dicked (since the transformation, its become a true preference); enjoys vocalization to show his partner his feelings; enjoys smooth-chested males
	female: 100% gay, hasn't done anything with a woman before - not interested
	quirks: likes his balls being sucked on after coming
- was pushed by family expectations to go to college for a business degree; got really bored by it and partied a lot instead; eventually quit and started in a construction job (likes the physical work)
- knew Benjamin and was good friends while in college; even went on the Colorado River trip with him ("we wanted to come here to this frat, because they're good people - knew the previous president and all that")
- Benjamin did actually give him a BJ during the trip; one night during the evening (campfire, a bunch of drinking - Kerr pretty wasted, Benji pulled his pants down somewhere a bit outside of the light and sucked him off); didn't tell Talov about it in detail since he didn't want him to freak out over it, but did always start taking Talov along if hanging out with Benjamin (doing something to show B that this was his man) - meanwhile Talov was all ('is he building up asking me for a threesome with the dude? why does he want to hang out with B and me so much')
- knows stuff about trees (types, wood, whatnot)
- more simple, down to earth talk

Story Hook:
- player finds old pictures from that trip back in the day with Benjamin

If Player refuses the party and Kerr + Talov do not get in: [resolution -1, -2, -3]
- they start drinking in the street, then Maron confiscates the barrel

]

Chapter 1 - Meeting Event

Table of GameEventIDs (continued)
Object	Name
Free Drink	"Free Drink"

Free Drink is a scavevent.
ResolveFunction of Free Drink is "[ResolveEvent Free Drink]".
PrereqTime of Free Drink is "Night".
Sarea of Free Drink is "Campus".
when play begins:
	add Free Drink to BadSpots of MaleList;

to say ResolveEvent Free Drink:
	project the figure of Talov_Kerr_Barrel_icon;
	say "     As you're wandering around the campus, you spot an interesting sight somewhere ahead of you. There is a pair of satyrs on one of the more populated main walkways across campus, rolling along a heavy oak cask in the direction of the dorms and frat-houses. They're a bit of a mixed couple, one with a relatively slender swimmer's build, light skin and red hair, the other more broad, with a muscle-packed torso and dark brown hair. The two of them seem in rather good spirits, if somewhat sweaty from maneuvering their load, though they always seem to have a friendly smile and greeting ready for students who pass them on their way to places on campus. Walking in the same direction as they do, you slowly start to get closer to the pair as they're moving a little slower than you. This gives you the chance to observe a haughty-looking Spartan stroll up to them, flanked by two other young men, one of them similar in build to the leader, the other fairly enormous for a human. Some words are exchanged as the Spartan seems to interrogate the satyrs for a moment, before waving them past with a sour expression on his face, then continues the patrol with his two companions.";
	say "     With the interaction between the satyrs and Spartans having held them up, you catch up with the duo, just in time to hear the red-headed satyr say, '...what a pleasant fellow, eh? I understand that keeping order is necessary, but that was downright rude. Good thing he couldn't say anything about alumni visiting their old stomping grounds.' The other, more muscular satyr opens his mouth to reply, but then he spots you and gives you quizzical look. It seems like he recognizes that you're not on your way somewhere, like the students streaming past with relatively quick strides. Curiosity about what you might be doing drives him to call out, 'Hey there, nice to meet ya! How's it going? I'm Kerr, and this is my better half Talov. We're just on our way to bring some wine to a frat, so we can make an awesome party even better!' Drawn into a conversation with the cheerfully smiling man, you introduce yourself in turn, ";
	if PronounSet of Player is not "Auto":
		say "giving your pronouns with a wink, ";
	say "then exchange some words with the two of them. Then soon, Talov clears his throat and says, 'You know, all this hard work has made me thirsty! I need a drink.' He quickly crouches down and uses the tap to fill up two cups for himself and his partner, then glances up at you and asks if you want a drink as well.";
	LineBreak;
	say "     [bold type]What do you reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Sure thing! And did they say party?! You'd be down for that too!";
	say "     [link](2)[as]2[end link] - Sure! Share a drink with them before going on your way.";
	say "     [link](3)[as]3[end link] - While you're not that thirsty right now, a party sounds like fun...";
	say "     [link](4)[as]4[end link] - Nah, you're good. Reject the offer in a friendly way.";
	say "     [link](5)[as]5[end link] - Actually, you'll be taking the whole barrel off their hands!"; [mug em - something for the assholes]
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 5:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to accept the drink and ask to join them for the party, [link]2[end link] to accept the drink and then leave, [link]3[end link] to skip the drink but ask for the party, [link]4[end link] to reject the drink in a friendly way, or [link]5[end link] to try to mug them.";
	if calcnumber is 1: [accept drink + go to party]
		LineBreak;
		say "     Thanking the friendly satyrs for the offer, you accept a free cup of satyr wine and clink it together with theirs, saying cheers. You take a mouthful of the dark, spicy wine, followed by another, then toss the remaining contents of the small cup back. The heady stuff burns its way down your throat, and makes your head spin. Tasty, and quite potent, that's for sure! While you're drinking your own wine, the satyrs already go for a refill and polish that off too, finally quenching their thirst. As they pack away the cups after that, you ask them about the party they're going to. 'We're on our way to Phi Alpha Nu,' Kerr says with a grin, then adds, 'If they're anything like when the two of us were studying here, there's sure to be an awesome party going on in the house! Plenty of hot hunks around, I bet!' Talov winks at you as he explains, 'You see, we're surprise guests. They don't actually know we're coming, hah!' That said, the two of them begin rolling their cask once more and you tag along besides them, listening to their happy-go-lucky boasts of the frat party surely becoming legendary once they arrive there.";
		PlayerDrink 20;
		if winefound is 1:
			say "     You manage to save some of the wine in a vial to give to Nermine later.";
			now winefound is 2;
		if "Iron Stomach" is not listed in Feats of Player:
			infect "Satyr";
		say "[Satyr Frat Party Intro]";
	else if calcnumber is 2:
		LineBreak;
		say "     Thanking the friendly satyrs for the offer, you accept a free cup of satyr wine and clink it together with theirs, toasting to their big night tonight. You take a mouthful of the dark, spicy wine, followed by another, then toss the remaining contents of the small cup back. The heady stuff burns its way down your throat, and makes your head spin. Tasty, and quite potent, that's for sure! After that, the three of you continue talking for a little while longer, before Talov and Kerr excuse themselves, saying that they really need to get going soon.";
		PlayerDrink 20;
		if winefound is 1:
			say "     You manage to save some of the wine in a vial to give to Nermine later.";
			now winefound is 2;
		if "Iron Stomach" is not listed in Feats of Player:
			infect "Satyr";
			say "     Finding yourself transformed by the tasty wine they shared, a thought enters your mind that a party might not be such a bad idea after all...";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Change your mind and offer to accompany them to the party.";
			say "     ([link]N[as]n[end link]) - Shrug it off and leave, as you had planned to do.";
			if Player consents:
				LineBreak;
				say "     Clearing your throat and saying that you changed your mind and that party they mentioned sounds interesting, and if they'd be okay with you tagging along. Kerr replies, 'Sure! We're on our way to Phi Alpha Nu! If they're anything like when the two of us were studying here, there's sure to be an awesome party going on in that frat house! Plenty of hot hunks around, I bet!' Talov winks at you as he explains, 'You see, we're surprise guests. They don't actually know we're coming, hah!' That said, the two of them begin rolling their cask once more and you tag along besides them, listening to their happy-go-lucky boasts of the frat party surely becoming legendary once they arrive there.";
				say "[Satyr Frat Party Intro]";
			else:
				LineBreak;
				say "     Saying your goodbyes, you watch them walk on, then turn to other things. They're already gone before you remember that you didn't even ask which fraternity they were going to. Looks like you missed your chance to be involved in that.";
				now Resolution of Free Drink is -2; [refused the party]
		else:
			say "     Saying your goodbyes, you watch them walk on, then turn to other things. They're already gone before you remember that you didn't even ask which fraternity they were going to. Looks like you missed your chance to be involved in that.";
			now Resolution of Free Drink is -2; [refused the party][accept drink, refuse party]
	else if calcnumber is 3: [refuse drink, go to party]
		LineBreak;
		say "     Thanking the friendly satyrs for the offer, but refusing it nonetheless, you stand around a little longer, chatting as they drink their wine, then go for refills and polish that off too. After that, you ask them about the party they're going to. 'We're on our way to Phi Alpha Nu,' Kerr says with a grin, then adds, 'If they're anything like when the two of us were alumni here, there's sure to be an awesome party going on in that frat house! Plenty of hot hunks around, I bet!' Talov winks at you as he explains, 'You see, we're surprise guests. They don't actually know we're coming, hah!' That said, the two of them begin rolling their cask once more and you tag along besides them, listening to their happy-go-lucky boasts of the frat party surely becoming legendary once they arrive there.";
		say "[Satyr Frat Party Intro]";
	else if calcnumber is 4: [refuse drink + party]
		LineBreak;
		say "     Thanking the friendly satyrs for the offer, but refusing it nonetheless, you stand around a little longer, chatting as they finish off their wine. Eventually, Talov and Kerr excuse themselves, saying that they really need to get going. Saying your goodbyes, you watch them walk on, then turn to other things. They're already gone before you remember that you didn't even ask which fraternity they were going to. Looks like you missed your chance to be involved in that.";
		now Resolution of Free Drink is -1; [declined drink]
	else if calcnumber is 5: [mug them]
		LineBreak;
		say "     As you announce your intentions of making off with their wine barrel, the two satyrs look at you with baffled expressions. 'Did the campus get an extra dose of jackass today or something?' Talov comments, rolling his eyes and then taking another swallow of wine. Looking at you and raising one eyebrow, he then asks, 'Really? You're wanting to mug us, here? Right in the middle of the campus? You did see that bunch of sandal-booted thugs who stopped us, and are about 50 feet that way? There's a bunch more of them, and they really seem like the type that curb-stomps people who act up.' Meanwhile, Kerr just filled his cup again at the barrel, and is now leaning against it. He casually comments, 'Here's a street-robbing tip for dummies: Better try it in an alley or something, with someone who's alone.' As the two of them seem only interested in mocking you right now, and they kinda have a point about Spartan security patrols being quite heavy in this area, you slink off with empty hands.";
		[potential for choice point leading to a bad end]
		now Resolution of Free Drink is -3; [tried to rob em]
	now Free Drink is resolved;

to say Satyr Frat Party Intro:
	say "     It doesn't actually take all that long before Kerr, Talov and yourself arrive at the start of Greek street, even with the slow speed that you're moving in due to the cask. At that point, Kerr asks you nicely to take his place pushing next to Talov for a moment, then skips ahead, scouting out where you're going. When he comes back a moment later, he says, 'We've got a small issue... they've got someone standing guard.' Seeing your questioning expression at this, he makes a circling movement with one hand, seemingly indicating the whole city, 'Guess with everything going on, they're worried about party-crashers. Not that that's what we wanna do - all our wine will do is bring some extra fun into the mix! But yeah, they might not see it the same way at first... and we kinda expected the guys to be tipsy and distracted enough not to care too much if we join them. The guy back there looks like he drew the short straw, because he seems totally sober and alert.'";
	WaitLineBreak;
	project Figure of Richard_human_clothed_icon;
	say "     Already having downed a few cups themselves on the way, your two satyr compatriots seem a bit indecisive in how to deal with this little problem. You doubt they'll manage their plan on infiltrating the frat party on their own, at least today. Without some assistance, they'll likely have to sober up and come back another day. Or maybe they'll keep standing right here, drinking as they try to come up with some way to get in on their own. Curiosity drives you to investigate yourself and you take a stroll past the frat house on your own. There's obviously a roaring party going on inside, and a young man is leaning against the railing of the stairs leading up to the front door. The dude is tall and pretty handsome too, dressed in a black Phi Alpha Nu t-shirt and jeans. From the looks of his muscled body, he's obviously an athlete - a bored one, as he watches the street without much urgency, just glancing here and there and often turning his head to glance towards the party he's missing out on right now.";
	LineBreak;
	say "     [bold type]What do you want to do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Violence might do the trick! Sucker-punch him to knock him out!";
	say "     [link](2)[as]2[end link] - Make up some convincing lie to distract him.";
	say "     [link](3)[as]3[end link] - Offering sex should be a quite distracting option for the guy. (Warning: He'll think you're a slut for future content.)";
	say "     [link](4)[as]4[end link] - Decide not to help the satyrs get into the party.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to sucker-punch the guy, [link]2[end link] to distract him with a lie, [link]3[end link] to offer sex, or [link]4[end link] to decide against helping the satyrs get in.";
	if calcnumber is 1:
		LineBreak;
		say "     Taking care to unobtrusively move closer, as if you wanted to go to their neighboring frat, you manage to avoid the guy's conscious attention. Soon it is only a question of picking the right moment, when his head is turned, to close the last remaining distance and then wind up for a strong punch.";
		let bonus be (( Strength of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Strength-Check vs 18)";
		increase diceroll by bonus;
		LineBreak;
		if diceroll > 17:
			say "     Time seems to flow in slow-motion as you unleash your fist, with it gliding through the air to perfectly land just as he is turning his head. Unprepared for this sudden outburst of violence, the frat-member instantly crumples to the ground. That went... surprisingly smooth. You have a quick look over to the house, but none of the partying people seems to have noticed your very short altercation. Grabbing the knocked-out student under the arms, you start dragging him out of sight, around the corner of the building. While busy doing so, Kerr and Talov pass you with their barrel, rolling it towards the entrance of the building. You can tell from Talov's expression that he's a bit surprised at your violent solution to this situation.";
			say "     After you finish dragging your unconscious victim around the corner and put him on the ground behind a tall bush, you unobtrusively check for the satyrs. Looks like they made it into the building alright. With a smile at the thought of the two of them joining the party and handing out wine left and right, you walk away from the frat-house - for now. Best to give them some time in there, as adding another unfamiliar person (yourself) might be too much and lead to someone getting suspicious. Better come back later and see how this party develops...";
			now SatyrFratRichardRelationship is 98; [punched him successfully]
		else:
			say "     Time seems to flow in slow-motion as you unleash your fist, with it gliding through the air to impact the frat guy's face. Unprepared for this sudden violence, he stumbles backwards, but quickly catches himself and shouts, 'Hey! What the fuck is your problem?!' Uh-oh... that made him angry. But hey, you don't actually need to really fight and win against him, do you? Using the moment in which the muscled guy shakes off the slight daze you gave him as a head-start, you dash away down the street, quickly followed by the yelling and cursing young frat brother. This might not have been such a bright idea after all - he almost catches you several times, proving the speed and stamina a trained athlete can muster. Only when you jump over a hedge just after turning a corner do you get rid of him, as he dashes past your hiding spot.";
			say "     Phew, that was close. Though at least you can be sure that you gave Kerr and Talov enough time to make their way into the frat house. Maybe you should return here sometime later and see how this party develops...";
			now SatyrFratRichardRelationship is 99; [punched him and ran]
		now SatyrFratPartyStage is 1;
	else if calcnumber is 2:
		LineBreak;
		say "     Running up to the young man, you do a bit of play-acting as if you're out of breath, then pant that you saw some weird creatures somewhere behind the frat house. They were some kind of beasts with tentacles and whatnot. No doubt they'll try to worm their way under the fence, with the loud party drawing their attention! The athletic young man's eyes widen in alarm and he says 'What sort of creatures? And who are -' Quickly interrupting him before he can really think about anything, you tell him to come quickly and run to the side of the building, turning the corner towards the fenced-in backyard. And it works - the frat party guardian follows you right away, leaving his post to check out your imaginary beasts.";
		say "     By pure chance though, they're not as imaginary as you thought - weirdly enough, there actually are two odd-looking monsters scuttling along through the strip of bushes and trees forming the edge of the campus on this side. They look pretty horrifying, with six legs and chitinous armor formed into ridges and spikes. Solid [one of]black[or]yellow[or]red[or]gray[or]purple[at random] eyes stare at you maliciously, followed by keen, shrill cries emanating from between their mandibles. They look like something that seems to belong in dark tunnels underground or so. You barely have time to wonder where these critters come from, before they rear up and raise their clawed legs in a threatening manner.";
		now inasituation is true;
		challenge "Foul Scuttler";
		now inasituation is false;
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "     The creature lets out a shriek of victory as you collapse, raising its clawed limbs and rearing up over you. This reveals a worryingly large, throbbing shaft dangling erect beneath its body. You can't really tell, with its chitin-covered and relatively immobile face, but you think that those movements of its mandibles are a cruel smile. Then it steps forward, and... you hear a crunch of breaking carapace as the frat guy suddenly steps into sight behind the thing and brings a solid tree branch down on its flank. Clearly hurt, the creature scuttles away from this new attack, almost stumbling over its compatriot that lies on the ground, two of its limbs twisted to unnatural angles. Threatening another wallop with his branch, the dude takes a step towards the two of them, which convinces the critters to flee in the opposite direction. After making sure they're properly gone, the young man helps you back to your feet.";
			say "     When the two of you walk back to the front of the house afterwards, he says 'Thanks for the warning and... er, help. I'm Richard by the way.' Glancing around to see if there might be further creatures skulking around, he comments more to himself, 'I told the others we should be more vigilant, with more than one person keeping a lookout. Not just in front of the door, but also someone to patrol around.' You can't help but pick up on some frustration underlying the young man's words. Maybe it was his own idea to keep watch in the first place too? A good idea too, as today has shown. With him being very intent in getting back to his post, you only have time for a short chat on the way after you introduce yourself in turn, but you get the impression that he's a pretty friendly and nice guy. As you come to the front of the house, your satyr compatriots are nowhere in sight - seems like they made it into the building alright. Getting another bit of thanks from Richard, you say your goodbyes and walk away. Maybe you should return here sometime later and see how things develop in the frat house...";
			now PlayerMet of Richard is true; [introduced]
			TraitGain "Player lost scuttler fight" for Richard;
			now SatyrFratPartyStage is 4;
		else if fightoutcome >= 30: [fled]
			say "     Sometimes it's best to flee - this isn't really your fight after all. Hopefully the frat guy will take this as an attempt to draw the creature away, not you abandoning him. As you dash off, you see him giving his own weird beast a solid wallop with a thick tree branch he must have picked up somewhere. A good solid blow creating a resounding crunch as it splinters the chitin of one of the critter's legs. Your own opponent starts to chase you, letting out furious shrieks as it does so. Running as fast as you can, you hear it following you for quite a while before you finally manage to shake it from your trail. You idly wonder if your distraction tactic gave Kerr and Talov enough time to make their way into the frat house. Maybe you should return here sometime later and see how things develop in the frat house...";
			TraitGain "Player fled scuttler fight" for Richard;
			now SatyrFratPartyStage is 3;
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     Landing another blow, you hear the crunch of breaking carapace, and your attacker scuttles backwards, holding its side from where some sticky goop oozes out of its body. Clearly hurt, the creature almost stumbles over its compatriot that lies on the ground, two of its limbs twisted to unnatural angles. The frat guy is next to that one, lifting a thick branch he must have picked up in a threatening gesture. This is enough to convince the critters to flee in the opposite direction. After making sure they're properly gone, the young man helps you back to your feet. 'Thanks for the warning and help. I'm Richard by the way.' Glancing around to see if there might be further creatures skulking around, he comments more to himself, 'I told the others we should be more vigilant, with more than one person keeping a lookout. Not just in front of the door, but also someone to patrol around.'";
			say "     You can't help but pick up on some frustration underlying the young man's words. Maybe it was his own idea to keep watch in the first place too? A good idea too, as today has shown. With him being very intent in getting back to his post, you only have time for a short chat on the way after you introduce yourself in turn, but you get the impression that he's a pretty friendly and nice guy. As you come to the front of the house, your satyr compatriots are nowhere in sight - seems like they made it into the building alright. Getting another bit of thanks from Richard, you say your goodbyes and walk away. Maybe you should return here sometime later and see how things develop in the frat house...";
			now PlayerMet of Richard is true; [introduced]
			TraitGain "Richard & Player won scuttler fight" for Richard;
			now SatyrFratPartyStage is 2;
		now SatyrFratRichardRelationship is 1; [player and Richard fought the scuttlers]
		now PlayerFriended of Kerr & Talov is true; [they like the Player because he got them in]
	else if calcnumber is 3: [sex]
		LineBreak;
		say "[Richard Guard Sex]";
		now SatyrFratRichardRelationship is 2; [Player distracted Richard with sex]
	else if calcnumber is 4: [change your mind]
		LineBreak;
		say "     Maybe it'll be for the best if the two of them won't manage to pass their infective wine to dozens of frat members here on the campus. With a well-meant suggestion of just taking their wine barrel and enjoying the contents themselves, you leave the satyrs and turn your attention back to more important matters.";
		now Resolution of Free Drink is -2; [declined to help the Satyrs get in]
	if SatyrFratPartyStage > 0 and SatyrFratPartyStage < 99:
		change the East exit of Greek Street to PAN Frat Living Room;
		change the West exit of PAN Frat Living Room to Greek Street;
		if Daytimer is night:
			now Kerr & Talov is in PAN Frat Living Room;
		else:
			now Kerr & Talov is in PAN Frat Game Room;
		now Resolution of Free Drink is 1; [Player got the Satyrs in]
		now PlayerFriended of Kerr & Talov is true; [they like the Player because he got them in]

instead of going east from Greek Street while "Player Introduced to PAN" is not listed in traits of Richard and SatyrFratPartyStage > 0 and SatyrFratPartyStage < 99: [not introduced yet, Kerr & Talov got in]
	if Daytimer is night:
		say "     Maybe you should first find out how things went for Kerr and Talov after they slipped into the party with your help. Who knows what may have happened, after all. Best try this during the daytime, when there's less bustle going on and you can actually talk to the frat brothers...";
	else if Daytimer is day:
		project Figure of Richard_human_clothed_icon;
		say "     As you walk up to the frat house, you can see someone come out the front door ahead of you, a handsome Latino guy with mid-length curly hair. Looks like he's late for a date or something, as he's quite snazzily dressed and in a rush, running right past you without stopping. You watch him dash off and shrug to yourself, then step up to the front door of the frat house and knock on the hardwood door, hearing the solid thunk of your knuckles against the thick wood. As you stand there, waiting for someone to answer the door, you idly let your gaze wander over the frat house's front. The building looks to be quite solidly constructed, and more than a hundred years old, if you had to guess. On top of a foundation of rectangular-cut fieldstones, the three-story building itself is entirely made of some reddish-brown wood, likely varnished to protect it while retaining the natural look. While you're still taking in the architecture, a flash of movement visible through one of the fairly opaque glass elements left and right of the door draws your attention back to the entrance.";
		say "     The moment the door is pulled open, you can hear someone ask, 'Angelo, did you forget your key again?' The person speaking is the one frat member that you encountered before, when he was guarding the front of the building. ";
		if "Richard & Player won scuttler fight" is listed in Traits of Richard or "Player lost scuttler fight" is listed in Traits of Richard:
			say "Richard looks at you in surprise as you're not who he expected, which is then quickly replaced by a smile appearing on his face as he recognizes you. 'Oh hey[if Player is not defaultnamed], [Name of Player][else] there[end if]!' he says, his expression becoming more open and welcoming instantly. 'Thanks again for your timely warning the other night. Good thing you spotted those things and we could drive them off.' Nodding to him and chatting for a little while about the creatures you fought together, you then casually swing the conversation over to the pair of friendly satyrs that you ran into earlier that day, who wanted to get in for the frat party, and ask if they actually did.";
			WaitLineBreak;
			say "[Richard_Friendly_Introduction]";
		else if "Player fled scuttler fight" is listed in Traits of Richard:
			say "The guy looks at you in surprise as you're not who he expected, which is then quickly replaced by a smile appearing on his face as he recognizes you. 'Oh hey there!' he says, his expression becoming more open and welcoming instantly. 'Thanks again for your timely warning the other night. Good thing you spotted those things and told me about them. I'd been wondering what happened to you while I was fighting one of the creatures. Both the second thing and you just disappeared and didn't come back.' Clearing your throat, you quickly make up a halfway convincing explanation about deciding to draw away the creature to avoid them ganging up on either of you. The frat guy raises an eyebrow a little, but then gives a shrug to himself as things worked out alright, even if he might potentially be doubting your words. Then he goes ahead to add, 'Anyways, I'm Richard, nice to talk to you!' After introducing yourself in turn, you casually bring up that you ran into a pair of friendly satyrs earlier that day who wanted to get in for the frat party, and ask if they actually did.";
			WaitLineBreak;
			say "[Richard_Friendly_Introduction]";
		else if SatyrFratRichardRelationship is 98: [punched him out]
			say "The dude looks at you in surprise as you're not who he expected, which is then quickly replaced by a frown appearing on his face as he recognizes you as the person who punched him. 'What the fuck are you doing here? Just strolling up to our house after the shit you pulled last time! Being punched out and waking up in the dirt behind our bushes is just what I needed that night, you asshole!' He isn't exactly pleased to see you, but aside from raising his voice, the frat brother doesn't yet seem immediately poised to fight you right now. Him nodding to the side, indicating the several more frat members hanging out in the living room, seems mostly intended as a deterrent meant for you. Given that you only wanted to create a distraction the last time you met, you decide to apologize and come clean. The young man listens to your words, his eyebrows rising a bit as you mention your satyr friends.";
			say "     'Aha, now things start making some sense. You're a bud of K&T and ran interference to get me out of the way? Why didn't you just talk to me? Overly aggressive much? Don't you try shit like that again, ya hear me? Things will go quite different, I can tell you that.' He gives you a firm look, then adds, 'Bah, you're lucky those two are cool guys. Made a big splash when they joined the party too, bringing their own booze to share, and they mix some awesome drinks, so we decided they're fine to stay a while. If you're with them... I won't rat you out to the other guys, but you owe me some payback for the pain, capiche?' He keeps his gaze on you until you reluctantly nod, then lets out a grunt and says, 'I'm Richard, by the way.' After you introduce yourself in turn, he waves for you to follow him inside. ";
			say "[PAN Frat Introduction]";
			now PlayerMet of Richard is true;
		else if SatyrFratRichardRelationship is 99: [punched him and ran]
			say "The dude looks at you in surprise as you're not who he expected, which is then quickly replaced by a frown appearing on his face as he recognizes you as the person who punched him. 'What the fuck are you doing here? Just strolling up to our house after the shit you pulled last time, then ran off like a chicken! Back to start some more beef? Me and the guys will have show you what's what if you try!' He isn't exactly pleased to see you, but aside from raising his voice a bit, the frat brother doesn't yet seem poised to fight you or anything. Him nodding to the side, indicating the several more frat members hanging out in the living room, is intended as a deterrent meant for you. Given that you didn't really fight him in the first place and only wanted to create a distraction, you decide to apologize and come clean. The young man listens to your words, his eyebrows rising a bit as you mention your satyr friends.";
			say "     'Aha, now things start making some sense. You're a bud of K&T and ran interference to get me out of the way? Why didn't you just talk to me? Overly aggressive much? Don't you try shit like that again, ya hear me? Things will go quite different, I can tell you that.' He gives you a firm look, then adds, 'Bah, you're lucky those two are cool guys. Made a big splash when they joined the party too, bringing their own booze to share, and they mix some awesome drinks, so we decided they're fine to stay a while. If you're with them... fine, I won't rat you out to the other guys. You hit like a little girl anyways.' With a grunt, he holds out a hand for you to shake. 'I'm Richard, by the way.' After you introduce yourself in turn, he waves for you to follow him inside. ";
			say "[PAN Frat Introduction]";
			now PlayerMet of Richard is true;
		else if PlayerFucked of Richard is true: [Player distracted Richard with sex]
			say "Richard looks at you in surprise as you're not who he expected, which is then quickly replaced by a smile appearing on his face as he recognizes you. 'Oh hey[if Player is not defaultnamed], [Name of Player][else]there[end if]!' he says, becoming somewhat uncomfortable at having a random fling show up out of the blue like this. 'So, eh... that was some crazy fun we had the other night.' Nodding to him and giving a flirty wink, you chat a little with the young man, complimenting his physique and virility. He visibly relaxes as you keep buttering him up, blushing a little as a smile forms on his lips. The tension leaves his body, with him then unconsciously presenting himself and flexing a little for you. Having smoothed over his embarrassment, you then eventually swing the conversation over to the pair of friendly satyrs that you ran into earlier that day, who wanted to get in for the frat party, and ask if they actually did.";
			say "[Richard_Sexy_Introduction]";

to say Richard_Friendly_Introduction:
	say "     'Ah, you know K&T? Yeah, those two just strolled in the front door while we were battling things in the woods. Funny timing that, eh?' Raising an eyebrow as he says the last words, you can almost see the wheels in his head turning as he makes the connection between your eventful interaction, and the arrival of the satyrs. He lets out a somewhat amused snort, then shakes his head and smiles at you. 'Come on in, let me introduce you to the guys!' Stepping back to free the doorway for you, he waves for you to follow him into the frat house. [PAN Frat Introduction]";

to say Richard_Sexy_Introduction:
	say "     'Oh, you know K&T? Yeah, those two just strolled in the front door while we were... busy. Odd timing there, eh?' Frowning a little, you can almost see the wheels in his head turning as he makes the connection between your interaction, and the arrival of the satyrs. Looks like he's disappointed in the fact that you did things with him because of ulterior motives, and not because you were truly interested in him. Then he seems to give himself a little bit of a push, sorting you into the 'just a slut' category and letting out a grunt. Shaking his head and smiling, he then says, 'You a frat groupie? Fine by me, if you wanna give some dudes a treat. Come on in, let me introduce you to the guys!' Stepping back to free the doorway for you and making the quip, 'Just don't drown yourself in cum. Having to give mouth to mouth in that situation would be a bit cringe, haha!' He then waves for you to follow him into the frat house.";
	say "'Hey guys, got a friend of K&T here[if Player is not defaultnamed]. This is [Name of Player].' [else].' [end if]Nodding to you, he then goes through the students currently present, pointing them out one by one at which point they give you a wave. There's River - a really handsome blond guy in a tightly clinging shirt showing off his abs who's the Tenvale college swim team captain, Big John - all towering and muscular with a sleeveless shirt stretched across his pecs, with buzzed brown hair and an offensive guard on the football team, Little John - almost as muscular as Big John, just two feet shorter and with black hair, his round and noticeable ass, and a wrestler, Nate - who's pretty wiry in a sexy twunk kind of way, has red hair and apparently is a good gymnast, and Paul - a grinning blond guy making finger guns at you as his name is called, wiggling his eyebrows at you suggestively, and also a wrestler, but in a much lighter weight class.";
	WaitLineBreak;
	say "     Continuing on into the game room next door, Richard grins and points at two people lying in a pile on a sofa: It's Kerr and Talov, deep asleep. 'I know you came here to see them, but those two partied till sunrise.' He steps up to the sofa giving Talov's shoulder a little wiggle, and only getting a groan and him curling closer against Kerr's chest in response. Even while mostly asleep, he takes care not to spear his partner with the horns on his head though. 'Yeah, no. I think they might be out most of the day, hah! Let's leave them to get their rest...' On the other side of the room, past a pool table, you find two more frat members, busy playing a console fighting game against each other. Richard introduces them as Oliver - another member of River's team with a sleek swimmer's build and closely cropped brown hair, which he brushes a hand over as you look, demonstrating his firm bicep, and Han - a muscular Asian-American stud with very well-muscled chest and a big bulge in his pants, who's apparently the captain of the college's baseball team. '[']Sup?' Han calls over to you, barely pulling his gaze away from the large flatscreen TV so he doesn't lose momentum in slapping around Oliver's character in the game.";
	say "     Moving on, Richard leads you to a door in the east wall, pausing for a second before he opens it, tapping a currently open latch with an extra lock that looks to have been recently screwed on. 'Sad that we had to go this far. But with all the freaky things happening out there, we gotta be careful, especially since I haven't been able to convince the others yet that we need to adapt to this new world. Some extra protection seems smart, ya know?' He then nods to the door and tells you, 'Now, you better be on your best behavior when you meet my next brother. If he doesn't like someone, they're out, understand? No ifs or buts!' After he pulls the door open, you follow Richard into... a stable? No, it's a goat pen! With a very well-cared for goat with a fairly enormous pair of curved horns on his head.";
	WaitLineBreak;
	say "     He looks a little different than a typical farm animal, and Richard helpfully explains, 'He's an African goat, we adopted him to save him from becoming someone's dinner.' Nodding seriously, Richard grabs a carrot and hands it to you, then waves you forward to approach the divider between the pen and the rest of the room. 'This is Sylvanus, our mascot! Go on, introduce yourself.' As you do so, the goat approaches, focusing the intense gaze of his eyes on you, with his weird pupils, like a figure eight lying on its side. After studying you for a moment, Sylvanus lets out a loud 'Baaah!', approaching the divider and allowing you to feed him and even licking your hands after that. 'Looks like you can hang with us,' Richard says, only half-joking if you read his expression right.";
	say "     After the goat has polished off the carrot, you continue on through the garden and kitchen of the frat house, but encounter no one else there and finally return to the living room. 'We'll let the others know that you're allowed to be here, that was only about a third of the guys in the frat. Lots more studs around who'll be so pleased to meet you, haha! For example, you just missed my bro Angelo by a minute when you came to our door. I think you two could get along reaaaally well. But if you wanna hang out, feel free to come visit me in my room on the third floor sometime.' After letting you know exactly where his room is (south hallway on the third floor, to the east), Richard excuses himself and goes back to what he was doing when you arrived. Looks like the satyr's plan of joining the party - and future parties - in the frat house was a success. And you've got an in now too.";
	change the east exit of PAN Frat South Hallway to Richard's Room; [connecting the location]
	change the west exit of Richard's Room to PAN Frat South Hallway; [connecting the location]
	TraitGain "Player Introduced to PAN" for Richard;

to say PAN Frat Introduction:
	say "'Hey guys, got a friend of K&T here[if Player is not defaultnamed]. This is [Name of Player].' [else].' [end if]Nodding to you, he then goes through the students currently present, pointing them out one by one at which point they give you a wave. There's River - a really handsome blond guy who's the Tenvale college swim team captain, Big John - all towering and muscular, with buzzed brown hair and an offensive guard on the football team, Little John - almost as muscular as Big John, just two feet shorter and with black hair, and a wrestler, Nate - who's pretty wiry, has red hair and apparently is a good gymnast, and Paul - a grinning blond guy making finger guns at you as his name is called, and also a wrestler, but in a much lighter weight class.";
	WaitLineBreak;
	say "     Continuing on into the game room next door, Richard grins and points at two people lying in a pile on a sofa: It's Kerr and Talov, deep asleep. 'I know you came here to see them, but those two partied till sunrise.' He steps up to the sofa giving Talov's shoulder a little wiggle, and only getting a groan and him curling closer against Kerr's chest in response. Even while mostly asleep, he takes care not to spear his partner with the horns on his head though. 'Yeah, no. I think they might be out most of the day, hah! Let's leave them to get their rest...' On the other side of the room, past a pool table, you find two more frat members, busy playing a console fighting game against each other. Richard introduces them as Oliver - another guy with a sleek swimmer's build and closely cropped brown hair, a member of River's team, and Han - a muscular Asian-American stud with very well-developed legs, and apparently the captain of the college's baseball team. '[']Sup?' Han calls over to you, barely pulling his gaze away from the large flatscreen TV so he doesn't lose momentum in slapping around Oliver's character in the game.";
	say "     Moving on, Richard leads you to a door in the east wall, pausing for a second before he opens it, tapping a currently open latch with an extra lock that looks to have been recently screwed on. 'Sad that we had to go this far. But with all the freaky things happening out there, we gotta be careful, especially since I haven't been able to convince the others yet that we need to adapt to this new world. Some extra protection seems smart, ya know?' He then nods to the door and tells you, 'Now, you better be on your best behavior when you meet my next brother. If he doesn't like someone, they're out, understand? No ifs or buts!' After he pulls the door open, you follow Richard into... a stable? No, it's a goat pen! With a very well-cared for goat with a fairly enormous pair of curved horns on his head.";
	WaitLineBreak;
	say "     He looks a little different than a typical farm animal, and Richard helpfully explains, 'He's an African goat, we adopted him to save him from becoming someone's dinner.' Nodding seriously, Richard grabs a carrot and hands it to you, then waves you forward to approach the divider between the pen and the rest of the room. 'This is Sylvanus, our mascot! Go on, introduce yourself.' As you do so, the goat approaches, focusing the intense gaze of his eyes on you, with his weird pupils, like a figure eight lying on its side. After studying you for a moment, Sylvanus lets out a loud 'Baaah!', approaching the divider and allowing you to feed him. 'Looks like you can hang with us,' Richard says, only half-joking if you read his expression right.";
	say "     After the goat has polished off the carrot, you continue on through the garden and kitchen of the frat house, but encounter no one else there and finally return to the living room. 'We'll let the others know that you're allowed to be here, that was only about a third of the guys in the frat. For example, you just missed my bro Angelo by a minute when you came to our door. And if you wanna hang out, feel free to come visit me in my room on the third floor sometime.' After letting you know exactly where his room is (south hallway on the third floor, to the east), Richard excuses himself and goes back to what he was doing when you arrived. Looks like the satyr's plan of joining the party - and future parties - in the frat house was a success. And you've got an in now too.";
	change the east exit of PAN Frat South Hallway to Richard's Room; [connecting the location]
	change the west exit of Richard's Room to PAN Frat South Hallway; [connecting the location]
	TraitGain "Player Introduced to PAN" for Richard;

Chapter 2 - NPCs

Table of GameCharacterIDs (continued)
object	name
Kerr & Talov	"Kerr & Talov"

Kerr & Talov is a man.
understand "Kerr" as Kerr & Talov.
understand "Talov" as Kerr & Talov.
[Physical details as of game start]
ScaleValue of Kerr & Talov is 3. [human sized]
SleepRhythm of Kerr & Talov is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Kerr & Talov is 1. [X cock]
Cock Length of Kerr & Talov is 8. [X Inches]
Ball Size of Kerr & Talov is 4.
Ball Count of Kerr & Talov is 2. [X balls]
Cunt Count of Kerr & Talov is 0. [X pussy]
Cunt Depth of Kerr & Talov is 0. [X Cunt]
Cunt Tightness of Kerr & Talov is 0. [X Cunt]
Nipple Count of Kerr & Talov is 2. [X nipples]
Breast Size of Kerr & Talov is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Kerr & Talov is false. [can not take oversized members without pain]
PlayerMet of Kerr & Talov is false.
PlayerRomanced of Kerr & Talov is false.
PlayerFriended of Kerr & Talov is false.
PlayerControlled of Kerr & Talov is false.
PlayerFucked of Kerr & Talov is false.
OralVirgin of Kerr & Talov is false.
Virgin of Kerr & Talov is true.
AnalVirgin of Kerr & Talov is false.
PenileVirgin of Kerr & Talov is false.
SexuallyExperienced of Kerr & Talov is true.
Sterile of Kerr & Talov is true. [no kids, for now]
MainInfection of Kerr & Talov is "Satyr".
Description of Kerr & Talov is "[Kerr & Talov Desc]".
Conversation of Kerr & Talov is { "<This is nothing but a placeholder!>" }.
The scent of Kerr & Talov is "     The two satyrs have a pleasant, spicy scent to them, with undertones of fur and wine.".

to say Kerr & Talov Desc:
	project Figure of Talov_Kerr_Barrel_icon;
	say "     Kerr and Talov are a married couple of male satyrs that are pretty much always encountered together, with one never too far away from the other. The two of them each wear a leather bracer on their right wrists, somewhat different in design but definitively giving them a partner-look. The larger of the two, Kerr, is a large man with of what seems to be middle-eastern descent, showing strong muscles and a cheerful demeanor. Letting your gaze wander over his form, you see a strong set of hooves, goat-legs with dark brown hair, a thick, uncut cock, a quite muscular hairy chest, as well as a full beard on his face and thumb-thick dreadlocks on top of his head. Around his neck rests a puka shell necklace bearing some sort of rough and natural green crystal as its centerpiece. Finally, a pair of curling ram's horns at the sides of his head complete the image of a friendly and jovial satyr.";
	say "     His husband is Talov, who's more slender than Kerr, with fairly light skin and red hair on his goat-legs, an uncut cock somewhat thinner than Kerr's, a completely smooth and hairless chest, as well as a red goatee and a mid-length shock of hair on his head. His ears are furry too, having a little bit more of an animalistic look with pointy tips and inhuman flexibility that allows him to wiggle and flick them expressively. You can make out a small silver earring dangling from the one on the right side. Talov's horns are mostly straight up from the top of his head, only bending in a light arch towards the back.";

an everyturn rule: [Kerr & Talov Specific]
	if SatyrFratPartyStage > 0 and SatyrFratPartyStage < 99:
		[if TimekeepingVar is 1 or TimekeepingVar is -7:] [midnight]
		[if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - ]
		if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in PAN Frat Living Room:
				say "     As the party finally winds down in the early morning, Kerr and Talov put away their stuff, then [one of]stagger through the door into the game room, arm in arm[or]stroll through the door into the game room, with Kerr letting Talov go first with a flourish, groping his ass as he passes[or]walk through the door into the game room, stopping for a second as Kerr gives Talov a loving kiss on the cheek before stepping through[at random].";
			else if Player is in PAN Frat Game Room:
				say "     [One of]Arm in arm and swaying a little, [or]One after another, close together, [or]Arm in arm, [at random]Kerr and Talov come in from the direction of the living room, then immediately make a beeline for one of the sofas in here. [one of]Sharing some light groping and a kiss, the two of them lie down and doze off, [or]Kerr lies down first, stretching himself out on his back, then holding open his arms for his partner to join him in a gentle embrace holding him against his body. They fall asleep like that quickly, [at random]with Talov half sprawled across his partner's chest.";
			now Kerr & Talov is in PAN Frat Game Room;		[else if TimekeepingVar is 6 or TimekeepingVar is -2:] [mid-morning]
		[else if TimekeepingVar is 5 or TimekeepingVar is -3:] [noon]
		[else if TimekeepingVar is 4 or TimekeepingVar is -4:] [mid afternoon]
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in PAN Frat Living Room:
				say "     Kerr and Talov come into the room from the direction of the Game Room, immediately making a beeline for the bar and starting to set up their stuff. With the two of them working together to set up, not even really needing any words to do so, they're ready to supply another night of partying in no time at all.";
			else if Player is in PAN Frat Game Room:
				say "     [one of]Waking up from their slumber, Kerr and Talov get up from the sofa, [or]Waking up first, Kerr stays lying on the sofa for a little while, just enjoying the weight of Talov on his chest and smiling as he watches his husband sleep for a little while longer before he wakes up too. Then the two of them get up from the sofa, [or]Waking up first, Talov pushes himself up a little, then starts playfully running his fingers through his husband's chest hair and beard, giggling a little as the larger male eventually wakes from the tingly sensations. He stretches to kiss Kerr on the lips before getting up, with the two of them then [at random]yawning and stretching before they make their way into the Living Room. ";
			now Kerr & Talov is in PAN Frat Living Room;
		[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night - unused, Brennan is out scavenging]



Section 2 - Talking with Kerr & Talov

instead of conversing the Kerr & Talov:
	if daytimer is day:
		say "     The two satyrs are currently asleep and pretty dead to the world. You try poking Talov to get a reaction, but he only really turns away a little, curling in tighter against Kerr's chest.";
	else:
		if PlayerMet of Kerr & Talov is false: [first time talking to them]
			say "     As you approach the bar, both Kerr and Talov smile widely as they recognize you. 'Hey, nice to see you!' and 'Glad you could make it here again!' the two satyrs shout to be heard above the music at the same time, immediately chuckling at the jumble of words that creates. A moment later, Talov smiles at Kerr and tells him loudly, 'You go ahead and finish the drink orders, babe. I'll talk with [if Player is female]her[else]him[end if] to see what they want.' As his partner gets back to filling more plastic cups with booze, the red-headed satyr grins merrily and reaches out to give Kerr's juicy, fur-covered ass a lustful squeeze, before turning to you and leaning forward over the bar to get closer. Even so, he still has to almost shout to be understood clearly as he says, 'Thanks for helping us get in here, this place is a blast! Kerr and I were hoping you'd come back around to party too! Do you want anything to drink? It's an open bar with us, haha!' Shaking your head, you reply that you want to talk with them, to which he nods and then glances around, nodding towards the closest set of double doors leading out of the room as its far too noisy in here for that.";
			say "     You see the red-headed satyr approach his partner and tap him on the arm, with the two of them then starting to make their way out from behind the bar. The three of you shuffle through the crowd, finding the party only marginally less thick and noisy in the game room next door, so you keep going and wander down the stairs in the center of the building to reach the basement. Set up as a private gym, not much is going on down here during the party, with only [one of]a frat guy and a college girl[or]two college dudes[or]a small group of college students[at random] already present, who seem to have sought the place out for some semi-private, drunken groping. With a wicked smile on their faces, they nod to you and then quickly slip into the [one of]shower room[or]sauna[at random] to continue, yielding the room for you to have your own fun. 'Hope they enjoy each other, despite our little interruption,' Kerr comments in his deep voice, chuckling, then lays an arm around Talov as he turns to you. 'So, what did you want to talk about?' he asks, with both their attention being on you now.";
			now PlayerMet of Kerr & Talov is true;
			say "[Kerr & Talov TalkMenu]";
		else if "Fuckbuddy Rejection - Aggression" is listed in Traits of Kerr & Talov:
			say "     Given that you've thoroughly burned your bridges with these two, you don't think talking would get you very far.";
		[
		else if "Fuckbuddy Rejection - Indifference" is listed in Traits of Kerr & Talov or "Fuckbuddy Rejection - Acceptance" is listed in Traits of Kerr & Talov:
			say "     As you approach and say hello, the two satyrs acknowledge your presence and give you a somewhat sad wave, but that's about it. They do not seem to have anything to talk about with you, preferring to keep their distance.";
		]
		else:
			say "     Waving to catch the attention of the two satyrs again, you gesture towards the double doors leading to the stairs and receive a nod. After some shuffling through the crowds, all three of you make your way to the private gym in the basement, where you can talk and understand each other at halfway normal volume.";
			say "[Kerr & Talov TalkMenu]";

to say Kerr & Talov TalkMenu:
	let DoneTalking be false;
	LineBreak;
	say "     [bold type]What do you reply to the satyr?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if PlayerFriended of Kerr & Talov is true: [only if the player hasn't made themselves a fuckbuddy = not a friend]
		choose a blank row in table of fucking options;
		now title entry is "Ask about the two of them";
		now sortorder entry is 1;
		now description entry is "You want to learn more about these two guys, who they are and where they came from";
	[]
	if PlayerFriended of Kerr & Talov is true: [only if the player hasn't made themselves a fuckbuddy = not a friend]
		choose a blank row in table of fucking options;
		now title entry is "Ask where they got the barrel";
		now sortorder entry is 2;
		now description entry is "Just where did they get this large barrel of satyr wine from anyways";
	[]
	if PlayerFriended of Kerr & Talov is true: [only if the player hasn't made themselves a fuckbuddy = not a friend]
		choose a blank row in table of fucking options;
		now title entry is "Ask what gave them the idea to come here, of all places";
		now sortorder entry is 3;
		now description entry is "There must be some reason why they specifically trekked to the college campus from downtown";
	[]
	if "Backstory Told" is listed in Traits of Kerr & Talov and "Rules Mentioned" is listed in Traits of Kerr & Talov and "Fuckbuddy Rejection - Indifference" is not listed in Traits of Kerr & Talov or "Fuckbuddy Rejection - Acceptance" is not listed in Traits of Kerr & Talov and "Fuckbuddy Rejection - Aggression" is not listed in Traits of Kerr & Talov:
		choose a blank row in table of fucking options;
		now title entry is "Ask them to remind you of their rules for fuckbuddies";
		now sortorder entry is 4;
		now description entry is "Get a reminder about their rules";
	[]
	if PlayerFriended of Kerr & Talov is true and "Backstory Told" is listed in Traits of Kerr & Talov and "Rules Mentioned" is listed in Traits of Kerr & Talov and "Fuckbuddy Option Off" is not listed in Traits of Kerr & Talov: [write a separate option if the player has become a good/best friend]
		choose a blank row in table of fucking options;
		now title entry is "Suggest that the three of you have sex";
		now sortorder entry is 5;
		now description entry is "Make advances at them";
	[]
	if PlayerFriended of Kerr & Talov is false and "Fuckbuddy Active" is listed in Traits of Kerr & Talov:
		choose a blank row in table of fucking options;
		now title entry is "Ask them to fuck you on the bench again";
		now sortorder entry is 6;
		now description entry is "Be spit-roasted by the two of them";
	[]
	if PlayerFriended of Kerr & Talov is false and "Fuckbuddy Active" is listed in Traits of Kerr & Talov:
		choose a blank row in table of fucking options;
		now title entry is "Stepping back from being fuckbuddies";
		now sortorder entry is 7;
		now description entry is "You're not content with how things are going";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about getting the party to go wild(er)";
	now sortorder entry is 8;
	now description entry is "Suggest ways to spread sex and debauchery in this place";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask about the two of them"):
					say "[Kerr & Talov Background]";
				else if (nam is "Ask where they got the barrel"):
					say "[Kerr & Talov Barrel]";
				else if (nam is "Ask what gave them the idea to come here, of all places"):
					say "[Kerr & Talov College]";
				else if (nam is "Ask them to remind you of their rules for fuckbuddies"):
					say "[Kerr & Talov Rules]";
				else if (nam is "Suggest that the three of you have sex"):
					say "[Kerr & Talov Fuckbuddy Choice]";
				else if (nam is "Ask them to fuck you on the bench again"):
					say "[Kerr & Talov Gym Spitroast Main]";
				else if (nam is "Stepping back from being fuckbuddies"):
					say "[Kerr & Talov Reject Fuckbuddy Role]";
				else if (nam is "Talk about getting the party to go wild(er)"):
					say "[SatyrFratSexMenu]";
					now DoneTalking is true;
				if DoneTalking is false:
					say "[Kerr & Talov TalkMenu]"; [looping back to continue talking]
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Having had enough of talking with the satyrs, you excuse yourself. Smiling and nodding to you, the two of them climb back up the stairs to the ground floor, with you following right after. Soon, the three of you are right where you started, in the living room of the frat house.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Kerr & Talov Background:
	say "     Hearing your question about their background, Talov smiles and gives a little nod. 'I can see why you'd want to get to know more about us. We met recently and all that. Let's see where best to start.' Pressing his lips together as he thinks, the satyr then looks up at Kerr, with a happy smile appearing on his face immediately. 'Okay, let's do the basics first. I'm Talov Byrne, and this sexy mountain of a man is my husband, Cian Kerrigan.' There is a little huff from the brown-furred satyr at those last words, with him rolling his eyes a little bit, but then putting on a friendly expression as he says, 'Just Kerr is fine, bro. Only my dad and mom use the first name, when they want to nag me about something.' Putting a hand on his husband's muscular arm to soothe his slight irritation with a gentle stroke, to be answered by a small flex of Kerr's arm around him, Talov continues, 'I still think it's a beautiful name. But yeah, please just call him Kerr.'";
	say "     Talov looks at you and gives a little nod to go ahead with using his partner's preferred name, as he himself does to make Kerr happy. Then the satyr continues, 'Anyways, just a short while ago, we were like any other two gay guys in this city. Just living our lives, working the daily grind. Kerr does, err... did, construction and I was one of the archivists in the big museum downtown.' By his expression and the somewhat sighing breath he takes, you can tell that Talov must have found his occupation in the place a bit boring. 'And that's where I was, dusting off an ancient piece of native American pottery when things began to go down with our current situation. I freely admit that it surprised the fuck out of me. I mean, the backrooms are locked, but someone was making a racket towards the entrance. Sounded like they brought a horse or something, hooves on the floor tiles. Wasn't I surprised when I stuck my head out of the room and saw three half-naked guys approach me - my colleague Lionel, Hughes the security guard, and some other dude.'";
	WaitLineBreak;
	say "     Kerr jumps in at that point, commenting, 'He must have thought his fantasies came true. Talov's shown me a pic or two of Hughes, that guy's absolute man-candy. There may have been a day or two on which my man came home all hot and bothered after watching Hughes take his shirt off in the summer and help with some lifting. Man, that was good sex afterwards, hah!' Grinning and stretching himself up a little to give the other satyr a kiss on the cheek, Talov adds, 'What can I say, I got a type. And I married the best of the muscle hunks.' Then he turns back to you and continues, 'Anyways, the guys were all satyrized, clothes askew and with shoes kicked off to reveal their hooves. They were holding what looked like some of the Mexican-colonial drinking cups from the exhibits, sloshing with liquid. Can you believe that they'd just grab historical artifacts like that?!' Chuckling a little, Kerr squeezes his partner's shoulder and throws in, 'Babe, it's alright. I'm sure they didn't mean no disrespect.'";
	say "     Nodding, Talov lets out a sigh, 'Guess being freshly transformed is a little bit of an excuse, fine. Also, they were pretty wasted. Must have chugged a bunch of the wine in their cups, and they drunkenly told me I just had to try it too. I really thought it was some sort of elaborate prank or something. You know, shock the socks off the gay archivist and tease him with some skin. While I was still frozen to stare, they closed in on me. I started to tell them to cut it out, and tried to pull off their 'disguises', only to be shocked when the fur didn't come off. In retrospect, I guess they thought I was groping them and they began rubbing up against me, with some very nice and hairy chests to be honest. Still, as I was trying to push em off and wanted to remind them that Kerr and I are an item, the first cup of satyr wine was poured down my throat, with more splashing all over myself and soaking me to my skin.'";
	WaitLineBreak;
	say "     'Well, long story short, the guys weren't really rapey or anything... just a bit overly enthusiastic, and well... pretty gay for two straight guys.' Sliding his arm around Talov in a bit of a protective gesture, Kerr sighs, 'Wish I'd chosen to bring you lunch that day. Then I could have shown them what was what and you wouldn't have needed to wrestle them off yourself.' His husband gives him a thankful smile, then goes on to say, 'Now, I had no plans to cheat on my hubby, despite my thoughts going a bit hazy at that point, and feeling pretty horny all of a sudden. So after pushing aside another attempt from Hughes to kiss me on the lips, I finally got through to them that I wasn't down for this and they let me go. Soaked in wine and dripping it over the floorplates, I sprinted out of there. Imagine my surprise when I got away from the freaky stuff going on inside the museum, and then stepping out the front gate and seeing a dragon-thing swoop down and snatch up a whole car in its talons. So it wasn't just in one place, but everywhere!'";
	say "     'That's when I started to really worry, about Kerr. What might be going on with him, and all that. Made a beeline straight away for home as fast as I could. There were a lot of weird things happening all around, but didn't care for anything except getting to him.' Giving the other man a comforting rub of his tail, the larger satyr takes over at that point. 'Meanwhile, I was just at home and listening to a radio show that was reporting about strange occurrences happening. Then I heard Talov shout my name and hurriedly throw open the door to the apartment. He stormed in and basically jumped me, wrapping his arms around me and burbling something about being happy I was safe, and satyrs at the museum, and the wine that had his clothes plastered to his skin. That's when it really hit me, that whatever was being talked about on the radio was actually real - because I saw that he had horns. Just little ones yet, but... horns, on his head, right here.' Blowing out his breath, the large man places a hand on Talov's hair, fingers gently rubbing the base of his horns.";
	WaitLineBreak;
	say "     'Ooh yeah, love when you do that, babe!' Talov almost purrs, clearly enjoying the touch. He even closes his eyes for a moment, just reveling in the feelings Kerr's caress gives him, before blinking them back open and focusing on you again. 'So yeah, I was still a bit of a mess at that point. Mind all blurry, and after worrying all the way home and then seeing him, safe and sound, I kinda went to pieces for a little while. As he said, I didn't make that much sense and... I guess that just woke his protector instincts or something, hah! Before I knew what was what, he'd thrown me over his shoulder and carried my wine-soaked self to the bathroom. The shirt came off, then my undershirt, and into the shower we went, him not even thinking about his own clothes as he wrenched on the hot water and gave me a scrub-down. Got stripped all the way, washed and dried, then he asked me to just sit down for a moment as he closed all the blinds, barricaded the front door and everything.'";
	say "     Kerr shrugs, 'What can I say, I was freaking out at that point. He was totally out of it, and not making any sense with what he was saying. Even the water didn't really sober him up either. It didn't help that I could literally see him changing before my eyes. He's always been pretty light in the body hair department-' 'Just how he likes it,' Talov throws in, stroking a hand over his own chest and winking at you. 'So it wasn't hard to see that something was going on about his legs. My man was getting more and more furry down there by the moment. It wasn't human hair either, no curl to it and whatnot. I didn't know what to do, so I just sat with him, held him tight and kept telling him and myself things were going to be okay. Guess at some point, we dozed off like that, on our sofa.'";
	WaitLineBreak;
	say "     Hugging Kerr with one arm, Talov takes over and says, 'Must have been a few hours later when I woke up again, feeling safe and secure in my hubby's arms. It was like nothing could have happened to me, if I was protected by those strong arms. Went through all sorts of weird stuff while asleep, so I kinda thought meeting the satyrs in the museum was part of it. You know, just a dream, and that it was over and I was just at home, with the one I love. So then I slid up a bit, and kissed his lips.' 'Best way to be woken up by far, I can tell you that. Makes ya feel like a fairytale prince,' Kerr adds in, then plants a quick peck on his husband's cheek. 'So, there we were, kissing each other and smiling, but I kept wondering why he was looking up at my hair again and again, so I tried to run a hand through it, and found my horns, fully grown as they are now. It was kinda frightening, how I didn't even notice them before then, as if they'd always been there my whole life. So I realized that what happened at the museum... actually happened, and our world was in the middle of changing quite a bit.'";
	say "     'Anyways, straining to remember everything with a mind that was much clearer after resting, I told Kerr all about what happened at the museum, and what flashes I could recall about the way back home.' Clearing his throat, Kerr takes over, 'I got a little angry, about those guys putting their hands on my man. Hell, I met Hughes and Lionel during one event or other at the museum. Seemed like normal people, and totally straight as well - and then I heard about em rubbing up against Talov, pouring wine into his mouth and all that.' Bumping his furry hip against Kerr's side with a smile on his face, Talov breaks him out of the rant and throws in, 'I really think they weren't in their right minds either. Freshly transformed, and moderately wasted. Remember, they didn't really do anything more and let me go.'";
	WaitLineBreak;
	say "     Visibly calming down, Kerr continues to say, 'After hearing the story about what happened, with him being... infected somehow, to become a satyr. At the time, we Had no idea how that could have happened, if it was just him being close to those other guys, or what else. I'd been wondering if I could or would catch it from him. But when that expression of fear came over his face, I realized that I didn't care at all. I'd be with him, no matter what. So, I kissed him back, and wrapped my arms around him tight. We started making out, and soon I was feeling his best piece poking me in the abs, hah!' Talov smirks at you and says with a wink, 'He grabbed it, and brushed his thumb over the head, really winding me up fiercely. Then he showed my that sexy, bearded grin I love so much, and asked me to fuck him. Things went a bit wild after that. Ya know, [']life-reaffirming bonding['] also known as pounding each other's brains out. We've always both been verse, but someone discovered just how much he likes having two handfuls of furry booty to squeeze as he pulls me deeper into him.'";
	say "     Flushing a little, Kerr adds with good-natured amusement, 'What can I say, he's just so loaded with energy now, and can just go on and on and on. Yeah, I might have developed a slight preference for bottoming now. No shame about it.' He lowers a hand to tickle the other satyr's side, teasing Talov back, before going on to say, 'It won't surprise you that by the time that day ended, we were both satyrs. Haven't regretted it for even a second, I can tell you that.' 'We did have some other fun surprises when exploring satyr-sex for the first time, but maybe that's something to talk about another time...' Talov adds with a wink at the end.";
	TraitGain "Backstory Told" for Kerr & Talov;

to say Kerr & Talov Barrel:
	say "     Having wondered where they got their large barrel of satyr wine from in the first place, you ask the two satyrs about it, which puts a proud grin on Kerr's face. He pushes his chest out a bit and nods to you, then says with a playful smirk on his face, 'Now, I don't want to claim all the credit for getting the barrel, however I made the most important contribution to it: Ya see, I popped the question for a certain man to marry me.' Confused about what he means, you look back and forth between the two of them. Kerr flushes a little as his joke seems to have fallen flat, clearing his throat and saying, 'What I wanted to say is Talov's not just sexy as fuck, but smart too. Tell us about it, babe!' With that, the muscular satyr slides an arm around his partner and pulls him close, then pats him on the chest with the free hand. Talov chuckles while rolling his eyes, shaking his head at the antics of his husband.";
	say "     Then he leans in against Kerr and snakes his left arm behind the other man, likely to grope him a little. 'Well, having a graduate degree in history did help a bit, yeah. You see, I started wondering what might be causing all of this. We had turned into beings basically plucked right out of myths, and just looking out the window from our place, there seemed an awful lot of [']otherworldly['] beings around all of a sudden. That got me thinking that there might be more to the old myths than just fancy stories. Something to investigate, for sure. I went through my books, but as I'd focused on pre-colonial and colonial American history for my degree, there were some limits to what was in there. Some native-American myths matched what was out there - saw a man stroll by with the head of a coyote, and others with tails and whatnot, but I really needed more research material.'";
	WaitLineBreak;
	say "     'For this part, I actually did help,' Kerr throws in, flexing his bicep in a demonstrative way. 'Wrestled a dog-dude into submission who tried to jump us on the way to the nearest library. Was a little bit off balance at first, as I didn't have feet anymore but hooves instead, and you have less grip on the ground with those, making a proper grapple harder. He got away from me at first, throwing me off and then tried to jump on top. That's when I learned that a proper back-kick as a satyr really packs a punch! He went down fast, hah! That puppy learned quick that he bit off more than he could chew! After that, I made sure to check our route for people lying in ambush, and to give everyone looking sketchy hard stares to frighten them off.' Talov comments, 'That's my sweet hubby, looking out for us! Good thing libraries apparently are too boring to draw any looters, otherwise I don't think I'd have gotten around do doing any research at all. I always loved watching him wrestle! The flex of those muscles, and seeing a shiny sheen of sweat on his chest. Mmmh!'";
	say "     Kerr's eyes widen in that moment and he stands up a little straighter, likely from having his buttocks pinched. With a chuckle, he tells his husband, 'Focus, babe. You're supposed to tell a story, remember?' Smiling and sticking out his tongue at the other satyr, Talov continues, 'Anyways, a few hours and two dozen books later, I had a list of rituals to try. First two were duds, but number three... that one called for befriending a satyr to lead you through the steps, and well, just look at us. So we tried it!' 'Dancing naked in a circle scratched into the dirt in a nearby park, you mean?' Kerr interrupts with a grin, then goes on to say, 'When we did that, it started. Beckoning sounds, of a pan flute. Always seeming to come from just out of sight - around a corner, behind a car, and so on. And it wasn't just someone playing tricks on us with a music player. Kinda scary, but exciting at the same time! Talov could hear it, as could I, but when we asked some of the friendlier-looking people on the street, they could not.'";
	WaitLineBreak;
	say "     Wiggling his eyebrows at you, expressing his excitement at having found something supernatural but real, Talov takes over the story. 'The music was having some... interesting effects too. I mean, we both felt pretty horny and were half-hard just from it alone. Nothing one couldn't control, like in some of the stories I'd read about satyrs being rather forceful and not taking no as an answer. Just kinda having a light buzz, and stroking a little on the side. So off we went, following the music, and that led us right to the museum! I've worked at that place for over two years and know it well. But when we were barely three rooms in to the exhibition spaces, the flute drew us to a hallway branching off to the side... which shouldn't have existed. There was supposed to be blank wall in that spot, with the outside of the building on the other side!'";
	say "     'Room after room as we went further, our surroundings became less the place I knew, and more something else. Darker, more primal and wild, with the polished stone of the museum giving place to walls of stone blocks, with torches on the walls, and artifacts laid out on tables looked almost... new, as if we were moving back through the centuries or something. Then finally, we saw a rough-cut wooden door standing partially open, as if to invite us inside. Stepping through it, there was no building at all behind, but a forest. Moss and soil underneath our hooves, and ancient trees all around, with an evening sky above.' Clearing his throat to get your attention, Kerr pulls his arm from around his husband and takes a step to the side, then explains, 'He's not joking when he says [italic type]ancient[roman type]! They were something else entirely! I mean...' he stretches his arms out to the sides, reaching an impressive width and showing off his muscular chest. 'It'd take about six of me to go around one of those trees! And they weren't any type of 'special' giant trees like redwoods either, but 'just' regular ones. Oak, cherry, cedar, and so on, all left to grow undisturbed, for a long, long time...'";
	WaitLineBreak;
	say "     'It was pretty awe-inspiring to be there, to be honest. Gives you a whole new feeling of respect for nature, if you're the youngest thing around by a few thousand years. We kinda just wandered through the wood for a while, gaping and staring at our surroundings, while the blue of the sky started to fade as night approached.' It's clear just how impressed both of the satyrs are, given their eager expressions as they simply returning to the place in memory. Talov steps forward to say, 'One would have thought being alone in an unknown forest would be frightening, especially after nightfall with unseen animals starting to make noise, but it just... felt like home. And it wasn't long before we saw some light, in the distance, behind the trees. It was a large bonfire, with the tall, dancing flames drawing us in. Above the crackling and burning, we could hear the voices of others already there, singing and laughing. And behind it all, the deep, full sound of the flute again, accompanied by drums and other instrument now.'";
	say "     'Stepping out between the trees into the large clearing, we saw what must have been a few dozen people, enjoying themselves in a roaring festival. Singing, eating, dancing, making music, or just fucking if the mood struck them. I'm talking satyrs, nymphs, dryads, centaurs, and all sorts of creatures I didn't even recognize here! All of them being jovial and happy as they enjoyed their celebration. It was really nice to see all of them, happy in their skin as they were, not like in the city we'd come from, where people were often still coming to terms with what they had become. They noticed us in turn, and just gave friendly waves and calls, ready to accept us into the party without any hesitation. It was nice to see them all like that, and be welcomed.' The two men before you share a happy smile, with Kerr taking Talov's hand in his own and giving it a squeeze.";
	WaitLineBreak;
	say "     Taking a deep breath, Talov then looks at you with an intense look in his eyes as he says, 'And in the midst of it all, leading the dance around the fire with his pipes playing a fast tune, was Pan himself. Just looking at him made it clear who and what he was. You could literally feel the power radiating off him, like the warm glow of the sun, and he was plenty sexy too.' Chuckling, Kerr quips, 'Careful, or I might get jealous of you drooling after our big satyr daddy! Guess I'll have to so something so you don't run off to him!' Then he puts his hands on Talov's hips and literally picks him up, drawing him close against his chest. The red-headed satyr laughs joyfully and wraps his legs around Kerr's body, then leans down to kiss him deeply. The two of them make out for a moment, giving each other plenty of tongue, before Kerr eventually clears his throat and nods his head in your direction. Talov blushes at little at having almost forgotten you were there, too entranced in the moment and enjoying himself while held in the strong arms of his husband.";
	say "     'I wanted to ask so many questions, about him, and what happened to us, and what was going on in the world, and... yeah, maybe just wanted to touch him too, and bury my fingers in the sexy hair curling on his chest. Though when we moved forward, the people in the crowd pretty much grabbed our hands and pulled us into the dancing. And that was fine really, the music felt so right to go along with, do dance with my hubby right beside me, and forget about anything else for a while.' Grinning widely, Kerr winks at you and adds, 'We had a really, really good time there. Danced for I don't know how long, into the night. Pan even acknowledged us, smiling and with a twinkle in his eyes waved us forward to dance to a solo he was playing! Then we had some of the food, and after that...'";
	WaitLineBreak;
	say "     Talov jumps in to say, 'One of the hunky satyr dudes approached us and just really casually asked if we could 69 each other, hah! You should have seen how red Kerr got in the face as he heard that!' Kerr flushes a little in embarrassment, with Talov just smiling at him and caressing his cheek and bearded face, showing that he's just teasing him good-naturedly. 'Guess what the satyr replied when Kerr told him we're an item? He cheerfully said 'Awesome! I'm really happy for you! Want me to service you both together then?' Kinda gave us something to think about, that eager 'free love' approach of the guy. I looked at Kerr, he looked at me, and... we realized that the dude was hot and each of us was kinda interested. So I grabbed his arm and pulled him to the side to have a little talk, if we were both alright with this. He was really sweet about it, telling me that he wouldn't do anything if I wasn't on board.' The two of them smile at each other, clearly happy about their relationship and comfortable with the decisions that they made back then.";
	say "     Clearing his throat, Kerr holds up one hand and counts points off his fingers. 'So, here's the rules we agreed on: First, we're only ever going to do stuff together. Its not cheating as long as we're both present, but anything else is off limits. Second, no kissing - these lips belong only to the two of us. Third, we're gonna be the dominant ones when it comes to others. Don't want to see my man beg anyone but me for dick. But power-bottoming is fine. Fourth, fuckbuddies are not friends, they're something to play with, but we'll never hang out with them.' Talov nods in confirmation, 'Yup. Them's the rules. We're together and aren't looking for a third. But boning a fine piece of ass together is fine. So... ten minutes later or so, when we were done talking things through, we went back over to the guy. Grabbed him by the shoulder and pushed him to his knees, right then and there. He was pretty into being used publicly, smiling ecstatically as we presented him with two dicks at once. Didn't really stay at blowjobs either...'";
	WaitLineBreak;
	say "     'Before long, we were spit-roasting him, and kissing each other as we filled the dude up from either end. That hunk really saw some action that night, I can tell you that! Hah, don't even know the guy's name, but that's best for a fuck buddy in the end. Got all the man to love I need right here and don't need another! The sex was pretty good though.' That said, he meets eyes with Kerr, who nods in confirmation, followed by the two of them kissing again. Setting his husband back onto his own hooves a moment later, Kerr turns his attention back to you. 'So there we lay, on a cushion of soft moss, sweaty and thoroughly worn out from the trip, dancing, fucking and all. That's when Pan stepped up close, looking a simple woodsman-type of way as he gazed down on our naked bodies and cum-matted fur, and smiled.'";
	say "     'Talov opened his mouth to ask him those questions, but the big satyr daddy just shook his head lightly, then said, 'You have already learned everything you need, young ones, simply by coming here. Just be free, live in the moment.' Yeah, yeah - I know it sounds pretty simple when I repeat those words, but believe me - when an actual god tells you something, that's really something!' Talov nods in confirmation, joining Kerr in trying to explain their conviction, 'It just kinda all fell into place then. The whole trip was his lesson. About believing in something, following where it led, and realizing that nature is so much greater than each of us. Then joining the celebration and experiencing its uncomplicated joy, including our fling with the satyr dude.'";
	WaitLineBreak;
	say "     'Pan seemed to approve of seeing our expressions when those insights struck us. 'Now you get it!' he said with a wide grin, making finger guns at the two of us. 'For so long, humans have become so depressingly rational, so controlled. Only very few would even listen to my song, far less follow it. But looking at you, things have clearly changed. Humans, but wearing the forms of my followers, and you calling out to me, then going all the way to come here.' Stroking his beard thoughtfully, he then added, 'Maybe it is about time, for the world to become wild once more. Less stale, and controlled. Yes, let's try that!' Nodding to himself, confident he made the right decision, Pan finally said, 'I'll give the two of you a present too. It will never run empty, as long as you believe.' Then he raised the flutes to his lips and started playing a slow, quieter song than before, which put us to sleep in fairly short notice.' Kerr then adds, 'When we woke up, we were in that circle we did the ritual in, in the park near our place. And the barrel was waiting for us, right there next to where we lay. So now you know the epic origin story of how we got it, hah!'";
	TraitGain "Rules Mentioned" for Kerr & Talov;

to say Kerr & Talov College:
	say "     Curiosity drives you to ask why they decided to come to the college campus, and specifically the PAN frat, which prompts Talov to reach out and slip his hand under Kerr's larger one, entwining their fingers. 'That's easy, it's where I met my hubby. Ehm, in college I mean, not this frat. Though there were some... memorable nights here.' With a little chuckle, Kerr raises their clasped hands up to kiss the back of Talov's hand, then looks at his husband and raises an eyebrow. 'Babe, I think they want a little bit more than just the short and cheesy answer. If it'd have been just that, we'd have gone over to... hm, what was your room number again? 203?' Talov smiles and replies amusedly, '206 actually. Hah, I can just imagine rocking up to the door there and knocking on it, then saying [']Hey, me and my man here want to relive our first time having sex. Could ya give us the room for half a day or so?['] Bet that'd go over smoothly. Well, or they might just want to watch.'";
	say "     'You naughty boy,' Kerr says half-jokingly and somewhat dreamily as he thinks back to the time in question. 'Anyways, after we transformed and saw how things went as more days passed since the start of the outbreak, it became really obvious that the world wouldn't just go back to the way it used to be. And well, then we went to go meet the great kahuna - big satyr-daddy Pan himself. His advice really struck a cord with Talov and me. [']Be free, live in the moment.['] he said. So we got to thinking, about when we did have the best time of our lives. And that really was in college.' Talov lets out a sigh, then explains, 'You know, before falling into the nine to five grind of having a normal job. Dreaming about making big archeologic discoveries, not sorting through other people's old finds gathering dust in museum drawers.' Kerr joins in with the words, 'And when I could still talk to my parents without it turning into a screaming match.' At that last mention, Talov slides an arm around his partner and gives him a supportive squeeze.";
	WaitLineBreak;
	say "     'You see, Kerr's folks... pushed him to go to college. Go for a business degree, make something out of himself, all that jazz.' Crossing his thick, muscular arms before his chest, the larger satyr shakes his head with a sad expression, 'I thought I might be bored to death from those courses. The only way I managed to stay sane was because of all the other stuff college life offered.' Talov smirks, 'He means sports, activities, and parties, lot of awesome parties, quite a few of them right here, because PAN frat is badass. And of course meeting yours truly and falling head over heels in love.' 'Sassy smartass,' Kerr comments with a smile on his face, then adds in a more serious tone, 'A year later, when I had gathered the courage to tell them I was dropping out, things went really spectacularly bad. Shouted quote from my mom, 'That degenerate calling himself your boyfriend talked you into throwing your life away, didn't he?!' Those bridges aren't just burned, they're ashes. But honestly, I was much happier afterwards, doing work with my hands, in construction.'";
	say "     'There you have it, that's the whole background for it - it was a better time, a simpler time, and with the world so very different now, we agreed to try reclaiming it for ourselves. Why should the apocalypse only have downsides, eh? So far, that's going nicely.' Talov wraps up, then steps up close to Kerr's side and the two of them slide their arms around the other, giving you a friendly nod.";
	TraitGain "Family Trouble" for Kerr & Talov;

to say Kerr & Talov Parents: [enable if "Family Trouble" is in their traits]
	say "...";

to say Kerr & Talov FirstSatyrFuck: [enable if "Backstory Told" is in their traits]
	say "...";
	[ slow start, building up ]
	[ caressing, following the transformation and whatnot ]
	[ at the end: ram-horn handles while fucking ]

to say Kerr & Talov Rules: [enable if "Rules Mentioned", "Backstory Told" is in their traits]
	if PlayerFriended of Kerr & Talov is true:
		say "     Talov smiles and nods to you, then says, 'Sure thing! Just as a reminder, we came up with these when a sexy satyr hunk made an offer to have fun during our visit with Pan. We both found him pretty hot and we wanted to go for it, but one doesn't just jump some dude's bones without talking things through with your husband, you know?' That said, he slips his arm around Kerr and gives him a squeeze, followed by letting the hand wander down and groping the large and muscular satyr's ass. The two of them smile at each other, clearly happy about their relationship and comfortable with the decisions that they made back then. Clearing his throat, Kerr holds up one hand and counts points off his fingers. 'So, here's the rules we agreed on: First, we're only ever going to do stuff together. Its not cheating as long as we're both present, but anything else is off limits. Second, no kissing - these lips belong only to the two of us.'";
		say "     Apparently wanting to demonstrate, Talov hooks his hand behind Kerr's neck and pulls him in to plant a kiss on his lips, leading to a short moment of tongue-wrestling before they pull apart again. With a chuckle, Kerr returns to his count, 'Third, we're gonna be the dominant ones when it comes to others. Don't want to see my man beg anyone but me for dick. But power-bottoming is fine. Fourth, fuckbuddies are not friends, they're something to play with. It's nothing personal, just... it's not supposed to be a relationship, just sex. We only really want to be [']intimate['] with each other, ya know?' Talov nods in confirmation, 'Yup. Them's the rules. We're married and aren't looking for a third, so keeping a fuck-bud around isn't a good idea. Could get messy if someone became too used to each other. Much better if its just boning a fine piece of ass together with my hubby, and then we go our separate ways.' Kerr nods in confirmation, telling you that they both stand behind those words.";
	else:
		say "     Talov raises one eyebrow and gives you a mildly annoyed look. 'Do we have to explain this again to you? Fine. Rule one: We only do stuff together. Don't even suggest anything if Kerr isn't there, and vice versa.' Kerr speaks up at that point, adding, 'Rule two: No kissing. This guy is all mine! Rule three: We'll be the ones who decide what to do. And rule four: You and us are not friends. This is just sex. We told ya it's gonna be like this, so don't even try to make it into anything more!' Looking at their firm expressions, you can see that they mean it too. You picked this, and there isn't a way back.";
	[ Rules:                                           ]
	[                                                  ]
	[ For fuckbuddies:                                 ]
	[ - no kissing                                     ]
	[ - doggystyle preferred (them on the buddy)       ]
	[ - them being dominant                            ]
	[ - no touching Kerr's necklace                    ]
	[ - no fucking the PAN frat members                ]
	[                                                  ]
	[ For friends that fuck:                           ]
	[ - face to face sex okay                          ]
	[ - other positions fine                           ]
	[ - kissing okay (maybe, just during sex)          ]

to say Kerr & Talov Reject Fuckbuddy Role:
	say "     Putting on a serious expression, you tell the two satyrs that being their fuckbuddy isn't quite what you imagined it to be. As you add that you'd like to go back to the way things were before, the two of them tense up, looking at each other and seeming to communicate something through their expressions, and little gestures. Finally, Kerr shakes his head and clears his throat, then glances over to you. 'We can see how you might feel this way, but... there isn't really a way forward here. We warned you that we wouldn't do something like this - have sex with others and still treat them as friends afterwards. It... just isn't something we can or want to do, putting our marriage in jeopardy by allowing such a messy situation to continue.' Talov sighs and joins in, 'So yeah, as tired as those words may be: It's not you, its us. We can't do a casual friendship after having had sex with someone. So... no more fucking between us, but we can't suddenly start hanging out like nothing had happened either.'";
	say "     [bold type]How do you react?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Well, fuck them (not in a good way)!";
	say "     [link](2)[as]2[end link] - Shrug it off, it's their decision.";
	say "     [link](3)[as]3[end link] - Accept their view, they kinda have a point.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to get angry, [link]2[end link] to stay neutral, or [link]3[end link] to accept their choice.";
	if calcnumber is 1:
		LineBreak;
		say "     Anger rises within you as you listen to them. It really rubs you the wrong way that they think they can just use people to get off, then drop and reject them with a weak-ass excuse of 'we told you about this before'! You went out of your way to help them get into this stupid party in the first place, and this is how you get treated?! Listening to your rant, the two satyrs get red in the face, with Talov raising his hands in a somewhat defensive gesture and saying, 'Yes, you really helped us out. I - I'm sorry. It's a rotten thing for us to push you away like this, but... jealousy is poison for a relationship. Things just go... bad, if we give it the chance to crop up.' Almost growling under your breath, you see exactly what they're doing - trying to keep the moral high ground while they use others for their own enjoyment, then just discard them afterwards! What utter garbage!";
		say "     Seeing your furious expression, Kerr steps in at that point, moving his broad-shouldered body between you and his partner and focusing on you. 'I - uhm,' he says with a flushed face, unsure if he would need to defend the two of them physically. Still steaming mad, but not in a violent way, you insinuate that you've had enough of these two immature, entitled bitches. Maybe you should pick someone up from the party instead, at least they wouldn't be as loose and worn out as Kerr, or his limp-dicked wifey. With that, you whirl around and stomp up the stairs, leaving behind the two satyrs throwing sullen looks after you.";
		TraitGain "Fuckbuddy Rejection - Aggression" for Kerr & Talov;
	else if calcnumber is 2:
		LineBreak;
		say "     Shrugging your shoulders, you take in their words. It just is what it is, no skin off your back. Kerr and Talov look momentarily shocked at your total indifference to just ending things like this. You recount their words about just being fuckbuddies, not friends, and wave a dismissive hand in the air. They still look unsure if they should be relieved or slightly upset by the time you turn around and just walk up the stairs without a look back.";
		TraitGain "Fuckbuddy Rejection - Indifference" for Kerr & Talov;
	else if calcnumber is 3:
		LineBreak;
		say "     Looking at the two satyrs, you let out a sigh and then slowly nod to them. It's not great or pleasant that things are going to be like this between you, but you can accept their decision. Kerr and Talov have conflicted expressions on their faces, with a mixture of relief and regret. Silence stretches out somewhat uncomfortably between the three of you, until you finally share a look with each of them, then step forward and give them a consoling squeeze of the shoulder. This is just how things have to be, there are no bad feelings because of it from your end. Putting on a faint smile, you then tell them that you should all be getting back to the party and start walking up the stairs, with the satyrs following a little distance behind.";
		TraitGain "Fuckbuddy Rejection - Acceptance" for Kerr & Talov;
	remove "Fuckbuddy Active" from Traits of Kerr & Talov;

to say Kerr & Talov Fuckbuddy Choice:
	say "     Letting your gaze wander over the two of them for a moment, appreciating their practically naked glory, you saunter up to Kerr and Talov and slowly run a finger up along the side of the bigger satyr's arm. Giving his bicep a squeeze, you say how impressed you are with his physique, sharing a smile with the big man, then Talov as well, telling him that he really knew how to pick his man. Grinning at the compliment, Talov hones in on Kerr himself, wrapping taking the satyr's other arm by the hand and letting his free hand stroke sensually over Kerr's broad chest. 'You don't know the half of it - just look at these pecs! And the sexy expression on his face when his nipples are pinched, haha!' Continuing to banter a little with Talov, praising the assets of his amusedly listening husband, you soon sidle up to the red-headed satyr himself and place your hand on his side too. With a smile and a wink, adding that he's not bad at all himself, you ask if they might want to have some fun together with you[if Player is not barecrotch], adding a flirty comment about what you're packing in your pants[end if].";
	say "     Kerr raises his eyebrows, then looks over to Talov, who replies, ";
	if Player is purefemale: [female]
		if SubjectPro of Player is "he": [trans-males]
			say "'That's a nice compliment and all, but... you know, we're gay.' His husband still seems a little bit startled about a 'woman' hitting on him, giving Talov a thankful nod for what he said. Then he lets out a breath and admits, 'Ehm, well... some of us are a bit more gay than others. You see, Talov's experimented with women before we got together.' Clearing his throat, Talov throws in, 'Actually, he was a trans-male, just like [if Player is not defaultnamed][Name of Player][else]our friend here[end if]. I loved playing around with that guy's beard too.' He reaches out to Kerr as he says this, giving him a caressing scritch of his own board. The larger satyr raises an eyebrow and asks, 'Really? I never asked about your exes too much, but... that was a dude with a pussy?' You and Talov both chuckle and nod, before Talov adds, 'I am really only into men, after all.' Kerr seems to think about it for a second, then accepts Talov's viewpoint with a smile and adding, 'Well, I'm glad he didn't decide to keep you before I asked you out.'";
			WaitLineBreak;
			say "     Talov plants a kiss on Kerr's cheek and says, 'But yeah, sorry, didn't mean to interrupt. Do go on with what you were saying, babe.' Kerr turns his head and gives him a peck on the lips, then goes on to say, 'I just... don't think I could get excited in that way about [']you know what['] in this context. I know you're a guy, it's just... well, pussy doesn't do anything for me. Really sorry about that.' Stroking his arm consolingly, Talov adds, 'And that's perfectly fine. We're in this together, so if one of us isn't completely comfortable about something... that's off the table, I'm sorry to say.' Kerr gives you a bit of an apologetic glance at being the reason for shooting down your offer, then tries to guide the topic of conversation back towards more safe and secure areas.";
		else: [females]
			say "'That's a nice compliment and all, but... you know, we're gay.' His husband still seems a little bit startled about a woman hitting on him, giving Talov a thankful nod for what he said. Then he lets out a breath and admits, 'Ehm, well... some of us are a bit more gay than others. You see, Talov's experimented with women before we got together.' Clearing his throat, Talov throws in, 'Actually, he was a trans-male. I loved playing around with that guy's beard too.' He reaches out to Kerr as he says this, giving him a caressing scritch of his own board. The larger satyr raises an eyebrow and asks, 'Really? I didn't ask about your exes too much, but... that was a dude with a pussy?' Talov chuckles and nods, 'I am really only into men, after all.' Kerr seems to think about it for a second, then accepts Talov's viewpoint with a smile and adding, 'Well, I'm glad he didn't decide to keep you before I asked you out.'";
			WaitLineBreak;
			say "     Talov plants a kiss on Kerr's cheek and says, 'But yeah, sorry, didn't mean to interrupt. Do go on with what you were saying, babe.' Kerr turns his head and gives him a peck on the lips, then goes on to say, 'I just... don't think I could get excited in that way about [']you know what['] in this context.' Stroking his arm consolingly, Talov adds, 'And that's perfectly fine. We're in this together, so if one of us isn't completely comfortable about something... that's off the table, I'm sorry to say.' Kerr gives you a bit of an apologetic glance at being the reason for shooting down your offer, then tries to guide the topic of conversation back towards more safe and secure areas.";
		TraitGain "Trans Viewpoints Revealed" for Kerr & Talov;
	else if Player is male or Player is neuter or Player is herm: [male/neuter/herm]
		say "'Not saying we're opposed to it, but... do you really know what you're asking for? Remember, we got rules. And one important one is that we don't fuck around with friends. That's one road we're not going down, as it could get too messy. We don't want to add someone to our relationship, only a bit of fun, you know.' Kerr jumps in to add in a friendly but firm tone, 'So yeah, if you wanna go down this route, you'll have to be just a hookup. Not someone we spend any amount of time with. We'll hold you to that too, a deal's a deal. Understood?' He looks at you, waiting for you to nod, then explains, 'Okay, so... we only do stuff together. So both me and my man will be involved. At a minimum, the other one is gonna watch. No one-on-one's!' Talov adds, 'And I don't want anyone kissing him either, really. That's just too... intimate. In general, you'd be better off just letting us pick what to do.' As you raise your eyebrows a bit at Talov's rather vague, spur of the moment additions, Kerr gives you a firm look and clears his throat. 'Simply, said: Don't disrespect our relationship, or we'll have words!'";
		LineBreak;
		say "     [bold type]What do you decide to do?[roman type][line break]";
		say "     [link](1)[as]1[end link] - You don't want to sacrifice what might become a great friendship just to get laid.";
		say "     [link](2)[as]2[end link] - You'll have to think about this some more...";
		say "     [link](3)[as]3[end link] - You want those satyr cocks, even if it means it'll just be a casual thing!";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to withdraw your request (for good), [link]2[end link] to think about it some more, or [link]3[end link] to become their sex toy.";
		if calcnumber is 1:
			LineBreak;
			say "     Clearing your throat, you tell them that while sex with guys as sexy as them would be nice, you don't want anything to come between you. They're fun dudes, and you'd like to get to know them more and become good friends. Kerr smiles as you say this and replies, 'Glad you understand. It's... the right decision. You're not so bad yourself, and it would have been a shame to have to have to cut you out. But that's the way it'd have had to be - Talov and me are married after all, and we're not putting that in jeopardy for anything or anyone.' Talov steps forward, putting one hand on your shoulder, the other on Kerr's as he says, 'Enough of this topic now, eh? We talked about things and a decision was made. Let's turn to something that's more fun instead.'";
			TraitGain "Fuckbuddy Option Off" for Kerr & Talov;
		else if calcnumber is 2:
			LineBreak;
			say "     Clearing your throat, you tell them that you'll have to think about it some more, if you still want to go for it, given what comes with the decision. Talov shrugs and replies, 'As you wish. But remember, the rules are the rules - you gotta pick one or the other, friend or someone to fuck around with.' Kerr nods in confirmation, 'Yeah, I mean... if we become great friends or anything, it just won't be on the table anymore. We can't just turn off how you feel about people, if we got to know them well.'";
		else if calcnumber is 3:
			LineBreak;
			say "     Clearing your throat, you tell them that you need to feel their satyr cocks inside you, no matter what. If that comes with these conditions, you're ready to accept them. The two satyrs glance at each other and a small nod is exchanged between them. Then Kerr calls out, 'Okay then, [if Player is not naked]strip down and [end if]get your ass over there to that weightlifting bench and lay down on it!' Eyes resting expectantly on you, watching as you obey his commands, he lowers a hand to cup his furry balls, lightly caressing and rolling them between his fingers. Talov steps closer to him, running a hand up his side and then pinches the larger man's nipples with a lustful grin on his face. Kerr almost purrs in reaction, really liking his chest being played with, then wraps his arms around his partner and lifts him off his hooves and saying, 'Love when you wind me up like that, hobi!' Then he kisses the other satyr straight on the lips and starts making out with him.";
			say "     The two of them almost seem to forget about you for a little while, only having eyes for each other, before Talov eventually nods his head to the side to indicate you. 'You take the front, I take the back, babe? We both know how much you love throat-fucking, hah!' 'Perfect idea, let's do it!' Kerr replies, giving his partner a quick peck on the cheek before they start walking towards you side by side. 'Lie down on your back, lengthwise on the bed with your head over the edge. And get ready to relax your throat, you'll need it to take this bad boy!' Talov tells you, then puts a hand on his husband's rapidly hardening cock, wrapping his fingers around the girthy shaft and giving it a few strokes. As you get yourself into position, the two of them share a deep kiss before parting, with Talov going to straddle the bench while Kerr comes to stand tall over the end where your head is hanging in the air. Your gaze is immediately drawn to his thick, swinging shaft and the drop of pre-cum glistening at its cum-slit.";
			WaitLineBreak;
			say "     Letting out an aroused grunt, the muscular satyr looks down at you with lust in his eyes, then grasps the base of his erection and swings it to swat against your left cheek and right cheek. With his other hand, he slips two fingers into your mouth, going slow to test out how well you can take something. He pushes his digits in for a little, then withdraws to let you take a breath before going even deeper, carefully testing just how sensitive of a gag-reflex you might have. ";
			if AnalVirgin of Player is true:
				say "Meanwhile, at your other end, you can feel Talov's hands slide along your inner legs, parting them and making room for him to scooch closer on the smooth leather of the weightlifting bench. His hands continue to stroke over your naked body for a little while as he takes satisfaction in inspecting his soon to be cocksheath. [if Player is male]Talov cups your balls and gives them a light squeeze, then goes on to stroke your cock for a little while, just enough to get it hard and erect. 'Love the feeling of a hard cock in my hand,' he says with a chuckle. The next thing you feel is the warmth of his own shaft being pressed against yours, seemingly to measure and compare your length. [else if Player is herm]Talov cups your balls and gives them a light squeeze, then lets his fingers feel a little beneath them, finding your vagina. Slipping two fingers into it, he spreads the nether lips and teases your sensitive inside, while at the same time stroking your cock with the other hand, just enough to get it hard and erect. 'It's been a while since I felt a pussy. Thankfully, I remember exactly what to do with it. Not that you don't have a nice dick too,' he says with a chuckle. The next thing you feel is the warmth of his own shaft being pressed against yours, seemingly to measure and compare your length. [else]Talov strokes over your sexless crotch in wonder, feeling the flat expanse where your genitals once were. 'Wow, this is... new. But I bet you'll feel some pleasure, if I just find the right spot...' He slowly feels your crotch after that, trying to find sensitive spots to wind you up with. [end if][line break]";
				say "     With a chuckle, the red-headed satyr then moves on to slide a hand between your buttocks, its fingers bringing wetness against your skin as they seek out the trembling ring of your virgin hole. One digit presses in, then pauses as he realizes just how tight and resistant your virgin back door is. Clearing his throat loudly in a way that makes Kerr stop his motions, then saying, '[SubjectProCap of Player]'s a virgin,' prompts the other satyr to fully withdraw from your mouth. They share some meaningful looks with each other, then step around to the side of the bench, with Kerr helping you to sit up. The two of them stand before you, looking a little tense and concerned for you. Licking his lips, Talov then says, 'Uhm, it's... noticeable that you're pretty new to this, and all. How about... finding someone you really like, for your first time? If you really want to do stuff with us afterwards, that's fine and all. It just doesn't seem right to us if the sex you'll surely remember for the rest of your life would be just a casual fuck, alright?' Kerr nods to confirm what Talov is saying, putting a hand on your shoulder and looking you in the eyes. 'You'll really want your first time to be special, believe me. Or you'd regret it later.'";
				LineBreak;
				say "     As the sex seems to have been cancelled for right now, you [if Player is not naked]get dressed again and [end if]accept your gear as they hand it to you. 'Okay then, why don't we go back up to the party? And once you do find someone you want to have your first time with, do enjoy yourself to the fullest. If you're still interested after that, you can talk to us again. Or not, anything you feel comfortable with.' Both of them give you a friendly smile, showing that they really mean it, then Kerr pats you on the shoulder and the three of you climb the stairs to go back up to the living room.";
				TraitGain "Player Virgin Aware" for Kerr & Talov;
			else:
				say "Meanwhile, at your other end, you can feel Talov's hands slide along your inner legs, parting them and making room for him to scooch closer on the smooth leather of the weightlifting bench. His hands continue to stroke over your naked body for a little while as he takes satisfaction in inspecting his soon to be cocksheath. [if Player is male]Talov cups your balls and gives them a light squeeze, then goes on to stroke your cock for a little while, just enough to get it hard and erect. 'Love the feeling of a hard cock in my hand,' he says with a chuckle. The next thing you feel is the warmth of his own shaft being pressed against yours, seemingly to measure and compare your length. [else if Player is herm]Talov cups your balls and gives them a light squeeze, then lets his fingers feel a little beneath them, finding your vagina. Slipping two fingers into it, he spreads the nether lips and teases your sensitive inside, while at the same time stroking your cock with the other hand, just enough to get it hard and erect. 'It's been a while since I felt a pussy. Thankfully, I remember exactly what to do with it. Not that you don't have a nice dick too,' he says with a chuckle. The next thing you feel is the warmth of his own shaft being pressed against yours, seemingly to measure and compare your length. [else]Talov strokes over your sexless crotch in wonder, feeling the flat expanse where your genitals once were. 'Wow, this is... new. But I bet you'll feel some pleasure, if I just find the right spot...' He slowly feels your crotch after that, trying to find sensitive spots to wind you up with. [end if][line break]";
				say "     With a chuckle, the red-headed satyr then moves on to slide a hand between your buttocks, its fingers bringing wetness against your skin as they seek out the trembling ring of your hole. One digit presses in, slowly but firmly, sliding into your body to explore its warm embrace. At the same time, Kerr brings his cock to your lips, dabbing pre-cum on them with the dickhead. You flick your tongue out to taste it, enjoying the taste, then open your mouth obediently, allowing him to slide right into it. Talov works his magic to open you up with two, then three fingers, knowing just how much time he has to spend to prepare you before you feel his satyr cock brush against your opening instead. Talov's hands shift to grab hold of your thighs while he pushes his hips forward to make the head of his shaft sink into your rear entrance. There is a slight pause with just the mushroom head of his erection resting inside you, allowing you to feel the rapid beat of his heart in the throbs of his cock.";
				WaitLineBreak;
				say "     After a short pause to let you get used to his shaft, Talov rams in deep, making you buck and spasm on the bench as his long shaft penetrates your insides with an impatient thrust. Being spit-roasted between the two satyrs feels amazing, with one man's furry balls slapping your face with every push into your throat, the other railing your ass with wild abandon. Talov's relentless stimulation of your prostate has you [if Player is male]hard as a rock and leaking pre onto yourself[else]trembling in lust and arousal[end if], hands clamped around the legs of the bench to keep from being pushed back and forth from their vigorous thrusts. 'Not bad as a fuckhole, eh?' you can hear Kerr ask in a teasing, amused tone, with Talov humming back to him in satisfaction. 'Yeah, feels pretty amazing! So warm and tight around my dick!' 'Better than mine?' Kerr then adds, still in the same playful tone directed at his husband.";
				say "     'Nothing's better than your ass, babe!' Talov replies with full conviction in his voice. With that said, he leans forward, which pushes his shaft deep into your ass at the same time and makes you gurgle and choke around Kerr's cock in your mouth as the stimulation makes you lose focus for a moment. Vaguely at the edge of your vision, you see the pale-skinned arm of Talov hook behind Kerr's neck, no doubt to pull him into a loving kiss between the two of them. Not enough to just be stuffed from one end, you get another helping of Kerr's thick shaft pushing all the way into your throat, until his balls are literally pressed right against your face. Lying where you are, you hear slurps and kisses from them making out with each other, interspersed with them whispering sweet nothings to each other.";
				WaitLineBreak;
				say "     With a thick, hard shaft blocking your airways, you're starting to see stars before long. As desperation for the need to breathe is rising in your body, you start to reach out and tap the side of Kerr's hips three times to make yourself noticed. 'Oops,' Kerr comments, quickly withdrawing his shaft from down your throat and allowing you to gasp in a mouthful of air. The next time you open your moth though is to let out a whorish moan, as Talov picks the moment to start railing your ass again, sliding his prick in and out of your receptive hole. Kerr joins him a moment later, returning to face-fucking you with vigorous strokes. This time, the two of them do not slow down, simply becoming wilder and more energetic as they revel in having you to fuck at their hearts content. Having accepted this role for yourself, you enjoy being their willing cock-sheath and try to make the satyrs sexual experience an extra memorable one, squeezing tight around Talov's shaft and using your hands to caress Kerr's heavy balls.";
				say "     It doesn't take long before your efforts to please the satyrs are rewarded, as Talov [if Player is male]grabs hold of your own erection and begins to stroke it in rhythm with his own thrusts, [else if Player is herm]grabs hold of your own erection and begins to stroke it in rhythm with his own thrusts, while his crotch hits your pussy and clit with every thrust[else]starts to stroke your genderless but still sensitive crotch,[end if] winding up your own lust right along with theirs. The wild romp between the three of you builds up to an explosive finish, as Talov speeds up his movements by how close he himself is getting to an orgasm. In the end, he deliberately pushes you over the edge first, [if Player is male]aiming your cock to hose down your front with streaks of cum[else if Player is herm]aiming your cock to hose down your front with streaks of cum while femcum gushes from your pussy, soaking the fur of his crotch[else]his hand planted on your crotch and performing an oddly arousing tickle of one specific spot[end if], knowing full well that this makes your body tremble and flex around the two people already balls deep inside you. 'God, I love how this throat is gripping me now!' Kerr grunts and starts to rapidly hump your face, culminating in a first thick gush of cum shooting right into your stomach a moment later.";
				WaitLineBreak;
				say "     Talov himself isn't far behind, riding your ass with long and deep strokes while your inner muscles spasm around him. His energetic thrusts end in a hurried withdrawal, letting his throbbing shaft spray your panting front with long streaks of his cum. Kerr chuckles at the sight, asking, 'What brought that on? You love coming inside me.' Talov replies with a shrug, 'Just felt like it, I don't know. Maybe I wanted to mark the slut for everyone to see!' They laugh, and after the last spurt of his seed splashes onto you, Talov lines himself up with your back door, sliding back into you with a grunt in another balls-deep penetration. For a long moment, all you can focus upon are the two cocks in your body, until Kerr eventually withdraws almost reluctantly and allows you to breathe freely once more. Then he pushes forward again, dangling his furry balls right before your mouth and saying, 'Lick em, I love some aftercare when coming down from an orgasm!'";
				say "     The muscular satyr waits for you to please him some more, then at one point simply pulls away, walking out of your line of sight, likely to come to Talov's side, as you can hear them kiss and say, 'I love you,' followed by, 'I love you more, babe!' Before long, Talov pulls out of you with little fanfare, leaving you lying on the weightlifting bench, fucked-out, sticky and leaking semen from your asshole. 'Ain't half bad as a fuck,' you hear Talov say to you, followed by him bumping your leg with his furry knee. Then the two satyrs just leave, climbing up the stairs and joking with each other about getting back to the party.";
				NPCSexAftermath Player receives "OralCock" from Kerr & Talov;
				NPCSexAftermath Player receives "AssFuck" from Kerr & Talov;
				now PlayerFriended of Kerr & Talov is false; [Player unfriended, disabling most talk options]
				TraitGain "Fuckbuddy Active" for Kerr & Talov;

to say Kerr & Talov Gym Spitroast Main:
	say "     Clearing your throat, you tell them that you need to feel their satyr cocks inside you, no matter what. If that comes with these conditions, you're ready to accept them. The two satyrs glance at each other and a small nod is exchanged between them. Then Kerr calls out, 'Okay then, [if Player is not naked]strip down and [end if]get your ass over there to that weightlifting bench and lay down on it!' Eyes resting expectantly on you, watching as you obey his commands, he lowers a hand to cup his furry balls, lightly caressing and rolling them between his fingers. Talov steps closer to him, running a hand up his side and then pinches the larger man's nipples with a lustful grin on his face. Kerr almost purrs in reaction, really liking his chest being played with, then wraps his arms around his partner and lifts him off his hooves and saying, 'Love when you wind me up like that, hobi!' Then he kisses the other satyr straight on the lips and starts making out with him.";
	say "     The two of them almost seem to forget about you for a little while, only having eyes for each other, before Talov eventually nods his head to the side to indicate you. 'You take the front, I take the back, babe? We both know how much you love throat-fucking, hah!' 'Perfect idea, let's do it!' Kerr replies, giving his partner a quick peck on the cheek before they start walking towards you side by side. 'Lie down on your back, lengthwise on the bed with your head over the edge. And get ready to relax your throat, you'll need it to take this bad boy!' Talov tells you, then puts a hand on his husband's rapidly hardening cock, wrapping his fingers around the girthy shaft and giving it a few strokes. As you get yourself into position, the two of them share a deep kiss before parting, with Talov going to straddle the bench while Kerr comes to stand tall over the end where your head is hanging in the air. Your gaze is immediately drawn to his thick, swinging shaft and the drop of pre-cum glistening at its cum-slit.";
	WaitLineBreak;
	say "     Letting out an aroused grunt, the muscular satyr looks down at you with lust in his eyes, then grasps the base of his erection and swings it to swat against your left cheek and right cheek. With his other hand, he slips two fingers into your mouth, going slow to test out how well you can take something. He pushes his digits in for a little, then withdraws to let you take a breath before going even deeper, carefully testing just how sensitive of a gag-reflex you might have. ";
	say "Meanwhile, at your other end, you can feel Talov's hands slide along your inner legs, parting them and making room for him to scooch closer on the smooth leather of the weightlifting bench. His hands continue to stroke over your naked body for a little while as he takes satisfaction in inspecting his soon to be cocksheath. [if Player is male]Talov cups your balls and gives them a light squeeze, then goes on to stroke your cock for a little while, just enough to get it hard and erect. 'Love the feeling of a hard cock in my hand,' he says with a chuckle. The next thing you feel is the warmth of his own shaft being pressed against yours, seemingly to measure and compare your length. [else if Player is herm]Talov cups your balls and gives them a light squeeze, then lets his fingers feel a little beneath them, finding your vagina. Slipping two fingers into it, he spreads the nether lips and teases your sensitive inside, while at the same time stroking your cock with the other hand, just enough to get it hard and erect. 'It's been a while since I felt a pussy. Thankfully, I remember exactly what to do with it. Not that you don't have a nice dick too,' he says with a chuckle. The next thing you feel is the warmth of his own shaft being pressed against yours, seemingly to measure and compare your length. [else]Talov strokes over your sexless crotch in wonder, feeling the flat expanse where your genitals once were. 'Wow, this is... new. But I bet you'll feel some pleasure, if I just find the right spot...' He slowly feels your crotch after that, trying to find sensitive spots to wind you up with. [end if][line break]";
	say "     With a chuckle, the red-headed satyr then moves on to slide a hand between your buttocks, its fingers bringing wetness against your skin as they seek out the trembling ring of your hole. One digit presses in, slowly but firmly, sliding into your body to explore its warm embrace. At the same time, Kerr brings his cock to your lips, dabbing pre-cum on them with the dickhead. You flick your tongue out to taste it, enjoying the taste, then open your mouth obediently, allowing him to slide right into it. Talov works his magic to open you up with two, then three fingers, knowing just how much time he has to spend to prepare you before you feel his satyr cock brush against your opening instead. Talov's hands shift to grab hold of your thighs while he pushes his hips forward to make the head of his shaft sink into your rear entrance. There is a slight pause with just the mushroom head of his erection resting inside you, allowing you to feel the rapid beat of his heart in the throbs of his cock.";
	WaitLineBreak;
	say "     After a short pause to let you get used to his shaft, Talov rams in deep, making you buck and spasm on the bench as his long shaft penetrates your insides with an impatient thrust. Being spit-roasted between the two satyrs feels amazing, with one man's furry balls slapping your face with every push into your throat, the other railing your ass with wild abandon. Talov's relentless stimulation of your prostate has you [if Player is male]hard as a rock and leaking pre onto yourself[else]trembling in lust and arousal[end if], hands clamped around the legs of the bench to keep from being pushed back and forth from their vigorous thrusts. 'Not bad as a fuckhole, eh?' you can hear Kerr ask in a teasing, amused tone, with Talov humming back to him in satisfaction. 'Yeah, feels pretty amazing! So warm and tight around my dick!' 'Better than mine?' Kerr then adds, still in the same playful tone directed at his husband.";
	say "     'Nothing's better than your ass, babe!' Talov replies with full conviction in his voice. With that said, he leans forward, which pushes his shaft deep into your ass at the same time and makes you gurgle and choke around Kerr's cock in your mouth as the stimulation makes you lose focus for a moment. Vaguely at the edge of your vision, you see the pale-skinned arm of Talov hook behind Kerr's neck, no doubt to pull him into a loving kiss between the two of them. Not enough to just be stuffed from one end, you get another helping of Kerr's thick shaft pushing all the way into your throat, until his balls are literally pressed right against your face. Lying where you are, you hear slurps and kisses from them making out with each other, interspersed with them whispering sweet nothings to each other.";
	WaitLineBreak;
	say "     With a thick, hard shaft blocking your airways, you're starting to see stars before long. As desperation for the need to breathe is rising in your body, you start to reach out and tap the side of Kerr's hips three times to make yourself noticed. 'Oops,' Kerr comments, quickly withdrawing his shaft from down your throat and allowing you to gasp in a mouthful of air. The next time you open your moth though is to let out a whorish moan, as Talov picks the moment to start railing your ass again, sliding his prick in and out of your receptive hole. Kerr joins him a moment later, returning to face-fucking you with vigorous strokes. This time, the two of them do not slow down, simply becoming wilder and more energetic as they revel in having you to fuck at their hearts content. Having accepted this role for yourself, you enjoy being their willing cock-sheath and try to make the satyrs sexual experience an extra memorable one, squeezing tight around Talov's shaft and using your hands to caress Kerr's heavy balls.";
	say "     It doesn't take long before your efforts to please the satyrs are rewarded, as Talov [if Player is male]grabs hold of your own erection and begins to stroke it in rhythm with his own thrusts, [else if Player is herm]grabs hold of your own erection and begins to stroke it in rhythm with his own thrusts, while his crotch hits your pussy and clit with every thrust[else]starts to stroke your genderless but still sensitive crotch,[end if] winding up your own lust right along with theirs. The wild romp between the three of you builds up to an explosive finish, as Talov speeds up his movements by how close he himself is getting to an orgasm. In the end, he deliberately pushes you over the edge first, [if Player is male]aiming your cock to hose down your front with streaks of cum[else if Player is herm]aiming your cock to hose down your front with streaks of cum while femcum gushes from your pussy, soaking the fur of his crotch[else]his hand planted on your crotch and performing an oddly arousing tickle of one specific spot[end if], knowing full well that this makes your body tremble and flex around the two people already balls deep inside you. 'God, I love how this throat is gripping me now!' Kerr grunts and starts to rapidly hump your face, culminating in a first thick gush of cum shooting right into your stomach a moment later.";
	WaitLineBreak;
	say "     Talov himself isn't far behind, riding your ass with long and deep strokes while your inner muscles spasm around him. His energetic thrusts end in a hurried withdrawal, letting his throbbing shaft spray your panting front with long streaks of his cum. Kerr chuckles at the sight, asking, 'What brought that on? You love coming inside me.' Talov replies with a shrug, 'Just felt like it, I don't know. Maybe I wanted to mark the slut for everyone to see!' They laugh, and after the last spurt of his seed splashes onto you, Talov lines himself up with your back door, sliding back into you with a grunt in another balls-deep penetration. For a long moment, all you can focus upon are the two cocks in your body, until Kerr eventually withdraws almost reluctantly and allows you to breathe freely once more. Then he pushes forward again, dangling his furry balls right before your mouth and saying, 'Lick em, I love some aftercare when coming down from an orgasm!'";
	say "     The muscular satyr waits for you to please him some more, then at one point simply pulls away, walking out of your line of sight, likely to come to Talov's side, as you can hear them kiss and say, 'I love you,' followed by, 'I love you more, babe!' Before long, Talov pulls out of you with little fanfare, leaving you lying on the weightlifting bench, fucked-out, sticky and leaking semen from your asshole. 'Ain't half bad as a fuck,' you hear Talov say to you, followed by him bumping your leg with his furry knee. Then the two satyrs just leave, climbing up the stairs and joking with each other about getting back to the party.";
	NPCSexAftermath Player receives "OralCock" from Kerr & Talov;
	NPCSexAftermath Player receives "AssFuck" from Kerr & Talov;

to say Kerr & Talov Gym Spitroast LivingRoom Start:
	say "     Stepping up to Talov, you reach out and put your hand on his upper arm, giving it a caressing squeeze. The red-headed satyr throws you a grin, letting his gaze wander up and down over you. With how horny he and his husband usually are, it takes little effort to convince them that you need a thorough fuck, ";
	if "Player Virgin Aware" is listed in Traits of Kerr & Talov:
		say "especially now that you no longer are a virgin. Talov puts on an impish smile as you mention that, and he slides his hand down your back to feel you up for a second, before leaning in to his partner to whisper something in Kerr's ear. Before long the three of you are on your way down to the basement. ";
	else:
		say "and before long, the three of you are on your way down to the basement. ";
	say "Set up as a private gym, not much is going on down here during the party, with only [one of]a frat guy and a college girl[or]two college dudes[or]a small group of college students[at random] already present, who seem to have sought the place out for some semi-private, drunken groping. With a wicked smile on their faces, they nod to you and then quickly slip into the [one of]shower room[or]sauna[at random] to continue, yielding the room for you to have your own fun. 'Hope they enjoy each other, despite our little interruption,' Kerr comments in his deep voice, chuckling.";
	say "[Kerr & Talov Gym Spitroast Main]";

Section 3 - Sex

instead of fucking Kerr & Talov:
	if daytimer is day:
		say "     The two satyrs are currently asleep and pretty dead to the world. [one of]You try poking Talov to get a reaction, but he only really turns away a little, curling in tighter against Kerr's chest. [or]You try poking Kerr to get a reaction, but he only moves a little in his sleep, pulling Talov closer to his chest. [at random][line break]";
	else:
		if PlayerMet of Kerr & Talov is false: [never talked to them]
			say "     You should really talk to them first...";
		else if "Fuckbuddy Option Off" is listed in Traits of Kerr & Talov: [discarded fuckbuddy option]
			say "     Thinking about asking the satyrs for sex, you remember that you already had that discussion with them and decided it wasn't worth losing their friendship over.";
		else if "Fuckbuddy Rejection - Aggression" is listed in Traits of Kerr & Talov: [ended fuckbuddy status, burn]
			say "     Given that you've thoroughly burned your bridges with these two, you don't think that would get you very far.";
		else if "Fuckbuddy Rejection - Indifference" is listed in Traits of Kerr & Talov or "Fuckbuddy Rejection - Acceptance" is listed in Traits of Kerr & Talov: [ended fuckbuddy status, cordial]
			say "     Having ended the sexual relationship you had with these two, you don't think asking for another go would get you far. They don't seem the types to be okay with an on again off again thing.";
		else if PlayerFriended of Kerr & Talov is true: [pre-fuckbuddy]
			say "     As you approach Talov and lean in to suggest sex in a loud voice, to overcome the blaring musing in here, he looks at you with a raised eyebrow. Then he replies, 'We need to talk about things first. Kerr, you and myself I mean,' adding a nod towards the door leading to the stairway.";
		else if "Fuckbuddy Active" is listed in Traits of Kerr & Talov:
			if Player is purefemale:
				say "     As you are about to approach Kerr & Talov for sex, you remember that they're two gay men. You might not be that well received if you don't have a cock of your own...";
			else:
				say "[Kerr & TalovSexMenu]";

to say Kerr & TalovSexMenu:
	say "     [bold type]Approaching the two satyrs, you think about what you want to ask them to do to you. [roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Be spit-roasted in the basement";
	now sortorder entry is 1;
	now description entry is "Take one satyr from either end";
	[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Be spit-roasted in the basement"):
					say "[Kerr & Talov Gym Spitroast LivingRoom Start]";
				now lastfuck of Kerr & Talov is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Changing your mind, you stop your approach and slowly push yourself through the crowd to where you started from.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


Kerr & Talov ends here.
