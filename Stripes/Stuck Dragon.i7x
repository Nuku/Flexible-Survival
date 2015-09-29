Version 5 of Stuck Dragon by Stripes begins here.
[Version 5.3.1 - UB fix - Stripes]
[- Originally Authored By: Hiccup -]

Section 1 - Finding the Building

Find Building is a situation.
the sarea of Find Building is "Mall".

After resolving a find building, try looking;

Instead of Resolving a Find Building:
	say "While exploring the sewer, you spot a ladder leading up to a manhole. You climb the ladder and push up on the manhole cover. After a bit of effort, you shift the manhole cover to the side and climb the rest of the way up the ladder.  You look around and see that you're back on the city streets, in front of an old building. You don't know if you'll find anything of interest inside, but it could be worth exploring. The nearby streets are completely blocked by debris and wrecked cars so you wouldn't have been able to find this place if you hadn't gone through the sewers.";
	increase the score by 5;
	move the player to Isolated Street;
	now the Isolated Street is known;
	now Find Building is Resolved;

Isolated Street is a room. It is fasttravel. It is private. Inside from the Isolated Street is a room called Old Building.
The description of Isolated Street is "The only thing of interest on this street is an old, rundown building that has been around for a while. It's been condemned for as long as you can remember, so you have no idea what this building was used for.".

Old Building is a room.
The description of Old Building is "[dragonessbldg]".

to say dragonessbldg:
	say "[dragonessupdate]     There are small piles of useless junk and debris scattered around inside the old building.  There is a fine layer of dust is on almost every surface in sight";
	if hp of Christy is 0 or hp of Christy is 1:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by the rear of a large dragoness. The rest of its body is on the other side of the doorway so it can't see you";
		if lust of Christy > 2:
			say ".  There [dragoneggsfull] in the room as well, safely pushed to one side by her tail";
		say ".";
	otherwise:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by a pile of collapsed debris from when Christy was pulled free.";

instead of sniffing the Isolated Street:
	say "Being cut off, there are no irregular scents here.";

instead of sniffing the Old Building:
	say "The air in this old building is thick with the scent of aroused dragoness pussy.";

to say dragoneggsfull:
	if lust of Christy > 5:
		say "are ";
	otherwise:
		say "is a ";
	say "[dragoneggs]";

to say dragoneggs:
	if lust of Christy > 5:
		say "[lust of Christy divided by 3] clutches";
	otherwise:
		say "clutch";
	say " of large dragon eggs";

Section 2 - Trapped Dragon Rear

lastChristyfucked is a number that varies.  lastChristyfucked is normally 300.
NoIntroduction is a number that varies. NoIntroduction is usually 0.

dragoness is in Old Building.  dragoness is a person.
The description of dragoness is "[dragonessdesc]".
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
		say ".  You can still see the cum you left in her before dripping from her well-used cunt[if lust of Christy is not 1].  Nearby, there [dragoneggsfull] on the ground next to her from fucking her earlier[end if].";
	otherwise if remainder after dividing lust of Christy by 3 is 2:		[egg-stuffed]
		say ".  Her belly has swollen up, pressing her even more tightly into the doorway and raising her pussy out of reach.  Touching her, you can feel the bumps of several large, hard forms inside her waiting to come out.  She moans in pleasure at your touch and squirms a little.  It looks like you've impregnated her[if lust of Christy is not 2] again.  Nearby, there [dragoneggsfull] on the ground next to her from fucking her earlier[end if].";
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
			say ".  'Oh, no! You ARE one of those mindless beasts and you ARE going to violate me! Please don't put your big... throbbing... manhood in my defenceless... and wet... pussy!' she moans as you keep grinding against her wet, sensitive pussy lips.  You part those folds and sink your cock into her, licking and kissing at her gigantic ass as you do, listening to her lustful cries over her half-hearted protests.  Her cries and her body's reaction clearly tells you she wants and needs this and you shove your [cock size desc of player] [cock of player] shaft into her huge pussy with a loud, lustful groan.";
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
the sarea of Another Ladder is "Mall".

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
The description of Back Alley is "You're standing in an alley behind an old building.  It's the same old building that you found earlier.  Debris and wrecked cars have cut off this area from the rest of the city.  There is a side entrance to the old building here.  It looks like you've found the way around the blocked doorway.  Hopefully the dragoness has not yet been found.".

Back Room is a room.  The description of Back Room is "[backroomdesc]".

to say backroomdesc:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	say "     There are small piles of useless junk and debris scattered around inside the old building.  A fine layer of dust is on almost every surface in sight";
	if hp of Christy is 0 or hp of Christy is 1:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by the front half of a large dragoness. You can't see the rear of her body, because it's on the other side of the doorway.  There are several bottles of water and packages of food next to the dragoness, which explains why she didn't die of hunger or thirst while being trapped here.";
	otherwise if hp of Christy < 50:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by a pile of debris when the doorway collapsed[if lust of Christy > 2 and lust of Christy < 6].  There are several huge eggs on the ground in an improvised nest constructed by the dragoness in her new lair[otherwise if lust of Christy > 5].  There [dragoneggsfull] on the ground in an improvised nest constructed by the dragoness in her new lair[end if].";
	otherwise:
		say ".  Other than the door you entered through, the only other doorway you can see is completely blocked by a pile of debris when the doorway collapsed[if lust of Christy > 2 and lust of Christy < 6].  There are several huge eggs on the ground in an improvised nest constructed by the dragon in his new lair[otherwise if lust of Christy > 5].  There [dragoneggsfull] on the ground in an improvised nest constructed by the dragon in his new lair[end if].";


instead of sniffing Back Alley:
	say "There are no unusual scents here.";

instead of sniffing Back Room:
	say "The scent of aroused dragoness hangs in the room.";


Section 4 - Trapped Dragon Front

Christy is a woman.  Christy is in Back Room.  The description of Christy is "[christydesc]".
The conversation of Christy is { "Rawr!" }.
christysausage is a truth state that varies.  christysausage is usually false.		[has Christy mentioned the sausage?]
mchristytop is a truth state that varies.  mchristytop is usually false.			[has male Christy topped (M/F or M/M)?]
mchristyanal is a truth state that varies.  mchristyanal is usually false.			[has male Christy topped anal-style?]
mchristybottom is a truth state that varies.  mchristybottom is usually false.		[has male Christy been the bottom?]


to say christydesc:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if hp of Christy is 0 or hp of Christy is 1:
		say "     She looks like a dragon that was ripped straight from the pages of a fairy tale.  The dragoness has beautiful, scarlet-coloured scales and emerald-coloured eyes.  There are two large wings on her back.  She is laying on her front and her body is so large that it is completely stuck in the doorway with no space between her body and the doorframe.  The infection must have caused her to rapidly grow to a huge size as she was trying to get through the doorway and became stuck before making it.  The concrete wall around the doorframe has cracked, but not given way yet.";
	otherwise if hp of Christy < 50:
		say "     She looks like a dragon that was ripped straight from the pages of a fairy tale.  The dragoness has beautiful, scarlet colored scales and emerald colored eyes.  There are two large wings on her back.  Now that she's been freed from the doorway, you're able to see just how big she is.  Her body's well over 10 feet tall and 15 feet long[if remainder after dividing lust of Christy by 3 is 1].  You can still see the cum you left in her before dripping from her well-used cunt[otherwise if remainder after dividing lust of Christy by 3 is 2].  Christy's belly is quite full of eggs right now, making it difficult for the large dragoness to move around in her improvised lair.  You smile happily at your handywork, looking forward to her laying her clutch so you can play with her again and maybe fill her all over again with eggs[end if][if lust of Christy > 2].  The red dragon can often be found snuggled around her [dragoneggs] protectively[end if].";
	otherwise:
		say "     He looks like a dragon that was ripped straight from the pages of a fairy tale.  The dragon has vibrant, scarlet-coloured scales and emerald-coloured eyes.  There are two large wings on his back.  Free of the doorway and grown larger by further transformation after the spicy treat, he's grown to well over twelve feet tall and eighteen feet long.  The large pussy Christy once had is now gone, replaced by an equally impressive set of male equipment.  Below his legs hangs a meaty red cock that's perpetually at least semi-hard and is roughly 30 inches in length when fully engorged.  And behind this ridged pillar of dragon flesh is a large and laden ballsac holding huge testes that must be at least the size of watermelons.";

instead of sniffing Christy:
	if hp of Christy < 50:
		say "The large, fecund dragoness smells strongly of the arousal she's trying to suppress.";
	otherwise:
		say "The large, virile dragon smells strongly of the arousal he's trying to suppress.";

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
	otherwise if christysausage is false and hp of Christy < 50 and a random chance of 1 in 3 succeeds:
		say "     'Things feel so different now,' she says, stretching out one of her taloned paws and wiggling the digits.  'And I can't help thinking it's because of that bottle of strange hot sauce I found at the [bold type]food court[roman type].  The other nuns kept telling me I'd get heartburn if I kept eating stuff like that, but I doubt they imagined it'd be anything like this,' she says, firing a short plume of fiery breath from her maw.  'I mean, how crazy is that?  Or what if I'd actually ordered that [bold type]super spicy sausage[roman type] while I was there?  Oh mmm... now I'm getting hungry[if cocks of player > 0] for some hot and juicy meat[end if],' she rumbles[if libido of Christy is even and the remainder after dividing lust of Christy by 3 is 0].  'How about you help fill me up, hon?  And I don't mean my belly,' she says with a wiggle of her rear - only to bury her muzzle under her paws once she's realized what she's said[end if].";
		now christysausage is true;
		add "super spicy sausage" to invent of Mall Foodcourt;
	otherwise if christysausage is true and carried of super spicy sausage > 0 and a random chance of 1 in 3 succeeds:
		say "     Your chat with Christy is interrupted as her nostrils flare and she starts sniffing closer to you.  'Ooo!  I smell something spicy.  Did you bring me a treat?  [link]Give[as]give super spicy sausage to Christy[end link] it to me, please,' she says with a needy moan.";
	otherwise if hp of Christy > 1 and hp of Christy < 5:
		say "     'Thanks again for freeing me, can you fuck me now? Gah! I didn't mean to say that! [one of]Damn it, it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery.'[or]Must think of anything except... hot... wonderful... sex.'[or]None of this would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[at random]";
	otherwise if hp of Christy < 7:
		say "     'Thanks again for freeing me, can you fuck me now[one of]?'  She then eeps and covers her muzzle, turning to look away for a moment.  '[or]?  Gah!  I didn't mean to say that!  [or]?'  She blushes red.  'Oh my!  [purely at random][one of]Damn it, it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery.'[or]Must think of anything except... hot... wonderful... sex.'[or]None of this would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[at random]";
	otherwise if hp of Christy is 7:
		say "     'Thanks again for freeing me.  Maybe we could play around again soon.'  She blushes at her words and puts a paw over her draconic muzzle, still a little embarrassed by her urges.  'Oh, I really shouldn't have said that.  [one of]Damn it, it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery.'[or]Must think of anything except... hot... wonderful... sex.'[or]Must think of anything except... big... beautiful... eggs.'[or]None of this would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[or]I'm glad you enjoyed being my egg again.  Maybe I can make other friends who'll enjoy it too.'[at random]";
	otherwise if hp of Christy is 8:
		say "     'Thanks for visiting again.  Maybe we could play around again soon.'  She blushes a little at her words, but seems even less embarrassed about her lustful needs than earlier.  '[one of]Mmm... it feels like my body has been constantly in heat since I got infected!'[or]If the other girls saw me like this, I'd become the laughing stock of the nunnery... not that I had nearly this much fun there,' she adds with a giggle.[or]Mmm... I could certainly go for more hot... wonderful... sex,' she rumbles.[or]Mmm... big... beautiful... eggs.'[or]And to think, none of this delightful fun would have happened if I hadn't drunk that strange bottle of hot sauce that I found in the food court.'[or][if dragontype > 0]I'm glad you enjoyed being my egg again.  Maybe I can make other friends who'll enjoy it too[otherwise]I'm glad we made up.  You were right to tell me what really happened[end if].'[at random]";
	otherwise if hp of Christy is 50 or hp of Christy is 51:
		say "     '[one of]Thanks again for freeing me, can I fuck you now?  Gah!  I didn't mean to say that![or]Now I'm stuck with the opposite problem: before I wanted to be filled so bad, but now my... new parts... feel so full and need to be drained.'[or]Damn it, it feels like these balls of mine are in constant need of being drained now!'[or]There's no way they'll let me back into the nunnery like this.  That does sound like it could be fun though.  No!  Bad Christy!  Bad!' he chastises himself.[or]Must think of anything except... hot... wonderful... sex.'[or]First that hot sauce and then that sausage - I'm done with spicy foods.  I'd rather have some hot meat anyhow.  Oh, why do I keep saying stuff like that?'[or]This has been such a strange experience for me.  I mean, look at this big, hard cock of mine.  Seems a shame to have it go to waste though.  I'd sure like to give it a try - just to see.  Ack!  No, I didn't mean that.'[or][mchristytalk01][or][if libido of Christy > 0]Why don't you take a turn being loaded full of eggs?  You know you'll love it.  Ack!  I didn't mean that.'[otherwise]Why don't we see what this big boy can do?  You know you'll love it.  Ack!  I didn't mean that.'[end if][or]Oh, my next confession's going to be a long, strange one.'[in random order]";
	otherwise if hp of Christy is 52:
		say "     '[one of]Thanks again for freeing me.  [if mchristytop is true and ( mchristybottom is false or a random chance of 1 in 2 succeeds )]Can I fuck you again[otherwise]Can you fuck me now[end if]?  Gah!  I didn't mean to say that![or]Now I'm stuck with the opposite problem: before I wanted to be filled so bad, but now my... new parts... feel so full and need to be drained.'[or]Damn it, it feels like these balls of mine are in constant need of being drained now!'[or]There's no way they'll let me back into the nunnery like this.  That does sound like it could be fun though.  No!  Bad Christy!  Bad!' he chastises himself.[or]Must think of anything except... hot... wonderful... sex.'[or]First that hot sauce and then that sausage - I'm done with spicy foods.  I'd rather have some hot meat anyhow.  Oh, why do I keep saying stuff like that?'[or]This has been such a strange experience for me.  First I'm a dragoness and now I've got this big, hard cock of mine.  We should have some more fun with it though.  Ack!  No, I didn't mean that.'[or][mchristytalk01][or][if libido of Christy > 0]Why don't you take a turn being loaded full of eggs?  You know you'll love it.  Ack!  I didn't mean that.'[otherwise if mchristytop is true]Why don't we have another go?  I want to bury this big boy in you again.  You know you love it.  Ack!  I didn't mean that.'[otherwise]Why don't we change things up and see what this big boy can do?  You know you'll love it.  Ack!  I didn't mean that.'[end if][or]Oh, my next confession's going to be a long, strange one.'[in random order]";
	otherwise:			[***needs update - currently matches the above]
		say "     '[one of]Thanks again for freeing me.  [if mchristytop is true and ( mchristybottom is false or a random chance of 1 in 2 succeeds )]Can I fuck you again[otherwise]Can you fuck me now[end if]?  Gah!  I didn't mean to say that![or]Now I'm stuck with the opposite problem: before I wanted to be filled so bad, but now my... new parts... feel so full and need to be drained.'[or]Damn it, it feels like these balls of mine are in constant need of being drained now!'[or]There's no way they'll let me back into the nunnery like this.  That does sound like it could be fun though.  No!  Bad Christy!  Bad!' he chastises himself.[or]Must think of anything except... hot... wonderful... sex.'[or]First that hot sauce and then that sausage - I'm done with spicy foods.  I'd rather have some hot meat anyhow.  Oh, why do I keep saying stuff like that?'[or]This has been such a strange experience for me.  First I'm a dragoness and now I've got this big, hard cock of mine.  We should have some more fun with it though.  Ack!  No, I didn't mean that.'[or][mchristytalk01][or][if libido of Christy > 0]Why don't you take a turn being loaded full of eggs?  You know you'll love it.  Ack!  I didn't mean that.'[otherwise if mchristytop is true]Why don't we have another go?  I want to bury this big boy in you again.  You know you love it.  Ack!  I didn't mean that.'[otherwise]Why don't we change things up and see what this big boy can do?  You know you'll love it.  Ack!  I didn't mean that.'[end if][or]Oh, my next confession's going to be a long, strange one.'[in random order]";


