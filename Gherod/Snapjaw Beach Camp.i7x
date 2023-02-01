Version 1 of Snapjaw Beach Camp by Gherod begins here.

"Adds the Snapjaw Beach Camp to the game."

[Version 1 - File Created]

Section 1 - Locations and Rooms

Table of GameRoomIDs (continued)
Object	Name
Snapjaw Beach Camp	"Snapjaw Beach Camp"

Snapjaw Beach Camp is a room. It is a fasttravel. Snapjaw Beach Camp is private.
Snapjaw Beach Camp is north of Snapjaw Beach South. It is sleepsafe.
Description of Snapjaw Beach Camp is "[SnapjawBeachCampDesc]".

to say SnapjawBeachCampDesc:
	say "     What would be an otherwise pretty normal small beach has now been turned into a lively spot with wooden shacks on the sand for all the sharkmen in here. They are not many, but they surely have done a good job to make this place look festive and homey, even. They mostly serve as small resting spots, though there is an improvised bar counter and barrels potentially holding drinks inside. On one of the sides of the beach, they even managed to bring a campervan to complement their little society. In the center, there is a campfire that is only lit at night, and just ahead of it, one strange structure resembling a totem.";
	say "     The beach itself extends towards [bold type]south[roman type] for a little bit, and further [bold type]north[roman type] towards the protruding cliff, just before a narrower sandy pathway.";

instead of smelling Snapjaw Beach Camp:
	say "     There is this fresh breeze from the sea that brings you a salty scent, quite pleasant and liberating.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Snapjaw Beach South	"Snapjaw Beach South"

Snapjaw Beach South is a room.
The earea of Snapjaw Beach South is "High".
Description of Snapjaw Beach South is "[SnapjawBeachSouthDesc]".

to say SnapjawBeachSouthDesc:
	say "     The sharkmen's constructions are fewer and fewer towards this area, until the point there is just the beach and the sea converging closer and closer to one another as the sand grows scarcer. It is the end of the beach and the lowest point of the cliff, which could be a connecting point to the area above. Past several palm trees and looming over in the distance are the tall buildings of High Rise District, which leads you to believe you could set on an [bold type]exploration[roman type] route from here. There is not much else in here, as the sharkmen prefer to linger back [bold type]north[roman type] and stay away from most of civilization, or whatever is left of it.";

instead of smelling Snapjaw Beach South:
	say "     There is this fresh breeze from the sea that brings you a salty scent, quite pleasant and liberating.";

	[---]

Table of GameRoomIDs (continued)
Object	Name
Snapjaw Beach North	"Snapjaw Beach North"

Snapjaw Beach North is a room.
Snapjaw Beach North is north of Snapjaw Beach Camp. It is sleepsafe.
Description of Snapjaw Beach North is "[SnapjawBeachNorthDesc]".

to say SnapjawBeachNorthDesc:
	say "     A cozy sandy area set towards an inner corner of the cliff, which fortunately seems to have been secured from potential falling boulders. Here is where the sharkmen keep most of their party material, stock and supplies, as well as their homely abodes. From the countless barrels and crates to the shacks and hanging clothes, you can tell these sharkmen seem to have been able to get through just fine. One could only wonder how they could find that much wood to make all this...";

instead of smelling Snapjaw Beach North:
	say "     There is this fresh breeze from the sea that brings you a salty scent, quite pleasant and liberating.";

Section 2 - NPCs

Section 2-1 - Skyler

Table of GameCharacterIDs (continued)
object	name
Skyler	"Skyler"

