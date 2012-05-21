Version 2 of Stuck Dragon by hiccup begins here.
[Version 2 - restored and increased fuctionality by Stripes]

Section 1 - Finding the Building

Find Building is a situation.
the sarea of Find Building is "Mall";

After resolving a find building, try looking;

Instead of Resolving a Find Building:
	say "While exploring the sewer, you spot a ladder leading up to a manhole. You climb the ladder and push up on the manhole cover. After a bit of effort, you shift the manhole cover to the side and climb the rest of the way up the ladder.  You look around and see that you're back on the city streets, in front of an old building. You don't know if you'll find anything of interest inside, but it could be worth exploring. The nearby streets are completely blocked by debris and wrecked cars so you wouldn't have been able to find this place if you hadn't gone through the sewers.";
	increase the score by 5;
	move the player to Isolated Street;
	now the Isolated Street is known;
	now Find Building is Resolved;
	
Isolated Street is a room. It is fasttravel. It is private. Inside from the Isolated Street is a room called Old Building.
The description of Isolated Street is "The only thing of interest on this street is an old, rundown building that has been around for a while. It's been condemned for as long as you can remember, so you have no idea what this building was used for.";

Old Building is a room.
The description of Old Building is "[dragonessbldg]";

to say dragonessbldg:
	say "[dragonessupdate]     There are small piles of useless junk and debris scattered around inside the old building.  There is a fine layer of dust is on almost every surface in sight";
	if hp of Christy is 0 or hp of Christy is 1:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by the rear of a large dragoness. The rest of its body is on the other side of the doorway so it can't see you";
		if lust of Christy > 2:
			say ".  There is a collection of large dragon eggs in the room as well, safely pushed to one side by her tail";
		say ".";
	otherwise:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by a pile of collapsed debris from when Christy was pulled free.";

instead of sniffing the Isolated Street:
	say "Being cut off, there are no irregular scents here.";

instead of sniffing the Old Building:
	say "The air in this old building is thick with the scent of aroused dragoness pussy.";


Section 2 - Trapped Dragon Rear

lastChristyfucked is a number that varies.  lastChristyfucked is normally 300.
NoIntroduction is a number that varies. NoIntroduction is usually 0.

dragoness is in Old Building.  dragoness is a person.
The description of dragoness is "[dragonessdesc]";
The conversation of dragoness is { "Poot!" }.
dragonessfuck is a number that varies.

instead of sniffing dragoness:
	say "The scent coming off this large, fecund dragoness and her huge pussy is very arousing.";

Instead of conversing the Dragoness:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if NoIntroduction is 0: 
		say "     'Hello? Is someone back there?' the large dragoness calls out from the other side of the blocked doorway.  'Please tell me that you're not one of those mindless... sexy... beasts... here to violate me while I'm helplessly trapped here.'  Her rear end wiggles, her tail arches up and her pussy drips all the more at her words, winking with need to be filled.";
		now NoIntroduction is 1;
	otherwise if lust of Christy is 0 and libido of Christy is 0:
		say "     'No offence, but I prefer to talk to people that I can see,' you hear the dragoness say from the other side of the door.";
	otherwise:	[***]
		say "     'That was great, come back and do me again sometime. Gah! I meant to say, stay away from me you evil monster!'";

to say dragonessdesc:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	say "     All you can see of this huge dragoness is the back half of her body.  She has beautiful, scarlet scales.  Her large body is firmly wedged in the double doorway, trapping her securely.  The infection must have caused her to rapidly grow to a huge size as she was trying to get through the doorway and became stuck before making it.  The concrete wall around the doorframe has cracked, but not given way yet.  Trapped as she is, her large legs are spread apart and pressed to the floor, keeping her pinned.  Under her large tail is her huge, dripping pussy - exposed... and vulnerable";
	if NoIntroduction is 0:									[before any intro/sex]
		say ".  She would be helpless if you wanted to fuck her, but you wouldn't do that, would you?";
	otherwise if lust of Christy is 0:							[talked, no sex]
		say ".";
	otherwise if remainder after dividing lust of Christy by 3 is 1:		[recently fucked]
		say ".  You can still see the cum you left in her before dripping from her well-used cunt[if lust of Christy is not 1].  Nearby, there are several huge eggs on the ground next to her from fucking her earlier[end if].";
	otherwise if remainder after dividing lust of Christy by 3 is 2:		[egg-stuffed]
		say ".  Her belly has swollen up, pressing her even more tightly into the doorway and raising her pussy out of reach.  Touching her, you can feel the bumps of several large, hard forms inside her waiting to come out.  She moans in pleasure at your touch and squirms a little.  It looks like you've impregnated her[if lust of Christy is not 2] again.  Nearby, there are several huge eggs on the ground next to her from fucking her earlier[end if].";
	otherwise if remainder after dividing lust of Christy by 3 is 0:		[ready for fucking]
		say ".  Her belly has gone back to her normal size and there [if lust of Christy > 5]is another clutch of[otherwise]are several[end if] huge eggs on the ground next to her from fucking her earlier.";
	if NoIntroduction is not 0:
		say "     From her reactions to your presence, it seems that the dragoness has not entirely lost her humanity, unlike most of the other creatures running the streets.  You may want to find her front end so you can talk to her.  Perhaps you'll be able to find a way to free her as well.";

