Fire House by Kaleem mcintyre begins here.

"Adds a new area to Flexible Survival with a NPC…"

Section 1 - Firehouse Station

Firehouse Station is a room. It is fasttravel. 

The description of Firehouse Station is "At the far end of the downtown red light district area stands a red brick firehouse rising up almost virtuously in protest of the depravity that has currently taken hold of the once prominent metropolis. Immaculate as the day she had been first opened the numbers 86 gleam almost smugly across the front side of the building. From the way the garage doors are void of the usual sticky messy of cum, milk and other fluids it would seem as though someone has been taking especially good care of the place. Wondering if that said someone is still inside, and hoping that if they are they have kept some of their humanity intact, you walk over to the single garage door and then bang on the front to try and get somebody's attention. A minute or two later the large metal door rolls up allowing you entrance. Entering into the cool building you find that the firehouse is exactly as you would have imagined it to be. Dominating the main area of the firehouse there sit two bright red fire trucks waiting to be used by their servicemen with a large golden pole gleaming off to the left side the building leading up to an open hole in the ceiling. A small flight of stairs positioned are in position right next to said pole. A darkened office sits off to the side by one of the unused fire trucks while a bunch of chairs have been set up next to the garage doors surrounding a large table covered with playing cards. Over by the right side of the building a number of firefighter suits are hanging off of coat hooks next to several metal lockers. The entire area is kept lit by some of those Japanese lanterns that you sometime see during summer festivals at the State Fair, so that would explain why everything is so bright despite the power of the city not working properly. Because of the light it's easy to see a large number of rolled up hoses being kept in place along an empty expanse of wall while right above the coiled tubes there lay several ladders have been stacked together on a high end metal shelf. All in all the place looks rather normal, if somewhat creepy with the lack of any people around, but if that's the case...then who opened the front garage door?";
Kenaz is in Firehouse Station.
LowerFirepole is in Firehouse station.

Invent of Firehouse Station is { "water bottle" , "water bottle" , "water bottle" };

Instead of sniffing Firehouse Station:
	say "The firehouse station smells of distilled water, smoke, and latent fires that have long since been put to rest.";

Up of Firehouse Station is Sleeping Quarters.


Section 2 - LowerFirePole

Instead of sniffing the lowerfirepole:
	say "The fire pole smells like sweat, nervousness, excitement and above all else hardworking diligence.";

Firepolescaling is an action applying to nothing. 
Understand "go up" as Firepolescaling.
Understand "climb up" as Firepolescaling.
Understand "scale up" as Firepolescaling.

Check Firepolescaling:
	If LowerFirepole is not visible: 
		say "[one of]Thinking about monkeying around on a fire pole are we?[or]If you want to play around on a pole try the PALOMINO.[at random]";

