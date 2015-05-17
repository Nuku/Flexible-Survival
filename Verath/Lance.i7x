Version 3 of Lance by Verath begins here.
[ Updated w/small quest - Stripes ]

"Adds Lance, the black swan and Tristian's brother, to the Flexible Survival game."

section 1-  Lance

Lance is a man.
The description of Lance is "     Leaning against the bar casually is the lithe avian form of the black swan you rescued from the clutches of the hyenas.  He is now dressed in a loose black studded outfit, with lots of extra buckles, and his new beak already sports several piercings, which jingle slightly as he bobs his head to the loud music happily.".
The conversation of Lance is { "Honk!" }.

the scent of Lance is "He smells like an avian male with the scents of gay sex clinging to his feathers.".

instead of conversing the Lance:
	if hp of Lance is 0:	[first time you encounter the npc text]
		say "     'Thanks for the rescue,' the black swan you saved says with a smile.  'I had been holding out for a while, but you arrived just in time.'  Lance pats your shoulder with a feathered hand and looks over to where his brother is sitting in the booth, watching the two of you.  'I already thanked my brother earlier.  I understand he sent you out there to help and wanted to come himself.'  The swan smiles fondly before glancing around the club.  'I'm definitely grateful he decided to check up on me this time.  And it looks like he set himself up with a nice place to hang out in too, the lucky bastard.' Lance says with a soft chuckle as he bounces his flexible head softly to the music.  'Nice people here too, loving the eye candy...' he says as he looks you up and down with a grin before his eyes stray to where a familiar looking black swan stripper is currently hanging from one of the poles.  'Yeah I think I could definitely get used to this place...' he says with a smile as he snags a drink and leans back to enjoy the music.";
		increase hp of Lance by 1;
	otherwise if hp of Lance is 1:
		say "     'I know you've already done me a huge favour just by finding and rescuing me from that mess, but...' he pauses momentarily to look at his dancing lover on stage.  'But I could us a bit of help.  I want to get a nice gift for my special bird.  Since you're still out there braving the city, I was hoping you'd be able to get something for me to give him.  I don't really have much to repay you, but I'd really appreciate it.'";
		say "     He passes you a pink business card for a lingerie shop.  'I got this from one of the dancing girls.  She used to get her things there.  My sweetie's into wearing women's lingerie sometimes for our special, private fun.  Go there and pick out something hot for him.  Oh, here's his measurements,' he adds, stuffing a folded note into your hand as well.";
		now Lingerie Store is known;	
		now hp of Lance is 2;
	otherwise if sexy nightie is owned:
		say "     Motioning for Lance to come over, you slip to a less busy spot and let him know you've gotten a sexy nightie for his boyfriend.  He smiles and bounces from foot to foot.  'Good goin['], hon.  Let's see it!' he says eagerly.  Slipping it out of your pack, you let him have a peek inside.  He gives an appreciative whistle as he looks it over.  'Sweeeet!  Great job, [if cunts of player > 0]babe[otherwise]man[end if]!  He's going to soooo love it.'  He quickly shuts the box and holds it behind his back, doing a shuffling walk as he slips out of sight before his boyfriend or anyone else spots the package and the surprise is ruined.";
		increase score by 20;
		now hp of Lance is 4;
	otherwise if ( hp of Lance is 2 or hp of Lance is 3 ) and a random chance of 1 in 4 succeeds:
		say "     [one of]'Please don't forget about finding something for my BF at that [bold type]lingerie store[roman type] I told you about.'[or]'Be sure to pick out something nice for my honey-birdie at that [bold type]lingerie store[roman type] I told you about.'[at random]";
	otherwise if hp of Lance is 4:
		say "     'My honey-birdie really loved that sexy nightie you got for him.  I mean, he really, [']really['] loved it,' he says with a smile and a wink.";
		now hp of Lance is 5;
	otherwise:
		say "     [one of]'Hey thanks again!'[or]The black swan just lifts a glass at you with a smile as you wave at him.[or]Lance is too busy staring at the gyrating ass of one of the strippers to pay attention to you.[or]'You treat my brother alright, ok?'[or]'You know, being a hyena might not have been that bad, but this is damn awesome,' he says as he gestures at the busy club.[or]'You would make a great little pony for my bro.  Why don't you go let him play with you some more?' Lance says with a grin.[or]'Hey, it's my rescuer!' Lance says as he lifts a glass to you, before grinning and saluting the stage.  'One of my rescuers anyways,' he says as he shoots you a wink as he watches the dancing swan's ass rub against the pole.[at random]";


Instead of fucking the Lance:
	say "     'Sorry, I'm grateful to you for all you went through to help me out,' Lance says with a grin on his new beak as he nods at you happily, 'but I think I had better stick to just one type of infection for now.  Just to make sure it sticks,' he says with an amused nod and glancing over at the other swan dancer and winking.  He turns back to you and snickers, gesturing at Tristian.  'Besides, I think you make my brother a much nicer companion, don't you think?' the swan says as he nudges you towards your handsome stallion.";

[     hp of Lance      ]
[ 0 = not met/talked   ]
[ 1 = spoke to Lance   ]
[ 2 = given request    ]
[ 3 = got nightie      ]
[ 4 = request complete ]
[ 5 = post-request msg ]

Lance ends here.