to say dragonessupdate:
	if libido of Christy is odd and lastChristyfucked - turns >= 8:	[reset after female sex]
		increase libido of Christy by 1;
	if remainder after dividing lust of Christy by 3 is 1 and lastChristyfucked - turns >= 8:
		increase lust of Christy by 1;
	if remainder after dividing lust of Christy by 3 is 2 and lastChristyfucked - turns >= 24:
		increase lust of Christy by 1;


Instead of fucking the Dragoness:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if hp of Christy is 1:
		say "     You should probably not do that again, just in case Christy realizes it's you.  Given her reactions earlier, if you free her, it shouldn't be too hard to coax her into some fun.";
	otherwise if libido of Christy is odd:		[still waiting after female sex]
		say "     You just played with the poor dragoness recently and pussy is still very wet with her juices from your earlier fun.  Maybe you should give her some time to rest.  You could also try to find a way to get her out of this doorway.  If you want to do that, you'll need to find a way around this doorway that her body is blocking.  You found this building by searching through the sewers, so perhaps you should start there?";
	otherwise if remainder after dividing lust of Christy by 3 is 1:
		say "     Some of your cum is still leaking out of her pussy from the last time you screwed her.  You should give her time to rest.  You could also try to find a way to get her out of this doorway.  If you want to do that, you'll need to find a way around this doorway that her body is blocking.  You found this building by searching through the sewers, so perhaps you should start there?";
	otherwise if remainder after dividing lust of Christy by 3 is 2:
		say "     With her belly bloated with eggs, her pussy's too high up for any kind of satisfying fun.  Besides, you shouldn't do that while she's pregnant.  You may wish to come back again later to see how her [if lust of Christy > 3]new [end if]clutch is coming along.";
	otherwise if NoIntroduction is 0:
		say "     You move up to the trapped dragoness with dirty thoughts in your head.  You place a hand against its side as you prepare to...";
		say "     'Ahhh! I felt something touch me!' you hear a feminine voice shriek from the other side of the doorway as the dragoness's body twitches.  'Is someone back there? Please tell me that you're not one of those mindless... sexy... beasts.  Are you here to...' she says, pausing to moan lustfully, '...violate me while I'm helpless?'  Her wide rear end wiggles, her tail arches up and her pussy drips all the more at her words, winking with need to be filled.";
		say "     It seems like this dragoness still has her humanity, but something in her voice almost sounds like she wants to be violated.  You could abandon your plan to screw her if you want.  Do you want to fuck her anyway?";
		now NoIntroduction is 1;
		if player consents:
			say "[dragonesssex]";
		otherwise:
			say "     Your morality wins over and you decide to abandon your plan to screw the trapped dragoness.  If you're going to help her, you'll need to find a way to talk to her face to face.  That means you need to find a way around this doorway that her body is blocking.  You found this building by searching through the sewers, so maybe you should start there?";
	otherwise if lust of Christy is 0:
		say "     It seems like this dragoness still has her humanity, but something in her voice almost sounds like she wants to be violated.  You could abandon your plan to screw her if you want.  Do you want to fuck her anyway?";
		if player consents:
			say "[dragonesssex]";
		otherwise:
			say "     Your morality wins over and you decide to abandon your plan to screw the trapped dragoness.  If you're going to help her, you'll need to find a way to talk to her face to face.  That means you need to find a way around this doorway that her body is blocking.  You found this building by searching through the sewers, so maybe you should start there?";
	otherwise:
		say "[dragonesssex]";

