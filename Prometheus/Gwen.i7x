Version 1 of Gwen by Prometheus begins here.
[Version 1 - Basic event and NPC]
[Version 1.1 - Minor maintenance and character relocation - Luneth]
[Version 1.1.1 - Moved to Prometheus's folder. Ending for Colleen, Vanessa, Meredith, and Gwen in Vanessa's file.]

[Originally by Stripes]

"Adds centaur 'foal' NPC named Gwen to the Flexible Survival game."

[ HP of Gwen                                                                   ]
[ 0 = not met                                                                  ]
[ 1 = non-UB tf - sent to Dry Plains                                           ]
[ 2 = UB'd                                                                     ]
[ 3-20 = young foal                                                            ]
[ 21-35 = teen foal                                                            ]
[ 36-60 = mature                                                               ]
[ 61 = mature - sent to Dry Plains                                             ]
[ 62 = mature - player aware of departure                                      ]

Section 1 - Event

[***]

Section 2 - Gwen the Foal

Table of GameCharacterIDs (continued)
object	name
Gwen	"Gwen"

Gwen is a woman.
ScaleValue of Gwen is 4. [7' 2"]
Body Weight of Gwen is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Gwen is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Gwen is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Gwen is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Gwen is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Gwen is 5. [length in inches]
Breast Size of Gwen is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Gwen is 2. [count of nipples]
Asshole Depth of Gwen is 12. [inches deep for anal fucking]
Asshole Tightness of Gwen is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Gwen is 0. [number of cocks]
Cock Girth of Gwen is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Gwen is 0. [Length in Inches]
Ball Count of Gwen is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Gwen is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Gwen is 1. [number of cunts]
Cunt Depth of Gwen is 12. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Gwen is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Gwen is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Gwen is false.
PlayerRomanced of Gwen is false.
PlayerFriended of Gwen is false.
PlayerControlled of Gwen is false.
PlayerFucked of Gwen is false.
OralVirgin of Gwen is true.
Virgin of Gwen is true.
AnalVirgin of Gwen is true.
PenileVirgin of Gwen is true.
SexuallyExperienced of Gwen is false.
TwistedCapacity of Gwen is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Gwen is true. [steriles can't knock people up]
MainInfection of Gwen is "".
Description of Gwen is "[gwendesc]".
Conversation of Gwen is { "Mama!" }.
the fuckscene of Gwen is "[sexwithGwen]".
the scent of the Gwen is "Gwen smells of horses.".

to say gwendesc:
	if HP of Gwen < 3:
		say "ERROR-Gwen-[HP of Gwen]L: You should not be able to see me.";
	else if HP of Gwen <= 20:
		say "     Having recently emerged, Gwen has been transformed into a young centaur foal. She's a blend of her old self and her mare mother. She's got a cute face topped with equine ears poking from her curly hair, now dark red in color. She wears a [if HP of Gwen < 10]girls['] pink t-shirt with a smiling yellow sun[else]a purple t-shirt with some colorful ponies[end if] on it that Vanessa found for her over her petite, brown-skinned body. Her equine lower half has a russet red coat that shifts to chestnut brown at her ankles, just like her mother's. But unlike her mother, she's still got her demonic red tail, a lingering remainder of her earlier infection. She may still just be learning to cope with having four legs now, but it seems like she's inherited a bit of Meredith's clumsiness as well. Still quite small, she clings happily to her mother's side, either snuggling up beside her or nursing for more milk to help her grow.";
	else if HP of Gwen <= 35:
		say "     Gwen's grown to the point of being somewhere in her teens now. She's a blend of her old self and her mare mother. She's got a cute face topped with equine ears poking from her curly red hair, which she's grown out long. She wears a [if HP of Gwen < 30]rock band t-shirt[else]rock band t-shirt that's showing signs of trouble containing her prominent, pubescent breasts[end if] over her maturing figure. With her dark skin and russet coat, red hair and increasingly feminine figure, you can tell she'll be quite the lovely mare soon. While her equine lower body looks much like her mother's, [if HP of Gwen < 30]she's nearly as tall as her already[else]she's a little taller than her already[end if]. Her demonic red tail still lingers as a remainder of her earlier infection and has started being more active as the growing foal's hormones kick in.";
	else if HP of Gwen < 64:
		say "     Gwen's matured into a beautiful and sexy centaur mare. She's a blend of her old self and her mare mother, but more than a hand taller than her - nearly Vanessa's height even. She's got a lovely face with an alluring smile and has grown out her curly red hair so it hangs to her shoulders. Her upper body's matured back into the super-appealing succubus from when you first met her. Her body has a perfect hourglass figure, plump breasts and flawless chocolate brown skin. She wears a red bikini top that struggles to contain her bountiful melons. Her equine lower body has the same russet-red coat with chestnut socks as her mother has. Her demonic red tail flicks around as another reminder of her earlier self. Her voice is smooth and sultry whenever she speaks. Beautiful and knowing it, the sexy mare is eager to show off her sexy body and shares it often with [if Colleen is bunkered and ( ColleenSlut > 0 or ColleenAlpha > 0 or ColleenCollared > 0 )]Vanessa and Colleen[else]Vanessa[end if] when not helping her mother with her research.";
	else:
		if "Succutaur" is listed in Traits of Gwen:
			say "     Gwen's matured into a beautiful and sexy centaur mare. She's a blend of her old self and her mare mother, but more than a hand taller than her - nearly Vanessa's height even. She's got a lovely face with an alluring smile and has grown out her curly red hair so it hangs to her shoulders. Her upper body's matured back into the super-appealing succubus from when you first met her. Her body has a perfect hourglass figure, plump breasts and flawless chocolate brown skin. She wears a red bikini top that struggles to contain her bountiful melons. Her equine lower body has the same russet-red coat with chestnut socks as her mother has. Her demonic red tail flicks around as another reminder of her earlier self. Her voice is smooth and sultry whenever she speaks. Beautiful and knowing it, the sexy mare is eager to show off her sexy body and shares it often with [if ( ColleenSlut > 0 or ColleenAlpha > 0 or ColleenCollared > 0 )]Vanessa and Colleen[else]Vanessa[end if] when not helping her mother with her research.";
		else if "Centaur" is listed in Traits of Gwen:
			say "     Gwen's matured into a beautiful and sexy centaur mare. She's a blend of her old self and her mare mother, but more than a hand taller than her - nearly Vanessa's height even. She's got a lovely face with an alluring smile and has grown out her curly red hair so it hangs to her shoulders. Her upper body's both curvy and toned, with plump breasts and flawless chocolate brown skin. She wears a red bikini top that struggles to contain her bountiful melons. Her equine lower body has the same russet-red coat with chestnut socks as her mother has. Her equine tail flicks around occasionally giving a view of her throbbing vulva. Her voice is smooth and sultry whenever she speaks. Beautiful and knowing it, the sexy mare is eager to show off her sexy body and shares it often with [if ( ColleenSlut > 0 or ColleenAlpha > 0 or ColleenCollared > 0 )]Vanessa and Colleen[else]Vanessa[end if] when not helping her mother with her research.";
		else if "Succubus" is listed in Traits of Gwen:
			say "     Gwen looks fit to be a demon prince's concubine, or perhaps the succubus that a prince would trade his riches away for but a few minutes in her presence. Now a full succubus, she is now a little over six feet tall and easily noticeable in a room. She's got a sensuous face with an alluring smile and has grown out her curly red hair so it hangs to her shoulders. Her body has a perfect hourglass figure, plump breasts and flawless chocolate brown skin. She wears a red bikini top that struggles to contain her bountiful melons, and a matching thong to keep herself barely decent. Her demonic red tail is very expressive, capable of flicking around when she is agitated or excited, but equally able to weave around almost hypnotically or in a pinch as an extra limb. Her voice is smooth and sultry whenever she speaks. Beautiful and knowing it, the sexy demoness is eager to show off her sexy body and shares it often with [if ( ColleenSlut > 0 or ColleenAlpha > 0 or ColleenCollared > 0 )]Vanessa and Colleen[else]Vanessa[end if] when not helping Meredith with her research.";
		else:
			say "     Something has gone wrong. Please report this on the Flexible Survival Discord Server, along with the serial number - Prometheus.";


Instead of conversing the Gwen:
	if HP of Gwen < 3:
		say "ERROR-Gwen-[HP of Gwen]T: You should not be able to talk to me.";
	else if HP of Gwen <= 20:
		say "     [one of]'Momma's so smart.'[or]'It's nice to be a kid again, at least for a bit. Or should I say [']foal[']?' she adds with a giggle.[or]'Momma takes such good care of me.'[or]'I love being a cute horsey,' she says, cantering around[if HP of Gwen < 10] a little unsteadily[end if].[or]Gwen is hugging Mare's waist while nursing from the researcher's breast. The centaur [']mother['] smiles down at her filly and strokes her red hair.[or]'Auntie Vanessa's so big and strong.'[or]'I never knew science could be so much fun.'[or]Gwen's resting atop her bunk, happily scribbling with some crayons. A lot of her colorful doodles seem to be of centaurs, though there's some of the other creatures you've seen among them all well.[or]'You should help Momma have lots more foals so I can have some brothers and sisters.'[or][if Colleen is not bunkered]'I hope the other girls from the squad are having as much fun as I am. You should look for them.'[else if ColleenSlut > 0 or ColleenAlpha > 0 or ColleenCollared > 0]'Colleen makes such a cute doggy!'[else if SarahSlut > 0]'You should totally help Colleen be a doggy. I'm sure she'd love it.'[else]'Momma says Colleen can't play with us right now. You need to find her a friend so she can have someone to play with. And then she can play with us too!'[end if][cycling]";
	else if HP of Gwen <= 35:
		say "     [one of]'I could always tell Mom was smart. I'm learning so much from helping her.'[or]'Uhhh! I didn't think I've have to deal with puberty again.'[or]'I'm gonna have some sweet boobs when this is done,' she says, cupping her growing [if HP of Gwen < 30]breasts[else]melons[end if].[or]'I never knew science could be so much fun.'[or]'Aunt Vanessa wants me to help Mom with her notes, but it takes time. There's just so much interesting stuff to read in them.'[or]'Aunt Vanessa's helping me grow into a big, strong mare by feeding me her milk as well.'[or]'Oh, I can hardly wait to be a full-grown mare. It'll be such fun.'[or]Gwen is listening intently to Meredith as she runs some kind of test on some samples she's got. From time to time, she takes notes or passes her mother something.[or]'You should help Mom have lots more foals so I can have some brothers and sisters.'[or]'Mom says I need to wait until I'm all grown up before we can have sexy fun together. She wants to observe my growth without outside intervention.'[or][if Colleen is not bunkered]'I hope the other girls from the squad are having as much fun as I am. You should look for them.'[else if ColleenSlut > 0 or ColleenAlpha > 0 or ColleenCollared > 0]'Colleen is such a cute doggy!'[else if SarahSlut > 0]'I know Colleen's gonna love being a doggy. You should help her with that so she can join us.'[else]'It's great that Colleen's here, but it's too bad she can't hang out with us. You should find her a friend.'[end if][cycling]";
	else if HP of Gwen <= 60:
		say "     [one of]'Look! I'm all grown up now,' she says coquettishly with a wink as she cups her breasts.[or]'Don't I have a sexy body now?' she asks, running her hands down her sides.[or]'I'm glad I can help Mom with her research. On top of being fun, it's super-important.'[or]'I look forward to meeting Aunt Vanessa's foals. We'll have such fun together.'[or]'Mom wants to have lots more foals. You should help her with that.'[or]'Vanessa's always been such a great leader and now she's making sure we'll all be safe and together.'[or]'Sweet Mare's been such a wonderful mom,' she says, hugging the smaller centaur tightly, inadvertently smooshing her face into her boobs.[or]'Hey there, [if Player is male]handsome[else]sexy[end if],' say says in that sultry voice of hers.[or][if Colleen is not bunkered]'I hope the other girls from the squad are having as much fun as I am. You should look for them.'[else if ColleenSlut > 0 or ColleenAlpha > 0 or ColleenCollared > 0]'Colleen makes such a cute doggy! She's so much fun to play with.'[else if SarahSlut > 0]'I know Colleen's gonna love being a doggy. You should help her with that so she can join us.'[else]'I wish Colleen could come join us, but Mom wants to observe her as a human. That way she can monitor if she does start changing.'[end if][cycling]";
	else if HP of Gwen >= 63:
		say "[GwenTalkMenu]";

to say GwenTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if HP of Gwen is 63:
		choose a blank row in table of fucking options;
		now title entry is "About Her Problem";
		now sortorder entry is 1;
		now description entry is "Discuss Gwen's High Libido";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Small Talk";
	now sortorder entry is 2;
	now description entry is "Make polite conversation";
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
				if (nam is "About Her Problem"):
					say "[GwenTalk1]";
				else if (nam is "Small Talk"):
					say "[GwenTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Hazel, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GwenTalk1: [Discuss Gwen's High Libido]
	say "     Inconspicuously guiding the centaur somewhere private, you tell her that you would like to discuss how to treat her libido. 'I'm glad that you haven't forgotten about that. What ideas have you come up with?' Gwen asks, pacing back and forth.";
	if Beach Plaza is known and isHellhound is false: [Non-hellhound. Know about church (sort of)]
		say "     You tell her about the church on the beach, suggesting that the priestess may be able to help her. Gwen did mention an exorcism after all. 'Hmm. It seems worth a try. It's not that it's painful, embarrassing, or anything like that. It's more that there's a constant hunger for a long... thick.... virile cock to plunder my womb and fill me with foals,' she explains, slipping into a distinctly lust-driven state. Fortunately, she manages to snap herself out of it again moments later. 'Damn nanites,' she growls, flicking droplets of arousal from her tail. 'I probably don't have it any worse than anyone else in this city, but when we've been given a direct order my General Summers, I don't want to endanger the mission just because I'm looking for a good fuck. Do you think that we could meet this priestess immediately? I'd prefer not to wait any longer than necessary.' Not seeing much reason why not, you shrug, and gesture for her to lead the way. Now's as good a time as any.";
		say "     After (mis)informing Vanessa that you have requested for Gwen to accompany you on a patrol, the centaur private follows you outside, cantering back and forth once you are out of sight of the library. 'Come on. Hurry up. The sarge'll get worried if our [']patrol['] takes too long,' she chides you. With the pace that she sets, it doesn't take you too long to reach the cliffs above the beach, fortunately without incident. After a moment for Gwen to look wondrously up at the giant bronze crab, you descend the steps to the sand and trudge towards the church, the [if daytimer is day]hot [else]cool [end if]sand slipping beneath your feet. The door is open, inviting all that may need guidance or sanctuary to enter. You muse that an exorcism may not be something that the priestess has much, if any, experience with, but resolve to at least ask, breathing a sigh of relief when you find her the sole occupant at the moment.";
		WaitLineBreak;
		say "     'Welcome. How may I help you?' the priestess greets you as you approach, smiling serenely. You step aside to allow Gwen to explain her problem, mentioning the trouble that her libido is causing her, as well as how she came to be the way that she is, the scent of equine arousal growing slowly stronger as she does so. 'Hmm. I see. So you are worried that your inflamed libido is the result of demonic taint? Well, I have good news and bad news. Your quandary is entirely man-made, though perhaps it has magnified an issue that was already there. An exorcism would be painful and unnecessary. That said, I can still help you. Some other soldiers lost their supplies behind after they turned into seals, and I may be able to use the suppressants to affect your transformation and salve your libido. I see three options available to you. You can remain as you are, a centaur-succubus hybrid, become a centaur like your sergeant, or you could be return to how you were before you were taken advantage of; a succubus,' the priestess explains.";
		say "     The last option seems to come as quite a surprise to the soldier. 'Why would I want to be a succubus? And shouldn't you have anything against demons?' she splutters. 'Servants of Hell, yes, but even they deserve a chance to right the wrongs that they cause,' the holy woman clarifies. 'On top of that, not all the demons in the city are Hellspawn. Many, like you, are the result of technology and humanity's hubris, not infernal lineage. I see it as no different to your sergeant being a centaur, or your corporal a husky. It is merely your material form. Your soul is unblemished by it. As to why you might want that, it was your first transformation, wasn't it? I'm no scientist-' The three of you chuckle. 'But I would say that it had a deeper connection to you, just as the rest of your squad's forms do for them. You are of course free to reject this, but I wanted to make sure that you knew that it was an option and that you should feel no stigma from it. I promise you, if your friends are as close to you as you think, that they will understand and accept you no matter what you look like.'";
		WaitLineBreak;
		say "     'Fuck... I was so sure of what I wanted when we set off,' Gwen murmurs, tossing her mane as she thinks. 'And perhaps that is the right decision, but only you know,' the priestess sympathetically replies. 'Couldn't I have some time to think about this?' the centaur asks, her face falling when the holy woman shakes her head. 'You can have a few minutes, but other people may want the supplies in the coming days, if that is what you mean.' 'I'm allergic to something in the army-issued libido suppressants. Are you sure that they'll work?' 'These aren't standard-issue supplies. It's up to you whether you want to take the chance, but if there is an adverse reaction, I will tend to you as long as it takes to recover,' the priestess reassures the soldier. Gwen turns to you. 'What do you think that I should do? You've brought our squad this far and your opinion is one that I trust.'";
		say "     [bold type]You think for a moment before responding...[roman type][line break]";
		let Gwen_Transformation_Choices be a list of text;
		add "You're perfect the way that you are. Just take the special libido suppressants if you want them." to Gwen_Transformation_Choices;
		add "Become a centaur like Vanessa. Lose the horns, demonic tail, and overwhelming lust." to Gwen_Transformation_Choices;
		add "Return to being a succubus. Start anew as your own person, though take the libido suppressants just in case." to Gwen_Transformation_Choices;
		let Gwen_Transformation_Choice be what the player chooses from Gwen_Transformation_Choices;
		if Gwen_Transformation_Choice is:
			-- "You're perfect the way that you are. Just take the special libido suppressants if you want them.":
				LineBreak;
				say "     'Trying to flatter me, are you? It won't work,' Gwen teases you before turning back to the priestess. 'I think that I'll stay how I am after all. Sorry if I've wasted your time.' 'Think nothing of it. Providing guidance is one of my most sought after duties, and anyway, hopefully I can still help you manage your libido,' the holy woman replies, tearing open a foil packet and showing what looks like a gauze pad to the soldier. 'That patch is the suppressant? All the ones that I've seen have been injections!' the centaur exclaims. 'Special Forces get all the good stuff...' Gwen stands still as the pad is pressed against her equine shoulder, gasping as the drug rushes through her system (or perhaps because it is cold). 'Oh, wow. That's a lot better. I don't have to fight the urge to pin you down and get you shoulder deep fisting my pussy,' she tells the priestess before blushing. 'Er... No offense.'";
				say "     'None taken. The effects of rampant lust can be rather extreme,' the holy woman replies. 'Now, this should treat the worst of it, but after that, it is up to you to maintain your self-control and resist your libido yourself. Like the rest of us in this city. Do not punish yourself should you fail, but use it as a reminder to try harder.' 'Thank you... Sister? Mother?' Gwen says, unsure how to address her. 'Just Cassiel will do, and feel free to come back even if it is for nothing more than to talk,' the priestess replies. 'Will do,' the soldier replies before you both turn and leave, Cassiel making what you assume to be a farewell gesture with an arm. You and Gwen return back across the sand and up the steps in silence, only talking again when you are hastily making your way back through the city. 'I don't think the Sarge'll be too concerned about our absence, but you should probably let me talk to her without you when we get back. I may look the same, but she'll likely notice me acting less horny and I don't want to draw you into a lecture on lying to a superior officer. Thanks though. I really mean it,' Gwen sincerely tells you. You agree, allowing her to continue on alone when you enter the library, making yourself scarce in the back shelves.";
				TraitGain "Succutaur" for Gwen;
			-- "Become a centaur like Vanessa. Lose the horns, demonic tail, and overwhelming lust.":
				LineBreak;
				say "     'There is a certain appeal to that, and the Sarge'll probably be overjoyed that I am becoming more like the rest of the herd. Colleen will stick out even more though,' Gwen muses before turning back to the priestess. 'Cleanse me of my techno-demonic taint,' she announces with a goofy grin. 'It's not- You know what, fine, call it that. Hold still,' the holy woman replies, tearing open a foil packet and showing what looks like a gauze pad to the soldier. 'That patch is the suppressant? All the ones that I've seen have been injections!' the centaur exclaims. 'Special Forces get all the good stuff...' Gwen stands still as the pad is injected with something before being pressed against her equine shoulder, gasping as the drug rushes through her system (or perhaps because it is cold). Almost immediately, her horns begin to shrink back into her skull, and her pointed tail disintegrates into that of a horse. 'Oh, wow. That's a lot better. I don't have to fight the urge to pin you down and get you shoulder deep fisting my pussy,' she tells the priestess before blushing. 'Er... No offense.'";
				say "     'None taken. The effects of rampant lust can be rather extreme,' the holy woman replies. 'Now, this should treat the worst of it, but after that, it is up to you to maintain your self-control and resist your libido yourself. Like the rest of us in this city. Do not punish yourself should you fail, but use it as a reminder to try harder.' 'Thank you... Sister? Mother?' Gwen says, unsure how to address her. 'Just Cassiel will do, and feel free to come back even if it is for nothing more than to talk,' the priestess replies. 'Will do,' the soldier replies before you both turn and leave, Cassiel making what you assume to be a farewell gesture with an arm. You and Gwen return back across the sand and up the steps in silence, only talking again when you are hastily making your way back through the city. 'I don't think the Sarge'll be too concerned about our absence, but you should probably let me talk to her without you when we get back. She's going to notice my new tail, not to mention that I'm less horny in more ways than one, and I don't want to draw you into a lecture on lying to a superior officer. Thanks though. I really mean it,' Gwen sincerely tells you. You agree, allowing her to continue on alone when you enter the library, making yourself scarce in the back shelves.";
				TraitGain "Centaur" for Gwen;
			-- "Return to being a succubus. Start anew as your own person, though take the libido suppressants just in case.":
				LineBreak;
				say "     'Back to before the Sarge found me... I suppose Colleen might need someone else who isn't a horse in the squad,' Gwen quips before turning back to the priestess. 'Return me to being a sex demon,' she announces with a saucy grin. 'The real seductress was inside you all along,' the holy woman replies, tearing open a foil packet and showing what looks like a gauze pad to the soldier. 'That patch is the suppressant? All the ones that I've seen have been injections!' the centaur exclaims. 'Special Forces get all the good stuff...' Gwen stands still as the pad is injected with something before being pressed against her equine shoulder, gasping as the drug rushes through her system (or perhaps because it is cold). Almost immediately, she collapses, but you manage to catch her in time, lowering her to the floor as her body shifts away from being tauric. After a minute, Gwen gingerly regains her feet, tracing her hands over her chocolate-brown skin, from sculpted calves to sensuous shoulders. 'Oh, wow. That's a lot better. I don't have to fight the urge to pin you down and get you shoulder deep fisting my pussy,' she tells the priestess before blushing. 'Er... No offense.'";
				say "     'None taken. The effects of rampant lust can be rather extreme,' the holy woman replies. 'Now, this should treat the worst of it, but after that, it is up to you to maintain your self-control and resist your libido yourself. Like the rest of us in this city. Do not punish yourself should you fail, but use it as a reminder to try harder. Be responsible with letting your inner-succubus out.' 'Thank you... Sister? Mother?' Gwen says, unsure how to address her. 'Just Cassiel will do, and feel free to come back even if it is for nothing more than to talk,' the priestess replies. 'Will do,' the soldier replies before you both turn and leave, Cassiel making what you assume to be a farewell gesture with an arm. You and Gwen return back across the sand and up the steps in silence, only talking again when you are hastily making your way back through the city. 'I don't think the Sarge'll be too concerned about our absence, but you should probably let me talk to her without you when we get back. She may be a little pissed that I'm not a centaur any more, but she'll come around. I don't want to draw you into a lecture on lying to a superior officer though. Gwen will likely be upset too, but this was my choice to make. Thanks though. I really mean it,' Gwen sincerely tells you. You agree, allowing her to continue on alone when you enter the library, making yourself scarce in the back shelves.";
				TraitGain "Succubus" for Gwen;
			now HP of Gwen is 64;
	else if isHellhound is true:
		if HP of Cassiel is 1: [Repentant Hellhound]
			say "     You tell her about the church on the beach, suggesting that the priestess may be able to help her. You know the lengths that Cassiel will go to help people, after all. 'Hmm. It seems worth a try. It's not that it's painful, embarrassing, or anything like that. It's more that there's a constant hunger for a long... thick.... virile cock to plunder my womb and fill me with foals,' she explains, slipping into a distinctly lust-driven state. Fortunately, she manages to snap herself out of it again moments later. 'Damn nanites,' she growls, flicking droplets of arousal from her tail. 'I probably don't have it any worse than anyone else in this city, but when we've been given a direct order my General Summers, I don't want to endanger the mission just because I'm looking for a good fuck. Do you think that we could meet this priestess immediately? I'd prefer not to wait any longer than necessary.' Not seeing much reason why not, you shrug, and gesture for her to lead the way. Now's as good a time as any.";
			say "     After (mis)informing Vanessa that you have requested for Gwen to accompany you on a patrol, the centaur private follows you outside, cantering back and forth once you are out of sight of the library. 'Come on. Hurry up. The sarge'll get worried if our [']patrol['] takes too long,' she chides you. With the pace that she sets, it doesn't take you too long to reach the cliffs above the beach, fortunately without incident. After a moment for Gwen to look wondrously up at the giant bronze crab, you descend the steps to the sand and trudge towards the church, the [if daytimer is day]hot [else]cool [end if]sand slipping beneath your feet. The door is open, inviting all that may need guidance or sanctuary to enter. You muse that an exorcism may not be something that the priestess has much experience with, but given your previous experience with her, you resolve to at least ask, breathing a sigh of relief when you find her the sole occupant at the moment.";
			WaitLineBreak;
			say "     'Welcome. How may I help you?' Cassiel greets you as you approach, smiling serenely. You step aside to allow Gwen to explain her problem, mentioning the trouble that her libido is causing her, as well as how she came to be the way that she is, the scent of equine arousal growing slowly stronger as she does so. 'Hmm. I see. So you are worried that your inflamed libido is the result of demonic taint? Well, I have good news and bad news. Your quandary is entirely man-made, though perhaps it has magnified an issue that was already there. An exorcism would be painful and unnecessary. That said, I can still help you. Some other soldiers lost their supplies behind after they turned into seals, and I may be able to use the suppressants to affect your transformation and salve your libido. I see three options available to you. You can remain as you are, a centaur-succubus hybrid, become a centaur like your sergeant, or you could be return to how you were before you were taken advantage of; a succubus,' the priestess explains.";
			say "     The last option seems to come as quite a surprise to the soldier. 'Why would I want to be a succubus? And shouldn't you have anything against demons?' she splutters. 'Servants of Hell, yes, but even they deserve a chance to right the wrongs that they cause,' the holy woman clarifies, briefly casting her eyes towards you. 'On top of that, not all the demons in the city are Hellspawn. Many, like you, are the result of technology and humanity's hubris, not infernal lineage. I see it as no different to your sergeant being a centaur, or your corporal a husky. It is merely your material form. Your soul is unblemished by it. As to why you might want that, it was your first transformation, wasn't it? I'm no scientist-' The three of you chuckle. 'But I would say that it had a deeper connection to you, just as the rest of your squad's forms do for them. You are of course free to reject this, but I wanted to make sure that you knew that it was an option and that you should feel no stigma from it. I promise you, if your friends are as close to you as you think, that they will understand and accept you no matter what you look like.'";
			WaitLineBreak;
			say "     'Fuck... I was so sure of what I wanted when we set off,' Gwen murmurs, tossing her mane as she thinks. 'And perhaps that is the right decision, but only you know,' Cassiel sympathetically replies. 'Couldn't I have some time to think about this?' the centaur asks, her face falling when the holy woman shakes her head. 'You can have a few minutes, but other people may want the supplies in the coming days, if that is what you mean.' 'I'm allergic to something in the army-issued libido suppressants. Are you sure that they'll work?' 'These aren't standard-issue supplies. It's up to you whether you want to take the chance, but if there is an adverse reaction, I will tend to you as long as it takes to recover,' the priestess reassures the soldier. Gwen turns to you. 'What do you think that I should do? You've brought our squad this far and your opinion is one that I trust.'";
			say "     [bold type]You think for a moment before responding...[roman type][line break]";
			let Gwen_Transformation_Choices be a list of text;
			add "You're perfect the way that you are. Just take the special libido suppressants if you want them." to Gwen_Transformation_Choices;
			add "Become a centaur like Vanessa. Lose the horns, demonic tail, and overwhelming lust." to Gwen_Transformation_Choices;
			add "Return to being a succubus. Start anew as your own person, though take the libido suppressants just in case." to Gwen_Transformation_Choices;
			let Gwen_Transformation_Choice be what the player chooses from Gwen_Transformation_Choices;
			if Gwen_Transformation_Choice is:
				-- "You're perfect the way that you are. Just take the special libido suppressants if you want them.":
					LineBreak;
					say "     'Trying to flatter me, are you? It won't work,' Gwen teases you before turning back to Cassiel. 'I think that I'll stay how I am after all. Sorry if I've wasted your time.' 'Think nothing of it. Providing guidance is one of my most sought after duties, and anyway, hopefully I can still help you manage your libido,' the priestess replies, tearing open a foil packet and showing what looks like a gauze pad to the soldier. 'That patch is the suppressant? All the ones that I've seen have been injections!' the centaur exclaims. 'Special Forces get all the good stuff...' Gwen stands still as the pad is pressed against her equine shoulder, gasping as the drug rushes through her system (or perhaps because it is cold). 'Oh, wow. That's a lot better. I don't have to fight the urge to pin you down and get you shoulder deep fisting my pussy,' she tells Cassiel before blushing. 'Er... No offense.'";
					say "     'None taken. The effects of rampant lust can be rather extreme,' the holy woman replies. 'Now, this should treat the worst of it, but after that, it is up to you to maintain your self-control and resist your libido yourself. Like the rest of us in this city. Do not punish yourself should you fail, but use it as a reminder to try harder.' 'Thank you... Sister? Mother?' Gwen says, unsure how to address her. 'Just Cassiel will do, and feel free to come back even if it is for nothing more than to talk,' the priestess replies. 'Will do,' the soldier replies before you both turn and leave, Cassiel making what you assume to be a farewell gesture with an arm. You and Gwen return back across the sand and up the steps in silence, only talking again when you are hastily making your way back through the city. 'I don't think the Sarge'll be too concerned about our absence, but you should probably let me talk to her without you when we get back. I may look the same, but she'll likely notice me acting less horny and I don't want to draw you into a lecture on lying to a superior officer. Thanks though. I really mean it,' Gwen sincerely tells you. You agree, allowing her to continue on alone when you enter the library, making yourself scarce in the back shelves.";
					TraitGain "Succutaur" for Gwen;
				-- "Become a centaur like Vanessa. Lose the horns, demonic tail, and overwhelming lust.":
					LineBreak;
					say "     'There is a certain appeal to that, and the Sarge'll probably be overjoyed that I am becoming more like the rest of the herd. Colleen will stick out even more though,' Gwen muses before turning back to Cassiel. 'Cleanse me of my techno-demonic taint,' she announces with a goofy grin. 'It's not- You know what, fine, call it that. Hold still,' the priestess replies, tearing open a foil packet and showing what looks like a gauze pad to the soldier. 'That patch is the suppressant? All the ones that I've seen have been injections!' the centaur exclaims. 'Special Forces get all the good stuff...' Gwen stands still as the pad is injected with something before being pressed against her equine shoulder, gasping as the drug rushes through her system (or perhaps because it is cold). Almost immediately, her horns begin to shrink back into her skull, and her pointed tail disintegrates into that of a horse. 'Oh, wow. That's a lot better. I don't have to fight the urge to pin you down and get you shoulder deep fisting my pussy,' she tells Cassiel before blushing. 'Er... No offense.'";
					say "     'None taken. The effects of rampant lust can be rather extreme,' the holy woman replies. 'Now, this should treat the worst of it, but after that, it is up to you to maintain your self-control and resist your libido yourself. Like the rest of us in this city. Do not punish yourself should you fail, but use it as a reminder to try harder.' 'Thank you... Sister? Mother?' Gwen says, unsure how to address her. 'Just Cassiel will do, and feel free to come back even if it is for nothing more than to talk,' the priestess replies. 'Will do,' the soldier replies before you both turn and leave, Cassiel making what you assume to be a farewell gesture with an arm. You and Gwen return back across the sand and up the steps in silence, only talking again when you are hastily making your way back through the city. 'I don't think the Sarge'll be too concerned about our absence, but you should probably let me talk to her without you when we get back. She's going to notice my new tail, not to mention that I'm less horny in more ways than one, and I don't want to draw you into a lecture on lying to a superior officer. Thanks though. I really mean it,' Gwen sincerely tells you. You agree, allowing her to continue on alone when you enter the library, making yourself scarce in the back shelves.";
					TraitGain "Centaur" for Gwen;
				-- "Return to being a succubus. Start anew as your own person, though take the libido suppressants just in case.":
					LineBreak;
					say "     'Back to before the Sarge found me... I suppose Colleen might need someone else who isn't a horse in the squad,' Gwen quips before turning back to Cassiel. 'Return me to being a sex demon,' she announces with a saucy grin. 'The real seductress was inside you all along,' the priestess replies, tearing open a foil packet and showing what looks like a gauze pad to the soldier. 'That patch is the suppressant? All the ones that I've seen have been injections!' the centaur exclaims. 'Special Forces get all the good stuff...' Gwen stands still as the pad is injected with something before being pressed against her equine shoulder, gasping as the drug rushes through her system (or perhaps because it is cold). Almost immediately, she collapses, but you manage to catch her in time, lowering her to the floor as her body shifts away from being tauric. After a minute, Gwen gingerly regains her feet, tracing her hands over her chocolate-brown skin, from sculpted calves to sensuous shoulders. 'Oh, wow. That's a lot better. I don't have to fight the urge to pin you down and get you shoulder deep fisting my pussy,' she tells Cassiel before blushing. 'Er... No offense.'";
					say "     'None taken. The effects of rampant lust can be rather extreme,' the holy woman replies. 'Now, this should treat the worst of it, but after that, it is up to you to maintain your self-control and resist your libido yourself. Like the rest of us in this city. Do not punish yourself should you fail, but use it as a reminder to try harder. Be responsible with letting your inner-succubus out.' 'Thank you... Sister? Mother?' Gwen says, unsure how to address her. 'Just Cassiel will do, and feel free to come back even if it is for nothing more than to talk,' the priestess replies. 'Will do,' the soldier replies before you both turn and leave, Cassiel making what you assume to be a farewell gesture with an arm. You and Gwen return back across the sand and up the steps in silence, only talking again when you are hastily making your way back through the city. 'I don't think the Sarge'll be too concerned about our absence, but you should probably let me talk to her without you when we get back. She may be a little pissed that I'm not a centaur any more, but she'll come around. I don't want to draw you into a lecture on lying to a superior officer though. Gwen will likely be upset too, but this was my choice to make. Thanks though. I really mean it,' Gwen sincerely tells you. You agree, allowing her to continue on alone when you enter the library, making yourself scarce in the back shelves.";
					TraitGain "Succubus" for Gwen;
			now HP of Gwen is 64;
		else: [Hellhound. Church not available]
			say "     Your thoughts stray to the church on the beach, but you ultimately dismiss it. With the way that you are, you're not likely to get much help there. You apologize to Gwen, saying that you're still working on it. You just wanted to show that you hadn't forgotten about her. 'Thanks. Now unless there was anything else...' she replies, waiting for a moment before trotting over to rejoin Vanessa and Meredith.";
	else: [Don't know about the church]
		say "     Unable to think of anything, you apologize to Gwen, saying that you're still working on it. You just wanted to show that you hadn't forgotten about her. 'Thanks. Now unless there was anything else...' she replies, waiting for a moment before trotting over to rejoin Vanessa and Meredith. You wonder whether you could find a church somewhere in the city?";

to say GwenTalk2:
	if HP of Gwen is 63:
		say "     [one of]'Look! I'm all grown up now,' she says coquettishly with a wink as she cups her breasts.[or]'Don't I have a sexy body now?' she asks, running her hands down her sides.[or]'I'm glad I can help Mom with her research. On top of being fun, it's super-important.'[or]'I look forward to meeting Aunt Vanessa's foals. We'll have such fun together.'[or]'Mom wants to have lots more foals. You should help her with that.'[or]'Vanessa's always been such a great leader and now she's making sure we'll all be safe and together.'[or]'Sweet Mare's been such a wonderful mom,' she says, hugging the smaller centaur tightly, inadvertently smooshing her face into her boobs.[or]'Hey there, [if Player is male]handsome[else]sexy[end if],' say says in that sultry voice of hers.[or][if Colleen is not bunkered]'I hope the other girls from the squad are having as much fun as I am. You should look for them.'[else if ColleenSlut > 0 or ColleenAlpha > 0 or ColleenCollared > 0]'Colleen makes such a cute doggy! She's so much fun to play with.'[else if SarahSlut > 0]'I know Colleen's gonna love being a doggy. You should help her with that so she can join us.'[else]'I wish Colleen could come join us, but Mom wants to observe her as a human. That way she can monitor if she does start changing.'[end if][cycling]";
	else if HP of Gwen > 63:
		if "Succutaur" is listed in Traits of Gwen:
			say "     [one of]'I wonder when the rescue will actually come? They've been talking about it for ages, yet nothing as come of it. Not that I'm in any rush. No doubt they'll be arguments over what rights the transformed should have...'[or]'I think that I've grown quite fond of being a succutaur. Similar enough to feel part of the herd, but different enough to feel like my own person.'[or]'I overheard Vanessa and Colleen discussing searching for more of our squad, but I don't know how long it'll be before they approach you about it. It may come as a surprise, but not everyone in the squad was a woman.'[or]'Vanessa's always been such a great leader and now she's making sure we'll all be safe and together. She has been referring to us as her herd rather than her squad though.'[or]'I still occasionally call Mere mom, sometimes on purpose, sometimes accidentally. I think that it makes her day.'[or]'Hazel is really sweet. I have no idea how she managed to avoid being taken as someone's prisoner, but they'll have to get through me if they want to hurt or corrupt her!'[or][if ColleenSlut > 0]'I worry that Colleen has lost herself, but she seems so happy. The Sarge doesn't seem concerned though, and I have to admit that she is cute like this.'[else if ColleenAlpha > 0]'Colleen is so bossy now. Being head husky bitch really seems to suit her, and I would be lying if it didn't get me going at times.'[else if ColleenCollared > 0]'I worry that Colleen is losing herself, but she seems so happy. The Sarge doesn't seem concerned though, and I have to admit that she is cute like this.'[else if HP of Colleen is 1]'Colleen really seems to have taken to the husky transformation. Loyal, protective... being a dog really suits her, and the fluff is fun to sink your fingers into too.'[else if HP of Colleen is 2]'Colleen rather sticks out as the only human in the squad, but she doesn't seem to mind. She may even be a little envious.'[else]Colleen rather sticks out as the only human in the squad. I'm not sure if she's envious or cautious of us.'[end if][cycling]";
		else if "Centaur" is listed in Traits of Gwen:
			say "     [one of]'I wonder when the rescue will actually come? They've been talking about it for ages, yet nothing as come of it. Not that I'm in any rush. No doubt they'll be arguments over what rights the transformed should have...'[or]'I have no regrets about purging myself of the succubus infection. I'm more like Vanessa and Meredith and I fit in with them so much more, like I'm part of a proper herd.'[or]'I overheard Vanessa and Colleen discussing searching for more of our squad, but I don't know how long it'll be before they approach you about it. It may come as a surprise, but not everyone in the squad was a woman.'[or]Vanessa has been more affectionate since I got rid of the my succubus bits. She's always been a great leader, but nibbling my ear in front of the others is still embarrasing. She has been referring to us as her herd rather than her squad though.'[or]'I still occasionally call Mere mom, sometimes on purpose, sometimes accidentally. I think that it makes her day.'[or]'Hazel is really sweet. I have no idea how she managed to avoid being taken as someone's prisoner, but they'll have to get through me if they want to hurt or corrupt her!'[or][if ColleenSlut > 0]'I worry that Colleen has lost herself, but she seems so happy. The Sarge doesn't seem concerned though, and I have to admit that she is cute like this.'[else if ColleenAlpha > 0]'Colleen is so bossy now. Being head husky bitch really seems to suit her, and I would be lying if it didn't get me going at times.'[else if ColleenCollared > 0]'I worry that Colleen is losing herself, but she seems so happy. The Sarge doesn't seem concerned though, and I have to admit that she is cute like this.'[else if HP of Colleen is 1]'Colleen really seems to have taken to the husky transformation. Loyal, protective... being a dog really suits her, and the fluff is fun to sink your fingers into too.'[else if HP of Colleen is 2]'Colleen rather sticks out as the only human in the squad, but she doesn't seem to mind. She may even be a little envious.'[else]Colleen rather sticks out as the only human in the squad. I'm not sure if she's envious or cautious of us.'[end if][cycling]";
		else if "Succubus" is listed in Traits of Gwen:
			say "     [one of]'I wonder when the rescue will actually come? They've been talking about it for ages, yet nothing as come of it. Not that I'm in any rush. No doubt they'll be arguments over what rights the transformed should have...'[or]'I don't know why, but my libido seems so much more manageable as a succubus. I aslo get to feel like my own person and act seductive without being judged. It's the best!'[or]'I overheard Vanessa and Colleen discussing searching for more of our squad, but I don't know how long it'll be before they approach you about it. It may come as a surprise, but not everyone in the squad was a woman.'[or]Vanessa is still sulking that I'm not a centaur any more. She's always been a great leader though, so she hasn't let it affect the squad too much. We were all close before the transformations and we're not going to let that change now.'[or]'I've had to make it clear to Mere that just because I'm not a centaur anymore, doesn't mean that I can't still call her mommy. The kink-play is really hot and fulfilling for both of us.'[or]'Hazel is really sweet. I'll protect her and her innocence with my life, but no one can stop me from imagining her in sexy situations. Oh, the way she'd blush...'[or][if ColleenSlut > 0]'I worry that Colleen has lost herself, but when she's having so much fun perhaps it's better this way. Nothing wrong with being a little slutty after all.'[else if ColleenAlpha > 0]'Colleen is so bossy now. Being head husky bitch really seems to suit her, and I would be lying if it didn't get me wet.'[else if ColleenCollared > 0]'I worry that Colleen is losing herself, but who am I to judge someone for wanting to explore their inner slut?'[else if HP of Colleen is 1]'Colleen really seems to have taken to the husky transformation. Loyal, protective... being a dog really suits her, and I can't wait to try petplay with her.'[else if HP of Colleen is 2]'Colleen rather sticks out as the only human in the squad, but she doesn't seem to mind. She may even be a little envious, and who could blame her?'[else]Colleen rather sticks out as the only human in the squad. I'm not sure if she's envious or cautious of us.'[end if][cycling]";
		else:
			say "     Something has gone wrong. Please report this on the Flexible Survival Discord Server, along with the serial number - Prometheus.";


Section 3 - Sex w/Gwen

to say sexwithGwen:
	if HP of Gwen < 3:
		say "ERROR-Gwen-[HP of Gwen]F: You shouldn't be able to find me.";
	else if HP of Gwen <= 20:
		say "     'Oh, don't be silly. I'm just a little filly.' She starts to giggle at her rhyme.";
	else if HP of Gwen <= 35:
		say "     'I know I'm looking hot, but I'm still [']jailbait['],' she says with a giggle[if HP of Gwen < 30].[else]. 'Almost though. Mom says I won't need to wait much longer.'[end if]";
	else if lastfuck of Gwen - turns < 4:
		say "     'Mmm... as much as I had fun last time, I do need a bit of a break. I've got to help Momma Mare and Aunt Vanessa with a few things.'";
	else if Player is neuter:
		say "     There's not much point in playing with her given your lack of genitals.";
	else:
		say "     'I'm still coming to terms with who I have become. Just give me a bit more time please,' Gwen asks. (No sex yet, sorry. - Prometheus)";
[		say "[Gwensexmenu]";]


to say Gwensexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if Player is male:
		if BodyName of Player is not listed in infections of TaurList:
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
		now title entry is "Blowjob";
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
	if lastfuck of Colleen - turns >= 4:
		choose a blank row in table of fucking options;
		now title entry is "Threesome w/Colleen";
		now sortorder entry is 7;
		now description entry is "have Colleen join in on the fun";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck her" or nam is "Taur-style fuck":
					say "[Gwensex1]";
				else if nam is "Anal":
					say "[Gwensex2]";
				else if nam is "Blowjob":
					say "[Gwensex3]";
				else if nam is "Eat her out":
					say "[Gwensex4]";
				else if nam is "Tail fuck her":
					say "[Gwensex5]";
				else if nam is "Threesome w/Vanessa":
					say "[Gwen_3some1]";
				else if nam is "Threesome w/Colleen":
					say "[Gwen_3some2]";
				wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Gwen is turns;
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
	if HP of Gwen >= 3 and HP of Gwen <= 60:
		increase HP of Gwen by 1;
		if HP of Gwen is 61 and the player is in the Back Of The Library or the player is in the Grey Abbey Library and skipturnblocker is 0:
			say "     You notice Meredith[if Colleen is bunkered], Vanessa and Colleen[else] and Vanessa[end if] hugging Gwen repeatedly. This isn't too out of the ordinary, but Gwen's laden down with a pack of gear and has pulled on the top half of her jumpsuit loosely over top of her bikini. Heading over, you ask them what's up.";
			say "     'Oh, I was just about to come see you,' Gwen says with a sexy smile. 'Aunt Van- I mean the sarge has a mission for me. So I'll be heading out. There's some... scouting she needs me to take care of. I probably won't be back here, but hopefully I'll still get to see you once this mess is all done,' she says, running her hands down your side before grabbing your ass.";
			say "     There's another long round of goodbyes and tears are shed, mostly by the [']mother['] and [']daughter['], though there's a promise by Meredith to see her as soon her work's done. You try to get some more info out of Vanessa, but she says it's military secrets and winks coyly. Still, it doesn't sound like it's anything too dangerous for the sexy centaur - well, at least no more dangerous than any trip out into the city can be. You wish her the best of luck and hope to see her again, watching that sexy ass of hers as she leaves.";
			now HP of Gwen is 62;
		now Gwen is nowhere;

after going to Back Of The Library while HP of Gwen is 61:
	say "     It takes you a few moment to notice that Gwen's not in the library. And more than not just being there, her stuff's gone as well. Aside from some of her childhood crayon drawings left on her bunk, she's cleared out. Asking Meredith about this, she's a little teary-eyed, but says that Vanessa needed Gwen to go out on a very important mission. From how thoroughly she's cleared out and her mother's sad face, you know she won't be back here again. While neither of the centaurs will tell you what this mission is, it's clear they both feel it's important enough for her to go deal with it, but safe enough that she can handle it on her own. Meredith does talk about how she'll be seeing her sweet Gwenny again as soon as her own research is done.";
	now HP of Gwen is 62;
	now Gwen is nowhere;


Section 5 - Events

Table of GameEventIDs (continued)
Object	Name
Premature Return	"Premature Return"

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Premature Return"	Premature Return	"[EventConditions_PrematureReturn]"	Grey Abbey Library	2500	2	100

to say EventConditions_PrematureReturn:
	if (HP of Gwen is 1 or HP of Gwen is 61 or HP of Gwen is 62) and (HP of Colleen > 0 or ColleenAlpha > 0 or ColleenCollared is 1) and HP of Hazel Summers > 0: [list of conditions here] [ Gwen sent on recon, Colleen at library and fate decided, Hazel at library]
		now CurrentWalkinEvent_ConditionsMet is true;

Premature Return is a situation.
ResolveFunction of Premature Return is "[ResolveEvent Premature Return]".
The level of Premature Return is 0.
The sarea of Premature Return is "Nowhere".

to say ResolveEvent Premature Return: [Gwen returns]
	say "     As you approach the front desk, you notice a shadow coming in through the front door, looking up to see Gwen, much to your surprise, clopping into the library. 'Hey there, sexy. I'm glad that it's you that I saw first, though you look like you weren't expecting to see me again before the army moved in,' the centaur purrs, circling around you before with some effort, she steps away. 'Ah, but I need to give my report to mommy and the sarge. Would you get them for me? I need to catch my breath or I might end up jumping you.' You're not sure how much of that is the nanites in general, and how much is the succubus infection in particular, but you agree to fetch the rest of her squad while she calms herself down. Moments later, you return with Vanessa, Meredith, and Colleen, the three of them affectionately greeting their fourth member, and in Meredith's case pseudo-daughter, before the sergeant calls for her to give her report.";
	say "     'About that...' Gwen replies, producing a radio. 'Central Three, this is Gamma Five. Squad and person of interest present. Over,' she speaks into it, casting a nervous glance towards her comrades. There is a crackle of static before a brief piercing squawk. 'Gamma Five, this is Control Three. Confirm identity and security. Encryption is active,' a male voice responds. 'Charlie. Echo. November. Tango. Alpha. Uniform. Romeo,' Gwen enunciates. The voice on the other end sighs. 'I'm sure whoever came up with that thought that they were being clever... Give Sergeant Harris the radio so that after I explain the situation I can answer any questions before the battery dies.' The young centaur does so, Vanessa looking at the radio with trepidation. 'Gamma One awaiting orders.' 'At ease. If the encryption isn't working, names are the least of our problems. I understand that your six members of your squad are MIA but that the scientist is still secured. Is this correct?' the voice on the radio asks.";
	WaitLineBreak;
	say "     'That is correct, sir. The drop went wrong, but Corporal Varna, Private Washington, and Dr. Evans were rescued by a local,' the sergeant explains, casting a glance towards you. 'This matches what the private said. After that you sent Washington on a solo mission to attempt to pacify and recruit infectees of the centaur strain, yes?' There is a definite edge to Central Three's voice. Vanessa pauses before answering. 'Yes, sir. That is correct. I had hoped that they might be able to lend some assistance, being strong, fast, and still moderately human.' 'Hmm. I won't criticize your actions too heavily, even with your circumstances being what they are. Reconnaissance teams were encouraged to adapt to adverse conditions after all, but I will be countermanding that order,' he replies, before sighing heavily. 'Your primary mission remains to protect Dr. Meridith Evans and support her collection of nanite samples. However, given recent... events, I have a secondary mission for you to fulfill as well, though some might consider it an overstep of my authority. It has come to my attention that my daughter is taking shelter at the same location as you. You will ensure her safety. Is that understood?'";
	say "     Other than Gwen, the soldiers looked shocked by this revelation, though Vanessa manages to stammer out an affirmative. 'Good. Thank you. Her name is Hazel. The person of interest should be able to introduce you to her. Private Washington has further details which she shall share with you. Do better than her last protective detail. Locate the rest of your squad if you deem it advantageous to fulfill this, but do try to control yourself in future. There will be harsh consequences if you repeat what you did with Private Washington. Any quest-' The radio cuts out before Central Three can finish, Vanessa holding up the now dead radio. 'Well, fuck,' she mutters before tossing it on the desk beside her. A memory stirring, you ask who was on the other end. 'General Summers. He's part of the leadership outside the city and oversees much of the collaboration with GSX, Zephyr, and other relevant scientific authorities,' Gwen replies.";
	WaitLineBreak;
	say "     'What did the general mean, [']What you did with Private Washington[']?' Colleen asks[if HP of Colleen > 0], her lips tightening[else if ColleenAlpha > 0], folding her arms[else] curiously[end if]. Vanessa and Meredith have the good grace to look at the ground shame-faced. 'When they found me, I had been partially infected by a succubus,' Gwen eventually explains. 'I don't know whether it was something about this or just the nanites in general, but Mere's clumsiness knocked me into the arms of the Sarge and, with [name of player]'s assistance, they took advantage of me[if HP of Gwen > 60], shoving me inside Mare before having her give birth to me again, sort of[end if]. I'm not holding it against them. We all know what this city is like.' Colleen nods, but looks towards Vanessa and Meredith [if HP of Colleen > 0]stonily, unconsciously stepping protectively towards Gwen[else if ColleenAlpha > 0]with a barely concealed grin, perhaps considering why she hadn't tried this before[else]with more than a little lust, likely imagining what it was like[end if]. 'Anyway, we should go and meet Hazel. From her description, she's not what I imagined the daughter of a general would be,' the young centaur continues, gesturing for you to lead the way.";
	say "     It doesn't take you long to find Hazel after descending into the bunker, the young woman sitting on the edge of a bed reading [']Sasquatch: Friend, Mentor, Lover[']. Upon seeing you, she puts a bookmark in and stands up to greet you. 'Hello [name of player]. How are you? And who's this?' she asks, eyeing the centaurs and husky with mixed curiosity and caution. The soldiers introduce themselves along with explaining their recent orders. 'Well then... I suppose that definitely rules out emergency extraction. Thank you for the offer, but it shouldn't be necessary. I've got a guardian angel. Sort of literally,' Hazel beams. 'You could have Green Berets protecting you and we would still obey General Summer's direct order to ensure your safety. Perhaps from a distance to reduce the chance of infecting you,' Vanessa replies with determination. 'I suppose more protection wouldn't hurt, but you don't need to worry about me transforming. I had special shots from GSX. At least I think it was them. The guy looked like he was from a spy film, but he had the right paperwork,' the human woman says, rolling up her sleeve to show evidence of a past cluster of pin-pricks.";
	WaitLineBreak;
	say "     'Really? I would be interested in getting some samples of your blood. If you're willing, that is,' Meredith interjects. 'The immunity boosters that the army get seem to wear off quickly, so I would be curious to know what is different about yours.' She seems more than a little excited about the prospect. 'Um... Sure? Not right now though. I'm at a good bit in my book,' Hazel replies. Taking the hint, you all bid her goodbye and return upstairs, leaving the young woman to resume her romance novel. 'She really seems untouched by the nanites,' Colleen says incredulously, casting a glance back towards the bunker. 'She does, but something seems strange about her story. If GSX had the means to make immunity boosters that effective, why aren't they available to the military? And why didn't General Summers mention it?' Vanessa muses. 'We'll know more when I get some samples to look at,' Meredith adds. 'I suppose it doesn't matter. She's a sweet girl and we have orders to protect her,' the sergeant continues, to the agreement of the rest of the squad.";
	say "     After a brief discussion, the soldiers go their own ways, Gwen remaining behind to talk to you. 'Hey, I didn't want to say anything in front of the others, but have you seen or found anything out in the city that might be able to make me less horny?' she asks. 'Other than libido suppressants, I mean. I'm allergic to something in them.' You can't think of anything immediately, but tell her that you'll get back to her if you encounter or remember anything that might be of use. 'Thanks. I think that it is mostly from the succubus in me, so I don't know, perhaps an exorcism?' Gwen jokes before trotting after Meredith and Vanessa, leaving you to ponder her request.";
	if HP of Gwen is 1:
		TraitGain "Not Unbirthed" for Gwen;
	else:
		TraitGain "Unbirthed" for Gwen;
	now HP of Gwen is 63;
	move Gwen to Back Of The Library;
	now Premature Return is resolved;

Gwen ends here.
