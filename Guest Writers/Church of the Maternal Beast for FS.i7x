Version 4 of Church of the Maternal Beast for FS by Guest Writers begins here.
[Version 4 - Updated layout - Stripes]
[- Originally Authored By: Telanda Softpaw -]

"This is a complete interaction scene, including monsters, rooms, a few scripted encounters and maybe even an item or two."

[
the Beach Area is a situation.

After resolving the Beach Area, try looking;

Instead of Resolving the Beach Area:
	say "After far too many dead ends, and impassible roads, you finally manage to find your way Back to the Beach on one side of the city.";
	now The Beach Plaza is known;
	move the player to Beach Plaza;
	now the Beach Area is resolved;
]

Book 1 - Rooms

Beach Plaza is a Room. "     As you step out of the dirty, ill-kempt street you are met surprised by the sunny scene spread out in front of you, an open and relatively clean plaza with steps leading down to a small stretch of public beach. There are various infected cavorting around in the sand and water, laughing and enjoying themselves. To the north is a church, its wide double doors open and inviting, and to the west is a set of stairs down onto the beach proper.".
The Beach Plaza is fasttravel.
The Beach Plaza is not known.
Beach Exit is a door. Beach Exit is dangerous. The marea of Beach Exit is "Outside". Beach Exit is undescribed. Beach Exit is east of Beach Plaza. East of Beach Exit is Outside Exploration.
[The Beach Plaza is private.]

Public Beach is a Room. "[publicbeachdesc]".

to say publicbeachdesc:
	say "     You are standing on a clean, sandy beach, looking out across the water. The [if daytimer is day]beach is sunny and warm, with the sea air fresh and calm[else]night sky is clear, letting the moonlight twinkle across the soft waves[end if]. In the distance, you can see the waves strike a treacherous reef of rocks. This barrier is probably why the water is so calm close to the beach, protecting the beach from the force of the ocean's waves.";
	say "     A few changed faces glance up at you, and a few smile friendlily, but otherwise you're left alone. There seem to be [if daytimer is day]a lot of aquatic infected here[else]quite a few aquatic infected here even at night[end if], otters & dolphins mainly, though one big hunk of an orca does stand out. He's got a whistle around his meaty neck and seems to be acting as the lifeguard here. He looks occupied right now however.";
	say "     Thanks to the lifeguard, the immediate area on the beach seems peaceful enough, but things seem less supervised (and civilized) should you follow the sandy shoreline [link]southwards[as]south[end link]. Should you rather stay here and perhaps even get a snack, there's a small beach-side restaurant you can go [link]inside[as]in[end link]. The [link]west[end link] leads out onto some sand bars before the water gets too deep and choppy for the casual swimmer as those rocky outcroppings start to appear. To your [link]north[end link] is set of dirty dingy sheds. Should you wish to leave the beach, it is backed by a short block wall to the [link]east[end link] with stairs leading back up to the plaza.";

West of Beach Plaza is Public Beach.

Unsupervised Beach is a door. "The beach continues along to the south, but is unsupervised. Unlike here, you see few people around... perhaps for good reason." Unsupervised Beach is dangerous.
The marea of Unsupervised Beach is "Beach".

South of Public Beach is Unsupervised Beach.
South of Unsupervised Beach is UnsupBeach. [Check]

instead of sniffing the beach plaza:
	say "The seashore is near. There is salt in the air.";

instead of sniffing Public Beach:
	say "The salt in the air is reminiscent of high tide at the beach.";


Church Hall is a room. "     The inside of the Church is dim but not dark - relaxing, one could say. It seems all terribly normal, wooden pews filling much of the long hall, a smattering of heads sitting here and there. There's definitely no lack of space. There are some signs that whatever religion is practiced here, it's not anything you recognise. There are no crosses or other recognisable religious symbols. There are several freshly painted motifs however and they all seem to depict some great stylised beast offering protection and shelter to those near it. At the far end of the church, there seems to be a recessed door that, based on the outside of the building, must lead down some stairs.".
North of Beach Plaza is Church Hall.
There is a Notice Board in the Church Hall. It is rooted in place.
There is a Confession Booth in the Church Hall. "Standing against one wall, the dark wood of the large confession booth catches the eye. It has been modified to allow even a large creature such of those Panther Taurs to fit inside.". It is Rooted in place.
The invent of Church Hall is { "nullifying powder" }.

instead of sniffing Church Hall:
	say "The church smells of incense, arousal and the sea air from outside.";

instead of sniffing Dirty Sheds:
	say "The area smells like fresh, sea air.";

instead of sniffing the Overgrown Block:
	if houndfromhell is true:
		say "Aside from the seaside air, there is a strong, sulfurous scent that is [if isHellhound is true]very arousing, smelling strongly of the Hellhound you mated with[else]both frightening and arousing. Something has been marking its territory here[end if].";
	else:
		say "This deserted spot smells faintly of the seaside air.";


Dirty Sheds is a room. "     Set a way back from the beach, the row of dilapidated sheds were used to store things like lifesaving equipment and other stuff. Now the overlong grass makes it nearly impossible to open the doors, and that is if you could do something about the big rusted padlocks on most of the doors. One seems to have been broken into already however, the door hanging off its hinges and ransacked interior barely visible. Between two of the sheds there is one oddity, a path north has been worn into the overlong grass.".
north of public beach is Dirty Sheds.

Overgrown Block is a room. "[block description]".
North of Dirty Sheds is overgrown block.

to say block description:
	if daytimer is night:	[night]
		say "     At this time of night it's far too dark to make out much of the unlit, overgrown block.";
		if houndfromhell is true and isHellhound is false:
			say "[meetHellhound]";
		if hellHoundLevel > 1:
			say "[returntoHellhound]";
	else: [ day ]
		say "     Tucked away behind the sheds is a dilapidated vacant block. There doesn't seem to be any road or gate or other way in here. Huh? Must have been a planning error. It's mostly nondescript, though with all the wild, woody bushes and overlong grass, you probably wouldn't be able to see anything if it WAS here. There are several patches of dead grass, spots where it has just withered and formed a dead circle... Weird.";


Book 2 - NPCs

Book 3 - Rules & Triggers

part 3.1 - Generic Definitions

beachrape is a truth state that varies. beachrape is usually false.
houndfromhell is a truth state that Varies. houndfromhell is usually false.

understand "beach" as Beach Plaza.
understand "church" as Beach Plaza.
understand "board" as Notice Board.

to say beachrapetoggle:
	now beachrape is True;

part 3.2 - Notice Board

Table of board entries
entry text	entry trigger
"The Church would like to issue a warning to all roaming the district at night. Strange flickering green light has been seen behind the sheds north of the beach. It is advised no one visit this area."	"[hellhoundtoggle]"

Instead of examining the Notice Board:
	say "     Covering the notice board are many scraps of paper, most worse for wear. But at the same time most seem relatively new. Huh? Guess paper is a tad hard to come by. Most of them seem to be personal ads. Should those be on a church notice board?![line break]Anyways, here are a few that catch your attention.[line break]";
	repeat through Table of board entries:
		say "[line break][entry text entry][entry trigger entry]";

part 3.3 - Confession Booth

lastconfession is a number that varies. lastconfession is 248.