to say dragonesssex:
	if cocks of the player is 0:
		say "     You don't have a cock to fuck her with, but she just looks too tempting to leave alone.  You set aside your clothes and gear and move up to her large rump.  Running your fingers over her wet slit, she moans before realizing what's happening and shrieking";
		if libido of Christy is 0:
			say ".  'Oh, no!  You ARE one of those mindless beasts and you ARE going to violate me!  Please keep touching me like that.  Ah!  I mean, don't do that again,' she cries out as you keep stroking her pussy, running your hands up and down each of those rippling, sensitive lips.  You start licking and kissing along it as well, listening to her lustful cries and ignoring her weak, false protests.  Her cries and her body's reaction clearly tells you she wants and needs this.  You drive an arm into her massive cunt, making her moan and her pussy squeezes around it, throbbing around you with the pulse of her blood through her huge body.";
			say "     'Ah!  That doesn't feel like a throbbing, hard cock,' the dragoness wonders aloud.  'Why aren't you fucking me?  Oh, are you a woman?  Ooooh, that's so naughty' she moans before catching herself.  'I mean, that's not fair, denying me a good fucking.  No, what I meant to say is there are so many big, sexy beasts out there to fuck you.  Can't you go find one of them and bring them back for me?  Wait, I mean... oh mmm... don't stop,' she cries louder as you work your arm into her harder and faster while licking at her wide slit.";
			say "     Her protests are soon entirely replaced with loud roars of pleasure as you bring her to her peak. Finally her pussy clamps down around your arm as an orgasm rocks through her body, making the walls groan.  You keep pumping into her through her climax while lapping up her overflowing juices.  Her hot cum flows down over your bare body as you grind against her until you cum hard as well.  This is great, it's like having your own personal dragon fuck-toy.";
		otherwise if libido of Christy > 0:
			say ".  'Oh no!  It's YOU again, isn't it?' she shrieks, recognizing the way you touch and grab her cunt.  'You naughty girl!  Why can't you... ngg... leave me alone.  Why do you have to touch me like that?  It makes me feel so good.  Ah!  I mean, don't do that again,' she cries out as her body responds by arching up her tail and trying to rub back against your touch.  You keep stroking her pussy, running your hands up and down each of those rippling, sensitive lips.  You lick and kiss along it as well, listening to her lustful cries over her half-hearted protests.  As before, you know what her body wants and you'll make sure to give it to her.  You drive an arm into her massive cunt, making her moan and her pussy squeezes around it, pumping with the pulse of her blood through her huge body.";
			say "     'Ah!  Why don't you have a big, hard cock for me?' the dragoness wonders aloud.  'Ohhh... that sounds like a great idea!  Go get a throbbing, meaty penis and come back to fill me with it.  No, I mean, leave me alone.  Go away and don't come back.'  You don't listen to her and keep pounding your whole arm into her, fisting her huge slit.  'Don't come back until you've got a huge, hard shaft to fill me,' she moans as her excitement builds.  'Mmm... no, don't go yet... so close,' she says as her dripping cunt quivers against you as you keep rubbing against her and licking up those overflowing juices.";
			say "     Her protests are soon entirely replaced with loud roars of pleasure as you bring her to her peak. Finally her pussy clamps down around your arm as an orgasm rocks through her body, making the walls groan.  You keep pumping into her through her climax while lapping up her overflowing juices.  Her hot cum flows down over your bare body as you grind against her until you cum hard as well.  You grin and give her your dragoness fuck-toy's ass a light swat, enjoying her lustful moan.";
		increase libido of Christy by 1;
		now lastChristyfucked is turns;
	otherwise if cock length of player is less than 5:
		say "     Your cock is too small for you to get it deep enough into her huge vagina to stimulate her or to get an enjoyable fuck from it.  You sigh a little disappointment and decide to come back later after finding some means to";
		if "Female Preferred" is not listed in feats of player:
			say " increase your maleness so you can come back and fuck this fine dragoness.";
		otherwise:
			say " finish becoming a female to avoid the distraction of a cock you can't use to fuck this fine dragoness.";
	otherwise:
		say "     With a prize like this, she just looks too tempting to leave alone.  You set aside your clothes and gear and move up to her large rump.  Holding her large, wet lips against your cock, you grind against them to get yourself slick.  The dragoness moans before realizing what's happening and shrieking";
		if lust of Christy is 0:
			now dragonessfuck is 1;
			say ".  'Oh, no! You ARE one of those mindless beasts and you ARE going to violate me! Please don't put your big... throbbing... manhood in my defenseless... and wet... pussy!' she moans as you keep grinding against her wet, sensitive pussy lips.  You part those folds and sink your cock into her, licking and kissing at her gigantic ass as you do, listening to her lustful cries over her half-hearted protests.  Her cries and her body's reaction clearly tells you she wants and needs this and you shove your [cock size desc of player] [cock of player] shaft into her huge pussy with a loud, lustful groan.";
		otherwise:
			say ".  'Oh, no!  Don't violate me again!' the dragoness shrieks.  'Laying those eggs was an unbelievably pleasurable... I mean uncomfortable experience!' she cries out even as her body grinds back against you.  You part those folds and sink your cock into her, licking and kissing at her gigantic ass as you do, listening to her lustful cries and ignoring her clearly false protests.  As before, you know what her body wants and you'll make sure to give it to her.  You shove your [cockname of player] [cock of player] shaft into her huge pussy with a loud, lustful groan as you start fucking her again.";
		if cock length of player is less than 20:
			say "     'You evil monster!  How could you?  Oh yeah, that feels great... er... horrible! I said it feels horrible!' she cries out before catching herself.  'Mmm, now pound me harder... I mean, stop you vile creature!' the dragoness roars.  She's obviously having trouble controlling the urges of her body as you pump your cock into her again and again.  Her wide pussy squeezes around your cock, throbbing around you with the pulse of her blood through her huge body.  As you fuck her, you lick and kiss at her huge rear, rubbing your body against her to stimulate your trapped lover further.";
		otherwise:
			say "     'Oh god, it's so BIG and it feels wonderful inside me... er... horrible! I said it feels horrible inside me!' she cries out before catching herself.  'Mmm, now pound me harder... I mean, stop you vile creature!' the dragoness roars.  She's obviously having trouble controlling the urges of her body as you pump your cock into her again and again.  Her wide pussy squeezes around your cock, throbbing around you with the pulse of her blood through her huge body as your large cock pounds into her.  As you fuck her, you lick and kiss at her huge rear, rubbing your body against her to stimulate your trapped lover further.";
		say "     You pound your cock in and out of the dragoness's pussy.  Her protests are soon entirely replaced with loud roars of pleasure as you bring her to her peak.  Finally her pussy clamps down around your cock as an orgasm rocks through her body and your cock spews its load deep inside her.  Her hot juices flow from her giant pussy, soaking you.  You lick her cum from your hand and savour it as you pump your seed into her until your balls are drained[if lust of Christy is 0].  This is great, it's like having your own personal dragon fuck-toy[otherwise].  You grin and give her your dragoness fuck-toy's ass a light swat, enjoying her lustful moan[end if].";
		increase lust of Christy by 1;
		now lastChristyfucked is turns;


Section 3 - Bypass the Blocked Door

Another Ladder is a situation.
the sarea of Another Ladder is "Mall";

After resolving a another ladder, try looking;

