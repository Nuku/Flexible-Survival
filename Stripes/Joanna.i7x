Version 4 of Joanna by Stripes begins here.
[Version 4 - Pre-plant Joanna content]

"Adds a Kinkajou-Plant NPC named Joanna to the Flexible Survival game"

Section 1 - Event

Overrun Garden is a situation. The level of Overrun Garden is 10.
The sarea of Overrun Garden is "High".
joannafight is a number that varies.
when play begins:
	add Overrun Garden to badspots of hermaphrodite;
	add Overrun Garden to badspots of girl;

Instead of resolving a Overrun Garden:
	if hp of Joanna is 0:
		say "     In a courtyard between a cluster of office buildings, you spot a small garden park. It seems the plant-life has overrun the garden, with oversized flowers and numerous vines. You are about the head that way to give it a closer look when you spot some motion at the edge of the park. Stepping into the park from between two buildings comes a slender, female creature. She has short brown fur, long brown hair and a very long tail. At first you think her perhaps some kind of monkey, but change your mind as you watch her further. After struggling to recall the animal's name, it comes to you. A kinkajou, a South American creature that feeds on honey and nectar. Sounds safe enough. And she still has some clothes on, so she could even be a survivor, though it's hard to tell at the moment.";
	else:
		say "     In a courtyard between a cluster of office buildings, you spot a small garden park. It seems the plant-life has overrun the garden, with oversized flowers and numerous vines. You are about the head that way to give it a closer look when you spot some motion at the edge of the park. Stepping into the park from between two buildings comes a slender, female creature. She has short brown fur, long brown hair and a very long tail. You recognize her to be Joanna, the girl from the club.";
	Waitlinebreak;
	say "     You spot some motion in the branches near her as she starts climbing up to get at the flowers for their nectar. Realizing too late that it is the branches themselves which moved, you call out to her in warning. Vines lash out and grab the kinkajou woman, coiling around her and restraining her with ease[if plantdefeat > 0]. This plant creature seems related to the one that put its seed in you, but much larger and stronger. The seed in your belly starts to stir as well so you'd best be careful[otherwise]. This plant creature seems quite extensive and very strong[end if]. Its tendrils grab at her clothes and pull them apart as if they were paper.";
	Waitlinebreak;
	say "     [if hp of Joanna >= 90]Joanna[otherwise]The kinkajou[end if] is held spread-eagle, restrained by the powerful plant and several bulbous fruits shaped like cocks are moved into position. As she screams, one is pushed into her muzzle, stifling the cries which soon turn into moans. Another pair of tentacles move to her hips, one spreading her pussy open and the other driving into her ass. As you watch, the tentacles pump into her restrained body, which not can't help but writhe in pleasure from whatever fluids it's pumping into her.";
	Waitlinebreak;
	say "     Beyond just arousing her, the fluids start to transform her, turning her fur green and her darker face to a bright red like the plant's flowers. The powerful plant and the large volumes of corrupting fluids work to change her quickly, altering her further. As a second and third pussy form between her legs, they are quickly filled with the tentacles as well, adding to her sounds of pleasure. As her three pussies are being filled, a large cock forms, which then splits and grows out into four spurting tentacle cocks with a pair swollen bulbs for balls beneath. More tendrils, as if knowing this change has been induced, move in and engulf them in sucking crimson flowers.";
	Waitlinebreak;
	say "     You find yourself growing aroused by the strange assault you're witnessing, too fascinated to consider trying to stop it. That is, until you see the tentacles pulling [if hp of Joanna >= 90]Joanna[otherwise]her[end if] towards a large, vaginal flower. The flower is more than large enough to engulf her entirely, and by the way the little tendrils inside it are waving around in anticipation, that's clearly what is planned. Too lost in the lustful pleasures of the plant's assault on her changing body and numerous genitalia, the transforming woman is unaware of the peril she is being drawn towards. If you're going to do anything to help her, it must be now before she's engulfed in the flower.";
	say "     [bold type] Shall you charge to her rescue or wait to watch how it ends?[roman type][line break]";	
	line break;
	say "     ([link]Y[as]y[end link]) - Charge to the rescue.";
	say "     ([link]N[as]n[end link]) - Wait to watch how it ends.";
	if player consents:
		line break;
		say "     Wanting to save [if hp of Joanna >= 90]Joanna[otherwise]the poor woman[end if], you charge in with a scream, hoping to pull her free of the tentacles before it's too late. Noticing your charge, she takes in her situation and starts trying to struggle, but can do little. As you begin pulling vines from her, she's able to resist more and manages to pull out the cock-shaped fruits from her pussies with a loud orgasm each time. Angered by your interference with its prey, plant tentacles move in to strike you[if plantdefeat > 0] even as your own seed stirs anew[end if].";
		line break;
		now joannafight is 3;
		challenge "Parasitic Plant";
		if joannafight is 1:
			say "     Your struggle with the plant is quite difficult, but you persist, tearing roots and smashing flowers as you struggle to get reach the main body of the plant. During your fight, [if hp of Joanna >= 90]Joanna[otherwise]the kinkajou[end if] is able to break free because you've destroyed enough of the vines and she makes a break for it. For a moment, you think she's left you all alone, but you hear a small engine choking to start. Looking away from the large, torn bags of fertilizer at the plant's base as you make it there, you spot her coming out of a small gardening shed wielding a gas powered hedge trimmer with a wild look in her eyes. You tackle the vines, holding them taut as she slashes through them, splattering their green juices out. She slashes at the plant's base, slowly cutting through it as you keep the last of the vines off her until it's sawed clean through and you both collapse, panting for breath after your life or death fight.";
			Waitlinebreak;
			move Joanna to Flower Garden;
			move the player to Flower Garden;
			now Flower Garden is known;
			say "     After a short rest, [if hp of Joanna >= 90]Joanna[otherwise]she[end if] rolls over beside you and hugs you tightly, then kisses you softly on the cheek. 'Oh, thanks for coming to save me. I... that plant... plant?' she starts upright, noticing her changes. The plant's assault on her has left her partially a plant, with green fur over her body and her feet growing tendrils and roots. Her large eyes, like her face and the flowers blossoming in her hair, are a vibrant red, beautifully contrasting with her verdant fur. There is a little green around her eyes, much like eye shadow. Her groin, as you saw earlier, has quite dramatically changed, now having a quartet of long cock tendrils with a swollen pair of bulbs for balls. Beneath those, she has a trio of slick pussies shaped like lovely orchids[if daytimer is day]. She stretches her arms wide and sighs in pleasure, taking in the sunlight, turning slowly as her roots automatically dig into the soft soil and have to be pulled out with each step[end if].";
			Waitlinebreak;
			say "     'And I was just getting used to being a kinkajou,' she says with a soft giggle, walking slowly around the garden, smelling the large flowers and diving her tongue into them to enjoy their nectar. 'Mmm... this looks like a lovely garden. The perfect place for a lovely flower like me, don't you think?' she asks with a grin. '[if hp of Joanna >= 90]Be sure to tell Harold and the others at the Palomino that I'm okay[otherwise]My name is Joanna[end if]. You're welcome to visit here again whenever you like, my brave hero,' she adds, running a green finger slowly down your chest and smiling as she sensually runs her foot-long tongue across your neck.";
			now hp of Joanna is 1;
			now lust of Joanna is 0;
			now battleground is "void";		[blocks a post-event fight]
		else if joannafight is 2:
			say "[losejoannafight]";
		else:
			say "     Having had enough, you manage to pull free of the plant, breaking the vine and escaping, leaving [if hp of Joanna >= 90]Joanna[otherwise]the girl[end if] screaming as she's pulled into the large flower. She struggles for a time, but the plant subdues her and encloses her in the rather vaginal flower. You are quite certain there'll be nothing left of her but another of these parasitic plants to set root nearby. Well, at least you tried to help.";
			now hp of Joanna is 0;
	else:
		line break;
		say "     Deciding not to risk it, you are drawn to continue watching. As she's pulled closer, you watch [if hp of Joanna >= 90]Joanna[otherwise]her[end if] arch her back in climax as the plant creature cums inside her, pumping her full of fluids from all directions. Her belly swells up as more of the sticky white sap is sprayed onto her body while her freshly made balls drain their cum to feed the hungry flowers milking at her new cocks. As she's lowered into the flower, she only starts to realize what's happening as the large tentacles withdraw, but by then, the smaller tendrils are all around her, holding her bloated body inside the flower as it starts closing around her. She tries to hold the petals open, but her strength wanes quickly and soon she's tightly enclosed. There is a brief struggle, then the big flower is still and the tentacles, fruits and flowers move back into their positions, waiting to lure in their next victim. You are quite certain there'll be nothing left of [if hp of Joanna >= 90]Joanna[otherwise]the girl[end if] but another of these parasitic plants to set root nearby. You move on, ";
		if "Kinky" is listed in feats of player:
			say "your kinky urges pleased and greatly aroused by the scene you just witnessed.";
			increase morale of player by 3;
			increase libido of player by 25;
			if hp of Joanna >= 90, decrease humanity of player by 10;
		else:
			say "strangely disturbed and yet aroused by the scene you just witnessed.";
			increase libido of player by 10;
			if hp of Joanna >= 90, decrease humanity of player by 10;
		if libido of player > 100, now libido of player is 100;
		now hp of Joanna is 0;		[resets Joanna]
	now joannaharoldtalk is 1;
	now joannafight is 0;
	now Overrun Garden is resolved;