carry out Firepolescaling:
	say "Figuring that you could do with a light workout you decide to climb the fire pole.";
	let bonus be (( the strength of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 14:
		say "Managing to climb the golden pole you make your way up to the sleeping area of the fire house.";
		Move player to Sleeping Quarters;
		increase score by 2;
	otherwise:
		say "Not being able to grip the slick pole to pull yourself up correctly you end up sliding back down in dismay.";



Section 3 - Sleeping Quarters

Down of Sleeping Quarters is Firehouse Station. 

Sleeping Quarters is a room. 

The description of Sleeping Quarters is "[if kenazquest is less than 4]The upper area of the firehouse has several beds lined up together in neat rows extending from the doorway to the far wall where a large entertainment system has been set up. From the looks of things it would seem as though most of the beds have been unused as of late, save for one in particular. Though that's not to say that the sleeping area is in any sort of disarray as that the floor looks to have recently been swept and mopped, the footlockers at the end of the beds have been waxed, and the only set of chairs and table in here look to have been dusted and buffed to keep the wood pristine looking. Over by the side of the entertainment system the station's fire pole extends up from a hole in the floor all the way to the white wall ceiling. Just looking at the golden pipe you feel as though you should jump onto the pole and slide down to the main room of the firehouse.[otherwise if kenazquest is 8]Unlike before, with how the sleeping area had once been in disarray, now the sleeping area looks like it did from before when Kenaz was here by himself. The beds are neat, the floor has been swept and mopped, there are no toys - of any sort - anywhere on the floor and the smell of musky Dal boy is less oppressive than it once had been. Kenaz must have seriously put a foot up some of the other firefighter's tails to get them straightened out enough to clean up in here. The mixed smell of herm Dalmatian and Dal boy cum pervades the area giving the sleeping den a unique musky scent that is not too harsh on the senses. So Kenaz does take some of the others up here to fuck them it would seem.[otherwise]Unlike before when the sleeping area once looked somewhat kept under well maintenance the area now looks like a combination between a puppy's play pen and a bachelor pad. Most of the beds are unkempt and somewhat musky with the scent of male Dalmatians covering them, there are toys - mostly rubber balls and squeak toys and a couple of dildos, butt plugs and anal beads - littered around the floor, and the floor seems to be almost pervasively sticky with...something or the other. You halfway hope it's just spilled soda. It looks as though Kenaz, and maybe one or two others, have been trying to keep the place clean, but it seems to have become a lost effort as the transformed firefighters seem to all but be focused on rutting and playing around to bother keeping the place neat. However, it's easy to see that, despite the disarray, the room has been kept free from any firefighting equipment lying around where it doesn't belong. Looks like the spirit of the firehouse still burns bright, even through this disheveled mess.[end if]";
UpperFirepole is in Sleeping Quarters.

Instead of sniffing Sleeping Quarters:
	If Kenazquest < 4:
		say "[one of]The sleeping area smells of many disturbed nights of restless slumber while waiting on call for trouble, but that seems to be fading with time.[or]The scent of anxiety seems to be disappearing slowly from within the room as more time goes by.[or]Left behind in the mostly unused sleeping area if the lingering scent of...Dalmatian?[at random]";
	otherwise if Kenazquest > 3:
		say "The sleeping den of the firehouse now smells like frisky Dalmatian boys mixed in with a musky hint of cum, beer, male virility, pup-like playfulness and respectful adoration.";
	otherwise if Kenazquest is 8:
		say "The sleeping area smells like a well maintained room where firefighter Dalmatian boys sleep, play, fuck, and bond with each other. The telltale musk of a herm Dalmatian wafts throughout the den, though this scent is very commanding instead of subservient.";

Invent of Sleeping Quarters is { "water bottle" , "water bottle" , "food" };

Instead of sniffing UpperFirepole:
	say "The fire pole smells of sleepy times, panic, courage, musk and undeniable valor.";

Firepolesliding is an action applying to nothing. 
Understand "go down" as Firepolesliding.
Understand "slide down" as Firepolesliding.
Understand "slide" as Firepolesliding.

Check Firepolesliding:
	If UpperFirepole is not visible: 
		say "Maybe you should go back to the firehouse? You're starting to see things.";

carry out Firepolesliding:
	say "Hopping onto the fire pole you hold on tight as gravity, coupled with your weight, sends you sliding down to the first floor of the firehouse. The feeling of vertigo makes you laugh slightly as the air rushing past you whips across your [bodyname of player] form.";
	Move player to Firehouse Station;
	increase score by 2;



Section 4 - Kenaz 

Kenaztalk is a number that varies.
Kenazaroused is a number that varies.
Kenazquest is a number that varies.
LastKenazfrisky is a number that varies. LastKenazfrisky is usually 550.
Kenazfrisky is a number that varies. Kenazfrisky is usually 0.
smf is a number that varies.

Kenaz is a man.
The description of Kenaz is "[Kenazcurentform]";
The conversation of Kenaz is { "Be on alert!" }.

instead of sniffing Kenaz:	
	if Kenazquest is 0:
		say "The fully human male smells somewhat smoky as well as anxious, though this is quite strange since there haven't been in fires for him to fight by himself as of late.";
	otherwise if Kenazquest is 1 or Kenazquest is 2:
		say "The firefighter smells anxious, as if he is waiting for something.";
	otherwise if Kenazquest is 3:
		say "The firefighter smells somewhat like Dalmatian now.";
	otherwise if Kenazquest is 4:
		say "The half human/half Dalmatian smells of steadily rising lusts.";
	otherwise if Kenazquest is 5 or Kenazquest is 6 or Kenazquest is 7:
		say "The pervasive scent of horny Dalmatian covers the former human firefighter almost completely. His humanity is still present however.";
	otherwise if Kenazquest is 8:
		say "The former vigilant firefighter smells virile and dominant, but at the same time shi also has the musky tang of a well used Dalmatian herm that's been used hard and put away wet.";

To say Kenazcurentform:[his description at each stage, comments on what each stage is linked to will be in these brackets]
	if Kenazquest is 0:[Kenaz in the firehouse when you first come into contact with him.]
		say "Walking around the somewhat darkened area of the firehouse is the young firefighter Kenaz. Dark, unruly auburn hair covers the half Asian/half American's tanned head down to neck. Along the back of the firefighter's head a long ponytail sways lightly as Kenaz swings his head back and forth while listening out for trouble. At five foot eleven inches tall, Kenaz possesses bright green eyes, a somewhat thin, but muscled form and is wearing a pair of dark navy jeans, white shirt, and has a firefighter helmet on. The latter is kept on as a good luck charm for the firefighter, or so he says. Unlike many people within the city Kenaz is both completely human and fully male, if the bulge inside of the firefighter's pants and lack of breasts anywhere on him are any indication of things. Odd considering everything that's going on, but then again...";
	if Kenazquest is 4:[Kenaz looks somewhat like a half human/half Dalmatian, but isn't succumbing to his lusts just yet.]
		say "Kenaz is grunting and growling while walking around inside of the firehouse while scratching at the clothes he still chooses to wear. While his off tanned skin is slowly becoming covered in white fur speckled with black dots the firefighter is not giving into his either his rising animal nature nor to his lusts, despite the growing tent pushing up inside of his blue jeans. The yellow firefighter helmet that the other usually insists on wearing has now been cast off to the side in favor of making room for Kenaz's lengthening and floppy ears. The former fully human's green eyes are now glowing like fireflies in the somewhat darkened area of the fire station and new muscles seemed to be pushing up through the casual clothing Kenaz refuses to stop wearing. A small bulge of a bump is moving around slightly at the back of the firefighter's backside. The onset of a tail maybe?";
	if Kenazquest is 5:[Kenaz is now a fully anthropomorphic Dalmatian male with all of the marking of the working breed of canine. Thanks in part to your efforts Kenaz is now fully accepting of himself, though he seems to be more accepting of his pack who you've helped to collect from around the city. ]
		say "The Dalmatian male waves to you as he looks up at you in recognition. Being that he's[one of]speaking with one of his packmates[or]playing with some of the other guys[or]sweeping the floor while growling at some of the others[or]trying not to lose at the game of poker he and three others are playing[or]watching some of the other guys mating with one another[or]waxing down the fire trucks[at random] the fully mutated firefighter seems happy with your arrival. Being that Kenaz is now 6'3 and great deal more muscular the spotted firefighter seems much happier now that he has embraced his canine self and is no longer fighting against his newfound instincts. Wagging his thin white tail around Kenaz barks playfully at you before going back to what he was doing. It's easy to see that despite his breathtaking transformation the other is still a firefighter at heart as Kenaz still has on his old fire helmet. It's just now the yellow safety hat has holes in it to support the male Dal's new floppy ears. From the looks of his now completely naked form though it looks as though Kenaz has been [']playing around['] with his some of his pack[one of]since Kenaz is walking with a slight limp[or]since the former human's tail end is matted down with something sticky looking[or]Kenaz's red rocket is stuck completely out of his sheath and dribbling pre onto the thoroughly mopped floor[or]as the green eyes of the former human glimmer with the fires of unquenchable lust while he stares at one of his pack mates[or]Kenaz playfully rubs his hand along the rumps of one of the other firefighters[or]the Dal looks at you with newfound eagerness in his green eyes[at random], yet the other doesn't seem to be as applaud by this as he had been before.";
	if Kenazquest is 8:[Kenaz is now a herm after having been left to be attacked by the shemale collie that had been running around the city. The green eyed Dal doesn't seem to mad about this as he reveals in his transformation, although it has made him somewhat more dominant around the other members of his pack, and you.]
		say "Having been attacked by the Shemale Smooth Collie from before, and subsequently taken forcefully by the twelve foot tall canine while out on the street, Kenaz now supports a new pussy to go along with his former masculine body. However, instead of this making the new herm into a slutty submissive bitch Kenaz seems to have gained a bit more ire about himself as he clearly has taken over dominating all of the other Dal boys inside of the firehouse. It's easy to tell that the former passive male is now a force to be reckoned with as whenever the other passes by the tails of the rest of the firefighters all go to curling downwards. Not to say that this is a bad thing though, because the fire station looks as though it has never been cleaner. The floors both smell and look newly mopped, the fire trucks are waxed to perfection and most of the other Dal's are now wearing jeans to cover their lower ends. Maybe this transformation has been a good thing for Kenaz? Yet at the same time it's easy to see that Kenaz has been ridden hard by the members of his pack as the dominant Dal herm walks with a slight limp to his new gait. The pants the other is wearing hides anything from dripping onto the recently mopped floor though.";


instead of conversing the Kenaz:
	if Kenaztalk is 0:
		say "Looking at you with a hard, but not exactly unfriendly stare the young half-Asian firefight gazes into your face as though in search for something[if humanity of player > 25]. Nodding when he finds that you have your humanity intact, or at least enough of it to feel comfortable with, the auburn haired man reaches out to offer you one of his tanned hands in greeting[otherwise]. Somewhat unsure of the lustful gleam in your eyes the firefighter gives you a nervous nod while bracing his legs in preparation to dart away from you if he has to[end if]. 'Pleasure to meet you stranger, name's Kenaz and I'm the last firefighter her at station 86. Who are you?'[line break]"; 
		say "You give Kenaz a strong handshake and then tell him a little about yourself. This makes the firefighter smile despite the uncertainty you can sense he's feeling as he surveys your [bodyname of player] form and [facename of player] eyes blinking back at him. 'It's a good thing that you knocked because if you hadn't I'd have never let you in here.' Kenaz chuckles some, but you get the strangest suspicion that there is something more the other man wants to add to that statement.[line break]";
		say "'Now then, I don't have much, but if you'd like I'd can share some of my provisions with you. (Y=Yes, N=No)[line break]"; 
		if the player consents:
			say "Deciding not to let the offer of free food go by you tell Kenaz that you'd be happy to eat right now. 'Ok. You can go have a seat while I put the food on the makeshift grill I've got setup.' Doing as asked you head over to the only empty table in the room and then look around the fire station while waiting for Kenaz to return. From what you can see Kenaz has kept the place up to code as far as cleanliness goes, however, over by the other side of the garage you notice that the firefighter has blockade the front door of the building off with various pieces of paraphernalia around the station. Your host comes back minutes later with something hot and steaming and you can feel your stomach rumbling from hunger. 'It's not much but I have some soup that we can share. I hope you don't mind chicken noodle.'[line break]";
			say "Telling the other man that [']food is food['] during these trying times you get a tiny smile out of Kenaz as he sets down the two bowls onto the table. When Kenaz places a spoon in front of you, you take only a second to thank the man before grabbing the utensil and then digging into your soup. 'Whoa, whoa, slow down there soldier, I have more if you want some extra to eat.' You look up to tell the firefighter that it's been a while since you've had something so good before lowering your eyes back to the yellow broth as you finish off your meal.[line break]";
			say "Kenaz laughs at this and then takes his own spoon to start in on his own meal. Ten minutes later, after a second helping, both of you Kenaz sit back and then begin sharing exploits. Laughing at some of the things the other man has to tell you about his life, both before this current crisis as well as during, you come to find yourself liking Kenaz more and more as the firefighter speaks to you in soft, even tones while letting his green eyes twinkle at you almost teasingly. 'So in the end we're both basically been dealt a bad hand by lady luck'. Kenaz says as he looks to you somewhat resignedly.[line break]";
			if humanity of player > 45:
				say "Letting the other man know that everything will be alright because you've both survived, thus far, with your minds intact you watch as Kenaz smiles with satisfaction over at you.[line break]";
			otherwise:
				say "Telling Kenaz that submitting to the happenings outside isn't such a bad thing you watch as the firefighter grows uncomfortably hot under the collar as he blushes nervously over at you.[line break]";
			say "Kenaz sigh wistfully all of a sudden. 'I wish my team were here right now, not that it would make things any better with what's going on outside, but still...' Kenaz rushes a hand through his through his shaggy auburn mop top and then starts to play with the ponytail at the back of his head. 'This big place is kinda creepy without the usual banter of everyone either talking, yelling, or horsing around, ya know? Well technically I guess you wouldn't since you're not a...never mind.'[line break]";
			say "Kenaz tries not to show it but it's easy to see that the other man is in deep discontent without his teammates around. Idly you wonder if any of them could have survived the epidemic with their minds intact, and, if at all possible, if any of them were still within the city. On the fly you ask Kenaz about his coworkers. 'Well, there's not much to tell. We were all taking a small vacation before our [italic type]reassignment[roman type] to other departments at the behest of the [italic type]oh so intelligent[roman type] mayor and his fatass cohort, who just so happens to be our captain.'[line break]"; 
			say "A nearly inaudible rumble of a growl pours out of Kenaz's throat making you smile somewhat nervously over at the green eyed man as you listen to the deep sounding grumble of displeasure. It's only when you cough in your own throat that Kenaz quickly picks up on what he's doing. 'S-sorry, that's been happening a lot as of late. I think the virus or whatever is getting to me, but thankfully it's not that bad. Not unless I get upset or...' Kenaz shrugs somewhat helplessly. 'Anyway, Birch and I were the last guys here who stuck around to see about the place before the station got closed down. But, as cliché as it sounds, Birch did stop showing up a few days before the crisis hit the city. [line break]"; 
			say "I went to check his girlfriend's apartment -- that's the place where he usually hangs out when not off duty -- but the landlady said she hadn't seen either in a while.' Kenaz smiles haphazardly after saying this. Nodding to the other you realize what he might have been thinking. Thanking Kenaz for the food you decide that maybe asking around town might net you some information about the other firefighters. Maybe trying an informer might help?[line break]";
			decrease hunger of player by 30;
			if hunger of player < 0, now hunger of player is 0;
			decrease thirst of player by 25;
			if thirst of player < 0, now thirst of player is 0;
			now smf is 1;
			now Kenaztalk is 1; 
			increase score by 10;
		otherwise:
			say "Telling the other man to save what food he has you watch as Kenaz smiles mischievously at you before shrugging. 'Alright, well there's not much else I can offer you at the time being that I don't have very much. Not unless you...' A sudden slam against the garage doors has your back tensing as you turn to look towards the metal divides separating you and Kenaz from the outside world. Another resounding slam, this time much louder, has Kenaz on alert. When a third strike hits at the metal dividers the half Asian man's brows slowly begin to furrow as his green eyes turn hard like ice. 'If you'll excuse me, I think I have some more guests to deal with.' [line break]";
			say "Blinking in some confusion you watch as the auburn haired firefighter rushes over to some place behind one of the twin fire trucks and then returns with a large axe clutched between his hands. A sudden bad feeling makes you shiver as you think about what might happen to Kenaz if he goes outside and tries to fight off the unknown assailants.[line break]";
			let bonus be ( charisma of player minus 10 ) divided by 2;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
			if bonus + dice is greater than 12:
				say "Grabbing Kenaz's shoulder before he can make his move out of the front door of the fire station, which has been safely blocked off by an overturned desk and other miscellaneous pieces of junk, you tell the man that you'll handle whatever's outside. 'You?' Kenaz ask dubiously as he gives you a once over before trying to shake his head, however, being the persuasive character that you are, you manage to talk him out his gung-ho offensive by enlightening him on what might happen should he possibly becoming infected. Mention of what will happen to the firehouse if he loses himself to the infection going on outside is what finally gets good common sense through the other's thick head. 'Alright, fine. But if you don't come back in thirty minutes...' Kenaz starts to say, but before he can finish you're already moving the desk and other junk away from in front of the firehouse door as you mentally prepare yourself for a fight.[line break]";
				fight;
				fight;
				fight;
				fight;
				say "After dealing with the small group of mutates you shudder from the exertion of the hard-won fight and then sigh before knocking on the somewhat battered garage doors of the firehouse. A second later the doors slowly open to allow you entrance. At seeing your worn and slightly[if lost is 1]cum soaked[otherwise]sweat soaked[end if][bodyname of player] body Kenaz hurries off to get you a towel. A second or two later the half Asian firefighter is by your side handing you the towel and a bottle of water.[line break]";
				say "'Man, it's times like these when I wish the other's were here.' You pop open the water bottle and down your drink before asking Kenaz what he means. 'Before this [']epidemic['] or whatever came about most of the other guys had all gone off to take a vacation. The only ones left around here was me and Birch, but a little while before thing started to get crazy he went out and didn't come back. I went to his girlfriend's place to look for him, but the landlady at the apartment complex said that she hadn't seen either of them in days. I hope he got out before anything happened...otherwise...' Kenaz goes quiet at that. Seeing the other man's distress you ask Kenaz about the others, but the firefighter's only response is a sigh and a slow shake of his head.[line break]";
				say "'I'm sorry, I...I just don't want to even think about, much less speak on it. As far as I know, everyone was supposed to be heading out of town...or whatever. That's all I know.' Asking what happened to the captain over the firehouse you raise an eyebrow when Kenaz snorts all of a sudden. 'That fatass is the one who gave everyone the paid time off! Of course, that was right after he told us that this station was going to be shut down in a few months and everyone would be relocated elsewhere. Something about a decision the mayor made or some such nonsense.'[line break]";
				say "A growl from Kenaz has you stepping back from the other as he sounds all too canine right about now. 'Oops, sorry about that. I think whatever's in the air here has gotten to me.' Kenaz laughs, but it sounds way too forced to be real. 'Anyway, I don't have much to tell you. Just that everyone's gone and I'm the only one left around.' At that Kenaz shuts down all conversation...for the moment anyway.[line break]";
				say "Looking to the green eyed fireman and then around to the almost tomb-like firehouse you begin to wonder if there is some way to find out about the members of this station. Maybe getting in contact with an informant might be wise? But where does one find an informant?";
				decrease thirst of player by 25;
				if thirst of player < 0, now thirst of player is 0;
				now smf is 1;
				now Kenaztalk is 1; 
				increase score by 10;
			otherwise:
				say "Grabbing Kenaz to try and stop him you fail to get through the other man's thick skull about the danger he's putting himself through. 'Who do you think has been keeping this place safe after everything went all to hell?' Kenaz gives you a mischievous smirk and then heads for the front door of the firehouse. Watching as the auburn haired firefighter begins to removes his makeshift barricade you nod to the other's back and then turn to look around the firehouse. Seeing exactly what you need sitting by the side of a makeshift grill you go over, pick up the item, give it a few test swings and then step up behind Kenaz.[line break]";
				say "The other man senses nothing, not until you raise the thing in your hand and then slam it right over the top of the half Asian's cranium. Kenaz drops like a light just as he was getting ready to reach for the handle the door. Moving the firefighter safely over to the side of one of the fire engines you steel yourself for the fight to come, even as you hear the pounding outside of the garage doors getting more forceful in its intensity.[line break]";
				fight;
				fight;
				fight;
				fight;
				fight;
				say "Having dealt with that lot you make your way back inside of the firehouse and to check on Kenaz. Seeing him gone from makes a surge of panic shoot throughout your spine, that is, right before you feel something hard and heavy hit you across the back of the head. Yelping in dismay you grab the top of your scalp and then flip your head around to have a look at whoever just assaulted you. 'Now you know how I feel.' Kenaz says somewhat smugly before dropping the thing in his hand to let it clatter loudly down onto the ground.[line break]";
				say " You try and apologize to the other man, but Kenaz simply waves you off. The rueful smile on his face tells you of the firefighter's appreciation for what you did. 'Want some water?'You nod to Kenaz at his offer. It takes the other man a minute to return but once he does Kenaz has both a bottle of water and two ice packs in hand, though one of the packs is covering the firefighter's own head. 'I thank you for the save, but seriously?' You can only shrug after Kenaz hands you the water and ice pack. Twisting the cap of the bottle open you swallow the water while at the same time pressing the offered ice pack over you throbbing head. The two of you say nothing for a long while, simply enjoying each other's company, even though the both of you are in shared pain.[line break]";
				say "'I wish the others were here,' Kenaz sighs all of a sudden. You look over to the other man and then ask him what he's on about. 'The guys, I mean the other firefighters, I kinda miss them.' You chuckle as you ask him to elaborate a bit more. 'We all were supposed to be getting some time off before being relocated since the station is going to be closing soon because of the damn mayor. The fatass captain and his crony in the downtown office decided that there doesn't need to be a more than one firehouse per burrow and since station 83 is just three miles away from here...' Kenaz let's that sentence die, but not before growling like an angry mutt.[line break]";
				say "'Sorry about that,' Kenaz smiles sheepishly. 'I think the stuff in the air here is getting to me. At least it seems to be whenever I get angry or...' Kenaz coughs at that and then shakes his head. It's not hard to figure out the unspoken finish to that sentence. 'Anyway, the guys have all gone off somewhere or another so it's just me here. I wouldn't mind it, but every day those [']things['] outside come around and I have to fight them off. That's why you didn't need to hit me to stop me since I know what I'm getting myself into.' You let Kenaz know that the higher the risk of infection the more likely he'd lose himself to the virus, especially since the mutants outside seem to almost exclusively prey on virgin humanity.[line break]";
				say "'Heh, I didn't know that. Oh well, makes sense, I guess.' Kenaz sighs and then lowers his head in silent, his right hand is all that keeps the ice pack from falling onto the floor. Asking Kenaz what happened with the others the firefighter can only shrug. 'Don't know, everyone was supposed to be going out of town or something so that only left me and Birch around to watch over the place. Since the two of us basically live here we didn't really mind it. But after he left and didn't come back I went to his girlfriend's apartment to check on him.[line break]"; 
				say "I got told by the land lady that she hadn't seen either of them in a while. Maybe one of those things out there caught him?' Seeing the other man's despondence as he mournfully shakes his head you wonder if you could find out some information about the other firefighters.";
				decrease thirst of player by 25;
				if thirst of player < 0, now thirst of player is 0;
				now smf is 1;
				now Kenaztalk is 1; 
				increase score by 10;
	if Kenaztalk is 1: [Normal short messages the npc will say each time you talk to them]
		say "[One of]'Oh hey! How've you been?'[or]'Are you alright? You look a little tired.'[or]'Kenaz simply waves at you as he goes about sweeping the floor.[or]'Could you...maybe stand over there for a second?' Kenaz asks while pausing his mop right at your feet.[or]'I hope the other guys are safe somewhere.' Kenaz says wistfully.[or]Where oh where has my little...what the hell am I saying? Kenaz blinks as he stops himself.[or]'Maybe I should go out and try to see if there is somebody I can help?'[or]You may not know it but I signed up for firefighter duty because I felt that it was destiny for me.'[or]'Is it strange for a half-Asian to have a name that means torch in the language of the Anglo-Saxons?'[or]'To this day I'm not sure why my sire named me Kenaz. He did say it was because of the burning spirit he saw in my eyes as a babe, though I think he was drunk at the time when I asked him.' Kenaz patiently shakes his head after saying this.[or]'My mother is a enduring woman by birth. Both demure and refined as a rose in may. I really hate that she and I can never see eye to eye on much though.' Kenaz chuckles sadly.[at random]";

Kenazfrisky is a number that varies.

Instead of fucking Kenaz:
	if Kenazquest is 4 and Kenazfrisky - turns < 6:
		say "'S-sorry friend.' Kenaz pants while wagging his tail both tiredly as well as happily up at you. 'I think this Dal boy is going to need a rest before he's got anything left to shoot through his fire hose.' The playful firefighter gives you a lick across the cheek before going back to what he was doing.";
	otherwise if Kenazquest is 8 and Kenazfrisky - turns < 6:
		say "'I know you might want to take a ride right about now, or maybe have a nice foot-long Dalmatian hot dog underneath your tail, but you're going to have to wait.' Kenaz chuckles before patting you on the ass and then sending you off with a dismissive wave of his hand.";



Fire House ends here.