Instead of Resolving a Another Ladder:
	if NoIntroduction is 0:
		say "     While exploring the sewer, you spot a ladder leading up to a manhole.  You climb the ladder and push up on the manhole cover.  Unfortunately something seems to be blocking it from the other side.  You should try again later.";
	otherwise:
		say "     While exploring the sewer, you spot another ladder leading up to a manhole. Maybe this one will lead you around the blocked doorway? You climb the ladder and push up on the manhole cover. After a bit of effort, you shift the manhole cover to the side and climb the rest of the way up the ladder.";
		say "     You look around and see that you're back on the city streets, in an alley behind an old building. It's the same old building that you found earlier.  There is a side entrance to the old building here.  It looks like you've found the way around the blocked doorway.  The nearby streets are completely blocked by debris and wrecked cars so you wouldn't have been able to find this place if you hadn't gone through the sewers.";
		increase the score by 5;
		move the player to Back Alley;
		now the Back Alley is known;
		now Another Ladder is Resolved;

Back Alley is a room. It is fasttravel. It is private. Inside from the Back Alley is a room called Back Room.
The description of Back Alley is "You're standing in an alley behind an old building.  It's the same old building that you found earlier.  Debris and wrecked cars have cut off this area from the rest of the city.  There is a side entrance to the old building here.  It looks like you've found the way around the blocked doorway.  Hopefully the dragoness has not yet been found.";

Back Room is a room.  The description of Back Room is "[backroomdesc]";

to say backroomdesc:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	say "     There are small piles of useless junk and debris scattered around inside the old building.  A fine layer of dust is on almost every surface in sight";
	if hp of Christy is 0 or hp of Christy is 1:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by the front half of a large dragoness. You can't see the rear of her body, because it's on the other side of the doorway.  There are several bottles of water and packages of food next to the dragoness, which explains why she didn't die of hunger or thirst while being trapped here.";
	otherwise:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by a pile of debris when the doorway collapsed[if lust of Christy > 2 and lust of Christy < 6].  There is are several huge eggs on the ground in an improvised nest by dragoness has constructed in her new lair[otherwise if lust of Christy > 5].  There is another clutch of huge eggs on the ground in an improvised nest by dragoness has constructed in her new lair[end if].";


instead of sniffing Back Alley:
	say "There are no unusual scents here.";

instead of sniffing Back Room:
	say "The scent of aroused dragoness hangs in the room.";


Section 4 - Trapped Dragon Front

Christy is a woman.  Christy is in Back Room.  The description of Christy is "[christydesc]";
The conversation of Christy is { "Rawr!" }.

to say christydesc:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if hp of Christy is 0 or hp of Christy is 1:
		say "     She looks like a dragon that was ripped straight from the pages of a fairy tale.  The dragoness has beautiful, scarlet colored scales and emerald colored eyes.  There are two large wings on her back.  She is laying on her front and her body is so large that it is completely stuck in the doorway with no space between her body and the doorframe.  The infection must have caused her to rapidly grow to a huge size as she was trying to get through the doorway and became stuck before making it.  The concrete wall around the doorframe has cracked, but not given way yet.";
	otherwise:
		say "     She looks like a dragon that was ripped straight from the pages of a fairy tale.  The dragoness has beautiful, scarlet colored scales and emerald colored eyes.  There are two large wings on her back.  Now that she's been freed from the doorway, you're able to see just how big she is.  She's well over 10 feet tall and 15 feet long[if remainder after dividing lust of Christy by 3 is 1].  You can still see the cum you left in her before dripping from her well-used cunt[otherwise if remainder after dividing lust of Christy by 3 is 2].  Christy's belly is quite full of eggs right now, making it difficult for the large dragoness to move around in her improvised lair.  You smile happily at your handywork, looking forward to her laying her clutch so you can play with her again and maybe fill her all over again with eggs[end if][if lust of Christy > 2].  The red dragon can often be found snuggled around her clutch of eggs protectively[end if].";


instead of sniffing Christy:
	say "The large, fecund dragoness smells strongly of the arousal she's trying to suppress.";

Instead of conversing the Christy:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if hp of Christy is 0:
		if lust of Christy is 0 and libido of Christy is 0:
			say "     'Finally, someone is here to fuck me... I mean, save me!' the dragoness cheers when she sees you.  'My name is Christy.  I've been trapped here for a while now.  I think I can get free if I had something slimy to grease myself with.  If you have something like that, could you please FREE me?'";
		otherwise:
			say "     'Finally, someone is here to fuck me... I mean, save me!' the dragoness cheers when she sees you.  'My name is Christy.  I've been trapped here for a while now and some horrible monster on the other side of the door raped my vulnerable pussy.'";
			say "     'Really? That sounds horrible!' you exclaim, playing dumb.";
			say "     'Anyway, I think I can get free if I had something slimy to grease myself with. If you have something like that, could you please FREE me?' Christy asks.";
		now hp of Christy is 1;
	otherwise if hp of Christy is 1:
		say "     'Did you find something slimy I can use to free myself with? If you have something like that, please FREE me.' Christy says.";
	otherwise if hp of Christy > 1:
		say "     'Thanks again for freeing me, can you fuck me now? Gah! I didn't mean to say that! [one of]Damn it, it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery.'[or]Must think of anything except... hot... wonderful... sex.'[or]None of this would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[at random]";


DragonFreeing is an action applying to nothing.

understand "free dragon" as dragonfreeing;
understand "free dragoness" as dragonfreeing;
understand "free Christy" as dragonfreeing;

check dragonfreeing:
	if dragoness is visible, say "Not here.  You should go to the other side of the door." instead;
	if Christy is not visible, say "Who?" instead;
	if hp of Christy is 0, say "You don't know how to free her yet. You should talk to her face to face first." instead;
	if hp of Christy > 1, say "You already freed her from the doorway." instead;
	
