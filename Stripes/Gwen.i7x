Version 1 of Gwen by Stripes begins here.
[Version 1 - Basic event and NPC]
"Adds centaur 'foal' NPC named Gwen to the Flexible Survival game."

Section 1 - Event

[***]

Section 2 - Gwen the Foal

Gwen is a woman.
The description of Gwen is "[gwendesc]".
The conversation of Gwen is { "Mama!" }.
the fuckscene of Gwen is "[sexwithGwen]".
the scent of the Gwen is "Gwen smells of horses.".

to say gwendesc:
	if hp of Gwen < 3:
		say "ERROR-Gwen-[hp of Gwen]L: You should not be able to see me.";
	else if hp of Gwen <= 20:
		say "     Having recently emerged, Gwen has been transformed into a young centaur foal. She's a blend of her old self and her mare mother. She's got a cute face topped with equine ears poking from her curly hair, now dark red in colour. She wears a [if hp of Gwen < 10]girls['] pink t-shirt with a smiling yellow sun[else]a purple t-shirt with some colourful ponies[end if] on it that Vanessa found for her over her petite, brown-skinned body. Her equine lower half has a russet red coat that shifts to chestnut brown at her ankles, just like her mother's. But unlike her mother, she's still got her demonic red tail, a lingering remainder of her earlier infection. She may still just be learning to cope with having four legs now, but it seems like she's inherited a bit of Meredith's clumsiness as well. Still quite small, she clings happily to her mother's side, either snuggling up beside her or nursing for more milk to help her grow.";
	else if hp of Gwen <= 35:
		say "     Gwen's grown to the point of being somewhere in her teens now. She's a blend of her old self and her mare mother. She's got a cute face topped with equine ears poking from her curly red hair, which she's grown out long. She wears a [if hp of Gwen < 30]rock band t-shirt[else]rock band t-shirt that's showing signs of trouble containing her prominent, pubescent breasts[end if] over her maturing figure. With her dark skin and russet coat, red hair and increasingly feminine figure, you can tell she'll be quite the lovely mare soon. While her equine lower body looks much like her mother's, [if hp of Gwen < 30]she's nearly as tall as her already[else]she's a little taller than her already[end if]. Her demonic red tail still lingers as a remainder of her earlier infection and has started being more active as the growing foal's hormones kick in.";
	else:
		say "     Gwen's matured into a beautiful and sexy centaur mare. She's a blend of her old self and her mare mother, but more than a hand taller than her - nearly Vanessa's height even. She's got a lovely face with an alluring smile and has grown out her curly red hair so it hangs to her shoulders. Her upper body's matured back into the super-appealing succubus from when you first met her. Her body has a perfect hourglass figure, plump breasts and flawless chocolate brown skin. She wears a red bikini top that struggles to contain her bountiful melons. Her equine lower body has the same russet-red coat with chestnut socks as her mother has. Her demonic red tail flicks around as another reminder of her earlier self. Her voice is smooth and sultry whenever she speaks. Beautiful and knowing it, the sexy mare is eager to show off her sexy body and shares it often with [if coleen is bunkered and ( coleenslut > 0 or coleenalpha > 0 or coleencollared > 0 )]Vanessa and Coleen[else]Vanessa[end if] when not helping her mother with her research.";