to say losejoannafight:
	say "     Held by the steely vines, you can feel them probing at your body. When the vine in your [if cunts of player > 0]cunt[otherwise]ass[end if] throbs painfully large, you cry out in a mix of pain and pleasure. Your open mouth is quickly filled by one of the bulbous fruits and sticky sap flows into your mouth[if cunts of player is 0]. Another finds its way into your ass, spreading you open wide[end if]. It is sticky and sweet and makes you more passive[if cunts of player > 1]. Having more cunts to fill, more vines and bulbous fruits push into you, making you moan in delight[end if]. All your available holes are filled with pumping, thrusting, leaking tendrils that stuff you over and over again. They start pulling you towards one of the large, vaginal flowers. The slender, white tendrils rise up and start waving around, as if in anticipation, but you no longer care about what's coming, too lost in the drugged pleasure as your belly[if cunts of player > 0] and womb[end if] swells with the plant's sweet sap.";
	say "     Some motion beside you draws your eyes to the transforming kinkajou woman as the flower is closing around her swollen body. She still tries to struggle a little, foolishly pushing against the closing petals. Why would anyone want to stop this?  It just feels so wonderful. Released into the flower, the white tendrils wrap around you and slide all over your body. These are lovely caresses as you start to drift off to sleep while the plant's nectar flows over you and more tendrils slip into your body from every orifice, bonding with you. You cum repeatedly through this experience, even as you're passing out.";
	[puts Parasitic Plant as lead monster for infection]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Parasitic Plant":
			now monster is y;
			break;
	now tailname of player is "Parasitic Plant";
	now facename of player is "Parasitic Plant";
	now skinname of player is "Parasitic Plant";
	now bodyname of player is "Parasitic Plant";
	now cockname of player is "Parasitic Plant";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
		follow the sex change rule;
	now humanity of player is 0;
	now libido of player is 100;
	now thirst of player is 0;
	now hunger of player is 0;
	end the game saying "You were consumed by the giant parasitic plant.";
	now battleground is "void";		[blocks a post-event fight]
	now vinetrapped is 2;
	wait for any key;
	follow the turnpass rule;
	stop the action;


Section 2 - Flower Garden

Flower Garden is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Flower Garden is "     Joanna's garden is lush and beautiful, thriving with large and fragrant flowers under her care. Having cleared away the remains of the monstrous plant, she's taken its place at the center of the garden. She uproots herself from time to time to walk around and tend to her flowers. There is a stone path to walk that weaves through the various beds and bushes.".
lastflowersmell is a number that varies. lastflowersmell is normally 555.
Skyscrapers2 is a door. "Leaving here to the east heads back into the High Rise District.".
Skyscrapers2 is west of Financial Sector and east of Flower Garden. It is dangerous.
the marea of Skyscrapers2 is "High".

the scent of Flower Garden is "[flowergardenscent]".

to say flowergardenscent:
	say "The flower garden smells wonderful, with an array of beautiful fragrances in the air, much nicer than the smell of the city surrounding it";
	if morale of player < level of player and lastflowersmell - turns < 8:
		say ".";
	else:
		say ". Stopping to smell the roses cheers you up a little.";
		increase morale of player by 5;
		increase libido of player by 5;
		if libido of player > 100, now libido of player is 100;
		now lastflowersmell is turns;


Section 3 - Joanna the Kinkajou-Plant

Joanna is a woman. Joanna is in Flower Garden.
The description of Joanna is "[joannadesc]".
The conversation of Joanna is { "Sunshine!" }.
lastjoannajuice is a number that varies. lastjoannajuice is normally 555.
joannatalk is a number that varies.
joannaoffernum is a number that varies.

the scent of the Joanna is "[joannascent]".

to say joannascent:
	if hp of Joanna is not 0 and hp of Joanna < 90:
		say "Moving up close to her, you stroke Joanna's hair and bring one of the blossoms to your nose. It has a lovely fragrance, uniquely lovely and perhaps the best flower you've ever smelled";
		if morale of player > level of player or lastflowersmell - turns < 6:
			say ".";
		else:
			say ". Stopping to smell the roses cheers you up a little.";
			increase morale of player by 5;
			increase libido of player by 5;
			if libido of player > 100, now libido of player is 100;
			now lastflowersmell is turns;
	else:				[Joanna at Palomino]
		say "Joanna smells faintly of sweat from dancing, though there's hint of flowers beneath that.";

to say joannadesc:
	if hp of Joanna is not 0 and hp of Joanna < 90:
		say "     Joanna is a plant-like kinkajou and is a little over five and a half feet tall. Her fur has become green and her feet end in roots and tendrils that wriggle in the soft soil. Her face fur and large, expressive eyes have become a vibrant red, a beautiful contrast to her verdant body. Her long hair remains and is green now as well and has lovely red flowers growing amongst it. Her slender tail is quite long, nearly as long as she is tall. As a plant, she remains nude to bask in the sun's light, wearing naught but a sun hat on the hottest of days. Her breasts are shapely globes and there are soft petals ringing her nipples[if hp of Joanna >= 5]. She certainly seems healthier, with lusher green hair with larger blossoms in it. Her breasts seems to have grown a bit as well[end if]. At her groin, she has a quartet of cock tendrils and a trio of wet, flowery cunts beneath them.";
		say "     Also known as a honey bear, kinkajous are normally small creatures who live in the South American rainforest and live off honey and the nectar of flowers using their long tongues. Something between ferret and monkey in appearance, these are cute and peaceful creatures. Having become a plant herself, Joanna has made her home in this garden and enjoys the peaceful life of being a flower in her own garden and a kinkajou surrounded by lovely and fragrant flowers, dripping with nectar.";
	else:				[Joanna at Palomino]
		say "     Joanna is kinkajou woman with short, brown fur and long, brown hair. She's about five and a half feet tall and dressed in a loose, green shirt and black denim shorts. Looking something like a cross between a monkey and a ferret, she has a slender build, nimble paws and a tail nearly as long as she is tall. Her face has a cute smile on her short muzzle along with large, expressive eyes and round ears. The fur on her face is a darker, chestnut brown. She is dancing energetically among the crowd at the club, enjoying the nightlife.";