This is the church description rule:
	say "     As you ask about the church, you hear a friendly little laugh from the other side of the booth. 'Indeed! That truly is the question we are asked most!' you sense the priestess smiling even though you cannot see her.";
	say "     'This is the place of the Great Mother, the Church of the Maternal Beast. Following her will, we have re-purposed this place to try and help those who suffer under the weight of the infection that runs rampant in the city. We try to offer peace and comfort, and to help other learn that while overwhelming, it does not need to control you.'";
	wait for any key;
	clear the screen;
	rule succeeds;

this is the lustconfession rule:
	say "     You hear a soft sigh. 'Indeed, you speak of one of the most dangerous aspects of the infection, for it leads towards loosing yourself. Please just listen, and I will attempt to help you overcome its controlling nature.'";
	if ( lastconfession - 7 ) > turns:
		say "     The priestess's words and advice do indeed help, granting you better control over your lusts, at least for now.";
		Decrease libido of player by 20;
		if libido of player < 0, now libido of player is 0;
		now lastconfession is turns;
	else:
		say "     Unburdening yourself again, you sadly discover it has little effect as you had nothing to add since your last confession session.";
	wait for any key;
	clear the screen;
	rule succeeds;

this is the leaveconfession Rule:
	say "You mumble a soft goodbye and thank-you, then leave the confessional stepping back out into the church.";
	wait for any key;
	decrease the menu depth by 1;

Table of confession entries
title	subtable	description	toggle
"What is this place?"	--	""	church description rule
"Confess about the sexual need that tries to overwhelm you."	--	""	lustconfession rule
"Leave the confessional."	--	""	leaveconfession Rule
--	--	--	--  [extra line for adding the demon brute cleansing question]

instead of examining the confession booth:
	Say "     It's quiet and nondescript, perhaps you should try to [bold type][link]enter[as]enter confession[end link][roman type] it and confess, or just talk to whomever is inside?";

instead of sniffing the confession booth:
	say "It smells faintly of incense and arousal from the various creatures who have been within it.";

instead of entering the Confession Booth:
	enterConfessional;

to enterConfessional:
	say "     As you close the door of the booth and kneel the best you can, a voice speaks slowly. It is warm, comforting, and unmistakably female. 'Welcome my child, you may not know but we do not follow the Christian tradition here. We simply are making use of what they left in place. Please feel free to ask questions, and if you have any troubles weighing heavily on your mind, please voice them. I will do my best to put your mind and spirit at ease.'";
	wait for any key;
	change the current menu to Table of confession entries;
	carry out the displaying activity;
	clear the screen;

Part 3.4 - Hellhound

to say hellhoundtoggle:
	now houndfromhell is true;

isHellhound is a truth state that Varies. isHellhound is usually false.
maleHound is a truth state that Varies. maleHound is usually false.
hellHoundLevel is a number that varies. hellHoundLevel is usually 0.

to say meetHellhound:
	say "     Movement in some bushes catches your attention. A sickly green-yellow light seems to emanate from them and some kind of large hound stalks out from amongst them. Bathed in an eerie, sourceless yellow light, the beasts fur is a dirty mix of browns, tufted and mussed all over as if uncared about. It is as big as a Great Dane, but there is no recognisable breed that you can use to name it.";
	say "     The beast cocks its leg and sends a strong stream of luminescent, yellow urine splashing into the grass before it seems to notice you. The stream falters then stops as it licks its muzzle and then begins to approach. There is something about the strange monster that tells you it isn't the same as the other infected creatures. A whiff of sulfur hits you as it stalks closer.";
	say "     If you're going to escape you'd best do so now. Shall you escape back south?";
	if player consents:
		say "     Hastily backing away, you slip back amongst the sheds. The fel hound doesn't bother to follow."; [Escape Text.]
		move the player to Dirty Sheds;
	else:
		say ""; [Hellhound introduction text?]
		say "     As you glance behind at the way you came, a large wall of greenish fire leaps up, making a crackling noise as it sets the grass beneath it alight, even though you can feel no heat. A soft lusty growl drags your attention back to the infernal four-legged beast you are now trapped with.";
		say "     'Oooh, what have we here? A mortal? How delicious!'";[Gender detect line Removed]
		say "     He licks his lips as he regards you, seeming to peer straight into your mind, if not deeper, weighing your thoughts, desires, and lusts. 'You seem like the opportunistic type. I do believe I could offer you something you'd like, a great deal even, for it is something you can obtain no other way!'";
		say "     As the beast shifts a waft of sulfur threatens to choke you, and simply being close to the creature is making your stomach churn and feel nauseous, forcing you to clutch at it as you sink to your knees while trying to avoid throwing up. The movement means that your face is level with the infernal hounds muzzle as it reaches you.";
		say "     'I can make you immune to this strange little plague that is flowing about. I must admit, it is a WONDERFUL piece of work. But I don't think most of the victims would agree with my opinion.' He seems to muse on this fact of a moment as you start to get dizzy and lightheaded. 'A shame, but no matter. I can make you immune to it. Oh! and as a side effect, you'll probably be better able to tolerate my presence. In time, perhaps even come to enjoy it.'";
		say "     'So, will you let me change you, mortal? I do promise I don't want anything foolish or incorporeal like your soul. I am just a gate keeper after all. I have no use for such things.'";
		say "     Shall you accept the Hellhound's dark offer?";
		if player consents:
			remove "Herm Preferred" from feats of the player, if present;
			if "Male Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
				now isHellhound is true;
				now maleHound is True;
				now hellHoundLevel is 1;
				Hellhound infect male;
			else if "Female Preferred" is listed in feats of player or "Always A Pussy" is listed in feats of player:
				now isHellhound is true;
				now maleHound is false;
				now hellHoundLevel is 1;
				Hellhound infect female;
			else if cunts of player > 0 and cocks of player > 0: [ Herm ]
				say "     The hellhound seems to let out an indecisive 'hrrm,' sitting back on his haunches. 'Well, this causes something of a dilemma, which of your sexes do I make use of?' The beast cocks his head sideways. 'You would probably rather be a male, yes?'"; [Prompt cock or pussy]
				if player consents:
					now isHellhound is true;
					now maleHound is True;
					now hellHoundLevel is 1;
					Hellhound infect male;
				else:
					now isHellhound is true;
					now maleHound is false;
					now hellHoundLevel is 1;
					Hellhound infect female;
			else if cunts of player > 0:	[ Female]
				now isHellhound is true;
				now maleHound is false;
				now hellHoundLevel is 1;
				Hellhound infect female;
			else if cocks of player > 0:	[ Male]
				now isHellhound is true;
				now maleHound is True;
				now hellHoundLevel is 1;
				Hellhound infect male;
			else:	[ You poor neuter]
				say "     *snorts* 'You're of no use to me, mortal.";
		else:
			say "     The hellhound's tongue lolls out of its muzzle, yellow slime dripping from it as it gives a derisive snort. 'Such self deception... oh well. I will return when you realise it is what you truly want!' With that, the green flames flicker at its paws then suddenly shoot up in a column of fel fire before vanishing. Nothing remains but an ashen circle.";