Carry out dragonfreeing:
	if glob of goo is owned:
		let number be 0;
		repeat with Q running through invent of the the player:
			increase number by 1;
			if q matches the regular expression printed name of glob of goo:
				remove entry number from invent of the player;
				break;
		say "     You give the goo to Christy.  She smears the goo in the places where her body is jammed against the doorframe, greasing herself up.  'Oh yeah, that feels nice!' Christy moans as she rubs the goo on herself.  'If only I could reach my pussy, then I could... Ah! Bad thoughts! Bad thoughts!'";
		say "     When she finishes, she braces her front legs on the walls on both sides of the doorframe and starts pushing against it.  As she struggles, you drop your pack and head over to help her, grabbing one shoulder and pulling.  At first nothing happens, but then her body violently pops free from the doorway like a cork from a bottle of champagne.  The cracks in the concrete around the doorframe break further and parts of the wall around the door collapse, blocking the passageway as it caves in.  Christy, unable to control her forward momentum, accidentally bowls you over and you end up pinned beneath her.";
		say "     'My hero! Huh, where did you go?' Christy asks, unaware that you're pinned beneath her.  She shifts her bulk around as she tries to find you and then accidentally rubs her pussy against your face, sending waves of pleasure through her body.  Overcome by all her pent up lust, Christy starts to grind her pussy back and forth against your head. 'Oh, God yes! No! I must control these urges... I must... oh, screw it! It feels too damn good!'";
		say "     Christy still doesn't seem to realize that it is your face that she is rubbing her pussy against.  If you start protesting this treatment, Christy could snap out of it and stop... or you could just sit back, relax and enjoy this situation.  Do you want to yell at Christy to stop?";
		increase score by 10;
		remove the dragoness from play;
		now hp of Christy is 2;
		if player consents:
			say "     You shout at Christy and she returns to her senses.  Christy looks under her belly and spots you pinned beneath her.  She blushes and gets up off of you as she says, 'Oh! I'm so sorry.  I didn't know.'";
		otherwise:
			say "     You smile and decide to let Christy continue to grind her pussy against your face. Your head becomes soaked with her love juices as her arousal builds. Christy starts to let out loud roars of pleasure as she grinds her pussy against you at a faster and faster pace.  Your nose brushes against her clit with each grinding motion she makes.  The scent of her snatch is actually quite pleasant.";
			say "     Christy finally orgasms and she lets out an ear-splitting roar.  Her pussy lips suddenly grip the sides of your head and yank it all the way into her pussy.  The muscles of her love canal squeeze your head tightly and start to quickly pull more of your body inside as Christy's body is hit by one orgasm after another.  Alarmed by this new development, you finally start yelling at Christy to try to get her to stop.  Unfortunately, Christy is so overcome by the pleasure that she is oblivious.  Christy's huge pussy pulls and tugs your body until your feet are pulled inside with a wet slurp noise, then you're forced to curl up inside her womb.  You're not sure how much time passes, but eventually you wake up in a small, dark, and cramped room.";
			move player to Small Dark Room;
	otherwise:
		say "     You don't have something slimy to free her with.";


Section 5 - Small Dark Room and Egg

Small Dark Room is a room.  The description of Small Dark Room is "     You're curled up in a ball inside a dark room that is so small that the curved walls and ceiling are pressing against your body from all sides.  You should try to [link]STRUGGLE[end link] to get out.";
dragontype is a number that varies.

instead of sniffing Small Dark Room:
	say "The only scent in here is a new, draconic odor that you can't identify.";

DragonHatching is an action applying to nothing.

understand "struggle" as dragonhatching;
understand "struggle to get out" as dragonhatching;

check dragonhatching:
	if the location of player is not Small Dark Room, say "That verb does not make sense in this context." instead;
	
Carry out dragonhatching:
	say "     You punch one of the walls and to your surprise you punch a hole in it very easily.  You spend several minutes widening the hole until it's large enough for you to fit through.  You squirm your way out and find yourself back in the room with Christy.  'Oh, so that's where you went,' the dragoness remarks as she sees you.  Unsure of what she's talking about, you look at the place you crawled out of and see that it was a huge egg!";
	if lust of Christy is 2:
		say "     It seems that Christy has laid her eggs and made a nest for them here.";
	otherwise if lust of Christy > 2:
		say "     It seems that Christy's gathered her other eggs from the other side of the building and made a nest for them here.";
	move player to Back Room;
	say "[dragonchange]";