Instead of conversing the Joanna:
	[Joanna at Palomino]
	if hp of Joanna is 0:
		say "     Curious about the unusual looking creature on the dance floor, you try to move up to talk to her, but she's too into her dancing and it's too crowded around her to get close. She gives you a little smile, but keeps on going. Moving back off the dance floor, you decide to ask Tristian about her. 'Who?  Oh, her,' he says with disinterest. 'Her name's J-something. Jackie?  Joannie?  Jolie?' he adds, trying to remember. 'Been around here most nights. Not my type though. Too much up here,' he says, cupping non-existent breasts. 'And not down here,' he finishes, grabbing his crotch.";
		say "     Harold, who was passing by with a case of beer under one arm, gives the horse a light smack on the back of the head. 'Her name's Joanna and she's a sweet girl. A little too plain-Jane for me, but nice enough. Only orders straight fruit juice, never any of the hard stuff,' he explains as he talks with you while restocking the bar. 'We've chatted a bit at the bar. She's a kinkajou, so she's nocturnal and only comes out here to dance at night. Gets too sleepy during the day to do much. She's here most nights, so you should be able to talk to her sometime. I'll introduce you.";
		now hp of Joanna is 91;
	else if hp of Joanna is 90:
		say "     Spotting Joanna among the dancers, you move out onto the floor to join her. She smiles to you as you wave, but then recognizes you and moves over to dance with you. 'I'm glad you decided to stop by,' she says, struggling to be heard over the music. Once the song's done, she moves off the dance floor with you to chat by the bar for a bit. She smiles to Harold and says hello to him as well, the two clearly having chatted before. He sets out a juice drink for her without her asking and she tells him that you were the guy who helped her with her dog problem. The three of you chat for a bit. While talking, her surprisingly long tongue slides from her muzzle, diving into the glass to lap up the juice. From the grin on her face, she's clearly doing it to show off.";
		say "     'I'm not really sure how I ended up this way. I went to bed and didn't wake up until the next evening. By that point, I looked like this. So I'm a kinkajou now, and since they're nocturnal, all I want to do is sleep during the day. They eat mostly nectar and honey, so it's fruit juice and flowers for me,' she says with a cute giggle. 'Just the plain stuff, though. No liquor and certainly none of Harold's crazy mixes.' The bartender just smiles at that, clearly okay with her teasing. 'But it's nice this place is open. It's a fun, safe place for me to go at night.'";
		say "     The three of you chat for a while until a song change occurs and Joanna gets up. 'Oh, I love this song. Catch you later, hon,' she says with a wave before dashing back into the crowd to dance.";
		now hp of Joanna is 92;
	else if hp of Joanna is 91:
		say "     Spotting Joanna over at the bar with Harold, you go over to join them. The unicorn smiles and introduces you to her and she welcomes you with a smile. The three of you chat for while, the bartender getting you two acquainted before sliding her another fruit juice drink and moving off to deal with other patrons for a bit. While talking, her surprisingly long tongue slides from her muzzle, diving into the glass to lap up the juice. From the grin on her face, she's clearly doing it to show off.";
		say "     'I'm not really sure how I ended up this way. I went to bed and didn't wake up until the next evening. By that point, I looked like this. So I'm a kinkajou now, and since they're nocturnal, all I want to do is sleep during the day. They eat mostly nectar and honey, so it's fruit juice and flowers for me,' she says with a cute giggle. 'Just the plain stuff, though. No liquor and certainly none of Harold's crazy mixes.' The bartender just smiles at that, clearly okay with her teasing. 'But it's nice this place is open. It's a fun, safe place for me to go at night.'";
		say "     The three of you chat for a while until a song change occurs and Joanna gets up. 'Oh, I love this song. Catch you later, hon,' she says with a wave before dashing back into the crowd to dance.";
		now hp of Joanna is 92;
	else if hp of Joanna is 92:
		say "     [one of]'It's kind of odd being a fuzzy, little animal, but I kind of like it,' she says with a smile.[or]'I'm here most of the time at night, though sometimes I'll go around and look for flower gardens. Nectar is just so delicious,' she says, running her foot-long tongue across her muzzle as she thinks about tasting them.[or]'We should dance for a bit,' she says, enjoying the music.[or]You try to move over to Joanna, but the crowd on the dance floor is too thick.[or]Joanna smiles and waves to you, but keeps on dancing.[at random]";
	[Joanna at her garden]
	else if joannatalk is 0:
		say "     Joanna [if daytimer is day]turns away from stretching herself to the sun to smile at you[otherwise]stretches, a little sluggish at night and turns to smile at you[end if]. 'That was quite the little adventure we had, wasn't it?  I had just been getting used to being a kinkajou and spent a lot of my time at night scurrying around or dancing at that club. Now I've got to switch my schedule around again,' she says with a soft chuckle, trying to put a brave face on what is a very dramatic change. 'At least a plant's calendar's pretty simple: get some sunshine. Should be easy enough to handle,' she adds, smiling weakly.";
		say "     She steps over to one of the nearby plants and strokes its enlarged flowers, almost sensually so. Cupping it in her paw gently, she brings it to her lips and dives her long tongue inside, lapping up the nectar with a soft sigh of satisfaction. 'This is such a lovely garden. These giant flowers are very beautiful, and so delicious. Now that the big parasite is gone, it should be much more peaceful and grow even more lovely.' She heads over to its remains, giving the remaining roots a few angry stabs with a spade before working in some of the fertilizer from the torn bags and getting you to put the rest away for now. With her new spot prepared at the center of the garden, she digs her feet into it with a little trepidation, but sighs softly in delight as her roots dig into the rich earth.";
		increase joannatalk by 1;
	else if hp of joanna is 1:
		say "     [one of]'I should be safe enough here. The trimmer should scare off anyone who comes looking for trouble,' she says, patting the gas-powered tool.[or]'Don't you love my beautiful garden?'[or]'It's... really strange being a plant,' she says, running her paws over her altered body.[or]'You should remember to take a moment to smell my lovely flowers,' she says. While she probably means her garden, there's the possibility she could mean her own flowers as well.[or]'I'm glad you stopped by.'[or]'Thanks for the help. I don't think there'd have been anything left of me if you hadn't come to my rescue.'[or]'I have so many beautiful flowers to tend to in my new garden.'[or]'I think I like these ones best,' she says, walking over to one flowering bush. She brings one of the large, vaginal flowers to her muzzle and dives her long, red tongue into it, licking slowly as she grins at you.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, spreading her arms to take in the light[otherwise]'Oh, I get so sleepy when the sun's down. I can hardly wait for morning,' she says[end if].[or]'Be sure to come back and visit my garden again.'[or]Joanna tills the soil, mixing in some more fertilizer from the shed before setting down her roots with a soft sigh of satisfaction.[or]'I guess there won't be any all-night dancing anymore at the Palomino,' she says, motioning to her root-like feet digging into the soil.[or]'Be sure to let my friends at the Palomino know that I'm okay. The bartender was kind of nice to me.'[or]'I'm still kinkajou enough to want to be active at night, but I just don't have the energy. It's a little confusing,' she confesses.[at random]";
	else if hp of joanna is 2:
		say "     [one of]'I should be safe enough here. The trimmer should scare off anyone who comes looking for trouble,' she says, patting the gas-powered tool.[or]'Don't you love my beautiful garden?'[or]'I'm starting to like the new me,' she says, running her paws over her verdant body.[or]'You should remember to take a moment to smell my lovely flowers,' she says. While she probably means her garden, there's the possibility she could mean her own flowers as well.[or]'Life is so peaceful here.'[or]'I'm glad you stopped by.'[or]'Thanks for the help. I don't think there'd have been anything left of me if you hadn't come to my rescue.'[or]'I have so many beautiful flowers to tend to in my garden.'[or]'I think I like these ones best,' she says, walking over to one flowering bush. She brings one of the large, vaginal flowers to her muzzle and dives her long, red tongue into it, licking slowly as she grins at you.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, spreading her arms to take in the light[otherwise]'Oh, I get so sleepy when the sun's down. I can hardly wait for morning,' she says[end if].[or]'Be sure to come back and visit my garden again.'[or]Joanna tills the soil, mixing in some more fertilizer from the shed before setting down her roots with a soft sigh of satisfaction.[or]'I'm still kinkajou enough to want to be active at night, but I just don't have the energy.'[or]'I guess there won't be any all-night dancing anymore at the Palomino,' she says, motioning to her root-like feet digging into the soil.[or]'Be sure to let my friends at the Palomino know that I'm okay. The bartender was kind of nice to me.'[or]'This plant body of mine has such... strange urges,' she whispers, her tendrils stirring a little.[at random]";
	else if hp of joanna > 2 and ( facename of player is "Parasitic Plant" or bodyname of player is "Parasitic Plant" or skinname of player is "Parasitic Plant" or cockname of player is "Parasitic Plant" or tailname of player is "Parasitic Plant" ) and lust of Joanna is 0:
		say "[plantexam]";
		say "     After examining you, Joanna releases you and takes a step back. She's blushing a little, but grinning coyly as well. 'You make a lovely plant, my dear,' she chirrs as her own tendrils rustle with obvious excitement[if daytimer is day], quite aroused and ready for fun now[otherwise], gradually settling back down as they return to their dormant, nighttime state[end if]. Meanwhile, you have become quite aroused by the plant kinkajou's playful examination of your plant features.";
		if libido of player > 100, now libido of player is 100;
	else if hp of joanna < 5:
		say "     [one of]'I should be safe enough here. The trimmer should scare off anyone who comes looking for trouble,' she says, patting the gas-powered tool.[or]'Don't you love my beautiful garden?'[or]'I'm really liking the new me,' she says, running her paws over her verdant body.[or]'You should remember to take a moment to smell my lovely flowers,' she says. While she probably means her garden, she does grin and run a finger along the soft petals of her pussies.[or]'Life is so peaceful here.'[or]'Thanks for the help. Being a plant is wonderful, but I don't think there'd have been anything left of me if you hadn't come to my rescue.'[or]'I think I like these ones best,' she says, walking over to one flowering bush. She brings one of the large, vaginal flowers to her muzzle and dives her long, red tongue into it, licking slowly as she grins at you.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, spreading her arms to take in the light[otherwise]'Oh, I get so sleepy when the sun's down. I can hardly wait for morning,' she says[end if].[or]'Be sure to come back and visit my garden again.'[or]Joanna tills the soil, mixing in some more fertilizer from the shed before setting down her roots with a soft sigh of satisfaction.[or]'Be sure to let that cute bartender at the Palomino know that I'm okay. The bartender was kind of nice to me.'[or]'I'm still kinkajou enough to want to be active at night, but I just don't have the energy.'[or]'This plant body of mine has such... strange urges,' she whispers, her tendrils stirring a little.[at random]";
	else if hp of joanna is 5 and lust of joanna is 3 and ( lastfuck of joanna - turns >= 5 ) and daytimer is day:
		say "[joannaoffer]";
	else if hp of joanna is 5 or hp of Joanna is 6:
		if hp of Joanna is 6 and a random chance of 1 in 4 succeeds and joannaoffernum is not 4 and ( lastfuck of joanna - turns >= 5 ) and daytimer is day:
			say "[joannaoffer2]";
		else:
			say "     [one of]'Wouldn't you love staying here in my beautiful garden with me?'[or]'I think being a plant is wonderful,' she says, running her paws over her verdant body.[or]'You should remember to take a moment to smell my lovely flowers,' she says as she spreads the petals of her pussies with a grin.[or]She grins and cups one of the large, vaginal flowers in her paw and slowly slides her tongue around its edge before diving into it, making a sensual show of her feeding.[or]'This plant body of mine has such... wonderful urges,' she whispers, her tendrils stirring a little.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, stretching herself out on the grass, tendril cocks rustling lightly as she enjoys the sunshine[otherwise]'My kinkajou side is becoming more relaxed, making it easier to rest at night,' she says[end if].[or]'I'm feeling so much better now that I'm letting myself have sex. This body craves it, needs it, and I'm really enjoying it as well,' she says, running a paw over your chest.[at random]";
	else if hp of Joanna is 7:
		say "     [one of]'Wouldn't you love staying here in my beautiful garden with me?'[or]'I think being a plant is wonderful,' she says, running her paws over her verdant body.[or]'You should remember to take a moment to smell my lovely flowers,' she says as she spreads the petals of her pussies with a grin.[or]She grins and cups one of the large, vaginal flowers in her paw and slowly slides her tongue around its edge before diving into it, making a sensual show of her feeding.[or]'This plant body of mine has such... wonderful urges,' she whispers, her tendrils stirring a little.[or][if daytimer is day]'Doesn't the warm sun feel so good?' she asks, stretching herself out on the grass, tendril cocks rustling lightly as she enjoys the sunshine[otherwise]'My kinkajou side is becoming more relaxed, making it easier to rest at night,' she says[end if].[or]'I'm so glad you decided to take my seed and be my special hero again,' she says, running a paw over your chest.[or]'Please be kind to my precious seed inside you, hon.'[or]'Be sure to have as much sex as you can out there. Gather lots of seed for me and my precious seed inside you.'[at random]";

to say plantexam:
	say "     Joanna blushes a little and tucks her paws between her legs as if trying to hide her stirring arousal. 'I... I noticed that you're part plant as well. That wasn't because of the one that got me, was it?  Or because of me?' she adds, fumbling to restrain her stirring tendrils. 'Could you tell me what happened?' You nod and relate to her how you ended up this way and she grows more aroused as you detail your changes and she runs her paws over your altered body. 'Life as a plant is so much better. I think you should relax and enjoy it.'";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, line break;	[adds a break after the 'more']
	say "     Joanna's paws slide over you as she takes in your plant-like features";
	if player is plantbodied or player is plantskinned:
		say ". Her fingers roam over your altered body, thoroughly enjoying this chance to examine you and you can't help but moan a little in response to her touch";
	if player is plantfaced:
		say ". She brings a paw up to your feminine face, stroking your cheek before teasing a fingertip along the lips of your pussy-like mouth. She slips a finger into your pussy-mouth and grins as it starts sucking on her digit. Withdrawing the finger, she leans in and gives you a kiss, driving her long, slick tongue in instead. Your pussy-mouth automatically starts squeezing and milking at it, coaxing some of her sweet fluids from it before she pulls away to break the kiss";
	if player is planttailed:
		say ". Lowering herself down, she moves to examine your vaginal anus, teasing her fingertips around it and slathering her tongue across it until you start to moan and drip with juices";
	if player is plantcocked:
		if cocks of player > 0:
			say ". She runs her paws over your tendril [if cocks of player > 1]cocks[otherwise]cock[end if], much like her own. She teases at [if cocks of player > 1]the glans of one[otherwise]its glans[end if], finding it has a more human shape than her tapered, more animalistic ones. You are quickly aroused to the point of dribbling with precum";
		if cunts of player > 0:
			say ". She moves on to your leaking [if cunts of player > 1]cunts, fingering them[otherwise]cunt, fingering it[end if], lightly as she lets her tongue slide all over your dripping folds. She chirrs in appreciation as she enjoys your tasty juices";
	say ".";
	increase libido of player by 25;
	increase lastfuck of joanna by 6;
	now lust of Joanna is 1;
	if hp of Joanna < 5, now hp of Joanna is 5;

