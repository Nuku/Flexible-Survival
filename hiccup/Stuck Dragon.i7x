Version 4 of Stuck Dragon by hiccup begins here.
[Version 4 - Caught! - Stripes]

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
		say "     With her belly bloated with eggs, her pussy's too high up for any kind of satisfying fun.  Besides, you probably shouldn't do that while she's pregnant.  You may wish to come back again later to see how her [if lust of Christy > 3]new [end if]clutch is coming along.";
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
			if dragonessfuck is not 2, now dragonessfuck is 1;
			say ".  'Oh, no!  You ARE one of those mindless beasts and you ARE going to violate me!  Please keep touching me like that.  Ah!  I mean, don't do that again,' she cries out as you keep stroking her pussy, running your hands up and down each of those rippling, sensitive lips.  You start licking and kissing along it as well, listening to her lustful cries and ignoring her weak, false protests.  Her cries and her body's reaction clearly tells you she wants and needs this.  You drive an arm into her massive cunt, making her moan and her pussy squeezes around it, throbbing around you with the pulse of her blood through her huge body.";
			say "     'Ah!  That doesn't feel like a throbbing, hard cock,' the dragoness wonders aloud.  'Why aren't you fucking me?  Oh, are you a woman?  Ooooh, that's so naughty' she moans before catching herself.  'I mean, that's not fair, denying me a good fucking.  No, what I meant to say is there are so many big, sexy beasts out there to fuck you.  Can't you go find one of them and bring them back for me?  Wait, I mean... oh mmm... nevermind... just don't stop,' she cries louder as you work your arm into her harder and faster while licking at her wide slit.  Her body responds on its own, her large cunt overflowing with juices and her inner walls rippling and tugging at your arm, pulling hard on you to keep fucking her.";
			say "     Her protests are soon entirely replaced with loud roars of pleasure as you bring her to her peak. Finally her pussy clamps down around your arm as an orgasm rocks through her body, making the walls groan.  You keep pumping into her through her climax while lapping up her overflowing juices.  Her hot cum flows down over your bare body as you grind against her until you cum hard as well.  This is great, it's like having your own personal dragon fuck-toy.";
		otherwise if libido of Christy > 0:
			say ".  'Oh no!  It's YOU again, isn't it?' she shrieks, recognizing the way you touch and grab her cunt.  'You naughty girl!  Why can't you... ngg... leave me alone.  Why do you have to touch me like that?  It makes me feel so good.  Ah!  I mean, don't do that again,' she cries out as her body responds by arching up her tail and trying to rub back against your touch.  You keep stroking her pussy, running your hands up and down each of those rippling, sensitive lips.  You lick and kiss along it as well, listening to her lustful cries over her half-hearted protests.  As before, you know what her body wants and you'll make sure to give it to her.  You drive an arm into her massive cunt, making her moan and her pussy squeezes around it, pumping with the pulse of her blood through her huge body.";
			say "     'Ah!  Why don't you have a big, hard cock for me?' the dragoness wonders aloud.  'Ohhh... that sounds like a great idea!  Go get a throbbing, meaty penis and come back to fill me with it.  No, I mean, leave me alone.  Go away and don't come back.'  You don't listen to her and keep pounding your whole arm into her, fisting her huge slit.  'Don't come back until you've got a huge, hard shaft to fill me,' she moans as her excitement builds.  'Mmm... no, don't go yet... so close,' she says as her dripping cunt quivers against you as you keep rubbing against her and licking up those overflowing juices.  Her body responds on its own, her large cunt soaked with juices and her inner walls rippling and tugging at your arm, pulling hard on you to keep fucking her.";
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
			now dragonessfuck is 2;
			say ".  'Oh, no! You ARE one of those mindless beasts and you ARE going to violate me! Please don't put your big... throbbing... manhood in my defenseless... and wet... pussy!' she moans as you keep grinding against her wet, sensitive pussy lips.  You part those folds and sink your cock into her, licking and kissing at her gigantic ass as you do, listening to her lustful cries over her half-hearted protests.  Her cries and her body's reaction clearly tells you she wants and needs this and you shove your [cock size desc of player] [cock of player] shaft into her huge pussy with a loud, lustful groan.";
		otherwise:
			say ".  'Oh, no!  Don't violate me again!' the dragoness shrieks.  'Laying those eggs was an unbelievably pleasurable... I mean uncomfortable experience!' she cries out even as her body grinds back against you.  You part those folds and sink your cock into her, licking and kissing at her gigantic ass as you do, listening to her lustful cries and ignoring her clearly false protests.  As before, you know what her body wants and you'll make sure to give it to her.  You shove your [cockname of player] [cock of player] shaft into her huge pussy with a loud, lustful groan as you start fucking her again.";
		if cock length of player is less than 20:
			say "     'You evil monster!  How could you?  Oh yeah, that feels great... er... horrible! I said it feels horrible!' she cries out before catching herself.  'Mmm, now pound me harder... I mean, stop you vile creature!' the dragoness roars.  She's obviously having trouble controlling the urges of her body as you pump your cock into her again and again.  Her wide pussy squeezes around your cock, throbbing around you with the pulse of her blood through her huge body.  As you fuck her, you lick and kiss at her huge rear, rubbing your body against her to stimulate your trapped lover further.  Her body responds on its own, her large cunt overflowing with juices and her inner walls rippling and tugging at your cock, pulling hard on you to keep fucking her.";
		otherwise:
			say "     'Oh god, it's so BIG and it feels wonderful inside me... er... horrible! I said it feels horrible inside me!' she cries out before catching herself.  'Mmm, now pound me harder... I mean, stop you vile creature!' the dragoness roars.  She's obviously having trouble controlling the urges of her body as you pump your cock into her again and again.  Her wide pussy squeezes around your cock, throbbing around you with the pulse of her blood through her huge body as your large cock pounds into her.  As you fuck her, you lick and kiss at her huge rear, rubbing your body against her to stimulate your trapped lover further.  Her body responds on its own, her large cunt overflowing with juices and her inner walls rippling and tugging at your cock, pulling hard on you to keep fucking her.";
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
	otherwise if hp of Christy > 1 and hp of Christy < 5:
		say "     'Thanks again for freeing me, can you fuck me now? Gah! I didn't mean to say that! [one of]Damn it, it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery.'[or]Must think of anything except... hot... wonderful... sex.'[or]None of this would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[at random]";
	otherwise if hp of Christy < 7:
		say "     'Thanks again for freeing me, can you fuck me now[one of]?'  She then eeps and covers her muzzle, turning to look away for a moment.  '[or]?  Gah!  I didn't mean to say that!  [or]?'  She blushes red.  'Oh my!  [purely at random][one of]Damn it, it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery.'[or]Must think of anything except... hot... wonderful... sex.'[or]None of this would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[at random]";
	otherwise if hp of Christy is 7:
		say "     'Thanks again for freeing me.  Maybe we could play around again soon.'  She blushes at her words and puts a paw over her draconic muzzle, still a little embarassed by her urges.  'Oh, I really shouldn't have said that.  [one of]Damn it, it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery.'[or]Must think of anything except... hot... wonderful... sex.'[or]Must think of anything except... big... beautiful... eggs.'[or]None of this would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[or]I'm glad you enjoyed being my egg again.  Maybe I can make other friends who'll enjoy it too.'[at random]";
	otherwise if hp of Christy is 8:
		say "     'Thanks for visiting again.  Maybe we could play around again soon.'  She blushes a little at her words, but seems even less embarrassed about her lustful needs than earlier.  '[one of]Mmm... it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery... not that I had nearly this much fun there,' she adds with a giggle.[or]Mmm... I could certainly go for more hot... wonderful... sex,' she rumbles.[or]Mmm... big... beautiful... eggs.'[or]And to think, none of this delightful fun would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[or][if dragontype > 0]I'm glad you enjoyed being my egg again.  Maybe I can make other friends who'll enjoy it too[otherwise]I'm glad we made up.  You were right to tell me what really happened[end if].'[at random]";



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
	now tempnum is 0;
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
			say "     You smile and decide to let Christy continue to grind her pussy against your face. Your head becomes soaked with her love juices as her arousal builds. Christy starts to let out loud roars of pleasure as she grinds her pussy against you at a faster and faster pace.  Your nose brushes against her clit with each grinding motion she makes.  The scent of her snatch is actually quite pleasant.  You lick and lap at her large cunt, enjoying the taste of her hot juices.";
			say "     Christy finally orgasms and she lets out an ear-splitting roar.  Her pussy lips suddenly grip the sides of your head and yank it all the way into her pussy.  The muscles of her love canal squeeze your head tightly and start to quickly pull more of your body inside as Christy's body is hit by one orgasm after another.  Alarmed by this new development, you finally start yelling at Christy to try to get her to stop.  Unfortunately, Christy is so overcome by the pleasure that she is oblivious.  You struggle and squirm inside her, but from the increase in her lustful roaring, it seems to only have increased her ecstasy[if cocks of player > 0 or cunts of player > 0].  The feeling of her vaginal walls squeezing and pulling at you, along with her arousing scent, soon become too much for you and you moan in delight, cumming as well.  Christy's huge pussy pulls and tugs your body until your feet are pulled inside with a wet slurp noise, then you're forced to curl up inside her womb.  You're not sure how much time passes, but eventually you wake up in a small, dark, and cramped room.";
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
	now tempnum is 0;
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
		now body of player is "huge and draconic. You're over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body.  There are large bat-like wings on your back";
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
		otherwise if tempnum is 1:	[re-UB]
			decrease humanity of player by 10;
			if "Pure" is listed in feats of player, increase humanity of player by 2;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 2;
			say "     You're uncertain how long you've been asleep, but eventually you wake up in the familiar enclosure of the egg.  It takes you a few moments to break free and emerge as a slutty dragoness much like the one you were recently inside";
			now dragontype is 1;
			if cunts of player is 0:
				say ".  Wet juices soak your thighs as you feel your new pussy dripping with juices.";
				now cunts of player is 1;
				now cunt length of player is 8;
				now cunt width of player is 4;
			otherwise:
				say ".";
		otherwise if tempnum is 2:	[captured-UB]
			decrease humanity of player by 10;
			if "Pure" is listed in feats of player, increase humanity of player by 2;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 2;
			say "     You're uncertain how long you've been asleep, but eventually you wake up in the warm enclosure of an egg.  It takes you a few moments to break free and emerge as a slutty dragoness much like the one you were recently inside";
			now dragontype is 1;
			if cunts of player is 0:
				say ".  Wet juices soak your thighs as you feel your new pussy dripping with juices";
				now cunts of player is 1;
				now cunt length of player is 20;
				now cunt width of player is 15;
			if "Herm Preferred" is listed in feats of player:
				now cocks of player is 1;
				now cock length of player is 24;
				now cock width of player is 16;
			otherwise:
				now cocks of player is 0;
				now cock length of player is 0;
				now cock width of player is 0;
			say ".  You can see that she's brought you back to her lair, but the dragoness doesn't give you a chance to enjoy your freedom, stuffing you right back into cunt again.  You moan and squirm, much to her delight, as she uses you like a toy again.";
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
		now body of player is "huge and draconic. You're over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body.  There are large bat-like wings on your back";
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
		otherwise if tempnum is 1:	[re-UB]
			say "     You're uncertain how long you've been asleep, but eventually you wake up in the familiar enclosure of the egg.  It takes you a few moments to break free and emerge as a horny dragon to mate with the wonderful dragoness";
			now dragontype is 2;
			if cocks of player is 0:
				say " with the throbbing cock you now possess.";
				now cocks of player is 1;
				now cock length of player is 8;
				now cock width of player is 4;
			otherwise:
				say ".";
		otherwise if tempnum is 2:	[captured-UB]
			say "     You're uncertain how long you've been asleep, but eventually you wake up in the warm enclosure of an egg.  It takes you a few moments to break free and emerge as a horny dragon to mate with the wonderful dragoness";
			now dragontype is 2;
			if cocks of player is 0:
				say " with the throbbing cock you now possess";
				now cocks of player is 1;
				now cock length of player is 24;
				now cock width of player is 16;
				now cunts of player is 0;
				now cunt length of player is 0;
				now cunt width of player is 0;
			say ".  You can see that she's brought you back to her lair, but the dragoness doesn't give you a chance to enjoy your freedom, stuffing you right back into cunt again.  You moan and squirm, much to her delight, as she uses you like a toy again.";
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
	now tempnum is 0;
	if hp of Christy is 0 or hp of Christy is 1:
		say "     You're at the wrong end to do something like that to the big dragoness.  Besides, you suspect she's rather be freed... to start, at least.";
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
	otherwise if dragonessfuck > 0 and ( a random chance of 2 in 5 succeeds ) and ( cocks of player > 0 or cunts of player > 0 ) and ( hp of Christy is 7 or ( hp of Christy is 6 and dragontype is 0 ) ):
		say "[christyuhoh]";
	otherwise if hp of Christy > 3:
		if ( cunts of player > 0 or cocks of player > 0 ) and a random chance of 1 in 3 succeeds:
			say "[christyoral]";
		otherwise:
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
		attempttowait;
		say "     Eager to please such a request, you pound into her harder and faster.  You wrap one arm around her raised tail for support and bring the other to her dripping pussy.  You rub over her sensitive folds and at her swollen clit, making her squeeze around you all the tighter[if cunt length of player < 20].  Despite her great size, her cunt is able to tighten nicely around your relatively small penis[otherwise].  Having your huge cock in her cunt clearly excites the dragoness greatly and you can feel her inner walls rippling across your entire length[end if].  Her large pussy overflows with her juices, filling the air with the scent of arousal.  Her cunt squeezes and tugs at your cock, milking hard at you for [if lust of Christy > 2]another [end if]load[if dragontype > 0].  You know first hand how eager that womb of hers is to be filled and you intend to give her another large clutch to satisfy it[end if].  Eventually, the stimulation gets to be too much for the both of you and you cum hard, pumping [if lust of Christy > 2]another[otherwise]your[end if] hot load into her heated womb as she orgasms with a loud roar.";
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
		attempttowait;
		say "     You work and tease her pussy lips with your cock, rubbing against them and leaking precum onto them as her wet juices flow out over your shaft.  You nuzzle and kiss her large rump, making her moan all the more.  'Mmm... I can't wait until you can properly fuck me,' the dragoness moans.  'You need to find a way to get a bigger cock so you can screw me.'  She blushes at her words, burying her head in her dragon paws as she's unable to deny her desires.  Her large pussy overflows with her juices, filling the air with the scent of arousal.  Her wet folds ripple and slide against your maleness, trying to tug at your cock to milk it for [if lust of Christy > 2]another[otherwise]your[end if] load[if dragontype > 0].  You know first hand how eager that womb of hers is to be filled and you long to have a larger cock to properly experience filling it with a heavy clutch[end if].  Eventually, the stimulation gets to be too much for the both of you and you cum hard, spraying your seed across her wet folds as she orgasms with a muffled roar.";
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
		attempttowait;
		say "     You work and tease her pussy lips with your fingers, then move to her throbbing clit.  Her juices are warm, spicy and delicious.  'Oh, I shouldn't be enjoying doing this with another woman, but you make me feel so good.  Mmm... how I wish you had a cock to fill me though,' she moans.  Deciding to fill the dragoness in another way, you slide one of your arms into her slick hole, eliciting a lustful groan of 'Oh, my hero!' from her as you do.";
		say "     Pounding your arm into her, you fist the dragoness hard and deep.  You can feel her inner walls trembling around you with increasing excitement.  You kiss and lick at her pussy each time you drive all the way to the shoulder into her.  Your fingers stroke and tease inside her, rubbing any sensitive spot or ridge you can find.  Your free hand it stuffed between your legs, playing with your own dripping cunt