to Hellhound infect female:
	clear the screen;
	say "     As you weakly nod your head, agreeing to the offer made by the foul beast, it lets out an unholy howl. The sound sends shivers throughout your body and echoes through your mind causing disgust and fear, making it impossible to stand. The hound lick his lips and paces around you, it doesn't take him long to make good on his offer however, letting out an eager growl and rearing onto its hind legs to push you back onto the ground with its huge paws.";
	say "     As you choke on the stench of sulfur, the beast takes the opportunity to press its muzzle against your lips, its tongue delving in. Your body spasms as it exhales... something intangible... yet somehow also fills your mouth completely. The strange yellow cloud flows down your throat, entering your lungs and your stomach. It soaks through your flesh and worms its way up into your mind, causing an agonising pain that suddenly just... stops.";
	say "     The hellhound steps off you, taking a few steps back as you cough and splutter shaking your head as everything starts to... brighten? The shadows of the block no longer seem to hide anything. The stench is gone to as well as the urge to throw up. You look at your benefactor and can see the glint of your own eyes glowing yellow reflected in his. He just pants happily, pleased with his handiwork, dragging a slimy tongue over your cheek before beginning to tug clothing. He pushes with his paws and large head, maneuvering you onto your hands and knees so that he can continue his work. You no longer have any intention or ability to object, even if you had intended to originally. Even as you hear the tearing of fabric and cool air wash between your legs as he rips out the crotch of your pants deftly and moves to cover you, you accept it and wait. The canine's dirty fur drags against your cloths and his wet, piss-soaked sheath jerks and rubs over your exposed sex.";
	say "     'Give yourself to me, bitch. Seal your fate as one of my children and sluts.' You shiver as he pants hotly in your ear, mockingly issuing the order. And even as your mind babbles that you can't really mean to give into the demonic being, you feel your hips twitch back, your cunt lips spreading and pushing the beast's sheath back. The dirty, foul length starting to enter your passage.";
	say "     'Stop!' he orders, grasping your hips with his forelimbs and panting happily. A soft grunt then a happy whine heard from the infernal canine and then a flood of hot, liquid foulness starts to run down into you. The demon dog's paws shifting and pushing on your shoulders, making you lower your chest into the ground as his piss flows into you. Burning horribly, destroying your mortal flesh and leaving an unholy taint as he as he lets out a hiss of pleasure. 'Oh YESSSSSS!' His head tilts back, tongue lolling out of his muzzle and you feel a strange tightness start to form around your neck, growing firmer the longer you submit to this infernal hound. You don't get a chance to determine what it is however before the beast snarls and drives his cock home. His foul urine gushing out from around his cock, soaking your legs and forcing you to kneel in the growing puddle even as you feel his cock engorge and swell, filling your sex completely. With a final howl, he grinds his shaft into your cunt, rubbing the bunched up sheath against your cunt lips. With the length spasming inside you, you get a single rush of unimaginable, painful heat before blacking out.";
	wait for any key;
	clear the screen;
	say "     You wake up several hours later with your clothing torn to ribbons and slimy, yellow-tinged seed forming a puddle between your legs. Feeling your neck, there is a seamless leather collar, engraved with strange infernal characters tightly wrapped around it. Somehow you've been brought back to the bunker, and true to the demon dog's words, you no longer show any signs of the infection. You seem to have been completely restored to a human form... except for one place. Between your legs is a lewd dripping demon bitch twat, swollen and puffy, leaking the hellhound's piss and cum as you hear a chuckle in your mind. 'Such a pretty bitch you are. Please, go out and enjoy yourself. You are now immune to the changes, just as I promised, as one of us. You will easily return to the form you want to hold, with one or two things that can't be hidden. Such are the rules, there must always be SOME kind visible proof or our infernal origins. Return to me once you a properly... ready,' the voice says, fading out and leaving you alone with your thoughts in the bunker.";
	say "     Your insides clench with a fiery heat, longing to have a litter of hellhound pups gestating inside you.";
	if Humanity of player > 50, now humanity of player is 50;
	now skin of player is "smooth";
	now face of player is "leather dog collar around your neck, and a charmingly human";
	now tail of player is "";
	now Cock of player is "";
	now body of player is "appears perfectly human at first, but on your belly there are six nipples, and between your legs rests a swollen, permanently in-heat Hellhound twat";
	now bodyname of player is "Hellhound";
	now facename of player is "Hellhound";
	now skinname of player is "human";
	now cockname of player is "Hellhound";
	now tailname of player is "human";
	now scalevalue of player is 3;
	now bodydesc of player is "[one of]average[or]normal[or]unchanged[at random]";
	now bodytype of player is "human";
	now daycycle of player is 0;
	now cunts of player is 1;
	now cunt length of player is 6;
	now cunt width of player is 4;
	now breasts of player is 2;
	now breast size of player is 2;
	now libido of player is 100;
	now hellHoundLevel is 1;
	move the player to Bunker, without printing a room description;
	follow turnpass rule;