to say joannaoffer:
	say "     As you come up to talk to Joanna, she puts her arms around you and runs her paws over you. 'Mmm... I was hoping you'd stop by, sweetie. I've been really enjoying our time together, but I'm starting to want more. I crave more,' she says, sliding her long tongue across your cheek, making you shiver in delight? fear? anticipation?  Her fingers continue over your body, teasing you lightly. 'Will you help me, my lovely hero?[no line break][if plantdefeat > 0]  I may even be able to help you out a little while I'm at it,[end if]' she purrs, sliding her tongue across your ear before nibbling on it. 'It's nothing much. Just a little seed,' she whispers.";
	say "     [bold type]Shall you accept her offer?[roman type][line break]";	
	line break;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		line break;
		say "[joannaseeded]";
	else:
		line break;
		now joannaoffernum is 1;
		now hp of Joanna is 6;		[locked in current status]
		say "     Joanna sighs sadly at your response, but nods and caresses your cheek. 'I had hoped you'd be the one I need.' Resting her head against your shoulder, she dries her wet eyes against your shoulder. 'I hope you'll reconsider my offer in the future.'";

to say joannaoffer2:
	say "     As you come up to talk to Joanna, she puts her arms around you and runs her paws over you. 'Mmm... I was hoping you'd had a chance to reconsider my offer, sweetie. I crave more cum and my precious seed needs a home,' she says, running her tongue across your cheek.";
	say "     [bold type]Shall you accept her offer?[roman type][line break]";	
	line break;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		line break;
		say "[joannaseeded]";
	else:
		line break;
		increase joannaoffernum by 1;
		say "     Joanna sighs sadly at your response, but nods and caresses your cheek. 'I had hoped you'd be the one I need.' Resting her head against your shoulder, she hugs you tightly[if joannaoffernum is 4]. 'I'll not bother you again about it, hon,' she sobs, wiping her eyes as she moves off to be alone for a bit[otherwise]. 'I hope you'll feel more open to sharing this special bond with me soon,' she says before letting you go[end if].";

to say joannaseeded:
	now hp of Joanna is 7;
	say "     She smiles with delight, tears at the corners of her large, expressive eyes before pulling you into a lustful kiss that has her tongue diving into your mouth and immediately down your throat. You can taste her sweet nectar flow from it and down into you belly, where it fills you with a lustful need for her far stronger than you've ever felt. You want to give yourself to this beautiful flower, to accept whatever she wants of you. Reaching down, you take her tendril cocks in hand, rubbing and stroking them. When she finally breaks the kiss, you moan softly, drugged into aroused submission by her juices.";
	if plantdefeat > 0:
		say "     She runs her paws over your waist, caressing it tenderly. 'First, we need to get rid of that bad seed in you.' Her fingers slide along your hips and down to your [if cunts of player > 0]pussy[else if player is planttailed]vaginal anus[otherwise]anus[end if] and starts caressing it. Slowly at first, her fingers extend into tendrils that push into your passage as they grow. You moan in pleasure at this, but then groan in discomfort as they reach that firm spot inside you where the other plant's seed rests. Joanna kisses and nuzzles at you, whispering that it'll be over soon as your insides roil painfully even through the lustful haze as the seed resists removal. But eventually, the pain stops as it's forced to release its hold on your [if cunts of player > 0]uterus[otherwise]insides[end if] and is pulled free with a wet pop that leaves you feeling empty inside.";
		say "     Joanna tosses the seed aside onto the cement entrance to one of the nearby buildings. 'I'll deal with that thing later, hon. But the bad seed's gone now. How do you feel?' she asks, caressing her tendrils against your inner walls where the seed once rested. 'Empty,' you respond, strangely feeling sad that it's gone. She awws tenderly and kisses your cheek. 'Don't worry, I have something much nicer to fill you up.'";
	else:
		say "     She runs her paws over your waist, caressing it tenderly. 'First, we need to prepare a spot for it.' Her fingers slide along your hips and down to your [if cunts of player > 0]pussy[else if player is planttailed]vaginal anus[otherwise]anus[end if] and starts caressing it. Slowly at first, her fingers extend into tendrils that push into your passage as they grow. You moan in pleasure at this, then groan in discomfort as they reach inside you and press against your [if cunts of player > 0]uterine walls[otherwise]inner walls[end if]. Joanna kisses and nuzzles at you, whispering that it'll be over soon as she seeps her euphoric nectar inside you in preparation.";
	say "     Still holding you close with one arm, Joanna guides your head down to her bosom. You wrap your lips around her nipple, nursing and suckling her sweet juices from her breast, making her moan in pleasure. Your [if cocks of player > 0 and cunts of player > 0]balls throb with increased production and your wet folds flow with feminine juices[else if cocks of player > 0]balls throb with increased production[otherwise]wet folds flow with feminine juices[end if] as you nurse for her potent, aphrodisiac juice. As you continue drinking down the transformative liquid, you can feel her tendril cocks rubbing along your groin and soon diving into your [if cunts of player > 1]pussies[else if cunts of player is 1]pussy[else if player is planttailed]vaginal anus[otherwise]anus[end if]. Your lust-ridden body welcomes them inside you with a powerful orgasm that lasts throughout the fucking they give you, peaking as a large bulge is pushed up through one of them and [if cunts of player > 0]pressed onto that tender spot on your womb[otherwise]sent deep inside your bowels to rest on that tender spot waiting for it[end if]. As it attached to you, you feel a rush of pleasure spread throughout your body and a growing attachment to Joanna as you become her seed-carrier and cum collector.";
	say "     Feeling weak, but strangely fulfilled, after the ordeal, you sit on the grass with Joanna, snuggled in her arms with cum leaking from your well-stuffed [if cunts of player > 1]cunts[else if cunts of player is 1]cunt[otherwise]hole[end if]. 'Now my seed's in you, my precious lover. Please be kind to it and give it all the cum you can get. Accept its love when it needs it, too.' You nod in agreement, still deep in the euphoric haze and flush with the pleasure of becoming closer to your lovely flower.";
	now plantdefeat is 1;
	now researchbypass is 1;
	infect "Parasitic Plant";
	infect "Parasitic Plant";
	now researchbypass is 0;


Section 4 - Joanna Sex

the fuckscene of Joanna is "[sexwithJoanna]".

to say sexwithJoanna:
	if lastfuck of joanna - turns < 8 and hp of Joanna < 5 and hp of Joanna is not 0:
		say "     Having played with Joanna recently, perhaps you should wait a bit before having another romp with her. She could use a little more time in the sun to recharge and refill on her sweet juices.";
	else if lastfuck of joanna - turns < 5 and hp of Joanna >= 5 and hp of Joanna < 90:
		say "     Having played with Joanna recently, perhaps you should wait a bit before having another romp with her. She could use a little more time in the sun to recharge and refill on her sweet juices.";
	[Joanna at Palomino]
	else if lastfuck of joanna - turns < 8 and hp of Joanna is 92:
		say "     Joanna smiles at your offer, but seems happy to just dance for now. Perhaps you should try again later.";
	else if hp of Joanna is 0 or hp of Joanna is 90 or hp of Joanna is 91:
		say "     You hardly know her. Perhaps you should try talking to her a bit and get to know her better before you make such an offer.";
	else if hp of Joanna is 92:
		if cocks of player is 0:
			say "     You wait for a moment when the kinkajou's not dancing to approach her. Joanna blushes a little at your offer, but shakes her head. 'I'm sorry, but I'm not really into that kind of thing. I'm a regular girl who's only into guys.'";
		else:
			say "[joannaclubsex]";
	[Joanna at Flower Garden]
	else if daytimer is night:	[night]
		say "     You make the suggestion to Joanna, but she smiles and shakes her head. 'Sorry, with the sun down, I'm just a little too sleepy to play around. Please ask again during the daytime and I'd be happy to show you how much I appreciate all your help.'";
	else if hp of Joanna is 1:
		say "     You move up to the unusual plant girl and run a hand lightly over her soft fur. She chirrs softly and leans into your touch, not really aware of what she's doing right away. You put your arms around her from behind, holding her close to you, watching her tendril cocks start to stir to life. You whisper softly in her ear that you like to make love to her, and she somehow blushes even more red in the face. 'You... you can't really mean that,' she says, moving her paws to try to cover her swelling cocks. 'Who'd want a strange plant creature like me?' she mumbles softly. Sliding your hands down to hers, you rub over them and thereby the growing cocks they're trying to conceal, telling her that you want her and want her now.";
		say "     Unable to hold back her growing desires any longer, she turns around quickly, if a little unsteadily as she uproots her feet with the sudden maneuver. Once she steadies herself, blushing a vibrant red again, she pulls you into a passionate kiss. Her long tongue slides into your mouth. You both are taken a bit by surprise from this, but find it very enjoyable. It tastes sweet and slides around in your mouth before diving deeper and going down your throat. Fluid leaks from it and you find yourself growing all the more aroused because of its effects. You struggle to decide how you'd best enjoy your first time with this nervous flower.";
		wait for any key;
		say "[joannaselection]";
	else if hp of Joanna is 2:
		say "     Joanna smiles a little at your sensual touch and blushes a bit, but leans into your arms. Her arms drift down to her groin, as if trying to cover up her excited body. But as you run your hands across her breasts and caress her petaled nipples, her paws begin to touch herself instead. Nuzzling you, she whispers softly that she'd like to try more this time, stroking her cocks and fingering her pussies as she asks to have sex with you this time. Tilting her head to yours, she presses her muzzle to your lips. As you kiss, her tendril tongue slips into your mouth to slide around. As you taste the sweet nectar leaking from it, it is clearly an aphrodisiac meant to arouse her lovers and it makes you quite aroused to consider what you want.";
		wait for any key;
		say "[joannaselection]";
	else if hp of joanna > 2 and ( facename of player is "Parasitic Plant" or bodyname of player is "Parasitic Plant" or skinname of player is "Parasitic Plant" or cockname of player is "Parasitic Plant" or tailname of player is "Parasitic Plant" ) and lust of Joanna is 0:
		say "[plantexam]";
		wait for any key;
		say "     After examining you, the green kinkajou grins happily and wraps her arms around you, pulling you into another passionate kiss, diving her long tongue into your [if player is plantfaced]pussy-like [end if]mouth. It tastes sweet and slides around in your mouth before diving deeper and going down your throat. As it starts leaking more of that sweetly arousing fluid[if player is plantfaced] as your vaginal orifice milks and sucks at it[end if], you try to decide exactly what you'd like to do to enjoy your time with your flowery lover, already quite aroused by her playful touching.";
		wait for any key;
		say "[joannaselection]";
	else if hp of joanna is 5 and lust of joanna is 3:
		say "[joannaoffer]";
	else:
		say "     The green kinkajou grins happily as you offer to have some more fun in the sun with her. She wraps her arms around you and kisses you passionately, diving her long tongue into your [if player is plantfaced and lust of joanna > 0]pussy-like [end if]mouth. It tastes sweet and slides around in your mouth before diving deeper and going down your throat. As it starts leaking more of that sweetly arousing fluid[if player is plantfaced] as your vaginal orifice milks and sucks at it[end if], you try to decide exactly what you'd like to do to enjoy your time with your flowery lover.";
		wait for any key;
		say "[joannaselection]";