Skyler is a man.
ScaleValue of Skyler is 4. [normal sized]
Body Weight of Skyler is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Skyler is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Skyler is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Skyler is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Skyler is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Skyler is 8. [length in inches]
Breast Size of Skyler is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Skyler is 2. [count of nipples]
Asshole Depth of Skyler is 16. [inches deep for anal fucking]
Asshole Tightness of Skyler is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Skyler is 2. [number of cocks]
Cock Girth of Skyler is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Skyler is 16. [length in inches]
Ball Count of Skyler is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Skyler is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Skyler is 0. [number of cunts]
Cunt Depth of Skyler is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Skyler is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Skyler is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Skyler is false.
PlayerRomanced of Skyler is false.
PlayerFriended of Skyler is false.
PlayerControlled of Skyler is false.
PlayerFucked of Skyler is false.
OralVirgin of Skyler is false.
Virgin of Skyler is true.
AnalVirgin of Skyler is false.
PenileVirgin of Skyler is false.
SexuallyExperienced of Skyler is true.
TwistedCapacity of Skyler is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Skyler is false. [steriles can't knock people up]
MainInfection of Skyler is "Sharkman Brute".
Description of Skyler is "[SkylerDesc]".
Conversation of Skyler is { "<This is nothing but a placeholder!>" }.
The scent of Skyler is "     He smells like the salty sea with a hint of masculinity, a quite fresh scent.".

to say SkylerDesc:
	say "     Skyler is a nice, handsome and quite tall hybrid between a man and a shark, with the head of one and the body of mostly a human. His scales are mostly dark gray and white towards the inner areas, which if stroked the right way feel very smooth, and a large shark tail keeps swinging around behind his very muscular and toned figure. He is almost always smiling, with those many sharp teeth giving out a slightly terrifying visage were it not for his lovable and cheerful attitude. As for his clothes, sometimes you can see him wear swim trunks, other times just a pareo, but often he is simply naked, like right now. Between his thick legs there is only a slit, where you know two large red cocks hide behind.";

SkylerDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 2-1-1 - Skyler Talk

instead of conversing Skyler:
	say "     You approach Skyler, who seems very happy to see you as soon as you jump into his field of view. 'Hey there! Is there anything I can do for you?' he asks with a big toothy smile.";
	WaitLineBreak;
	say "[SkylerTalkMenu]";

to say SkylerTalkMenu:
	now SkylerDoneTalking is false;
	say "     [bold type]What would you like to talk about with Skyler?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the big sharkman about himself";
	[]
	if Energy of Skyler > 0:
		choose a blank row in table of fucking options;
		now title entry is "The camp and the other sharkmen";
		now sortorder entry is 2;
		now description entry is "Ask the big sharkman about his people";
	[]
	if Energy of Skyler > 1:
		choose a blank row in table of fucking options;
		now title entry is "Ask him for a scale";
		now sortorder entry is 2;
		now description entry is "Ask Skyler to give you one of his scales";
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
				if (nam is "Himself"):
					say "[SkylerTalkHimself]";
				else if (nam is "The camp and the other sharkmen"):
					say "[SkylerTalkCamp]";
				else if (nam is "Ask him for a scale"):
					say "[SkylerTalkScale]";
				wait for any key;
				if SkylerDoneTalking is false:
					say "[SkylerTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Skyler gives a polite nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SkylerTalkHimself:
	say "     You find yourself wanting to know a bit more about Skyler's story, so you figured you could simply ask him about it. He is happy to share some of his background with you. 'I used to be a professional swimmer in high competition! Hard to believe, right? So, I'm not sure how much you paid attention to sports and stuff like that? I was a big shot, scoring high in nationals, and suddenly...' His smile breaks off as he gets to this part, 'I was at a party celebrating a recent victory I had when all of this happened. None of my friends escaped unscathed, and I fear most of them have lost their minds to the infections... I barely outran some of them who decided to chase me... And then, I was all alone, unsure where to go or even what to do... It was fucking miserable.'";
	say "     'But then, some weird dude appeared. He had horns and a beard, was really red too, and had this really odd flame hovering above his head? And apparently he was my fan too, which I think was the main reason why he wanted to help me. He said something similar to [']Well, it'd be a shame to see my favorite swimmer succumb to this unfortunate apocalypse, so how about I give you something to keep you safe?['] And guess what happened next? This fucking massive campervan appears out of absolutely fucking nowhere and he gives me a key. Then he also gave me this weird drink and said that it'd give me strength, though it would have a few consequences. I chugged it down right there and then, and boom, I turned into a sharkman.'";
	WaitLineBreak;
	say "     Hearing this, you argue that he could have probably asked about what that drink would actually do to him. 'I was fucking desperate! And thirsty as hell! So I just took that, seemed like water... And it felt good! Like, it tasted really good and my thirst was gone, but then I gained scales and fins and this really fucking huge mouth with all the teeth in it, holy shit if it didn't catch me off guard! But... I guess you're right, I should've been more careful. Not that I hate the outcome, mind you... I'm still handsome, sexy as fuck, and now I can swim really fast!' That explains how he turned into a sharkman, but perhaps you could ask about the others in the camp, as well.";
	if PlayerMet of Mogdraz is true:
		say "     [italic type]That red horned person with a flame above his head... Sounded oddly like Mogdraz. You definitely did not know the Demon Lord of the Hellfires was a fan of swimming sports, nor sharks. Well, thinking twice... Maybe he would be a fan of sharks, of all the things in the sea...[roman type][line break]";
	if Energy of Skyler is 0:
		now Energy of Skyler is 1;

to say SkylerTalkCamp:
	say "     Curiosity leads you to ask him about the camp and the others who live here, including the fact they are also sharkmen now. 'Uuuh... Yeah, that... That may have been my fault? You see, I'm sure you could tell that I'm a really horny bastard... And, boy, I saw this really cute guy running away from some husky dudes, went in, saved him, we got to talk and I couldn't fucking take my eyes off his ass! I'm talking about Kody, by the way, that ass is just fucking perfect...!' You can see he really means what he says by how two red tips begin to emergy from his slit. He rushes to cover them with his hand. 'Right, uh, anyway... We got to talk, one thing led to another, he found the idea of fucking a sharkman hot and kinky, especially when he found out I had two dicks, and uh... It happened! We fucked and he turned.'";
	say "     You then ask about all the others, already having an idea about the answer... 'Yeah... Uh... Yeah. I... Fuck, I'm embarrassed, sorry...' It is obvious that he fucked them all. 'I might have accidentally created a sharkman community, is that so bad? Probably... It is... But hey, at least we're all happy! If you wanna be one too, maybe we just have to keep fucking! Or you take some of my scales. Honestly, I'm never sure how it works, myself... Sometimes it does, sometimes it doesn't... Weird science, huh?'";
	if Energy of Skyler is 1:
		now Energy of Skyler is 2;

to say SkylerTalkScale:
	say "     Since he mentioned it, you decide to ask him for a scale. 'Sure! I can give you one.' When you think he would just try to pluck one for you, he goes fetch a box where he keeps some. You ask no further questions as he hands you over exactly one scale. 'There's other things that work, too... Though those you might have to come get it yourself. It's more fun that way...' he says as his eyes glance over his crotch, then back to your face. 'Tastes better when drank right from the tap,' he adds with a wink.";
	ItemGain sharkman brute scale by 1;

Section 2-1-2 - Skyler Sex

[Skyler's sex menu is a bit different, as he is the main Sharkman Brute encounter, thus sharing his sexual scenes with the encounter itself. That menu will be used instead, although several checks can be made to make them available to either only the character or only the encounter. Maybe this will be eventually expanded into a sparring option.]

instead of fucking Skyler:
	if lastfuck of Skyler - turns < 2: [Sharkmen somehow have very low cooldowns]
		say "     You aim to propose Skyler for some fun, though he does not seem to be available for such. 'I'd love to! But give me a sec, I need a bit more time to recover from that last one. Ask me again in a bit!'";
	else:
		say "     You aim to propose Skyler for some fun, in which he seems very glad to partake. 'Oh yeah! Let's go for another round! What do you wanna do this time, any ideas?'";
		say "[SharkmanBruteSexMenu]"; [in Sharkman Brute file]

Section 2-2 - Caleb

Table of GameCharacterIDs (continued)
object	name
Caleb	"Caleb"

Caleb is a man. Caleb is in Snapjaw Beach North.
ScaleValue of Caleb is 4. [normal sized]
Body Weight of Caleb is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Caleb is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Caleb is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Caleb is 16. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Caleb is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Caleb is 8. [length in inches]
Breast Size of Caleb is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Caleb is 2. [count of nipples]
Asshole Depth of Caleb is 16. [inches deep for anal fucking]
Asshole Tightness of Caleb is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Caleb is 2. [number of cocks]
Cock Girth of Caleb is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Caleb is 18. [length in inches]
Ball Count of Caleb is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Caleb is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Caleb is 0. [number of cunts]
Cunt Depth of Caleb is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Caleb is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Caleb is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Caleb is false.
PlayerRomanced of Caleb is false.
PlayerFriended of Caleb is false.
PlayerControlled of Caleb is false.
PlayerFucked of Caleb is false.
OralVirgin of Caleb is false.
Virgin of Caleb is true.
AnalVirgin of Caleb is false.
PenileVirgin of Caleb is false.
SexuallyExperienced of Caleb is true.
TwistedCapacity of Caleb is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Caleb is false. [steriles can't knock people up]
MainInfection of Caleb is "Sharkman Brute".
Description of Caleb is "[CalebDesc]".
Conversation of Caleb is { "<This is nothing but a placeholder!>" }.
The scent of Caleb is "     He smells like the salty sea with a hint of masculinity, a quite fresh scent.".

to say CalebDesc:
	say "     This seems to be the bulky sharkman who handles all the building and woodworking. He definitely looks like a powerhouse capable of lifting just about anything he wishes, with muscles so massive they would make Skyler look small. His face is the fiercest of all the sharkmen, one truly terrifying one, and probably the widest, a group of attributes that would make anyone think twice before even thinking about provoking him in any way. He even has a thick scar going from above his left eye to the right side of his face in a diagonal. As for his attire, he seems to be wearing an improvised apron to protect him from wooden splinters, and you doubt he could find much else that would fit him, given his size. You can often see him making adjustments to the shacks or maintaining fishing equipment.";

instead of conversing Caleb:
	say "     << Author's Note: The bulky sharkman seems too busy to talk right now. Perhaps he will be able to, in the near future. >>";

instead of fucking Caleb:
	say "     << Author's Note: And since you cannot even talk to him, you doubt he would be down to sex. Maybe in the future he shall. >>";

Section 2-3 - Kody

Table of GameCharacterIDs (continued)
object	name
Kody	"Kody"

Kody is a man. Kody is in Snapjaw Beach Camp.
ScaleValue of Kody is 3. [normal sized]
Body Weight of Kody is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Kody is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Kody is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Kody is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Kody is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Kody is 8. [length in inches]
Breast Size of Kody is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Kody is 2. [count of nipples]
Asshole Depth of Kody is 12. [inches deep for anal fucking]
Asshole Tightness of Kody is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Kody is 2. [number of cocks]
Cock Girth of Kody is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Kody is 9. [length in inches]
Ball Count of Kody is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Kody is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Kody is 0. [number of cunts]
Cunt Depth of Kody is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Kody is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Kody is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Kody is false.
PlayerRomanced of Kody is false.
PlayerFriended of Kody is false.
PlayerControlled of Kody is false.
PlayerFucked of Kody is false.
OralVirgin of Kody is false.
Virgin of Kody is true.
AnalVirgin of Kody is false.
PenileVirgin of Kody is false.
SexuallyExperienced of Kody is true.
TwistedCapacity of Kody is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Kody is false. [steriles can't knock people up]
MainInfection of Kody is "Sharkman Brute".
Description of Kody is "[KodyDesc]".
Conversation of Kody is { "<This is nothing but a placeholder!>" }.
The scent of Kody is "     He smells like the salty sea with a hint of masculinity, a quite fresh scent.".

to say KodyDesc:
	say "     Oddly enough, this sharkman does not look like the others in here. He is much shorter, to the point his size would be comparable to an average male human adult, and he is more fit than muscular. What jumps to the eye is, however, a really prominent bubblebutt just underneath the base of his shark tail. While not looking nearly as strong as the bigger sharkmen, he still looks athletic and in shape, with the added perk of being able to wear shorts his size. Also, despite his shark face, you can find a hint of softness about it, making him seem a lot more naturally approachable, at first glance, than the others. You often see him reading a book or writing on one, though once you pass by him, he nods at you with a cheerful smile.";

instead of conversing Kody:
	say "     << Author's Note: The cute sharkman seems too busy to talk right now. Perhaps he will be able to, in the near future. >>";

instead of fucking Kody:
	say "     << Author's Note: And since you cannot even talk to him, you doubt he would be down to sex. Maybe in the future he shall. >>";

Snapjaw Beach Camp ends here.