.  Her large pussy overflows with her juices, filling the air with the scent of arousal.  Her cunt squeezes and tugs at your arm, milking at it as if it were a throbbing penis that could fill her with eggs[if dragontype > 0].  You know first hand how eager that womb of hers is to be filled and the feeling of her inner walls rubbing against you is very pleasurable[end if].  Eventually, the stimulation gets to be too much for the both of you and you cum hard.  You soak your hand with your juices while she orgasms with a roar.";
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
		increase libido of Christy by 1;
		now lastChristyfucked is turns;


Section 7 - Oral / UB

to say christyoral:
	now tempnum is 0;
	if hp of Christy is 4:
		say "     Looking for more dragonloving, you nuzzle and scritch her head, going to those sensitive spots that feel so good and wear down her resistance.  'Those poundings you gave me earlier felt so good.  Ah!  I mean... oh whatever.  Could we maybe try something a little different this time?' she starts to ask, blushing her red scales to an even deeper crimson.  'I was thinking I might, you know... get a taste this time.' she says, sliding her tongue across her large muzzle at just the thought of it.  Smiling a little at how well this slutty dragoness is coming along, you nod in agreement.";
	otherwise if hp of Christy is 7 and ( dragontype is 1 or dragontype is 2 ):
		say "     Looking for more dragonloving, you nuzzle and scritch her head, going to those sensitive spots that feel so good and wear down her resistance.  'Oh baby... I feel so empty inside.  I want you in me again.  ALL of you,' says, emphasizing her desires.  'Wait, I... yes, I want you in me again, stuffed deep inside me as a big, heavy egg,' she admits, letting her tongue slide across your body as her hips quiver in anticipation of fulfilling her lustful needs.  You agree readily, finding yourself longing to experience it again.";
	otherwise:
		say "     Looking for more dragonloving, you nuzzle and scritch her head, going to those sensitive spots that feel so good and wear down her resistance.  She starts to rumble and nuzzles her way down to your crotch, moaning as she takes in your scent.  'Mmm... your [if cocks of player > 0]cock[otherwise]cunt[end if] smells so tasty.  Eeep!  I mean... screw it... I'd really like another taste of my sexy hero,' she moans, taking in another deep breath of your sex, which sets her hips aquiver.";
	say "     With your agreement to her offer, she rolls onto her side, putting her scaly body on display for you.  You can see the juices tricking down her ass and thigh, clearly already quite excited by the prospect.  You move your hands to rub along her underbelly scales[if lust of Christy > 2] which had recently been stretched full of eggs[end if].  You move into position to lay beside her, putting your face at her cunt to lick at it.  You spread your legs as her long neck bends around to bring her head to your groin.  You moan softly as her tongue starts sliding over you, running [if cocks of player > 0 and cunts of player > 0]across your cock and balls before teasing your wet pussy as well[otherwise if cocks of player > 0]across your cock and balls[otherwise]along your wet pussy[end if].  Putting your hands on her juicy folds, you start rubbing and caressing them as your tongue laps at them.";
	if cocks of player > 0 and cock length of player > 7:
		say "     The dragoness moans in delight at the attention she's receiving and her tonguework becomes more and more eager as well.  Christy slides her large maw down over your [cock size desc of player] [cock of player] [if cocks of player is 1]cock, carefully sucking at it[otherwise if cocks of player > 1]cocks, carefully sucking on them[end if].  While you can tell she's inexperienced, she does try very eagerly and her body seems to know what to do, helping her along considerably.  Her warm, wet mouth is very pleasurable and you start rocking your hips, thrusting into the dragoness's muzzle while her tongue plays in and out of her mouth, alternating between sliding across your shaft[if cocks of player > 1]s[end if][if cunts of player > 1], your cunts[otherwise if cunts of player is 1], your cunt[end if] and your balls.";
	otherwise if cunts of player > 0:
		say "     The dragoness moans in delight at the attention she's receiving and her tonguework becomes more and more eager as well.  Christy slides her long, slender tongue across your wet pussy, lapping up your juices.  While you can tell she's inexperienced, she does try very eagerly and her body seems to know what to do, helping her along considerably[if cocks of player > 0].  She lets her tongue tease across your [cock size desc of player] [cock of player] shaft, but its small size compared to her large maw has her focus on your pussy instead[end if].  Her slick tongue starts teasing at the entrance to your vagina, flicking across your clit, then dives into you, making you moan loudly and rock your hips at this sudden and pleasurable intrusion.";
	otherwise:
		say "     The dragoness moans in delight at the attention she's receiving and her tonguework becomes more and more eager as well.  Christy slides her long, slender tongue across your [cock size desc of player] [cock of player] cock[if cocks of player > 1]s[end if], enjoying the taste of your maleness.  A little too small from her perspective, she doesn't take [if cocks of player > 1]them[otherwise]it[end if] into her muzzle and instead licks and kisses at [if cocks of player > 1]them[otherwise]it[end if] and your balls.  While you can tell she's inexperienced, she does try very eagerly and her body seems to know what to do, helping her along considerably.  Her flexible tongue is very pleasurable and you start rocking your hips, thrusting against the playful appendage as it alternates between sliding across your shaft[if cocks of player > 1]s[end if] and your balls.";
	say "     With all of this, you try your best on staying focused on pleasing the lusty dragoness as well, using your hands, mouth and tongue to lavish attention up her juicy cunt.  Her large pussy quivers and her ass and tail twitch as her excitement builds before peaking with the powerful orgasm that sends her pussy juices washing over you as she cums hard.  Washed over by this rush of her orgasmic fluids and its rich, arousing scent, you cum as well, [if cocks of player > 0 and cock length of player > 7]pumping your load into her muzzle[otherwise if cocks of player > 0]spraying your load across her muzzle[end if][if cocks of player > 0 and cunts of player > 0] and [end if][if cunts of player > 0]soaking your crotch and her tongue in your feminine juices[end if].";
	if hp of Christy is 6 and ( dragontype is 1 or dragontype is 2 ):
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     Still awash in the afterglow of your orgasm, not don't notice immediately as Christy's paws move in and take a hold of you, pushing your face firmly to her quivering cunt.  You just continue to lick and rub at it as those trembling folds start to slide over your head and hands.  It's not until your shoulders are pulled in that you notice something's amiss and you're once again being pulled back into the dragoness's cunt.  You are torn between struggling and squirming just enough to increase her pleasure, a hidden part of you longing to be inside her again.  Noticing your playful squirming, the dragoness moans and rubs her taloned paws over your [bodytype of player] body.";
		say "     'Mmmm... I didn't realize what had happened that first time until later... but once I did, the idea of doing it again just kept coming back.  I hope you don't mind... I just need to be filled so badly.'  She rubs her paws over you and keeps her muzzle at your groin, licking at your crotch as your arousal continues to climb.  With the dragoness's arousing scent and flavour all around you, soaking into you, you can't help but enjoy the feeling of her huge womb calling you back inside her.  As your hips are popping into her pussy, you cum again, adding to the sticky mess of Christy's own juices.  You continue to please her as your body continues to be drawn along by her vagina, sliding past her cervix and into her warm womb.  There you curl up, drifting off into a slumber filled with sexual dreams of dragons and eggs.";
		now tempnum is 1;
		say "[dragonchange]";
		now tempnum is 0;
		follow the turnpass rule;
		now hp of Christy is 7;
	otherwise if hp of Christy >= 7 and ( dragontype is 1 or dragontype is 2 ):
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
		say "     With the foreplay done, you and Christy get on to the main event when her paws take a hold of you and gently press you against her quivering, still orgasming cunt.  Knowing what's coming and eager for it by now, you lick and kiss eagerly at her pussy before her wet folds start to slip over your head and hands.  You squirm and wriggle about, making her moan and roar in ecstacy.  Her inner walls squeeze and tug at you, drawing you inwards.";
		say "     Between the sensation of her vaginal walls squeezing and quivering over you, her heady scent and flavour flooding your senses and her playful tongue and muzzle at work over the rest of your exposed [bodytype of player] body, you are awash in ecstasy.  You feel no reluctance or trepidation now about this wonderfully unusual act of lust.  'Oh, that's just what I need... Mmm... Rub right there...' she moans between licks to your groin.  'Deeper now... I can't wait to have your big, big egg inside me again,' she cries out as she cums again, sending another flood of her juices over your [bodydesc of player] form as you climax as well.  Between your hot fluids and hers, you're sure you've left the lusty dragoness's muzzle thoroughly soaked in arousing juices.  Your hips and legs are drawn in and you're pressed past her cervix into her warm, wet womb.  It feels wonderful to be back inside it and you curl up in its warmth, drifting off to sleep with the pleasant knowledge that you'll be an egg again soon.";
		now tempnum is 1;
		say "[dragonchange]";
		now tempnum is 0;
		follow the turnpass rule;
	otherwise:
		if hp of Christy < 6, increase hp of Christy by 1;
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
	increase libido of Christy by 1;
	now lastChristyfucked is turns;