to say mchristytalk01:
	say "[if lust of Christy > 0 and cunts of player > 0]Well, there'll be no more eggs for me like this.  Maybe you can try being loaded and heavy with my eggs for a change.  Eeep!  I'm sorry, I don't know what came over me[otherwise if lust of Christy > 0]Well, there'll be no more eggs for me like this.  If you happen to become a girl, maybe you can try being loaded and heavy with my eggs for a change.  Eeep!  I'm sorry, I don't know what came over me[otherwise if libido of player > 0 and cunts of player > 0]Well, things are certainly going to be different now that I have this,' he says, rocking his hips to make his semi-hard cock sway.  'I mean, I was just getting used to having a hot, juicy cunt and now I've got this instead.  Mmmm... a hot, juicy cunt would feel great right now,' he rumbles, sniffing towards your crotch before pulling away quickly as he realizes what he's doing.  'Sorry, I don't know what came over me[otherwise if libido of Christy > 0]Well, things are certainly going to be different now that I have this,' he says, rocking his hips to make his semi-hard cock sway.  'I mean, I was just getting used to having a hot, juicy cunt and now I've got this instead.  Mmmm... a hot, juicy cunt would feel great right now,' he rumbles before shaking his head to clear that image from it.  'I'm sorry, I don't know what came over me[otherwise if cunts of player > 0]Well, things are certainly going to be different now that I have this,' he says, rocking his hips to make his semi-hard cock sway.  'I mean, I didn't even get a chance to use that hot, juicy cunt and now I've got this instead.  Mmmm... a hot, juicy cunt would feel great right now,' he rumbles, sniffing towards your crotch before pulling away quickly as he realizes what he's doing.  'Sorry, I don't know what came over me[otherwise if libido of Christy > 0]Well, things are certainly going to be different now that I have this,' he says, rocking his hips to make his semi-hard cock sway.  'I mean, I was just getting used to having a hot, juicy cunt and now I've got this instead.  Mmmm... a hot, juicy cunt would feel great right now,' he rumbles before shaking his head to clear that image from it.  'I'm sorry, I don't know what came over me[end if].'";


DragonFreeing is an action applying to nothing.

understand "free dragon" as dragonfreeing.
understand "free dragoness" as dragonfreeing.
understand "free Christy" as dragonfreeing.

check dragonfreeing:
	if dragoness is visible, say "Not here.  You should go to the other side of the door." instead;
	if Christy is not visible, say "Who?" instead;
	if hp of Christy is 0, say "You don't know how to free her yet. You should talk to her face to face first." instead;
	if hp of Christy > 1, say "You already freed her from the doorway." instead;

Carry out dragonfreeing:
	now tempnum is 0;
	if glob of goo is owned:
		delete glob of goo;
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

Small Dark Room is a room.  The description of Small Dark Room is "     You're curled up in a ball inside a dark room that is so small that the curved walls and ceiling are pressing against your body from all sides.  You should try to [link]STRUGGLE[end link] to get out.".
dragontype is a number that varies.

instead of sniffing Small Dark Room:
	say "The only scent in here is a new, draconic odor that you can't identify.";

DragonHatching is an action applying to nothing.