Instead of conversing the Gwen:
	if hp of Gwen < 3:
		say "ERROR-Gwen-[hp of Gwen]T: You should not be able to talk to me.";
	else if hp of Gwen <= 20:
		say "     [one of]'Momma's so smart.'[or]'It's nice to be a kid again, at least for a bit. Or should I say [']foal[']?' she adds with a giggle.[or]'Momma takes such good care of me.'[or]'I love being a cute horsey,' she says, cantering around[if hp of Gwen < 10] a little unsteadily[end if].[or]Gwen is hugging Mare's waist while nursing from the researcher's breast. The centaur [']mother['] smiles down at her filly and strokes her red hair.[or]'Auntie Vanessa's so big and strong.'[or]'I never knew science could be so much fun.'[or]Gwen's resting atop her bunk, happily scribbling with some crayons. A lot of her colourful doodles seem to be of centaurs, though there's some of the other creatures you've seen among them all well.[or]'You should help Momma have lots more foals so I can have some brothers and sisters.'[or][if coleen is not bunkered]'I hope the other girls from the squad are having as much fun as I am. You should look for them.'[else if coleenslut > 0 or coleenalpha > 0 or coleencollared > 0]'Coleen makes such a cute doggy!'[else if sarahslut > 0]'You should totally help Coleen be a doggy. I'm sure she'd love it.'[else]'Momma says Coleen can't play with us right now. You need to find her a friend so she can have someone to play with. And then she can play with us too!'[end if][cycling]";
	else if hp of Gwen <= 35:
		say "     [one of]'I could always tell Mom was smart. I'm learning so much from helping her.'[or]'Uhhh! I didn't think I've have to deal with puberty again.'[or]'I'm gonna have some sweet boobs when this is done,' she says, cupping her growing [if hp of Gwen < 30]breasts[else]melons[end if].[or]'I never knew science could be so much fun.'[or]'Aunt Vanessa wants me to help Mom with her notes, but it takes time. There's just so much interesting stuff to read in them.'[or]'Aunt Vanessa's helping me grow into a big, strong mare by feeding me her milk as well.'[or]'Oh, I can hardly wait to be a full-grown mare. It'll be such fun.'[or]Gwen is listening intently to Meredith as she runs some kind of test on some samples she's got. From time to time, she takes notes or passes her mother something.[or]'You should help Mom have lots more foals so I can have some brothers and sisters.'[or]'Mom says I need to wait until I'm all grown up before we can have sexy fun together. She wants to observe my growth without outside intervention.'[or][if coleen is not bunkered]'I hope the other girls from the squad are having as much fun as I am. You should look for them.'[else if coleenslut > 0 or coleenalpha > 0 or coleencollared > 0]'Coleen is such a cute doggy!'[else if sarahslut > 0]'I know Coleen's gonna love being a doggy. You should help her with that so she can join us.'[else]'It's great that Coleen's here, but it's too bad she can't hang out with us. You should find her a friend.'[end if][cycling]";
	else if hp of Gwen <= 60:
		say "     [one of]'Look! I'm all grown up now,' she says coquettishly with a wink as she cups her breasts.[or]'Don't I have a sexy body now?' she asks, running her hands down her sides.[or]'I'm glad I can help Mom with her research. On top of being fun, it's super-important.'[or]'I look forward to meeting Aunt Vanessa's foals. We'll have such fun together.'[or]'Mom wants to have lots more foals. You should help her with that.'[or]'Vanessa's always been such a great leader and now she's making sure we'll all be safe and together.'[or]'Sweet Mare's been such a wonderful mom,' she says, hugging the smaller centaur tightly, inadvertently smooshing her face into her boobs.[or]'Hey there, [if cocks of player > 0]handsome[else]sexy[end if],' say says in that sultry voice of hers.[or][if coleen is not bunkered]'I hope the other girls from the squad are having as much fun as I am. You should look for them.'[else if coleenslut > 0 or coleenalpha > 0 or coleencollared > 0]'Coleen makes such a cute doggy! She's so much fun to play with.'[else if sarahslut > 0]'I know Coleen's gonna love being a doggy. You should help her with that so she can join us.'[else]'I wish Coleen could come join us, but Mom wants to observe her as a human. That way she can monitor if she does start changing.'[end if][cycling]";



Section 3 - Sex w/Gwen

to say sexwithGwen:
	if hp of Gwen < 3:
		say "ERROR-Gwen-[hp of Gwen]F: You shouldn't be able to find me.";
	else if hp of Gwen <= 20:
		say "     'Oh, don't be silly. I'm just a little filly.' She starts to giggle at her rhyme.";
	else if hp of Gwen <= 35:
		say "     'I know I'm looking hot, but I'm still 'jailbait', she says with a giggle[if hp of Gwen < 30].[else]. 'Almost though. Mom says I won't need to wait much longer.'[end if]";
	else if lastfuck of Gwen - turns < 4:
		say "     'Mmm... as much as I had fun last time, I do need a bit of a break. I've got to help Momma Mare and Aunt Vanessa with a few things.'";
	else if cocks of player is 0 and cunts of player is 0:
		say "     There's not much point in playing with her given your lack of genitals.";
	else:
		say "[bracket]***Sex w/Gwen to be added. - The Mgmt[close bracket][line break]";
[		say "[Gwensexmenu]";]


to say Gwensexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		if bodyname of player is not listed in infections of taurlist:
			choose a blank row in table of fucking options;
			now title entry is "Fuck her";
			now sortorder entry is 1;
			now description entry is "pound that mare pussy";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Taur-style fuck";
			now sortorder entry is 1;
			now description entry is "mount that mare";
