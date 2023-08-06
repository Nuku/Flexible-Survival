Version 1 of Hazel Summers by Prometheus begins here.

[Human NPC - Daughter of General Summers]


Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Hazel Summers	"Hazel Summers"

Hazel Summers is a woman.
ScaleValue of Hazel Summers is 3. [5' 6"]
Body Weight of Hazel Summers is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Hazel Summers is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Hazel Summers is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Hazel Summers is 4. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Hazel Summers is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Hazel Summers is 4. [length in inches]
Breast Size of Hazel Summers is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Hazel Summers is 2. [count of nipples]
Asshole Depth of Hazel Summers is 8. [inches deep for anal fucking]
Asshole Tightness of Hazel Summers is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Hazel Summers is 0. [number of cocks]
Cock Girth of Hazel Summers is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Hazel Summers is 0. [In Inches]
Ball Count of Hazel Summers is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Hazel Summers is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Hazel Summers is 1. [number of cunts]
Cunt Depth of Hazel Summers is 8. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Hazel Summers is 1. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Hazel Summers is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Hazel Summers is false.
PlayerRomanced of Hazel Summers is false.
PlayerFriended of Hazel Summers is false.
PlayerControlled of Hazel Summers is false.
PlayerFucked of Hazel Summers is false.
OralVirgin of Hazel Summers is false.
Virgin of Hazel Summers is true.
AnalVirgin of Hazel Summers is true.
PenileVirgin of Hazel Summers is true.
SexuallyExperienced of Hazel Summers is false.
TwistedCapacity of Hazel Summers is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Hazel Summers is false. [steriles can't knock people up]
MainInfection of Hazel Summers is "Human".
Description of Hazel Summers is "[HazelSummersDesc]".
Conversation of Hazel Summers is { "Hello" }.

the scent of the Hazel Summers is "Hazel Summers smells mostly of the city; sweat, semen, dust, and a little fear, though there is the scent of coffee beneath it all."

to say HazelSummersDesc:
	say "     Hazel looks like a normal young woman, if normal were actually a quantifiable thing. Her fiery-red hair hangs just past her shoulders, held out of her lively amber eyes by an ordinary black headband. The pale skin of her face is dusted with freckles, especially over her nose. Her white and red dress goes down to about mid-thigh and looks to be tailored specifically to her with how well it fits, her C-cup breasts firmly contained by the soft fabric. Her look is finished off by black tights and scuffed combat boots.";
	say "     She smiles as she sees you looking at her, nonetheless twisting slightly in bashfulness. Overall she is a cheerful and extroverted woman, but being so definitely the center of attention causes her to become a little shy. She seems happy to mingle with others, unconcerned about potential infection by the nanites especially when there is the chance to make new friends. When conversation turns sexual, she becomes delightfully squirmy, blushing but unable to turn away as her eyes go wide and she covers her mouth, mumbling to herself.";

Instead of conversing the Hazel Summers:
	say "     As you indicate that you would like to talk, Hazel looks up from reading '[one of]The Moon Also Rises[or]Lady of the Rings[or]Black Fang[or]The Very Hungry Snail[at random]'. 'What would you like to talk about?' she asks as she inserts a bookmark and stands up.";
	say "[HazelSummersTalkMenu]";


to say HazelSummersTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "About Her";
	now sortorder entry is 1;
	now description entry is "Ask Hazel to tell you a bit about herself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 2;
	now description entry is "Boop Hazel on the nose";
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
				if (nam is "About Her"):
					say "[Hazel SummersTalk1]";
				else if (nam is "Boop"):
					say "[Hazel SummersTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Hazel, shaking your head slightly as she gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Hazel SummersTalk1:
	say "     'Forgotten what I told you already? My name is Hazel and I'm twenty-two. My Dad is a general and-' Seeing your bemused expression, she can't stop herself laughing. 'Fine, chill. My parents have been in the army all my life so I spent quite a lot of time around the military bases growing up, though I had few months living with my grandparents when dad was on active duty. It was tougher when I was old enough to understand that there was the chance that he would never come back. I suppose he may be feeling a similar thing now. With my protection detail gone, he won't know that I've found somewhere safe...' Hazel seems lost in thought and you give her a moment before asking her to tell you more about her childhood in an effort to distract her. 'I got to mix with all sorts of kids, some of them locals, some of them military brats like me. I tended to avoid the ones that wanted to play war though. I met so many interesting people, yet as soon as we moved to the next posting, I might never see them again.'";
	say "     'I guess this is why I put so much effort into making a good first impression, not that I had that chance with you. If someone likes me, they might give me their phone number or something, though so far all I've had is boys trying to get into bed with me. I mean, how hard is it to get to know someone before trying to get them naked? The worst was one person who wanted me to do things in a public restroom! Ewww! But I'm being gross and getting off topic. I like reading, I don't suppose you've noticed given the subtlety with which I do it,' she jokes gesturing to the obvious stack of books on the table behind her. 'There's something magical about being transported to another world, even if it's similar to this one, and pretending to be someone else. Someone with lots of friends, perhaps more intelligent, and certainly less restrained in expressing their feelings! But as soon as I close the book, I'm back here, just plain, prudish me.'";
	WaitLineBreak;
	say "     'Oh well, I suppose I'll never get a better chance to meet lots of different people to make friends with, even if they are lust-driven animal people as the result of science gone  mad. Actually, I think I saw a book like this somewhere, where did I put it? I'll have to look for it again later, assuming that I remember. What else is there to say about me? I have three brothers and a sister. I'm the second youngest, but as far as I know, none of them are in this part of the country. I was here looking after my aunt and uncle's house while they went on a tour of the wineries in Europe. I part-timed at a cafe by the beach, but I doubt that I'll still be employed when all of this is over. Even if the building is still standing, I doubt the health inspector would be impressed. Hmm. My parents have way more stories than me, but a lot of them are confidential. I think that's about it for me though.' Laughing, you thank her for sharing leave her to her books.";

to say Hazel SummersTalk2:
	say "     Hazel is rather startled when you boop her on the nose, lurching back a bit before realizing what just happened and beginning to laugh. 'Stop it, I'm not a dog,' she protests between giggles, swatting your finger away as you threaten to do it again. Eventually you relent, smiling as the young woman leans up against you companionably for a few seconds before returning to her book.";

Section 2 - Sex

instead of fucking Hazel Summers:
	say "     'Sex? With you? Ummm. No. Not at the moment. Sorry. I'm grateful for you saving me but... No. Sorry.' Hazel blushes and covers her face self-consciously, peeking at you between her fingers. (WIP)";

Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
Valuable Hostage	"Valuable Hostage"

Valuable Hostage is a situation.
ResolveFunction of Valuable Hostage is "[ResolveEvent Valuable Hostage]".
The level of Valuable Hostage is 20.
Sarea of Valuable Hostage is "Outside".
when play begins:
	add Valuable Hostage to BadSpots of FemaleList;

to say ResolveEvent Valuable Hostage:
	say "     'Help! Somebody help me!' a female voice cries from what sounds like the next street. Impulsively, you dodge between two husks of cars and, keeping low, hurry to see what is happening. Peering around the corner of a gutted cafe, you see a copper-haired, surprisingly human, woman ineffectively kicking at a pair of laughing orcs as they drag her back towards a third, their captive screaming for help as she struggles in vain. Just as you are considering whether you should intervene, you recoil as a bright shape hurtles from above, revealed as an angel as it lands surprisingly lightly a few meters to the side of the slavers, a bifurcated spear clasped in one hand. Despite the long honey-blonde hair wafting on a non-existent breeze, it is difficult to tell if they are male or female. 'Unhand her, or someone loses an arm,' the stern, but decidedly feminine voice commands, her wings fading into the back of her armor. No-one moves other than the struggling human, the orcs staring at the angel defiantly.";
	say "     'There will not be a third warning and you won't make it far if you try to run. Release her now and I'll allow you to leave without punishment.' You cautiously approach, ensuring that you remain out of sight, readying yourself to jump in should the exchange result disfavorably. Perhaps thinking that three against one favors them, the orcs advance on the angel, one of them quickly binding the woman's arms and legs behind her. 'Gods, how dense are you? I am armed, armored, and unafraid of you. Does that not give you puase?' the angel snorts. 'Fine. Allow me to make it a little more even.' She slams her spear into the ground haft first, leaving it there as she approaches her foes. To their credit, the orcs have the sense not to attack her one on one, two of them attempting to flank her while the largest roars and charges headlong into her, sending her feet scraping backwards across the asphalt with the force behind it.";
	WaitLineBreak;
	say "     However, it fails to knock her over and leaves the orc vulnerable to her counter attack as she brings her fists down on the back of his neck then drives a knee up into his face. Grabbing him by the hair before he can collapse, the angel hurls him to sprawl across the ground senseless in front of one of his accomplices. 'Who's next?' she taunts. With the orcs distracted and the outcome of the battle certain in your mind, you creep towards the bound woman and begin to loosen her bonds, whispering reassurance of your noble intentions. As the ropes fall away you whisper for her to remain quiet before glancing over to see the state of the battle, the slavers circling around the celestial warrior, neither wanting to make the first move but not willing to accept defeat quite yet. 'My turn then? How polite.' The orc on the left has only a moment to watch as the angel's wings flare out again before she is barrelling towards him. Though he manages to deflect her shoulder, she scythes his legs out from under him as she flies past, agilely circling around to knock him out to with an elbow.";
	say "     You would have thought that now would be a good time for the last orc to surrender, especially with the ease with which his allies were bested, but whether due to pride, rage, or stupidity, he roars and charges at the angel. Swinging a punch into her jaw, you feel a moment of horror as her head lurches to the side and she stumbles, giving the orc a chance to grab her by the hair and ram his forehead into her face. When the angel straightens up again, both you and the woman sigh with relief. 'I may be weaker here, but you needed to do better than that. More like this,' she chuckles darkly. With the speed of a striking snake, the celestial escapes the orc's grasp and slams her elbow into his ear, causing him to collapse to the ground gracelessly. 'This is why you should wear armor,' she addresses her unconscious adversaries before collecting her spear and approaching you.";
	WaitLineBreak;
	say "     'I'm pleased to see that not everyone has forsaken kindness,' the angel praises you as you help the woman to her feet. 'That was amazing! Where did you learn to fight like that?' the human woman asks. 'Thank you. A mixture of tutoring and experience on the battlefield,' comes the reply. Now that the angel is closer, you can see the scars of past wounds on her face and neck, with more doubtless beneath her armor. 'My father wouldn't let me join the army. He said that it would destroy who I am,' the red-haired woman responds. 'But where are my manners? Thank you for rescuing me. I wasn't sure that anyone would. My name is Hazel. Hazel Summers.' She gives you a quick hug before doing the same to the warrior, dwarfed next to her. 'A pleasure to meet you Hazel. I am Solariel, daughter of Ishariel. My interference will likely be scrutinized, but I couldn't stand by and do nothing. My parents raised me to be better than that.'";
	say "     'Your parents? I didn't know that angels had parents, I thought that there was just...' Hazel leaves the question hanging. 'Ah. I don't know how [italic type]your[roman type] angels work, but I have a mother and father and innumerable siblings, some of which would have comments on how I fought. I can just imagine Belliandra's smug face, not to mention Illiana spouting about how magic is superior. Stupid sorceress...' Solariel briefly descends into incomprehensible grumbling before remembering that she isn't alone. 'Aaanyway, you should probably find somewhere safe to take shelter, perhaps with [name of player] here, until the city becomes a little safer. These nanites are causing chaos.' 'The whats?' Hazel asks with confusion. 'Oh! I assumed given that- Well, I'll let someone else explain. The technology is still weird to me. But my point stands, find somewhere safe. I may check in from time to time, but there may be other people out here that need me, so I can't be your personal guardian,' Solariel apologizes.";
	WaitLineBreak;
	say "     She turns to you. 'Look after Hazel. If she comes to harm due to negligence or evil intent, there won't be anywhere that you can hide from me,' the angel warns with a wide smile, her head tilted. 'With that said, I should be going. People to help, a city to explore. Fare thee well, both of you.' Solariel propels herself skyward and soars away, leaving Hazel to stare at you awkwardly. 'Do you mind if I go with you? I know that she didn't really give you that option and I want to be sure that it's okay with you,' she asks.";
	say "     [bold type]Shall you allow her to return with you to the library?[roman type][line break]";
	let Hazel_Rescue_Choices be a list of text;
	add "Yes. She seems nice enough." to Hazel_Rescue_Choices;
	add "No. Leave her to find somewhere else safe." to Hazel_Rescue_Choices;
	let Hazel_Rescue_Choice be what the player chooses from Hazel_Rescue_Choices;
	if Hazel_Rescue_Choice is:
		-- "Yes. She seems nice enough.":
			LineBreak;
			say "     'Thank you so much. Just let me collect my bags and then we can go to wherever it is that you call home.' You follow her as she finds a path between the cars, soon finding a travel case and a handbag that were likely dropped when the orcs caught her. 'Perhaps if I'd dropped them sooner, the orcs wouldn't have caught me, but theyre my only clothes and I didn't want to lose them,' she admits as she crouches down to make sure that nothing has been lost from them. You suppose that that explains why the slavers were outside their usual area. 'All set. I can tell you a bit about myself while we walk,' Hazel says brightly[if BodyName of Player is listed in infections of NoLegList]. You raise an eyebrow. 'Fine. Slither,' she giggles[end if]. You comment that she seems to be surprisingly comfortable with you, especially as she only met you a few minutes ago. 'I like people and I'm good with them. As I said earlier, my dad didn't want me joining the army because my personality was so opposite of what might be required. I know that technically I would be quite the valuable hostage, but the angel seemed to think that you were alright and if you can't trust an angel, then who can you trust?' she replies.";
			say "     'You already know my name, but my dad's a general in the army and my mom is a psychologist for the military. You can imagine the number of forms that they would have had to fill out when they started dating,' Hazel laughs. 'I'll be turning twenty-three in a few months, but I don't know what I want to do with my life. I've tried a few different jobs, but nothing has really spoken to me on a deeper level. Maybe I should go to college and see if that helps? It would certainly look better on my resume.' Curious, you ask what she is doing alone in the city, nearly being kidnapped by orcs you might add, when her father is so high in the military. 'No one is allowed out of the city, except soldiers and approved scientists. If daddy made an exception for me, how could he say no to saving the families of any of the other soldiers. It hurts, but I can see the logic behind it, especially when he'd have to explain it to his superiors.'";
			WaitLineBreak;
			say "     'But to answer the first part of your question, I wasn't alone at first. My father had two soldiers sent in to protect me. Everything was fine at first, but those orcs were seen snooping around and it was decided that it would be best if we moved locations. As we were leaving, the orcs came back and one of the soldiers stayed behind to delay them while the other one and I ran. We were so focused on looking where we were going and behind us, that we didn't look up and the other soldier only managed to push me aside at the last second before he was snatched by one of those dragons that spit weird goop. I'm not much of an athlete, so it didn't take the orcs long to catch up. After that, you know what happened.' Hazel stops for a moment to catch her breath, flashing you an apologetic smile. You are left with another question though. She appears to be entirely human, unless she's hiding something beneath her dress and tights. How has she managed this?";
			say "     'Some weird guy in a trenchcoat and mask came to the apartment and gave me some injections, similar to the ones that my guards seemed to use. He seemed familiar with my father and had the right documents to stop the soldiers shooting him, so I assumed that dad had called in a favor with GSX. Otherwise it could be that I haven't really left my home since people started turning into animals. They seem so obsessed with... sex,' Hazel almost whispers, looking at you almost as if you are about to scold her for saying a dirty word. When you don't start shouting at her, she continues. 'The angel said something about nanites causing this all. What are they?' For the rest of the trip back to the library, you explain what you know about the nanites and what is happening in the city, conveniently finishing as you walk through the front doors. 'Oh my... That's a lot to think about,' Hazel murmurs. With so much weighing on her, you decide that you'll introduce her to her fellow library residents another time, guiding her down into the bunker while she is lost in thought.";
			now Resolution of Valuable Hostage is 1;
			move Hazel Summers to Bunker;
			move player to Bunker;
			now HP of Hazel Summers is 1;
		-- "No. Leave her to find somewhere else safe.":
			LineBreak;
			say "     'Fair enough. Wish me luck then.' Without waiting for a reply, she hurries away, fearfully glancing around. With a shrug, you continue with your day, barely wondering if you'll ever see her again.";
			now Resolution of Valuable Hostage is 2;
	now Valuable Hostage is Resolved;

Hazel Summers ends here.