to Hellhound infect male:
	clear the screen;
	say "     As you weakly nod your head, agreeing to the offer made by the foul beast, it lets out an unholy howl. It sends shivers throughout your body and echoes through your mind causing disgust and fear, making it impossible to stand. The hound lick his lips and paces around you. It doesn't take him long to come to a rather surprising decision. 'Hrm... I think this will work better if I look like... this' The hellhound's form ripples and seems to blur in front of you, its shoulders becoming rounder, lines softer as it shifts to become a she as you watch.";
	say "     'Yes, I think this will work MUCH better for dealing with you.' She seems to smirk as she saunters over, rearing up on her hind legs and resting the large, wickedly clawed paws on your shoulders, touching her nose against yours as her foul, sulfurous breath washes over your face, making you choke and gag. As soon as your mouth opens she pushes her bestial lips against your, forcing your mouth open wider and sliding her tongue in. Something else enters you at the same time, locking your jaw open as what seems to be yellow mist fills your mouth, then slides down your throat and into your lungs. It seeps up into your mind, the last causing agonising pain for a brief moment before it... stops? You fall onto your back, gasping and spluttering as an unnatural heat seeming to wash over your entire body, burning out the infectious nanites and seeming to meld your flesh back into a human form. Eventually it all comes to an end, giving you the opportunity to sit back up with a pained groan and to blink away the tears.";
	say "     A happy rumble draws your attention, lying on her side, in the puddle of piss made back when she was a he, the hellhound bitch lounges. With a coy wink, she lifts a hind leg, rolling onto her back and exposing her sickeningly dirty, swollen, and leaking sex. The sight of it makes your member feel tight... wait tight? Glancing into your pants you find that between your legs you are NOT human. You possess a hellhound's sheath tight around the swelling, canine cock, yellowish seed leaking from your cock tip as the bitch talks seductively.";
	say "     'Now then handsome, how about you make good use of that wonderful length of yours, hrrm?' Lust surges through you, crawling on your hands and knees you ignore your jabbering mind as it tries to stop you, coming to kneel over the infernal bitch as she coyly licks your face. You reach back and grab your foul canine cock, pulling the sheath back and pushing your tip just inside the bitch, rubbing it back and forth as she lets out a lusty growl and tries to wriggle back onto the member. While keeping yourself from sliding any deeper, you slip both hands behind her head and hold her ears, squeezing and stroking them. You let out a feral growl from your human throat, then begin to flood her with your piss. The flow seems to come from a bottomless pit inside you, washing down and filling her, making her arch and whine in ecstatic pleasure as it floods in, then gushes back out from around your cock tip.";
	say "     After a few moments, you take her in earnest, pushing your cock right up in, feeling her tense then howl. Her sex spasming as her cum and her piss mix with your as you feel the unnatural canine lock around your knot. From nowhere you feel your own climax building, and a tightness around your neck start to constrict. Before you can move a hand to check what the tightness is, the hell bitch howls and jerks, leaning up and burying her fangs into your neck as you let out a startled howl of climax as well. Everything blurs in a haze of pain and pleasure before you black out as your knot swells and ties inside the fel hound.";
	wait for any key;
	clear the screen;
	say "     You wake up several hours later, your clothing torn to ribbons. Feeling your neck, there is a seamless leather collar, engraved with strange infernal characters tightly wrapped around it. Somehow you've been brought back to the bunker, and true to the demon-dog's words, you no longer show any signs of the infection. You seem to have been completely restored to a human form... except for one place. Glancing down, you have the dirty and fouled hellhound shaft from the night before, dried up cum peeling from your skin and making the fur clump together. As you try and take this development in, you hear a chuckle in your mind 'Mmmmmmm, that WAS an enjoyable night, puppy. But you're not quite up to the task yet. You are not ready to be a male in my pack. Return to me once you have a little more... experience,' the voice fades away, leaving you alone with your thoughts in the bunker.";
	say "     An unholy urge fills you as rub at yourself through your pants. Females, bitches - you need to fill them with your seed.";
	if Humanity of player > 50, now humanity of player is 50;
	now skin of player is "smooth";
	now face of player is "leather dog collar around your neck, and a charmingly human";
	now tail of player is "";
	now Cock of player is "";
	now body of player is "appears perfectly human at first, but sprouting between your legs is sheath and coarse fur that remains dirty no matter how much you attempt to clean yourself";
	now bodyname of player is "Hellhound";
	now facename of player is "Hellhound";
	now skinname of player is "human";
	now cockname of player is "Hellhound";
	now tailname of player is "human";
	now scalevalue of player is 3;
	now bodydesc of player is "[one of]average[or]normal[or]unchanged[at random]";
	now bodytype of player is "human";
	now daycycle of player is 0;
	now cocks of player is 1;
	now cock length of player is 6;
	now the cock width of the player is 4;
	now breasts of player is 2;
	now breast size of player is 0;
	now libido of player is 100;
	now hellHoundLevel is 1;
	move the player to Bunker, without printing a room description;
	follow turnpass rule;

[***]
to say returntoHellhound:
	say "     As you approach the vacant block where you initially encountered the Hellhound, a sick feeling starts to grow in your gut. There is something inside you wrestling with the infernal infection as you approach the scorched line on the ground where the wall of fire had blocked your passage the night before. Lounging in the grass at the center of the clearing are three hellhounds. One is watching you, licking his lips as he waits for you to approach the line burnt in the grass.[line break]Hesitating at the thresh-hold, you get a sense that this is your last chance to turn back. Continue?";
	if player consents:
		if maleHound is true:	[if the player is male]
			say "     Stepping over the line causes the one watching to lift its head, a lusty growl escaping its throat as it bounds over. Wagging its tail as it heads towards you, the other two seems to start paying attention, heads coming up to regard you with interest in their eyes. 'Ooh you finally came back! We've been waiting! Yes, we have!'";
			say "     She rears up onto her hind legs, paws resting on your shoulders as she eagerly licks your face, before grabbing the cloth at your shoulder with a mischievous grin and pulling. The fabric tears easily, coming apart as if it's starting to rot and decay. The other two bitches take this as a signal and soon they to have their fangs and claws buried in your clothing. They shred and destroy it until you're standing naked in the clearing, your twisted and tainted body visible for all three to appreciate.";
			say "     'Oh I think you're right, big sister. He WILL make a nice change from the four-leggers!'";
			say "     The first bitch just smirks before letting out a playful mock-growl and tackling you. As you are pinned to the ground, she draws her hot wet tongue across your throat while another bitch takes the opportunity to press her hot, dry nose under your dangling canine balls, slowly dragging it across them and working up towards the top of your sheath. As you groan and shiver in pleasure, the bitch atop you smirks and turns around, dropping her swollen, oozing, slimy, canine twat in your face. The reek of infernal bitch overpowers your senses and the scent digs its claws into your tainted mind. You press your lips against the bitch's twat, slowly sliding your tongue into her heated depths while the bitch at your sheath begins to slide her tongue down inside, stroking and suckling at your canine cock before it even manages to slip free of its home.";
			say "     Groaning into the bitches swollen, leaking mound, you can't help but hump into the muzzle wrapped around your tainted, hellhound length. Your tongue works eagerly into female atop you as the bitch whines and grinds her rear back against you before letting out a bark and yelp of pleasure, your face suddenly covered in a sticky, yellow-stained fluid as the bitch cums.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     As both of the bitches that you have been pleasuring pull away grinning, your attention moves to the third. She stands with her rear presented to you, sex swollen and oozing. The puddle at her hind legs is so large she's forced to stand in it. The grass in that puddle has already withered from the tainted fluid. With your shaft bobbing eagerly in the air, mostly free of its home, and drugged on the other bitch's cum, you don't even hesitate. You release a low growl as you move over on your knees, grip the fel animal's hips, and drive yourself into her smouldering depths.";
			say "     The bitch lets out a bark and then a howl! She eagerly grinds back against you as you eagerly hump her four-legged form, your sheath and thighs coated in the bitch's slimy fluids in seconds. Soon your knot swells and locks within, cutting your movement down, eliciting a happy whine for the bitch, and causing you to slump over her back and moan in ecstasy as your member twitches and pulses, pumping your tainted load into her depths.";
			say "     Half an hour later, you're still tied within the hell bitch, your cock still twitching and seeping inside her. The hellhound's belly is obviously swollen, and the other bitches are nuzzling and licking at it, complimenting her on such a large litter of pups. Hearing a crunch in the grass behind you, you move to try and lift your head and look back, but you are stopped as a large, clawed hand wraps around your neck and pushes your face into the bitch's dirty fur.";
			say "     'Stay, mutt! You're not done with her yet.' The bitches bark enthusiastically and the two that are free bound over to nuzzle and press against the newcomer. 'Oh, so you approve of the new male, girls? Good! It's time we took him home then. He's got a lot of bitches to serve after all.'";
			say "     The clawed hand grabs your collar and effortlessly lifts you, making the bitch and yourself yelp in pain and shock as the tie is pulled on. After a few seconds, the bitch lets out a whuff, and from around your knot the fel bitch's piss gushes, soaking your crotch and seeping up to your belly fur as it runs down your thighs. Your sheath is continually flushed out by her urine as you feel the tightness around your knot fade as she seems to get looser and looser before finally popping free.";
			say "     You are then hoisted fully to your feet and allowed to gain your footing, though you are still kept from turning around.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			end the story saying "Your soul is consumed by your hellish lusts.";
		else:	[if the player is female.]
			say "     Stepping over the line and causing the watching hound to grin at you, his tongue lolling out of his muzzle and he prods his pack mates to get their attention. 'Our bitch is finally here.' You shiver at the words... but the slimy mess running down your leg makes it clear no matter what you think you want, your body craves exactly what they want to do to you. As you approach, they casually get to their feet, stretching and yawning, smirking at you as they pad over, then start to circle around. After a few seconds of study, they grab and tear at your clothes, growling happily as they expose your dirty, furred body. One of them drags his tongue over your tailhole while another presses his hot, dry nose against your oozing, lewd, hellhound twat and inhales your scent before dragging his tongue across the swollen, leaking opening.";
			say "     The sensations from all this make you groan and shudder, dropping onto all fours as you feel your sex throb. The third hellhound, the one who initially corrupted you, snickers at your expression. He rolls onto his back, hind legs spread with the tip of his foul length poking from his sheath and oozing yellow cream into his belly fur. 'Come, bitch, it's time to accept your new place.'";
			say "     The two other hellhounds nudge and push you, moving you into position above the hound on his back. As he licks at your muzzle, you can't help but let out a soft whimper. Unable to hold yourself back any longer, you let your knees slide out, arms slipping around the fel animal's shoulders, pressing your belly up against his as he eagerly laps at the coarse, dirty fur of your neck. The penetration is slow, the beast taking its time. The insidious, throbbing organ slides up into your aching sex, sinking in until you feel his tip pressing firmly against your cervix and his bunched up sheath grinding against your swollen, lewd, hellhound spade.";
			say "     The other canines growl lustily, licking and nipping at your body before joining in. A heavy weight settles on your back and paws hook around your hips as one growls and positions himself. And then, in one smooth motion, he slides himself under your tail, deep into your exposed rump. As the feeling of both passages being filled makes you moan, the third hound rears up, placing his paws on your shoulder and hunching forward. The slimy, yellow coated hellhound cock pokes free and pushes into your muzzle until your lips are pressed against his sheath.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "The three hounds screw you with feral abandon, panting, growling and yelping their pleasure as they use your body eagerly. The one using your mouth peaks first, his body tensing as his humping becoming erratic for a few moments before he freezes and shudders. He lets out a howl and his cock throbs in your muzzle as he cums. The slimy ooze runs straight down our throat until he pulls himself free, cock still twitching and pulsing as he lets it rest atop your muzzle. Tainted, yellow seed oozes from its tip, soaking into your facial fur. The other two didn't slow down however, the first hound's climax only seemed to drive them harder. Harsh panting fills in your ears as both of your passages slurped lewdly from the vigorous fucking. Eventually, they too began to buck more erratically until both tensed, grabbing at you however they could with their animalistic paws before driving themselves as deep into your body as they possibly could.";
			say "     As both of your infernal lovers howl, you feel the final thrust of the one in your sex breach your cervix. The demon dog's cocktip buries itself in your womb as the knot at the base of his length swells and locks him within. Torrents of hot, fel seed pulses into your body from both of them, filling both your eager, needy holes.";
			say "     After several blissful minutes with the infernal dogs['] cocks throbbing and oozing into your body, a crunching of grass can be heard. As you groggily lift your head, your vision is filled with a hoof - jet black with a blood red [']sock[']. Your mind seems to be running slowly. This should mean something to you, but you can't quite...";
			say "     'Hurry up, you mutts. It is time we returned.' You feel a jerk on your collar, lifting your head up, startling a whine from your muzzle as the two engorged knots buried inside pull painfully. 'Enough, flood the bitch and let us be gone!'";
			say "     You can't make yourself look at the demon. His voice alone make your ears flatten against your skull and fills you with the urge to slink to him on your belly in submission, but your four-legged lovers back happily at his instructions then grunt softly. Their piss begins to gush into you, both dogs whining happily as they empty themselves inside you. The tainted and foul liquid causes your muscles to relax as the clawed hand pulls at your collar, drawing you up until both dog cocks pop free with a fetid gush of cum and piss. This flow washes back down onto both hounds, running down your legs and staining your fur.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			end the story saying "Your soul is consumed by your hellish lusts.";
	else:
		say "     Shuddering, you manage and turn and walk away despite the unholy urge to join the hellhounds in the clearing.";
		move the player to Dirty Sheds;