[		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 2;
		now description entry is "have a go at Gwen's ass";]
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 3;
		now description entry is "have Gwen suck you off";
	choose a blank row in table of fucking options;
	now title entry is "Eat her out";
	now sortorder entry is 4;
	now description entry is "lick Gwen's juicy pussy";
[	choose a blank row in table of fucking options;
	now title entry is "Tail fuck her";
	now sortorder entry is 5;
	now description entry is "work her pussy using her own tail";]
	if lastfuck of Vanessa - turns >= 8:
		choose a blank row in table of fucking options;
		now title entry is "Threesome w/Vanessa";
		now sortorder entry is 6;
		now description entry is "have Vanessa join in on the fun";
	if lastfuck of Coleen - turns >= 4:
		choose a blank row in table of fucking options;
		now title entry is "Threesome w/Coleen";
		now sortorder entry is 7;
		now description entry is "have Coleen join in on the fun";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> ";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry][line break]";
			say "Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck her" or nam is "Taur-style fuck":
					say "[Gwensex1]";
				else if nam is "Anal":
					say "[Gwensex2]";
				else if nam is "Blow job":
					say "[Gwensex3]";
				else if nam is "Eat her out":
					say "[Gwensex4]";
				else if nam is "Tail fuck her":
					say "[Gwensex5]";
				else if nam is "Threesome w/Vanessa":
					say "[Gwen_3some1]";
				else if nam is "Threesome w/Coleen":
					say "[Gwen_3some2]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Gwen is turns;
	wait for any key;
	clear the screen and hyperlink list;

to say Gwensex1:
	say "***";

to say Gwensex2:
	say "***";

to say Gwensex3:
	say "***";

to say Gwensex4:
	say "***";

to say Gwensex5:
	say "***";

to say Gwen_3some1:
	say "***";

to say Gwen_3some2:
	say "***";

Section 4 - Everyturn Rule (maturation and departure)

an everyturn rule:
	if hp of Gwen >= 3 and hp of Gwen <= 60:
		increase hp of Gwen by 1;
		if hp of Gwen is 61 and the player is in the Bunker or the player is in the Grey Abbey Library and skipturnblocker is 0:
			say "     You notice Meredith[if coleen is bunkered], Vanessa and Coleen[else] and Vanessa[end if] hugging Gwen repeatedly. This isn't too out of the ordinary, but Gwen's laden down with a pack of gear and has pulled on the top half of her jumpsuit loosely over top of her bikini. Heading over, you ask them what's up.";
			say "     'Oh, I was just about to come see you,' Gwen says with a sexy smile. 'Aunt Van- I mean the sarge has a mission for me. So I'll be heading out. There's some... scouting she needs me to take care of. I probably won't be back here, but hopefully I'll still get to see you once this mess is all done,' she says, running her hands down your side before grabbing your ass.";
			say "     There's another long round of goodbyes and tears are shed, mostly by the [']mother['] and [']daughter['], though there's a promise by Meredith to see her as soon her work's done. You try to get some more info out of Vanessa, but she says it's military secrets and winks coyly. Still, it doesn't sound like it's anything too dangerous for the sexy centaur - well, at least no more dangerous than any trip out into the city can be. You wish her the best of luck and hope to see her again, watching that sexy ass of hers as she leaves.";
			now hp of Gwen is 62;
		remove Gwen from play;

after going to Bunker while hp of Gwen is 61:
	say "     It takes you a few moment to notice that Gwen's not in the bunker. And more than not just being there, her stuff's gone as well. Aside from some of her childhood crayon drawings left on her bunk, she's cleared out. Asking Meredith about this, she's a little teary eyed, but says that Vanessa needed Gwen to go out on a very important mission. From how thoroughly she's cleared out and her mother's sad face, you know she won't be back here again. While neither of the centaurs will tell you what this mission is, it's clear they both feel it's important enough for her to go deal with it, but safe enough that she can handle it on her own. Meredith does talk about how she'll be seeing her sweet Gwenny again as soon as her own research is done.";
	now hp of Gwen is 62;
	remove Gwen from play;


[ hp of Gwen     ]
[ 0 = not met    ]
[ 1 = non-UB tf - sent to Dry Plains ]
[ 2 = UB'd     ]
[ 3-20 = young foal ]
[ 21-35 = teen foal  ]
[ 36-60 = mature     ]
[ 61 = mature - sent to Dry Plains ]
[ 62 = mature - player aware of departure ]

Gwen ends here.