understand "struggle" as dragonhatching.
understand "struggle to get out" as dragonhatching.

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
	now libido of player is 75;
	if "Male Preferred" is not listed in feats of player:
		now tailname of player is "Slutty Dragoness";
		now facename of player is "Slutty Dragoness";
		now bodyname of player is "Slutty Dragoness";
		now cockname of player is "Slutty Dragoness";
		now skinname of player is "Slutty Dragoness";
		now scalevalue of player is 5;
		now bodydesc of player is "[one of]fecund[or]bestial[at random]";
		now bodytype of player is "[one of]draconic[or]reptilian[at random]";
		now the daycycle of player is 0;
		now tail of player is "You have a long, thick, and scaly dragon tail with your ass[if cocks of player > 0 and cunts of player > 0], gaping pussy lips and pendulous balls[otherwise if cunts of player > 0] and gaping pussy lips[otherwise if cocks of player > 0] and pendulous balls[end if] beneath it.";
		now body of player is "huge and draconic. You're over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body.  There are large bat-like wings on your back";
		now face of player is "reptilian shape with a long snout.  Your mouth is full of sharp teeth that peek out past your thin lips.  Your head is bald except for two backwards facing horns";
		now skin of player is "blue coloured dragon scales covering your";
		now cock of player is "[one of]draconic[or]azure[or]blue dragon[at random]";
		if ( "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player ) and dragontype is 0:
			say "     You look down at your body and discover that you've been completely transformed into a Slutty Dragoness!  While not as big as Christy, you have become quite the sexy beast.";
			now cocks of player is 1;
			now cock length of player is 24;
			now cock width of player is 16;
			now cunts of player is 1;
			now cunt length of player is 20;
			now cunt width of player is 15;
			now dragontype is 1;
		otherwise if dragontype is 0:
			say "     You look down at your body and discover that you've been completely transformed into a Slutty Dragoness!  While not as big as Christy, you have become quite the sexy beast.";
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
			now cunts of player is 1;
			now cunt length of player is 20;
			now cunt width of player is 15;
			now dragontype is 1;
		otherwise if tempnum is 1:	[re-UB]
			decrease humanity of player by 10;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 2;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 2;
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
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 2;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 2;
			say "     You're uncertain how long you've been asleep, but eventually you wake up in the warm enclosure of an egg.  It takes you a few moments to break free and emerge as a slutty dragoness much like the one you were recently inside";
			now dragontype is 1;
			if cunts of player is 0:
				say ".  Wet juices soak your thighs as you feel your new pussy dripping with juices";
				now cunts of player is 1;
				now cunt length of player is 20;
				now cunt width of player is 15;
			if "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
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
		now bodydesc of player is "bestial";
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
			let xx be 0;	[random spacer]
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
		say "     You're at the wrong end to do something like that to the big dragoness.  Besides, you suspect she'd rather be freed... to start, at least.";
	otherwise if hp of Christy >= 50:
		say "[maleChristysex]";
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
	otherwise if dragonessfuck > 0 and ( a random chance of 3 in 5 succeeds ) and ( cocks of player > 0 or cunts of player > 0 ) and ( hp of Christy is 7 or ( hp of Christy is 6 and dragontype is 0 ) ):
		say "[christyuhoh]";
	otherwise if hp of Christy > 3:
		if ( cunts of player > 0 or cocks of player > 0 ) and a random chance of 2 in 5 succeeds:
			say "[christyoral]";
		otherwise if hp of Christy >= 8:
			say "     Looking for more dragonloving, you nuzzle and scritch her head, getting her to rumble in pleasure as you tend to those sensitive spots she liked getting scritched the most.  'Mmm... are you looking to give me a good pounding again?  I could certainly go for that.  A good screw would feel wonderful.  Eep!' she exclaims, blushing at her words.  'Oh whatever.  You know I need it, so just get back there and give it to me hard.'  Pleased with how readily she's welcoming your advances now, you move around behind her and rub up against her dripping slit.";
			if a random chance of 2 in 3 succeeds:
				say "[christysex]";
			otherwise:
				say "[christysex2]";
		otherwise:
			say "     Looking for more dragonloving, you nuzzle and scritch her head, going to those sensitive spots that feel so good and wear down her resistance.  'Again... I could really use a good pounding.  Ah! I mean... oh whatever.  I could use a little relief or I won't be able to think straight at all.  Just get back there and give it to me hard.'  Grinning at how easily she's giving in to your advances now, you move around behind her and rub up against her dripping slit.";
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
		say "     Eager to please such a request, you pound into her harder and faster.  You wrap one arm around her raised tail for support and bring the other to her dripping pussy.  You rub over her sensitive folds and at her swollen clit, making her squeeze around you all the tighter[if cock length of player < 20].  Despite her great size, her cunt is able to tighten nicely around your relatively small penis[otherwise].  Having your huge cock in her cunt clearly excites the dragoness greatly and you can feel her inner walls rippling across your entire length[end if].  Her large pussy overflows with her juices, filling the air with the scent of arousal.  Her cunt squeezes and tugs at your cock, milking hard at you for [if lust of Christy > 2]another [end if]load[if dragontype > 0].  You know first hand how eager that womb of hers is to be filled and you intend to give her another large clutch to satisfy it[end if].  Eventually, the stimulation gets to be too much for the both of you and you cum hard, pumping [if lust of Christy > 2]another[otherwise]your[end if] hot load into her heated womb as she orgasms with a loud roar.";
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
		say "     Pounding your arm into her, you fist the dragoness hard and deep.  You can feel her inner walls trembling around you with increasing excitement.  You kiss and lick at her pussy each time you drive all the way to the shoulder into her.  Your fingers stroke and tease inside her, rubbing any sensitive spot or ridge you can find.  Your free hand it stuffed between your legs, playing with your own dripping cunt.  Her large pussy overflows with her juices, filling the air with the scent of arousal.  Her cunt squeezes and tugs at your arm, milking at it as if it were a throbbing penis that could fill her with eggs[if dragontype > 0].  You know first hand how eager that womb of hers is to be filled and the feeling of her inner walls rubbing against you is very pleasurable[end if].  Eventually, the stimulation gets to be too much for the both of you and you cum hard.  You soak your hand with your juices while she orgasms with a roar.";
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
		increase libido of Christy by 1;
		now lastChristyfucked is turns;


to say christysex2:		[post-caught variation]
	if cocks of player > 0 and cock length of player > 4:		[cock of adequate size]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy moans softly with desire as she feels your draconic body moving against hers and preparing to mount and fill her needy cunt.  Being smaller than her, you partially cover that large backside of hers as she lowers her pussy into position for you to mate her.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you to mate her";
		say ".  Having had considerable practice mounting the dragoness, you get yourself lined up with her dripping slit and sink slowly into it[if cock length of player < 20].  She moans in pleasure as she feels your [cock of player] cock sinking into her needy hole and presses back against your thrusts[otherwise].  She roars in lustful pleasure as your impressively large [cock of player] shaft is stuffed into her needy hole and she presses back against your thrusts eagerly[end if].";
		say "     Gripping her wide, scaly ass, you squeeze it firmly and start pounding away at her, driving your cock into her again and again, enjoying the sounds of her lustful moans.  'Oh, that's just what I need!  Pound me hard and take me like a wild animal!  Breed me like a beast! she groans in need.  'I... I mean... oh, just do it!  Fuck that hot pussy of mine until I'm full[if lust of Christy > 2] again[end if],' she begs.";
		attempttowait;
		say "     Planning to do just that, you pound into her harder and faster.  You wrap one arm around her raised tail for support and bring the other to her sopping pussy.  You caress her large, sensitive folds and rub at her swollen clit, making her cunt quiver and squeeze around you all the tighter[if cock length of player < 20].  Despite its great size, her cunt is able to tighten nicely around your relatively small penis[otherwise].  Having your [cock size desc of player] cock in her cunt is clearly very satisfying for the dragoness and you can feel her inner walls rippling across your entire length[end if] as she eagerly grinds herself back against you for more.  The air around you is filled with the scent of her arousal from the excessive amounts of her juices overflowing from her dripping pussy.  This scent excites you further even as her cunt squeezes and tugs at your cock for [if lust of Christy > 2]another [end if]load[if dragontype > 0].  Having experienced those rippling inner walls of hers first hand, you know how eager that womb of hers is to be filled and you intend to give her another large clutch to satisfy it[end if].  Eventually, the you can hold back no longer and you cum hard, shooting [if lust of Christy > 2]another[otherwise]your[end if] hot load into her needy womb as she orgasms with a loud roar.  'Oh yes, give it to me,' she cries out loudly[if lust of Christy > 2].  'Fill me with eggs.'[otherwise].[end if]";
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
		increase lust of Christy by 1;
		now lastChristyfucked is turns;
	otherwise if cocks of player > 0:					[cock of inadequate size]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy moans softly with desire as she feels your draconic body moving against hers and preparing to satisfy her needy cunt.  She lowers that large backside of hers, bringing her pussy into position for you.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you";
		say ".  Given your inadequate size, your [cock size desc of player] cock barely pushes at all into the dragoness's large cunt, providing little stimulation for you both.  You slide your hands down and take the wet, puffy lips of her enlarged pussy and rub them together while grinding your cock against those sensitive folds, enjoying the soft sounds of her pleasure as you do this.  Pleased with the results of your solution, you start grinding your cock against her pussy.";
		attempttowait;
		say "     You work and tease her pussy lips with your cock, rubbing against them and leaking precum onto them as her wet juices flow out over your shaft.  As you do this, you nuzzle and kiss her large rump, drawing out more moans of pleasure from her.  'Mmm... I hope you can find a way to get a nice, big cock so you can fuck me properly,' the needy dragoness moans.  'I want to feel your big, hard cock deep inside me, breeding me properly.'  She blushes at her words, but is unable to deny her desires, grinding back against you firmly.  The air around you is filled with the scent of her arousal from the excessive amounts of her juices overflowing from her dripping pussy.  This scent excites you further even as her wet folds ripple and slide against your maleness, trying to tug at your cock to milk it for [if lust of Christy > 2]another[otherwise]your[end if] seed[if dragontype > 0].  Having experienced those rippling inner walls of hers first hand, you know how eager that womb of hers is to be filled and you long to have a bigger cock to properly enjoy filling her with a heavy clutch[end if].  Eventually, you can hold back no longer and you cum hard, shooting [if lust of Christy > 2]another[otherwise]your[end if] hot load across her wet folds as she orgasms with a roar.";
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
		increase libido of Christy by 1;
		now lastChristyfucked is turns;
	otherwise:									[female]
		if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
			say "     Christy moans softly with desire as she feels your draconic body moving against hers and preparing to satisfy her needy cunt.  She lowers that large backside of hers, bringing her pussy into position for you.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' she rumbles.  'Mmm... take me like the wild beast you are,' she adds, blushing at her own words, but unable to take them back";
		otherwise:
			say "     Christy moans softly and lowers her large hips, bringing her pussy into position for you";
		say ".  You slide your hands over her wide slit, caressing her sensitive folds and spreading her leaking juices over them.  Leaning down a little, you start licking and kissing at her cunt while your fingers rub her pussy.";
		attempttowait;
		say "     You work and tease her sopping lips with your fingers, then move to her throbbing clit.  Her juices are warm, spicy and delicious.  'Oh, I feel so naughty for doing stuff like this with another woman, but you make it feel so goooood,' she rumbles out the last word.  'Mmm... I can't help wishing that you had a cock to fill me though,' she moans.  Deciding to satisfy the dragoness's need in another way, you plunge one of your arms into her slick hole, eliciting a lustful groan of 'Oh, you always know what to do to please me!' from her as you do.";
		say "     As you pound your arm into the dragoness, she presses back into it eagerly.  You can feel her inner walls trembling around you with increasing excitement.  You kiss and lick at her pussy each time you drive all the way to the shoulder into her.  Your hand rubs and caresses at any especially sensitive spot or ridge you can find along her vaginal walls, drawing delightful sounds of pleasure from your large lover.  With your free hand stuffed between your legs, you play with your own dripping cunt, plunging fingers into yourself even as you push into her, filling the air with the scent of arousal.  Her cunt squeezes and tugs at your arm, milking at it as if it were a throbbing penis that could fill her with eggs[if dragontype > 0].  Having experienced those rippling inner walls of hers first hand, you know how eager that womb of hers is to be filled and the feeling of her inner walls squeezing and sliding along your arm is very enjoyable.  You find yourself longing to feel that around a cock as you fill her with a heavy clutch[end if].  Eventually, you can hold back no longer and you both cum hard.  You soak your hand with your juices while she orgasms with a roar.";
		if ( dragontype is 1 and (bodyname of player is not "Slutty Dragoness" or facename of player is not "Slutty Dragoness" or cockname of player is not "Slutty Dragoness" or skinname of player is not "Slutty Dragoness" or tailname of player is not "Slutty Dragoness") ) or ( dragontype is 2 and (bodyname of player is not "Horny Dragon" or facename of player is not "Horny Dragon" or cockname of player is not "Horny Dragon" or skinname of player is not "Horny Dragon" or tailname of player is not "Horny Dragon") ):
			say "[dragonchange]";
		increase libido of Christy by 1;
		now lastChristyfucked is turns;


Section 7 - Oral / UB / Spanking

to say christyoral:
	now tempnum is 0;
	if hp of Christy < 8 or a random chance of 1 in 2 succeeds:		[Oral w/Christy]
		if hp of Christy is 4:
			say "     Looking for more dragonloving, you nuzzle and scritch her head, going to those sensitive spots that feel so good and wear down her resistance.  'Those poundings you gave me earlier felt so good.  Ah!  I mean... oh whatever.  Could we maybe try something a little different this time?' she starts to ask, blushing her red scales to an even deeper crimson.  'I was thinking I might, you know... get a taste this time.' she says, sliding her tongue across her large muzzle at just the thought of it.  Smiling a little at how well this slutty dragoness is coming along, you nod in agreement.";
		otherwise if hp of Christy >= 7 and ( dragontype is 1 or dragontype is 2 ):
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
	otherwise:				[Christy punishment time - post-caught only]
		say "     Looking for more dragonloving, you nuzzle and scritch her head, going to those sensitive spots that feel so good as you attempt to get her lustful and excited again.  'Mmm... I think someone's looking to be naughty again,' she rumbles with a chuckle in her voice.  To your surprise, she knocks you down with one of her large talons, pinning you down.  She leans her large head in close and licks your cheek.  'And naughty [if cunts of player > 0]girls[otherwise]boys[end if] need to be punished,' she adds with a toothy grin before hefting your [bodytype of player] body [if scalevalue of player < 4]easily [end if]across some crates so you're lying overtop it with your ass overhanging once again.";
		say "     Wanting to indulge the dragoness (and having in part enjoyed the experience before despite the later soreness), you squirm playfully as she slides her scaled tail across your bare bottom.  'You've been a naughty [if cunts of player > 0]girl[otherwise]boy[end if] and you've been trying to make me be naughty as well, haven't you?' she purrs before swatting her tail across your ass lightly.  As she continues to spank you with her tail, her tongue slides across your body, sending shivers of pleasure through your [bodytype of player] body.  Her swats are controlled, strong enough to sting but not so much that the powerful tail will hurt you.";
		say "     She pauses a moment to tease the tip of her tail across your [if cunts of player > 0 and cocks of player > 0]surprisingly wet pussy and stiff erection[otherwise if cunts of player > 0]surprisingly wet pussy[otherwise]stiff erection[end if].  You moan at this touch and press back against it, drawing a chuckle from her.  'It seems someone's enjoying their punishment.  That's because you know you deserve it,' she purrs, licking you again.  She nuzzles down your spine to lick across your tender bottom and over your sensitive, excited groin, enjoying the taste of your arousal.  'You are so very naughty,' she says before licking you again.  'And so am I, it seems,' she adds, before pulling away suddenly and giving you another swat.  You cry out in a hazy mix of pleasure and pain as your excitement builds higher.";
		say "     As she contines to [']punish['] you, you are made to promise again to [one of]continue to be her naughty lover[or]fuck her as much as she needs[or]stuff her needy cunt nice and full[or]to come back to play with the naughty dragoness again soon[purely at random].  The large dragoness eventually seems to feel you've been punished enough she slides her tail across your stinging ass to tease at your [if cunts of player > 0]dripping pussy again[otherwise]throbbing cock[end if].  You moan loudly at its sensual touch as it rubs across your sensitive, excited flesh[if cunts of player > 0] before she sinks as much of her tapered tail as your [cunt size desc of player] cunt can take and pounding you to a loud climax with it[otherwise], stroking firmly against your dribbling, pulsing cock until you cum hard, spraying your seed across the scaley appendage which was punishing you so delightfully moments ago[end if] while her tongue licks across your sore ass and sticky crotch.  She roars in pleasure as she climaxes as well, clearing having greatly enjoyed punishing you as well.";
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
		if hp of Christy is 8 and a random chance of 1 in 2 succeeds:	[feet first]
			say "     With the foreplay done, you and Christy get on to the main event when she wraps her paws around your legs, bringing your feet against her quivering, still orgasming cunt.  'Mmm...  I think we'll have you go in this way this time,' she rumbles as her pussy lips start sliding over your feet as they're guided into her cunt.  Eager to be inside the large and lovely dragoness again, you only playfully struggle, teasing your feet against her sensitive folds before you are plunged into her vagina to your knees.  You make sure to squirm and wriggle about, making her moan and roar in ecstasy.  Her inner walls squeeze and tug at you, drawing you inwards on their own.";
			say "     Between the sensation of her vaginal walls squeezing and quivering over you and the sight of her approaching pussy as it pulls you in more and more, you are awash in ecstasy.  The dragoness leans her head in to lick and nuzzle at you, sliding her tongue playfully over your exposed [bodytype of player] body.  You feel no reluctance or trepidation now about this wonderfully unusual act of lust.  'Oh, that's just what I need... Mmm... Rub right there...' she moans between licks to your groin.  'Deeper now... I can't wait to have your big, big egg inside me again,' she cries out as she cums again, sending another flood of her juices over your [bodydesc of player] form as you climax as well as her folds are rippling past your groin.  With your hands within reach of them now, you start rubbing at her pussy and clit, exciting her further until your arms get pulled in as well by those tugging inner muscles as pinned to your side.  As the draws to a close, sliding over shoulders, you make sure to tell her how wonderful this feels and how much you're looking forward to being a nice, big egg for her before your head it pulled in as well.  You are deposited slowly, pleasurably, back into the warm comfort of her womb and you curl up inside it, drifting off to sleep with the pleasant knowledge that you'll be an egg again soon.";
		otherwise:		[head first]
			say "     With the foreplay done, you and Christy get on to the main event when her paws take a hold of you and gently press you against her quivering, still orgasming cunt.  Knowing what's coming and eager for it by now, you lick and kiss eagerly at her pussy before her wet folds start to slip over your head and hands.  You squirm and wriggle about, making her moan and roar in ecstacy.  Her inner walls squeeze and tug at you, drawing you inwards.";
			say "     Between the sensation of her vaginal walls squeezing and quivering over you, her heady scent and flavour flooding your senses and her playful tongue and muzzle at work over the rest of your exposed [bodytype of player] body, you are awash in ecstasy.  You feel no reluctance or trepidation now about this wonderfully unusual act of lust.  'Oh, that's just what I need... Mmm... Rub right there...' she moans between licks to your groin.  'Deeper now... I can't wait to have your big, big egg inside me again,' she cries out as she cums again, sending another flood of her juices over your [bodydesc of player] form as you climax as well.  Between your hot fluids and hers, you're sure you've left the lusty dragoness's muzzle thoroughly soaked in arousing juices.  Your hips and legs are drawn in and you're pressed past her cervix into her warm, wet womb. It feels wonderful to be back inside it and you curl up in its warmth, drifting off to sleep with the pleasant knowledge that you'll be an egg again soon.";
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
	say "     Christy pulls away from you surprisingly quickly, making you stumble as the plump ass you were pressed against whips away, leaving you facing the snarling dragoness and her many sharp teeth.  'That was you?!  It was, wasn't it?  You were that [']horrible monster['], weren't you?  Admit it!' she growls, snapping her fangorious jaws at you menacingly.  It looks like it may take some quick thinking to get out of this one.  Shall you: [link]Fess up (1)[as]1[end link], [link]try to talk your way out of it (2)[as]2[end link], or [link]make a run for it (3)[as]3[end link]?";
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
				say "     'Oh, I think you need the traditional punishment,' she says, hefting your [bodytype of player] body [if scalevalue of player < 4]easily [end if]across some crates so you're lying overtop it with your ass overhanging.  With a large paw on your back, her scaled tail slides across your bare bottom.  'Before this, I was a nun, you know.  And it seems I've become rather naughty as well, thanks to you,' she rumbles, giving your ass a swat with her tail.  The blow makes you cry out, mostly in surprise.  She gives you another swat, and another, always careful to control the strength of the swings of her powerful tail to only hurt a little.";
				attempttowait;
				say "     'Are you going to be a good [if cunts of player > 0]girl[otherwise]boy[end if] now?' she rumbles, teasing the tip of her tail across your [if cunts of player > 0 and cocks of player > 0]surprisingly wet pussy and your plump balls[otherwise if cunts of player > 0]surprisingly wet pussy[otherwise]plump balls[end if].  You moan at this touch and press back against it before telling her that you'll be good now.  'Mmm... I don't quite know if I believe you yet,' she teases before giving you another swat.  Finding yourself getting more and more into it, each blow that comes brings pleasure as well as pain, slowly building your excitement higher.";
				say "     As she continues to [']punish['] you, you promise to be good and naughty, to only fuck her when she wants it, to stuff her needy cunt nice and full when you do, and to come back often to do it as much as she needs.  The large dragoness eventually seems pleased with these promises, but doesn't stop spanking you quite yet, clearly having gotten very excited as well.  After so many painfully pleasurable blows that you lose count entirely, she slides her tail across your stinging ass to tease at your [if cunts of player > 0]dripping pussy again[otherwise]throbbing cock[end if].  You moan loudly at its sensual touch as it rubs across your sensitive, excited flesh[if cunts of player > 0] before she sinks as much of her tapered tail as your [cunt size desc of player] cunt can take and pounding you to a loud climax with it[otherwise], stroking firmly against your dribbling, pulsing cock until you cum hard, spraying your seed across the scaley appendage which was punishing you so delightfully moments ago[end if].";
				attempttowait;
				if dragontype is 0:
					say "     Christy lifts you off the crates and snuggles against you, rumbling softly and licking you, panting and moaning from her own orgasm.  'Mmm... I feel much better now,' she rumbles, licking your cheek and nuzzling her large head against yours.  'I... I haven't done anything like that before.  It was kind of fun.  Oh... I'm becoming such a naughty dragon,' she rumbles.  She blushes a little at this, but doesn't seem quite as shy about her body's needs, at least at the moment.  You snuggle with her for a while, sharing a tender moment while you wait for your tender backside to stop throbbing.";
					increase libido of Christy by 1;
					now lastChristyfucked is turns;
				otherwise:
					say "     Christy leans her head overtop you, panting and moaning from her own orgasm, and licks your cheek and nuzzles you.  'And now that you've received a good spanking,' she rumbles as he rubs one of her taloned paws across your tender backside, 'it's time for you to be sent to your room, you naughty [if cunts of player > 0]girl[otherwise]boy[end if].'  Still feeling a little light-headed from your afterglow, you don't realize right away what she means.  Turning around, she points her large, soaked cunt towards you and grabs your legs with one strong paw, pulling you towards it.  As your feet sink in, you squirm a little, much to her delight.  'Mmm... you need some alone time to think about what you've done.  A chance to reflect on how you need to be a good lover to make it up to me,' she says between moans as her strong, inner walls pull you inexorably deeper and deeper into her hot and dripping cunny.";
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
				say "     [special-style-1][playernum][roman type] vs [special-style-2][dragonnum][roman type]: ";
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
		let playernum be a random number between 1 and playernum;
		say "     [special-style-1][playernum][roman type] vs [special-style-2]15[roman type]: ";
		if playernum >= 15:
			say "You quickly start to apologize to Christy with as much sincerity as you can muster under the rather frightening circumstances.  You tell her that you're sorry that you upset her and that you didn't mean for her to be hurt.  You go on to add that you realized what you were doing was wrong, which is why you went looking for a way to free her.  You confess that you've really started to care for her and that you didn't want to hurt her feeling by telling her that it has been you before.  You add that she's such a kind and loving soul that you didn't want to hurt her any more than you already had.";
			say "     She seems moved by your confession and eventually releases you, nuzzling against you as tears run down her scaly cheeks as you stand back up.  'I'm glad you... *sniff*... decided to apologize... *sob*... I don't really want to think about what I might have done otherwise.  You... you were my hero,' she says with a growl at the end, knocking you back several feet onto the ground.  'I don't want to ever see you again,' she says, choking back another sob before turning and flying off.";
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
		wait for any key;
		end the story saying "You have become Christy's first slutty dragon pet.";
		now battleground is "void";
		wait for any key;
		follow the turnpass rule;
		stop the action;


Section 10 - Super Spicy Sausage

Table of Game Objects (continued)
name	desc	weight	object
"super spicy sausage"	"A sausage so spicy it makes your eyes water just being near it."	1	super spicy sausage

super spicy sausage is a grab object.  It is part of the player.  It is not temporary.

instead of using the super spicy sausage:
	say "You'd picked up this sausage for Christy... besides, you're worried you'll burst into flames just from the first bite.";

the scent of super spicy sausage is "Your eyes and nostrils burn when you bring it close for a sniff test.".


Section 11 - Making Male Christy

instead of trading the super spicy sausage when the current action involves the Christy:
	now carried of super spicy sausage is 0;
	now tempnum is 0;
	say "     Thinking about the spicy sausage you have in your pack, you consider giving it to Christy, uncertain what (if anything) might happen.";
	say "     Shall you give her a big, hot sausage?  There'll be no turning back if you do.";
	if the player consents:
		say "     Taking out the big, red sausage, you offer it to Christy.  Her eyes go wide and she starts to drool just from looking at it.  She leans in and takes a big, long sniff of it.  'Mmm... yeah.  That smells soooooo good,' she rumbles.  She opens her toothy maw, leaning in to get the meaty treat you're holding and, rather than risk your hand, you toss it into her mouth. She snaps her jaws shut and starts chewing it slowly, savouring the burny, burny goodness.";
		say "     After finishing the large sausage, which is nothing but a tiny snack for the big dragoness, her tummy rumbles.  At first you think it's just her hungry for more, but the rumbles continue as the fire in her belly starts to heat up.  A deep red glow can be seen at the back of her throat as its noise grows in intensity.  Christy starts to moan, at first you think from an upset stomach, but the sound turns out to be one of pleasure.";
		attempttowait;
		say "     You then start to notice changes, subtle at first, as her body reacts.  Her body gets a little larger and broader shouldered, her horns grow longer and her back ridges become more pronounced.  Subtle shifts in the shape of her draconic face and jaw also occur.  You're still able to recognize her, but the dragoness's head is a little different from before.  All in all, she looks bigger and stronger.";
		say "     'Something feels weird - but nice.  Really nice.  Umm... back there.  Can you feel me up?  I mean, can you go check me out?  Ack!  Check IT out!  Sorry,' she adds with a deep rumble building in her voice as she speaks.  With a nod and a pat on her shoulder you move around to her rear to check on the dragoness's back end.  And here you see that the changes are even more dramatic and her other changes all make sense.";
		attempttowait;
		if the remainder after dividing the lust of Christy by 3 is 1:
			say "     The familiar sight under Christy's tail is rapidly changing.  Her clit, already large given her size, is growing steadily.  Having passed six inches and going strong, it tapers itself at the tip and form ridges along its length as its progression into becoming a throbbing dragon cock continues.  The rest of her pussy is not exempt from change either, a hot gush of juices and a loud moan from the gender shifting dragoness draws your attention to the rapid growth of her belly.  Her pregnancy, already on its way, is accelerated, quickly growing the eggs to maturity.  A short time later, her vagina quivers and spreads open, allowing the first egg of this clutch to make its passage out.";
			say "     The dragoness blushes and asks you not to watch, but also moans in pleasure and begs you rub her pussy to [']help her out['].  Opting for the latter, you caress her folds while being treated to a front row seat for the egg laying.  One after another, they slip free of her juicy passage, stretching it wide around their smooth, hard shells[if lust of Christy > 3].  They're somewhat smaller than their sibling eggs, probably due to their accelerated rush to be laid[end if].  With some effort and a few orgasms, she manages to work them all out of her contracting uterus.";
			say "     With the clutch safely deposited, the transformation resumes in earnest with the swelling of her folds even as her vaginal opening quivers and tightens, winking one last time before sealing shut.  As the transition continues, the rippled flesh that was once her pussy's lips stretches and sags, hanging freely.  Into this with a slick pop and fresh moans, one large bulge and then another drop into her new ballsac.  With her ovaries now re-purposed as heavy dragon balls and her new penis having grown to an impressive two and a half feet of throbbing breeding flesh, Christy's transition into a virile male is complete.";
			increase lust of Christy by 2;
		otherwise if the remainder after dividing the lust of Christy by 3 is 2:
			say "     The familiar sight under Christy's tail is rapidly changing.  Her clit, already large given her size, is growing steadily.  Having passed six inches and going strong, it tapers itself at the tip and form ridges along its length as its progression into becoming a throbbing dragon cock continues.  The rest of her pussy is not exempt from change either, a hot gush of juices and a loud moan from the gender shifting dragoness draws your attention to the slow growth of her already rounded belly.  Her pregnancy, already well on its way, is accelerated, quickly growing the eggs to maturity.  A short time later, her vagina quivers and spreads open, allowing the first egg of this clutch to make its passage out.";
			say "     The dragoness blushes and asks you not to watch, but also moans in pleasure and begs you rub her pussy to [']help her out['].  Opting for the latter, you caress her folds while being treated to a front row seat for the egg laying.  One after another, they slip free of her juicy passage, stretching it wide around their smooth, hard shells[if lust of Christy > 3].  They're a little smaller than their sibling eggs, probably due to their accelerated rush to be laid[end if].  With some effort and a few orgasms, she manages to work them all out of her contracting uterus.";
			say "     With the clutch safely deposited, the transformation resumes in earnest with the swelling of her folds even as her vaginal opening quivers and tightens, winking one last time before sealing shut.  As the transition continues, the rippled flesh that was once her pussy's lips stretches and sags, hanging freely.  Into this with a slick pop and fresh moans, one large bulge and then another drop into her new ballsac.  With her ovaries now re-purposed as heavy dragon balls and her new penis having grown to an impressive two and a half feet of throbbing breeding flesh, Christy's transition into a virile male is complete.";
			increase lust of Christy by 1;
		otherwise:
			say "     The familiar sight under Christy's tail is rapidly changing.  Her clit, already large given her size, is growing steadily.  Having passed six inches and going strong, it tapers itself at the tip and form ridges along its length as its progression into becoming a throbbing dragon cock continues.  The rest of her pussy is not exempt from change either, a hot gush of juices and a loud moan from the gender shifting dragoness preceding the swelling of her folds even as her vaginal opening quivers and tightens, winking one last time before sealing shut.  As the transition continues, the rippled flesh that was once her pussy's lips stretches and sags, hanging freely.  Into this with a slick pop and fresh moans, one large bulge and then another drop into her new ballsac.  With her ovaries now re-purposed as heavy dragon balls and her new penis having grown to an impressive two and a half feet of throbbing breeding flesh, Christy's transition into a virile male is complete.";
		attempttowait;
		say "     With the still lingering scent of Christy's final female orgasm and the fresh, virile scent of her new masculinity, you're unable to restrain yourself any longer.  Witnessing the startling transition has made your nanite-ridden body powerfully aroused and so you decide to introduce the ex-dragoness to her - or his now - new gender by taking hold of that throbbing cock and lavishing attention upon it with hands and mouth.  Having expanded to something almost two and a half feet in length, there's plenty of that fiery red pole to enjoy.";
		say "     Feeling this strange new pleasure, Christy leans his neck down to check under himself to discover what's become of him.  'Oh my!  Is that mine?  It looks delicious!  I mean, vicious.  But, oh damn does that feel good,' she moans as you give it a long lick across its leaking cumslit.  'Don't stop.'  At this point, you're too far gone in your lustful desires to stop even if he wanted you to and you throw yourself into masturbating him in earnest.";
		attempttowait;
		say "     Rubbing along the length of his shaft allows you to feel those firm ridges, your mind imagining how they might feel inside you.  The thought of them sliding along your [if cunts of player > 0]vaginal[otherwise]anal[end if] walls becomes increasingly desirable with every gooey gob of precum you lick from his leaking cumslit.  You drink down the strong, zesty and (most of all) virile fluid with unrestrained desire.";
		say "     Christy, lavished with all this attention on his brand new cock, cannot hold out long.  You can feel a warmth build in the meaty orbs pressed against you.  And when he roars with his first male orgasm, those big balls throb and pulse, blasting their load on its way, ejecting moments later onto your face and down your throat.  You do your best to swallow as much as you can get, but his outflow is too fast and too great to keep up with.  You're left sticky and bloated with musky dragon cum.";
		attempttowait;
		say "     Licking at the yawning cumslit, you feel it squeeze and pull lightly on your tongue.  Already being slick with the dragon stud's cum, you feel an urge to try delving deeper into that massive organ.  Shall you press onwards?  ([link]Yes[as]y[end link] for CV or [link]No[as]n[end link] to end.)[line break]";
		if the player consents:
			say "     Licking deeper and fingering the dragon's gooey cumslit, it starts to pull more firmly on your tongue even as it stretches open.  Lust-addled by everything that's happened, you don't hold back, pushing deeper to get more.  Christy, feeling this new pleasure growing, starts moaning in delight again.  You push a forearm into the dragon's cock, only to have it gripped tightly by the urethral passage and pulled in up to the shoulder.  This presses your face against the yawning spire and within moments your cum-slathered head is drawn in as well.  More and more of you quickly follows, first your shoulders and then chest, waist and hips.";
			say "     Inside the throbbing, pulsating tunnel, you breathe in the heavy, thick scent of draconic musk.  It is all around you now, flooding your senses and keeping you too turned on to think clearly about your current situation; it just feels too erotic to resist.  Your arousal grows further as the slick flesh of his cock moves across your hips and groin.  By this point, you're also moving deeper into her, part of you having moved from her penis and into her lower body.  As you pass by her throbbing prostate, the dragon's moans grow louder and more musky fluid is leaked onto you.";
			attempttowait;
			say "     For a time, your movement is slowed as more and deeper channels must be stretched wide to accommodate you, but eventually your arm and head make it into a more open space.  Still quite confined, but less restrictive than the cum tube you've been following, the rest of you is more easily able to catch up and soon the whole of you is deposited into that hot, steamy chamber.  It is completely filled with thick semen that fully surrounds you, leaving you marinating in the dragon's sperm in what must be one of Christy's stretched-out balls.  While you do not drown in the sticky fluids, you do get woozy and end up passing out into a bliss-out haze.";
			say "     It is difficult to tell how long you remain within the dragon's balls, but eventually a growth in movement and heat around you partially rouses you.  You shift and squirm inside the tight confines as best you can, hearing an increase in the muffled noises of what you assume to be pleasure coming from the dragon as you do.  With you stimulating the inside of the dragon's testicle even as he rubs his sac from the outside, it isn't too much longer before the process you underwent to get here is reversed, though at a much higher speed.  Pushed out along with a massive blast of dragon cum, you are blasted out onto a crumpled and sticky mat of cardboard boxes.  You are covered head to toe in the dragon's musky payload, panting for air even as you swallow down the slimy seed.";
			attempttowait;
			now tempnum is 3;
			say "[dragonchange2]";
			say "     Looking over at Christy next, you see that he'd rolled onto his side and had been rubbing his penis and ballsac with his forepaws in an effort to cum you out.  'That was intense.  Is it always like that?' he asks, panting.  'And then, when I discovered what'd happened to you, I tried to get you out.  Rubbing my cock and blasting you out felt great.  I'm going to have loads of fun playing with this big, throbbing cock of mine,' he rumbles with a lustful eagerness before realizing what he's said and covering his mouth in shock.  'They're definitely not going to let me back into the nunnery now.'";
		otherwise:
			say "     Christy rolls onto his side, examining his new organ.  'That was intense.  Is it always like that?' he asks, panting[if lust of Christy > 0].  'I guess this means no more eggs for me.  Maybe it can be your turn to have some eggs instead[otherwise].  'Well, at least I won't be having that nagging need to be filled all the time.  Maybe I can take a go at filling you instead[end if],' he rumbles with a lustful eagerness before realizing what he's said and covering his mouth in shock.  'They're definitely not going to let me back into the nunnery now.'";
			if dragontype > 0 and ( ( dragontype is odd and (bodyname of player is not "Slutty Dragoness" or the player is not pure ) ) or ( dragontype is even and (bodyname of player is not "Horny Dragon" or the player is not pure) ) ):
				say "[dragonchange2]";
		if libido of Christy is odd, increase libido of Christy by 1;
		now lastfuck of Christy is turns + 24;
		now hp of Christy is 50;
	otherwise:
		say "     You push the thought from your mind, deciding things are probably better without you messing around with them any further.";


Section 12 - CV Dragon Change

to say dragonchange2:
	now libido of player is 75;
	if "Male Preferred" is not listed in feats of player:
		now tailname of player is "Slutty Dragoness";
		now facename of player is "Slutty Dragoness";
		now bodyname of player is "Slutty Dragoness";
		now cockname of player is "Slutty Dragoness";
		now skinname of player is "Slutty Dragoness";
		now scalevalue of player is 5;
		now bodydesc of player is "[one of]fecund[or]bestial[at random]";
		now bodytype of player is "[one of]draconic[or]reptilian[at random]";
		now the daycycle of player is 0;
		now tail of player is "You have a long, thick, and scaly dragon tail with your ass[if cocks of player > 0 and cunts of player > 0], gaping pussy lips and pendulous balls[otherwise if cunts of player > 0] and gaping pussy lips[otherwise if cocks of player > 0] and pendulous balls[end if] beneath it.";
		now body of player is "huge and draconic. You're over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body.  There are large bat-like wings on your back";
		now face of player is "reptilian shape with a long snout.  Your mouth is full of sharp teeth that peek out past your thin lips.  Your head is bald except for two backwards facing horns";
		now skin of player is "blue coloured dragon scales covering your";
		now cock of player is "[one of]draconic[or]azure[or]blue dragon[at random]";
		if ( "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player ) and ( dragontype < 3 ) and tempnum is 3:
			if dragontype is 0:		[ not previously UB'd - new to form ]
				say "     You look down at your body and discover that you've been completely transformed into a Slutty Dragoness!  While not as big as Christy, you have become quite the sexy beast.";
			otherwise:
				say "     You look down at your body and discover that this experience has restored your draconic infection, completely transformed into a Slutty Dragoness!  While not as big as Christy, you have become quite the sexy beast.";
			now cocks of player is 1;
			now cock length of player is 24;
			now cock width of player is 16;
			now cunts of player is 1;
			now cunt length of player is 20;
			now cunt width of player is 15;
			if dragontype is 1 or dragontype is 2:
				now dragontype is 5;
			otherwise:
				now dragontype is 3;
		otherwise if dragontype < 3 and tempnum is 3:
			if dragontype is 0:		[ not previously UB'd - new to form ]
				say "     You look down at your body and discover that you've been completely transformed into a Slutty Dragoness!  While not as big as Christy, you have become quite the sexy beast.";
			otherwise:
				say "     You look down at your body and discover that this experience has restored your draconic infection, completely transformed into a Slutty Dragoness!  While not as big as Christy, you have become quite the sexy beast.";
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
			now cunts of player is 1;
			now cunt length of player is 20;
			now cunt width of player is 15;
			if dragontype is 1 or dragontype is 2:
				now dragontype is 5;
			otherwise:
				now dragontype is 3;
		otherwise if tempnum is 1:	[re-CV]
			decrease humanity of player by 10;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 2;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 2;
			say "     It takes a while before your senses return enough for you to take note of your changes from your confinement in the dragon's balls.  Looking much like Christy's earlier form, your long soak in the dragon's cum has turned you into a slutty dragoness for him to mate";
			if dragontype is 3 or dragontype is 4:
				now dragontype is 3;
			otherwise if dragontype is 5 or dragontype is 6:
				now dragontype is 5;
			if cunts of player is 0:
				say ".  Wet juices soak your thighs as you feel your new pussy dripping with juices.";
				now cunts of player is 1;
				now cunt length of player is 8;
				now cunt width of player is 4;
			otherwise:
				say ".";
		otherwise:						[reinfection to slutty dragoness]
			say "     Soaked by the torrent of dragon's sperm as he orgasms hard, you can feel your dragon infection reasserting itself.  You groan in lustful pleasure as you transform into a slutty dragoness for him to mate";
			if dragontype is 1 or dragontype is 2:
				now dragontype is 1;
			otherwise if dragontype is 3 or dragontype is 4:
				now dragontype is 3;
			otherwise if dragontype is 5 or dragontype is 6:
				now dragontype is 5;
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
		now bodydesc of player is "bestial";
		now bodytype of player is "[one of]draconic[or]reptilian[at random]";
		now the daycycle of player is 0;
		now tail of player is "You have a long, thick, and scaly dragon tail with your ass[if cocks of player > 0 and cunts of player > 0], gaping pussy lips and pendulous balls[otherwise if cunts of player > 0] and gaping pussy lips[otherwise if cocks of player > 0] and pendulous balls[end if] beneath it.";
		now body of player is "huge and draconic. You're over 6 feet tall and 9 feet long from your head to the tip of your tail. You have four muscular and reptilian legs supporting your body.  There are large bat-like wings on your back";
		now face of player is "reptilian shape with a long snout.  Your mouth is full of sharp teeth that peek out past your thin lips.  Your head is bald except for two backwards facing horns";
		now skin of player is "blue coloured dragon scales covering your";
		now cock of player is "[one of]draconic[or]azure[or]blue dragon[at random]";
		if dragontype < 3 and tempnum is 3:
			if dragontype is 0:		[ not previously UB'd - new to form ]
				say "     You look down at your body and discover that you've been completely transformed into a Horny Dragon!  While not as big as Christy, you have become quite the sexy beast.";
			otherwise:
				say "     You look down at your body and discover that this experience has restored your draconic infection, completely transformed into a Horny Dragon!  While not as big as Christy, you have become quite the sexy beast.";
			now cocks of player is 1;
			now cock length of player is 24;
			now cock width of player is 16;
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
			if dragontype is 1 or dragontype is 2:
				now dragontype is 6;
			otherwise:
				now dragontype is 4;
		otherwise if tempnum is 1:	[re-CV]
			say "     It takes a while before your senses return enough for you to take note of your changes, having become a horny dragon much like the one you were recently inside";
			if dragontype is 3 or dragontype is 4:
				now dragontype is 4;
			otherwise if dragontype is 5 or dragontype is 6:
				now dragontype is 6;
			if cocks of player is 0:
				say " with the throbbing cock you now possess.";
				now cocks of player is 1;
				now cock length of player is 8;
				now cock width of player is 4;
			otherwise:
				say ".";
		otherwise:						[reinfection to horny dragon]
			say "     Soaked by the torrent of dragon's sperm as he orgasms hard, you can feel your dragon infection reasserting itself.  You groan in lustful pleasure as you transform into a horny dragon much like him";
			if dragontype is 1 or dragontype is 2:
				now dragontype is 2;
			otherwise if dragontype is 3 or dragontype is 4:
				now dragontype is 4;
			otherwise if dragontype is 5 or dragontype is 6:
				now dragontype is 6;
			if cocks of player is 0:
				say ".  You moan softly and sink to your knees as a hot pleasure fills your groin.  A bulge of throbbing, sensitive flesh forms at your crotch, growing out to form a new cock for you.  It pulses in your hand and bursts forth with its first blasts of hot, dragon cum.";
				now cocks of player is 1;
				now cock length of player is 8;
				now cock width of player is 4;
			otherwise:
				say ".";
[	if lust of Christy > 0:
		now lastChristyfucked is turns + 24;
		say "[dragonessupdate]";	[advancing and clearing Christy's egg status]	]	[ unnecessary for CV-based change ]


Section 13 - Sex w/Male Christy

to say maleChristysex:
	now tempnum is 0;
	if lastfuck of Christy - turns < 8:
		say "     You've played around with Christy recently and his balls still need a little while to fill back up completely.  It'll be much easier to coax the reluctant dragon into some fun if those big nuts of his are in need of another draining.";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     Somehow you've ended up without a gender despite having been able to completely swap the dragoness's around?  Perhaps you'd best settle yourself before going after him.";
	otherwise if hp of Christy is 50:
		say "     You move up beside the large dragon and rub against him, making him rumble softly. You scritch over his scaly side, exciting him further.  'Mmm... that feels so good, but there's somewhere else that'll feel even better,' he says with a rumble, rocking his hips to make his cock and balls sway.  'Oh, I mean... I don't want to impose, but they've been feeling so full.  And I know you'll make me feel good.'";
		say "     You nod and start moving back and under him, rubbing his belly on your way to that expanding cock.  You start by taking it in hand and running your fingers along its throbbing meat, caressing those ridges.  This gets him rumbling all the louder and a thick gob of precum drools from his shaft.  You press your fingers into the gooey mess and spread it over the stiff shaft, making it sheen with his musky pre.  You then press your mouth to his cum slit and start slurping up the dragon pre.  Its taste is strong and exciting, making you want his cum all the more.";
		say "[mchristy_oral0]";
		now hp of Christy is 51;
	otherwise if hp of Christy is 51:
		say "     You move up beside the large dragon and rub against him, making him rumble softly. You scritch over his scaly side, exciting him further.  'Mmm... that feels so good, but I've got something else for you to rub,' he says before catching himself.  'Oh, I mean... ah, I really shouldn't...' he says, trailing off as you continue, watching his engorging cock stiffen further in response.  You nuzzle him and whisper that you could make him feel much better, give him the relief he needs.";
		say "     'My balls feel so full and heavy.  I know I shouldn't ask, but can you help me drain them again?'  You do your best not to grin, that being your plan all along.  Instead you give him a nuzzle and move back to his pulsing manhood.";
		say "     As before, you start by running your hands along it, butting at those delightful ridges.  This gets him rumbling all the louder and precum leaks forth from its tip.  Licking your lips at the sight of this, you press them around his cum slit and start slurping up the dragon pre.  Its taste is strong and exciting, a testament to the horny dragon's virility.  Tasting it only makes you want his cum more.  But how to get it?  Shall you...";
		if cocks of player > 0 and cock length of player > 4:	[cock of adequate size]
			say "[link]suck him off (1)[as]1[end link], bend over to [link]get fucked (2)[as]2[end link] or resist this temptation and [link]fuck him instead (3)[as]3[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[mchristy_oral0]";
			otherwise if calcnumber is 2:
				if cunts of player > 0:
					say "[mchristy_top0]";
				otherwise:
					say "[mchristy_anal0]";
				now hp of Christy is 52;
			otherwise if calcnumber is 3:
				say "[mchristy_bottom0]";
				now hp of Christy is 52;
		otherwise:
			say "[link]suck him off (Y)[as]y[end link] or bend over to [link]get fucked (N)[as]n[end link]?";
			if the player consents:
				say "[mchristy_oral0]";
			otherwise if cunts of player > 0:
				say "[mchristy_top0]";
				now hp of Christy is 52;
			otherwise:
				say "[mchristy_anal0]";
				now hp of Christy is 52;
	otherwise if hp of Christy >= 52:
		say "[mchristysexmenu]";


to say mchristysexmenu:
	say "     Snuggling up to the dragon, you start with some scritches, getting him to rumble softly in pleasure.  You work your hands over his scaly hide, exciting him further.  'Mmm... oh, that feels so good.  But now I've gone and gotten hard again.  Can you... help me with that?' he asks, looking away.  'I just feel so full[if cunts of player > 0 and the player is impreg_able].  Maybe we can get you full of eggs.  Umm... if you want, that is...' he adds, a deeper rush of crimson on his scaly cheeks[otherwise].' he adds[end if].  'I know I shouldn't, but I really need to be drained.'  You continue the scritching, moving now along his neck and then further down, saying that you'll give your friend the relief he needs.";
	say "     When you reach his underbelly, you start by running your hands over his pulsing manhood.  Rubbing your fingers over those ridges causes his meaty pillar to twitch and stiffen further.  Soon precum is drooling from it and you spread this over the mighty shaft before stealing several gobs of it for yourself to taste.  It is as strong and exciting as ever, the horny dragon's virile flavour making you all the more aroused and eager to play with him.  What kind of fun are you in the mood for this time?";
	now sextablerun is 0;
	now tempnum is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0 and cock length of player > 4:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 1;
		now description entry is "mount the big dragon";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked (vaginal)";
		now sortorder entry is 2;
		now description entry is "bend over for the big dragon stud";
	otherwise:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked (anal)";
		now sortorder entry is 2;
		now description entry is "bend over for the big dragon stud";
	choose a blank row in table of fucking options;
	now title entry is "Oral";
	now sortorder entry is 3;
	now description entry is "suck that big cock of his";
	if hp of Christy >= 55:
		choose a blank row in table of fucking options;
		now title entry is "Oral w/CV";
		now sortorder entry is 6;
		now description entry is "make some room in his balls for you";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck him":
					if mchristytop is true:
						say "[mchristy_bottom1]";
					otherwise:
						say "[mchristy_bottom0]";
				otherwise if nam is "Get fucked (vaginal)":
					if mchristytop is true:
						say "[mchristy_top1]";
					otherwise:
						say "[mchristy_top0]";
				otherwise if nam is "Get fucked (anal)":
					if mchristytop is true:
						say "[mchristy_anal1]";
					otherwise:
						say "[mchristy_anal0]";
				otherwise if nam is "Oral":
					say "[mchristy_oral0]";
				otherwise if nam is "Oral w/CV":
					say "[mchristy_oral0]";
					say "[mchristy_cv1]";
				if hp of Christy is 54 and dragontype > 2, say "[mchristy_cv0]";
				if hp of Christy < 54, increase hp of Christy by 1;
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Christy is turns;
	wait for any key;
	clear the screen and hyperlink list;


to say mchristy_oral0:
	say "     Hungry for another meal of the dragon's thick, spicy cum, you start rubbing your [bodydesc of player] body against that mighty shaft.  The feel of those ridges across your chest[if breasts of player > 0 and breast size of player > 4] and between your boobs[end if] excites you all the more.  Your hands reach further back, rubbing over the smooth scales of Christy's ballsac.  It may just be your excitement, but those orbs feel large, heavy and hot with the semen you crave.";
	say "     All of this has poor Christy rumbling and panting, the flow of pre steadily increasing.  You work your tongue and lips across his glans and into his cum slit, enjoying the dragon's moans as you tease him.  His cock throbs with the slow, strong beat of the dragon's big heart and his meaty hips rock as he resists thrusting that giant pillar of flesh into you.  With him so worked up and you driving him wild, you build him up to a big blast of dragon seed that floods your mouth to the point of overflowing and splatters your face and upper body with the rest of it.  It fills your senses of taste and smell with its spicy flavour, rich with virility.  You gulp down as much as you can, your belly left rounded with your sticky meal.";
	if dragontype > 0 and ( ( dragontype is odd and (bodyname of player is not "Slutty Dragoness" or the player is not pure ) ) or ( dragontype is even and (bodyname of player is not "Horny Dragon" or the player is not pure) ) ):
		say "[dragonchange2]";

to say mchristy_top0:
	say "     Wanting more from the dragon this time, you make sure to get him well and truly worked up first.  By the time he's panting and rumbling with a steady stream of pre coming from his giant cock, you move onto all fours and grind your backside against the drooling glans.  He looks down at you in surprise, the desire to mount you clearly showing even as he tries to hold back.";
	say "     'Ohhh, I so want to fill you with eggs[if lust of Christy > 0] for a change[end if],' he rumbles.  'But I'm so big.  I guess since I've got this big guy, it'd be a waste to not give it a try at least once, as long as you're sure.'  You nod eagerly even as his body's already moving atop you, the dragon's throbbing cock more than ready.  'Well, I'm sure you're going to look so hot when you're filled with my eggs.  Eep!  I mmmm...' he starts to interject, but gets cut off as his thick manhood pushes its way into you.";
	say "     Wanting more from the dragon this time, you make sure to get him well and truly worked up first.  By the time he's panting and rumbling with a steady stream of pre coming from his giant cock, you move onto all fours and grind your backside against that drooling glans.  He looks down at you in surprise, the desire to mount you clearly showing even as he tries to hold back.  'But I'm so big.  I don't want to hurt you.  I guess since I've got this big guy, it'd be a waste to not give it a try at least once.'  You heartily agree, telling him it'll be fine and that it'll be a chance to see how the other half lives.  At this point, even just talking about it has gotten him aroused further the tip of his cock begins to make its way into your heated cunny.";
	say "     Christy, taking concern for his lover, eases himself slowly into you, giving your [bodytype of player] body a chance to adjust[if cunt length of player < 30].  Even with this, it is a little uncomfortable at first before your nanine-infused tissue stretches and accepts it[otherwise].  You hardly need it though, your oversized cunt hungrily welcoming it in[end if].  He is so large that [if scalevalue of player < 3]your torso is eventually stretched completely around it, bulging overfull of dragon meat.  You are so filled that your [body size of player] limbs can barely reach the ground to steady yourself for the epic fucking that is to come and he instead has to grip you with one forepaw to be able to fully penetrate you[otherwise if scalevalue of player is 3]your torso is stretched prominently by it, making a massive cock-shaped bulge through your body[otherwise if scalevalue of player is 4]your torso bulges prominently thanks to the phallic intruder[otherwise]your belly has a marked, phallic bulge showing[end if].  By the time he's fully inside you, you can feel every throb of his strong heartbeat pulsing through his shaft and into you.";
	say "     His first few thrusts are slow and cautious, too much so for your now overloaded libido and you push back, urging him for more.  His excessive restraint begins to waiver and his pace picks up, drawing a long moan from you as those pleasure-giving ridges slide in and out past your sensitive folds and clit.  Your cunt clenches and squeezes around his meat each time this happens, bringing greater pleasure to the randy red dragon.";
	say "     '[if lust of player > 0 and the player is impreg_now]Oh, if you weren't already -mmm- knocked up, I'd be filling you nice and full with -ohhh- some eggs for a change[otherwise if lust of Christy > 0 and the player is impreg_able]Oh, I think -mmm- someone's looking forward to being the one filled with -ohhh- some eggs for a change[otherwise if the player is impreg_now]Oh, if you weren't already -mmm- knocked up, I'd be filling you nice and full with some eggs[otherwise if the player is impreg_able]Oh, I think -mmm- someone's looking forward to being filled with -ohhh- some eggs real soon[otherwise]Oh, I hope you have room for more, because I'm going to fill you with so much cum[end if],' he rumbles lewdly, scarcely able to resist voicing his dirty thoughts by this point.  And true to his word, the dragon's climax comes with a roar of release soon after.  Blast after blast of thick, hot dragoncum flows into you, filling you [if scalevalue of player < 4]so much that you bloat and swell from his prodigious output[otherwise]so much that your belly plumps considerably from the addition his prodigious output[end if].  You cry out in climactic release as well, those titanic blasts filling your womb and gushing out around your stretched cunny driving you over the edge.  After he's done, [if scalevalue of player < 4]he has to use one forepaw to pull your overstuffed body off of his spent shaft[otherwise]your overstuffed body slips a few inches in the slick mess leaking out as he steps back before he slips free[end if], giving you a final taste of those delightful ridges sliding out of you.[fimpregchance]";
	if dragontype > 0 and ( ( dragontype is odd and (bodyname of player is not "Slutty Dragoness" or the player is not pure ) ) or ( dragontype is even and (bodyname of player is not "Horny Dragon" or the player is not pure) ) ):
		say "[dragonchange2]";
	now mchristytop is true;

to say mchristy_top1:
	say "     Wanting the dragon inside you again, you tease him a little longer to get him good and ready as well as to spread a slick coating of precum for the fucking to come.  By the time he's panting and rumbling with a steady stream of pre coming from his giant cock, you move onto all fours and grind your backside against the drooling glans";
	if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
		say ".  Christy rumbles in appreciation at the sight of your draconic body ready and waiting to be mounted.  While smaller than him, you know your body's made for his - and that big schlong of his.  'Mmm... I prefer your new look.  You make a fine, sexy dragoness,' he rumbles.  'Mmm... I'm going to enjoy taking you like a wild beast and filling you with my eggs over and over again,' he adds, blushing at his own words, but unable to take them back.";
	otherwise:
		say ".  He looks down at you, penis twitching with an eagerness to mount you again.";
	say "     Bracing yourself, you push back harder against the male's cock, urging him to mount you.  With a deep rumble, he moves forward, driving close to a foot of his titanic meat into you in one go and then slowing to just a few inches at a time[if cunt length of player < 30].  The size of it makes for slow going at first, the dragon doing his best to hold back despite his obvious desire to rut you[otherwise].  Your oversized cunt welcomes it in with relative ease, your yawning vagina happy to have a chance to be thoroughly filled[end if].  This does give your [bodytype of player] body a chance to adjust, him being so large that [if scalevalue of player < 3]your torso is eventually stretched completely around it, bulging overfull of dragon meat.  You are so filled that your [body size of player] limbs can barely reach the ground to steady yourself for the epic fucking that is to come and he instead has to grip you with one forepaw to be able to fully penetrate you[otherwise if scalevalue of player is 3]your torso is stretched prominently by it, making a massive cock-shaped bulge through your body[otherwise if scalevalue of player is 4]your torso bulges prominently thanks to the phallic intruder[otherwise]your belly has a marked, phallic bulge showing[end if].  By the time he's fully inside you, you can feel every throb of his strong heartbeat pulsing through his shaft and into you.";
	say "     Having fucked you before, his restraint doesn't last long before he's picking up the pace of his thrusts.  You release a long, satisfied moan as those pleasure-giving ridges slide in and out past your sensitive folds and clit.  The throbbing and thrusting of his mighty rod sends waves of delight through you, urging you to push back into his thrusts as best you can.  Your cunt clenches and squeezes around his meat each time this happens, bringing greater pleasure to the randy red dragon.";
	say "     '[if lust of player > 0 and the player is impreg_now]Mmm... you've got to come back here next time you're [one of]looking[or]ready[at random] to be knocked up.  [one of]I want to fill you up with -mmmm- my eggs[or]I want to fill someone with -nnngg- eggs for a change[or]I want to fill you up with clutch after -oh baby!- clutch[in random order][otherwise if lust of Christy > 0 and the player is impreg_able][one of]Oh, I think -mmm- someone's looking forward to being the one filled with -ohhh- some eggs for a change[or]Mmm... let's get you knocked up with my eggs[or]You're going to look soooo hot with my clutch in your belly[in random order][otherwise if the player is impreg_now][one of]Oh, if you weren't already -mmm- knocked up, I'd be filling you nice and full with some eggs[or]Mmm... you need to come back here next time you're looking to be knocked up so I can -mmmm- fill you up with my eggs[or]Come back here with an empty belly so I can put a nice, big clutch in you[in random order][otherwise if the player is impreg_able][one of]Oh, I think -mmm- someone's looking forward to being filled with -ohhh- some eggs real soon[or]Let's get you nice and -nggg- round with my clutch.  Doesn't that sound like -ohhh- fun?  I think that's just what you need[or]Mmm... let's get you knocked up with my eggs[or]You're going to look so hot with a clutch in your belly[in random order][otherwise][one of]Oh, I hope you have room for more, because I'm going to fill you with so much cum[or]Oh, this is going to be a big one.  I'm going to pump you soooo full[or]I've got a big, hot dragon load for you, hot stuff[in random order][end if],' he rumbles lewdly, scarcely able to resist voicing his dirty thoughts by this point.  And true to his word, the dragon's climax comes with a roar of release soon after.  Blast after blast of thick, hot dragoncum flows into you, filling you [if scalevalue of player < 4]so much that you bloat and swell from his prodigious output[otherwise]so much that your belly plumps considerably from the addition his prodigious output[end if].  You cry out in climactic release as well, those large wads filling your womb and gushing out around your stretched cunny driving you over the edge.  After he's done, [if scalevalue of player < 4]he has to use one forepaw to pull your overstuffed body off of his spent shaft[otherwise]your overstuffed body slips a few inches in the slick mess leaking out as he steps back before he slips free[end if], giving you a final taste of those delightful ridges sliding out of you.[fimpregchance]";
	if dragontype > 0 and ( ( dragontype is odd and (bodyname of player is not "Slutty Dragoness" or the player is not pure ) ) or ( dragontype is even and (bodyname of player is not "Horny Dragon" or the player is not pure) ) ):
		say "[dragonchange2]";


to say mchristy_anal0:
	say "     Wanting more from the dragon this time, you make sure to get him well and truly worked up first.  By the time he's panting and rumbling with a steady stream of pre coming from his giant cock, you move onto all fours and grind your backside against the drooling glans.  He looks down at you in surprise, the desire to mount you clearly showing even as he tries to hold back.";
	say "     'But that'd be so hot.  I mean, it's a sin, isn't it?  Such a naughty, dirty, sexy sin.  Oh, I'm such a bad nun,' he rumbles, shaking his head even as his body is already moving atop you, the dragon's throbbing cock more than ready.  'Well, I guess I really do need a draining and you'll look so hot stuffed full of my cum.  Eep!  I mmmm...' he starts to interject, but gets cut off as his thick manhood pushes its way into you.";
	say "     Christy, taking concern for his lover, eases himself slowly into you, giving your [bodytype of player] body a chance to adjust[if the player is not twistcapped].  Even with this, it is quite uncomfortable at first before your nanine-infused tissue stretches and accepts it[otherwise].  You hardly need it though, your well-stretched asshole hungrily welcoming it in[end if].  He is so large that [if scalevalue of player < 3]your torso is eventually stretched completely around it, bulging overfull of dragon meat.  You are so filled that your [body size of player] limbs can barely reach the ground to steady yourself for the epic fucking that is to come and he instead has to grip you with one forepaw to be able to fully penetrate you[otherwise if scalevalue of player is 3]your torso is stretched prominently by it, making a massive cock-shaped bulge through your body[otherwise if scalevalue of player is 4]your torso bulges prominently thanks to the phallic intruder[otherwise]your belly has a marked, phallic bulge showing[end if].  By the time he's fully inside you, you can feel every throb of his strong heartbeat pulsing through his shaft and into you.";
	say "     His first few thrusts are slow and cautious, too much so for your now overloaded libido and you push back, urging him for more.  His excessive restraint begins to waiver as the sinful delight of anal sex tempts him and his pace picks up, drawing a whimpering moan from you as those pleasure-giving ridges slip past your anus and rub against your prostate with every slide in and out.  Your rectal walls squeeze and milk at his meat each time this happens, exciting the randy red dragon all the more.";
	say "     'Ohhh, you're so nice and tight.  Who wouldn't want to fuck a hot ass like yours?  I can tell I'm going to be filling you up so nice and full reeeeal soon,' he rumbles lewdly, no longer willing or able to stop himself from voicing his dirty thoughts by this point.  And true to his word, the dragon's climax comes with a roar of release soon after.  Blast after blast of thick, hot dragoncum flows into you, filling you [if scalevalue of player < 4]so much that you bloat and swell from his prodigious output[otherwise]so much that your belly plumps considerably from the addition his prodigious output[end if].  You cry out in climactic release as well, those titanic blasts filling your belly and gushing out around your stretched asshole driving you over the edge.  After he's done, he pants and stays buried inside you for a while, too drained to pull out.  Eventually though [if scalevalue of player < 4]he has to use one forepaw to pull your overstuffed body off of his spent shaft[otherwise]your overstuffed body slips a few inches in the slick mess leaking out as he steps back before he slips free[end if], giving you a final taste of those delightful ridges sliding out of you.[mimpregchance]";
	if dragontype > 0 and ( ( dragontype is odd and (bodyname of player is not "Slutty Dragoness" or the player is not pure ) ) or ( dragontype is even and (bodyname of player is not "Horny Dragon" or the player is not pure) ) ):
		say "[dragonchange2]";
	now mchristyanal is true;
	now mchristytop is true;

to say mchristy_anal1:
	say "     Wanting the dragon inside you again, you [if cunts of player > 0]tease him a little longer to get him good and ready[otherwise]tease him a little longer to get him good and lubed up.  You also sneak a few gobs of pre and smear it between your buns and lube up your asshole[end if].  By the time he's panting and rumbling with a steady stream of pre coming from his giant cock, you move onto all fours and grind your backside against the drooling glans";
	if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
		say ".  Christy rumbles in appreciation at the sight of your draconic body ready and waiting to be mounted.  While smaller than him, you know your body's made for his - and that big schlong of his.  'Mmm... I prefer your new look.  You make a fine, sexy dragon,' he rumbles.  'Mmm... I'm going to enjoy taking you like a wild beast,' he adds, blushing at his own words, but unable to take them back.";
	otherwise:
		say ".  He looks down at you, penis twitching with an eagerness to mount you again.  'In the... ahh... ass again?  I... well, if you're sure... [one of]you want to be stuffed full of dragon meat[or]Let's get you stuffed full of dragon seed[or]Let's see if I can fill you even more than last time[in random order],' he starts to say before his perverse desires spill out, causing him to eep and blush at his lustful admission.";
	say "     Bracing yourself, you push back harder against the male's cock, urging him to mount you.  With a deep rumble, he moves forward slowly, spreading your crinkled hole open with his titanic meat.  As his pointed tip sinks into you, his gooey precum leaks into your rectum, getting your passage more lubed up for its eventual stuffing.  He goes only a few inches at a time to start, giving your [bodytype of player] body a little time to adjust at first, though his huge rod causes your [if scalevalue of player < 3]torso to eventually be stretched completely around it, bulging overfull of dragon meat.  You are so filled that your [body size of player] limbs can barely reach the ground to steady yourself for the epic fucking that is to come and he instead has to grip you with one forepaw to be able to fully penetrate you[otherwise if scalevalue of player is 3]torso to be stretched prominently by it, making a massive cock-shaped bulge through your body[otherwise if scalevalue of player is 4]torso to bulge prominently thanks to the phallic intruder[otherwise]belly to show a marked, phallic bulge[end if].";
	say "     Having taken you in the ass before, his restraint in mounting you doesn't last too long before he's pushing into you with rocking thrusts.  You release a long, satisfied moan as those pleasure-giving ridges slide pop past your anal ring and rub along your prostate as they move in and out of you.  The throbbing and thrusting of his mighty rod sends waves of delight through you, urging you to push back into his thrusts as best you can.  Your rectal walls squeeze and milk at his meat each time this happens, bringing greater pleasure to the randy red dragon as he enjoys the sinful delight that is anal sex.";
	say "     '[one of]Ohhh, you're so nice and tight.  Who wouldn't want to fuck a hot ass like yours?  I can tell I'm going to be filling you up so nice and full reeeeal soon[or]Mmmm... You've got such a hot ass.  I'm going to fill it soooo full of dragon cum[or]Oh, I hope you have room for more, because I'm going to fill that sexy ass of yours with so much cum[or]Oh, this is going to be a big one.  I'm going to pump you soooo full[or]You love being stuffed full of my dragon meat, don't you?  Well, it's got a big, hot load for you coming, hon[or]Oh, I feel so dirty for loving this.  Your sexy ass is just what my dragon meat needs[or]You're quite the slut for my dragon meat, aren't you?  Well, I'm going to give that sexy ass the fucking it wants so bad and I'll leave you stuffed and rounded with my cum[in random order],' he rumbles lewdly, no longer willing or able to stop himself from voicing his dirty thoughts by this point.  And true to his word, the dragon's climax comes with a roar of release soon after.  Blast after blast of thick, hot dragoncum flows into you, filling you [if scalevalue of player < 4]so much that you bloat and swell from his prodigious output[otherwise]so much that your belly plumps considerably from the addition his prodigious output[end if].  You cry out in climactic release as well, those titanic blasts filling your belly and gushing out around your stretched asshole driving you over the edge.  After he's done, he pants and stays buried inside you for a while, too drained to pull out.  Eventually though [if scalevalue of player < 4]he has to use one forepaw to pull your overstuffed body off of his spent shaft[otherwise]your overstuffed body slips a few inches in the slick mess leaking out as he steps back before he slips free[end if], giving you a final taste of those delightful ridges sliding out of you.[mimpregchance]";
	if dragontype > 0 and ( ( dragontype is odd and (bodyname of player is not "Slutty Dragoness" or the player is not pure ) ) or ( dragontype is even and (bodyname of player is not "Horny Dragon" or the player is not pure) ) ):
		say "[dragonchange2]";


to say mchristy_bottom0:
	say "     Having reached your decision, you know you'll need to work the dragon up to the point he can no longer resist your advances if you want to enact your plans of mounting him.  To this end, you continue groping and licking his large shaft, all the while letting his pre drool down onto your [cock of player] cock in preparation[if lust of christy > 0 or libido of christy > 0].  Fondling his enticing manhood like this has you considering forgoing your plan so you might enjoy that mighty rod more fully, but the thought of reminding Christy that he was once a submissive dragoness bottom urges you on[otherwise].  Fondling his enticing manhood like this has you considering forgoing your plan so you might enjoy that mighty rod more fully, but remembering how eager he was to be mounted as a dragoness urges you on[end if].  Soon his cock is pulsing all the harder and his rumbling is deep and heavy with lust.";
	say "     Once you've got him in this state, you move back behind him.  Still rubbing those hefty balls of his with one hand, you bring the other to his crinkled hole[if anallevel is 3], rubbing its warm flesh as you give it a slow lick[end if].  He starts with surprise at this unexpected shift in focus, though his rear grinds back against your touch.  'Wha- what are you -ohh- doing back there?  It feels good though and soooo naughty,' he rumbles.  As anticipated, the randy red dragon is too worked up at this point to object and you start working your [if anallevel is 3]tongue and [end if]fingers into his relaxing back door.";
	say "     Once you've gotten his hole sufficiently prepared, you bring your [cock size desc of player] cock into position[if scalevalue of player < 3], having to partially climb atop him and cling to his raised tail to do so[otherwise if scalevalue of player is 3], having to subtly guide his hips lower so you can get lined up[otherwise], leaning your [body size of player] chest across his back as get lined up[end if].  If Christy has anything to say about this, it gets lost in the long, rumbly moan of pleasure as you slide your pre-slickened member into his meaty rump.  Though from the way his ass presses back into your thrust, it's clear the dragon's body is more than happy to have you pushing deep into him[if libido of christy > 0] once again[end if].  Gripping his wide bottom, you start thrusting, pumping your [cock of player] rod into him slowly at first[if cock length of player < 20], not that there's much need given the size of his red tailstar[otherwise], his large red tailstar rapidly adjusting[end if].";
	say "     The hot flesh of the red dragon's anus squeezes and tugs at your meat, encouraging you on in its demands for a thorough fucking.  Not one to disappoint, you pound away at him, enjoying the soft, slutty moans and rumbles of pleasure coming from the horny male.  The former dragoness, clearly still longing to be fucked and filled as much as before, is lost in lustful ecstasy.  You can hear the wet slap of his erect member against his underbelly with each rock of his hips.  'Give it to me.  Oh, I'm such a bad nun, but fuck my ass hard and deep,' he pants.  His rectal walls clench down around you harder, pulling at your pounding member until you can take no more and provide him with the hot creamy blasts of your seed.  You pump your [cum load size of player] load into him, painting the dragon's bowels with your semen.  Christy roars partway through your orgasm as he cums hard, anus gripping your cock and pumping it for even more.  His own balls throb and pulse, draining themselves into a messy pool beneath the well-fucked dragon.";
	say "     It takes you a while to recover from the powerful orgasm and slip your spent shaft free of the dragon's creamy bottom[if cock width of player < 20].  A trickle of your gooey load leaks from his messy hole and you can't resist giving him a brief fingering to hear him moan[otherwise].  A rivulet of your gooey load flows gradually from his messy hole and you can't resist giving him a brief fingering to hear him moan[end if].  'Oh, that feels so nice.  Such a delightfully naughty surprise.  I'm such a bad nun though,' he sighs even as he wiggles his ass to better enjoy the feel of your seed pooled inside his ass.";
	now mchristybottom is true;

to say mchristy_bottom1:
	say "     Eager to make the big dragon your bottom again, you start by getting him a little more worked up and ready to go.  Soaking your hand with his precum, you spread it over and then into his crimson pucker.  He moans and wiggles his rear at your touch";
	if bodyname of player is "Horny Dragon" or bodyname of player is "Slutty Dragoness":
		say ".  'Oh my!  Someone's a naughty dragon[if cocks of player is 0]ess[end if].  Alright, you fine, sexy stud - fuck my ass.  Take me like the wild beast you are,' he adds as you continue to pump a few fingers into his accommodating anus, blushing at his own words but unable to take them back.";
	otherwise:
		say ".  'Mmm... seems someone's in the mood to be naughty.  Alright, let's be naughty together,' he relents quickly as you pump a few fingers into his accommodating anus.";
	say "     Christy moans and lowers his large hips, bringing his ass into position for you to mount him.  Taking your cock in hand, you get yourself lined up with his slickened hole and sink slowly into it[if cock length of player < 20].  He moans in pleasure as he feels your cock sinking into his needy backside and presses back against your thrusts[otherwise].  He roars in lustful pleasure at the size of the meat filling his needy backside and presses back against your thrusts eagerly[end if].  His back passage is hot and squeezes firmly around your [cock of player] shaft, his body responding with tantalizing motions despite the dragon's relative inexperience.";
	say "     Placing your hands on his firm, scaly ass, you squeeze it as you pound away at him, driving your cock into him again and again while listening to his [if hp of Christy < 54]stifled[otherwise]lustful[end if] moans.  '[one of][if mchristyanal is true]Mmm... That feels so good.  And maybe next time you can be under me again[otherwise if cunts of player > 0]Mmm... that feels so good.  Maybe I should try mounting you next time[otherwise]Mmm... that feels so good.  Maybe I can try mounting your ass next time[end if][or][if cock length of player < 20]Do it!  Do me harder!  Faster!  I want to really feel it[otherwise]Oh, you feel so nice and big inside me.  Come on, do me hard and bury your cock deep in your dragon slut[end if][or]It's no wonder this is forbidden.  It feels so dirty and sinful that I can't help loving it[or]Come on, do me harder.  I need to get fucked so bad[or]Oh man, even though I'm a big, studly male now, I can't help but love getting fucked[or]My balls feel so full, but my ass is so empty.  Come on, fill me up while you drain me[or]I've got this massive cock, but my body still wants to get fucked.  Oh, I'm such a slutty dragon[or]Oh, that feels so good!  Take me like a wild animal!  Fuck me and use me like a beast[or]Oh, I feel so dirty for loving this, but your sexy cock is just what my ass needs[at random],' he pants.  'I... I mean, oh never mind.  Just keep fucking me until I'm stuffed full,' he begs.";
	say "     Eager to please such a request, you pound into him harder and faster.  You wrap one arm around his raised tail for support and bring the other to his heavy balls.  You rub over his sensitive orbs and your kneading them makes him squeeze around you all the tighter[if cock length of player < 20].  Despite his great size, his rectum is able to tighten nicely around your relatively small penis[otherwise].  Having your huge cock in his anus clearly excites the dragon greatly and you can feel his rectal walls rippling across your entire length[end if].  His enlarged manhood drips with precum, filling the air with the spicy scent of his arousal.  His asshole squeezes and tugs at your cock, milking hard at you for another load.  Eventually, the stimulation gets to be too much for the both of you and you cum hard, pumping another hot load into his squeezing bowels as he orgasms with a loud roar.  His release paints the floor with large splatters of dragoncum, the thought of having ass-fucked such a big, strong male to orgasm making your own climax all the more powerful.";
	say "     It takes you a while to recover from the powerful orgasm and slip your spent shaft free of the dragon's creamy bottom[if cock width of player < 20].  A trickle of your gooey load leaks from his messy hole and you can't resist giving him a brief fingering to hear him moan[otherwise].  A rivulet of your gooey load flows gradually from his messy hole and you can't resist giving him a brief fingering to hear him moan[end if].  'I still can't get over how good that feels.  Oh, I feel so naughty for loving it,' he says with a bright blush even as he wiggles his ass to better enjoy the feel of your seed pooled inside his well-fucked hole.";


to say mchristy_cv0:
	say "     'That's really left me drained.  Empty even.  You know...' he says, pausing long as he gently presses your face to his still cock.  Cum still leaks slowly from his yawning slit.  '...that thing that happened... back when I first got my cock... the idea of doing it again just keeps coming back.  I mean, it was strange and weird and a little bit scary, but it also felt soooo good.'  The spicy scent and taste, coupled with your lingering arousal from your recent fun, leaves you all too happy to agree.  And why wouldn't you?  It had been strangely exciting and arousing for you as well.";
	say "     Grabbing his manhood, already still and full again at the thought of taking you into it, you press your lips to his cum slit, licking and kissing on and into it.  The gooey dregs of his last orgasm leak out over you, helping to get you slick for what is to come.  As before, once his cum slit yawns wider, you slip first a few fingers and eventually your whole hand into it.  His urethra squeezes around it, pulling inwards and you only resist enough to heighten the pleasure that comes with each inch pulled in.  You add your other hand, letting both arms get drawn in.  Your head and shoulders soon follow with a grunt and a gooey squelch.  With your head buried in that tugging tunnel of flesh, the taste and scent of the dragon's musk becomes all pervasive.";
	attempttowait;
	say "     With the wide point of your shoulders crossed, the advance of your torso and then your hips into him is fairly swift.  You can feel the wet kiss of his urethral slit sliding a little further down your [bodytype of player] body with each passing moment.  And while your reaction should be one of fear or panic at being thusly consumed, you are instead filled with an almost overpowering lust.  The strange procedure is bizarrely erotic and has you squirming in pleasure, especially once that wet grip slides over your loins[if cocks of player > 0].  The press of his urethral walls against your stiff member makes your manhood quake with need[otherwise].  The firm squeezing around your hips and the slick precum wetting your folds turns you on immensely[end if].";
	say "     Your hands, arms and eventually the rest of you makes the journey past the base of his cock into his groin and eventually around and down again.  Sliding into the still snug but more open space of his ballsac, you land in a pool of thick semen as you nestle down in his massive testicle.  Having minimal freedom of movement now, you [if cocks of player > 0 and cunts of player > 0]grab your cock and stuff some fingers into your pussy[otherwise if cocks of player > 0]grab your cock[otherwise]stuff some fingers into your pussy[end if], masturbating frantically to relieve your pent-up arousal from the sensual delight you've been subjected to.  Your motion makes the pendulous chamber you're in sway and the dragon moans in satisfaction, probably well aware of your actions and aroused by them.  Given the way the swaying increases, Christy's probably rubbing himself to get off.  Knowing you might be expelled soon, you quicken your pace and pull out all the stops to get off before then so you might cum in that virile cum factory.";
	attempttowait;
	say "     You manage to achieve climax shortly before him[if cocks of player > 0 and cunts of player > 0]spraying your [cum load size of player] load into his sperm factory and adding your feminine juices to the mess soaking your crotch[otherwise if cocks of player > 0]spraying your [cum load size of player] load into his sperm factory[otherwise]adding your feminine juices to the mess soaking your crotch[end if].  The dragon's eruption follows soon after, the squeeze and surge of fluid around you catapulting your waning orgasm back into full force even as you're driven back through his seminal plumbing.  Pushed along by fluid pressure, you're splattered with a fresh rush of liquid as you pass his prostate, adding to the richness of its flavour and allowing it to carry you more smoothly onwards.  You are expelled with eruptive force moments later with eruptive force, shot several feet as part of the dragon's torrential release.";
	say "     After recovering from his mighty orgasm, he strides over to you.  'I'm sorry if that was a little quick this time.  Once I had you in there and you were in there -ah- enjoying it, it just felt so good that I had to play with myself.  I know I shouldn't have been, but I'm such a naughty dragon and I'd been wanting to do this since that first time and I couldn't hold back from enjoying it.  I... uhh... appreciate you indulging me,' he says, nuzzling your sticky face, stealing a lick of his own semen as he does.  This gets him to continue licking, using his large tongue to clean every inch of you before finally stopping so the two of you might rest and recover.";
	now tempnum is 1;
	say "[dragonchange2]";
	now tempnum is 0;
	follow the turnpass rule;
	now hp of Christy is 55;

to say mchristy_cv1:
	say "     With that rather filling foreplay done, you and Christy get on to the main event when he slides his strong tail across your back and presses your back back to his drained cock.  'Mmm... Now that you've left me feeling empty, I think we'll have you fill me back up,' he rumbles as his cum slit yawns open.  Your face gets sucked in by the eager tunnel of flesh, the slick mess covering you allowing you to slip in rather easily.  Recalling how much fun you've had the other times, you only playfully struggle, caressing his large glans as you pull back against the inexorable tug drawing you in.  As you continue in past your shoulders, you move your arms to your sides and start squirming and wriggling as you go.  This draws some pleasured rumbles and roars from the randy dragon.  His urethral walls squeeze and tug at you, pulling you steadily deeper.";
	say "     When that voracious cum slit reaches your hips, your own pleasure increases as that slick, squeezing flesh sliding over your loins[if cocks of player > 0].  The press of his urethral walls against your stiff member makes your manhood quake with need[otherwise].  The firm squeezing around your hips and the slick precum wetting your folds turns you on immensely[end if].  And your arousal continues to grow as you slip further and further into his cock and beyond, eventually ending up deposited into his snug ballsac.";
	say "     Having a little room to manoeuvre now that you're in warm, wet embrace of his testicle, you curl up in a comfortable position and [if cocks of player > 0 and cunts of player > 0]grab your cock and stuff some fingers into your pussy[otherwise if cocks of player > 0]grab your cock[otherwise]stuff some fingers into your pussy[end if].  You masturbate at a casual pace, enjoying the warmth and scent coming from all around you.  Even so, you get off fairly quickly after your long, pleasurable journey to get here.  After cumming and [if cocks of player > 0 and cunts of player > 0]spraying your [cum load size of player] load into his sperm factory and adding your feminine juices to the mess soaking your crotch[otherwise if cocks of player > 0]spraying your [cum load size of player] load into his sperm factory[otherwise]adding your feminine juices to the mess soaking your crotch[end if], you drift off into sticky bliss, soaking in a slowly refilling pool of draconic semen.  While you do not drown in the sticky fluids, you do get woozy and end up passing out into a bliss-out haze.";
	attempttowait;
	say "     It is difficult to tell how long you remain within the dragon's balls, but eventually a growth in movement and heat around you partially rouses you.  You shift and squirm inside the tight confines as best you can, hearing an increase in the muffled noises of what must be the dragon playing with himself.  You start stimulating the inside of the dragon's testicle, rubbing against its slick flesh, helping to increase his pleasure until he's driven to orgasm.  And with that, the process you underwent to get here is reversed, though at a much higher speed.  Pushed out along with a massive blast of dragon cum, you are pumped messily out onto a crumpled and sticky mat of cardboard boxes.  You are covered head to toe in the dragon's musky payload, panting for air even as you swallow down the slimy seed, which Christy helps to lick from your messy body.";
	now tempnum is 1;
	say "[dragonchange2]";
	now tempnum is 0;
	follow the turnpass rule;


Section 14 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Slutty Dragoness";
	now heat cycle entry is 400;
	now heat duration entry is 400;
	now trigger text entry is "You release a moan that grows into a needy roar as your pussy flows with hot juices.  A wave of growing lust threatens to engulf you as you go into heat.  If this is anything like what Christy feels, you start to understand the wanton demands of her dragonic body.  You long to have a nice big cock inside you to breed you full of dragon eggs.";
	now description text entry is "";
	now heat start entry is "[sldrheatstart]";		[Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[sldrheatend]";		[Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[sldrheat]";		[This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "You release a moan that grows into a needy roar as your groin aches and your bowels quiver with a need to be filled.  A wave of growing lust threatens to engulf you as you go into a perverse[if cocks of player > 0], male[end if] heat.  If this is anything like what Christy feels, you start to understand the wanton demands of her dragonic body.  You long to have a nice big cock inside you to breed you full of dragon eggs.";

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Horny Dragon";
	now heat cycle entry is 400;
	now heat duration entry is 400;
	now trigger text entry is "You release a moan that grows into a needy roar as your pussy flows with hot juices.  A wave of growing lust threatens to engulf you as you go into heat.  If this is anything like what Christy feels, you start to understand the wanton demands of her dragonic body.  You long to have a nice big cock inside you to breed you full of dragon eggs.";
	now description text entry is "";
	now heat start entry is "[sldrheatstart]";		[Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[sldrheatend]";		[Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[sldrheat]";		[This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "You release a moan that grows into a needy roar as your groin aches and your bowels quiver with a need to be filled.  A wave of growing lust threatens to engulf you as you go into a perverse[if cocks of player > 0], male[end if] heat.  If this is anything like what Christy feels, you start to understand the wanton demands of her dragonic body.  You long to have a nice big cock inside you to breed you full of dragon eggs.";

to say sldrheatstart:
	if libido of player < 25:
		now libido of player is 25;
	otherwise:
		increase libido of player by 10;
	if libido of player > 99, now libido of player is 99;
	if heatform is 0:
		increase cunt width of player by 1;
		increase cunt length of player by 1;

to say sldrheatend:
	say "You release a soft moan as your heat passes, the worst of your lustful urges fading for now.";
	if heatform is 0:
		decrease cunt width of player by 1;
		if cunt width of player is 0, now cunt width of player is 1;
		decrease cunt length of player by 1;
		if cunt length of player is 0, now cunt length of player is 1;
	decrease slutfucked by 2;
	if slutfucked < 0, now slutfucked is 0;
	if slutfucked > 6, now slutfucked is 6;

to say sldrheat:
	increase libido of player by a random number between 2 and 6;
	if libido of player > 99, now libido of player is 99;
	if libido of player > 90 and slutfucked > 8:
		if there are no dangerous doors in the location of the player:
			if location of player is fasttravel:
				now battleground is "Outside";
			otherwise:
				say "You groan with increasing need, your body urging you to go out and find some nice, big cock to stuff inside you, or at least some sex to briefly satisfy you.";
				increase slutfucked by 1;
				now battleground is "void";
		otherwise:
			let y be a random dangerous door in the location of the player;
			now battleground is marea of y;
		if battleground is not "void":
			let cmonlist be a list of numbers;
			repeat with X running from 1 to number of filled rows in table of random critters:	[scans for all reptiles in the area]
				choose row X from the table of random critters;
				if there is no area entry, next;
				if there is no name entry, next;
				if area entry is battleground:
					if name entry is listed in infections of Reptilelist:
						add X to cmonlist;
			if cmonlist is not empty:
				now slutfucked is 0;
				sort cmonlist in random order;
				now monster is entry 1 of cmonlist;
				choose row monster from the table of random critters;
				say "Hearing your lustful calls being answered in the distance, you rush off to find this reptilian creature hoping it can help satisfy your sexual cravings.  You find the [name entry] soon enough, drawn to your calls.  Immediately upon seeing the creature, you submit yourself, offering your [bodytype of player] body freely in the hopes of satisfying your lustful, heat-fueled needs.";
				attempttowait;
				follow the cock descr rule;
				follow the cunt descr rule;
				follow the breast descr rule;
				say "[victory entry]";
				infect;
				decrease score by 5;
				decrease morale of player by 3;
				if "Kinky" is listed in feats of the player, increase the morale of the player by 6;
			otherwise:
				say "As your draconic heat courses through you, you call out your need with the roar of a dragoness looking to be bred, but the call goes unanswered.  Your heat-filled desires make you want to head elsewhere in the hopes of finding some dragon, or barring that, a powerful lizard or reptile, to breed you.";
				increase slutfucked by 1;
	otherwise if libido of player > 90:
		increase slutfucked by 1;
		if heatform is 0:
			say "[one of]You moan loudly as a fresh flow of heat juices run down your thighs[or]Stuffing some fingers between your legs, you try in vain to relieve the ache in your loins[or]You pant and moan as wave of need quiver through your cunny, your draconic cunt wanting satisfaction[or]You bite your tongue to try and hold back a lustful roar as you stuff a few fingers into your cunt to try and give yourself a little relief[or]You moan and squeeze your thighs together as slutty thoughts run through your head[or]The waves of hot lust filling your cunt make you moan as you try to focus[purely at random][one of].  You start to imagine yourself submitting to some studly dragon and getting bred[or].  Thoughts of getting bred full of eggs run through your mind[or].  You want to head back out into the city right away and find some scaly beast to play with you[or].  Thoughts of bending over for the next scaled creature you see becomes increasingly tempting[or].  A daydream about yourself on all fours with a [randomdragoncolour] dragon atop you, breeding you long and hard until you're stuffed with eggs, leaves you horny and excited[purely at random].";
		otherwise:
			say "[one of]You moan loudly as your bowels and hidden womb clench with a fiery need[or]Stuffing some fingers into your asshole, you try in vain to relieve the aching void you feel there[or]You pant and moan as waves of need quiver through your ass, your draconic male womb wanting satisfaction[or]You bite your tongue to try and hold back a lustful roar as you stuff a few fingers into your back passage to try and give yourself a little relief[or]You moan and squeeze your thighs together as slutty thoughts run through your head[or]The waves of hot lust filling your ass make you moan as you try to focus[purely at random][one of].  You start to imagine yourself submitting to some studly dragon and getting bred[or].  Thoughts of getting bred full of eggs run through your mind[or].  You want to head back out into the city right away and find some scaly beast to play with you[or].  Thoughts of bending over for the next scaled creature you see becomes increasingly tempting[or].  A daydream about yourself on all fours with a [randomdragoncolour] dragon atop you, breeding you long and hard until you're stuffed with eggs, leaves you horny and excited[purely at random].";


to say randomdragoncolour:
	say "[one of]black[or]blue[or]red[or]crimson[or]golden[or]white[or]azure[or]fiery[or]green[or]emerald[purely at random]";


Section 15 - Guide to Christy Stats

[ NoIntroduction ]
[ 0 = Not introduced self ]
[ 1 = Contact w/backside (opens path to front) ]

[ hp of Christy  ]
[ 0 = no talk    ]
[ 1 = trapped    ]
[ 2 = just freed ]
[ 3 = sexed once ]
[ 4 = sexed more ]
[ 5 = oral once  ]
[ 6 = oral twice ]
[ 7 = UB'd again ]
[ 8 = made up    ]
[ 50 = TG to male ]
[ 51 = oral again ]
[ 52 = fucked ]
[ 53 = more sex ]
[ 54 = sexed again ]
[ 55 = CV'd again ]
[ 90 = banished  ]
[ 99 = made into egg slave ]
[ 100 = gone     ]

[ lust of Christy - M/F sex                         ]
[ 0 = unfucked                                      ]
[ 1 = recently fucked                               ]
[ 2 = preggers                                      ]
[ lust/3 remainder 1 = recently fucked, not showing ]
[ lust/3 remainder 2 = visibly preggers             ]
[ lust/3 remainder 0 = clutch dropped               ]

[ libido of Christy	- non-M/F fucking (F/F, oral, UB) ]
[ 0 = none                                            ]
[ 1 = recent sex                                      ]
[ odd = had sex recently                              ]
[ even = had sex, ready for more                      ]

[ dragontype                           ]
[ 0 = Not UB'd - no infection          ]
[ 1 = F/H: Slutty Dragoness via UB     ]
[ 2 = M: Horny Dragon via UB           ]
[ 3 = F/H: Slutty Dragoness via CV     ]
[ 4 = M: Horny Dragon via CV           ]
[ 5 = F/H: Slutty Dragoness via UB/CV  ]
[ 6 = M: Horny Dragon via UB/CV        ]

[ tempnum values for dragonchange# subroutines ]
[ 0 = standard message for change (no UB or CV) ]
[ 1 = change message for UB or CV ]
[ 2 = captured UB - special message for game over scenario w/angry Christy ]
[ 3 = first-time CV scene message ]

[ dragonessfuck                ]
[ 0 = Didn't fuck dragoness    ]
[ 1 = Only F-sex the dragoness ]
[ 2 = Fucked (M) the dragoness ]


Section 16 - Endings

When play ends:
	say "[dragonessupdate]";	[making sure dragoness/Christy's egg status is up to date]
	if hp of Christy < 50:
		if NoIntroduction is 1:
			if bodyname of player is "Slutty Dragoness":
				if humanity of player is less than 10:
					say "     With your humanity gone, you aimlessly wander the city streets until the military arrives and captures you.  They examine you until they discover that you're no longer infectious, then they sell you to a zoo.  Since they feed you well and provide you with a nice, warm cave to be your home, you decide to stay there for a time.  But when an anthro dragon comes to the zoo one day and catches your eye, you decide it's time to move on.  With a hop and a flap, you leap onto the bars of the cage over your enclosure and bend them apart easily.  As the other patrons scream and run, the dragon remains, locked in your gaze.  You scoop him up in your large paw and, after a few false starts, fly off with him to set up a love nest of your own.";
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
					project the figure of Christyend_icon;
					say "The dragoness you found trapped in a doorway is discovered by the military.  They examined her until they discovered that she was no longer infectious, then they left... without freeing her from the doorway.  Eventually, the trapped dragoness became a tourist attraction and her exposed pussy gets fucked by almost every male tourist that visits the city.";
			otherwise:
				if lust of Christy > 2:
					say "     After you freed her from the doorway where you found her, Christy's eggs eventually hatch.  Caring for her children helps to mellow out her lust enough for her to learn how to control it[if hp of Christy >= 7], more or less[end if].  Her children grow up to be fine dragons and she loves them dearly, even after they start kidnapping princesses[if dragonessfuck is 2 and hp of Christy is not 8].  She never discovers that you were the one who knocked her up before freeing her[end if][if humanity of player > 9 and hp of Christy > 3].  Her dragon offspring permit you to visit the dragoness from time to time and she eagerly accepts your lustful advances now[end if][if humanity of player > 9 and hp of Christy >= 7 and dragontype > 0].  While you don't enter her womb again, preferring to stay as you are, you do help her introduce some [']new friends['] her offspring have found to this unusual pleasure, ensuring the dragoness has a fine collection of lustful lovers of her own[end if].";
				otherwise:
					say "     After you freed her from the doorway where you found her, Christy was eventually found by the military.  They examined her until they discovered that she was no longer infectious, then they left her alone. Christy struggled for months to control the extreme lust that the infection gave her, but in the end she decided to embrace her new, slutty nature and she became a very famous porn star[if humanity of player > 9 and hp of Christy > 3].  You visit the dragoness from time to time and enjoy the company of her and her lustful co-stars[end if][if humanity of player > 9 and hp of Christy >= 7 and dragontype > 0].  You sometimes even get the special treat of helping her intimately introduce one of her eager fans to her womb, ensuring the dragoness has a fine collection of lustful lovers of her own[end if].";
	otherwise if hp of Christy < 90:	[male Christy endings]
		let bb be 0;	[do nothing placeholder]
		[ say "***Endings for male Christy to be added later";	]
	otherwise if hp of Christy is 90 or hp of Christy is 100:
		if humanity of player >= 10:
			say "     You don't ever see Christy again, though you're pretty sure you hear about her from time to time, as news of large and lustful dragons crop up from time to time that fit her description rather well.  It seems her and her offspring have become quite the scourge, ravaging their territory for food and snatching up victims and kidnapping princesses.  These princesses are eventually returned, but full of eggs, only to be captured again and again a few months later.  Many brave warriors go out to vanquish this great beast, but are never heard from again save for rumours that they've become lustful pets of their would-be adversary.  It seems the dragon doesn't take kindly at all to [']heroes['].";
	otherwise if hp of Christy is 99:
		say "     The repeated effects of the dragoness's womb takes it toll on you, turning you into nothing more than an adoring and lustful pet for the horny dragoness.  You become eager for the dragoness to do this again, loving the feeling of being drawn into her womb, being in her warm belly and becoming an egg again to satisfy her.  It also changes her, making her into an even larger and more menacing dragoness.  Her earlier kindness gone, she now revels in her lustful nature and eagerly snatches up victims to becomes lovers, toys, food, or sometimes even all three[if cocks of player is 0].  Finding some well-endowed creatures to fuck her[otherwise].  Getting you to fuck her repeatedly[end if], she lays clutch after clutch of eggs to create a great horde of dragon offspring.  They, like her, ravage their territory, capturing prey and kidnapping princesses, which they fuck repeatedly until filled with eggs before being returned.  After a few times, the princesses start looking forward to their next kidnapping.";
		say "     Many brave warriors come seeking to vanquish the great dragoness, but they always fall before her terrible might.  Your mistress is always particularly cruel to them before finally teaching them the error of their ways by transforming them into another loving dragon slut pet just as she did with you.  She does not think highly of these would-be [']heroes['] and you're happy to help her stuff them into her needy womb as often as needed until their learn their place as her horny servants.";
		if cunts of player > 0:
			say "     You are fucked often as well, bearing many clutches of your own as well.  Smaller, subservient dragon pets hatch from your eggs and they are made to become servants and fucktoys to your mistress's larger and more powerful offspring.  They, like you, are very pleased to be the slutty servants to the larger dragons and you get fucked as often as you can to ensure that all of your mistress's offspring can have as many of your horny dragon children as they like.";


Stuck Dragon ends here.