to say joannaselection:
	blank out the whole of table of fucking options;
	if hp of joanna is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Bukkake";
		now sortorder entry is 1;
		now description entry is "Lavish attention on her numerous genitalia to get a messy finish.";
		now toggle entry is joannasexy rule;
	if cocks of player > 0 and hp of joanna is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 2;
		now description entry is "Have her suck you off.";
		now toggle entry is joannasexy rule;
	if cunts of player > 0 and hp of joanna is not 2:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 3;
		now description entry is "Get that wondrous tongue in your womanly flower.";
		now toggle entry is joannasexy rule;
	if cocks of player > 0 and hp of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Joanna";
		now sortorder entry is 4;
		now description entry is "Stuff her lovely flowers with your cock(s).";
		now toggle entry is joannasexy rule;
	if cunts of player > 0 and hp of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Pussy fucked";
		now sortorder entry is 5;
		now description entry is "Go for a ride on those tentacle cocks of hers.";
		now toggle entry is joannasexy rule;
	if cunts of player is 0 and hp of Joanna > 1:
		choose a blank row in table of fucking options;
		now title entry is "Anal";
		now sortorder entry is 6;
		now description entry is "Try one of those squirming tentacle cocks up your ass.";
		now toggle entry is joannasexy rule;
	if cocks of player > 0 and hp of Joanna >= 5:
		choose a blank row in table of fucking options;
		now title entry is "Mutual Fucking";
		now sortorder entry is 7;
		now description entry is "Fuck Joanna while she does you.";
		now toggle entry is joannasexy rule;
	if cocks of player > 1 and ( cock length of player * cocks of player ) <= 64 and hp of Joanna >= 5:
		choose a blank row in table of fucking options;
		now title entry is "Multi-stuff Joanna";
		now sortorder entry is 8;
		now description entry is "Put several cocks in one pussy.";
		now toggle entry is joannasexy rule;
	if hp of Joanna >= 5 and ( cunts of player is 0 or cunt width of player > 4 ):
		choose a blank row in table of fucking options;
		now title entry is "Multi-stuff player";
		now sortorder entry is 9;
		now description entry is "Take those tendrils all in one hole.";
		now toggle entry is joannasexy rule;
	sort the table of fucking options in sortorder order;
	line break;
	select an option from table of fucking options;
	clear the screen;

This is the joannasexy rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry]?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		[puts Parasitic Plant as lead monster for sex change]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Parasitic Plant":
				now monster is y;
				break;
		choose row monster from table of random critters;
		if nam is "Bukkake":
			say "[joannasex1]";
		else if nam is "Fellatio":
			say "[joannasex2]";
		else if nam is "Cunnilingus":
			say "[joannasex3]";
		else if nam is "Fuck Joanna":
			say "[joannasex4]";
		else if nam is "Pussy fucked":
			say "[joannasex5]";
		else if nam is "Anal":
			say "[joannasex6]";
		else if nam is "Mutual Fucking":
			say "[joannasex7]";
		else if nam is "Multi-stuff Joanna":
			say "[joannasex8]";
		else if nam is "Multi-stuff player":
			say "[joannasex9]";
		Waitlinebreak;
		if hp of Joanna < 5, increase hp of Joanna by 1;
		now lastfuck of joanna is turns;
		if lastjoannajuice is turns:
			if lust of Joanna is 2:
				say "     You can feel an oddly pleasant sensation suffusing you. Centered on your belly to begin, it spreads out through your body as Joanna's juice and her sexual fluids seep into you. You feel the telltale tingles of transformation as she's spread her plant-like infection to you from her juicy breasts. In the warmth of the afterglow in the sunny garden, you find it all pleasant and aren't upset by her actions. If anything, you find yourself feeling closer to her and looking forward to your next drink.";
				now lust of Joanna is 3;
				line break;
				infect "Parasitic Plant";
			else:
				say "     You can feel an oddly pleasant sensation suffusing you as Joanna's juice and her sexual fluids are absorbed into your body, spreading her plant-like infection into you.";
				line break;
				infect "Parasitic Plant";
		else if lust of joanna > 1:
			say "     You can feel an oddly pleasant sensation suffusing you as Joanna's sexual fluids are absorbed into your body, reacting with the latent plant-like infection she's bestowed upon you.";
			line break;
			if a random chance of 2 in 3 succeeds:
				infect "Parasitic Plant";
			else:
				now skipcockchange is true;
				follow the sex change rule;
				now skipcockchange is false;
		else:
			say "     You can feel an oddly pleasant sensation as Joanna's sweet saliva and fluids seep further into your body, warming your groin and exciting you.";
			line break;
			now skipcockchange is true;
			follow the sex change rule;
			now skipcockchange is false;
		wait for any key;


to say joannasex1:
	say "     Deciding the please the garden's loveliest flower, you break the deep-throating kiss and lower yourself to your knees. Her numerous genitalia offer plenty of choices for you to play with. You start by running your tongue over one of her cocks while your fingers stroke her thighs, then move to stroke the folds of her wet pussies. Dripping with sweet nectar, you stroke those lovely flowers, dipping a few fingers into each of them, switching from one to the next after a few strokes. Your mouth meanwhile has taken her cock in and the green tendril squirms down your throat, leaking her sweet, arousing juices into you. She runs her paws over your head while her other green shafts move on their own, rubbing against your face, smearing precum over you. After a good long suck on that one, you move to another cock, and then another. As you're switching to the last one, Joanna moans and sends the tendril down your throat moments before she cums hard. Her sweet cum blasts down into your belly and blasts across your face, painting you in her semen. Once the cumming tendrils have released you, you sit back and wipe her sugary semen from your face with one hand and lick it up. The other is firmly between your legs, playing with your aching loins until you cum moments later.";
	increase libido of player by 15;
	if libido of player > 100, now libido of player is 100;


to say joannasex2:
	say "     Reaching down, you stroke your throbbing [cockname of player] [if cocks of player > 1]cocks[otherwise]cock[end if] and slowly break the deep-throating kiss. You stroke her softly furred muzzle and ask her if she's like a taste of it. Grinning, she's on her knees right away. Her long, agile tongue slides over your glans and then wraps completely around your [if player is plantcocked and lust of joanna > 0]green, tentacle [end if]penis, stroking and squeezing as she starts sucking hungrily. You moan in pleasure and run your fingers through her green hair, being careful not to pluck her flowers, then move to scritch her round ears. Rumbling and chirring in pleasure, rubbing your [short ball size] orbs, eager for the thick nectar within[if cunts of player > 1]. Her paws run along your legs and then move to start stroking and teasing your pussies, slipping a few fingers into them to further excite you and get more of your juices[else if cunts of player is 1]. Her paws run along your legs and then move to start stroking and teasing your pussy, slipping a few fingers into your cunt to further excite you and get more of your juices[end if][if cocks of player > 1]. Having several cocks to pick from, she swaps between them from time to time, doing her best to get you worked up for a big blast[end if]. When your climax finally hits, she gulps down your seed hungrily, moaning around her muzzleful of throbbing cock[if cocks of player > 2] while your other cocks spurt your semen onto her face. She swaps quickly from one to the other, [else if cocks of player is 2] while your other cock spurts your semen onto her face. She swaps quickly between them, [otherwise], [end if]trying to get as much as she can to satisfy her body's cravings. Once your balls are drained, she gets up, running her foot long tongue over her face and paws, licking away every drop of your juices.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;


to say joannasex3:
	say "     Reaching down, you stroke your leaking [cunt size desc of player] [if cunts of player > 1]cunts[otherwise]cunt[end if] and slowly pull away from the deep-throating kiss. You stroke her softly furred muzzle with your damp fingers and ask her if she'd to put that tongue of hers to work getting more. Grinning, she's on her knees right away. Her long, agile tongue slides across your groin, licking at your damp folds before diving into your vagina. The red flesh pumps and wriggles inside you, sending shivers of delight up your spine[if cunts of player > 1]. She swaps back and forth between your cunts, lavishing them with attention[end if][if player is planttailed and lust of joanna > 0]. Her long tongue slides further back to tease your vaginal anus as well, dipping into that leaking plant hole a few times[end if]. Your [if cunts of player > 1]pussies orgasm[otherwise]pussy orgasms[end if] several times, giving your sweet nectar to the lustful and thirsty kinkajou. Her paws don't remain idle either, moving to [if cocks of player > 1]stroke your cocks until they finally cum as well[else if cocks of player is 1]stroke your cock until it finally cums as well[otherwise]knead your ass until finally your body is wracked with one last, powerful orgasm[end if]. Moving back after that, she makes a show of sliding her messy tongue all over her face, licking away all your juices with that flexible and talented organ.";
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;


to say joannasex4:
	say "     Reaching down between her legs, you run your fingers over her feminine petals, making her shiver. You pull away from the deep throating kiss and ask your verdant lover if you may fill her lovely flower[if hp of joanna is 2]. Blushing a little, she nods and moans. 'I've been needing this. This body wants it soooo[otherwise]. Grinning, she moans and licks your ear. 'Oh, my body wants it so[end if] much.' You stretch yourself out on the ground so she can move atop you, basking in the sun as you fuck her[if hp of joanna is 2] for the first time[end if].";
	Waitlinebreak;
	say "     Running your hands along her hips, you caress her as she lowers herself down onto your [if cocks of player > 1]cocks, taking them into her wet pussies[otherwise]cock, taking them into her wet pussy[end if]. She chirrs in delight at the sensation of having you inside her needy body and rides you slowly at first, savouring the pleasure [if player is plantcocked and lust of joanna > 0 and cocks of player > 1]of having your green tendrils inside her[else if player is plantcocked and lust of Joanna > 0]of having your green tendril inside [else if cocks of player > 1]of having your cocks inside of her[otherwise]of having your manhood inside her[end if]. From the way she's nibbling her lip and the twitches of her flowery folds and writhing cocks, it's clear it's taking some effort to hold back her urges. Deciding to help her along, you take a pair of her slick tendrils in each hand and stroke them. She tilts her head back and moans loudly, spreading her arms wide into the sun and rides you faster.";
	Waitlinebreak;
	say "     Her altered body, craving your semen, milks and squeezes at your cock[if cocks of player > 1]s[end if] until you can finally take no more and cum hard into her. You[if cock width of player > 12]r oversized balls blast a giant[otherwise] pump your[end if] load of sticky cum into her puss[if cocks of player > 1]ies[otherwise]y[end if], making her moan in satisfaction. As you bounce the green kinkajou girl in your lap while cumming, you keep working her cocks until she climaxes as well, spraying her sticky, sweet-scented semen onto you both, one pair blasting you and the other her. Sliding off your spent shaft, she moans and leans over, flopping out on the grass and chirring softly as she soaks up the sun while her body absorbs the nutrient-rich cum it desires.";


