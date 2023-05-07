Version 1 of Snapjaw Beach Camp by Gherod begins here.

"Adds the Snapjaw Beach Camp to the game."

[Version 1 - File Created]

Section 1 - Locations and Rooms

a postimport rule:
	if PlayerMet of Skyler is true:
		move Skyler to Snapjaw_Beach_Camp;


Table of GameRoomIDs (continued)
Object	Name
Snapjaw_Beach_Camp	"Snapjaw_Beach_Camp"
Snapjaw_Beach_Camp	"Snapjaw Beach Camp"

Snapjaw_Beach_Camp is a room. It is a fasttravel. Snapjaw_Beach_Camp is private.
Printed name of Snapjaw_Beach_Camp is "Snapjaw Beach Camp".
RoomID of Snapjaw_Beach_Camp is "Snapjaw_Beach_Camp".
Snapjaw_Beach_Camp is north of Snapjaw_Beach_South. It is sleepsafe.
Description of Snapjaw_Beach_Camp is "[SnapjawBeachCampDesc]".

to say SnapjawBeachCampDesc:
	say "     What would be an otherwise pretty normal small beach has now been turned into a lively spot with wooden shacks on the sand for all the sharkmen in here. They are not many, but they surely have done a good job to make this place look festive and homey, even. They mostly serve as small resting spots, though there is an improvised bar counter and barrels potentially holding drinks inside. On one of the sides of the beach, they even managed to bring a campervan to complement their little society. In the center, there is a campfire that is only lit at night, and just ahead of it, one strange structure resembling a totem.";
	say "     The beach itself extends towards [bold type]south[roman type] for a little bit, and further [bold type]north[roman type] towards the protruding cliff, just before a narrower sandy pathway.";

instead of smelling Snapjaw_Beach_Camp:
	say "     There is this fresh breeze from the sea that brings you a salty scent, quite pleasant and liberating.";

[---]

Table of GameRoomIDs (continued)
Object	Name
Snapjaw_Beach_South	"Snapjaw_Beach_South"
Snapjaw_Beach_South	"Snapjaw Beach South"

Snapjaw_Beach_South is a room.
Printed name of Snapjaw_Beach_South is "Snapjaw Beach South".
RoomID of Snapjaw_Beach_South is "Snapjaw_Beach_South".
The earea of Snapjaw_Beach_South is "High".
Description of Snapjaw_Beach_South is "[SnapjawBeachSouthDesc]".

to say SnapjawBeachSouthDesc:
	say "     The sharkmen's constructions are fewer and fewer towards this area, until the point there is just the beach and the sea converging closer and closer to one another as the sand grows scarcer. It is the end of the beach and the lowest point of the cliff, which could be a connecting point to the area above. Past several palm trees and looming over in the distance are the tall buildings of High Rise District, which leads you to believe you could set on an [bold type]exploration[roman type] route from here. There is not much else in here, as the sharkmen prefer to linger back [bold type]north[roman type] and stay away from most of civilization, or whatever is left of it.";

instead of smelling Snapjaw_Beach_South:
	say "     There is this fresh breeze from the sea that brings you a salty scent, quite pleasant and liberating.";

	[---]

Table of GameRoomIDs (continued)
Object	Name
Snapjaw_Beach_North	"Snapjaw_Beach_North"
Snapjaw_Beach_North	"Snapjaw Beach North"

Snapjaw_Beach_North is a room.
Snapjaw_Beach_North is north of Snapjaw_Beach_Camp. It is sleepsafe.
Printed name of Snapjaw_Beach_North is "Snapjaw Beach North".
RoomID of Snapjaw_Beach_North is "Snapjaw_Beach_North".
Description of Snapjaw_Beach_North is "[SnapjawBeachNorthDesc]".

to say SnapjawBeachNorthDesc:
	say "     A cozy sandy area set towards an inner corner of the cliff, which fortunately seems to have been secured from potential falling boulders. Here is where the sharkmen keep most of their party material, stock and supplies, as well as their homely abodes. From the countless barrels and crates to the shacks and hanging clothes, you can tell these sharkmen seem to have been able to get through just fine. One could only wonder how they could find that much wood to make all this...";

instead of smelling Snapjaw_Beach_North:
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
Cunt Depth of Skyler is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
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

Caleb is a man. Caleb is in Snapjaw_Beach_North.
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
Cunt Depth of Caleb is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
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

Kody is a man. Kody is in Snapjaw_Beach_Camp.
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
Cunt Depth of Kody is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
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

Section 2-5 - Snapjaw

Table of GameCharacterIDs (continued)
object	name
Snapjaw	"Snapjaw"