Section 8 - Christy Uh-Oh

to say christyuhoh:
	let scenerun be 0;
	if cocks of player > 0 and cock length of player > 4:		[cock of adequate size]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy rumbles in appreciation as she feels your draconic body moving against hers and preparing to mount and fill her needy cunt.  Being smaller than her, you partially cover that large backside of hers as she lowers her pussy into position for you to mate her.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you to mate her";
		say ".  Taking your cock in hand, you get yourself lined up with her dripping slit and sink slowly into it[if cock length of player < 20].  She moans in pleasure as she feels your cock sinking into her needy hole and presses back against your thrusts[otherwise].  She roars in lustful pleasure at the size of the meat filling her needy hole and presses back against your thrusts eagerly[end if].";
		say "     Placing your hands on her wide, scaly ass, you squeeze it firmly and start pounding away at her, driving your cock into her again and again, listening to her lustful moans.  'Oh, that feels so good!  Take me like a wild animal!  Use me like a beast!' she groans in need.  'I... I mean, oh never mind.  Just keep fucking me until I'm full[if lust of Christy > 2] again[end if],' she begs.";
	otherwise if cocks of player > 0:					[cock of inadequate size]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy rumbles in appreciation as she feels your draconic body moving against hers and preparing to satisfy her needy cunt.  She lowers that large backside of hers, bringing her pussy into position for you.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you";
		say ".  Your cock barely pushes at all into the dragoness's large cunt, providing little stimulation for you both.  Moving your hands down, you take her wet, puffy lips and rub them together while grinding your cock against those sensitive folds, getting her to moan in pleasure.  Grinning at your solution, you start grinding your cock against her pussy.";
	otherwise:									[female]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy rumbles in appreciation as she feels your draconic body moving against hers and preparing to satisfy her needy cunt.  She lowers that large backside of hers, bringing her pussy into position for you.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you";
		say ".  You run your hands over her wide slit, teasing her sensitive folds and spreading her leaking juices over them.  Leaning down a little, you start licking and kissing at her cunt while your fingers caress her pussy.";
		say "     You work and tease her pussy lips with your fingers, then move to her throbbing clit.  Her juices are warm, spicy and delicious.  'Oh, I shouldn't be enjoying doing this with another woman, but you make me feel so good.  Mmm... how I wish you had a cock to fill me though,' she moans.  Deciding to fill the dragoness in another way, you slide one of your arms into her slick hole, eliciting a lustful groan of 'Oh, my hero!' from her as you do.";
	attempttowait;
	say "     As you stroke her large, luscious ass, you lick and kiss at it.  'Oh, you're such a sexy beast,' you moan aloud.  'I'm so glad I looked for a way to free you after I got a sample of such a hot dragon cunt.'  It takes you a moment to realize what you've said, but it's already too late.  The cat's out of the bag.";
	say "     Christy pulls away from you surprisingly quickly, making you stumble as the plump ass you were pressed against whips away, leaving you facing the snarling dragoness and her many sharp teeth.  'That was you?!  It was, wasn't it?  You were that [']horrible monster['], weren't you?  Admit it!' she growls, snapping her fangorious jaws at you menacingly.'  It looks like it may take some quick talking to get out of this one.  Shall you:  [link]Fess up (1)[as]1[end link], [link]try to talk your way out of it (2)[as]2[end link], or [link]make a run for it (3)[as]3[end link]?";
	say "Option> [run paragraph on]";
	while scenerun is 0:
		get a number;
		if calcnumber < 1 or calcnumber > 3:
			say "Pick option 1 (Confess), 2 (Deny) or 3 (Run) by number> [run paragraph on]";
		otherwise:
			now scenerun is 1;
			if calcnumber is 1:			[Confess]
				say "     Deciding it would be best to tell the dragoness the truth (more or less), you admit to having found her back end first.  'While I was exploring, I found the other half of the warehouse first.  At the time, I was overcome with lust from the infection and was transfixed by your beauty.  I... I'm sorry for what I did.  When I finally started to come to my senses and realized you were talking, I searched for a way around to your front end.  As you've probably seen, the streets around this building are blocked off, so I couldn't just walk around to you.  I had to find another way to get here.  You wouldn't have let me free you if you knew what happened, so I had to keep it from you.  I'm sorry, but I wanted to make it up to you by freeing you.'  You do your best to sound genuinely remorseful about what you did, reaching out to caress her scaled cheek tenderly.  At first she pulls away sharply, but as you continue to explain, she starts to nuzzle up against you, much to your relief.";
				say "     The giant dragoness sobs with a strange mix of growls and sniffles.  'I thought your touch felt familiar, but I didn't... *sniffle*... want to believe... *sniff*... that my hero was...'  You continue to caress her head, seeking to soothe the savage beast.  'Does that mean that you... Was it only you?'";
				attempttowait;
				say "     With a little trepidation, you confess that you're pretty sure only you had found her like that.  You explain that this area is almost inaccessible, adding that you doubt anyone would have found you otherwise[if dragonessfuck is 2].  'And so... all of my eggs are yours, then?' she asks softly.  Swallowing your nervousness, you nod and tell her you're almost positive of that[end if].  She seems almost relieved by this and she nuzzles her head against you harder.  'I... I don't feel so bad if it's just you.  You did come around and save me instead of just leaving me like that.'";
				say "     Feeling that you might just live through this after all, you caress her cheeks and lean in to kiss her on the lips.  You tell her that you're sorry that you kept it from her, but say that you didn't want to upset her.  'I care for you very much, Christy.  I... I didn't want to risk losing you because of something foolish I did before we properly met while I was overcome with lust,' you whisper as you nuzzle her tenderly, trying to sound as sincere as possible.";
				attempttowait;
				say "     Christy growls and knocks you down, putting a large, taloned paw atop you.  'No, you took advantage of me when I was trapped,' she growls menacingly.  'You're going to have to be... punished.' She says the last word with a playful grin and a slow lick of her tongue across your cheek.  Seeing that she's teasing, you relax a little and grin back at her, asking what the great and powerful dragon is going to do to this fallen hero.";
				say "     'Oh, I think you need the traditional punishment,' she says, heftying you [bodytype of player] body [if scalevalue of player < 4]easily [end if]across some crates so you're lying overtop it with your ass overhanging.  With a large paw on your back, her scaled tail slides across your bare bottom.  'Before this, I was a nun, you know.  And it seems I've become rather naughty as well, thanks to you,' she rumbles, giving your ass a swat with her tail.  The blow makes you cry out, mostly in surprise.  She gives you another swat, and another, always careful to control the strength of the swings of her powerful tail to only hurt a little.";
				attempttowait;
				say "     'Are you going to be a good [if cunts of player > 0]girl[otherwise]boy[end if] now?' she rumbles, teasing the tip of her tail across your [if cunts of player > 0 and cocks of player > 0]surprisingly wet pussy and your plump balls[otherwise if cunts of player > 0]surprisingly wet pussy[otherwise]plump balls[end if].  You moan at this touch and press back against it before telling her that you'll be good now.  'Mmm... I don't quite know if I believe you yet,' she teases before giving you another swat.  Finding yourself getting more and more into it, each blow that comes brings pleasure as well as pain, slowly building your excitement higher.";
				say "     As she continues to [']punish['] you, you promise to be good and naughty, to only fuck her when she wants it, to stuff her needy cunt nice and full when you do, and to come back often to do it as much as she needs.  The large dragoness eventually seems pleased with these promises, but doesn't stop spanking you quite yet, clearly having gotten very excited as well.  After so many painfully pleasurable blows that you lose count entirely, she slides her tail across your stinging ass to tease at your [if cunts of player > 0]dripping pussy again[otherwise]throbbing cock[end if].  You moan loudly at its sensual touch as it rubs across your sensitive, excited flesh[if cunts of player > 0] before she sinks as much of her tapered tail as your [cunt size desc of player] cunt can take and pounding you to a loud climax with it[otherwise], stroking firmly against your dribbling, pulsing cock until you cum hard, spraying your seed across the scaley appendage which was punishing you so delightfully moments ago[end if].";
				attempttowait;
				if dragontype is 0:
					say "     Christy lifts you off the crates and snuggles against you, rumbling softly and licking you, panting and moaning from her own orgasm.  'Mmm... I feel much better now,' she rumbles, licking your cheek and nuzzling her large head against yours.  'I... I haven't done anything like that before.  It was kind of fun.  Oh... I'm becoming such a naughty dragon,' she rumbles.  She blushes a little at this, but doesn't seem quite as shy about her body's needs, at least at the moment.  You snuggle with her for a while, sharing a tender moment while you wait for your tender backside to stop throbbing.";
					increase libido of Christy by 1;
					now lastChristyfucked is turns;
				otherwise:
					say "     Christy leans her head overtop you, panting and moaning from her own orgasm, and licks your cheek and nuzzles you.  'And now that you've recieved a good spanking,' she rumbles as he rubs one of her taloned paws across your tender backside, 'it's time for you to be sent to your room, you naughty [if cunts of player > 0]girl[otherwise]boy[end if].'  Still feeling a little light-headed from your afterglow, you don't realize right away what she means.  Turning around, she points her large, soaked cunt towards you and grabs your legs with one strong paw, pulling you towards it.  As your feet sink in, you squirm a little, much to her delight.  'Mmm... you need some alone time to think about what you've done.  A chance to reflect on how you need to be a good lover to make it up to me,' she says between moans as her strong, inner walls pull you inexorably deeper and deeper into her hot and dripping cunny.";
					say "     Longing to be inside her again, you only struggle lightly, enough to increase her pleasure.  There's something strangely arousing about watching yourself be slowly drawn deeper.  Soon her wet folds start to rub against your sore bottom, soothing the ache and exciting you further.  Able to reach them, you start to rub and caress at her pussy's lips and tease her clit, drawing even more moans from her.  'Oh yes, keep that up.  Oh... I'm becoming such a naughty dragon,' she rumbles.  She blushes a little at this, but doesn't seem quite as shy about her body's needs, at least at the moment.  As you sink deeper, you can't help but enjoy the feeling of her huge womb calling you back inside her.  You continue to please her as your [bodytype of player] body continues to be drawn along by her vagina.  Before your head slips into her, you make sure to kiss and lick at her clit, giving her another powerful orgasm that pulls you in the rest of the way to her warm womb.  There you curl up, drifting off into a slumber filled with sexual dreams of dragons and eggs.";
				now hp of Christy is 8;
				now tempnum is 1;
				say "[dragonchange]";
				now tempnum is 0;
				follow the turnpass rule;
				increase libido of Christy by 1;
				now lastChristyfucked is turns;
			otherwise if calcnumber is 2:		[Deny]
				say "     Deciding it'd be safest to deny any involvement, you do admit to having found her back end first.  'While I was exploring, I found the other half of the warehouse first.  But I only saw your backside through a window.  I never went in and instea...'  Your explanation is interrupted as the angry dragoness knocks you to the ground with a powerful blow from her taloned paw.";
				say "     'Liar!  You said you'd [']sampled my hot dragon cunt['] a moment ago.'  You start trying to backpedal and calm her down, but she won't have any of it, slamming you with another powerful blow that makes your head spin.  The dragoness rumbles with a strange mix of growls and sobs as she berates you.  'I thought your touch felt familiar, but I didn't... *sob*... want to believe... *sob*... that my hero was...'  She slams you hard with her tail, flinging you easily against the rubble at the back of the building.";
				say "     'But you're no hero.  You're a cad!  A rogue!  A sneaky, deceitful beast!' she growls as you're knocked back and forth across the room by the rampaging dragoness.  You try to regain your footing and do manage to grab your pack and gear before another blow sends you flying across the room.  Battered and dizzy, you scramble out the nearby door with Christy's snapping jaws in hot pursuit.  You scramble to the open manhole and dive inside before a great wave of fire rushes over it, some spilling down the hole after you.  So great are the fires of her rage that the metal and pavement around the manhole melt, flowing down into the tunnel.  You can hear her sobbing loudly even over the sounds of her scrapping rubble over the blasted hole, sealing it off fully.";
				attempttowait;
				now hp of player is 1;
				now hp of Christy is 90;
				now Dragon Prey is unresolved;
				now Isolated Street is unknown;
				now Back Alley is unknown;
				if Smith Haven Mall Lot South is known:
					say "     With the passage blocked and a rampage dragoness past that, you're have no choice but follow the tunnels back to the mall.  You make your way out, sore and aching all over, before eventually collapsing at one of the tables at the food court to recover.  At least you're somewhere inside and hidden for the moment.  But those thoughts are banished as you find yourself wondering if you told Christy how you found her in the first place.  Or worse yet, where the bunker is.";
					move player to Mall Foodcourt;
				otherwise:
					say "     With the passage blocked and a rampage dragoness past that, you're have no choice but follow the tunnels back to the zoo.  You make your way out, sore and aching all over, before eventually collapsing on a bench nearly to recover.  At least you're somewhere far from the dragoness now.  But those thoughts are banished as you find yourself wondering if you told Christy how you found her in the first place.  Or worse yet, where the bunker is.";
					move player to Gator Pit;
				follow the turnpass rule;
				now hp of player is 1;	[still hp of 1 after resting]
			otherwise if calcnumber is 3:		[Flee]
				let playernum be dexterity of player + dexterity of player + charisma of player + level of player;
				if "Stealthy" is listed in feats of player, increase playernum by 10;
				if "Haggler" is listed in feats of player, increase playernum by 5;
				let playernum be a random number between 1 and playernum;
				let dragonnum be a random number between 1 and 75;
				say "     Deciding it'd be safest to just get out of there as fast as possible, you start to talk, trying to buy some time as you glance over at your gear.  You make an attempt to distract her with your explanation before making a dive to get past her and reach your pack.";
				say "     [special-style-1][playernum][roman type] vs [special-style-2][dragonnum][roman type]:  ";
				if playernum >= dragonnum:
					say "Your ploy works and you manage to dodge the surprised dragoness's blows, managing to grab your pack and gear before your luck runs out.  'I thought you were my hero, but you're nothing but a coward!  A cad!  A rogue!  A sneaky, deceitful beast!' she growls as you're sent flying by a powerful blow from her tail.  Battered and dizzy, you scramble out the nearby door with Christy's snapping jaws in hot pursuit.  You scramble to the open manhole and dive inside before a great wave of fire rushes over it, some spilling down the hole after you.  So great are the fires of her rage that the metal and pavement around the manhole melt, flowing down into the tunnel.  You can hear her sobbing loudly even over the sounds of her scrapping rubble over the blasted hole, sealing it off fully.";
					now hp of player is ( hp of player / 2 );
				otherwise:
					say "Your ploy fails, the dragoness having caught your shifting stance and striking you with a powerful blow from her taloned paw the moment you start to run.  'Coward!  You think you can get out of this?  After what you did?' she growls as she slams you with another powerful blow that makes your head spin.  The dragoness rumbles with a strange mix of growls and sobs as she berates you.  'I thought your touch felt familiar, but I didn't... *sob*... want to believe... *sob*... that my hero was...'  She slams you hard with her tail, flinging you easily against the rubble at the back of the building.";
					say "     'But you're no hero.  You're a cad!  A rogue!  A sneaky, deceitful beast!' she growls as you're knocked back and forth across the room by the rampaging dragoness.  You try to regain your footing and do manage to grab your pack and gear before another blow sends you flying across the room.  Battered and dizzy, you scramble out the nearby door with Christy's snapping jaws in hot pursuit.  You scramble to the open manhole and dive inside before a great wave of fire rushes over it, some spilling down the hole after you.  So great are the fires of her rage that the metal and pavement around the manhole melt, flowing down into the tunnel.  You can hear her sobbing loudly even over the sounds of her scrapping rubble over the blasted hole, sealing it off fully.";
					now hp of player is 1;
				now hp of Christy is 90;
				now Dragon Prey is unresolved;
				now Isolated Street is unknown;
				now Back Alley is unknown;
				if Smith Haven Mall is known:
					say "     With the passage blocked and a rampage dragoness past that, you're have no choice but follow the tunnels back to the mall.  You make your way out, sore and aching all over, before eventually collapsing at one of the tables at the food court to recover.  At least you're somewhere inside and hidden for the moment.  But those thoughts are banished as you find yourself wondering if you told Christy how you found her in the first place.  Or worse yet, where the bunker is.";
					move player to Mall Foodcourt;
				otherwise:
					say "     With the passage blocked and a rampage dragoness past that, you're have no choice but follow the tunnels back to the zoo.  You make your way out, sore and aching all over, before eventually collapsing on a bench nearly to recover.  At least you're somewhere far from the dragoness now.  But those thoughts are banished as you find yourself wondering if you told Christy how you found her in the first place.  Or worse yet, where the bunker is.";
					move player to Gator Pit;
				if hp of the player is 1:
					follow the turnpass rule;
					now hp of player is 1;	[still hp of 1 after resting]