to say hellhoundheat:
	[Couldn't use this to check in male case, replaces with an every turn prompt.]
	say "";

[Below this point is the mechanics to 'remove' the infection nanites.]
every turn (This is the check Hellhound rule):
	if isHellhound is true:
		if cockname of player is not "Hellhound":
			now cockname of player is "Hellhound";
			if maleHound is True:
				say "     Almost immediately after the infection alters your maleness, the Hellhound's [']gift['] makes your groin throb and shift back, tip dribbling a bit in arousal.";
				now Cock of player is "[if looknow is 1]encased in a dirty furred sheath, with dried up seed peeling off, rests your slimy, foul, Hellhound[else]foul, Hellhound[end if]";
			else:
				say "     Almost immediately after the infection alters your sex, the Hellhound's [']gift['] makes your groin throb and shift back, spade loose and oozing lubricants.";
				now Cock of player is "";
		if humanity of the player > 33:	[Initial Hellhound Infection]
			if skinname of player is not "human":
				LineBreak;
				now skinname of player is "human";
				now skin of player is "smooth";
				say "     You feel your skin heat, a flush running back over you as the Hellhound's [']gift['] effortlessly destroys the infection, returning your smooth, human skin.";
			if tailname of player is not "human":	[Leave this human so that there's no desc text.]
				LineBreak;
				now tailname of player is "human";
				now tail of player is "";
				say "     You feel a sharp pain at the end of your spine and then, with no further warning, your tail simply drops off, leaving no sign you ever had one.";
			if facename of player is not "Hellhound":
				LineBreak;
				now facename of player is "Hellhound";
				now face of player is "leather dog collar around your neck, and a charmingly human";
				say "     Your face seems to heat up, and feel like soft putty for a few moments as the Hellhound's [']gift['] returns your face to its original, human configuration.";
			if bodyname of player is not "Hellhound":
				LineBreak;
				now bodyname of player is "Hellhound";
				if maleHound is True:
					now body of player is "appears perfectly human at first. But sprouting between your legs is a sheath and coarse fur that remains dirty no matter how much you attempt to clean yourself";
					now scalevalue of player is 3;
					now bodydesc of player is "[one of]average[or]normal[or]unchanged[at random]";
					now bodytype of player is "human";
					now daycycle of player is 0;
				else:
					now body of player is "appears perfectly human at first. But on your belly there are six nipples, and between your legs rests a swollen, permanently in-heat Hellhound twat";
					now scalevalue of player is 3;
					now bodydesc of player is "[one of]average[or]normal[or]unchanged[at random]";
					now bodytype of player is "human";
					now daycycle of player is 0;
				say "     Your body doubles over, not in pain, but simply as muscles spasm and reshape. Your form returns to the human body you were born with, plus the additions you sport due to the Hellhound's [']gift['].";
			if maleHound is True:
				if cunts of player > 0:
					LineBreak;
					say "     Your newly-formed sex throbs, then rapidly ceases to be as the Hellhound's [']gift['] restores you to normal.";
				now cunts of player is 0;
				now cocks of player is 1;
				now cock length of player is 6;
				now the cock width of the player is 4;
				now cunt length of player is 0;
				now cunt width of player is 0;
				now breasts of player is 2;
				now breast size of player is 0;
			else:
				if cocks of player > 0:
					LineBreak;
					say "     Your newly-formed shaft throbs, then rapidly ceases to be as the Hellhound's [']gift['] restores you to normal.";
				now cocks of player is 0;
				now cunts of player is 1;
				now cunt length of player is 6;
				now cunt width of player is 4;
				now breasts of player is 2;
				now breast size of player is 2;
			if libido of player < 90, now libido of player is 90;
		else if humanity of the player > 15:	[Bipedal Hellhound]
			if hellHoundLevel < 2:
				now hellHoundLevel is 2;
				say "     As you surrender your humanity, the hellhound's [']gift['] starts to manifest as the curse it truly is. Your mind starts to embrace the perverted and foul nature that the infernal mutt inflicted upon you. A soft chuckle echoes through your mind and, in your backpack, your journal turns to dust.";
				say "     You also get an unsettling urge to return to where you first encountered the infernal hound.";
				delete journal;
			if skinname of player is not "Hellhound":
				LineBreak;
				now skinname of player is "Hellhound";
				now skin of player is "coarse, dirty fur covering your";
				say "     You feel your skin heat, a flush running back over you as the Hellhound's [']gift['] effortlessly destroys the infection. But with what little humanity you are left, a pelt of coarse, dirty dog fur grows over you.";
			if tailname of player is not "Hellhound":
				LineBreak;
				now tailname of player is "Hellhound";
				now tail of player is "Extending from your spine is a slender canine tail. Strangely, you don't seem to be able to lower it, exposing yourself to all who may look.";
				say "     You feel a sharp pain at the end of your spine, then with no further warning you feel something writhe and reshape back there, a hellhound's tail forming.";
			if facename of player is not "Hellhound":
				LineBreak;
				now facename of player is "Hellhound";
				now face of player is "leather dog collar around your neck and a yellow eyed, canine";
				say "     Your face seems to heat up, and feel like soft putty for a few moments as the Hellhound's [']gift['] reveals itself for the curse it truly is, pulling your nose out, your mouth filling with canine teeth as your develop a scraggly, dirty furred canine head.";
			if bodyname of player is not "Hellhound":
				LineBreak;
				now bodyname of player is "Hellhound";
				if maleHound is True:
					now body of player is "that of a bipedal dog, paw-like feet, and stubby fingered hands with pawpads and dull black claws.";
					now scalevalue of player is 3;
					now bodydesc of player is "[one of]bipedal[or]altered[or]twisted[or]animalistic[at random]";
					now bodytype of player is "[one of]canine[or]dog-like[at random]";
					now daycycle of player is 0;
				else:
					now body of player is "that of a bipedal dog, paw-like feet, and stubby-fingered hands with pawpads and dull black claws.";
					now scalevalue of player is 3;
					now bodydesc of player is "[one of]bipedal[or]altered[or]twisted[or]animalistic[at random]";
					now bodytype of player is "[one of]canine[or]dog-like[at random]";
					now daycycle of player is 0;
				say "     Your body doubles over, not in pain but simply because you can't remain upright as muscles spasm and reshape, your body reforming into a bipedal version of the infernal mutt you submitted to.";
			if maleHound is True:
				if cunts of player > 0:
					LineBreak;
					say "     Your newly-formed sex throbs, then rapidly ceases to be as the Hellhound's [']gift['] removes the female organs the nanites attempted to inflict upon you.";
				now cunts of player is 0;
				now cocks of player is 1;
				now cock length of player is 6;
				now the cock width of the player is 4;
				now cunt length of player is 0;
				now cunt width of player is 0;
				now breasts of player is 2;
				now breast size of player is 0;
			else:
				if cocks of player > 0:
					LineBreak;
					say "     Your newly-formed shaft throbs, then rapidly ceases to be as the Hellhound's [']gift['] restores you to your cursed, hellhound state.";
				now cocks of player is 0;
				now cunts of player is 1;
				now cunt length of player is 6;
				now cunt width of player is 4;
				now breasts of player is 8;
				now breast size of player is 4;
		else: [quad Hell Doggy ^.^]
			if hellHoundLevel < 3:
				now hellHoundLevel is 3;
				say "     You surrender completely, abandoning your humanity and embracing your infernal nature. Nothing matters to you any more besides pleasure and breeding, spawning as many of your kind as possible.";
				delete journal;
			if skinname of player is not "Hellhound":
				LineBreak;
				now skinname of player is "Hellhound";
				now skin of player is "coarse, dirty fur covering your";
				say "     You feel your skin heat, a flush running back over you as the Hellhound's [']gift['] effortlessly destroys the infection. But with what little humanity you are left, a pelt of coarse, dirty dog fur grows over you.";
			if tailname of player is not "Hellhound":
				LineBreak;
				now tailname of player is "Hellhound";
				now tail of player is "Extending from your spine is a slender canine tail. Strangely, you don't seem to be able to lower it, exposing yourself to all who may look.";
				say "     You feel a sharp pain at the end of your spine, then with no further warning you feel something writhe and reshape back there, a hellhound's tail forming.";
			if facename of player is not "Hellhound":
				LineBreak;
				now facename of player is "Hellhound";
				now face of player is "leather dog collar around your neck and a yellow eyed, canine";
				say "     Your face seems to heat up, and feel like soft putty for a few moments as the Hellhound's [']gift['] reveals itself for the curse it truly is, pulling your nose out, your mouth filling with canine teeth as your develop a scraggly, dirty furred canine head.";
			if bodyname of player is not "Hellhound":
				LineBreak;
				now bodyname of player is "Hellhound";
				if maleHound is True:
					now body of player is "that of an uncommon mutt, four paw-like feet with wicked black claws, and no hands";
					now scalevalue of player is 3;
					now bodydesc of player is "[one of]quadrapedal[or]altered[or]twisted[or]animalistic[at random]";
					now bodytype of player is "[one of]canine[or]dog-like[at random]";
					now daycycle of player is 2;
				else:
					now body of player is "that of an uncommon mutt, four paw-like feet with wicked black claws, and no hands";
					now scalevalue of player is 3;
					now bodydesc of player is "[one of]quadrapedal[or]altered[or]twisted[or]animalistic[at random]";
					now bodytype of player is "[one of]canine[or]dog-like[at random]";
					now daycycle of player is 2;
				say "     Your bones seem to heat and grow soft, the action making you collapse onto the ground as they no longer seem to be able to bear your weight. You are forced to lie there for a few minutes as muscles shift and joints pop. Eventually, the changes seem to complete and you're able to pull yourself to your feet, all four feet. You now wear the form of the foul demonic hound that tainted you.";
			if maleHound is True:
				if cunts of player > 0:
					LineBreak;
					say "     Your newly-formed sex throbs, then rapidly ceases to be as the Hellhound's [']gift['] removes the female organs the nanites attempted to inflict upon you.";
				now cunts of player is 0;
				now cocks of player is 1;
				now cock length of player is 6;
				now the cock width of the player is 4;
				now cunt length of player is 0;
				now cunt width of player is 0;
				now breasts of player is 2;
				now breast size of player is 0;
			else:
				if cocks of player > 0:
					LineBreak;
					say "     Your newly-formed shaft throbs, then rapidly ceases to be as the Hellhound's [']gift['] restores you to your cursed, hellhound state.";
				now cocks of player is 0;
				now cunts of player is 1;
				now cunt length of player is 6;
				now cunt width of player is 4;
				now breasts of player is 8;
				now breast size of player is 4;
		if libido of player < 90, now libido of player is 90;


Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Hellhound";
	now heat cycle entry is 7;
	now heat duration entry is 7;
	now trigger text entry is "     You feel pressure build between your legs, then a wet gush.. You immediately lose control of your bladder as well, a fetid mix of piss and cum running down your legs, as you permanently enter a Hellhound's eternal heat.";
	now description text entry is "[if cocks of player is 0]your sex is dirty and oozing, peeling, dried up seed coating the outer lips and matting up the coarse dirty fur that sprouts around it[else]the fur of your sheath if musky and dirty, no matter how much you try to clean it. A permanent sign of your infernal taint[end if]";
	now inheat entry is "[defaultheat]";
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "     Your [if cocks of player > 0]shaft throbs, tip poking free of your sheath, foul yellow cream oozing from the tip as your balls seem to endlessly churn in an infernal rut your member oozes cum constantly. Your bowels quiver and ache with a foul need, a musky scent laced with pheromones and brimstone seeping from it as your tainted body longs to be bred. These desires war inside you, driving you mad with the urge to bury your cock in someone or something, or to have your bowels[else]bowels quiver and ache with a foul need, a musky scent laced with pheromones and brimstone seeping from it as your tainted body longs to be bred. These infernal desires feel like they might overwhelm you, your tainted body longing to be[end if] bred full of some hellish spawn.";


Book 4 - Return to the Church

churchenter is a number that varies.
lastchurchattempt is a number that varies. lastchurchattempt is normally 248.

instead of going north from the Beach Plaza while hellhoundlevel > 0:
	if churchenter is 0:
		say "     You move to enter the church, but you find it increasingly difficult to move closer to it as you approach. Stubbornly, you try to advance, but are filled with increasing pain as you press onwards. Eventually, you reach a point where the pain is unbearable and you aren't moving a centimeter closer despite pushing with all your might. Exhausted and frustrated, you howl like a beast and leap back. Clearly something, or someone, is preventing you from entering this holy place. Perhaps you should try again later to enter.";
		now HP of player is HP of player / 3;
		now churchenter is 1;
	else if lastchurchattempt - turns < 8 or churchenter is 2 and daytimer is night:
		say "     You try to advance into the church, but are again met with great resistance. You push against it, hoping it will fail, but stop when you can sense no weakness from it. You don't want to pointlessly hurt yourself again. You growl angrily at the church doors and step away.";
	else:
		say "     As you growl in frustration, trying to fight your way to the steps of the church, the doors open and the Priestess is there. She is an angelic figure with white wings and a beautiful, human face. Her ears are those of a rabbit, but with golden fur like her long, flowing hair. She has a feline tail, also golden, emerging from her loose robes. Her body has silvery, scaled skin that starts below her neck, covering her slender arms as well as her taloned hands. Her feet are fluffy rabbit's feet. It takes you a moment to notice that they're not touching the ground, instead hovering lightly over the marble steps. There is a faint glow all about her, yellow and blue, as if the air surrounding her is radiant with energy.";
		say "     'You are not permitted here,' she says, her voice booming with strength. 'You received warning and you disregarded it. You were offered an opportunity to leave and you did not take it. You chose to accept the foul beast's dark gift of your own free will. Your taint is your own made manifest. This house will not welcome one such as you into it.'";
		say "     And with those words, you are pushed steadily away from the church as the glow around her increases. You are driven back, howling in pain. You curse and snap at her, covering your eyes against her radiant light. It is warm and giving and accepting, while your heart is tainted with coldness, selfishness and fear. You cannot stand before it and slink away. Once you reach the far edge of the plaza, the angelic mutant floats back effortlessly and the church doors slam shut of their own accord with a resounding, stern BOOM!";
		now HP of player is HP of player / 3;
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Waiting at the steps down to the beach, you see the hellhound, growling at the doors of the church. 'Do not let it fool you as it has many others. The mortal is deluded; their power is from the infection and nothing more.' Part of you wants to accept that the priestess is something more, something greater, but your tainted heart wants to believe the hellhound's words. 'It treats us poorly. Bars us from that place. Something should be done about it,' he says is a soft, insidious growl to you.";
		say "     You find yourself agreeing with the hellhound, wanting that fool and its painful light to be extinguished. You are free now to do as you wish and it bars your way. You are strong, yet it hurt you and it should pay for that. A seething, unreasoning hatred of that church and its priestess well up in you.";
		say "(Continuation not yet written)";
		now churchenter is 2;


Book 5 - Endings

When play ends:
	if hellHoundLevel > 0:
		Let T be 0;
		if bodyname of player is "Reindeer" and facename of player is "Reindeer" and cockname of player is "Reindeer" and skinname of player is "Reindeer" and tailname of player is "Reindeer":									[gave into the holiday spirit]
			say "     Having given in to the magic of the holidays, you are freed from the Hellhound's curse.";
		else if bodyname of player is "Bottlenose Toy" and facename of player is "Bottlenose Toy" and cockname of player is "Bottlenose Toy" and skinname of player is "Bottlenose Toy" and tailname of player is "Bottlenose Toy":			[gave into fun in the sun]
			say "     Having become an innocent creature living only for happiness and playtime breaks the Hellhound's curse upon you.";
		else if bodyname of player is "Wolverine Guard" and facename of player is "Wolverine Guard" and cockname of player is "Wolverine Guard" and skinname of player is "Wolverine Guard" and tailname of player is "Wolverine Guard":		[succumbed to wolverine sex]
			say "     Your bond as guardian to the Central Library and to your new mate is too strong for the Hellhound's curse, breaking it and allowing you to become a new protector for the library.";
		else if bodyname of player is "Tigress Hooker" and facename of player is "Tigress Hooker" and cockname of player is "Tigress Hooker" and skinname of player is "Tigress Hooker" and tailname of player is "Tigress Hooker":			[claimed at the tigress motel]
			Now T is 0; [do nothing statement]
		else if bodyname of player is "Big Tiger" and facename of player is "Big Tiger" and cockname of player is "Big Tiger" and skinname of player is "Big Tiger" and tailname of player is "Big Tiger":							[victory at tigress motel]
			Now T is 0; [do nothing statement]
		else if bodyname of player is "Big Tigress" and facename of player is "Big Tigress" and cockname of player is "Big Tigress" and skinname of player is "Big Tigress" and tailname of player is "Big Tigress":					[victory at tigress motel]
			Now T is 0; [do nothing statement]
		else if bodyname of player is "Chocolate Lab" and facename of player is "Chocolate Lab" and cockname of player is "Chocolate Lab" and skinname of player is "Chocolate Lab" and tailname of player is "Chocolate Lab":				[made into Chocolate Lab]
			Now T is 0; [do nothing statement]
		else if vinetrapped is 1 or vinetrapped is 2:							[full plant TF]
			Now T is 0; [do nothing statement]
		else if foodvendor is 4:											[food vendor's sex slave]
			Now T is 0; [do nothing statement]
		else if centrallib is 7:											[captured by librarian harpies]
			Now T is 0; [do nothing statement]
		else if skunkbeaststatus is 2:										[lost to Skunkbeast Lord]
			Now T is 0; [do nothing statement]
		else if mousecurse is 1:											[chosen by the mouse-collective]
			say "     As your mind fades, more and more of your infernal taint comes to the fore, hands becoming paws, face stretching out into a muzzle, coarse dirty fur spreading all over your body. But then Rachel is there, holding you tightly in her small arms, somehow her weak arms able to hold back the powerful force of your infernal pact. As your mate clutches to you, you can feel her mind pushing against that dark power. Soon you can feel somewhere above her mind, greater than it, the collective hive-mind of all the mice, focused on this. Your body starts changing again, becoming more mouse-like this time until you are fully a mouse like your loving mate and the other mice of the collective, though of the same gender as you were before. The darkness fades as the bond of the dark pact is shattered by their mental might, freeing you to become fully one of them instead.";
			say "[fullmousification]";
		else if HP of the player > 0:
			follow the check hellhound rule;
			if maleHound is true:
				if humanity of the player < 1:
					say "     As your mind fades, more and more of your infernal taint comes to the fore, hands becoming paws, face stretching out into a muzzle, coarse dirty fur spreading all over your body. Eventually, you're so far gone that you start to couple with common animals without hesitation, and it's when you are tied in a feral mutt you discovered wandering the streets that a green, flickering glow appears behind you.";
					say "     The rough grip on your collar startles you enough to let out a surprised yelp, but the huge, clawed, red hand rubs your ears. 'Easy, mutt! It's just time to go home, that is all. You've had enough fun in the mortal realm.' You let out a disappointed whine, bones melting and reforming as your body alters further to suit your mindless nature. Now you are nothing more than a mindless hellhound, incapable of reasoned thought or speech, unlike the beast that initially corrupted you. 'Come, boy! There's a gate for you to help guard and bitches to breed. If you're good, I may let you out to play with the mortals again someday.'";[Rutting beast, loyal demon, or resisting mortal.]
				else if humanity of player < 33:
					say "     Suddenly, the air in front of you shimmers, giving off a sickly yellow light. A single point seems to hang there for a few moments before it begins to - well, the only word you can use to describe what happens is the air seems to [']tear[']. Furnace-like heat hits you in the face from the black, lightless void. The edges of the ever-growing hole are rimmed in luminescent yellow. Every now and again, a drop seems to fall to the ground from the edge of the growing portal, hissing and leaving a scorch mark.";
					say "     'Time to go home, BITCH!' you hear from behind you before being shoved into the blackened void of the hellgate. As you start to plummet, you let out a startled scream. The darkness is so complete, you cannot even see yourself as the impossible heat steals the air from your lungs. After a few moments, you sink into an unconsciousness as black as your surroundings.";
					say "     Groggily, you feel yourself come to and there is a soft, metallic chink as you shift. Opening your eyes, you find heavy, iron manacles wrapped around your wrists. A similar weight on your ankles tell you those are also restrained. Around you stand hundreds of infernal hounds. The demonic dogs pant quietly, some licking their chops, some letting out soft eager growls and all of them showing some signs of arousal. As they begin to close in, you let out a shiver at the perverse hunger in all of the bitches' eyes. You know they will keep you rutting from now until eternity, only allowed to rest while collapsed on their backs, your member twitching and pulsing within.";
					say "     Hellish or heavenly? Well, I suppose that's up to you.";
				else: [Male Tainted Human]
					say "Your demonic [']luck['] holds and, as the whole city dissolves in chaos, you manage to escape. Weeks later, you stumble into an uninfected location, find a job, and try to return to the life you once had. But the longer you go without... indulging yourself, the harder and tighter your hellhound shaft becomes. It's probably only a matter of time before you end up doing your demonic master's bidding... or in escaping, perhaps you already are.";
			else:
				if humanity of the player < 1:	[Female animal]
					say "     As your mind fades, more and more of your infernal taint comes to the fore, hands becoming paws, face stretching out into a muzzle, coarse dirty fur spreading all over your body. Eventually, you're so far gone that you start to couple with common animals without hesitation, and it's when you are tied beneath a feral mutt you discovered wandering the streets that a green, flickering glow appears behind you.";
					say "     The rough grip on your collar startles you enough to let out a surprised yelp, but the huge, clawed, red hand rubs your ears. 'Easy, bitch! It's just time to go home, that is all. You've had enough fun in the mortal realm.' You let out a disappointed whine, bones melting and reforming as your body alters further to suit your mindless nature. Now you are nothing more than a mindless hellhound, incapable of reasoned thought or speech, unlike the beast that initially corrupted you. 'Come, girl. There's a gate for you to help guard and plenty of males waiting to make sure you remain heavy with pups. If you're good, I may let you out to play with the mortals again someday.'";
				else if humanity of player < 33:	[Female bipedal demon Dog]
					say "     Suddenly, the air in front of you shimmers, giving off a sickly yellow light. A single point seems to hang there for a few moments before it begins to - well, the only word you can use to describe what happens is the air seems to [']tear[']. Furnace-like heat hits you in the face from the black, lightless void. The edges of the ever-growing hole are rimmed in luminescent yellow. Every now and again, a drop seems to fall to the ground from the edge of the growing portal, hissing and leaving a scorch mark.";
					say "     'Time to go home, BITCH!' you hear from behind you before being shoved into the blackened void of the hellgate. As you start to plummet, you let out a startled scream. The darkness is so complete, you cannot even see yourself as the impossible heat steals the air from your lungs. After a few moments, you sink into an unconsciousness as black as your surroundings.";
					say "     Groggily, you feel yourself come to and there is a soft metallic chink as you shift. Opening your eyes, you find heavy, iron manacles wrapped around your wrists. A similar weight on your ankles tell you those are also restrained. Around you stand hundreds of infernal hounds. The demonic dogs pant quietly, some licking their chops, some letting out soft eager growls and all of them showing some signs of arousal. As they begin to close in, you let out a shiver and run a paw over your belly, knowing it will soon be swollen and heavy with their demonic spawn, doomed to an eternity as a bitch whelping litter after litter.";
					say "     Hellish or heavenly? Well, I suppose that's up to you.";
				else:	[Female Tainted Human]
					say "Your demonic [']luck['] holds and, as the whole city dissolves in chaos, you manage to escape. Weeks later, you stumble into an uninfected location, find a job, and try to return to the life you once had. But the longer you go without... indulging yourself, the hotter and wetter your hellhound sex throbs and leaks. It's probably only a matter of time before you end up doing your demonic master's bidding... or in escaping, perhaps you already are.";

Section 3.x - Debug Commands - Not for release

blinkto is an action applying to one thing.
sethumanity is an action applying to one number.

understand "blink [any room]" as blinkto.

understand "sethuman [number]" as sethumanity.

player has a text called destZone

carry out blinkto:
	move the player to the noun;

carry out sethumanity:
	now Humanity of player is number understood;
	[humanity of player]


Church of the Maternal Beast for FS ends here.
