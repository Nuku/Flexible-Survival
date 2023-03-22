Version 1 of Leon by Luneth begins here.
[ Original content by Sarokcat ]


[ Libido of Leon                                                               ]
[ 0 = Leon not chosen as main interest                                         ]
[ 1 = Leon chosen as main interest                                             ]
[ 100 = Succumbed to Leon as male ewe                                          ]

[ Stamina of Leon                                                              ]
[ 0 = Leon has no interest in males                                            ]
[ 1 = Leon has become excited by the idea of having a male ewe                 ]

[ Lust of Leon - M/M progression                                               ]

Section 1 - NPC

Table of GameCharacterIDs (continued)
object	name
Leon	"Leon"

Leon is a man.
[physical details as of game start]
ScaleValue of Leon is 3. [scalevalue 1-5: "tiny(under 1 foot)", "small(under 4 feet)", "average(around 6 feet)", "large(around 10 feet)", "huge(over 11 feet)"]
Body Weight of Leon is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Leon is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Leon is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Leon is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Leon is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Leon is 7. [length in inches]
Breast Size of Leon is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, C = 3, D = 4 DD = 5, ...]
Nipple Count of Leon is 2. [count of nipples]
Asshole Depth of Leon is 6. [inches deep for anal fucking]
Asshole Tightness of Leon is 1. [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
Cock Count of Leon is 1. [number of cocks]
Cock Girth of Leon is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Leon is 8. [length in inches]
Ball Count of Leon is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Leon is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Leon is 0. [number of cunts]
Cunt Depth of Leon is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Leon is 0. [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
Clit Size of Leon is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Leon is false.
PlayerRomanced of Leon is false.
PlayerFriended of Leon is false.
PlayerControlled of Leon is false.
PlayerFucked of Leon is false.
OralVirgin of Leon is true.
Virgin of Leon is true.
AnalVirgin of Leon is true.
PenileVirgin of Leon is false.
SexuallyExperienced of Leon is true.
TwistedCapacity of Leon is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Leon is false. [steriles can't knock people up]
MainInfection of Leon is "Ram".
Description of Leon is "[LeonDesc]".
The scent of Leon is "[LeonScent]".
Conversation of Leon is { "Baa, baby!" }.
the fuckscene of Leon is "[sexwithleon]".
Leon is in New Ewe Storeroom.

to say LeonDesc:
	say "     A strong and relatively rugged looking ram person is hanging around near the registers, keeping an eye on you. You recall his name was Leon.";

instead of sniffing Leon:
	say "[LeonScent]";

to say LeonScent:
	say "     Leon smells of a male ram and hard work.";

Section 2 - Talk Options

Instead of conversing the Leon:
	if Libido of Mary > 0:
		say "     'Hey there, good to see you,' Leon says, 'But I'm not the one you should be talking to. You wouldn't want your little lamb over there to get lonely, would you?";
	else:
		if Libido of Leon > 0:
			say "     [one of]'Welcome back to our store!'[or]'Ah you came back to the flock like a good little ewe.'[or]'Be careful out there, I wouldn't want to see one of my flock get hurt.'[or]'Are you sure all you want to do is talk?'[or]'If you don't want to go back out into the city, you can stay here anytime.'[or]'I heard there was a big wolf out there, you be careful.'[or]'How is it out there today?'[or]'Almost shearing time again.'[or]Leon bleats at you absentmindedly, before blushing when he realizes what happened.[or]'If you need your ram to [']take care['] of you, just let me know.'[or]'Want to head back to the break room with me?'[or]'I wonder when rescue will arrive.'[at random]";
		else:
			say "     'Ah great, I'm glad you came to talk to me, I assume this means you'd like to join our little flock here?'";
			if Player consents:
				say "     'Wonderful!' he says, rubbing his rough hooflike hands together. 'I was hoping you'd decide to join us, and we could definitely use someone like you around here!' quickly calling over another of his ewes to watch the storefront, he takes your unresisting arm and leads you through a door with a sign someone had recently changed from [']employees only['] to [']flock only[']. Entering a short narrow hallway, Leon leads you to the left where the same person has changed the break room sign to [']the breaking room['], making you feel a little nervous as he leads you inside.";
				say "     The room is well lit from the overhead lights, though that seems to be the only constants with most other break rooms you've seen. At some point most of the furniture seems to have been replaced with low benches, and the rest of the room is stuffed with what appears to be fresh piles of wool made into bedding. The room is covered in a strong musk of sheep and sex, making your head swim and your body tingle. Your attention is once more drawn back to Leon as he runs his hand along your neck, before carefully helping you remove your clothes, leaving you blushing as all of your [Skin of Player] skin is exposed for him to see.";
				WaitLineBreak;
				say "     Leon grins as he looks you up and down, before guiding you over to one of the benches to sit.";
				if Player is male:
					say "     'Hmm looks like you won't fit in here quite yet...' he says, eyeing your male attributes, 'only room in a flock for one Ram at a time. Nothing we can't fix though!'";
				else:
					say "     'Oh yeah, that's what I like to see in woman,' he says, eyeing you lewdly, 'Now we just need to fix the rest of you...'";
				say "     'First thing we need to do is mark you as part of the flock,' Leon says as he pulls off a bit of wool from his side. 'Need to make sure you smell right to the rest of the flock after all.' You watch as he begins to rub the wool over his cock, pumping it more and more until finally he lets out a low bleating noise as he coats it in his seed. The smell intensifies and the erotic sight makes you unable to protest as he moves closer and begins rubbing the wool he just [']treated['] all over your body. You moan as he massages you with the soft wool, you can swear you almost feel the rams seed sinking into you, marking you as his ewe, his property to do with as he wishes.";
				say "     The erotic massage continues, until you almost can't take it anymore, only to stop right before you can reach orgasm, leaving you panting and moaning in protest as Leon looks down at you with a grin on his muzzle. 'That should be enough for now,' he says. 'Welcome to my flock little, lamb. I'm definitely going to enjoy having you around. You are welcome to stay as long as you like now,' Leon smiles as he turns to leave, 'and if you need, I'd be happy to [']take care['] of you anytime you want. I take goood care of all my flock members, after all. You know where to find me when your ready.' He winks one of his big, innocent looking sheep eyes at you before closing the door behind him, leaving you to gather your equipment and your dignity back up.";
				say "     As your getting ready to leave, you can't help but notice you smell a bit like a sheep now yourself, just like all the other flock members in the store. For some reason, it doesn't seem to bother you to smell like your fellow sheep; you all belong to the same ram, after all... Blushing uncertainly at that thought, you return to the main store area.";
				increase Libido of Player by 10;
				increase Libido of Leon by 1;
				if FemaleList is not banned and "Male Preferred" is not listed in feats of Player:
					infect "Ewe";
					infect "Ewe";
				else:
					infect "Ram";
					infect "Ram";
			else:
				say "     'Ah well, I thought you would make a great addition to the flock. Think it over some more, would you?'";

Section 3 - Fucking Leon

to say sexwithLeon:
	setmonster "Ram";
	choose row MonsterID from the Table of Random Critters;
	if Player is neuter:
		say "     You're ill-equipped to play with him right now.";
	else if Libido of Mary is 0 and Libido of Leon is 0:
		say "     You should [bold type]talk[roman type] to him for a bit first.";
	else if Libido of Mary > 0:
		say "     'Well that sounds like an interesting offer,' Leon says, 'But I'm not the one you should be talking to now am I? You wouldn't want your little lamb over there to get lonely would you?'";
	else if lastfuck of Leon - turns < 6:
		say "     Leon smiles at you as you approach, before shaking his head sadly at you. 'Much as I'd like to spend some more time with you, you aren't the only one in the flock that needs my personal attention. And it wouldn't be fair to the rest of them for me to neglect them like that. But if you come back later, I'm sure we could find some time,' your handsome flock leader says with some amusement.";
	else:
		let ram be "Ram";
		let ewe be "Ewe";
		say "     Leon looks up from what he was doing as you approach and smiles. 'I can tell what you want, just head on back to the back room and I'll be right there,' he says as he calls over one of the other ewes to finish what he was doing. Shuddering in anticipation you find yourself heading through the doorway as your ram suggested, unable to disobey.";
		LineBreak;
		if Player is female: [female + herm (TODO: fill in missing herm parts)]
			if a random chance of 1 in 2 succeeds:
				say "     Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip. You eagerly find yourself removing what little clothing you were wearing, your body tightening in pleasure in spite of yourself at a command from the strong and dominant ram. 'Now that's what I like to see,' he says as he takes in your naked body, his eyes lingering on your now exposed slit. Leon grins as he slowly begins stalking forward, something in the way he moves making you feel smaller and more needy as he draws close to you, his strong masculine musk filling your nose and making your insides clench in need. Reaching out he rests his three fingered hand on your shoulder for a minute, before gently turning you to face away from him.";
				say "     Being unable to see what's happening adds an extra erotic flavor to the experience as he gently pushes you forward until you are braced on one of the low padded benches in the room, causing you to shudder in anticipation. Your body tenses as you can feel the tip of his hard cock pressed up against your ass, almost unconsciously you find yourself lifting your ass up higher to provide your ram with easier access to your increasingly wet opening. You hear Leon chuckle softly behind you at your obvious wantonness, before you can turn your head to look behind you, you feel your vagina split open as he impales you with his rod in one swift move. Gasping in shock and pleasure, you quickly lower your head as he begins to slowly slide himself in and out of your needy pussy. You can only moan as you feel your insides shudder and grip his cock tightly, his every move sending shockwaves of pleasure through your body.";
				WaitLineBreak;
				say "     [if SkinName of Player is ram or SkinName of Player is ewe]He buries his rough hands in your soft wool, gripping you tighter and then he begins to grip and release as he thrusts into you, his hands massaging your woolen outside as his cock massages your insides with each thrust. [end if][if FaceName of Player is ram or FaceName of Player is ewe]With his strong musk filling your sheep-like nose, you can't help yourself from responding, you quickly find yourself making soft baaing and bleating noises with each and every one of his thrusts. Leon only thrusts harder with each noise, seeming encouraged and turned on by your obvious sign of submission. [end if]As Leon begins to rock his hips forward even faster, you can feel his front leaning over you pressing you down into the bench even further, his rod moving within you making your eyes close in pleasure as your mouth hangs open weakly. You feel your mind emptying out of everything else except for the strong ram above you and his wonderful tool as he breeds you, your body signaling its total submission to his dominance, with your mind quickly following suit.";
				say "     Nothing seems quite as important to you anymore as being just another mindless part of the flock, surrendering body and soul to the strong male above you. As if sensing your readiness to submit, Leon thrusts forward one last time, his voice rising in a triumphant bleat as his cock explodes within you, your mind exploding with pleasure as he coats your insides with his fertile dominant seed. Moaning at the feel of his fertile treasure within you, you find yourself unable to do anything but shudder as aftershocks run through you, before he pulls himself out of you. You can feel him pat you on the back as you lie there helplessly before hearing the door open and shut as he leaves you alone to recover and pull your shattered mind back together. Eventually you recover and manage to clean up and drag yourself back outside, a little bit worried at how easily he reduced you to just another mindless ewe, and a little bit excited by it as well.";
				NPCSexAftermath Player receives "PussyFuck" from Leon;
			else:
				say "[LeonSpanking]";
		else: [male]
			if Lust of Leon is 0: [first time scene]
				say "     Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip. You quickly find yourself removing what little clothing you were wearing, finding yourself unable to resist a command from the dominant ram in the flock. Leon smiles, then takes a look at you before shaking his head sadly, 'Now this just won't do,' he says as he gestures to your [Cock of Player] cock. 'There's only room in the flock for one ram at a time ya see,' he continues with a shake of his head. 'Looks like I'm going to need to show you your place in this flock properly, and fix that little problem you got between your legs there.' So saying he quickly stalks toward you, his posture and movements intimidating as he shows his dominance.";
				say "     Forcing you down on your knees he reaches down and begins fondling his own cock in front of you, 'Don't move now,' Leon says with a grunt as he begins to stroke himself. His thick black and pink cock emerges slowly from its woolly sheath in front of your eyes, its tip level with your face as he slowly pumps his hoof-like hand up and down its length. You can't help but stare in fascination as your ram's strong male musk fills the room, its earthy scent going straight to your head and making your own cock tighten in response. Quickening his strokes, before you know it, Leon cums with a loud Baaaing noise, as his seed spurts all over your face, covering you in his sticky ram juices. Blinking to clear your eyes, you can't help but lick your lips, tasting his seed on and in your mouth, as the rest sinks into your skin. As the strong taste of his male seed shoots through you, you can feel your body twisting and changing in response, becoming better suited to being a proper ewe to his ram.";
				WaitLineBreak;
				say "     'Ah, that was good,' Leon says as he begins to clean himself up. 'I'm looking forward to our next time already. Especially in seeing how you look as a proper ewe,' he finishes with a lewd wink before ducking out the door and leaving you to clean up on your own before making your own way back to the store, the taste of his seed still filling your mouth.";
			else if the remainder after dividing Lust of Leon by 4 is 1: [comes up for Lust 1, 5, 9, ...]
				if Lust of Leon is 1: [only happens the first time of the cycle]
					say "     Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip. You quickly find yourself removing what little clothing you were wearing, finding yourself unable to resist a command from the dominant ram in the flock. Leon smiles, then takes a look at you before shaking his head sadly, 'Now this just won't do,' he says as he gestures to your [Cock of Player] cock. 'I thought I told you there'd only be room for one ram at a time. I guess I'm going to have to try a little harder to show you your place in this flock,' he says as he puts his three-fingered hand on your shoulder and turns you to face away from him. His other hoof-hand moves down to grab your ass, drawing a little bleat from you.";
				else: [for any after the first cycle]
					say "     Leon reaches the room right behind you giving you little time to get comfortable, noting you still have your clothes on he quickly gestures for you to strip. You quickly find yourself removing what little clothing you were wearing, finding yourself unable to resist a command from the dominant ram in the flock. Leon shakes his head as he sees your lingering [Cock of Player] cock, but seems to grin as well. 'Still sporting that, are you?' he says. 'I think I'd best show you your place in this flock again. Remind you that you're nothing but an ewe, even if you may be a male ewe at that,' he says as he puts his three-fingered hand on your shoulder and turns you to face away from him. His other hoof-hand moves down to grab your ass, drawing a little bleat from you.";
				say "     Being unable to see what's happening adds an extra erotic flavor to the experience as he firmly pushes you forward until you are braced on one of the low padded benches in the room, causing you to shudder in anticipation. Your body tenses as you can feel the tip of his hard cock pressed up against your ass, almost unconsciously you find yourself lifting your ass up higher to provide your ram with easier access to your increasingly submissive body. You hear Leon chuckle softly behind you at your obvious wantonness, before you can turn your head to look behind you, you feel your big, strong ram's hard cock press at your tight ring and push into you in one swift and smooth motion. Gasping in shock, pleasure and pain, you quickly lower your head as he begins to slowly slide himself in and out of your tight rump. You can only moan as you feel your insides shudder and grip his cock tightly, his every move sending shockwaves of pleasure through your body. 'Mmm... you like that, don't you? You're no ram, just a big male ewe for me.'";
				WaitLineBreak;
				say "     [if SkinName of Player is ram or SkinName of Player is ewe]He buries his rough hands in your soft wool, gripping you tighter and then he begins to grip and release as he thrusts into you, his hands massaging your woolen outside as his cock massages your insides with each thrust[else]His rough hands run over your [Skin of Player], massaging your [Body of Player] body as his cock massages your insides with each thrust[end if][if FaceName of Player is ram or FaceName of Player is ewe]. With his strong musk filling your sheep-like nose, you can't help yourself from responding, you quickly find yourself making soft baaing and bleating noises with each and every one of his thrusts. Leon only thrusts harder with each noise, seeming encouraged and turned on by your obvious sign of submission[else]. Leon's strong musk fills the air around you, arousing you further and clouding your senses[end if]. As Leon begins to rock his hips forward even faster, you can feel his front leaning over you pressing you down into the bench even further, his rod moving within you making your eyes close in pleasure as your mouth hangs open weakly. You feel your mind emptying out of everything else except for the strong ram above you and his wonderful tool as he breeds you, your body signaling its total submission to his dominance, with your mind quickly following suit. Nothing seems quite as important to you anymore as being just another mindless part of the flock, surrendering body and soul to the strong male above you.";
				say "     You can feel Leon's hot breath at your ear and hear his bleating grunts as he pounds into you like the virile ram he is. 'Mmm... that feels good, doesn't it? You want to be my ewe, don't you? Tell me that you're nothing but a weak male that wants to be my ewe,' he pants in your ear. You nod eagerly and moan over and over that you're a horny ewe, your woolly mind wanting nothing more than to be an ewe for this big stud of a ram. Clearly pleased with your response, he thrusts forward one last time, his voice rising in a triumphant bleat as his cock explodes within you, your mind exploding with pleasure as he coats your insides with his fertile, dominant seed. Moaning at the feel of his virile treasure within you, you find yourself unable to do anything but shudder as aftershocks run through you. You cum with a moaning bleat, emptying your lesser seed onto the floor. After pulling out, he pats your ass, telling he looks forward to having you as a proper ewe soon. You can only lie there helplessly, giving a soft bleat and nod before hearing the door open and shut as he leaves you alone to recover and pull your shattered mind back together. Eventually you recover and manage to clean up and drag yourself back outside, a little bit worried at how easily he reduced you to just another mindless ewe, and a little bit excited by it as well.";
				NPCSexAftermath Player receives "AssFuck" from Leon;
			else if the remainder after dividing Lust of Leon by 4 is 2: [comes up for Lust 2, 6, 10, ...]
				say "     Leon follows right on your heels as you go into the back room. When you don't strip right away, he quickly gestures for you to get undressed. Unable to resist your ram's orders, you pull off your clothes, trying to make a sensual show of it in the hopes of pleasing him. But when you reveal yourself to still be male, he is unimpressed by pushes you down firmly on the bench before you can even finish undressing. 'I was quite clear about what was expected of you, my slutty ewe. There's only going to be one ram in this here flock, one way or another. Now luckily for you, I have a little extra time today to devote to your on-the-job training here,' he says in your ear, his voice quite firm despite its low volume.";
				say "     Keeping you pinned to the bench, he grabs some bands of cloth and binds your hands and feet. By the time he's done, you're spread eagle on the bench with your ass in the air thanks to a raised pad. His hands run across your body, lightly at first before grabbing your ass firmly and giving it a hard squeeze, drawing a moaning bleat from you. Being bound and manhandled by the dominant ram is actually very arousing for you in your submissive need for him. Shall you beg him to [link]punish you (Y)[as]y[end link] or [link]fuck you (n)[as]n[end link]?";
				if Player consents:
					say "     Bleating for him to punish you like the disobedient male ewe you are, he grins and gives your ass a rough spank. 'You do deserve some proper punishment, now don't you? Luckily, I have a few things for more... recalcitrant ewes like you,' he says, swatting your ass hard before striding over to a black cabinet that is just out of your field of vision. You can hear him unlock and open the cabinet, take out a few heavy items and then return to you. Your ass is struck again, this time ";
					if ( Lust of Leon / 2 ) is odd:
						say "with loud crack as he strikes it with a thick leather paddle. You bleat loudly and pull at your bonds, but are held tightly by them. Tears wet the corners of your eyes at the sting of his blow, but you are also filled with a rush of arousal. Another blow, this time across your other cheek has you cry out again and louder.";
						say "     Leon grabs your chin roughly and squeezes it firmly. 'You're being too loud. Do you want the rest of the staff to know you're being disciplined?' And while there is a kinky rush of excitement at the thought of all the other ewes knowing you're getting punished, Leon doesn't give you a chance to respond, instead forcing a ball gag into your mouth. It proves to be quite effective when he gives you a hard lashing with the leather paddle across your back. Satisfied that your cries are muffled, he strides around you, letting the paddle drag across your [bodytype of Player] body, striking you from time to time on various parts of your person.";
						WaitLineBreak;
						say "     Each time you're hit, you moan and grow more aroused. Your [Cock of Player] penis is rock hard, pulsing and spurting precum with every blow. While a few tears have leaked down your cheeks from the pain, that is far exceeded by the precum that's drooling from your cock. Leon stops behind you, dropping the leather paddle heavily across your back before grabbing your ass in both hands. He grinds his cock between your cheeks and presses it to your tight hole, pushing it in quite firmly. You release a moaning bleat as you're buggered by the dominant ram, your lust-addled mind loving your deserved punishment. 'That's right, you're going to be my ewe, one way or another,' he groans lustfully as he pounds away at you.";
						say "     As the powerful ram drives his cock into you again and again, several of his thrusts are punctuated by blows from the paddle across your shoulders or back. Each blow causes your bound body to buck and your anus to clench down around his cock, much to your ram's obvious delight. And your delight as well, your erection rock hard and your balls aching for release. And while this punishment and fucking is going on, he's constantly reminding you again and again that your place is here as one of his ewes. His eventual release is quite powerful, shooting a hot, thick load of his virile semen into you, claiming you as his male ewe again. The feel of his musky cum filling you finally pushes you over the edge and, while your cries are muffled by the ball gag, you're quite certain the other ewes know full well that you've been seeded again by your ram.";
						NPCSexAftermath Player receives "AssFuck" from Leon;
						say "     After he's drained and pulled out, he removes the gag only to replace it with his cock, getting you to suck him clean. Only once that is done does he untie you and allow you to return to the store with the rest of the staff, reeking of sex.";
					else:
						say "by the multiple strikes of a leather lash. You bleat loudly and pull at your bonds, but are held tightly by them. The lingering sting of the lash's many strands cause your cheek to ache warmly, a warmth that also fills your loins with a rush of arousal. Another blow, this time to the other cheek has you whimper and bleat again.";
						say "     Leon strides around to your front and raises your head up to look at him. It's time you serviced your ram to help you learn your place,' he says as he forces a ring gag into your mouth. Once secured tightly, your mouth is held open by it, leaving you open for the ram's cock he stuffs into it. His shaft is forced fully into your mouth and down your throat, burying your nose in the musky scent of his woolen crotch. Losing yourself in his scent, you lick and suck at his cock as best you can.";
						WaitLineBreak;
						say "     Even as he thrusts into your restrained mouth, he continues to flog you. Each blow across your sides, back or ass cause your [bodytype of Player] body to stiffen, though it is your [Cock of Player] cock that stiffens most of all. Your manhood throbs and pulses with every lashing, precum dribbling from your unattended erection. You release moaning bleats around his pulsing rod as you're made to suck off the dominant ram, your lust-addled mind loving your deserved punishment. 'That's right, you're going to be my ewe, one way or another,' he groans lustfully as he pounds away at you.";
						say "     As the powerful ram drives his cock into your mouth again and again, he's constantly reminding you that your place is here as one of his ewes. And you respond to your punishment like a good ewe by sucking at his cock all the harder, eventually earning your reward as he cums with a loud bleat, blasting shot after shot of hot, musky semen into your mouth and down your throat. As you swallow it all down, the excitement of it all sends you over the edge as well, your [Cock of Player] penis releasing your load even as Leon lashes your ass all the harder for it.";
						NPCSexAftermath Player receives "OralCock" from Leon;
						say "     After he's drained and pulled out, he removes the ring gag while grinding his cock against your ass meaningfully while calling you a good ewe. Only then does he untie you and allow you to return to the store, sore and reeking of sex.";
					SanLoss 10;
					if "Strong Psyche" is listed in feats of Player, increase humanity of Player by 2;
					if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 2;
					if FemaleList is not banned and "Male Preferred" is not listed in feats of Player:
						infect "Ewe";
					else:
						infect "Ram";
				else:
					say "     Bleating for him to fuck you like the needy male ewe you are, he grins and gives your rear a light swat. Climbing atop you, he licks the edge of your ear while grinding against your ass. 'At least you know your place is right here,' he says softly, 'beneath me.' You shiver with excitement and try to push your ass back against that hard rod of his, but you're too tightly bound. Only when he's good and ready does he thrust into you, an act that causes you to bleat and moan in lustful ecstasy despite the sudden pain of the quick penetration.";
					say "     With you bound beneath him, you can do nothing but moan in pleasure as your inner walls squeeze and grip his cock tightly while he fucks you with rough zeal[if SkinName of Player is ram or SkinName of Player is ewe]. He buries his rough hands in your soft wool, gripping you tightly by the coat[else]. He grips your shoulders, pressing you down hard onto the bench[end if] as he rams you like the rutting male he is[if FaceName of Player is ram or FaceName of Player is ewe]. With his strong musk filling your sheep-like nose, you can't help yourself from responding, you quickly find yourself making soft baaing and bleating noises with each and every one of his thrusts. Leon only thrusts harder with each noise, seeming encouraged and turned on by your obvious sign of submission[else]. Leon's strong musk fills the air around you, arousing you further and clouding your senses[end if]. As Leon pounds his cock into your yielding asshole even faster, a growing feeling of submissive bliss fills you, your mind losing itself in the scent of the rutting male atop you. Your mind loses the threads of thought you try to hold onto until only your need for a strong ram inside you is all you can think about. At this moment, you are nothing more than another submissive member of his flock, another needy ewe for him to fuck and breed, even if but a male one.";
					say "     Between his bleating grunts as he pounds into you like the virile ram he is, he echoes your own woolly thoughts, reinforcing them further. 'Mmm... that's how you like it, isn't it? Being fucked like an ewe all the time is what you really want. Deep down, all you are is a weak male who'd much rather be my ewe,' he pants in your ear. You nod eagerly and moan over and over that you're a horny ewe, your lust-addled mind wanting nothing more than to be a sheep in this big stud's flock. Satisfied with your response, he thrusts forward one last time with a loud bleat and cums hard. His balls unleash their heavy payload, sending thick ram semen into your bowels. You are filled with pleasure as he coats your insides with his fertile, dominant seed and cum yourself soon after. Your lesser seed sprays out onto the floor, unworthy of claiming ewes like yourself or the other girls.";
					NPCSexAftermath Player receives "AssFuck" from Leon;
					say "     After pulling out, he struts around to your front and wipes his messy cock across your cheeks, leaving smears of his musky semen on your cheeks. With the scent of it right there, you are left in a lustful daze of submissive urges long after he's untied you and left you alone in the room. It is much later before you've regained enough of your senses to stagger out and join the other ewes in the store.";
					SanLoss 6;
					if "Strong Psyche" is listed in feats of Player, increase Humanity of Player by 1;
					if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 2;
			else if the remainder after dividing Lust of Leon by 4 is 3:
				say "[LeonSpanking]";
			else:
				say "     Leon follows you into the back room and pushes you towards one of the mounds of fragrant wool. Pushing you down onto it, he makes sure your face is buried in the soft, sheep-scented pile. 'Smell that. Take that in. It's the scent of your flock... where you belong,' he says firmly. With your nose buried in it, you can't help but smell the heady scent of sheep and arousal. Clearly you're not the first to be fucked on this pile, the scents of your ram, the ewes and rutting embedded in the wool. It makes you aroused and woolly-headed, your sheep urges coming back strong.";
				say "     Keeping one hoof-hand at the back of your head, he pushes aside any obstructing clothes and brings his erect penis to your rear. He grinds it between your cheeks and you can feel the wet dribbles of his precum running down to your exposed pucker. 'Now, we only need one ram for this flock... but you're my slutty male ewe, aren't you?' he asks, grinding his glans against your asshole in preparation. Lost in the scent of the wool, you moan and do your best to nod while being held down. You find it easier to answer by pushing your rear back, getting his tip to push into you. Leon chuckles at this and rewards your eagerness by thrusting into you, pushing the first few inches into your needy bottom. 'Good girl.' And after a few thrusts, he sinks the rest of it into you with a lustful bleat.";
				WaitLineBreak;
				say "     As the ram ruts you, you moan and pant with growing arousal. Your heavy breathing draws in more of the hot, musky scent of sheep and sex impregnating the wool. It makes you both more aroused and more confused, losing track of yourself in a hazy bliss. 'Nnggg... yeah... you make a fine ewe... and you've got a big, strong ram to fuck you right here. No more need to roam and wander, my slutty lambchop.' His words sink into your woolly mind, eroding your waning resistance as the desire to stay with your flock grows.";
				say "     Leon moves his hands to your shoulders";
				if SkinName of Player is "Ram" or SkinName of Player is "Ewe":
					say ", gripping your soft wool";
				say " as he ruts you harder and faster. No longer held down, you're able to bring your head up";
				if FaceName of Player is "Ram" or FaceName of Player is "Ewe":
					say " to make soft baaing and bleating noises with each and every one of his thrusts. Your sheep cries turn him on all the more and he pounds you even harder, much to your delight";
				say ". The air is only slightly clearer though, the scent Leon's strong musk filling the room as he fucks you. It matters little though, at this point, you're lost in the joy of rut and want nothing more than to be another submissive member of his flock.";
				WaitLineBreak;
				say "     Between his bleating grunts as he pounds into you like the virile ram he is, he reinforces your own woolly thoughts with his words. 'Mmm... that's right, my needy ewe. Stop this defiance and just stay with your flock. It's where you belong. A weak male ewe like your needs a strong ram to protect and fuck him like a good girl. You nod eagerly and moan repeatedly that you're his needy ewe and for him to fuck you. Tightening his grip on you, he thrusts forward one last time with a loud bleat and cums hard. His balls unleash their heavy payload, sending thick ram semen into your bowels. You are filled with pleasure as he coats your insides with his fertile, dominant seed and cum yourself soon after. Your lesser seed spurts into the woolly pile beneath you, adding to the scents of the flock.";
				NPCSexAftermath Player receives "AssFuck" from Leon;
				decrease humanity of Player by 18;
				if ( BodyName of Player is "Ram" or BodyName of Player is "Ewe" ) and the player is pure:
					SanLoss 6;
				if "Strong Psyche" is listed in feats of Player, SanBoost 3;
				if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 3;
				if ( BodyName of Player is "Ram" or BodyName of Player is "Ewe" ) and the player is pure and humanity of Player < 10:
					now humanity of Player is 0;
					say "     After pulling out, the chuckling ram goes to swipe his sticky cock across your woolly ass, but you bleat that you want more. The smile on his white muzzle grows and he instead moves around to let your muzzle at his shaft. You engulf his cum-slick pole in your mouth, licking and sucking on it eagerly in your desire to prove your need to be with your studly ram. You can tell he's pleased with his eagerness as he rubs a hoof-hand through your wool as he caresses your head.";
					WaitLineBreak;
					say "     'Mmmm... I don't usually give my ewes this much... mmm... attention all at once. But for you, I'll make a special exception this once,' he says, starting to get hard again. 'But only if you'll promise to stop resisting and join your flock. Do that and I'll give you the thorough fucking you clearly need, my horny male ewe.'";
					say "     At this point, you're too lost in your lust to refuse and you moan lustfully about how you want him, promising to be his good slut and needy ewe if he'll only fuck you again. This is enough to get him fully hard and you bleat happily, rolling back over and raising your ass in the air. You press your muzzle into the luxurious wool and its lovely scent, your fluffy little tail raised and twitching. Clearly pleased with your submission and eagerness, he bounds atop you and buries his hard rod into you in one sharp thrust. Already hot and slick from the earlier rutting, he goes in easily, like he belongs there. And he does, your woolly mind tells you, for you are the flock's slutty male ewe. You bleat happily into the warm mound of wool, breathing in its heady scents of the sheep and sex. You lose yourself more and more in the bliss of submission and the soft embrace of the scents of your flock.";
					WaitLineBreak;
					say "     'That's right, my horny ewe. You can stop your roaming ways; you're part of my flock now,' the confident ram says as he pounds your ass. 'No more resisting it. No more need for defiance. Stay here and your big ram'll give you all the fucking you need.' You can only pant, baa and bleat as he fucks you completely senseless, the last fragments of your mind being worn away by the rut and smell of sheep and sex overwhelming you. Your ram is here. Your flock is here. There's no need to worry about leaving, or thinking, or anything other than being a good, submissive, male ewe for Leon.";
					say "     Having already gotten off recently, Leon has a lot of stamina, pounding you for a long, long time. Any attempt by your waning humanity to recover is disrupted by the steady rutting, ram musk, soft wool and sheep scents absorbing all your focus. These moments become weaker and less frequent until they stop altogether, not missed at all by your submissive sheep mind. By the time Leon's reached his second orgasm and pumps a fresh, full load of ram semen into your wanton ass, all that's left is the male ewe he desires you to be. His climax is just as powerful as the last, filling your bowels with his virile seed even as you moan and cum again from being filled by your ram.";
					WaitLineBreak;
					say "     When he's done and pulls out this time, you're too weak and worn to manage to ask for more. All you can manage is a baaing moan before passing out in the mound of scented wool, excess semen leaking from your overfilled ass. Confident that you're fully his now, he leaves you there to return to the store. It is some time later before one of the sheep comes to collect you, bringing you out to join the others in working the store like the loyal, loving ewe you are through and through.";
					wait for any key;
					end the story saying "You have joined Leon's flock as his special male ewe.";
					now battleground is "void";
					wait for any key;
					now skipturnblocker is 1;
					follow the turnpass rule;
					stop the action;
				else if humanity of Player <= 0:
					say "     After pulling out, the chuckling ram goes to swipe his sticky cock across your [if SkinName of Player is ram or SkinName of Player is ewe]woolly[else]well-used[end if] ass, but you [if FaceName of Player is ram or FaceName of Player is ewe]bleat[else]moan[end if] that you want more. The smile on his white muzzle grows and he instead moves around to let your [if FaceName of Player is ram or FaceName of Player is ewe]muzzle[else]mouth[end if] at his shaft. You engulf his cum-slick pole in your mouth, licking and sucking on it eagerly in your desire to prove your need to be with your studly ram. You can tell he's pleased with his eagerness as he rubs a hoof-hand [if FaceName of Player is ram or FaceName of Player is ewe]through your wool as he caresses your head[else]on the top of your head[end if].";
					WaitLineBreak;
					say "     'Mmmm... I don't usually give my ewes this much... mmm... attention all at once. But for you, I'll make a special exception this once,' he says, starting to get hard again. 'But only if you'll promise to stop resisting and join your flock. Do that and I'll give you the thorough fucking you clearly need, my horny male ewe.'";
					say "     At this point, you're too lost in your lust to refuse and you moan lustfully about how you want him, promising to be his good slut and needy ewe if he'll only fuck you again. This is enough to get him fully hard and you ";
					if HeadName of Player is "Ram" or HeadName of Player is "Ewe":
						say "bleat ";
					else:
						say "moan ";
					say "happily, rolling back over and raising your ass in the air. You press your [if FaceName of Player is ram or FaceName of Player is ewe]muzzle[else]face[end if] into the luxurious wool and its lovely scent[if TailName of Player is ram or TailName of Player is ewe], your fluffy little tail raised and twitching[else], your already creamy bottom ready and waiting[end if]. Clearly pleased with your submission and eagerness, he bounds atop you and buries his hard rod into you in one sharp thrust. Already hot and slick from the earlier rutting, he goes in easily, like he belongs there. And he does, your woolly mind tells you, for you are the flock's slutty male ewe. You bleat happily into the warm mound of wool, breathing in its heady scents of the sheep and sex. You lose yourself more and more in the bliss of submission and the soft embrace of the scents of your flock.";
					WaitLineBreak;
					say "     'That's right, my horny ewe. You can stop your roaming ways; you're part of my flock now,' the confident ram says as he pounds your ass. 'No more resisting it. No more need for defiance. Stay here and your big ram'll give you all the fucking you need.' You can only pant, baa and bleat as he fucks you completely senseless, the last fragments of your mind being worn away by the rut and smell of sheep and sex overwhelming you. Your ram is here. Your flock is here. There's no need to worry about leaving, or thinking, or anything other than being a good, submissive, male ewe for Leon.";
					say "     Having already gotten off recently, Leon has a lot of stamina, pounding you for a long, long time. Any attempt by your waning humanity to recover is disrupted by the steady rutting, ram musk, soft wool and sheep scents absorbing all your focus. These moments become weaker and less frequent until they stop altogether, not missed at all by your submissive sheep mind. By the time Leon's reached his second orgasm and pumps a fresh, full load of ram semen into your wanton ass, all that's left is the male ewe he desires you to be. His climax is just as powerful as the last, filling your bowels with his virile seed even as you moan and cum again from being filled by your ram.";
					WaitLineBreak;
					say "     When he's done and pulls out this time, you're too weak and worn to manage to ask for more. All you can manage is a baaing moan before passing out in the mound of scented wool, excess semen leaking from your overfilled ass. Confident that you're fully his now, he leaves you there to return to the store. Left surrounded in the cum-stained wool and filled with infected semen, your body changes, completely becoming the flock's male ewe in body as well as mind. It is some time later before one of the sheep comes to collect you, bringing you out to join the others in working the store like the loyal, loving ewe you are through and through.";
					if FemaleList is not banned and "Male Preferred" is not listed in feats of Player:
						setmonster "Ewe" silently;
						turn the Player into an "Ewe" silently;
					else:
						setmonster "Ram" silently;
						turn the Player into a "Ram" silently;
					now Stamina of Leon is 1;
					wait for any key;
					end the story saying "You have joined Leon's flock as his special male ewe.";
					now battleground is "void";
					wait for any key;
					now skipturnblocker is 1;
					follow the turnpass rule;
					stop the action;
				else:
					say "     After pulling out, the chuckling ram swipes his sticky cock across your ";
					if SkinName of Player is "Ram" or SkinName of Player is "Ewe":
						say "woolly ";
					say "ass, leaving fresh smears of his musky semen across your cheeks. Between the heavy dose of it you ended up breathing in and scent of rut clinging to you, you are left in a lustful daze of submissive urges long after he's left you alone in the room. Even once you start to regain your senses, it takes considerable effort to force yourself up and out of the room so you can clear your head before you give in completely.";
					if FemaleList is not banned and "Male Preferred" is not listed in feats of Player:
						infect "Ewe";
					else:
						infect "Ram";
			increase Lust of Leon by 1;
		if FemaleList is not banned and "Male Preferred" is not listed in feats of Player:
			infect "Ewe";
		else:
			infect "Ram";

to say LeonSpanking:
	say "     Leon follows you into the back room, which is filled with mounds of fragrant wool, and in the center of the room is a single chair that you haven't seen in here before. You expect the dominant ram to grab you, claiming your body for his own, however the assault never comes. Instead, Leon simply walks past you, taking a seat in the chair and looks directly into your eyes. Your first instinct is to bow your head in submission in front of the powerful master of the flock. A harsh bleat echoes through the room, startling you and drawing your attention back to the male in front of you. His earlier somewhat relaxed expression has changed to one of annoyance. 'While I'm happy that you know your place is to submit to me, I have other plans for you today.'";
	say "     You aren't sure what to make of this turn of events. The normally aggressive ram usually doesn't even give you a moment to fully register the sensations that he inflicts upon your body. Your mind instantly begins to pull up images of the pain and pleasure that the dominant male has inflicted on you in the past, the sickly sweet feeling of being controlled and owned. You can feel your blood rushing to the surface with the knowledge that those same feelings are so close to coming to fruition again. 'While it's nice to know that I can have this kinda effect on you without even touching you, I need you to focus on me, my slutty little ewe.' Instantly, a wave of embarrassment rushes over you. Here, the master of the flock is being so patient with you, and you aren't even giving him the appreciation that he deserves.";
	WaitLineBreak;
	say "     Quickly rushing forward, you drop to your knees and wrap your arms around one of his thick, powerful thighs. You aren't sure what to say to apologize for your rudeness, instead choosing to rub your face fully into Leon's musky wool, taking in his scent and feeling the power behind the intoxicating aroma. Without warning, your head is pulled back, forcing you to gaze up into the ram's eyes. 'This isn't about a punishment. This is about you listening to what I have to say and doing your best to obey, understand!?' The hooves on each of his fingertips scrape against your head is soothing, almost feeling like a massage for your scalp. You nod in agreement to what Leon is asking, all while you attempt to keep your eyes open during his ministrations.";
	say "     'I've been thinking about you a lot lately, how you came to join the flock and what that really means. You've been braving the city, even went out of your way to find Mary for us and eventually decided to become a member of my flock... albeit a more roguish one than what I would personally prefer.' Your head dips in shame at the knowledge that you have displeased your master, but you are startled a bit by the bleating laughter that booms from the ram's chest. 'Don't get that look on your face. I actually sort of like the fact that you go out into the city. It shows just how badass my flock is, haha. Anyway, the whole point of this talk of ours is to discuss a [']reward[']!' A smile spreads across Leon's muzzle. While still ruggedly handsome, it also has a hint of something dangerous that just makes your heart beat just a bit faster.";
	WaitLineBreak; [in the future this will lead to a choice point, however the choice point will only appear if you have the wool to actually be shaved.]
	say "     'So, now let's figure out what kind of reward I wanna offer you.' The ram raises his hoof-hand up and lazily scratches his small beard in thought. 'I was gonna give you a choice in the matter. It was between a nice and slow spanking suitable for someone being such a good [boygirl], or a nice relaxing shave, but I'm not really feeling a shave at the moment. So it looks like your ass is gonna get some [']affection['] today, haha.' A blush quickly spreads across your cheeks at the master's implication, and you can't help the [if player is female]wetness that you can already feel dripping down your thighs. [else if player is herm]wetness that you can already feel dripping down your thighs, along with the hardening of your shaft. [else if player is male]tingle that starts at the base of your cock as it begins to harden. [else]desire that is welling up from within you. [end if]The thought of what your master has in store for you is already enough to put you on edge, as a jittery energy starts to flood through your body.";
	say "     'Well, what are waiting for? Just because this is your reward doesn't mean that [']I['] should have to be the one to lay ya across my lap, now does it?' You quickly shake your head and rush to get up off your knees. This causes you to get up far too fast and unfortunately lose your balance. Thankfully, before you can injure yourself however, a powerful hand reaches out and stops you from colliding with the ground. Without pause, you are pulled up and over Leon's lap as if you weigh nothing. 'It amazes me that you haven't managed to get turned into someone's slut by one of those monsters out there, seeing how clumsy you can be!' While the ram's voice sounds mildly irritated, you can't help but notice the slight upturn to the sides of his mouth. It could be that he just enjoys proving how much you need him, or... maybe he's simply starting to like some of the odd quirks that just make up who you are.";
	WaitLineBreak;
	say "     That last thought causes a happy and content feeling to spread from your chest out to the rest of your extremities, however while lost in thought, you are startled by the feeling of Leon's hoof-tipped fingers slowly being dragged down your back. While relaxing, there is still a hint of pain with each caress, causing your back to arch slightly in response. You can't decide whether you wanna beg to be spanked right away, or if you simply want him to continue. Suddenly your body is jolted forward, a breathy ";
	if HeadName of Player is "Ram" or HeadName of Player is "Ewe":
		say "bleat ";
	else:
		say "moan ";
	say "escaping your lips as the pain from your ass quickly dissipates into a throbbing ache. 'You looked way too relaxed, and I just wanted to make sure that ya didn't think about passing out on me, haha!' Leon sounds pleased with himself and in all honesty, part of you loved being surprised by the quick yet firm swat to your backside.";
	say "     It's rare to see the master of the flock in such a playful mood, and apparently, it's contagious as a soft chuckle escapes from your mouth. 'Now, why don't you just lay back and let your master take care of you, my pretty little [if player is female]ewe. [else]male-ewe. [end if]I promise that you're gonna enjoy this reward.' His final words come out in a baritone whisper. The combination of his rough fingertips and the throbbing heat on your ass have you arching your back. Taking in the heavy scent of the room makes you start to feel lightheaded, and your senses feel like they are in overdrive. 'Mmmm, that's a good little slut. You definitely know how to please your master, don't you?'";
	WaitLineBreak;
	say "     Fighting to get yourself under control, your eyes finally snap open, and you realize that while you were enjoying being petted, you had been writhing on Leon's lap. You feel your cheeks begin to flush with heat and immediately stop moving your body, however it seems that the ram has other plans, and he roughly grabs your body, holding you tightly against himself. 'Now, why would you wanna stop doing something that pleases me? This may be a treat for you, but that doesn't mean you shouldn't be giving me one in return now, does it?' Quickly, you nod your head in agreement, and while still slightly embarrassed, you begin to gyrate your body against the wool of your master. Closing your eyes in an attempt to calm down, you slowly start to lose yourself once again to your instincts.";
	say "     A grunt from your master is the only warning that you receive, before a hard swat to your ass forces your body to go rigid, and a ";
	if HeadName of Player is "Ram" or HeadName of Player is "Ewe":
		say "bleating shriek ";
	else:
		say "squeal ";
	say "is ripped from your lungs. You can feel Leon's deep chuckle reverberate through his chest, and it excites you, knowing that the reactions of your body are making the master of the flock happy. You allow your hands to squeeze the thick thigh of the ram, enjoying the powerful muscles that you find inside his fluffy wool. He continues giving you your reward for quite awhile, each smack forcing your [if player is female]clit to rub [else if player is male]erection to grind [else]sensitive bundle of nerves to grind [end if]against the ram's leg, pushing you closer to orgasm.";
	WaitLineBreak;
	say "     Before you're able to find sweet release however, Leon roughly grabs ahold of your body, forcing you to straddle his lap and look him directly in the eye. 'So are you enjoying your [']reward['], my slutty little [if player is female]ewe[else]male-ewe[end if]?' The ram's large hoof-like hands slowly begin to knead your hips and ass, causing a breathy moan to escape your lips, and instinctively, your thighs spread further apart. 'Such a good [boygirl]. I bet what you truly desire is to end our little game and receive the mark just like all your sisters, isn't that right, baby?'";
	say "     You almost stumble in your attempts to quickly give the ram exactly what he wants. A bleating laugh forces your face to heat up with embarrassment, and your eyes slowly turn towards Leon. 'No need to be shy, slut. I find it adorable that you are so eager to please your master, but perhaps you should just let me put you where I want you!' While his voice sounds jovial, there is an intenseness behind it that lets you know that this isn't a request. Without waiting for a response, your body is picked up as if it were nothing and laid back across the ram's lap. As you lay there and wait for your [']reward['] to continue, you're caught off guard by the sheer force of the smack to your backside, and your whole body is thrust forward when it finally arrives.";
	WaitLineBreak;
	say "     Before you can even recover from the rough attack to your backside, another is already connecting. The ram releases a dark laugh as he keeps up the speed and force of each impact, almost as if he's working out, but instead of using weights, he's using your ass. Feeling your butt begin to heat up from the savage treatment, you attempt to say something, however with each smack, the wind gets stolen from your lungs and only a ";
	if HeadName of Player is "Ram" or HeadName of Player is "Ewe":
		say "bleating shriek ";
	else:
		say "squeal ";
	say "escapes your lips. Tears start to run down your cheeks, whether from the pain or simply from being thankful of the treatment that Leon is pushing onto you, you're not sure.";
	say "     Finally, the spankings stop, and a feeling of calm settles within the room. Your body is exhausted after what it has been put through, and even though your [if player is female]pussy is still trembling with desire, [else if player is herm]cock and pussy are both still throbbing, [else if player is male]cock is still hard and leaking, [else]sensitive mound of nerve endings are pulsating, [end if]you can't even bring yourself to care at the moment. Your body is gathered up by the ram quickly, but with care and laid down on one of the piles of aromatic wool. The smell mixed with the softness is enough to force a breathy moan to escape you. Slowly coming back to yourself, you can make out panting from behind your body, and you realize that you've been placed face down in the wool with your backside sticking up in the air.";
	WaitLineBreak;
	say "     'That's right, you little [if player is female]ewe[else]male-ewe[end if] whore, present that tight [if player is female]pussy[else]ass[end if] for your master! The only true reward that you need is to serve me, isn't that right, slut!?' With those final words, you feel hot liquid begin to paint stripes over your backside, and the same scent of the wool begins to intensify. Realizing that Leon is shooting his load all over your abused ass, you can't help but also notice that the cum is also having a soothing effect on the inflamed flesh there. Your mind is going into overload with the mixture of pain, pleasure, and the scent of the flock, and you lose yourself to the need between your legs. While your scream is muffled by the wool, you feel your [if player is female]pussy contract and femcum squirt out. [else if player is herm]cock and pussy both begin to throb before a mixture of cum and femcum begin to squirt out. [else if player is male]cock throb and start shooting cum everywhere. [else]sensitive mound pulsates, sending you into a dry cum.[end if]";
	say "     Laying there, you attempt to recover from the intense orgasm that the head of the flock put you through. 'I feel much better, my little [if player is female]ewe[else]male-ewe[end if]. So, did you enjoy your reward?' Too tired to really move that much, you simply shake your ass slightly side to side in answer. 'I thought that you would, haha. And since I was happy with how well you took to my own style of affection, I think that I will be rewarding you more in the future, but only if you stay a good [boygirl]!' With that, he stops talking, and you hear a door shut. Leon must have left. After what your body went through, you're too tired to get up, and you simply close your eyes and take a nap to recover, the whole time your ass still in the air, covered by your master's cum.";

Leon ends here.