Snapjaw is a man. Snapjaw is in Snapjaw_Beach_South.
ScaleValue of Snapjaw is 4. [normal sized]
Body Weight of Snapjaw is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Snapjaw is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Snapjaw is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Snapjaw is 16. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Snapjaw is 4.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Snapjaw is 8. [length in inches]
Breast Size of Snapjaw is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Snapjaw is 2. [count of nipples]
Asshole Depth of Snapjaw is 16. [inches deep for anal fucking]
Asshole Tightness of Snapjaw is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Snapjaw is 1. [number of cocks]
Cock Girth of Snapjaw is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Snapjaw is 21. [length in inches]
Ball Count of Snapjaw is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Snapjaw is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Snapjaw is 0. [number of cunts]
Cunt Depth of Snapjaw is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Snapjaw is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Snapjaw is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Snapjaw is false.
PlayerRomanced of Snapjaw is false.
PlayerFriended of Snapjaw is false.
PlayerControlled of Snapjaw is false.
PlayerFucked of Snapjaw is false.
OralVirgin of Snapjaw is false.
Virgin of Snapjaw is true.
AnalVirgin of Snapjaw is false.
PenileVirgin of Snapjaw is false.
SexuallyExperienced of Snapjaw is true.
TwistedCapacity of Snapjaw is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Snapjaw is false. [steriles can't knock people up]
MainInfection of Snapjaw is "Sharkman Brute".
Description of Snapjaw is "[SnapjawDesc]".
Conversation of Snapjaw is { "<This is nothing but a placeholder!>" }.
The scent of Snapjaw is "     He smells like the salty sea with a hint of masculinity, a quite fresh scent.".

to say SnapjawDesc:
	say "     Alone at the exit of the camp stands a towering sharkman with a mean look, who you can discern as some sort of guard of this whole place. However, judging by the size of the cottage near him, which seems to be his own home, you immediately understand he is no ordinary guard. Physically, this sharkman has bigger muscles than the others, a considerable amount of scars all over his body, including a large one across his eye on the right side of his shark muzzle, and wears only a stretchy red speedo, which shows the one big difference compared to the other sharkmen, the fact he has this enormous bulge. He shows it off proudly, with a confidence that might be as or more intimidating as his utterly impressive physique. As you approach him, he does not seem to pay you much attention, instead preferring to look over the distant horizon.";

[SNAPJAW WALKIN EVENTS]

SnapjawDoneTalking is a truth state that varies.[@Tag:NotSaved]

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Snapjaw_Intro"	Snapjaw_Intro	"[EventConditions_Snapjaw_Intro]"	Snapjaw_Beach_South	2500	8	100

to say EventConditions_Snapjaw_Intro:
	if Snapjaw_Intro is not resolved: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Snapjaw_Intro	"Snapjaw_Intro"

Snapjaw_Intro is a situation.
ResolveFunction of Snapjaw_Intro is "[ResolveEvent Snapjaw_Intro]".
Sarea of Snapjaw_Intro is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

[EVENT: SNAPJAW INTRO]

to say ResolveEvent Snapjaw_Intro:
	if Resolution of Snapjaw_Intro is 0:
		say "     As you walk towards the southern section of the beach, you begin to hear a rather angry voice, very deep and strong, almost making the whole ground beneath your feet rumble as it booms out of the cottage ahead. Judging by the extreme amount of cursing coming from there, you doubt whoever is speaking is all too happy for whatever is going on. In confusion, you are not quite sure if you should interfere, but as you were already heading this way and cannot help but question yourself what is going on in an otherwise rather peaceful place, you tread forward as you keep your eyes in the general direction of the voice's source. Once you are able to discern a few words as you close distance, you confirm that his speech is, indeed, filled with swearing.";
		say "     'You fucking shitheads think they can just waltz in here and take whatever the fuck you want under my nose, huh?! I could crush your smooth brain with my bare hands, you fucking bitch!' You hear it loud and clear, and it becomes evident who is saying this, as this enormous, muscular sharkman walks out of the cottage, his huge arm curled around a fox person's neck, bicep bulging bigger than his head, as he hangs in there, struggling for his freedom and kicking the air with his helpless legs. On the other hand, he seems to carrying a steel pipe, and judging by its size, it is presumably the alleged thief's weapon of choice to raid this settlement. Even you can tell it was not exactly the smartest choice, given what he would have to deal with and the clear, not only numbers, but also size and strength disadvantage. Judging by how effortlessly this sharkman is keeping hold of this poor fox guy, you can tell he is immensely powerful.";
		say "     Now that the sharkman is outside, your eyes meet as you exchange looks. He does not mind your presence much, however, and even smirks at you as he turns his attention back at the fox boy. You cannot really explain why, but there is this hunch you get that he may enjoy the fact you are watching...";
		WaitLineBreak;
		say "      Before you begin to fear for the furred stranger's life, since you doubt he can even breathe, the sharkman slams him down as he walks towards one of the exits of the beach. Though, not content enough with simply letting him go, the sharkman steps on the guy's back, pressing him against the sand and causing him to squeal. 'If I see your bitch-ass around here again...' he begins to speak, in a calm yet rather intimidating manner, 'You can bet I'll beat the shit out of it so hard you won't be able to walk.' Then, as he grins, he raises the pipe he was holding until now and, in an impressive display of strength, begins to bends the damn metallic thing with his bare hands! The entirety of his arm muscles, biceps, triceps and forearms pop and bulge massively throughout the whole process, and his mountains for pecs follow a similar direction as they pump outwards with the contracting movements of his torso, a show so amazing you cannot seem to take your eyes off him. Finally, once he bends the pipe into a full [']U['] shape, the sharkman throws it away, past the fox individual, and a quite significant distance.";
		say "     'Please... I'm sorry...! I-I... I promise I won't come back here, but please don't kill me...!' With the fox whimpering and begging for his forgiveness, he only laughs, 'Shut your fucking mouth!' the sharkman shouts back even before the thief finishes his plea, then moves his foot over his face and kicks it deep into the sand, causing him to squirm as he tries to cry out. 'So fucking dramatic... No one's gonna die here, but you gotta make it up to me somehow! For wasting my fucking time! The least that can be is entertaining me for a while...' He then eases up on the pressure and allows the intruder to bring his face off from the sand, coughing. 'I-I'll do anything! Anything you want!' You can swear his grin widens the more the fox begs for his forgiveness, and as you shift your eyes a little lower, you spot some twitching in his bulge. This could tell you a lot, but you would rather just stay where you are until this is over...";
		WaitLineBreak;
		say "     'Fucking hell... You're already starting to bore me with that fucking whimpering... So listen here, little cunt...' The sharkman crouches down near the fox boy's face, and with a loud clap, he smacks his butt so hard he squeaks. That large hand of his then slides under the shorts, and paying close attention to the movement happening under the fabric, you can tell what his fingers are probably going for. The big man then resumes speaking, 'You go fetch your stupid stick like a good bitch, take it along with your slutty whore-ass outta here, and never show your face around my territory ever again... Because if you do... I'll be claiming you as my new pet. I'll put you on a leash and make you fucking pay for being such a useless piece of shit, trying to steal from whom you shouldn't... You got that?' The fox whimpers as a response, and impatient, the sharkman repeats, very loudly, 'YOU GOT THAT OR NOT?!'";
		say "     'Y-yes, sir!' he gets his reply, and smiling to himself, he finally lets go off the thief, standing up once more and looking down on him as he scampers away. 'Now GET THE FUCK OUT! And take your fucking trash with you!' You then see the fox boy going back for his bent pipe, quickly grab it and run as fast as his legs can carry him. Once the show is over, the sharkman throws a mocking laughter as he looks at the poor guy struggling to sprint off. 'What a fucking loser... At least should've brought a proper weapon, it was hardly any challenge taking it off his tiny hands...' And it is then that a chill runs down your spine as he turns to you, before taking slow steps in your direction. This enormous, towering and incredibly muscular sharkman, scarred body and face, clearly a veteran of unarmed combat with immeasurable physical strength, is now looking down at you inquisitively as he cracks his knuckles.";
		WaitLineBreak;
		say "     Finally, with a grin on his shark muzzle, he addresses you, 'Snapjaw's the name. Not just a name, but the law, and you better remember it. I don't think I have to tell you what happens if you try anything funny around here, if your eyes work well enough.' You nod, acknowledging what you saw. 'Good... Keep behaving.'";
		say "     It seems you have just walked into both the security sharkman, and the one this camp is named after, who can apparently bend a steel pipe with his very own hands. It would be foolish to make him your enemy, that is certain...";
		now Resolution of Snapjaw_Intro is 1;
	else if Resolution of Snapjaw_Intro is 1:
		say "     While heading to the southern area of the sharkmen's beach, you lay your eyes on Snapjaw himself shortly after, and notice that the huge sharkman does not seem to be on watch. Instead, you see him holding this enormous boulder above his head, with one leg placed forward for stable support, and lifting the massive rock in the air with controlled and slow movements, moving it up and down as the entirety of his body's muscles bulge out and flex, all pumped up. He looks even bigger doing this as his muscles do their best to keep up with what is demanded of them, and you can even see drops of sweat running down his towering figure as you come in closer. He is not struggling with this at all, being able to raise and lower the boulder with so much discipline one would think he is actually doing this effortlessly.";
		say "     You stand and watch him do this, but his resolve remains solid. Perhaps he even likes the encouragement of an attentive audience, as your eyes run down his physique with every repetition... And Snapjaw sees this, as his gaze shifts towards you with a smirk forming across his shark muzzle. A brief look below reveals a significant twitch in the sizable bulge his cock makes in that red speedo, an indicative that he might very well enjoy this too. With his assumed permission, you simply continue to observe him as he brings that boulder up, then down, and up again... And at some point, he shifts the focus from his torso to his legs as he begins to squat. Those monstrous thighs of his easily keep up with the rhythm he had, every muscle fiber flexed and popping throughout the whole thing, prominently defined as they almost seem to grow before your eyes.";
		WaitLineBreak;
		say "     Snapjaw's physique finally starts giving signs of fatigue as he goes for his... Honestly, you have not been counting, but he has done this a lot of times by now. His physique begins to shake as he does his very last reps, aiming for that exhaustion point where his muscles simply refuse to work, and even that takes a while. He grunts loudly once he is at his limit, heavy breathing as more sweat runs down his body, and as he reaches the end, he musters all the energy he still has and hurls the boulder back onto the sand, still a few feet away from his position. He is now catching his breath, exhausted from that herculean effort, walks around for a bit before sitting down on the sand. He then looks over to you, who have been just staring at him, and utters a few words, 'Enjoyed the show, eh...?'";
		say "     There is this hint of manly musk as you approach him, something that screams masculinity in an oddly alluring way. 'It's nice having a fucking audience, for a change. Bet you were impressed...' He gives you a flex with one of his arms, and you can see his bicep practically jumping as it bulges out like a mountain, then lets out a low, though kind of smug, chuckle as he continues to talk, 'If only there were someone willing to [bold type]give these muscles a really fucking good worship[roman type]... Especially post-workout, they tend to like a more tender touch...' The sharkman continues putting on a show to you, raising his arms to show off his lats, but also gives you a good view of his armpits, soaked with the occasional droplet of sweat dripping down. He even bounces his pecs at the end, almost triumphantly, as he sees he has your attention.";
		WaitLineBreak;
		say "     'Anyway... Gotta keep working out these muscles, I'm not nearly done growing... Hehe...' He then gets up and walks away from you, now giving you a plain view of his toned back and rock hard glutes as his thick shark tail swings around behind, while he plans his next workout exercise. Perhaps it is best to leave him be. As much as he claims to love to be watched, it would be wise to not bother him too much. Perhaps in a bit he will be willing to talk, and if you both were in the mood for some fun, maybe [bold type]his muscles could still need some attention...[roman type][line break]";
		now Resolution of Snapjaw_Intro is 2;
	else if Resolution of Snapjaw_Intro is 3: [a repeat until more is added into this]
		say "     As you walk into the southern area of the sharkmen's beach, you lay your eyes on Snapjaw, who is currently";
		let randomnumber be a random number from 1 to 2;
		if randomnumber is:
			-- 1:
				say " standing on watch. By the looks of it, he seems quite bored, as it is per usual while the only thing he does is sentinel duty. You could probably go talk to him and see if he will not mind your company.";
			-- 2:
				say " in the middle of a workout, doing some pushups. At first, he does them normally, then shifts to one arm only and does it for each, keeping this up for a while until he decides to take a break. You could probably go talk to him and see if he will not mind your company.";

[EVENT: SNAPJAW WORKING OUT]

instead of conversing Snapjaw:
	say "     You approach the enormous sharkman, who looks down at you with his one good eye with apparent contempt. 'What d'ya want? Got lost or something?' he asks you with a deep and raspy voice that would definitely fit someone of his size.";
	WaitLineBreak;
	say "[SnapjawTalkMenu]";

to say SnapjawTalkMenu:
	now SnapjawDoneTalking is false;
	say "     [bold type]What would you like to talk about with the large sharkman?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Politely ask this huge sharkman to tell you about himself";
	[]
	if Energy of Snapjaw > 0:
		choose a blank row in table of fucking options;
		now title entry is "Respect from others";
		now sortorder entry is 2;
		now description entry is "Inquire how he actually gets paid or gifted by the other sharkmen";
	[]
	if Energy of Snapjaw > 1:
		choose a blank row in table of fucking options;
		now title entry is "How to show him appreciation";
		now sortorder entry is 3;
		now description entry is "Perhaps there is a way to get his approval, and if so, ask him how";
	[]
	if Energy of Snapjaw > 2:
		choose a blank row in table of fucking options;
		now title entry is "Sex";
		now sortorder entry is 4;
		now description entry is "Have the sex talk";
		[]
		choose a blank row in table of fucking options;
		now title entry is "His genitals";
		now sortorder entry is 5;
		now description entry is "He is clearly different than the other sharkmen. Ask him about it";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Superstrength";
		now sortorder entry is 6;
		now description entry is "You did see him bend metal with his own hands before. Ask him about it";
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
					say "[SnapjawTalkHimself]";
				else if (nam is "Respect from others"):
					say "[SnapjawTalkRespect]";
				else if (nam is "How to show him appreciation"):
					say "[SnapjawTalkAppreciation]";
				else if (nam is "Sex"):
					say "[SnapjawTalkSex]";
				else if (nam is "His genitals"):
					say "[SnapjawTalkGenitals]";
				else if (nam is "Superstrength"):
					say "[SnapjawTalkSuperstrength]";
				wait for any key;
				if SnapjawDoneTalking is false:
					say "[SnapjawTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Snapjaw grunts, returning his attention to whatever he does.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SnapjawTalkHimself:
	if Loyalty of Snapjaw < 10:
		say "     At first glance, you get the feeling this sharkman prefers solitude, but he also seems to be keeping watch over the camp. As several questions pop in your mind, you decide to ask him if he could tell you more about himself, in hopes to get to know him a little better. He chuckles, almost mockingly, but decides to entertain you as he leans over towards you, facing you head on. 'Well, aren't you a curious fucker... Let me tell you, then, I'm definitely not the one you should be bitching about with questions. Skyler's the one who loves talking.' You tell him you are just trying to understand how this camp and their small society works and that he intrigued you due to his circumstances and unique looks. He eyes you from head to feet, then holds his piercing gaze directly onto your eyes before resuming, 'As you've probably already heard, I'm Snapjaw. That's right, the one this fucking beach's named after. And also the one whom you owe respect if you don't wanna get your ass kicked out, or worse.' So, a sort of guard with privileges, you wonder, but you word it differently to him, like someone who performs a respectable duty and is appreciated by the rest of the camp.";
		say "     He eases up on the stare and leans back in a more relaxed stance, throwing another chuckle before replying to your observation, 'If you mean they know who keeps their bitch asses safe for a, I dare say, almost for free, then yeah, you'd be right and they better fucking know. Same goes to you while you're in here. And if you're thinking about trying anything funny, my advice is... Just fucking don't. I've lived long enough to be able to tell all sorts of bullshit before they even get a chance at being something worth my attention.' Well, at least you have his name and job, though the main important bit of information you have is that you probably should really consider staying on this guy's good side if you want to keep good relations with other people at this camp.";
	if Energy of Snapjaw is 0:
		now Energy of Snapjaw is 1;

to say SnapjawTalkRespect:
	if Loyalty of Snapjaw < 10:
		say "     As he had mentioned, Snapjaw receives a compensation in exchange for his services, but given that he probably has the best cottage in the camp and that the beach is named after him, you doubt this is a small one, despite his claims of it all being [']almost for free[']. Instead of questioning this, however, you simply ask him how the others show their respect for him. He looks over at you with his usual expression of annoyance, grunting once, then starts talking, 'I'm gonna take that as you being interested in knowing how to not be an fucking idiot around me, so I'll tell you. For starters, I get my fair share of supplies... Think of it this way, as long as I'm comfortable and carefree, I'm content, and I don't mind smashing some intruders['] heads for you. You must understand the camp only stands safe because of me. So, the least you can do is give me what I want without asking why, because I could fucking own this shit and lead it myself if I could be bothered. And it couldn't get any more simple.'";
		say "     You suppose it is simple indeed, and if no one bats an eye at that, it is probably something they can safely manage. Judging by his looks, Snapjaw may actually be their most valuable asset if he is their only means of security. 'Seems like you can use your eyes for what they're good for. So, if you acknowledge I'm the most important person in here, and while at that, the fucking best, you might just be on your way to have me not despise you.' A bold claim, but if this beach is named after him, he probably deserved it.";
	if Energy of Snapjaw is 1:
		now Energy of Snapjaw is 2;

to say SnapjawTalkAppreciation:
	if Loyalty of Snapjaw < 10:
		say "     You let him know you recognize the importance of his work and ask if there is any other way you, too, could show appreciation for what he does, since you are only an outsider. He looks at you with a wrinkled forehead, as if he was raising an eyebrow at your question. 'Huh, and why's that? You're not living here, after all. The second you step outside of this beach, you're no longer my concern.' You argue that, on the other hand, as long as you are staying in this beach, you might as well show respect to the one who most deserves it, and having his approval is better than not. 'So, let me see if I got this straight... You want me to like you?' he asks you, leaning over to you with a very inquisitive look. Putting it in simple terms, you tell him that you meant something similar to that, indeed.";
		say "     He then leans back up, laughing to himself, then replies, 'Tough luck! Sounds like a fucking ambitious goal!' He laughs some more, but eventually looks back at you again and continues, 'But... If you really mean it, I suppose there are... A few things you could do for me.' You nod, telling him you are all ears, as long as he means it. 'Of course I fucking mean it, question is, are you serious about this? [']Cuz if you are and would do whatever it takes...' You nod, encouraging him to continue, and he does, 'So... You see, besides Kody over there, no one takes their time to [italic type]really[roman type] appreciate me. And I'm talking about some real appreciation, you see?' his legs then spread out suggestively, causing his enormous bulge to pop into your view, 'And with that, Kody's the only one who gets the privilege of me liking him. Others are tolerated instead, and that's entirely on them.' Given the circumstances of the actual world and how blatantly accessible certain activities are, you happen to ask Snapjaw if he means sex.";
		WaitLineBreak;
		say "     He is very quick to reply to that, with a tone of annoyance obvious in his voice, 'Nah, I'm talking about fucking unicorns licking on ice cream at the beach, obviously. What the fuck do you think it'd be?' A sarcastic response that definitely clears up the subject's nature. 'Or, well, actually, maybe I am, if you're to be the unicorn and the ice cream my dick. And that's the only way that's gonna work. Everything else is off-limits.' Well, that seems to be one way to work towards having his approval, but surely there must be something else he values. Perhaps with time you will find out what...";
	if Energy of Snapjaw is 2:
		now Energy of Snapjaw is 3;

to say SnapjawTalkSex:
	say "     Having brought up the subject of sex, you ask Snapjaw what his terms and preferences are, wanting to know more about what makes him tick.";
	if player is female and Breast Size of Player > 0:
		say "     He looks at you from head to feet, and it is clear that he is trying to find words to reply to that. 'Yeah, uh... Sorry to bring it up to you like that, but I ain't into women. Nor feminine appearances and all that shit, just not my thing.' He then clears his throat as a pause before continuing, 'But, if for some reason you end up a dude... Heh, where do I start... There's a lotta stuff I like. From getting worshipped all over to fucking someone's brains out... And that's only the tip of the iceberg, guess you'd have to find out as you go... Though, you better know your place, I'm not taking any bullshit behavior from you. Nor anyone, for that matter. If it ain't working out for you then do me and yourself a favor and kindly piss off. It's already a fucking privilege for you to have the chance to worship me, and that's only because I tend to be so generous.'";
		say "     You think the only way to have any sort of fun with Snapjaw is, putting it plainly, to be his bitch... And to be male, as he seems to be only into guys.";
	else:
		say "     For once, he seems glad to answer a question. 'Heh, where do I start... There's a lotta stuff I like... From getting worshipped all over to fucking someone's brains out... And that's only the tip of the iceberg, guess you'd have to find out as you go... Though, you better know your place, I'm not taking any bullshit behavior from you. Nor anyone, for that matter. If it ain't working out for you then do me and yourself a favor and kindly piss off. It's already a fucking privilege for you to have the chance to worship me, and that's only because I tend to be so generous.'";
		say "     You think the only way to have any sort of fun with Snapjaw is, putting it plainly, to be his bitch. If that is something you like doing, then you could throw in a few proposals. However, you get the feeling he might be into way kinkier stuff down the road...";
	if Libido of Snapjaw is 0:
		now Libido of Snapjaw is 1;

to say SnapjawTalkGenitals:
	say "     You obviously have noticed Snapjaw has it different when it comes to genitals. Most sharkmen have two penises coming out of a slit, but clearly, his case is different. You decide to ask him about it, though he seems really annoyed at the question. 'Sorry if I'm not fulfilling your big double-dicked sharkman fantasy, but look, there's plenty in here for that kinda shit. I didn't like it myself, shit felt weird and was always getting in the way, so I changed it up! Got a weird fruit to do the job for me and even made it bigger, so I'm pretty sure I won in the end. I'll even tell you this... It only got a lot of praising.' An odd fruit, he said... You wonder what this could be, a fruit with transformative effects... Or, in this case, you could argue they were more restorative, which is particularly awesome.";

to say SnapjawTalkSuperstrength:
	if Loyalty of Snapjaw < 10:
		say "     Having seen how strong Snapjaw actually is, you feel rather curious about how he became so powerful. Is this because he works out a lot, or is it something else? You decide to ask away, and for good measure, you also express your admiration for such, as not just about anyone can do what he did. He shows you a toothy grin, which on a sharkman is quite terrifying due to the multiple sharp teeth, but he then chuckles with this smug expression in his muzzle. 'That's nothing. Should've seen me lifting that van over there all on my own.' You look at the van and... It is quite a van, must weigh around four thousand pounds. It should be humanly impossible to do such a feat, but he does not seem to be joking. 'I'm fucking huge, with muscles like these you can do some pretty awesome shit...' he says, bringing one arm up and flexing it, every muscle throbbing and bulging enormously before your eyes.";
		say "     You have to ask if there is actually anything he struggled with, as at least he seems pretty confident in his abilities. 'There's very few things I can't lift or bend, but the ones I can are so many more that we really don't talk about those. Could definitely lift you with one arm, and maybe a couple more your size. As if that's natural or not... I don't fucking know. Probably some mutation effect.' At least, he seems glad to talk about this, so you use that opportunity to gather a bit more information. Is this why they call him Snapjaw, you ask... 'Oh. I mean, I can snap any jaw I want, but nah. It's for another reason...' he says, grinning as his gaze shifts towards below his waist, then back at you, and chuckles. 'Nah, I'm fucking with you. That'd be more like jawbreaker with how big this fucking thing is.'";
		WaitLineBreak;
		say "     'I might tell you sometime. That tale isn't for the faintest of heart, as they say. Or jaws... Hahah.'";
	if Energy of Snapjaw is 3:
		now Energy of Snapjaw is 4;

instead of fucking Snapjaw:
	if Libido of Snapjaw is 0:
		say "     You really do not want to do that without talking to him first. This really seems like someone you do not want to be messing with so precariously.";
	else if player is female and Breast Size of Player > 0:
		say "     As you move in to propose an offer of pleasure to Snapjaw, he dismisses you immediately with a hand gesture. 'Fucking hell... I said I'm into dudes. Don't fucking bother me with that shit if you ain't one.' He seems rather annoyed for that, which suggests you probably should not insist.";
	else if lastfuck of Snapjaw - turns < 4:
		say "     As you move in to propose an offer of pleasure to Snapjaw, he dismisses you immediately with a hand gesture. 'Later, I said,' he says only that, ignoring all your advances right after.";
	else:
		if Loyalty of Snapjaw < 10:
			say "     As you move in to propose an offer of pleasure to Snapjaw, he turns all his attention to you for once. 'Well, I was needing a distraction while I'm on watch... So why don't you come closer?' he says to you, beckoning you with a hand gesture to approach him.";
		WaitLineBreak;
		say "[SnapjawSexMenu]";

to say SnapjawSexMenu:
	say "     [bold type]What would you like to talk about with the large sharkman?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer him a blowjob";
	now sortorder entry is 1;
	now description entry is "Everyone likes getting blown, right";
	[]
	if Resolution of Snapjaw_Intro > 1:
		choose a blank row in table of fucking options;
		now title entry is "Volunteer to worship his body";
		now sortorder entry is 2;
		now description entry is "Tell him you would love to give him a post-workout muscle worship";
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
				if (nam is "Offer him a blowjob"):
					say "[SnapjawSexBlowjob]";
				else if (nam is "Volunteer to worship his body"):
					say "[SnapjawSexMuscleWorship]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Snapjaw grunts, returning his attention to whatever he does.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SnapjawSexBlowjob:
	say "     Considering your options, you think that providing Snapjaw with some oral pleasure would be fitting. Especially considering the fact he has to stay on watch all the time, it is a good way to keep him entertained while doing sentinel work. Your argument is certainly well-received by the sharkman, who shows a big smile at your proposal. 'Now, ain't that a good suggestion... You're smart!' While he does not sound serious, you get the feeling he genuinely enjoyed receiving your offer. He takes a seat over a bench, which has to be big and sturdy enough to hold together due to his massive proportions, and gives you a blatant tease of his enormous shifting bulge in the middle of the manspread he shows off in your direction. 'I hope you're ready to take on the challenge, though...'";
	say "     Once he beckons you to approach, you do so almost immediately as to not test his patience. 'Eager, huh? Well, not judging you...' He then moves one of his thick hands over the back of your skull and forces your head down on his crotch, planting you face right on top of his red speedo, which is already struggling with the sheer size of the sharkman's meat contained within. He does not simply let you kiss it, but grinds your cheek and nose against it, pulling you closer to the space between is and his thigh so that he can slap his bulge against one of the sides of your face. It feels so heavy it almost hurts, causing you to instinctively flinch in anticipation every time he swings it away and onto your face. 'And that's still soft. Pretty impressive, huh?'";
	WaitLineBreak;
	say "     He does this for a while, just letting you kiss at his crotch while it threatens to rip through his speedo with each throb, growing ever more intimidating. His hand keeps holding you down, as you worship his bulge, using everything at your disposal, from lips to tongue, to give love to the sharkman's imprisoned meat. 'Right, I wouldn't wanna ruin another pair, so how about you take care of that?' This is not something you want to be too quick at, but you also fear that if it grows any further, that speedo just will not be able to endure it... Not to mention it would be actually harder to remove. Snapjaw gives you enough room to move your arms and hands around his manhood, and carefully, you try to slide his swimwear across his shaft and all the way to the tip...";
	say "     The sharkman's grin widens as you reach the end of his cock, and as soon as you manage to pull his speedo down all the way, his erection springs up and beats your face like a baseball bat in one square swing. 'Heh, always looking forward to see that,' he says with a cackle as you truly take in the actual size of his dick. Granted, he is a grower, but that does not undermine what seems to be at minimum twenty inches of length with a monstrous girth. 'It ain't fully hard yet, by the way... But you should definitely be working on that.' You bring your hands onto it, rubbing at the shaft and encouraging it to throb harder with your touch, stroking the whole thing as it thickens and grows a few inches further. Eventually, it seems to reach its peak, barely holding itself up with its weight, but hanging forward as it pulsates with incredible strength.";
	WaitLineBreak;
	say "     'You better get my balls out too, they're gonna start filling...' Hearing this, you momentarily place his dick over your shoulder as you reach over his swimwear once more. However, given the way he is sitting with his legs spread sideways, it would be impossible to lower it down further. Instead, you move to scoop his quite enormous balls out of the tight confinements of his stretchy speedo and carefully pull them outside, where they hang heavily like two full and massive orbs. 'Ah, much better... Don't forget to tend to them! I know my cock's great and all that, but totally makes a difference here.' With so much of it in front of you, it might feel overwhelming to some, having to work with such an enormous set of equipment the size of Snapjaw's, but if you agreed to this, it must mean you are ready to take on new challenges!";
	say "     For now, most of what you can do resumes to licking across his shaft while fondling his nuts, which seems to please the sharkman. You do not just linger in one of the sides, though. As you move back and forth with your tongue, you try to keep switching sides sliding underneath his cock while you feel up his sac, which do seem to be filling up the more you touch them. As a matter of fact, everything seems heavier the longer you caress them, as if he was not already big enough. Though, it gets hard to focus on anything else but doing your best to pleasure him, as that desire grows within you all the same. A look upwards reveals that Snapjaw is not paying much attention to his watch either. He throws glances in your direction every so often, but it is hard to tell if he is looking at you or admiring himself.";
	WaitLineBreak;
	say "     'Fuck, it's huge, isn't it... They wish theirs were as big as mine.' You have lost count of the time you have been spending here, between Snapjaw's enormous trunks for thighs and worshipping his massive cock, but time is aplenty when it is about servicing this sharkman. Having thoroughly covered up his entire shaft from all possible sides, you begin to move closer to the tip, glistening in constant leaking. 'Hope you haven't been wasting the juice...' he warns, and looking at the significant portion of wet sand right underneath, your concerns are raised. Fortunately, his dick is so big he cannot exactly see that, so instead, you move to stand on top of it and get your face under the constant stream of precum. If you had hopes of not wasting any more, they are immediately crushed as he drenches your face with that stuff, as it runs down your neck and continues to travel downwards. You cannot hope to save so much of it...";
	say "     'Haha... Relax, there's so much of it I doubt anyone could do something about it. I'm a fucking leaker...' One would dare say that is an understatement, because not even as you rush to place your mouth around that thick head you can manage to contain a lot of it. Drops of precum dribble from the corners of your mouth every time you try to swallow a mouthful of it. You cannot tell if this is because he is so huge, or if this is actually some abnormality, but your struggle is clearly an amusement for Snapjaw, whose smirk never leaves his muzzle. As for its taste, you half-expected it to be salty, and it does remind you of sea water, except thicker, warmer and, in general, more pleasant. 'Don't think you'll feel hungry for a long while... Heheh...'";
	WaitLineBreak;
	say "     Your hands continue to rub at his enormous length, its girth causing your jaw to ache as you attempt to bring it into your mouth, but you do your best to make his cock happy. As for his balls, you also try not to leave them simply hanging and give them a good rub, even sometimes leaning your head over to them, to provide his orbs with plenty of licking and sucking wherever you can. There is definitely a load building up inside of those, yet, you feel like you are far from over. 'If you need a break, lemme know. I can take over...' he says as you, in fact, have to take a moment to breathe after you pull away from his cock, but you let him know you planned to get back to it, as you indeed do, wrapping your lips around his tip to keep sucking at that slit, tongue pushing into it as more and more of that precum travels down your throat.";
	say "     'Seriously, though, it's fine if you do...' he then places a hand over your head, which startles you at first, '... As I said, I can take over.' The way he looks at you as his cock throbs in your hands and against your mouth makes you wonder what that actually means, but you have an idea. Your eyes shift up to his, and that really makes those teeth of his show with a glimmer of excitement. 'Actually... I do think you need a break. Or at least some assistance...' he says, chuckling in the end, as he moves one of his fingers over your mouth and pushes against one of its corners, prompting you to open wide. There is an evident concerned look in your eyes, even amidst your lust. 'You should know you're safe with big ol' Snapjaw... Relax.'";
	WaitLineBreak;
	say "     He then stands up, the towering sharkman overshadowing over you as he keeps your head at crotch level, finger still in your mouth. With another hand, he pushes his speedo down his legs until it falls on its own to his feet, then promptly kicks it away. As you think he is about to shove his cock down your impossibly wide open mouth, he instead grins as he leaves your lips be, and moves them to grab you, then lift you. This is done so effortlessly that the sharkman does not even make a grunt, and simply flips you over as he holds you in front of him. Now, you are upside down with your legs up, but your head is still facing his menacingly throbbing meat. 'Manhandling is my specialty, that's why. Don't try this at home, though. You ain't as strong as I am...'";
	say "     Chuckling, Snapjaw then grabs your head and lines up your mouth with the tip of his cock, then begins to push it against it. The other arm is holding you tightly against his torso by your lower back, and he is so big your knees barely reach his shoulders. Indeed, despite having to endure the fact your blood is rushing down to your head, you have to do nothing but let the huge sharkman handle things, which by this point means using you up like a sex doll. Somehow, though, it feels a little easier to open your mouth and let his cock in, even if slowly, inch by inch, as he carefully attempts to put more and more of it in. 'It always ends up fitting... Must be a special talent I have. That, or you're really eager to get opened up and stretched...'";
	WaitLineBreak;
	say "     His cock is absolutely gigantic, but you are somehow taking it, your jaw having given up and gotten numb by the time he manages to reach your throat. After that, you simply swallow it, along with all the precum that is dropped directly into your stomach. 'Best way to facefuck someone who's eager to pledge their service. Hnng... Fuck yeah!' Snapjaw gets louder with his grunting as he thrusts into your face, fucking your throat in a way it feels he is pounding directly at your chest from within. If you could even think, you would not be able to discern how in the world your body has managed to endure this, nor how such an enormous cock has found itself in your esophagus, pounding at you like a battering ram. Though, there is one detail in the middle of all this, which is... You cannot really breathe.";
	say "     Though, Snapjaw is not insensitive to your biological needs and pulls you away on occasion to let you take in some fresh air, to your relief, but those breaks are short. He is quick to bring your head over his cock and proceed to do the same, drilling your throat with powerful thrusts as you hold against his thighs, attempting to regain some control in an instinctive reflex, but obviously to no avail. You are, in fact, being completely manhandled by him, and he only gets rougher. 'I could do this all fucking day...! Fuuuck YEAH!' As his grunts grow louder and wilder, so do his thrusts, and you feel your insides being shaken away as he uses your throat to his heart's content. Then, you realize that those enormous balls of his seem to have gotten even fuller, as they swing back and forth in front of your eyes... Before they start to rise and tighten.";
	WaitLineBreak;
	say "     'Last chance to take a deep breath...' he says, pulling your face away and allowing you to take yet another breather, but by the way his cock's throbbing so intensely, you think he might have gone past the point of no return already... 'Fu-uck... Time's over!' is what you hear before he barely manages to get his tip into your mouth before shooting an enormous quantity of cum into you. He keeps your head still and forces you to swallow everything, or at least try to. With the excitement riling up his entire body, Snapjaw then thrusts into you relentlessly as he cums more and more, the sheer amount of that load causing your belly to swell as your stomach fills up. You are already desperate to gasp for air as the sharkman enjoys every spurt, almost completely forgetting about you.";
	say "     He pulls you out before the situation becomes a danger to you, and that results in the couple of last shots flying across towards your face, to then fall down on the sand. He still has more, though, as his cock continuously dribbles a stream of thick cum that keeps on leaking, albeit at a much weaker pacing. It still takes several seconds to wind down as Snapjaw pants and grunts heavily, with now his half-hard cock giving out its final throbs before it gives signs of wanting to rest. 'You swallowed most of my load upside down... Even I gotta admit that's impressive...!' he says, and you just now realize it. You have no idea how you managed to do that, but you feel almost proud for it.";
	WaitLineBreak;
	say "     'Well, watch's over, and so's this. Doubt anyone would dare come close if they saw how you were hanging, just being held with one arm...' He finally puts you down, but you feel so stuffed you might as well take a rest on the sand. Snapjaw just takes a seat on his bench, admiring his work, which consists of trails of cum everywhere covering the sand and you with an inflated belly. 'Come back later, I'm sure I can put another load like that in you in about a couple of hours... Maybe less, even, but you know... Can't risk breaking you irreversibly.' It really takes a while until you feel capable enough to stand up without having to hold your belly, not to mention the dizziness for having spent quite some time hanging upside down. You bid Snapjaw goodbye, and he grins back at you. 'See ya soon...'";
	NPCSexAftermath Player receives "OralCock" from Snapjaw;
	if Loyalty of Snapjaw < 9:
		increase Loyalty of Snapjaw by 1;

to say SnapjawSexMuscleWorship:
	say "     Having seen him working out and doing a variety of physical exercises, plus the fact he loves showing off his muscles, had you wonder if he would let you worship him, as perhaps you have the tender touch he would appreciate over that massive rock hard body. He likes when he hears this from you, as evidently shown by a smile forming across the corners of his shark mouth, and he even gives you bedroom eyes as he attentively listens to your proposal. 'Now... You're just offering because you know I like it, don't you, little fucker?' he asks, though not angrily. You could say he is just teasing you, but it is hard to tell when he looks so intimidating all the time. You let him know that you only offer to do things you also enjoy doing, and this is by no means an attempt to kiss his ass, figuratively.";
	say "     'Oh yeah...? Well, aren't you a lucky guy... You happen to be looking at a massive sharkman who loves that kinda shit...' he says as he walks over to you, getting really close to your, his body almost touching yours while simply standing next to each other as he looks down at you, 'And I'm always a sweaty motherfucker, trying to keep these muscles pumped while under the sun all the time...' While he keeps talking, you find one of his massive, strong arms wrapping itself around your head as he pulls your face against his pecs, prompting you to touch his body, 'Could definitely use an eager little bitch boy to rub me down all over... Kiss and lick me clean... You get the drill, don't you? I highly doubt you haven't done this before...' He then chuckles, and once he sees you actually touching him, he stops pulling you and lets you move around as you please.";
	WaitLineBreak;
	say "     'You better thank me in the end. I'm rarely this generous to anyone else...' You nod and start thanking him already, for giving you the chance to worship his body, commenting on his strength and bold perfection, which causes him to let out a happy sigh. 'Fucking hell, now you're gonna get my dick hard... Might as well grab it while you're busy appreciating me. Shit's getting tight anyway,' he says as he hastily removes his speedo, putting out that enormous cock which is rapidly growing into a full erection, throbbing to attention. 'There... Full access. Now get to work and show me you deserve this.' You have no intention on letting him down, and with that, your hands are already massaging the huge masses of muscles that his pecs are, firmly rubbing around and grabbing them, but without slacking on tenderness.";
	say "     Knowing he is a very tall sharkman, Snapjaw takes a seat down to allow you to reach every part of his body without too much struggling, which is definitely an indicative that you are free to explore as you desire. Starting with rubbing his pecs, you begin to kiss them, then make your way with your lips to one of the sides of his torso, hands still on his chest and running down his incredibly defined abs. From this angle, you get an impressive view of Snapjaw's upper body, and everything seems developed to its peak, with such muscular perfection it is hard to imagine anything better than this. He keeps his arms up, the powerful musk coming from his armpits reaching your nostrils as you breathe it in, eyes fixated on that warm looking pit. It is almost intoxicating, in the best way possible, as the urge to bury your face in it grows ever more compelling.";
	WaitLineBreak;
	say "     'You know you want to,' he says as, with one large hand, he grabs your head from the back of your skull and pulls you in, pressing your face against that soft, musky and soaked hot armpit that immediately gets to your brain. It is such a powerful scent that your lust increases by a tenfold, stimulating your mind to continue to worship him and feel his power. You kiss and lick at his pit, continuously rubbing his pecs and abs with your hand as it makes its way to his throbbing, massive cock down below, and your other hand, as you are practically hugging the sharkman from the side, goes for his back muscles, feeling every lump of hard meat flexing under your palm as you do your best at massaging those.";
	say "     Truly, Snapjaw's dick is so enormous that, with only one hand able to reach it, you have to focus your attention entirely on his tip in order to provide him with enough pleasure. It does not seem like he minds this though, as suggested by his soft moans every time you rub against his slit with a finger, then around the glans and at the very front tip of his cock's head. There is a steady flow of precum soaking your hand as you continue to do this, all while your head remains hard locked under his arm, sniffing those musky pits as you worship them, tasting his salty sweat that tingles in your tongue. 'Mmh... That's a good little slut... You fucking love this, don't you?' he says, pressing your face against his armpit once more, a little harder than before, almost to the point of choking you, and finally pulls you out, giving you the chance to catch your breath.";
	WaitLineBreak;
	say "     'There's more to taste on the front. Get to it.' Snapjaw simply points to his abs, the ones you have been caressing before you got your hand on his dick. 'I want your focus on my muscles, bitch boy. Don't let that ridiculous dick distract you...' With a chuckle at the mention of the size of his own meat, he repositions you in front of him, kneeling between his legs as his cock rests against your front. You really do your best at ignoring it, by his command, even though it is throbbing and leaking copious amounts of precum, soaking you wherever it lays. You lean in towards his abs and touch them with your lips, tongue sliding around the shapes of his abdominal muscles, twirling through the lines they draw as you get a taste of his sweat still running down his body.";
	say "     As you move lower through his abs, his cock continues to throb against your chest, then neck, as you do your best to try to ignore it. You have your hands placed on each of his thighs as you kiss his navel, then make a diagonal travel towards one of his legs. You are still struggling against your biggest temptations to lay lips on that huge meat, yearning for attention, but you muster all the persistence you need to resist it and instead move to kiss Snapjaw's monstrous quad, which he flexes upon your arrival. 'I want your tongue all over those, bitch boy. Work'em good...' Indeed, there is so much to lick, as each of his thighs are way bigger than your head. You start by merely kissing them, then add your tongue in and continue by licking at the lines of every bulging muscle, going around the leg and its sides too. Everything is so huge you really need to give your neck a workout to get every inch...";
	WaitLineBreak;
	say "     'And don't you forget I got two legs...' he reminds you as he gently pushes your head around by moving the leg you are currently on against you. When you look up at him, he is still grinning excitedly, and if you had any doubts, you check that his cock is still leaking and throbbing like mad. Snapjaw then decides to give himself a hand while you start working on his other leg, massaging his thigh, smooching it all over with your lips and lick at every flexed muscle. 'You're really making me wanna jack off and shoot... Fucking great job there...' Even without looking, the sudden, repeated movements suggest that he got his hand around his shaft and is jerking himself off while feeling your worshipping efforts on his sweaty thighs...";
	say "     'Fuck it, lick my balls... They're fucking sweaty too and I need to feel something there...' he tells you, and he does not wait for you to do so, as he leans forward to grab your head and push your face against that... Equally ridiculous sac. You think his balls could have grown in the meantime, filled with so much cum the sharkman is having trouble holding it all in. Not wanting to disobey him, you do as he says and get your tongue out as soon as your lips touch his orbs, then lick them to the best of your abilities. They are definitely sweaty, its salty taste feeling good on your tongue as you lick them up and down repeatedly. You even wrap your lips around his bouncing gonads to help yourself with the worshipping, but Snapjaw never lets go of your head. He still dictates where you lick and what you focus on, but by the way he is moaning and grunting, one could say he is lost in all the pleasure.";
	WaitLineBreak;
	say "     'Fuuuck... Keep going... Don't stop... I'm fucking getting there...' He strokes himself faster, and you open wide to try and fit as much of his balls as you can inside your mouth. With this, he presses your face against his sac more, harder, as he strokes faster and faster... His grunting grows more intense, and so does his stroking, until he finally hits his climax. What happens next feels like a deluge, a geyser of sharkman spunk being shot in such abundance you think he might succeed at drowning you in it, by the way he is holding you so tightly against his balls. There is so much cum running down his cock that your face gets completely covered in it. You think he is even aware of this, as he goes as far to smear your face across his balls and shaft as he carries on cumming like a broken faucet.";
	say "     'Mmmh... You fucking... Hot little bitch... Fuck yeah...! I could fucking crush you out of love right now...' He then laughs as the last drops of cum run down his gigantic cock, and before he actually does what he is saying, he lets go of you. 'That looks great on you... I'd advise wearing my load proudly like that... Hehe...' Snapjaw spends some time admiring the work he has done on you as you remain standing there, perhaps still a little too bothered to do anything about it. 'Just hop on the water and let it wash you off. There's more where it came from... It'll give you an incentive to keep coming back to worship me, right... Hah.'";
	WaitLineBreak;
	say "     'Now, you're free to go. I gotta get my shit done around here anyway...' You nod to him and bid him goodbye, following his recommendation to get yourself cleaned up before heading out back into the world.";
	NPCSexAftermath Player receives "Other" from Snapjaw;
	if Loyalty of Snapjaw < 9:
		increase Loyalty of Snapjaw by 1;
	

Snapjaw Beach Camp ends here.