to say joannasex5:
	say "     Reaching down, you stroke Joanna's throbbing cocks, spreading her leaking juices over them until they're nice and slick. Slowly pulling away from the deep-throating kiss, you ask if she'd like to fill you with them. Her response is to give you another kiss with that wild tongue of hers, making you moan. You lay down on the grass with her atop you, laying in a sunny patch. She spreads your legs and brings her numerous cocks into position. ";
	if cunts of player > 2:
		say "     Having a hole for each of her four cocks, she moans loudly in appreciation as each one of the sinks into your waiting vaginas in turn[if cunts of player is 3 and player is planttailed], pushing the final one into your vaginal-like anal passage[else if cunts of player is 3], pushing the final one into your tight pucker to plow your ass[end if]. The feeling of having four cocks in you at once is grand, making your body shiver and writhe in waves of delight. Kissing you again, her slick tongue pumps down your throat, filling your taste buds with her sweet flavour once again. You run your hands through her soft fur and stroke her breasts, your motions a little ragged and uncoordinated from the overwhelming stimuli, but Joanna is doing little better, clearly enjoying filling you so much she hardly notices your fumbling hands. She keeps her own locked at your hips, gripping you firmly.";
	else:
		say "     With [if cunts of player is 1]some[otherwise]one[end if] of her cocks left out, she slides her cocks into your [if cunts of player is 1]cunt[otherwise]cunts[end if] and [if player is planttailed]vagina-like anus[otherwise]tight pucker[end if] each in turn. The remaining [if cunts of player is 1]cock tendrils slide[otherwise]cock tendril slides[end if] around on your body, stroking against your [skinname of player] flesh[if cocks of player > 1] and entwining with your cocks[else if cocks of player is 1] and entwining around your cock, squeezing and pumping over your throbbing flesh[end if]. Kissing you again, her slick tongue pumps down your throat, filling your taste buds with her sweet flavour once again. You run your hands through her soft fur and stroke her breasts, playing with her nipples and the soft petals which surround them. Joanna keeps her paws locked your hips, gripping you firmly.";
	Waitlinebreak;
	say "     Her various cocks move independently, each pumping into you [if cunts of player < 3]and sliding over body [end if]at their own pace. But there is a harmonious rhythm to their motion as well, with larger overall patterns, like a beautiful concert for the body from her separate instruments. And like a concert, the rhythm and patterns build and swell until finally reaching their peak and she sends her cocks as deep into you as they'll go, blasting his thick, gooey cum deep inside you. You arch your back and cum hard at the sudden influx[if cocks of player > 0], spraying your own seed across you both[end if]. You become aware that more of her sweet juices flow from her tongue as well, leaving you in a haze of pleasure as she slowly withdraws from you[if cunts of player > 2]. You are left quite full and bloated from the flow from having so many cocks all cumming inside you at once, but wonderfully so[end if]. Spent and satisfied, Joanna lays atop you with the warm sun on her back and her penises still inside you.[ovichance]";
	now libido of player is ( 3 * libido of player ) / 5;

to say joannasex6:
	say "     Reaching down, you stroke over Joanna's throbbing cocks, spreading her leaking juices over one of them to get it extra-slick. Slowly pulling away from the deep-throating kiss, you ask if she'd like to sink it into you[if hp of joanna is 2]. Joanna runs a paw between your legs, but finds no waiting pussy there. She starts to ask how, then blushes as she realizes what you mean. 'I've never... I mean of course I haven't... but, if you really want to,' she says softly[otherwise]. Joanna blushes a little at the offer to fuck your ass this time[end if], but from the way her cock has been throbbing in your hand, it's clear the idea's gotten her quite turned on. You get onto all fours facing the sun and wiggle your backside invitingly at her[if hp of Joanna > 3]. She leans in behind you, paws on your ass and spreading them as she lowers her muzzle in, sliding her slick tongue along your ass crack before slathering over your [end if][if hp of joanna > 3 and player is planttailed]plant-like, anal pussy[else if hp of joanna > 3]tight pucker[end if][if hp of joanna > 3]. Already starts to relax in anticipation of being mounted, you have to moan as she slides her long tendril tongue into your hole to get you slick. The hormone-rich fluids take effect quickly, making you even more lustful and needy until you're almost begging the plant girl to ravage you[end if].";
	Waitlinebreak;
	say "     [if hp of Joanna > 3]Withdrawing her tongue from your slick hole, [end if]Joanna moves up behind you and lines up the glistening tendril with your waiting back entrance. You press back against it and moan as it slides into you quite easily. The long, slender penis wriggles its way inside you, rubbing at your inner walls[if cocks of player is 1] and pressing against your prostate, making your cock throb[else if cocks of player > 1] and pressing against your prostate, making your cock throb[end if]. While the one tendril worms its way deeper, two others wrap around your thighs, gripping you tightly. The final one [if cocks of player is 1]reaches around beneath you and coils around your cock, squeezing and stroking it against its slick flesh[else if cocks of player > 1]reaches around beneath you and coils around your cocks, squeezing and stroking them against one another and against its slick flesh[otherwise]keeps itself short, rubbing and stroking as your ass and lower back as you're fucked[end if]. With a good grip on you with her tendril cocks, she leans back and spreads her arms to bask in the sun as her writhing tentacles fuck you.";
	Waitlinebreak;
	say "     The kinkajou-plant rocks her hips a little, slapping the swollen bulbs holding her balls against you, but largely lets her flexible shaft do the work on its own. It squirms and wriggles around inside you like a snake, sending shivers of delight through you as it delves deep inside you, leaking slick juices as it goes[if cocks of player > 0]. The one around your maleness strokes and pumps, eager to get you to cum, and cum hard[otherwise]. The one rubbing at your lower spine moves agilely, leaking precum that flows out onto your back and down between your spread cheeks[end if]. Those around your legs throb and pulse as they grip you. Eventually and with a cry of ecstasy, the plant creature's cocks throb and unleash blasts of her slick, sweet juices. Your bowels, thighs and [if cocks of player > 1]penises[else if cocks of player is 1]penis[otherwise]back[end if] are coated in it as she cums[if player is planttailed] into your pussy-like asshole[end if]. The feel of all this sensual fluid filling and coating you sets you off, causing you to orgasm moments later, blasting your seed onto [if hp of Joanna > 2]Joanna's long tail, which the green kinkajou moved into position in anticipation of this[otherwise]the green grass beneath you[end if]. Once you are both spent, Joanna's tendrils release you and she flops back onto the warm grass, basking in the afterglow and the sunlight[if hp of Joanna > 2] while licking your semen from her tail with her foot long tongue[end if].[ovichance]";

to say joannasex7:
	say "     Reaching down, you stroke Joanna's throbbing cocks and rub them against yours with one hand while the other teases her wet pussies. Slowly pulling away from the deep-throating kiss, you suggest fucking one another at the same time. Her response is to give you another kiss with that wild tongue of hers, making you moan. You lay down on the grass with her atop you, laying in a sunny patch. She moves atop you, rubbing over your groin as her tendrils coil around you to move after your [if cunts of player > 1]cunts[else if cunts of player is 1]cunt[otherwise]asshole[end if]. As you are penetrated by the green flesh, she moans in delight and lowers herself onto your [if cocks of player > 1]cocks[otherwise]cock[end if] with a lustful moan.";
	Waitlinebreak;
	say "     The plant-kinkajou's [if cocks of player > 1]pussies[otherwise]pussy[end if], causing Joanna to chirr in delight even as she's sliding [if cunts of player > 3]her tentacle cocks into her lover, having found a wet cunt for each[else if cunts of player > 1 and player is planttailed]her tentacle cocks into your wet cunts and vaginal asshole[else if cunts of player > 1]her tentacle cocks into your wet cunts and snug asshole[else if cunts of player is 1 and player is planttailed]her tentacle cocks into you, one for your wet cunt and one for your vaginal asshole[else if cunts of player is 1]her tentacle cocks into you, one for your wet cunt and one for your snug asshole[else if player is planttailed]a tentacle cock into your dripping, vaginal asshole[otherwise]a tentacle cock into your snug asshole[end if]. Bringing your hands to her bosom, you caress her lovely globes and her flowery areolae and perky, green nipples. She doesn't ride you very hard so she can let her tendrils writhe while she fucks you in return. Instead, her plant body seems to squeeze and suck at your [if cocks of player > 1]cocks[otherwise]cock[end if] hungrily, milking the precum from you with an apparent hunger for something richer and creamier to satisfy it.";
	Waitlinebreak;
	if lust of Joanna > 0, say "[joannajuice]";
	say "     You both continue like this for some time, fucking one another and enjoying the pleasure of getting fucked as well. But eventually, you can't take any more as her needy [if cocks of player > 1]pussies quiver[otherwise]pussy quivers[end if] and her [if cunts of player > 0]tendrils slide as deep as they[otherwise]tendril slides as deep as it can[end if] into you. You groan loudly and cum hard, blasting your seed into the lovely plant, soon rewarded with the same as her fluids rush into [if cunts of player < 3]and onto [end if]you from her writhing tentacles[if cunts of player > 2]. You are left quite full and bloated from the flow from having so many cocks all cumming inside you at once, but wonderfully so[end if]. Spent, cum-fed and satisfied, Joanna lays atop you with the warm sun on her back and your cocks still inside you one another. She leans in and gives you a tender kiss.[ovichance]";
	now libido of player is ( 2 * libido of player ) / 5;