Section 9 - Found by Christy

Dragon Prey is a situation.
The sarea of Dragon Prey is "Outside".
Dragon Prey is resolved.

when play begins:
	add Dragon Prey to badspots of girl;
	add Dragon Prey to badspots of furry;

Instead of resolving Dragon Prey:
	let finale be 0;
	say "     As you're searching around outdoors in the hopes of finding something to help you out, you are instead found by someone who's been looking for you.  While you were on watch for creatures hidden among the buildings, you forgot to check the sky and it's only when a large shadow passes over you that you remember to look up... just as an angry (and familiar) red dragoness slams down atop you, pinning you to the ground.  'Got you, my nasty little [']hero['],' she growls, voice dripping with vitriol as flames and smoke lick at the edge of her fangorious mouth.  'I've been looking all over for you after you ran away before we could finish talking,' she rumbles angrily.  'So, what do you have to say for yourself before I punish you, you wretched liar?' she growls.";
	say "     It seems like this is going to be your last chance.  Will you try apologizing (Y) or struggle to break free (N)?";
	if the player consents:
		let playernum be 10 + charisma of player;
		if "Haggler" is listed in feats of player, increase playernum by 3;
		say "     [special-style-1][playernum][roman type] vs [special-style-2]15[roman type]:  ";
		if playernum >= 15:
			say "You quickly start to apologize to Christy with as much sincerity as you can muster under the rather frightening circumstances.  You tell her that you're sorry that you upset her and that you didn't mean for her to be hurt.  You go on to add that you realized what you were doing was wrong, which is why you went looking for a way to free her.  You confess that you've really started to care for her and that you didn't want to hurt her feeling by telling her that it has been you before.  You add that she's such a kind and loving soul that you didn't want to hurt her any more than you already had.";
			say "     She seems moved by your confession and eventually releases you, nuzzling against you as tears run down her scaly cheeks as you stand back up.  'I'm glad you... *sniff* ... decided to apologize... *sob* ... I don't really want to think about what I might have done otherwise.  You... you were my hero,' she says with a growl at the end, knocking you back several feet onto the ground.  'I don't want to ever see you again,' she says, choking back another sob before turning and flying off.";
			say "     You are saddened at the loss of your friend and lover, having destroyed what was once a beautiful and enjoyable relationship with your deception and base lusts.  Still on the ground where she knocked you down, you watch her fly away, listening to her angry roars as she blasts great gouts of fire into the air to vent her emotions.  Seeing these volatile outbursts, you can see how things may have gone much worse for you.";
			if morale of player > 20:
				now morale of player is morale of player / 2;
			otherwise:
				decrease morale of player by 10;
			now hp of Christy is 100;
		otherwise:
			say "You quickly start trying to apologize to Christy, but have difficulty sounding sincere under the rather frightening circumstances.  You try to tell her that you're sorry that you upset her and that you didn't mean for her to be hurt, but she doesn't buy it.  'No, you're only sorry that you got caught, you wretched liar,' she growls.";
			now finale is 1;
	otherwise:
		say "     You squirm and struggle, trying to pull free of the dragoness, but her grip is too strong.  You even try pushing at her huge body with your legs, but she's too heavy to move.  She starts to laugh at your struggles.  'Look at you, still trying to get out of being punished for what you did.  But it's too late, I've caught you, you wretched liar,' she growls.";
		now finale is 1;
	now Dragon Prey is resolved;
	if finale is 1:		[bad end]
		say "     'You've been a very bad [if cunts of player > 0]girl[otherwise]boy[end if] and you need to be punished properly,' she growls.  'You were my hero, but now you'll be nothing but my toy, my pet,' she rumbles, sliding her tongue across you slowly.  'I'll teach you how to treat me right and make sure you don't do anything like that to me ever again.'";
		say "     As she speaks, she tears off your pack and clothes with flicks of her sharp claws before grinding it all down underfoot.  'You won't be needing that stuff anymore where you're going,' she rumbles with an ominous grin and flick of her tongue across her lips.  Keeping a firm grip on you with her powerful paws, she presses her hindquarters down atop you, grinding her wet pussy onto your [bodydesc of player] body, letting her juices soak over you.  You can't help but moan in response as her soft flesh slides against you, making you excited despite (or perhaps even because) of the perilous situation you find yourself in.";
		say "     She grinds herself down onto you long and hard, eventually climaxing with a roar that blasts a great gout of flame into the sky.  As her pussy's lips ripple and quiver in orgasm, they start pulling you into her.  You cry out and struggle, trying to resist being pulled in, but you cannot break free of their inexorable motion as you are gradually pulled bodily into the dragoness's giant snatch.  Pulled along her vagina, you are drawn into her womb, where you curl up as an egg forms around you, transforming you.";
		attempttowait;
		now tempnum is 2;
		say "[dragonchange]";
		say "     'I'm going to keep making a big, wonderful egg out of you until you learn to be a good, willing dragon toy for me,' she rumbles in pleasure as she pushes you in further.  'And then you'll be my good, willing dragon toy and you'll [bold type]want[roman type] me to keep making a big, wonderful egg out of you.  Mmm... doesn't that sound like fun,' she moans as more quivers of pleasure run through her cunt and you're pulled deeper, forced right back into her womb to become another egg for her.  This happens over and over again, so often that you quickly lose count as you become a lustful servant to your big and beautiful mistress.";
		now hp of Christy is 99;
		now humanity of player is 0;
		end the game saying "You have become Christy's first slutty dragon pet.";
		now battleground is "void";
		wait for any key;
		follow the turnpass rule;
		stop the action;