to say dragonchange:
	now libido of player is 99;
	if "Male Preferred" is not listed in feats of player:
		now tailname of player is "Slutty Dragoness";
		now facename of player is "Slutty Dragoness";
		now bodyname of player is "Slutty Dragoness";
		now cockname of player is "Slutty Dragoness";
		now skinname of player is "Slutty Dragoness";
		now scalevalue of player is 5;
		now bodydesc of player is "[one of]fecund[or]beastial[at random]";
		now bodytype of player is "[one of]draconic[or]reptilian[at random]";
		now the daycycle of player is 0;
		now tail of player is "You have a long, thick, and scaly dragon tail with your ass[if cocks of player > 0 and cunts of player > 0], gaping pussy lips and pendulous balls[otherwise if cunts of player > 0] and gaping pussy lips[otherwise if cocks of player > 0] and pendulous balls[end if] beneath it.";
		now body of player is "huge and draconic. You're over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body.  There are large bat like wings on your back";
		now face of player is "reptilian shape with a long snout.  Your mouth is full of sharp teeth that peek out past your thin lips.  Your head is bald except for two backwards facing horns";
		now skin of player is "blue coloured dragon scales covering your";
		now cock of player is "[one of]draconic[or]azure[or]blue dragon[at random]";
		if "Herm Perferred" is listed in feats of player and dragontype is 0:
			say "     You look down at your body and discover that you[apostrophe]ve been completely transformed into a Slutty Dragoness!  While not as big as Christy, you have become quite the sexy beast.";
			now cocks of player is 1;
			now cock length of player is 24;
			now cock width of player is 16;
			now cunts of player is 1;
			now cunt length of player is 20;
			now cunt width of player is 15;
			now dragontype is 1;
		otherwise if dragontype is 0:
			say "     You look down at your body and discover that you[apostrophe]ve been completely transformed into a Slutty Dragoness!  While not as big as Christy, you have become quite the sexy beast.";
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
			now cunts of player is 1;
			now cunt length of player is 20;
			now cunt width of player is 15;
			now dragontype is 1;
		otherwise:						[reinfection to slutty dragoness]
			say "     Soaked by the dragoness's juices as she orgasms hard, you can feel your dragon infection reasserting itself.  You groan in lustful pleasure as you transform into a slutty dragoness like her";
			now dragontype is 1;
			if cunts of player is 0:
				say ".  You moan softly and sink to your knees as a hot pleasure fills your groin.  Wet juices soak your thighs as you feel a fresh pussy grow in and you orgasm hard.";
				now cunts of player is 1;
				now cunt length of player is 8;
				now cunt width of player is 4;
			otherwise:
				say ".";
	otherwise:
		now tailname of player is "Horny Dragon";
		now facename of player is "Horny Dragon";
		now bodyname of player is "Horny Dragon";
		now cockname of player is "Horny Dragon";
		now skinname of player is "Horny Dragon";
		now scalevalue of player is 5;
		now bodydesc of player is "beastial";
		now bodytype of player is "[one of]draconic[or]reptilian[at random]";
		now the daycycle of player is 0;
		now tail of player is "You have a long, thick, and scaly dragon tail with your ass[if cocks of player > 0 and cunts of player > 0], gaping pussy lips and pendulous balls[otherwise if cunts of player > 0] and gaping pussy lips[otherwise if cocks of player > 0] and pendulous balls[end if] beneath it.";
		now body of player is "huge and draconic. You're over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body.  There are large bat like wings on your back";
		now face of player is "reptilian shape with a long snout.  Your mouth is full of sharp teeth that peek out past your thin lips.  Your head is bald except for two backwards facing horns";
		now skin of player is "blue coloured dragon scales covering your";
		now cock of player is "[one of]draconic[or]azure[or]blue dragon[at random]";
		if dragontype is 0:
			say "     You look down at your body and discover that you've been completely transformed into a Horny Dragon!  While not as big as Christy, you have become quite the sexy beast.";
			now cocks of player is 1;
			now cock length of player is 24;
			now cock width of player is 16;
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
			now dragontype is 2;
		otherwise:						[reinfection to horny dragon]
			say "     Soaked by the dragoness's juices as she orgasms hard, you can feel your dragon infection reasserting itself.  You groan in lustful pleasure as you transform into a horny dragon to mate with her";
			now dragontype is 2;
			if cocks of player is 0:
				say ".  You moan softly and sink to your knees as a hot pleasure fills your groin.  A bulge of throbbing, sensitive flesh forms at your crotch, growing out to form a new cock for you.  It pulses in your hand and bursts forth with its first blasts of hot, dragon cum.";
				now cocks of player is 1;
				now cock length of player is 8;
				now cock width of player is 4;
			otherwise:
				say ".";
	if lust of Christy > 0:
		now lastChristyfucked is turns + 24;
		say "[dragonessupdate]";	[advancing and clearing Christy's egg status]


Section 6 - Sexing Christy

Instead of fucking the Christy:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if hp of Christy is 0 or hp of Christy is 1:
		say "     Your at the wrong end to do something like that to the big dragoness.  Besides, you suspect she's rather be freed... to start, at least.";
	otherwise if libido of Christy is odd:		[still waiting after female sex]
		say "     You just played with the Christy recently and pussy is still very wet with her juices from your earlier fun.  Maybe you should give her some time to rest.  You don't want to make another move on her too soon, otherwise she may start resisting your advances.";
	otherwise if remainder after dividing lust of Christy by 3 is 1:
		say "     Christy's still leaking some of your cum from the last time you screwed her.  Maybe you should give her time to rest.  You don't want to make another move on her too soon, otherwise she may start resisting your advances.";
	otherwise if remainder after dividing lust of Christy by 3 is 2:
		say "     Christy, plump with eggs, isn't really up for any fun right now.  As it is, her pussy's too high up for any kind of satisfying fun.  Besides, you shouldn't do that while she's pregnant.  You may wish to come back again later to see how her [if lust of Christy > 3]new [end if]clutch is coming along.";
	otherwise if hp of Christy is 2:
		say "     You move up beside the large dragoness and rub against her, making her moan softly. You scritch over her scaly side, exciting her further.  'Mmm... that feels so good, but I've got another itch you can scratch,' she says before catching herself.  'Oh, I mean... ah, I really shouldn't...' she says, trailing off as you continue, watching her wide hips wiggle and tail raise up in response.  You nuzzle her and whisper that you could make her feel much better, give her the relief she needs.";
		say "     With a little coaxing, soon she's moaning and rumbling with lust.  'Oh, I really shouldn't, but I need it so bad,' she groans as she turns around in the large room and waves her gaping slit at you.  'And you did save me, so I guess I owe you,' she says, clearly making excuses for herself[if libido of Christy > 0 and lust of Christy > 0].  'And this time it won't be those strange, sexy beasts, but my sexy hero,' she says, unknowing you are all one in the same[otherwise if libido of Christy > 0 or lust of Christy > 0].  'And this time it won't be that strange, sexy beast, but my sexy hero,' she says, unknowing you're both one in the same[end if].  You move in behind her and run your hand over her huge slit, making her moan loudly.";
		say "[christysex]";
		increase hp of Christy by 1;
	otherwise if hp of Christy is 3:
		say "     Deciding you want to enjoy the lovely dragoness's body again, you slide up beside her and start scritching along her neck and nuzzle up to her head.  She rumbles softly as you find some sensitive spots in need of attention.  'Mmm... feeling playful again... I could really stand to be filled again.  Ah!  I mean, I can feel my body wanting it again, but I really shouldn't.'  You keep scritching and nuzzling her, telling her she'll feel better afterwards.  'Well, I guess you're right.  Another good fucking would do me a world of good.  Oh... I need to watch my language!' she chides herself as she turns around, offering her large cunt to you again.";
		say "[christysex]";
		increase hp of Christy by 1;
	otherwise if hp of Christy > 3:
		say "     Looking for more dragonloving, you nuzzle and scritch her head, going to those sensitive spots that feel so good and wear down her resistance.  'Again... I could really use a good pounding.  Ah! I mean... oh whatever.  I could use a little relief or I won't be able to think straight at all  Just get back there and give it to me hard.'  Grinning at how easily she's giving in to your advances now, you move around behind her and rub up against her dripping slit.";
		say "[christysex]";

to say christysex:
	if cocks of player > 0 and cock length of player > 4:		[cock of adequate size]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy rumbles in appreciation as she feels your draconic body moving against hers and preparing to mount and fill her needy cunt.  Being smaller than her, you partially cover that large backside of hers as she lowers her pussy into position for you to mate her.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you to mate her";
		say ".  Taking your cock in hand, you get yourself lined up with her dripping slit and sink slowly into it[if cock length of player < 20].  She moans in pleasure as she feels your cock sinking into her needy hole and presses back against your thrusts[otherwise].  She roars in lustful pleasure at the size of the meat filling her needy hole and presses back against your thrusts eagerly[end if].";
		say "     Placing your hands on her wide, scaly ass, you squeeze it firmly and start pounding away at her, driving your cock into her again and again, listening to her [if hp of Christy < 4]stifled[otherwise]lustful[end if] moans.  'Oh, that feels so good!  Take me like a wild animal!  Use me like a beast!' she groans in need.  'I... I mean, oh never mind.  Just keep fucking me until I'm full[if lust of Christy > 2] again[end if],' she begs.";
		say "     Eager to please such a request, you pound into her harder and faster.  You wrap one arm around her raised tail for support and bring the other to her dripping pussy.  You rub over her sensitive folds and at her swollen clit, making her squeeze around you all the tighter[if cunt length of player < 20].  Despite her great size, her cunt is able to tighten nicely around your relatively small penis[otherwise].  Having your huge cock in her cunt clearly excites the dragoness greatly and you can feel her inner walls rippling across your entire length[end if].  Eventually, the stimulation gets to be too much for the both of you and you cum hard, pumping [if lust of Christy > 2]another[otherwise]your[end if] hot load into her heated womb as she orgasms with a loud roar.";
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
		increase lust of Christy by 1;
		now lastChristyfucked is turns;
	otherwise if cocks of player > 0:					[cock of inadequate size]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy rumbles in appreciation as she feels your draconic body moving against hers and preparing to satisfy her needy cunt.  She lowers that large backside of hers, bringing her pussy into position for you.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you";
		say ".  Your cock barely pushes at all into the dragoness's large cunt, providing little stimulation for you both.  Moving your hands down, you take her wet, puffy lips and rub them together while grinding your cock against those sensitive folds, getting her to moan in pleasure.  Grinning at your solution, you start grinding your cock against her pussy.";
		say "     You work and tease her pussy lips with your cock, rubbing against them and leaking precum onto them as her wet juices flow out over your shaft.  You nuzzle and kiss her large rump, making her moan all the more.  'Mmm... I can't wait until you can properly fuck me,' the dragoness moans.  'You need to find a way to get a bigger cock so you can screw me.'  She blushes at her words, burying her head in her dragon paws as she's unable to deny her desires.  Eventually, the stimulation gets to be too much for the both of you and you cum hard, spraying your seed across her wet folds as she orgasms with a muffled roar.";
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
		increase libido of Christy by 1;
		now lastChristyfucked is turns;
	otherwise:									[female]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy rumbles in appreciation as she feels your draconic body moving against hers and preparing to satisfy her needy cunt.  She lowers that large backside of hers, bringing her pussy into position for you.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you";
		say ".  You run your hands over her wide slit, teasing her sensitive folds and spreading her leaking juices over them.  Leaning down a little, you start licking and kissing at her cunt while your fingers caress her pussy.";
		say "     You work and tease her pussy lips with your fingers, then move to her throbbing clit.  Her juices are warm, spicy and delicious.  'Oh, I shouldn't be enjoying doing this with another woman, but you make me feel so good.  Mmm... how I wish you had a cock to fill me though,' she moans.  Deciding to fill the dragoness in another way, you slide one of your arms into her slick hole, eliciting a lustful groan of 'Oh, my hero!' from her as you do.";
		say "     Pounding your arm into her, you fist the dragoness hard and deep.  You can feel her inner walls trembling around you with increasing excitement.  You kiss and lick at her pussy each time you drive all the way to the shoulder into her.  Your fingers stroke and tease inside her, rubbing any sensitive spot or ridge you can find.  Your free hand it stuffed between your legs, playing with your own dripping cunt.  Eventually, the stimulation gets to be too much for the both of you and you cum hard.  You soak your hand with your juices while she orgasms with a roar.";
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
		increase libido of Christy by 1;
		now lastChristyfucked is turns;


Section 7 - Guide to Christy Stats

[ hp of Christy	]
[ 0 = no talk	]
[ 1 = trapped	]
[ 2 = just freed	]
[ 3 = sexed once	]
[ 4 = sexed more	]

[ lust of Christy		]
[ for M/F sex		]
[ 0 = unfucked		]
[ 1 = recently fucked	]
[ 2 = preggers		]
[ 3+ = repeats above	]

[ libido of Christy			]
[ for F/F sex (and tiny cock sex)	]
[ 0 = none					]
[ 1 = recent sex				]
[ 2+ = repeats above			]


Section 8 - Endings

When play ends:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if NoIntroduction is 1:
		if bodyname of player is "Slutty Dragoness":
			if humanity of player is less than 10:
				say "     With your humanity gone, you aimlessly wander the city streets until the military arrives and captures you.  They examine you until they discover that you[apostrophe]re no longer infectious, then they sell you to a zoo.  Since they feed you well and provide you with a nice, warm cave to be your home, you decide to stay there for a time.  But when an anthro dragon comes to the zoo one day and catches your eye, you decide it's time to move on.  With a hop and a flap, you leap onto the bars of the cage over your enclosure and bend them apart easily.  As the other patrons scream and run, the dragon remains, locked in your gaze.  You scoop him up in your large paw and, after a few false starts, fly off with him to set up a love nest of your own.";
			otherwise:
				say "     Although you survived with your humanity intact, you still have trouble controlling the lust of your slutty dragoness body.  Over time, you learn to control the lust with meditation... and orgies, lots and lots of orgies.  With that under at least partial control, you are able to focus on making a living in this changed world with your changed body.  Succeeding at learning to fly, you take up a job as a courier.  With your strong dragon body, you are able to transport large packages, often bringing them into infected areas.  And once there, there are always plenty of excited people to satisfy your lusts by fucking your needy body.";
		otherwise if bodyname of player is "Horny Dragon":
			if humanity of player is less than 10:
				say "     Following a compulsion, you spread your wings and fly away from the city.  You find a nice cave to live in, then you set about fulfilling your instinctive urge to kidnap princesses and accumulate a horde of treasure.  The occasional hero who comes wanting to play the brave knight to slay the dragon and save the princess make for an enjoyable divertissement as well.  These princesses are eventually returned full of eggs and, after a few times, start looking forward to their next kidnapping.";
			otherwise:
				say "     Although you survived with your humanity intact, you still have trouble controlling the lust of your Horny Dragon body. Over time, you learn to control the lust with meditation... and orgies, lots and lots of orgies.  With that under at least partial control, you are able to focus on making a living in this changed world with your changed body.  Succeeding at learning to fly, you take up a job as a courier.  With your strong dragon body, you are able to transport large packages, often bringing them into infected areas.  And once there, there are always plenty of excited people to satisfy your lusts by fucking them.";
		if hp of Christy is 0 or hp of Christy is 1:
			if lust of Christy > 2:
				say "     The dragoness you found trapped in a doorway is freed by her offspring after they hatch.  She never discovers the identity of the father.  Her offspring begin to worship her as a deity, then they conquer a large part of the country and make her the queen of it.";
			otherwise:
				say "The dragoness you found trapped in a doorway is discovered by the military.  They examined her until they discovered that she was no longer infectious, then they left... without freeing her from the doorway.  Eventually, the trapped dragoness became a tourist attraction and her exposed pussy gets fucked by almost every male tourist that visits the city.";
		otherwise:
			if lust of Christy > 2:
				say "     After you freed her from the doorway where you found her, Christy[apostrophe]s eggs eventually hatch.  Caring for her children helps to mellow out her lust enough for her to learn how to control it.  Her children grow up to be fine dragons and she loves them dearly, even after they start kidnapping princesses[if dragonessfuck is 1].  She never discovers that you were the one who knocked her up before freeing her[end if][if humanity of player > 9 and hp of Christy > 3].  Her dragon offspring permit you to visit the dragoness from time to time and she eagerly accepts your lustful advances now[end if].";
			otherwise:
				say "     After you freed her from the doorway where you found her, Christy was eventually found by the military.  They examined her until they discovered that she was no longer infectious, then they left her alone. Christy struggled for months to control the extreme lust that the infection gave her, but in the end she decided to embrace her new, slutty nature and she became a very famous porn star[if humanity of player > 9 and hp of Christy > 3].  You visit the dragoness from time to time and enjoy the company of her and her lustful co-stars[end if].";

Stuck Dragon ends here.