to say joannasex8:
	say "     Reaching down between her legs, you run your fingers over her feminine petals, making her shiver as you start pumping a trio of digits into one of them. Finding it quite accommodating, you pull away from the deep throating kiss and ask the beautiful, verdant woman if she'd enjoy having it stuffed fully. Grinning a little, she takes your [if player is plantcocked]green, tentacle [end if]cocks in her paws and runs her sweet-smelling tongue across your cheek. 'I've been stretching them out nicely with some of the big bulbs, so I should be able to handle all that. This plant body is clearly made for taking all the cock it can get,' she adds while stroking your [if player is plantcocked]writhing tendrils[otherwise]hard shafts[end if]. She stretches herself out on the sunny grass, positioned so she can still bask in the light while you work your cocks into her waiting cunt.";
	Waitlinebreak;
	if cock length of player * cocks of player <= 32:
		say "     Joanna's pussy, as she said, stretches itself wide rather easily for you to slide your [if player is plantcocked]tendril [end if]cocks into her. As they're [if cocks of player is 2]both[otherwise]all[end if] sinking into her flowery petals, you try to take it slowly, but Joanna has other plans. Entwining her tendril cocks around your thighs, she starts pulling your groin towards hers with a grin. Her sweet nectar flows out over your shafts, making them quite slick for fucking the eager kinkajou. She continues grinning at you as her tentacles pull at your hips, setting the pace for your thrusts, making sure they're steady and firm into her overstretched pussy.";
	else:
		say "     Joanna's pussy, as she said, stretches itself wide with some effort to take the combined width of your [if player is plantcocked]plant [end if]cocks into her. As they're [if cocks of player is 2]both[otherwise]all[end if] sinking into her flowery petals, you have to take it slowly at first, letting the moaning plant girl adjust to the wide mass of cock stuffing her. Her tendrils entwine around your thighs and start pulling your groin towards her, urging you to fuck her as her sweet nectar flows out over your shafts, making them slick for fucking the eager kinkajou. Her paws roam over her belly, considerably bulged by you stuffing her, but it's clear she's loving every moment of it.";
	Waitlinebreak;
	if lust of Joanna > 0, say "[joannajuice]";
	say "     With your position and her pulling tentacle cocks, you are able to eventually work the whole of your cocks into her and really pound away at the horny woman. She wriggles in the grass, lost in the bliss of her body. As you continue pounding into her, you notice some roots growing from her sides and her feet digging into the soil, steadying her in place as her tendrils pull at you harder and faster. Her paws roam over her body, rubbing her stuffed tummy and her lovely bosom as her chirrs of pleasure get louder and louder. She pulls you hard into her suddenly, forcing you to make quick, short strokes to pound at her as blasts of her cum soak your crotch, thighs and rear as her pussies overflow with juices and her cocks spurt onto you. Driven to keep fucking her hard as she orgasms, you soon cum as well, pumping your load into her already well-stuffed body, causing her to swell further. As your orgasm subsides, she releases you and you collapse onto your back in the grass, panting for breath and feeling wonderful after your powerful climax. With some effort, you can hear her pulling herself free of the ground so she can move over to snuggle with you.";
	now libido of player is ( 2 * libido of player ) / 5;

to say joannasex9:
	say "     Reaching down to rub at Joanna's long, slender tendrils, you're pretty sure you'd be able to take them all at once. The possibility of having all four stuffed into your [if cunts of player > 0 and player is plantcocked]plant-like pussy makes it drip with juices[else if cunts of player > 0]pussy makes it drip with juices[else if player is planttailed]plant-like, vaginal asshole makes it drip with juices[otherwise]ass makes your pucker quiver in anticipation[end if]. Letting her slick tongue slide from your throat, you make the offer to her. She grins at the idea and her cocks stir in your hands. With a clear consensus from all involved, you lower yourself to the ground and spread your legs, offering yourself to her. She smiles lustfully at the sight of your [if cunts of player > 0]waiting pussy, which you hold open in offering[else if player is planttailed]pussy-like anus as you spread your cheeks and raise your rear[otherwise]tight pucker as you spread your cheeks and raise your rear[end if] for her. She runs her paws over your body and along your thighs as her tendrils move into position.";
	Waitlinebreak;
	say "     The first doesn't hesitate, slipping into you quickly and making you moan. As you're beginning to adjust to having that one in you, the next it at your [if cunts of player > 0]pussy[else if player is planttailed]vaginal orifice[otherwise]anus[end if]. It teases briefly against your [if cunts of player > 0]wet folds and clit[otherwise]stretched hole, leaking more pre to prepare you[end if] before driving into you with as much eagerness as the first. They thrust into you again and again, moving in synch with one just behind the other, letting them both press against your [if cunts of player > 0]cervix[otherwise]prostate[end if] in rapid succession. With a pair of them in you now, the others wait for the moment, sliding along your thighs and dripping precum onto you[if cocks of player > 1]. Joanna takes one of your cocks in each paw, stroking and pumping at them[else if cocks of player is 1]. Joanna takes your cock in her paws, stroking and pumping at it[end if].";
	Waitlinebreak;
	if lust of Joanna > 0, say "[joannajuice]";
	say "     As the steady fucking continues, you are left moaning and pressing your hips into each thrust as the last pair move into position together. You are far too turned on to even consider holding back and press your stretched hole against their dripping tips. The kinkajou smiles and kisses you again as those tendrils press into you to join the others. As her tongue slides back into your mouth, her sweet nectar leaks from it, further fueling your lust as she lets her tentacles fuck your stuffed [if cunts of player > 0]vagina[otherwise]hole[end if]. With all four of them in you now, you can't help but squirm and wriggle as they all slide around inside, rhythmically fucking you[if cunts of player > 0]. They press at your cervix again and again, slowly wearing it down before writhing into your womb and driving you climax[else if player is planttailed]. Three slide as deep as they can into your vaginal asshole while the other keeps pounding at your prostate, driving you to climax[otherwise]. Three slide as deep as they can into you bowels while the other keeps pounding at your prostate, driving you to climax[end if][if cocks of player > 1]. Joanna pumps at your cocks as you cum, spraying your seed onto you both[else if cocks of player is 1]. Joanna pumps at your cock as you cum, spraying your seed onto you both[end if]. She cries out in pleasure and you can feel all four tendrils pulse inside you as they start unleashing her cum into your [if cunts of player > 0]womb[else if player is planttailed]pussy-like asshole[otherwise]bowels[end if], pumping more and more until you feel so wonderfully full from it all.[ovichance]";
	now libido of player is ( 2 * libido of player ) / 5;

to say joannajuice:
	if lust of Joanna is 1:
		say "     As you and Joanna are fucking vigorously, she reaches out and strokes her paws over your head, then pulls your face to her bosom. With your lips pressed to her nipple, you can taste a hint of sweetness coming from them. As you start to suckle, you are rewarded not with milk, but with a juicy nectar. Its flavour is hard to pin down, at times like strawberries, but also like mangoes or peaches. Regardless, it is delicious and fills you with arousal. Your [if cocks of player > 0 and cunts of player > 0]balls throb with increased production and your wet folds flow with feminine juices[else if cocks of player > 0]balls throb with increased production[otherwise]wet folds flow with feminine juices[end if] as you nurse for her potent, aphrodisiac juice. She chirrs happily and caresses your head. 'Yes, drink up. You know how wonderful it is to be a beautiful plant,' she says soothingly, but her words hardly register with you, too aroused and leaking from the plant's infected juice. You keep suckling while having sex with her until her paws release you when her breasts are drained.";
		decrease humanity of player by 4;
		now thirst of player is ( thirst of player * 4 ) / 5;
		increase libido of player by 50;		[increase before later dropping at climax]
		increase lust of joanna by 1;
		now lastjoannajuice is turns;
		wait for any key;
	else:
		say "     While having vigorous sex with Joanna, she reaches out and takes your head in her paws again, guiding your lips to her breast. So overcome with lust, you don't even consider refusing the transformative aphrodisiac and eagerly nurse that juicy fluid from the plant's nipples. She moans in delight and caresses you as your drink it down, chirring [one of]how wonderful it is to help you become a lovely flower[or]how wonderful this makes her feel[or]how you'll make such a beautiful plant[or]how nice it'll be to share her garden with you[at random]. As you drink her juice, your [if cocks of player > 0 and cunts of player > 0]balls throb with increased production and your wet folds flow with feminine juices[else if cocks of player > 0]balls throb with increased production[otherwise]wet folds flow with feminine juices[end if] as the aphrodisiac increases your production of sexual fluids to satisfy your plant lover's bodily thirst for them. Fucking the whole time, you suck at those nipples for every last drop before Joanna releases your head.";
		decrease humanity of player by ( ( lust of Joanna * 2 ) + 2 );
		increase libido of player by 50;		[increase before later dropping at climax]
		if lastjoannajuice - turns > 15, now thirst of player is ( thirst of player * 7 ) / 8;
		now lastjoannajuice is turns;
		wait for any key;


Section 8 - Pre-Plant Joanna

joannadogsaved is a truth state that varies. joannadogsaved is normally false.
joannaharoldtalk is a number that varies.

Dog Chase is a situation. The level of Dog Chase is 2.
The sarea of Dog Chase is "Outside".
when play begins:
	add Dog Chase to badspots of furry;
	add Dog Chase to badspots of guy;
	add Dog Chase to badspots of girl;

