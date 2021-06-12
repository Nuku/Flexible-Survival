Version 3 of Toron by Gherod begins here.

"Adds Toron, the bartender of the Hellfire Club, to the game."

[Version 1 - Moved Toron to his own file, as it was getting cramped in Mogdraz's file]
[Version 2 - Added Tentacular Slushie as a drink. Buffed some drink effects, adjusting negatives accordingly.]
[Version 3 . Added the Tonics.]

postimport rule:
	if "Connected Hellfire Corridor" is listed in traits of Toron:
		connect Hellfire Corridor;
	if player is in Hellfire Corridor or player is in Hellfire Unknown or player is in Hellfire Dungeon or player is in Hellfire Cell One:
		connect Hellfire Corridor;

[***********************************************************]
Section 1 - Toron NPC
[***********************************************************]

ToronDoneTalking is a truth state that varies.[@Tag:NotSaved]

Table of GameCharacterIDs (continued)
object	name
Toron	"Toron"

Toron is a man. Toron is in Hellfire Lounge.
ScaleValue of Toron is 3. [human sized]
Cock Count of Toron is 1.
Cock Length of Toron is 9.
Ball Size of Toron is 4.
Ball Count of Toron is 2.
Cunt Count of Toron is 0.
Cunt Depth of Toron is 0.
Cunt Tightness of Toron is 0.
Nipple Count of Toron is 2. [2 nipples]
Breast Size of Toron is 0.
[Basic Interaction states as of game start]
PlayerMet of Toron is false.
PlayerRomanced of Toron is false.
PlayerFriended of Toron is false.
PlayerControlled of Toron is false.
PlayerFucked of Toron is false.
OralVirgin of Toron is false.
Virgin of Toron is false.
AnalVirgin of Toron is false.
PenileVirgin of Toron is false.
SexuallyExperienced of Toron is true.
MainInfection of Toron is "".
Description of Toron is "[ToronDesc]".
Conversation of Toron is { "<This is nothing but a placeholder!>" }.
The scent of Toron is "     Toron smells... like nothing. He's completely odorless. You can't help but think there's something quite odd about this fellow.".

to say ToronDesc:
	say "     You perceive Toron as a dark skin colored human with unnaturally bright pink (or purple, you are not sure) eyes, and no matter how much light is shed towards him, he always looks nearly pitch black. He also has no shadow of his own, which is quite odd. He is tall within the average scale and fairly slim, though you can see quite a lean form that looks attractive to the eye, with an incredibly handsome face that lures your gaze into infinity. However, he gives you this feeling of... uncertainty, like he isn't what he really looks like, and the occasional shadowy tentacle appearing right behind him to grab drinks and bottles out of his arms['] reach may help explain why you feel this way. He stands behind a counter all the time, but when he's not, you can see he wears tight leather pants.";
	if perception of player >= 19:
		say "     [bold type]Perception Bonus (19)[roman type]: [italic type]His shape dims like a very thick liquid when you look at him attentively for a long time. You try not to do that often, however, as his counter gaze almost seems to petrify you.[roman type][line break]";

[***********************************************************]
Section 2 - Toron Talk Menu
[***********************************************************]

instead of conversing Toron:
	say "     You come close to the bar counter, as Toron immediately turns his attention to you. 'Fancy a drink? Guaranteed to do wonders for your performance...' he says, his voice clear and low as if caressing your ears. He surely is charming.";
	say "[ToronTalkMenu]";

to say ToronTalkMenu:
	now ToronDoneTalking is false;
	say "     [bold type]Is there something you want from the Hellfire Club's bartender?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Order a drink";
	now sortorder entry is 1;
	now description entry is "Order a drink at the bar";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Order a tonic";
	now sortorder entry is 1;
	now description entry is "Have Toron craft a special tonic for you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Request an exotic escort";
	now sortorder entry is 1;
	now description entry is "Browse the exotic escorts catalog";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Recent events";
	now sortorder entry is 2;
	now description entry is "Request an update on what's going on";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 3;
	now description entry is "Ask Toron to tell you more about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His work";
	now sortorder entry is 4;
	now description entry is "Inquire him about his work";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Void Realm";
	now sortorder entry is 5;
	now description entry is "Ask about the void travelers";
	[]
	if Energy of Toron > 0:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 6;
		now description entry is "Bring up the obvious subject";
		[]
	if Energy of Toron > 0:
		choose a blank row in table of fucking options;
		now title entry is "History with Mogdraz";
		now sortorder entry is 7;
		now description entry is "Ask him about his relationship with Mogdraz";
	[]
	if resolution of Hellish Introduction > 1:
		choose a blank row in table of fucking options;
		now title entry is "About Xaedihr";
		now sortorder entry is 8;
		now description entry is "Ask if he knows Xaedihr";
	[]
	if Resolution of DamienIntro >= 5:
		choose a blank row in table of fucking options;
		now title entry is "About Damien";
		now sortorder entry is 8;
		now description entry is "Ask Toron about some details regarding the scavenger you met";
	[]
	if resolution of Ambush The Purifier < 99 and HP of Araqiel is 1 or HP of Araqiel is 2:
		choose a blank row in table of fucking options;
		now title entry is "About that odd Angel...";
		now sortorder entry is 9;
		now description entry is "He might like to know about the angel you've seen fucking demons";
	[]
	if Resolution of Ambush The Purifier > 7 and Resolution of Ambush The Purifier < 49:
		choose a blank row in table of fucking options;
		now title entry is "Mogdraz and Araqiel";
		now sortorder entry is 10;
		now description entry is "Ask Toron what he knows about the relationship between these two";
	[]
	if VRDarkTyrantTracker > -1:
		choose a blank row in table of fucking options;
		now title entry is "About what you unleashed in the Void";
		now sortorder entry is 11;
		now description entry is "He's not going to be happy about it... but maybe he can help you";
	[]
	if abyssal remnant is owned:
		choose a blank row in table of fucking options;
		now title entry is "Restore Abyssal Remnant";
		now sortorder entry is 12;
		now description entry is "Show Toron what is left of the sword you found in the Void Realm and hope for a restore";
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
				if (nam is "Order a drink"):
					say "[ToronTalkDrinks]";
				else if (nam is "Order a tonic"):
					say "[ToronTalkTonic]";
					now ToronDoneTalking is true;
				else if (nam is "Request an exotic escort"):
					say "[ToronTalkExoticEscortsMenu]"; [on Hellfire Workers file]
					now ToronDoneTalking is true;
				else if (nam is "Recent events"):
					say "[ToronTalkNews]";
					now ToronDoneTalking is true;
				else if (nam is "Himself"):
					say "[ToronTalkHimself]";
				else if (nam is "His work"):
					say "[ToronTalkWork]";
				else if (nam is "Void Realm"):
					say "[ToronTalkVR]";
				else if (nam is "Sex"):
					say "[ToronTalkSex]";
				else if (nam is "History with Mogdraz"):
					say "[ToronTalkMogdraz]";
				else if (nam is "About Xaedihr"):
					say "[ToronTalkXaedihr]";
				else if (nam is "About Damien"):
					say "[ToronTalkDamien]";
				else if (nam is "About that odd Angel..."):
					say "[ToronTalkPurifier]"; [on Araqiel file]
				else if (nam is "Mogdraz and Araqiel"):
					say "[ToronTalkMogdrazAraqiel]"; [on Araqiel file]
				else if (nam is "About what you unleashed in the Void"):
					say "[ToronTalkDarkTyrant]"; [on Fallen King file]
				else if (nam is "Restore Abyssal Remnant"):
					say "[ToronTalkAE]";
				wait for any key;
				if ToronDoneTalking is false:
					say "[ToronTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as the bartender continues his tasks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ToronTalkDrinks:
	now ToronDoneTalking is true;
	if HellfireDrinkTimer > 0 and "Created Sparkling Water" is not listed in traits of Toron:
		say "     You can't have another drink while the effects of the previous one persists. Try again later.";
		wait for any key;
		say "[ToronTalkMenu]";
	else if HellfireDrinkTimer > 0 and "Created Sparkling Water" is listed in traits of Toron:
		say "     You can't have another drink while the effects of the previous one persists, but you can have a Sparkling Water to cleanse the effects. Would you like that?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, drink some Sparkling Water.";
		say "     ([link]N[as]n[end link]) - No, you're fine as you are.";
		if player consents:
			Linebreak;
			say "[DrinkSparklingWater]";
			wait for any key;
			say "[HellfireClubDrinksMenu]";
		else:
			Linebreak;
			say "     If that is so, then you will have to try again later if you want to order another drink.";
			wait for any key;
			say "[ToronTalkMenu]";
	else:
		say "     You ask Toron for a drink at the bar. 'Very well. As you should know, drinks here are special. Their effects last [bold type]24 hours[roman type] and you cannot consume any other until it leaves your system, or it could potentially overload your body and cause addiction, uncontrollable sexual urges and possibly a significant decrease in your immunity system's effectiveness. A very nasty problem... The effects may be a physical or mental boost, depending on which drink you order, on top of alcohol, but I made in a way so that the drinks['] base effects metabolize more slowly. Just keep that in mind.";
		wait for any key;
		say "[HellfireClubDrinksMenu]";

to say ToronTalkTonic:
	now ToronDoneTalking is true;
	say "     Given Toron's expertise on drink making and strange artifacts, you ask him if he can craft you something to take and drink on the god. 'Well, it isn't usually my style, but I suppose. However, they are more of an utility drink, and come in small quantities. Perhaps you would find them useful, even so? I can give you a list of what I can make, right now.'";
	say "     Before he does that, however, he still adds something. 'Keep in mind that [bold type]you will have to hand over the items each time[roman type] you want a tonic. I must use them at higher concentration values, and Mogdraz is not too keen on giving these out for free. If you acquire the ingredients on your own, it's enough as payment.'";
	WaitLineBreak;
	say "[HellfireClubTonicCraft]";

to say ToronTalkNews:
	say "     You ask Toron to share some gossip, and also update you on recent events happening around the area. He leans over the counter and speaks low.";
	say "     [one of]'All kinds of people come and go from here, but they can't help themselves when they see the boss. Some build straight-up boners or find themselves wetting their pants... I wonder what is so attractive about Master Mogdraz...? Don't get me wrong, he's quite the sight... I just wonder if they can sense what's beyond his visage...'[or]'You wouldn't believe if I told you I've been asked to tentacle rape an anthro wolf, would you? Heh, what am I saying... Of course you would.'[or]'Mogdraz just had a special client, and he made a generous pay. What he wanted in exchange? To feel his navel. That was it.'[or]'Incubi and succubi are such a drag, sometimes. Flirting, flirting, and... oh, more flirting. And their thoughts? Literally useless. I suppose that's why we fight them. Well, [italic type]they[roman type] fight them, I just collect information.'[or]'Demon Brutes seem to be a problem around the mall's sewers. Have you been there? I wonder if they would make good cannon fodder...'[or]'There's this mega beast called Behemoth wandering around the Dry Plains who seems to be able to... slurp people in with their dicks and pussies? Very... odd. But... intriguing. Well, then again, there's this black goo tyrant in the Void...'[or]'I've heard of an imp dumping hell trash somewhere in the Warehouse District. What an odd place to do it, honestly.'[or]'Why are the Incubi swarming the College Campus? I'm wondering, since their original base is the Red Light District. Curious, is it not? What is that sorceress up to, now...?'[or]'Alpha huskies, alpha german shepherds, alpha this and that, all over the place preying on new additions to their packs... then they often come here to get dominated by an experienced demon. Oops. I wonder if we could turn them into hellhounds for profit...?'[or]'Those orcs at the Warehouse District, looking for new breeders... They have this really nice brew. But Mogdraz took an interest in their methods to increase population. I suppose we could run some experimentations ourselves with some of our... prisoners.'[or]'Have you met an Oni? Those are interesting demons... and pretty big ones, too. They quite often get me weak on the knees... it's what you call this leg bone thingie, right? Ugh, I never know. A blackfire demon like myself has no need for such... things.'[at random]";
	if HellfireOrcBrewTimer - turns > 4 and HellfireOrcBrewTimer is not 20000:
		say "     'Also, I've got a new drink, thanks to your offering of orc brew and orc cum. The [bold type]Orcish Bomber[roman type] has been added to the menu. Give it a try!'";
		now HellfireOrcBrewTimer is 20000;
	if HellfireBlackAleTimer - turns > 4 and HellfireBlackAleTimer is not 20000:
		say "     'Also, I've got a new drink, thanks to your offering of a sharp black tusk. The [bold type]Black Ale[roman type] has been added to the menu. Let me know if its taste isn't too exquisite... And if it doesn't give you a bellyache.'";
		now HellfireBlackAleTimer is 20000;
	if HellfireSparklingWaterTimer - turns > 4 and HellfireSparklingWaterTimer is not 20000:
		say "     'Also, I've got a new drink, thanks to your offering of a null essence. The [bold type]Sparkling Water[roman type] has been added to the menu. It should taste like... sparkling water, really. Nothing out of the ordinary. Can probably quench your thirst.'";
		now HellfireSparklingWaterTimer is 20000;

to say ToronTalkHimself:
	say "     Looking forward to know more about this strange demon, you ask him to tell you about himself. He looks flattered by your interest, but not entirely surprised. 'I get that question many times, in fact.' he replies, looking at you in the eye for a longer time than you're comfortable with. Then, you're somehow feeling relaxed... and safe... your thoughts suddenly vanishing from your mind and... Wait, what just happened? You return to your senses and find yourself confused, frantically looking around as Toron laughs. 'It is a dangerous question, too. Gives me enough time to pluck a secret from you.' Your eyes widen, as you understand that this was some kind of hypnosis he just performed on you. 'Ah, don't worry... It was nothing special. Maybe. That depends on how important it is for you.'";
	say "     He almost speaks in riddles, but he's still evading your question, so you redirect the conversation to that point. 'I am simply the bartender of the Hellfire Club, a loyal friend to Mogdraz... And someone whose bad side you don't want to be in. So... behave.' And those are the only things he says. Then, he's just staring at you with a sly smile, and his eyes are simply too irresistible to not stare back at... But remembering what happened just a while ago, it's probably for the best to not give in, else you want to accidentally let him know everything that is to know about you. 'They say the eyes are the soul's mirrors... careful.' Oh, and apparently he can read your thoughts.";

to say ToronTalkWork:
	say "     Knowing that the Hellfire Club is... not so simply just a club, the same should apply to its bartender. So you ask Toron a little more about it. 'My work here? Serving drinks... cleaning up and polishing glasses... Keeping everything as clean as possible... You have no idea how wild our clients get sometimes. There's cum, girl juices, even milk sometimes - yes, tit milk, I'm not even kidding! - covering the floor at the corners they take for a quick fuck, and then it stinks! Imagine those dogs, cats, foxes, bulls, wolfs, bears, horses, gorillas, all fucking around for an entire night, and you can imagine the stench. Why is the demon kink so popular...? I don't get it. Are we that alluring?! And the sexual proposals I get...! And not just to suck me off or eat my ass, no, they are attracted to my tentacles! MY TENTACLES!' As he says this, he plops a big fat one on top of the counter. 'Who would want this in their beavers and tacos? Or slurp on this? It's just a... shadowy thing. Honestly don't ask me what it's made of.'";
	say "     Sounds like you've triggered Toron's frustrations about his work and clientele. 'I apologize, I must have gotten a little worked up. This ain't so bad, though I often wonder why Mogdraz has brought me here. I am a simple demon, who feeds on secrets. I may be able to provide you with some... gossip or actually useful information. Just ask, as long as you remain in the good guys['] list.' He seems to be some sort of informant, besides being a bartender.";
	say "     [bold type]He might be very useful if you want to know things.[roman type][line break]";
	if Energy of Toron is 0:
		now Energy of Toron is 1;

to say ToronTalkVR:
	say "     Given the fact this Club ends up being the destination of many void travelers in the dimensional vicinity (or whatever they come from), you ask Toron a bit more about that. He does not seem too eager to inform you of anything specific, but he does start to speak. 'They come from the void, indeed. It was our point of arrival when we traveled from our former dimension. If you are curious about it, however...' - he makes a pause and eyes you with a very serious look - 'While I don't recommend it... You may find the entrance to the Void Realm past the door behind me. If anyone asks, say Toron let you in. But do be careful out there, that place is not for the faint of mind. Bring me any secrets you find.'";
	say "     It is a good thing you asked about the Void, or you would not have gained access to the Staff area of the Hellfire Club... Just head [bold type]west of the Hellfire Lounge[roman type] then proceed [bold type]north[roman type] to find the entrance to this mysterious realm.";
	TraitGain "Connected Hellfire Corridor" for Toron;
	connect Hellfire Corridor;

to say ToronTalkSex:
	say "     Given Toron's take on sexual proposals he gets, you're not quite sure if you should be asking this question, but you lose nothing in doing so. Still, you choose to ask the question softly, maybe starting with if he ever has any sex at all, given where he is working at. 'Sometimes I do... with people I like. Not just anyone. There aren't many I fancy... I like clear filled minds and beautiful eyes, those you can dive deep and get lost in them. I surely don't lose myself easily, however, but secrets are delightful.' You give him a quite confused look. 'Not many can handle me. Not many should be able to, even. I bond not only through flesh, but through mind. If that's your thing, protect your sensations and I might provide your joy and bliss, just don't feel overwhelmed. I would hate to have to fix you.";
	say "     It seems Toron is a very odd one... but you already knew that. Maybe he would let you do something with him?";
	if Libido of Toron is 0:
		now Libido of Toron is 1;
	if Energy of Toron is 1:
		now Energy of Toron is 2;

to say ToronTalkMogdraz:
	say "     Toron and Mogdraz work together, and he has mentioned the demon boss a lot of times throughout your conversations. So your curiosity brings you to this question, specifically, what kind of relationship they maintain. Asking the bartender about it, he looks to the side and leans over the counter, speaking in a lower tone. 'He fed me secrets, thus I was brought. Never underestimate the power of knowledge, but it can corrupt you if you don't know what to do with it...' Since that was pretty much not an answer to your question, you insist a little more. 'I'm a blackfire demon. I was brought from the darkest of flames in the hellfires. Mogdraz was the one who allowed that. Perhaps I was part of his plan to rebel against his former Lord... More I won't tell, lest you want to know too much, and be a danger to yourself.'";
	say "     You feel compelled to drop the subject.";

to say ToronTalkXaedihr:
	say "     Now that Xaedihr is known around the club, you figure you could ask Toron if he knows him, too. 'Xaedihr... Yes, I know him well. Too well. I'm not sure if he's told you that, but he is the heir of the Demon Lord in our world. His only son, who saw his father falling into a deeper greed for power, and actually becoming powerful enough to defy Hell itself. Poor kid has seen things... He's not even fully demon, his mother was a human who died giving him birth, as his father is quite an unimaginably strong entity. Never shed a tear for his lover, he was more interested in training Xaedihr to become his successor, and even fused him with an aspect of darkness, leaving him with permanent marks. The tattoo on his shoulder and arm... That's it. And this aspect can be summoned at will, as he has mastered it. Otherwise, the aspect would have taken control of his mind, and possibly to become the Lord's underling. Quite sad if that were to happen.'";
	say "     Seems like Toron knows a lot more about Xaedihr than even the half-demon himself. 'You saw how he brought down two of Mogdraz's best hellfire demons so easily? You've got a powerful companion on your side... and with a very delicate heart. His tough shell is merely for self-protection. Gain his trust, and you'll have a friend for life, but hurt him, and you'll... be having a bad time.' You thank Toron for sharing this information with you, to which he nods. 'Just keep it discrete. Secrets are not cheap.'";

to say ToronTalkDamien:
	say "     After having met Damien, you eventually realized he had ties with the Hellfire Club, and Toron could have known something about him, so you decide to forward some questions to the bartender. 'Ah... that one peculiar human... Yes, I know who he is. How could I've not...' - he replies, sounding a bit ironic - 'Ever since he had a Hellfire Draconic Special, he became somewhat famous around the club. That is, until he went crazy and began trying to set traps to catch demons. Poor thing, he never realized we could see him coming from miles away, and we do have scouts to detect dangers in the vicinity... Either way, he had a quite unique reaction to that drink which was unknown to me, and then I realized it had adverse effects when drank by someone vulnerable to the nanites.'";
	say "     You ask him more about that drink, just in case. 'The Hellfire Draconic Special is like a stronger variant of the Hellfire Swizzle, and it's a limited edition, mostly. It would be interesting to further test its effects on that human, but Mogdraz wouldn't let me do it on my own initiative... Perhaps someone else can, if the drink is ordered... Who knows.'";
	if Resolution of DamienIntro is 99:
		say "     It seems Toron would be interested in having Damien drink that special a few additional times, though as he will never be back, the bartender will not have that [']test subject['] he so much wants. Perhaps that is for the best.";
	else:
		say "     Is he actually suggesting...? 'No, I'm not suggesting anything. How preposterous.' Oh, right, he can read your thoughts. But you would never trick Damien into gulping down a transformative drink... Would you?";
		now Resolution of DamienTF is 1;

to say ToronTalkAE:
	say "     Given the extremely poor condition of the sword you pulled back in the Void Realm, you ask Toron if he knows what it is and if he can do something about it. 'Yes, I could restore the [']what you shouldn't have pulled from a completely and utterly isolated part of the Void Realm['] to its former glory. Not that I should, but whatever, what's done is done. Do you have null essences?' You suppose you've seen some already, but you have to ask how many he would need.";
	say "     'I would need around... [bold type]25 Null Essences[roman type] to restore this. Yes, that should be enough.'";
	if carried of null essence > 24:
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, you have what you need.";
		say "     ([link]N[as]n[end link]) - You are not ready to do this, yet.";
		if player consents:
			Linebreak;
			say "     Having enough of the stuff with you, it is time to restore this useless weapon into its glorious former shape. 'Very well, this shouldn't take long. Would you wait here?' he asks, as he takes the abyssal remnant and the pack of null essences with him to the back room.";
			ItemLoss null essence by 25;
			ItemLoss abyssal remnant by 1;
			WaitLineBreak;
			say "     You hear a lot of noise. Hammering, strange flashes, ominous whispers that you think it's just your imagination but never cease to be there, nonetheless, and time goes by... You glance around the lounge, play with your fingers, with a glass that's nearby, all while you anxiously wait for the results...";
			WaitLineBreak;
			say "     But soon enough, Toron returns, with a weapon in hand. A pretty normal sized sword, black in color and a very sharp blade, which also looks light enough to be handled well by anyone that doesn't have a lot of training with swords. 'What a formidable weapon... This will surely keep you safe in the Void. Well, everywhere, actually! It is a really, really good sword...' Toron compliments the now restored Abyssal Edge, as he handles it to you. 'Use it responsibly.'";
			say "     You are now in possession of the legendary [bold type]Abyssal Edge[roman type].";
			ItemGain abyssal edge by 1 silently;
			now Resolution of AbyssEdgeEnchantLevel is 19;
		else:
			Linebreak;
			say "     You tell Toron that you would like to postpone this, and he doesn't question you. 'Do what you think it is best.' he says, before returning to his duties.";
	else:
		WaitLineBreak;
		say "     A whole twenty five?! You don't have that many... 'Well, if you don't have them, I suppose I can't help you. We will be helpless against that beast, since you need the sword to actually have a chance at destroying him. Whatever you do, don't ever feed him any essences. Don't make him stronger... The world would fall, and that would be on you.' With that said, he returns to his duties.";
		say "     Was he referring to the Dark Tyrant being some sort of doombringer? If that's so, it would be a good idea to fix this as soon as possible, right?";

HellfireDrinkTimer is a number that varies. HellfireDrinkTimer is usually 0. [@Tag:NotSaved]
HellfireOrcBrewTimer is a number that varies. HellfireOrcBrewTimer is usually 20000. [@Tag:NotSaved]
HellfireBlackAleTimer is a number that varies. HellfireBlackAleTimer is usually 20000. [@Tag:NotSaved]
HellfireSparklingWaterTimer is a number that varies. HellfireSparklingWaterTimer is usually 20000. [@Tag:NotSaved]
HellfireTentacularSlushieTimer is a number that varies. HellfireTentacularSlushieTimer is usually 20000. [@Tag:NotSaved]
HellfirePeculiarLiqueurTimer is a number that varies. HellfirePeculiarLiqueurTimer is usually 20000. [@Tag:NotSaved]

HellfireMSTonicTimer is a number that varies. HellfireMSTonicTimer is usually 20000. [@Tag:NotSaved]

to say HellfireClubDrinksMenu:
	say "     Toron hands you a list with the drinks he has on stock. 'This is what I have right now, for a modest amount of [bold type]Obsidian Coins[roman type], of course...'";
	say "     Select which drink you want. Keep in mind that [bold type]most are alcoholic drinks, so their base effects will be applied together with your drunkiness state.[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Order a Hellfire Swizzle";
	now sortorder entry is 1;
	now description entry is "A drink that increases your might (+2 strength), and it is alcoholic. Costs [bold type]1 Obsidian Coin[roman type] to order";
	[]
	if "Created Orcish Bomber" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order an Orcish Bomber";
		now sortorder entry is 1;
		now description entry is "A drink that substantially increases your might, at the cost of accuracy (+3 strength, -1 dexterity), and it is a strong alcoholic drink. Costs [bold type]3 Obsidian Coin[roman type] to order";
	[]
	if "Created Heaven's Kiss" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order a Heaven's Kiss";
		now sortorder entry is 1;
		now description entry is "A drink that substantially increases your charisma (+3 charisma), and it is alcoholic. Costs [bold type]3 Obsidian Coin[roman type] to order";
	[]
	if "Created Black Ale" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order a Black Ale";
		now sortorder entry is 1;
		now description entry is "A drink that increases your physical stats at the cost of the mental ones (+2 strength, +2 dexterity, +2 stamina, -2 intelligence, -2 charisma, -2 perception), and it is a strong alcoholic drink. Costs [bold type]5 Obsidian Coin[roman type] to order";
	[]
	if "Created Tentacular Slushie" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order a Tentacular Slushie";
		now sortorder entry is 1;
		now description entry is "A drink that significantly increases your dexterity, but takes a moderate toll on your social skills (+5 dexterity, -2 intelligence, -2 charisma), and it has a negligible amount of alcohol. Costs [bold type]5 Obsidian Coin[roman type] to order";
	[]
	if "Created Peculiar Liqueur" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order a Peculiar Liqueur";
		now sortorder entry is 1;
		now description entry is "A drink that boosts your intellect significantly, but takes a moderate toll on your physical endurance (+4 intelligence, -2 strength, -2 stamina), and it is alcoholic. Costs [bold type]5 Obsidian Coin[roman type] to order";
	[]
	if "Created Sparkling Water" is listed in traits of Toron:
		choose a blank row in table of fucking options;
		now title entry is "Order a Sparkling Water";
		now sortorder entry is 1;
		now description entry is "A drink that is really good at quenching your thirst. It also eliminates any other drink effects and gets rid of alcohol in your system. Costs [bold type]1 Obsidian Coin[roman type] to order";
	[]
	if orc brew is owned and "Created Orcish Bomber" is not listed in traits of Toron and HellfireOrcBrewTimer is 20000:
		choose a blank row in table of fucking options;
		now title entry is "Show him the orc brew";
		now sortorder entry is 2;
		now description entry is "He might be interested in the orc brew";
	[]
	if sharp black tusk is owned and "Created Black Ale" is not listed in traits of Toron and HellfireBlackAleTimer is 20000:
		choose a blank row in table of fucking options;
		now title entry is "Show him the sharp black tusk";
		now sortorder entry is 2;
		now description entry is "He might be interested in the sharp black tusk";
	[]
	if null essence is owned and "Created Sparkling Water" is not listed in traits of Toron and HellfireSparklingWaterTimer is 20000:
		choose a blank row in table of fucking options;
		now title entry is "Show him the null essence";
		now sortorder entry is 2;
		now description entry is "He might be interested in the null essence";
	[]
	if loose tentacle is owned and "Created Tentacular Slushie" is not listed in traits of Toron and HellfireTentacularSlushieTimer is 20000:
		choose a blank row in table of fucking options;
		now title entry is "Show him the loose tentacle";
		now sortorder entry is 2;
		now description entry is "He might be interested in the loose tentacle";
	[]
	if strange-colored bean is owned and "Created Peculiar Liqueur" is not listed in traits of Toron and HellfirePeculiarLiqueurTimer is 20000:
		choose a blank row in table of fucking options;
		now title entry is "Show him the strange-colored bean";
		now sortorder entry is 2;
		now description entry is "He might be interested in the odd bean";
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
				if (nam is "Order a Hellfire Swizzle"):
					say "[DrinkHellfireSwizzle]";
				if (nam is "Order an Orcish Bomber"):
					say "[DrinkOrcishBomber]";
				if (nam is "Order a Heaven's Kiss"):
					say "[DrinkHeavensKiss]";
				if (nam is "Order a Black Ale"):
					say "[DrinkBlackAle]";
				if (nam is "Order a Tentacular Slushie"):
					say "[DrinkTentacularSlushie]";
				if (nam is "Order a Peculiar Liqueur"):
					say "[DrinkPeculiarLiqueur]";
				if (nam is "Order a Sparkling Water"):
					say "[DrinkSparklingWater]";
				if (nam is "Show him the orc brew"):
					say "[GiveToronOrcBrew]";
				if (nam is "Show him the sharp black tusk"):
					say "[GiveToronSharpBlackTusk]";
				if (nam is "Show him the null essence"):
					say "[GiveToronNullEssence]";
				if (nam is "Show him the loose tentacle"):
					say "[GiveToronLooseTentacle]";
				if (nam is "Show him the strange-colored bean"):
					say "[GiveToronStrangeBean]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as the bartender continues his tasks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DrinkHellfireSwizzle:
	if carried of obsidian coin < 1:
		say "     You don't have enough coins. This costs [bold type]1 Obsidian Coin.[roman type][line break]";
	else:
		ItemLoss obsidian coin by 1;
		say "     You make a request for a Hellfire Swizzle, a spicy drink served at ambient temperature, with ingredients containing something that probably comes from hellfire demons, though it's perfectly safe... allegedly. 'Right on.' says Toron, as he prepares the mix. Adding all the components of the drink into a mixer, he shakes its contents until it attains a pretty crimson red color, then pours it onto a flat, tall and narrow glass, decorated with a grapefruit and a cherry on top. 'Here you go' he says, sliding the glass towards you. The drink smells strong, kind of tingling your nose. Well, time to have a taste.";
		say "     The sensation is fiery, as expected, with a hint of sweetness to it, and a sensation similar to a hot variant of peppermint, making your mouth much hotter than before. Still, it's easily drinkable, and absolutely tasty, so you finish it off in a fairly short time. After you've had the whole thing, you feel invigorated with newfound strength.";
		FeatGain "Hellfire Swizzle";
		say "     Your [bold type]Strength has increased by 2[roman type] for the next [bold type]24 hours.[roman type][line break]";
		statchange "Strength" by 2 silently;
		addAlcPoints 2;
		now HellfireDrinkTimer is 8;
		decrease thirst of player by 7;

to say DrinkOrcishBomber:
	if carried of obsidian coin < 3:
		say "     You don't have enough coins. This costs [bold type]3 Obsidian Coins.[roman type][line break]";
	else:
		ItemLoss obsidian coin by 3;
		say "     You make a request for an Orcish Bomber, a powerful drink served at ambient temperature, made as an improved orc brew using components from orc cum, though it's perfectly safe... allegedly. 'Right on.' says Toron, as he prepares the mix. Adding all the elements of the drink into a mixer, he shakes its contents until it attains a very transparent white color, then pours it onto a flat, very short and narrow glass, served simply like a shot. 'Here you go. This one's strong.' he says, sliding the glass towards you. The drink smells faintly of orc, though nothing unbearable at all, being quite pleasing and soft to the nose... until you take a deeper whiff, and you nearly feel lightheaded. Well, time to have a taste.";
		say "     The flavor is very intense, a mix between sweet and salty, its texture slightly thick, just like a liquor. You drink it all it one go, and feel it burning down your throat, a sensation only increasing with time, before it starts subsiding. It leaves a bitter aftertaste on the back of your mouth. This is one very strange drink, but you can already feel its effects pumping your muscles a bit, as your movements get slightly harder.";
		FeatGain "Orcish Bomber";
		say "     Your [bold type]Strength has increased by 3, while your Dexterity has decreased by 1,[roman type] for the next 24 hours.";
		statchange "Strength" by 3 silently;
		statchange "Dexterity" by -1 silently;
		addAlcPoints 3;
		now HellfireDrinkTimer is 8;
		decrease thirst of player by 3;

to say DrinkHeavensKiss:
	if carried of obsidian coin < 3:
		say "     You don't have enough coins. This costs [bold type]3 Obsidian Coins.[roman type][line break]";
	else:
		ItemLoss obsidian coin by 3;
		say "     You make a request for a Heaven's Kiss, a suave drink served cold, made with fresh flavored ingredients such as mint, citrines and a hint of something sweet that is considered a [']secret ingredient[']... 'Right on.' says Toron, as he prepares the mix. Adding all the elements of the drink into a mixer, he shakes its contents until it attains a color between cyan and green, very opaque and bright, served in an elegant wide standing glass. 'Here you go. Hope you enjoy this one.' he says, sliding the glass towards you. The drink smells sweet and light, so good that you could just stay here and feel its scent for a good while, so pleasant and soft to your nostrils. Well, time to have a taste.";
		say "     The flavor is exactly what you expect, [italic type]heavenly[roman type]! It's not too sweet, nor too acid, there's just the right balance within those spectrums, and it gives you such a good time that you insist on slowly sipping through the drink. The aftertaste is fresh, and leaves you with an exceptionally good breath. You feel like you could charm anyone during a conversation.";
		FeatGain "Heaven's Kiss";
		say "     Your [bold type]Charisma has increased by 3[roman type] for the next 24 hours.";
		statchange "Charisma" by 3 silently;
		addAlcPoints 2;
		now HellfireDrinkTimer is 8;
		decrease thirst of player by 9;

to say DrinkBlackAle:
	if carried of obsidian coin < 5:
		say "     You don't have enough coins. This costs [bold type]5 Obsidian Coins.[roman type][line break]";
	else:
		ItemLoss obsidian coin by 5;
		say "     You make a request for a Black Ale, a strong drink served at ambient temperature, made with the remains of a Void Serpent's tusk and venom, safely distilled to provide a safe drink. 'Right on.' says Toron, as he prepares the mix. Adding all the elements of the drink into a mixer, he shakes its contents until it attains a very pitch black color, very opaque, served in a wide and short glass. 'Here you go. It shouldn't make you feel sick, but in any case... Let me know if it does. It's a tricky one to make.' he says, sliding the glass towards you. The drink smells awfully, you're not going to lie about that... the scent burns through your nostrils and it makes you shed a tear. Maybe the taste isn't so bad?";
		say "     When you take a sip, you realize it doesn't taste as bad as it smells. It is very bitter, almost like coffee, but leaves a tiny bit of a tingling sensation and a taste of alcohol. Up to you to decide if this is to your liking, but it surely does make your body feel stronger... Your mind, however, feels a little woozy after you are finished with the drink.";
		FeatGain "Black Ale";
		say "     Your [bold type]Strength, Dexterity and Stamina has increased by 2, while your Intelligence, Perception and Charisma has decreased by 2[roman type] for the next 24 hours.";
		statchange "Strength" by 2 silently;
		statchange "Dexterity" by 2 silently;
		statchange "Stamina" by 2 silently;
		statchange "Intelligence" by -2 silently;
		statchange "Perception" by -2 silently;
		statchange "Charisma" by -2 silently;
		addAlcPoints 3;
		now HellfireDrinkTimer is 8;
		decrease thirst of player by 3;

to say DrinkTentacularSlushie:
	if carried of obsidian coin < 5:
		say "     You don't have enough coins. This costs [bold type]5 Obsidian Coins.[roman type][line break]";
	else:
		ItemLoss obsidian coin by 5;
		say "     You make a request for a Tentacular Slushie, an ice drink served cold, made with the remains of a Tentacle Abomination's... questionable parts? Tendrils? Something weird like that, all safely distilled to provide a safe drink. 'Right on.' says Toron, as he prepares the mix. Adding all the elements of teh drink into a mixer, he shakes its contents until it attains a dark purple color, slightly translucid, and serves it in a tall and wide glass. 'Here you go. It shouldn't make you feel sick, but in any case... Let me know if it does. That was a hard one to make it remotely tasty.' he says, sliding the glass towards you. The drink smells pretty neutral, perhaps because it is further dilluted in water and ice. Perhaps you should be trusting Toron's mixing skills by now.";
		say "     When you take a sip, you realize it's freshness is actually soothing. Something in it tastes salty and somewhat similar to algae, but somehow, it blends perfectly well with the ice, providing you with the sensation of a gentle sea breeze. Up to you to decide if this is to your liking, but it surely makes you feel... more agile, faster to move and react to things. Your fingers even feel more precise as a result, but somehow you lose some of your ability to focus on one thing at a time.";
		FeatGain "Tentacular Slushie";
		say "     Your [bold type]Dexterity has increased by 5, while your Intelligence and Charisma has decreased by 2[roman type] for the next 24 hours.";
		statchange "Dexterity" by 5 silently;
		statchange "Intelligence" by -2 silently;
		statchange "Charisma" by -2 silently;
		addAlcPoints 1;
		now HellfireDrinkTimer is 8;
		decrease thirst of player by 3;

to say DrinkPeculiarLiqueur:
	if carried of obsidian coin < 5:
		say "     You don't have enough coins. This costs [bold type]5 Obsidian Coins.[roman type][line break]";
	else:
		ItemLoss obsidian coin by 5;
		say "     You make a request for a Peculiar Liqueur, a strong beverage with condensed extract from one of the strange colored beans you've found among the Peculiar Summoner's stash. Somehow, Toron managed to acquire more of those and build up a mechanism to extract their juice in order to fabricate the drink. 'Right on.' he says, while heading to prepare the mix. He grabs a bottle a pours some of it in a small, short glass, handling it over to you. 'The taste will vary, but the effects should be about the same. It is a strange ingredient, but also very popular around here... And people seem to become suddenly more intelligent. Odd.' explains Toron, waiting for you to accept the drink. It smells [one of]sweet[or]bitter[or]slightly acidic[or]marvelously perfumed[or]like nothing[or]awfully[or]terribly[or]interestingly[or]very sexual, for some odd reason you cannot quite explain[at random], and the color shines differently depending on the light's angle.";
		say "     When you take a sip, you experience its taste... And you are confused. It's like it tasted like everything and nothing at the same time. Toron notices your intrigued expression. 'Uh... Some people, rather peculiar people, experience all the possible tastes at the same time. It is a rare effect.' Well, it seems you are one of those people, because you had no idea how it tasted like, even after drinking the whole thing. But you have certainly grown smarter as a result. You know that because you find yourself making interesting compositions of very complex theories in your mind for no reason at all.";
		FeatGain "Peculiar Liqueur";
		say "     Your [bold type]Intelligence has increased by 4, while your Strength and Stamina has decreased by 2[roman type] for the next 24 hours.";
		statchange "Intelligence" by 4 silently;
		statchange "Strength" by -2 silently;
		statchange "Stamina" by -2 silently;
		addAlcPoints 2;
		now HellfireDrinkTimer is 8;
		decrease thirst of player by 1;

to say DrinkSparklingWater:
	if carried of obsidian coin < 1:
		say "     You don't have enough coins. This costs [bold type]1 Obsidian Coin.[roman type][line break]";
	else:
		ItemLoss obsidian coin by 1;
		say "     You make a request for a Sparkling Water, a very plain drink that consists of water with sparkles. Tasteless, but refreshing and at room temperature, it quenches your thirst and cleanses your body. 'Right on' say Toron, as he prepares the mix. Adding the water to the glass and a single piece of null essence into it, he then shakes the drink just enough so that the bubbles cover the entire liquid, then adds a drop of some essence he has available. 'This is something I developed to counter the sickening effect of the null essences. Hope you enjoy this one.' he says, sliding the glass towards you. The drink has no smell either, and it stings your nose if you breathe it in too close, just like sparkling water. Well, time to drink it.";
		say "     It is indeed tasteless, apart from the stinging in your tongue, but it is very refreshing.";
		now HellfireDrinkTimer is 0;
		decrease thirst of player by 15;
		now Energy of Player is 0;
		follow the turnpass rule;
		say "     Any effects from other drinks at the club have been removed.";

an everyturn rule:
	if "Hellfire Swizzle" is listed in feats of Player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Hellfire Swizzle";
			say "     It has been a while since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Strength" by -2 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Orcish Bomber" is listed in feats of Player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Orcish Bomber";
			say "     It has been a while since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Strength" by -3 silently;
			statchange "Dexterity" by 1 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Heaven's Kiss" is listed in feats of player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Heaven's Kiss";
			say "     It has been a while since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Charisma" by -3 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Black Ale" is listed in feats of player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Black Ale";
			say "     It has been a while since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Strength" by -2 silently;
			statchange "Dexterity" by -2 silently;
			statchange "Stamina" by -2 silently;
			statchange "Intelligence" by 2 silently;
			statchange "Perception" by 2 silently;
			statchange "Charisma" by 2 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Tentacular Slushie" is listed in feats of player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Tentacular Slushie";
			say "     It has been a while since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Dexterity" by -5 silently;
			statchange "Intelligence" by 2 silently;
			statchange "Charisma" by 2 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Peculiar Liqueur" is listed in feats of player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Peculiar Drink";
			say "     It has been a while since you've had that drink at the Hellfire Club, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the drink, but are able to have another one.";
			statchange "Intelligence" by -4 silently;
			statchange "Strength" by 2 silently;
			statchange "Stamina" by 2 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Mountainous Strength" is listed in feats of player:
		if HellfireDrinkTimer <= 0:
			FeatLoss "Mountainous Strength";
			say "     It has been a while since you've had that tonic, and the effect has been flushed out of the system by now. As a result, you've lost the boost from the tonic, but are able to have another one.";
			statchange "Strength" by -10 silently;
		else:
			decrease HellfireDrinkTimer by 1;
	if "Created Orcish Bomber" is not listed in traits of Toron:
		if HellfireOrcBrewTimer - turns < 4:
			add "Created Orcish Bomber" to traits of Toron;
	if "Created Black Ale" is not listed in traits of Toron:
		if HellfireBlackAleTimer - turns < 4:
			add "Created Black Ale" to traits of Toron;
	if "Created Tentacular Slushie" is not listed in traits of Toron:
		if HellfireTentacularSlushieTimer - turns < 4:
			add "Created Tentacular Slushie" to traits of Toron;
	if "Created Peculiar Liqueur" is not listed in traits of Toron:
		if HellfirePeculiarLiqueurTimer - turns < 4:
			add "Created Peculiar Liqueur" to traits of Toron;
	if "Created Sparkling Water" is not listed in traits of Toron:
		if HellfireSparklingWaterTimer - turns < 4:
			add "Created Sparkling Water" to traits of Toron;

to say GiveToronOrcBrew:
	say "     Since you're carrying a special drink that you've got from the orcs, you suppose Toron would be interested in its special characteristics, so you show him the stuff. 'You've got an orc brew? Splendid! I've been wanting to get one, but I just hadn't had any luck! Let me see.' he says, extending his hand towards you. Plucking the bottle out of your inventory, you give it to the bartender, who starts examining it immediately. 'The color, and texture...' he comments, as he opens the bottle to take a whiff. 'Even the smell... Do they... Do they put their cum in here? That's why it's such a wonder, huh... Orc cum is pretty much addictive, people drink this stuff and get hooked up. Sorry for the question but... Do you happen to have some raw [bold type]orc cum[roman type] with you?";
	WaitLineBreak;
	if orc cum is owned:
		say "     Knowing that you have at least one bottle of Orc Cum in your inventory...";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Hand him some.";
		say "     ([link]N[as]n[end link]) - Better not, for now.";
		if player consents:
			Linebreak;
			say "     Might as well give this a try. You take the bottle of Orc Cum out and hand it to Toron, who gladly accepts your offer. 'Good! I needed this. Very well, I'll be able to create something new with this. If it's a success, I'll just... send someone to harvest the ingredients. Oh, don't look at me like that, I bet they would enjoy having some eager demons milking them for their cum... since this land is as strange as it is. Anyway, I'll bring these in, though I'll need some time until I can get something done. Come back later, perhaps I'll have news.' Taking both ingredients you have just provided him with, Toron takes them inside, returning to his duties shortly after.";
			ItemLoss orc cum by 1;
			ItemLoss orc brew by 1;
			now HellfireOrcBrewTimer is turns;
			wait for any key;
			say "[HellfireClubDrinksMenu]";
		else:
			Linebreak;
			say "     You shake your head, telling him that you don't have one available at the moment. 'Ah, I see... Then have the brew back, I can't do anything with it without this specific ingredient. Though feel free to come back to me with it whenever you get some orc cum. I might just be able to improve this brew...'";
			wait for any key;
			say "[HellfireClubDrinksMenu]";
	else:
		say "     You shake your head, telling him that you don't have one available at the moment. 'Ah, I see... Then have the brew back, I can't do anything with it without this specific ingredient. Though feel free to come back to me with it whenever you get some orc cum. I might just be able to improve this brew...'";
		wait for any key;
		say "[HellfireClubDrinksMenu]";

to say GiveToronSharpBlackTusk:
	say "     Given the strange nature of this item, you decide to handle it to Toron in hopes he could have some idea of what to do with it. 'A tusk?! Of a... Void Serpent? Let me see if it still carries some of its venom.' he says, before taking it from your hands. Before you could say anything, he grabs a really sharp knife, and begins to cut through the tusk from the base to the tip. The material is so tough that he has trouble making the blade pierce, but once it does, a very dark liquid begins to leak out of the tusk. 'Interesting... I wonder if I can make a drink using this... I would have to filter all of its strange effects, but it surely does look promising. Come back later, and I will add it to the menu.' he tells you, thanking you for the offering.";
	say "     This also means that your hard earned tusk got lost forever... But at least you will have a new drink! And hopefully a good one...";
	ItemLoss sharp black tusk by 1;
	now HellfireBlackAleTimer is turns;
	wait for any key;
	say "[HellfireClubDrinksMenu]";

to say GiveToronNullEssence:
	say "     Given the strange nature of this item, you decide to handle it to Toron in hopes he could have some idea of what to do with it. 'Now now, what is this? A null essence from the Void Realm? Interesting how you manage to get your hands on one of these... They are not rare per se, but they seem to have a knack for being attracted to biological humans. Yes, even if they are transformed beyond recognition due to the nanites thing, this is something otherworldly we are talking about. Anyway... If I can turn this into a powder...' he speaks, as he takes a mortar and pestle, puts the null essence in, and tries to smash it. 'Hm, no good... It's too tough. I only manage to barely scratch it, like this... Have you tried to eat them?' he asks, looking at you.";
	say "     There really is no need to think about this, you would rather not put one of those things in your mouth. It really looks like a plain black rock, so why would you even eat it? 'Then I will have to simulate that, hold on just a second...' he tells you, as he goes grab some sort of completely transparent liquid. 'It's just water, in case you are wondering.' No one never can be too sure if a colorless liquid is actually just water around here, so he cannot really judge you for being too careful. With that said, he pours the water into the recipient, and the null essence begins to dissolve. Looks like he managed to turn this into sparkling water...? 'Interesting. I wonder what properties this holds. I will make sure this is safe to drink, then you can come and try it for yourself, alright? Thanks again for the idea. I will handle the supplying myself.' he says, as he takes the drink and all the materials to the back room.";
	say "     Null essences make Sparkling Water when mixed with water... now that's something...";
	ItemLoss null essence by 1;
	now HellfireSparklingWaterTimer is turns;
	wait for any key;
	say "[HellfireClubDrinksMenu]";

to say GiveToronLooseTentacle:
	say "     Now, you have this quite odd and slippery tentacle, which might be of interest to Toron. You know, he finds use for strange things, so this one particular item must be as good as any. You call him and show him what you have, and his eyes widen. 'A tentacle?! What do you expect me to do with it?! Cook it, cut it and grind it until it becomes powder, then make a drink with it?!' he answers, to which sounds like an absolutely crazy idea... 'I could actually just make that work. Hand it over.' he asks, and without questioning his undeniable reasoning, you give him the loose tentacle.";
	say "     Immediately after, he tells you to just come back later, as he will have to experiment with the mixture until he can achieve [']just the right tone of taste[']. His words.";
	ItemLoss loose tentacle by 1;
	now HellfireTentacularSlushieTimer is turns;
	wait for any key;
	say "[HellfireClubDrinksMenu]";

to say GiveToronStrangeBean:
	say "     You almost feel silly by even suggesting this, but you call Toron to give him an odd colored bean that he could probably use for drinks. He doesn't blink, actually treating it with all the naturality in the world. 'A bean you say? Funny... They look like mystery beans. I think I've seen a stash of these in the void,  somewhere. Perhaps...' He looks at you, at the bean, then retreats to the back room. 'Give me a few moments, I will arrange preparations and order someone to get more for me! Oh, what a great drink this one will make...!'";
	say "     It appears he is actually happy with this ingredient. How peculiar...";
	ItemLoss strange-colored bean by 1;
	now HellfirePeculiarLiqueurTimer is turns;
	wait for any key;
	say "[HellfireClubDrinksMenu]";

[TONICS]

to say HellfireClubTonicCraft:
	say "     Here you can see what Toron is able to craft for you.";
	say "     [bold type]By selecting each option, you will learn of the requirements and how to acquire them in order to craft the tonic you desire, and if you have all the items with you, there will be a prompt for you to craft them. Tonics last for 12 hours, and cannot be stacked with any other tonics or drinks.[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tonic of Mountainous Strength";
	now sortorder entry is 1;
	now description entry is "A very mighty tonic that tremendously increases your strength, at the cost of dexterity (+10 strength, -5 dexterity)";
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
				if (nam is "Tonic of Mountainous Strength"):
					say "[HellfireClubMSTonic]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as the bartender continues his tasks.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HellfireClubMSTonic:
	if giant essence is owned and orc brew is owned and testosterone pill is owned:
		say "     Having all the items in your inventory, you proceed to present them to Toron. 'Ah, you have gathered them all? I can proceed with the mixing at any time you want.'";
		say "     [bold type]Do you wish to craft a Tonic of Mountainous Strength?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			Linebreak;
			say "     You answer positively, letting Toron bring all the items over to the backroom. 'I won't be long.'";
			WaitLineBreak;
			say "     He is true to his word. A little while after, he comes with a small flask filled a yellow-green liquid, not too different from the orc brew you gave him. 'The ingredients don't change the appearance of the brew much, but I assure you, this will give your muscles a huge temporary boost with all safety.'";
			ItemLoss giant essence by 1 silently;
			ItemLoss orc brew by 1 silently;
			ItemLoss testosterone pill by 1 silently;
			ItemGain tonic of mountainous strength by 1 silently;
			say "     [bold type]You have acquired a Tonic Of Mountainous Strength in exchange for 1 giant essence, 1 orc brew and 1 testosterone pill.[roman type][line break]";
		else:
			Linebreak;
			say "     You let Toron know that you do not wish to craft the tonic yet, to which he nods understandingly.";
	else:
		say "     You look over the Tonic of Mountainous Strength, and pay attention to its requirements. Toron explains everything as necessary.";
		WaitLineBreak;
		say "     [bold type]One bottle of Giant Essence[roman type], gathered from the precum of a male giant-sized creature's penis during its maximum arousal state, preferably as human-looking a possible. 'The zookeeper would be your best chance, here.'";
		say "     [bold type]One Orc Brew[roman type] for the main composition of the tonic. 'Orcs are good at making these, hence the name. It has valuable strength properties that, if properly mixed, are not infectious while still providing all the desired effects. I've heard about a bunch of orc warriors roaming around the Warehouse District looking for slaves. Who knows if you would be lucky enough to snatch one of these from them.'";
		say "     [bold type]A single pill of Testosterone[roman type] in fairly pristine conditions, to bring out the fortifying properties. 'Without this, the tonic won't do much. Zephyr stores have a collection of these, one for 100 freecreds. There might be some still left at the hospital or some other place, but Zephyr is your best bet.'";
		WaitLineBreak;
		say "     Taking notes of everything you need, you then thank Toron and move onto something else.";

[***********************************************************]
Section 3 - Toron Sex Menu
[***********************************************************]

Instead of fucking Toron:
	if Libido of Toron is 0:
		say "     Maybe you should talk to him about sex before you jump right into it...";
	else if Libido of Toron > 0:
		if lastfuck of Toron - turns < 6:
			say "     As much as you want to get in some more fun with Toron, you have to give him a break to recover. Even demons don't have that much stamina, or time.";
		else:
			if daytimer is night:
				say "     You wish to get into some fun with Toron during his night shift, and as soon as you suggest that to the bartender, you notice a sneaky shadow tentacle, hot like a subtle fire, crawl around your hand and pulling you behind the counter. He fancies [italic type]you[roman type], after all...";
			else:
				say "     You wish to get into some fun with Toron during the day, when he has some free time. With that in mind, you're about to make a move with a few ideas in mind while he's distracted with polishing the glasses... Or so you think. He may very well be watching you from the corner of his bright eyes. He fancies [italic type]you[roman type], after all...";
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			[]
			if daytimer is night:
				choose a blank row in table of fucking options;
				now title entry is "Rim and finger his ass";
				now sortorder entry is 1;
				now description entry is "Get on the other side of the counter and play with his butt... at your own risk";
			[]
			if daytimer is day:
				if player is male:
					choose a blank row in table of fucking options;
					now title entry is "Fuck his ass";
					now sortorder entry is 1;
					now description entry is "Grab his ass and give him some hard pounding right here... at your own risk";
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
						if (nam is "Rim and finger his ass"):
							say "[ToronNightAssPlay]";
						if (nam is "Fuck his ass"):
							say "[ToronDayAssFuck]";
						wait for any key;
				else if calcnumber is 0:
					now sextablerun is 1;
					say "     You politely excuse yourself as Toron continues his duties.";
					wait for any key;
				else:
					say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
			clear the screen and hyperlink list;

to say ToronNightAssPlay:
	say "     You lean towards Toron in order to whisper into his ear, letting him know what you want to do to him once you discretely go around the counter and get on his side. He agrees to this with a mischievious grin, and continue his duties as if nothing was happening. You duck behind the counter so nobody can see you quietly approaching the bartender, who is actually not wearing anything from his waist down, something that is impossible to observe from the other side of the counter. Occasionally, a shadowy tentacle can be seen taking form from his back, stretching towards a distant bottle or some other ingredient, though he maintains a pair of completely normal humanoid legs to sustain his weight, and with that, a magnificent bubblebutt waiting to get grabbed by you. As you take some time to admire his dark glutes, a soft, warm tendril brushes against the back of your head, encouraging you to lean closer...";
	say "     Offering no resistance to this invitation, you position yourself around his legs, sliding your hands over his thighs from the backside, then around his glutes. His black skin is really soft, and his buttcheeks are so plump and bubbly that you could just stay here feeling them up for hours... and for just a second, Toron seems briefly distracted by your touch, showing signs of arousal, before he returns to his usual expression while serving drinks. You don't want to rush anything here, so first, you feel up his ass cheeks some more, because they feel really good on your palms, bouncing nicely and firmly with each movement he makes. The bartender archs his back a little, letting you take a better look at his pucker. It's shaped like a plump and soft donut hole, twitching along with your touch, looking so inviting that it sends your heart into a fast, eager beat.";
	WaitLineBreak;
	say "     As you are getting acquainted with his marvelous butt, each plump glute clenching and bouncing with your caressing, you slide in a single finger right between his cheeks to feel that warm and accomodating hole, feeling almost too silky. You see the demon taking a deep breath, as he turns his head downwards to have a brief look at you, then back smiling to possibly an approaching client - you can't really see what is going on from your angle - while you have your own fun. It feels amazing just rubbing his anus, it's incredibly warm and welcoming, and a plethora of ideas just pop up in your mind... Only if you could do anything you wanted to his ass right here, right now... Though perhaps you can give it a good lick. His tentacle keeps pushing your head from behind, which is a clear invitation to this.";
	say "     Spreading his asscheeks at last, you lean in to bury your face between his bubbly glutes, your lips touching his pucker as you give it a kiss, before sliding your tongue around the entrance and try to press it in a little bit, humming as you feel its incredible taste. 'A[one of] Hellfire Swea... Uh, excuse me... Swizzle[or] Black Ch...' - he breathes... - Cherry Drink[or] Tequila S-shot[or] S-simple... Beer [or] most refined Red Wine C-[or] Black Lemon Lime Voooh-' - he clears his throat to mask that accident - 'Vodka[at random] coming out...!' he says to the client amidst a moan you have caused, and lucky him that his tentacles are able to do the work. With your wiggling tongue, you lick his hole thorough before you make a bigger effort into pressing further inside, only to find out it just happens to welcome you so easily, yet so tightly, that you can caress all of his fleshy insides with ease. It almost feels like his ass is pulling your tongue, and it's not so long until Toron is grinding himself against your face so he can feel you tonguefucking him deeper.";
	WaitLineBreak;
	say "     His tentacles push you deep between his buns, not letting you go out for even a second of breathing, and putting your hands on each of his glutes, you twist and roll your tongue to the sides, while pushing it in and out as you go. Toron does a phenomenal work at keeping cool, and you're sometimes able to hear a really low, yet encouraging moan, when nobody's nearby. Eventually, his tentacles pull out, and you are allowed to take a whiff of fresh air and catch your breath. Another of his tentacles raises your hand in the form of a suggestion, and looking at his hole, it seems to wink at you while... You are not sure, but his butt seems even larger than before. He invites you to touch it once more, your fingers moving closer to his pucker... and then, you find your index finger sinking inside his ass very easily, welcomed by his warm fleshy tunnel.";
	say "     Now having your finger fully inside, you add another as soon as you can, opening his blinking orifice even more, and yet it holds your fingers tightly. His moisty insides, however, provide you with some slipperiness that makes it easy for you to push them in and out, then you think that perhaps adding another to the two that are already inside would be what he wants. With his asshole clenching around your fingers rather hard, you feel him pushing his ass backwards as you shove in your fourth finger, leaving only your thumb out. He takes everything really eagerly, as deep as until your palm, with so much ease that it gives the idea he is not satisfied yet... Could it be that he wants your whole fist?!";
	WaitLineBreak;
	say "     He humps his ass against your hand, and you begin to feel that maybe your quartet of fingers isn't enough to satisfy his hungry butt, so without thinking too much about it, you begin to curl your thumb... then rub its tip across his stretched pucker... and slowly, it slips inside, as your entire hand follows. And he is effortlessly taking it all in, his ass welcoming your fist until past your carpal bones, reaching as far as your wrist... And after impaling himself on your arm, you feel a cluster of tentacles surrounding you, stroking and rubbing at you from every angle into every sensitive area of yours as you continue to effectively fist him. You are not sure how, but his ass got even bigger, and you find your whole forearm slipping inside him!";
	say "     [bold type]Something definitely feels odd about this...[roman type][line break]";
	say "     Not only you are absolutely violated by an impossibly large number of shadow tentacles swarming your body from all sides, slipping inside your holes and fondling your crotch faster than you can even blink, you are accidentally impaling Toron on half your entire arm, or rather, his enormous ass that seemed to have outgrown your expectations, quite literally. And it is not satisfied yet, you feel him try to pull more of it, clenching around your arm so hungrily that you find it appropriate to move it around and thrust inwards in order to sate it. But your body is soon overwhelmed by a myriad of sensations as you feel your mind dive into darkness, your last pleasures echoing intensely as you hit your climax, ecstasy repeating itself over and over...";
	WaitLineBreak;
	say "     Before you collapse, Toron lets go of you, his shape having returned to normal by now. You find yourself lying down on his side of the counter with the lounge music, as well as your senses, slowly coming back to you. Several tentacles begin to pull you up and help you stand, and before he lets you go, he turns to you. His eyes are at mere inches from his, and you are surprised by a kiss. 'You were delightful. Your mind is a soothing place... and you're not so bad with your tongue. Hit me up for more next time.' he says, as he taps your hip - this time with his hand - with a demonic grin. Shivers run down your spine, but you retribute with your best smile and discretely leave him to return to his shift undisturbed.";
	if a random chance of 1 in 3 succeeds:
		if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
			increase Lust of Mogdraz by 1; [Mogdraz approves when the player cares for his crew, especially Toron, whom he holds in high regard.]
	NPCSexAftermath Toron receives "Other" from Player;

to say ToronDayAssFuck:
	say "     Upon having decided what to do with Toron during his freetime, you simply stand by your side of the counter and give him a suggestive look while he's polishing a glass, shifting your gaze towards his ass, which is bare naked right now. 'See something you like?' he asks, as one of his tentacles comes greet you on your side, wrapping itself around your wrist and pulling you to him. You follow his tendril, going around the counter to meet him, and you are quickly met with his rear bumping against your [if player is not naked]bulge[else]exposed shaft[end if]. The bartender follows up by placing down the glass and subtly arching his back, so you can feel him pressing his butt against your crotch, glancing at you over his shoulder. 'You wouldn't do it in front of the boss, would you?' he asks you with a grin, teasing you so much that your erection starts to almost hurt.";
	say "     Taking hold of him, you turn him around and push him against the bar counter, pushing his back forward and forcing him to bend over in front of you, his dark, gorgeous bubble butt pointing in your direction. He appreciatesthe loud ass slap you give him as you get your hands on his glutes, feeling all the plumpness of his bubble cheeks under your palms before you start to spread them. Reaching closer, you [if player is not naked]whip out your [cock of player] dick[else]grab your [cock of player] dick[end if] and bring it over the space between his glutes, rubbing it across his perinium and over his donut hole. It's already feeling amazing against your shaft, and you can't wait to shove your cock inside him when you feel that moist hole winking hungrily at the sight of your manhood. Slowly, you being to press the tip against his orifice, only slightly as his entrance embraces your length as you thrust, burying it inside inch by inch as the slick walls of his insides pulse with desire.";
	WaitLineBreak;
	say "     'Not so bad for a mortal...' he lets you know, chuckling as you invade his ass, pushing more and more of your meat inside. You can't help but wonder if it is really okay to enjoy fucking the bartender with his boss eyeing you both from a corner, though his gaze is of interest, rather than contempt. 'Put it all in... Enjoy my ass to its fullest... I know you want to.' he tells you, and you're happy to oblige, pushing in every inch until the last. No matter the size of your dick is, he takes it all, and the sensation is truly amazing. You really feel like he could take anything, all while making it feel so good and tight around your shaft. With just a little more pushing, your pelvis finally rests against his glutes, with only your balls remaining outside, and it almost feels like his ass is blowing your dick by how much it's clenching softly around your length. Leaning yourself over on top of him, you begin to fuck him even harder.";
	say "     The demon lets out a moan in enthusiasm, his tentacles brushing against your body and erogenous zones to give you a boost in pleasure, and a burst of sexual adrenaline begins to fill you. With long and hard poundings, you begin to fuck Toron with eagerness, following up with more deep thrusts where you can feel your entire length simply losing itself in his dark confines, clenching and wiggling around your meatlog with an almost unbearably good sensation. Building up the rhythm, you pin him down fully on top of the counter, giving him no other choice than taking your cock as hard as you decide to fuck him, and you don't go easy on him. With all the action going on, you just feel like thrusting harder and deeper, pounding his ass like a battering ram, over and over and over...";
	WaitLineBreak;
	say "     Toron only seems to keep encouraging you to let go and surrender to your urges, and there is literally nothing stopping you from keeping on fucking the club's bartender, who's so eager to let you claim his ass for as long as your heart desires. All his tentacles touching you only makes you lose your mind even more, forgetting about your surroundings as you continue to pound that marvelous ass, feeling his insides pull your cock in with such bliss... You can't stop. You don't want to stop, but you are physically not able to, even if you wanted. It feels like your body is moving on its own, and your mind has given up all control to your primal need to fuck. You're lost in overwhelming pleasure and in Toron's ass eating up your manhood so hungrily...";
	say "     You cannot quite describe the world you were thrown into, but your hips and glutes feel sore from so much pounding, your balls feel heavy and full of the biggest load you have ever had, and nothing else is in your mind but filling Toron's ass full of your spunk. He holds you into a deep embrace, one that you sink into at a supernatural level, and within a matter of seconds, you are unloading the fullest climax that seems to have no tangible end. Cum shoots from your cock directly into the demon's insides, spurt after spurt, a deluge of it that you never imagined possible! There is so, so much of it... It really never ends, your body shakes and trembles, desperation growing within you as you cannot stop feeling that pleasure, scaringly unfamiliar to you, overwhelming you and shaking your limits...";
	WaitLineBreak;
	say "     Before you nearly lose your senses, Toron has you remove your shaft from his hole, and it feels like his butt just slurped up everything that you've given him. Your head hurts, but your body feels released. 'I almost had your soul, if I wanted to.' he says, looking over you, then over to Mogdraz, who just arrived to order something. You share awkward looks, but he gives you a grin that makes you shake from head to toe. 'Enjoying your stay, I see.' says the Demon Lord before he turns to Toron. You are left to take your walk of shame outside as Toron recomposes himself, preparing the drink for the demon boss.";
	say "     Toron really can screw with your mind, though... You feel at a loss of thoughts for several minutes.";
	if a random chance of 1 in 3 succeeds:
		if Libido of Mogdraz > 0 and Libido of Mogdraz < 99:
			increase Lust of Mogdraz by 1; [Mogdraz approves when the player cares for his crew, especially Toron, whom he holds in high regard]
	NPCSexAftermath Toron receives "AssFuck" from Player;

Section 4 - Items

Table of Game Objects (continued)
name	desc	weight	object
"tonic of mountainous strength"	"A tiny flask with a small cork stopper that keeps its contents from sloshing out. The yellow-green fluid inside does look kinda like orc brew, still, and pretty much like beer."	1	tonic of mountainous strength

instead of sniffing tonic of mountainous strength:
say "You open the flask for a moment and take a sniff. Then, you are wishing you wouldn't have done that, because the smell is so strong and concentrated in an alcohol-like scent that you begin to cough immediately, in much pain. And you are supposed to drink this?";

tonic of mountainous strength is a grab object.
Usedesc of tonic of mountainous strength is "[tonic of mountainous strength use]";

to say tonic of mountainous strength use:
	if HellfireDrinkTimer > 0:
		say "     You can't have a tonic while the effects of a previous drink persist. Try again later.";
		ItemGain tonic of mountainous strength by 1 silently;
	else:
		say "Lifting the flask in one hand, you push the cork sopper off and take a shot drink of the liquid within. It burns through your throat like lava, and you feel like you drank something that you shouldn't. It is so so bad, that you are unable to breathe for a few seconds! Then, suddenly, your arms, legs, and muscles in general feel... hard and pumped! You feel like you could take on a giant!";
		FeatGain "Mountainous Strength";
		say "     Your [bold type]Strength has increased by 10[roman type] for the next 12 hours.";
		statchange "Strength" by 10 silently;
		now HellfireDrinkTimer is 4;
		decrease thirst of player by 1;

Toron ends here.