Section 10 - Guide to Christy Stats

[ hp of Christy	]
[ 0 = no talk	]
[ 1 = trapped	]
[ 2 = just freed	]
[ 3 = sexed once	]
[ 4 = sexed more	]
[ 5 = oral once	]
[ 6 = oral twice	]
[ 7 = UB'd again	]
[ 8 = made up	]
[ 90 = banished	]

[ lust of Christy		]
[ for M/F sex		]
[ 0 = unfucked		]
[ 1 = recently fucked	]
[ 2 = preggers		]
[ 3+ = repeats above	]

[ libido of Christy				]
[ for non-M/F fucking (F/F, oral, UB)	]
[ 0 = none						]
[ 1 = recent sex					]
[ 2+ = repeats above				]

[ dragontype			]
[ 1 = F/H: Slutty Dragoness	]
[ 2 = M: Horny Dragon		]

[ dragonessfuck				]
[ 0 = Didn't fuck dragoness		]
[ 1 = Only F-sex the dragoness	]
[ 2 = Fucked (M) the dragoness	]


Section 11 - Endings

When play ends:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if hp of Christy < 90:
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
					say "     After you freed her from the doorway where you found her, Christy[apostrophe]s eggs eventually hatch.  Caring for her children helps to mellow out her lust enough for her to learn how to control it[if hp of Christy >= 7], more or less[end if].  Her children grow up to be fine dragons and she loves them dearly, even after they start kidnapping princesses[if dragonessfuck is 2 and hp of Christy is not 8].  She never discovers that you were the one who knocked her up before freeing her[end if][if humanity of player > 9 and hp of Christy > 3].  Her dragon offspring permit you to visit the dragoness from time to time and she eagerly accepts your lustful advances now[end if][if humanity of player > 9 and hp of Christy >= 7 and dragontype > 0].  While you don't enter her womb again, preferring to stay as you are, you do help her introduce some [']new friends['] her offspring have found to this unusual pleasure, ensuring the dragoness has a fine collection of lustful lovers of her own[end if].";
				otherwise:
					say "     After you freed her from the doorway where you found her, Christy was eventually found by the military.  They examined her until they discovered that she was no longer infectious, then they left her alone. Christy struggled for months to control the extreme lust that the infection gave her, but in the end she decided to embrace her new, slutty nature and she became a very famous porn star[if humanity of player > 9 and hp of Christy > 3].  You visit the dragoness from time to time and enjoy the company of her and her lustful co-stars[end if][if humanity of player > 9 and hp of Christy >= 7 and dragontype > 0].  You sometimes even get the special treat of helping her intimately introduce one of her eager fans to her womb, ensuring the dragoness has a fine collection of lustful lovers of her own[end if].";
	otherwise if hp of Christy is 90 or hp of Christy is 100:
		if humanity of player >= 10:
			say "     You don't ever see Christy again, though you're pretty sure you hear about her from time to time, as news of large and lustful dragons crop up from time to time that fit her description rather well.  It seems her and her offspring have become quite the scourge, ravaging their territory for food and snatching up victims and kidnapping princesses.  These princesses are eventually returned, but full of eggs, only to be captured again and again a few months later.  Many brave warriors go out to vanquish this great beast, but are never heard from again save for rumours that they've become lustful pets of their would-be adversary.  It seems the dragon doesn't take kindly at all to [']heroes['].";
	otherwise if hp of Christy is 99:
		say "     The repeated effects of the dragoness's womb takes it toll on you, turning you into nothing more than an adoring and lustful pet for the horny dragoness.  You become eager for the dragoness to do this again, loving the feeling of being drawn into her womb, being in her warm belly and becoming an egg again to satisfy her.  It also changes her, making her into an even larger and more menacing dragoness.  Her earlier kindness gone, she now revels in her lustful nature and eagerly snatches up victims to becomes lovers, toys, food, or sometimes even all three[if cocks of player is 0].  Finding some well-endowed creatures to fuck her[otherwise].  Getting you to fuck her repeatedly[end if], she lays clutch after clutch of eggs to create a great horde of dragon offspring.  They, like her, ravage their territory, capturing prey and kidnapping princesses, which they fuck repeatedly until filled with eggs before being returned.   After a few times, the princesses start looking forward to their next kidnapping.";
		say "     Many brave warriors come seeking to vanquish the great dragoness, but they always fall before her terrible might.  Your mistress is always particularly cruel to them before finally teaching them the error of their ways by transforming them into another loving dragon slut pet just as she did with you.  She does not think highly of these would-be [']heroes['] and you're happy to help her stuff them into her needy womb as often as needed until their learn their place as her horny servants.";
		if cunts of player > 0:
			say "     You are fucked often as well, bearing many clutches of your own as well.  Smaller, subservient dragon pets hatch from your eggs and they are made to become servants and fucktoys to your mistress's larger and more powerful offspring.  They, like you, are very pleased to be the slutty servants to the larger dragons and you get fucked as often as you can to ensure that all of your mistress's offspring can have as many of your horny dragon children as they like.";


Stuck Dragon ends here.