Instead of resolving a Dog Chase:
	if hp of Joanna is 0:
		say "     As you're travelling along, you hear the repeated call of 'Squirrel! Squirrel!' coming from nearby. Curiously cautious, you approach the sound to find a small dog-man barking the word repeatedly, running around an isolated tree. From time to time, the Jack Russell terrier tries to scramble up, but he's mostly quadrupedal and his hands are mostly paws, preventing him from getting a grip. 'Squirrel!' he barks again, finally eliciting a response from the tree's occupant[if daytimer is day]. 'Shut up, you stupid mutt! I'm trying to sleep,' a female voice yells angrily[otherwise]. 'Shut up, you dumb mutt. I told you, I'm not a squirrel,' a female voice yells angrily[end if]. Looking at the canopy more closely, you spot a slender, feminine creature lying casually among the branches. She has short brown fur, long brown hair and a very long tail. And she still has some clothes on, so she could even be a survivor given her lack of lustful reaction to the dog.";
		say "     Deciding to risk it, you head closer, yelling at the terrier to get out of here. He turns and growls a little at you, but when the woman leaps from the tree wielding a large branch, the dog backs off, not wanting to fight two opponents. 'Damn it,' the woman grumbles as the dog runs off. 'Guy just wouldn't shut up. Too dumb to know I'm a kinkajou and not a squirrel,' she says, turning to smile at you. 'Thanks for helping out back there. I'm Joanna, by the way.'";
		say "     Once the introductions are aside, you chat with her a bit[if daytimer is day]. 'I'm normally trying to rest during the day, but that dummy wouldn't let me sleep. Speaking of, I should really be getting some rest. I was up all night dancing at the club[otherwise]. 'I was on my way to club for another night of dancing when I ran into that dummy. Speaking of, I should head on over while there's still a night to dance away[end if]. Yeah, there's still a club open to hang out at, called the Palomino. I'm usually there most nights. I hope to catch you there some time[if PALOMINO is known].' You tell her that you've been there before and that you'll have to swing by to see her some time[otherwise].' She gives you some rough directions to the place, which include stuff like [']turn at this tree['] or [']run three rooftops over['], but you're pretty sure you'll be able to sort it out and find a more conventional route there[end if]. With that, she heads off, going from a car roof to an awning and then to the top of a building before moving out of sight.";
		now PALOMINO is known;
		now hp of Joanna is 90;
		now joannadogsaved is true;
	else:
		say "     You catch the sound of barking dogs approaching and put yourself on guard. Moving to an alleyway, you watch as one of those husky girls playfully runs from a German Shepherd male. Their chase is loud and playful, with the husky merrily leading him around, though you're quite certain she'll eventually let the horny male mount her. You wait until they pass and their barking grows distant before emerging and continuing on your way.";
	now Dog Chase is resolved;

an everyturn rule:
	if hp of Joanna is 0 or hp of Joanna >= 90:
		if level of player < 9 and daytimer is night and Joanna is in the Flower Garden:
			move Joanna to PALOMINO;
		else if Joanna is in the PALOMINO:
			move Joanna to Flower Garden;

[  -- moved to Harold's conversation tree --
instead of conversing the Harold while level of player >= 9 and hp of Joanna is 92 and joannaharoldtalk is 0:
	say "     Going over to Harold, you inquire about Joanna, whom you haven't seen around of late. 'It's been a while, hasn't it?' he says. 'I think she mentioned something about going downtown to check out some overgrown flower gardens she'd spotted. I'm starting to get a little worried. You might want to head down to the high rise district and see if she's in an [bold type]overrun garden[roman type] around there. Just be careful if you do.";
	now joannaharoldtalk is 1;
]

to say joannaclubsex:
	say "     You wait for a moment when the kinkajou's not dancing to approach her. Joanna blushes a little at your offer, but grins and takes your hand in hers. 'Sure, lets have a little fun.' She guides you to one of the back rooms and kisses you as she closes the door. You run your hands over her body, helping her out of her clothes while she strips you.";
	if lust of Joanna is even:		[used temporarily to alternate scenes]
		say "     After breaking the kiss, Joanna moves down onto her knees. Taking your [cock of player] cock in hand, she runs her paws over it, then gives it a slow lick with her long tongue. Quite agile, the slick tongue slides over your manmeat before she leans forward and starts sucking you off. Her paws stroke and caress your thighs, then move to knead your balls. Moaning softly, you run your fingers through her long hair and rub her ears.";
		say "     Her tongue and muzzle work you eagerly, licking and sucking you until finally you can't hold back any longer. With a groan of pleasure, you cum hard, blasting your thick seed into her mouth and down her throat. As she licks it all up with her long tongue, she pumps her fingers into her snatch, soaking it in her feminine juices. Once you've both recovered from your climax, she wipes her paws and gives you another kiss before heading back onto the dance floor.";
	else:
		say "     After breaking the kiss, Joanna tugs you over to the nearby couch and pulls you down overtop her. Moving your hands to her breasts, you caress them. They are dainty B-cups, small compared to most of those you see around now, but she clearly enjoys the attention you give them. Leaning down, you nibble and suck her nipples while fingering her pussy. She chirrs with delight, spreading her legs and tugging at your cock, clearly tired of waiting and eager for some action.";
		say "     Guiding you into her dripping snatch slowly, she wraps her arms around you and moans in pleasure as you fuck her. Her pussy squeezes around your cock as you thrust. Holding yourself up with one hand, your other moves to keep playing with her nipples. After a good, long romp on the couch, you thrust deep into her and moan in pleasure, blasting your hot seed deep inside the kinkajou as she cries out in ecstasy. Once you've both recovered from your climax, she gives you another kiss before heading back onto the dance floor.";
	increase lust of Joanna by 1;
	now lastfuck of Joanna is turns;


Section 9 - Definitions

Definition: a person is plantfaced:
	if the facename of the player is "Parasitic Plant", yes;
	no;

Definition: a person is plantskinned:
	if the skinname of the player is "Parasitic Plant", yes;
	no;

Definition: a person is plantbodied:
	if the bodyname of the player is "Parasitic Plant", yes;
	no;

Definition: a person is plantcocked:
	if the cockname of the player is "Parasitic Plant", yes;
	no;

Definition: a person is planttailed:
	if the tailname of the player is "Parasitic Plant", yes;
	no;


[
[ hp of Joanna      ]
[ 0 = never met     ]
[ 1 = saved         ] = joannatalk = 0   //  joannaharoldtalk is 1   //  lust of joanna is 0
[ 2 = had oral/handjob            ] = 2+ joannatalk = 1  //  lust of joanna is 0
[ 3 = had sex                     ] lust = 0
[ 4 = more sex                    ] lust = 0
[ 5 = more sex                    ]
[ 6 = refused her seed on initial offer ] = joannaoffernum = 1  //  lust of joanna is 3+
[ 7 = accepted her seed ]  =  lust of joanna is 3+

[ 90 = helped w/dogs          ]  Dog Chase resolved, joannadogsaved is true, Palomino is known
[ 91 = asked Harold about her ]
[ 92 = chat w/Joanna          ]


[ lust of Joanna     ]
[ 0 = no plant exam  ]
[ 1 = had plant exam ]
[ 2 = drank Joanna's juice - transition ]
[ 3 = drank Joanna's juice ]
]


Section 10 - Endings

when play ends:
	if vinetrapped is 2:
		say "     You eventually awaken again as the flower petals open, allowing the morning sun to shine down on you. Drawing strength from its light, you start to rise, helped out of flower by several of the vines. Stretching your arms wide, you bask in the light and sigh in pleasure, feeling the pleasure of feeding all across your body. You don't know how long you stay there, your mind foggy and thinking little at all, but are woken from your reverie by another nearby flower opening. You walk over and help the lovely creature inside, a plant girl much like you, but with an animal face, muzzle and tail. For a moment, there's a passing memory as if you'd seen her before, but it fades away. She has lovely flowers in her green hair, a green plant-like body with red across her kinkajou face. Her long, red, tendril-tongue slides out and dives into your mouth and you can feel her cock tendrils begin to stir.";
		say "     After a long session of lovemaking on the grass where you put your vines and tendrils into one another while feeding from the sunlight, you finally look up and find the sun high in the sky. Feeling full and sated, you take your lover's hand in yours and follow a growing urge within you both to leave and find another place to set down your roots, this one fully overgrown by the giant plant. Kissing the giant plant's vines and bulbs, you both suck sweet juices from them before going. Again taking her hand in yours, you entwine your viney fingers and, with some effort to uproot yourselves, head on your way.";
		say "     You travel with your companion across the city. Travelling across the paved streets is unpleasant, not being able to feel the earth or dig into the soil, but you do so whenever you can to refresh yourselves. While most of the creatures of the city stay out of your way, you do end up fighting with some on your journey and you make sure to leave them full of sticky nectar and sap, hoping they'll share in the joy of becoming peaceful plants instead of squabbling mammals. And with all the fighting going on at the city's edge, you and your companion are able to slowly creep past the lines of those fighting mammals (humans, was it?) during a conflict. It is slow going and it's very tempting to lay down your roots and stop, but you encourage one another to keep going, wanting only the best of locations for your lover. Having grown some small branches and leaves to look like bushes, you move with the patience of a growing plant and creep inches at a time while they fight around you with the other creatures.";
		say "     Once you're safely past them, you are able to continue on until you find a lovely riverbank glade and set down your roots permanently, sharing the pleasure of this sensation by entwining your vines with your companion and sharing nectar and sap with her. You would not have made it here without her and now you have this place to share with her and make into a plant paradise together. You grow and spread out your vines across the glade, quite pleased when the occasional human mammal is drawn into your glade by the lovely scent of your flowers. Working together, you easily manage to subdue them, milking them for their nutrients and filling them with a seed of a plant of their own to start changing them. These converts help you grow and spread further, as well as bring you more new converts to spread your plant offspring out from your hidden glade.";
		if hellHoundLevel > 0:
			say "     With your mind almost completely erased by your transformation into a plant, you forget about your pact with the hellhound. But he does not forget. Having given into your life as a corrupting plant creature infecting others, your dark contract has only been delayed to prepare you for a new role in the afterlife.";
			say "     When that times comes at the end of your long life as a plant, you are pulled into the pits of Hades and given a life of as a foul tree there. Having spent centuries growing and corrupting others in life, your body is now twisted and turned to new, dark aims on your unending task to satisfy the lustful urges of the demonic hounds. They mark your large trunk with their foul, burning urine, letting its corruption seep into you. Your vaginal flowers are fucked by the hound's cocks and your tendrils made to pump your tainted fluids into their bitches. Your branches grow dark fruit which break open and release plant-like hounds to add to Hell's numbers.";
		stop the action;

when play ends:		[See Parasitic Plant for player specific endings]
	if hp of Joanna > 0 and hp of Joanna < 90:
		say "     Joanna remains in the infected city when the military rolls through, happy with her new life in her garden. It becomes a safe rest stop for visitors and explorers of the city. She always welcomes them and makes many friends among them, sharing her beautiful and lustful body with them to satisfy their urges[if hp of Joanna >= 5]. She soon gets the nickname of [']Kinky Jo['], notorious for being up for pretty much any kind of fun imaginable with those who come to share in her garden's beauty[else if hp of Joanna > 2]. Being a lustful plant herm, she's happy to please any guests to her lovely garden in numerous ways[end if]. ";
		if humanity of player >= 10:
			say "     These visitors help you keep in touch with her, carrying the occasional letter to her. She writes about her peaceful, happy life and the various visitors and friends she's made, always thankful for your timely rescue and continued friendship[if player is plantbodied and plantdefeat > 0]. She particularly enjoys hearing about your happy life as a lustful plant and sharing the plant seeds with your orgy group[end if].";

Joanna ends here.
