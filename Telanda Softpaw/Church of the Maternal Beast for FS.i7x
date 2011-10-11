Church of the Maternal Beast for FS by Telanda Softpaw begins here.

"This is a Complete interaction scene, including monsters, Rooms, a few scripted encounters and maybe even an item or Two."

[
the Beach Area is a situation.

After resolving the Beach Area, try looking;

Instead of Resolving the Beach Area:
	say "After far to many dead ends, and impassible roads, you finally manage to find your way Back to the Beach on one side of the city.";
	now The Beach Plaza is known;
	move the player to Beach Plaza;
	now the Beach Area is resolved;
]

Book 1 - Rooms

Beach Plaza is a Room. "As you step out of the dirty ill kempt street you are met surprised by the sunny scene spread out in front of you, an open and relatively clean plaza leads down steps to small stretch of public beach, Various infected cavorting around in the sand and water, laughing and enjoying themselves.  To the north is a church, it's wide double doors open and inviting, and to the South-West is a set of stairs down onto the beach proper.".
The Beach Plaza is fasttravel. 
The Beach Plaza is not known.
[The Beach Plaza is private.]

Public Beach is a Room.  "A few changed faces glance up at you, and a few smile friendlily. but otherwise your left alone. there seem to be alot of Aquatic infected here, Otters & Dolphins mainly, though one big Hunk of an Orca does stand out he looks occupied right now however.[line break]To your north is set of dirty dingy sheds and off to your west is a set of rock outcrops, but there doesn't seem to be any way to get there.".
Southwest of Beach Plaza is Public Beach.

Sea is a door. "The sea is visible to the east. What things lurk within?". Sea is dangerous.
The marea of sea is "Beach";


East of Public Beach is Sea.
East of Sea is Ocean.



Church Hall is a room. "The inside of the Church is dim but not dark, relaxing one could say.  It seems all terribly normal, wooden pews filling much of the long hall, a smattering of heads sitting here, and there, there's definitely no lack of space.  There are some signs that whatever religion is practiced here, it's not anything you recognise. There are no crosses or other recognisable religious symbols.  There are several freshly painted motifs however and they all seem to depict some great stylised beast offering protection and shelter to those near it.[Line Break] [line break] At the far end of the Church there seems to be recessed door that based on the outside of the building must lead down some stairs.".
North of Beach Plaza is Church Hall.
There is a Notice Board in the Church Hall. It is Rooted in place.
There is a Confession Booth in the Church Hall. "Standing against one wall, the dark wood of the Large confession booth catches the eye... It's been modified to allow even a large creature such of those Panther Taurs to Fit inside.".
It is Rooted in place.

Dirty Sheds is a room. "Set a way back from the beach, the row of dilapidated sheds were used to store things like lifesaving equipment and other stuff.  Now the overlong grass makes it nearly impossible to open the doors, and that is if you could do something about the big rusted padlocks on most of the doors.  One seems to have been broken into already however, the door hanging off it's hinges and ransacked interior barely visible.[line break]Between two of the sheds there is one oddity, a path north has been worn into the overlong grass.".
north of public beach is Dirty Sheds.

Overgrown Block is a room. "[block description]".
North of Dirty Sheds is overgrown block.

to say block description:
	if remainder after dividing turns by 8 < 4: [ night ]
		say "At this time of night it's far to dark to make out much of the unlit overgrown block.";
		if houndfromhell is true and isHellhound is false:
			say "[meetHellhound]";
		if hellHoundLevel is greater than 1:
			say "[returntoHellhound]";
	else : [ day ]
		say "Tucked away behind the Sheds is a dilapidated vacant block... there doesn't seem to be any road or gate or other way in here, huh must have been a planning error.  It's mostly nondescript, though with all the wild, woody bushes and overlong Grass you probably wouldn't be able to see anything if it WAS here.  [line break]There are several patches of dead grass, spots where it's just withered and formed a dead circle ... weird.";


Book 2 - NPCS

Book 3 - Rules & Triggers

part 3.1 - Generic Definitions

beachrape is a truth state that varies. beachrape is usually false.
houndfromhell is a truth state that Varies. houndfromhell is usually false.

understand "beach" as Beach Plaza;
understand "church" as Beach Plaza;
understand "board" as Notice Board;

to say beachrapetoggle:
	now beachrape is True;

part 3.2 - Notice Board

Table of board entries
entry text	entry trigger
"The Church would like to issue a warning to all Roaming the district at night, Strange flickering green light has been seen behind the sheds north of the beach. It is advised no one visit this area."	"[hellhoundtoggle]"

Instead of examining the Notice Board:
	say "Covering the notice board are many scraps of paper, most worse for wear. but at the same time most seem relatively new, huh, Guess paper is a tad hard to come by.  Most of them seem to be personal ads, should those be on a church notice board?! [line break]Anyways, here are a few that catch your attention.[line break] [line break]";
	repeat through Table of board entries:
		say "[line break][entry text entry] [entry trigger entry] [line break]";
		
part 3.3 - Confession Booth

lastconfession is a number that varies. lastconfession is 248;

This is the church description rule:
	say "As you ask about the church you hear a friendly little laugh from the other side of the booth, [line break]'Indeed! that truly is the question we are asked most!' you sense the Priestess smiling even though you cannot see her.[line break]'This is the place of the Great mother, The church of the maternal beast.  Following her will we have re-purposed this place to try and help those who suffer under the weight of the infection that run rampant in the city, we try to offer peace and comfort, and to help other learn that while overwhelming, it does not need to control you.'[line break]";
	wait for any key;
	clear the screen;
	rule succeeds;

this is the lustconfession rule:
	say "You hear a soft sigh, 'Indeed, you speak of one of the most dangerous aspects of the infection, for it leads towards loosing yourself.' [line break]'Please just listen, and i will attempt to help you overcome it's controlling nature.";
	if ( lastconfession - 7 ) is greater than turns:
		say "[line break] The Priestess words and advice do indeed help, granting you better control over your lusts, at least for now.";
		Decrease libido of player by 20;
		if libido of player is less than 0, now libido of player is 0;
		now lastconfession is turns;
	else:
		say "Unburdening yourself again, you sadly discover it has little effect as you had nothing to add since your last confession session.";
	wait for any key;
	clear the screen;
	rule succeeds;

this is the leaveconfession Rule:
	say "You mumbles a soft goodbye and thank-you. then leave the Confessional stepping back out into the church.";
	wait for any key;
	decrease the menu depth by 1;

Table of confession entries
title	subtable	description	toggle
"What is this place?"	--	""	church description rule
"Confess about the sexual need that tries to overwhelm you."	--	""	lustconfession rule
"Leave the confessional."	--	""	leaveconfession Rule

instead of examining the confession booth:
	Say "It's quiet and nondescript, perhaps you should try [bold type]Enter[roman type] it and confess? or just talk to whomever is inside?";

instead of entering the Confession Booth:
	enterConfessional;

to enterConfessional:
	say "As you close the door of the booth and kneel the best you can. A voice speaks slowly, Warm, comforting, and unmistakably female.[line break]'Welcome my child, you may not know but we do not follow the Christian tradition here, we simply are making use of what they left in place. please feel free to ask questions, and if you have any troubles weighing heavily on your mind, please voice them. And i will do my best to put you mind and spirit at ease.'[line break]";
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
	say "Movement in some bushes catches your attention, a sickly green-yellow light seems to emanate from them and some kind of large hound stalks out from amongst them.  Bathed in an eerie, source-less yellow light the beasts fur is a dirty mix of browns, tufted and mussed all over as if uncared about.  It is as big as a great dane but there is no recognisable breed that you can use to name it. [line break]The beast cocks it's leg and sends a strong stream of luminescent yellow urine splashing into the grass, before it seems to notice you... the stream falters then stops as it licks it's muzzle and then begins to approach, there is something about the strange monster that somehow tells you it isn't the same as the other infected creatures, and whiff of sulphur hits you as it stalks closer. [line break]If you're going to escape you'd best do so now.[line break][line break]Escape back south Yes/No?";
	if player consents:
		say "Hastily backing away you slip back amongst the Sheds, the Hellhound doesn't bother to Follow"; [Escape Text.]
		move the player to Dirty Sheds;
	else:
		say ""; [Hellhound introduction text?]
		if "Male Preferred" is not listed in feats of player:		
			say "As you glance behind they way you came a large wall of greenish fire leaps up, making a crackling noise as it sets the grass beneath it alight, even though you can feel no heat.  A soft lusty growl drags your attention back to the infernal four legged beast you are now trapped with.";
			say "‘oooh, what have we here? a mortal? how delicious!’"; [Gender detect line Removed]
			say "He licks his lips as he regards you seeming to peer straight into your mind, if not deeper, weighing your thoughts, desires, and lusts.  [Line break]‘You seem like the opportunistic type. I do believe I could offer you something you’d like a great deal, something you can obtain no other way!’[line break]As the beast shifts a waft of sulphur threatens to choke you, and simply being close to the creature is making your stomach churn and feel nauseous, forcing you to clutch at it as you sink to your knees while trying to avoid throwing up.   The movement means that you’re face is level with the infernal hounds muzzle as it reaches you.[line break]‘I can make you immune to this strange little plague that is flowing about. i must admit it is a WONDERFUL piece of work. but I don’t think most of the victims would agree with my opinion.’ He seems to muse on this fact of a moment as you start to get dizzy and lightheaded ‘A shame, but no matter, I can make you immune to it, oh and a side effect you’ll probably be better able to tolerate my presence, in time perhaps even come to enjoy it.' [line break]'So? Will you let me change you mortal? I do promise i don’t want anything foolish or incorporeal like your soul, I am just a gate keeper after all, I have no use for such things.’[line break] [line break]Accept the Hellhounds offer? Yes/No";
			if player consents:
				now isHellhound is true;
				if cunts of player > 0 and cocks of player > 0:  [ Herm ]
					say "The Hellhound seems to let out a indecisive *hrrm* sitting back on his haunches 'Well, this causes something of a dilemma, which of your sexes do I make use of?' The beast cocks his head sideways.[line break]'You would probably rather be a male yes?'[line break]Yes/No";[Prompt cock or pussy. ]
					if player consents:
						now maleHound is True;
						now hellHoundLevel is 1;
						Hellhound infect male;
					else:					
						now maleHound is false;
						now hellHoundLevel is 1;
						Hellhound infect female;	
				else if cunts of player > 0:	[ Female]
					now maleHound is false;
					now hellHoundLevel is 1;
					Hellhound infect female;
				else if cocks of player > 0:	[ Male]
					now maleHound is True;
					now hellHoundLevel is 1;
					Hellhound infect male;
				else : [ You poor neuter]
					say "*snorts* *you're no use to me mortal";
			else:
				say "The Hell hounds tongue lolls out of it's muzzle, yellow slime dripping from it as it gives a derisive snort. [line break]'Such self deception... oh well. I will return when you realise it is what you truly want!' [line break]With that green flames flicker at its paws then suddenly shoot up in a column of fel fire before vanishing, nothing left there but a ashen circle.";
		else:  [ If male prefered do the Male TF, Check female prefered as well silly >.<]
			say "As you glance behind they way you came a large wall of greenish fire leaps up, making a crackling noise as it sets the grass beneath it alight, even though you can feel no heat.  A soft lusty growl drags your attention back to the infernal four legged beast you are now trapped with.";
			say "‘oooh, what have we here? a mortal? how delicious!’"; [Gender detect line Removed]
			say "He licks his lips as he regards you seeming to peer straight into your mind, if not deeper, weighing your thoughts, desires, and lusts.  [Line break]‘You seem like the opportunistic type. I do believe I could offer you something you’d like a great deal, something you can obtain no other way!’[line break]As the beast shifts a waft of sulphur threatens to choke you, and simply being close to the creature is making your stomach churn and feel nauseous, forcing you to clutch at it as you sink to your knees while trying to avoid throwing up.   The movement means that you’re face is level with the infernal hounds muzzle as it reaches you.[line break]‘I can make you immune to this strange little plague that is flowing about. i must admit it is a WONDERFUL piece of work. but I don’t think most of the victims would agree with my opinion.’ He seems to muse on this fact of a moment as you start to get dizzy and lightheaded ‘A shame, but no matter, I can make you immune to it, oh and a side effect you’ll probably be better able to tolerate my presence, in time perhaps even come to enjoy it.' [line break]'So? Will you let me change you mortal? I do promise i don’t want anything foolish or incorporeal like your soul, I am just a gate keeper after all, I have no use for such things.’[line break] [line break]Accept the Hellhounds offer? Yes/No";
			if player consents:
				now isHellhound is true;
				now maleHound is True;
				now hellHoundLevel is 1;
				Hellhound infect male;

to Hellhound infect female:
	clear the screen;
	say "As you weakly nod your head, agreeing to the offer made by the foul beast it lets out an unholy howl. The sound sends shivers throughout your body and echoes through your mind causing disgust and fear, making it impossible to stand. The hound lick his lips and paces around you, it doesn't take him long to make good on his offer however, letting out an eager growl and rearing onto its hind legs to push you back onto the ground with it's huge paws. [line break]As you choke on the stench of sulphur the beast takes the opportunity to press it's muzzle against your lips, it's tongue delving in, your body spasming as it exhales ... something intangible ...  yet somehow also fills your mouth completely, the strange yellow cloud flowing down your throat... entering your lungs, your stomach. soaking through your flesh and worming it's way up into your mind causing an agonising pain, that suddenly just ... stops.[line break]The hell hound steps off you. taking a few steps back as you cough and splutter shaking your head as everything starts to ... brighten? the shadows of the block no longer seem to hide anything, the stench is gone to as well as the urge to throw up.  You look at your benefactor and can see the glint of your own eye glowing yellow reflected in his. he just pants happily, pleased with his handiwork, dragging a slimy tongue over your cheek before beginning to tug clothing, and push with his paws and large head, maneuvering you onto your hands and knees so that he can continue his work. You no longer have any intention or ability to object, even if you had intended to originally. even as you hear the tearing of fabric and cool wait wash between you legs as he rips out the crotch of your pants deftly and moves to cover you.. the dirty fir dragging against your cloths. wet piss soaked sheath jerking and rubbing over your exposed sex.";
	say "[line break]'Give yourself to me bitch, seal your fate as one of my children and sluts'[line break][line break]You shiver as he pants hotly in your ear, mockingly issuing the order, and even as your mind babbles that you can't really mean to give into the demonic being your feel your hips twitch back, your cunt lips spreading and pushing the beasts sheath back. The dirty, foul length starting to enter your passage.[line break]'Stop' he orders, grasping your hips with his forelimbs and panting happily. A soft grunt then a happy whine heard from the infernal canine and then a flood of hot liquid foulness starts to run down into you. The demon dogs paws shifting and pushing on your shoulders, making you lower your chest into the ground as his piss flows into you. Burning horribly, destroying your mortal flesh and leaving an unholy taint as he as he lets out a hiss of pleasure 'oh YESSSSSS!' his head tilts back, tongue lolling out of his muzzle and you feel a strange tightness start to form around your neck, growing firmer he longer you submit to this infernal hound. You don't get a chance to determine what it is however before the beast snarls and drives his cock home.  his foul urine gushing our from around his cock, soaking your legs forcing you to kneel in the growing puddle even as you feel his cock engorge and swell, filling your sex completely. With a final howl he grinds his shaft into your cunt, rubbing the bunched up sheath against your cunt lips. the length spasming inside you, you get a single rush of unimaginable, painful heat before blacking out.";
	wait for any key;
	clear the screen;
	say "You wake up several hours later, your clothing torn to ribbons, and slimy yellow tinged seed forming a puddle between your legs. Somehow you've been brought back to the bunker, and true to the Demon dogs words you no longer show any signs of the infection. You seem to have been completely restored to a human form... except for one place... between your legs is a lewd dripping demon bitch twat, swollen and puffy, leaking the Hellhound piss and cum as you hear a chuckle in your mind 'Such a pretty bitch you are. please, go out and enjoy yourself.  You are now immune to the changes just as i promised, as one of us will easily return to the form you want to hold, with one or two things that can't be hidden. Such are the rules, there must always be SOME kind visible proof or our infernal origins.  Return to me once you a properly ... ready' the voice fades out. leaving you alone with your thoughts in the bunker.  [line break]A litter of Hellhound pups gestating inside you and a seamless leather collar, engraved with strange infernal characters tightly wrapped around your neck.";
	if Humanity of player > 50 then now humanity of player is 50;
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
	now the cunts of the player is 1;
	now the cunt length of the player is 6;
	now the cunt width of the player is 4;
	now the breasts of the player is 2;
	now the breast size of the player is 2;
	now the libido of player is 100;
	now hellHoundLevel is 1;	
	move the player to Bunker, without printing a room description;
	follow turnpass rule;	

to Hellhound infect male:
	clear the screen;
	say "As you weakly nod your head, agreeing to the offer made by the foul beast it lets out an unholy howl. It sends shivers throughout your body and echoes through your mind causing disgust and fear, making it impossible to stand. The hound lick his lips and paces around you, it doesn't take him long to come to a rather surprising decision[line break]'Hrm... I think this will work better if I look like... this' The Hellhound's form ripples and seems to blur in front of you, its shoulders becoming rounder, lines softer as it shifts to become a she as you watch.  [Line break]'Yes, yes I think this will work MUCH better for dealing with you' she seems to smirk as she saunters over, rearing up on her hind legs and resting the large, wickedly clawed paws on your shoulders, touching her nose against yours as he foul sulphurous breath washing over your face, making you choke and gag.  As soon as your mouth opens shes pushes her bestial lips against your, forcing your mouth open wider and sliding her tongue in, something else enters you at the same time, locking your jaw open as what seems to be yellow mist fills your mouth, then slides down your throat, into your lungs and seeps up into your mind, the last causing agonising pain for a brief moment before it .. .stops?  You fall onto your back gasping, and spluttering as an unnatural heat seeming to wash over your entire body, burning out the infectious nanites and seeming to meld your flesh back into a human form.[line break]Eventually it all comes to an end, giving you the opportunity to sit back up with a pained groan and to blink away the tears.";
	say "A happy rumble draws your attention, lying on her side, in the puddle of piss made back when she was a he, the Hellhound bitch lounges with a coy wink she lifts a hind leg, rolling onto her back and exposing her sickeningly dirty, swollen, and leaking sex the sight making your member feel tight... wait tight? Glancing into your pants you find that between your legs you are NOT human, a Hellhound's sheath tight around the swelling erect canine cock, yellowish seed leaking from your cock tip as the bitch talks seductively.[line break][line break]'Now then handsome, how about you make good use of that wonderful length of yours hrrm?'[line break][line break]Lust surges through you, crawling on your hands and knees you ignore your jabbering mind as it tries to stop you, coming to kneel over the infernal bitch as she coyly licks your face.[Line break]You reach back and grab your foul canine cock, pulling the sheath back and pushing your tip just inside the bitch, rubbing it back and forth as she lets out a lusty growl and tries to wriggle back onto the member. while keeping yourself from sliding any deeper you slip both hands behind her head and hold her ears, squeezing and letting out a feral growl from your human throat, then begin to flood her with your piss.  The flow seems to come from a bottomless lit inside you, washing down and filling her making her arch and whine in ecstatic pleasure as it floods in, then gushes back out from around your cock tip.  After a few moments you take her in Ernest, pushing your cock right up in, feeling her tense then howl, sex spasming, cum and her piss mixing with your as you feel the unnatural canine lock around your knot from nowhere you feel your own climax building, and a tightness around your neck start to constrict.  Before you can move a hand to check what the tightness is. the hell bitch howls and jerks, leaning up and burying her fangs into your neck as you let out a startled howl of climax as well, everything blurring in a haze of pain and pleasure before you black out. knot swelling and tieing inside the fel hound.";
	wait for any key;
	clear the screen;
	say "You wake up several hours later, your clothing torn to ribbons. Somehow you've been brought back to the bunker, and true to the Demon-dog's words you no longer show any signs of the infection. You seem to have been completely restored to a human form... except for one place... glancing down you have the dirty and fouled Hellhound shaft from the night before,  dried up cum peeling from your skin and making the fur clump together. [line break]As you try and take this development in you hear a chuckle in your mind 'Mmmmmmm, that WAS an enjoyable night puppy, but you're not quite up to the task yet, you are not ready to be a male in my pack.  Return to me once you have a little more .... experience.' the voice fades away, leaving you alone with your thoughts in the bunker.  [line break]An unholy urge fills you as rub at yourself through your pants. females, bitches, you need to fill them with your seed.";
	if Humanity of player > 50 then now humanity of player is 50;
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
	now the cocks of the player is 1;
	now the cock length of the player is 6;
	now the cock width of the player is 4;
	now the breasts of the player is 2;
	now the breast size of the player is 0;
	now the libido of player is 100;
	now hellHoundLevel is 1;	
	move the player to Bunker, without printing a room description;
	follow turnpass rule;

to say returntoHellhound:
	say "As you approach the vacant block where you initially encountered the Hellhound a sick feeling starts to grow in your gut, something inside you wrestling with the infernal infection as you approach the scorched line on the ground where the wall of fire had blocked your passage the night before. Lounging in the grass at the center of the clearing are three hellhounds, one watching you, waiting, licking his lips as you approach the line burnt in the grass.[line break] Hesitating at the thresh-hold, you get a sense that this is your last chance to turn back. Continue? (Yes / No)";
	if player consents:
		if maleHound is true:	[if the player is male]
			say "Stepping over the line causes one of the watching hounds to lifts it’s head, a lusty growl escaping it’s throat as it bounds over, tail wagging as the other two seems to start paying attention, heads coming up to regard you, interest in their eyes.[line break]’Ooh you finally came back! we’ve been waiting! yes we have!’[line break]She rears up onto her hind legs, paws rest on your shoulders as she eagerly licks your face, before grabbing the cloth at you shoulder with a mischievous grin and pulling,  the fabric tearing easily, acting as if it’s starting to rot and decay. The other two bitches take this as a signal, and son they to have their fangs and claws buried in your clothing, shredding and destroying it until you’re standing naked in the clearing,twisted and tainted body visible for all three to appreciate[line break]’Oh I think you’re right big sister, he WILL make a nice change from the four leggers!’[line break]The first bitch just smirks, before letting out a playful mock growl and tackling you. pinning you on the ground and drawing her hot wet tongue across your throat, another bitch takes the opportunity to press her hot dry nose under your dangling canine balls, slowly dragging it across them and working up towards the top of your sheath. As you groan and shiver in pleasure, the bitch atop you smirks and turns around, dropping her swollen, oozing, slimy canine twat in your face, the reek of infernal bitch overpowering your senses, and digging it’s claws into your tainted mind. You press your lips against the bitches twat, slowly sliding your tongue into her heated depths, while the bitch at your sheath begins to slide her tongue down inside, stroking and suckling at your canine cock before it even manages to slip free of it’s home.[line break]Groaning into the bitches swollen leaking mound you can’t help but hump into the muzzle wrapped around your tainted, hell-hound length, your tongue working eagerly into female atop you the bitch whining and grinding her rear back against you before letting out a bark and yelp of pleasure, your face suddenly covered in a sticky yellow stained fluid as the bitch cums.[line break]";		
			wait for any key;
			say "As both of the bitches that have been pleasuring pull away, grinning, your attention moves to the third, standing with her rear presented to you, sex swollen and oozing, the puddle at her hind legs so large she’s forced to stand in it.  With your shaft bobbing eagerly in the air, mostly free of it’s home, and drugged on the other bitches cum, you don’t even hesitate letting out a low growl as you move over on your knees, grip the Fel animal’s hips, and drive yourself into her smouldering depths.[line break]The bitch lets out a bark then a howl! eagerly grinding back against you as you eagerly hump her four legged form, your sheath and thighs coated in the bitch's slimy fluids in seconds, soon your knot swells and locks within, cutting your movement down, eliciting at happy whine for the bitch, and causing you to slump over her back, and moan in ecstasy as your member twitches and pulses, pumping your tainted load into her depths.[line break]Half an hour later you’re still tied within the hell bitch, your cock still twitching and seeping inside her.  The hell-hounds belly is obviously swollen, and the other bitches are nuzzling and licking at it, complimenting her on such a large litter of pups. Hearing a crunch in the grass behind you you move to try and lift you head an look back, but are stopped as a large clawed hand wraps around your neck. pushing your face into the bitches dirty fur.[line break]’Stay mutt, you’re not done with her yet.’[line break]The bitches bark enthusiastically, and the two that are free bound over to nuzzle and press against the newcomer[line break]’Oh, so you approve of the new male girls? good, it’s time we took him home then, he’s got a lot of bitches to serve after all’[line break]The clawed hand grabs your collar and effortlessly lifts you, making the bitch and yourself yelp in pain and shock as the tie is pulled on. After a few seconds the bitch lets out a whuff, and from around your knot the fel bitch’s piss gushes, soaking your crotch and seeping up to your belly fur as it runs down your thighs. your sheath being constantly flushed out by her urine as you feel the tightness around your knot fade as she seems to get looser and looser before popping free.[line break]You’re then hoisted fully to your feet, and aloud to gain your footing, though you are still kept from turning around.";
			wait for any key;
			end the game saying "Your Soul is consumed by your hellish Lusts.";
		else:	[if the player is female.]
			say "Stepping over the line, causing the watching hound to grin at you, his tongue lolling out of his muzzle as he prods his pack mates to get their attention 'Our bitch is finally here'[line break]You shiver at the words... but the slimy mess running down your leg makes it clear no matter what you think you want, your body craves exactly what they want to do to you, and as you approach they slowly get to their feet, stretching and yawning, smirking at you as they pad over then start to circle around.  After a few seconds of study they grab and tear at your clothes, growling happily as they expose your dirty furred body, one of them dragging his tongue over your tail-hole while another presses his hot dry nose against your oozing lewd hell-hound twat and inhales your scent before dragging his tongue across the swollen, leaking opening.[line break]The Feelings make you groan and shudder, dropping onto all fours as you feel your sex throb. The third hell-hound, the one who initially corrupted you snickers at your expression then rolls onto his back, hind legs spread, the tip of his foul fel length poking from his sheath and oozing yellow cream into his belly fur [line break] 'come bitch, it’s time to accept your new place'[line break]The two other hell-hounds nudge and push you, moving you into position above the Hound on his back. As he licks at your muzzle you can’t help but let out a soft whimper... unable to hold yourself back any longer, you let your knees slide out, arms slipping around the Fel animals shoulders, pressing your belly up against his as he eagerly laps at the coarse dirty fur of your neck.  The penetration is slow, the beast taking it’s time. insidious writhing organ sliding up into your aching sex, Sliding in until you feel his tip pressing firmly against your cervix, his bunched up sheath grinding against your swollen, lewd, Hell-hound spade.[line break]The other canines growl lustily, licking and nipping at your body before joining in, A heavy weight settling on your back, and paws hooking around you hips as one growls, and positions himself, then in one smooth motion slides himself under your tail, deep into your exposed rump.  As the feeling of both passages being filled makes you moan the third hound rears up,  placing his paws on your shoulder and hunching forward, the slimy yellow coated Hell-hound cock pokes free, then pushes into your muzzle until your lips are pressed against his sheath.[line break]";
			wait for any key;
			say "The Three Hounds screw you with feral abandon, panting, growling and yelping their pleasure as they use our body eagerly. The one using your mouth peaks first. his body tensing his humping becoming erratic for a few moments before he froze and shuddered before letting out a howl, his cock throbbing in your muzzle, the slimy ooze running straight down our throat until he pulled himself free, cock still twitching and pulsing as he let it rest atop your muzzle, fel yellow seed oozing from his tip, and soaking into your facial fur.  The other two didn’t slow down however, the first hounds climax only seemed to drive them harder. harsh panting sounding in your ears as both of your passages slurped lewdly from the vigorous fucking. Eventually they too began to buck more erratically, until both tensed, grabbing at you however they could with their animalistic paws, before driving themselves as deep into your body as they possibly could.[line break]As both of your infernal lovers howled you felt the final thrust of the one in your sex breech your cervix, the demon dogs cock-tip buried in your womb as the knot at the base of his length swelled and locked him within. torrents of hot fel seed pulsing into your body from both of them.[line break]After several bliss-full minutes with the infernal dog’s cocks throbbing and oozing into your body a crunching of grass can be heard, as you groggily lift your head your vision is filled with a hoof, Jet black with a blood red ‘sock’.  Your mind seems to be running slowly, this should mean something to you but you can’t quite...[line break]'Hurry up you mutts, it is time we returned' You feel a jerk on your collar, lifting your head up, startling a whine from your muzzle as the two engorged knots buried inside pull painfully 'Enough, flood the bitch and let us be gone!'[line break]You can’t make yourself look at the demon.... his voice alone make your ears flatten against your skull and fill you with the urge to slink to him on your belly in submission... but your four legged lovers back happily at his instructions then grunt softly.  Piss begins to gush into you, both dogs whining happily as they empty themselves inside you, the tepid, foul liquid causing your muscles to relax, the clawed hand pulling at your collar, drawing you up till both dog cocks pop free with a fetid gush of cum and piss, washing back down onto both hounds, running down your legs and staining your fur.";
			wait for any key;
			end the game saying "Your Soul is consumed by your hellish Lusts.";
	otherwise:
		say "Shuddering you manage and turn and walk away despite the unholy urge to join the hell-hounds in the clearing.";
		move the player to Dirty Sheds;
	
	
to say hellhoundheat:
	[Couldn't use this to check in male case, replaces with an every turn prompt..]
	say "";

[Below this point is the mechanics to 'remove' the infection nanites.]
every turn (This is the check Hellhound rule):
	if isHellhound is true:
		if cockname of player is not "Hellhound":
			now cockname of player is "Hellhound";
			if maleHound is True:
				say "Almost immediately after the infection alters your maleness, the Hellhound's 'Gift' makes your groin throb and shift back, tip dribbling a bit in arousal.";
				now Cock of player is "[if looknow is 1]encased in a dirty furred sheath, with dried up seed peeling off, rests your slimy, foul Hellhound[otherwise]foul Hellhound[end if]";			
			else:
				say "Almost immediately after the infection alters your sex, the Hellhound's 'Gift' makes your groin throb and shift back, spade loose and oozing lubricants";
				now Cock of player is "";
		if humanity of the player > 33:	[Initial Hellhound Infection]
			if skinname of player is not "human":
				say "[line break]";
				now skinname of player is "human";
				now skin of player is "smooth";
				say "You feel your skin heat, a flush running back over you as the Hellhound's 'gift' effortlessly destroys the infection. returning your smooth human skin.";
			if tailname of player is not "human":	[Leave this human so that there's no desc text.]
				say "[line break]";
				now tailname of player is "human";
				now tail of player is "";
				say "You feel a sharp pain at the end of your spine, then with no further warning your tail simply drops off, leaving no sign you ever had one.";
			if facename of player is not "Hellhound":
				say "[line break]";
				now facename of player is "Hellhound";
				now face of player is "leather dog collar around your neck, and a charmingly human";
				say "You face seems to heat up, and feel like soft putty for a few moments as the Hellhound's 'gift' returns your face to it's original human configuration.";
			if bodyname of player is not "Hellhound":
				say "[line break]";
				now bodyname of player is "Hellhound";
				if maleHound is True:
					now body of player is "appears perfectly human at first, but sprouting between your legs is sheath and coarse fur that remains dirty no matter how much you attempt to clean yourself";
				else:
					now body of player is "appears perfectly human at first, but on your belly there are six nipples, and between your legs rests a swollen, permanently in-heat Hellhound twat";
				say "Your body doubles over, not in pain, but simply as muscles spasm and reshape, your form returning to the human body you were born with, plus the additions you sport due to the Hellhound's 'Gift'.";
			if maleHound is True:
				if cunts of player > 0:
					say "[line break]";
					say "your newly formed sex throbs, then rapidly ceases to be as the Hellhound's 'Gift' Restores you to normal.";
				now cunts of player is 0;
				now cocks of player is 1;
				now the cock length of the player is 6;
				now the cock width of the player is 4;
				now the cunt length of the player is 0;
				now the cunt width of the player is 0;
				now the breasts of the player is 2;
				now the breast size of the player is 0;			
			else:
				if cocks of player > 0:
					say "[line break]";
					say "your newly formed shaft throbs, then rapidly ceases to be as the Hellhound's 'Gift' Restores you to normal.";
				now cocks of player is 0;
				now cunts of player is 1;
				now the cunt length of the player is 6;
				now the cunt width of the player is 4;
				now the breasts of the player is 2;
				now the breast size of the player is 2;	
			now the libido of player is 100;
		else if humanity of the player > 15:	[Bipedal Hellhound]
			if hellHoundLevel  < 2:
				now hellHoundLevel is 2;
				say "As you surrender your humanity the hellhounds Gift starts to manifest as the curse it truely is, you mind starting to embrace the perverted and foul nature that the the infernal mutt inflicted upon you, a soft chuckle echoes through your mind and in your backpack your journal turns to dust."; 
				say "You also get an unsettling urge to return to where you first encountered the infernal hound.";
				delete journal;
			if skinname of player is not "Hellhound":
				say "[line break]";
				now skinname of player is "Hellhound";
				now skin of player is "coarse, dirty fur covering your";
				say "You feel your skin heat, a flush running back over you as the Hellhound's 'gift' effortlessly destroys the infection. but with what little humanity you have left a pelt of coarse, dirty dog fur grow in it's place";
			if tailname of player is not "Hellhound":
				say "[line break]";
				now tailname of player is "Hellhound";
				now tail of player is "Extending from your spine is a slender canine tail. Strangely you don't seem to be able to lower it, exposing yourself to all who may look.";
				say "You feel a sharp pain at the end of your spine, then with no further warning you feel something writh and reshape back there, a hellhounds tail forming.";
			if facename of player is not "Hellhound":
				say "[line break]";
				now facename of player is "Hellhound";
				now face of player is "leather dog collar around your neck and a yellow eyed, canine";
				say "You face seems to heat up, and feel like soft putty for a few moments as the Hellhound's 'gift' reveals itself for the curse it truely is, pulling your nose out, your mouth filling with canine teeth as your develop a scraggily, dirty furred canine head.";
			if bodyname of player is not "Hellhound":
				say "[line break]";
				now bodyname of player is "Hellhound";
				if maleHound is True:
					now body of player is "That of a bipedal dog, paw like feet, and stubby fingered hands with pawpads and dull black claws.";
				else:
					now body of player is "That of a bipedal dog, paw like feet, and stubby fingered hands with pawpads and dull black claws.";
				say "[line break]Your body doubles over, not in pain but simply because you can't remain upright as muscles spasm and reshape, your body reforming into a bipedal version of the infernal mutt you submitted to.";
			if maleHound is True:
				if cunts of player > 0:
					say "[line break]";
					say "your newly formed sex throbs, then rapidly ceases to be as the Hellhound's 'Gift' Removes the female organs the nanites attempted to inflict upon you.";
				now cunts of player is 0;
				now cocks of player is 1;
				now the cock length of the player is 6;
				now the cock width of the player is 4;
				now the cunt length of the player is 0;
				now the cunt width of the player is 0;
				now the breasts of the player is 2;
				now the breast size of the player is 0;			
			else:
				if cocks of player > 0:
					say "[line break]";
					say "your newly formed shaft throbs, then rapidly ceases to be as the Hellhound's 'Gift' Restores you to cursed hellhound state.";
				now cocks of player is 0;
				now cunts of player is 1;
				now the cunt length of the player is 6;
				now the cunt width of the player is 4;
				now the breasts of the player is 8;
				now the breast size of the player is 4;	
		else: [quad Hell Doggy ^.^]
			if hellHoundLevel  < 3:
				now hellHoundLevel is 3;
				say "You surrender compleatly, abandoning your humanity and embracing your infernal nature, nothing matters to you any more besides pleasure and breeding, spawning as many of your kind as possible."; 
				delete journal;
			if skinname of player is not "Hellhound":
				say "[line break]";
				now skinname of player is "Hellhound";
				now skin of player is "coarse, dirty fur covering your";
				say "You feel your skin heat, a flush running back over you as the Hellhound's 'gift' effortlessly destroys the infection. but with what little humanity you are left a pelt of coarse, diry dog fur growing in it's place";
			if tailname of player is not "Hellhound":
				say "[line break]";
				now tailname of player is "Hellhound";
				now tail of player is "Extending from your spine is a slender canine tail. Strangely you don't seem to be able to lower it, exposing yourself to all who may look.";
				say "You feel a sharp pain at the end of your spine, then with no further warning you feel something writh and reshape back there, a hellhounds tail forming.";
			if facename of player is not "Hellhound":
				say "[line break]";
				now facename of player is "Hellhound";
				now face of player is "leather dog collar around your neck and a yellow eyed, canine";
				say "You face seems to heat up, and feel like soft putty for a few moments as the Hellhound's 'gift' reveals itself for the curse it truely is, pulling your nose out, your mouth filling with canine teeth as your develop a scraggily, dirty furred canine head.";
			if bodyname of player is not "Hellhound":
				say "[line break]";
				now bodyname of player is "Hellhound";
				if maleHound is True:
					now body of player is "That of a uncommon mutt, four paw like feet with wicked black claws, and no hands.";
				else:
					now body of player is "That of a uncommon mutt, four paw like feet with wicked black claws, and no hands.";
				say "Your bones seem to heat and grow soft, the action making you collapse onto the ground as they no longer seem to be able to bear your weight. You are forced to lie there for a few minutes as muscles shift and joints pop, Eventualy the changes seem to complete, and your able to pull yourself to your feet, all four feet, you now wear the form of the foul demonic hound that tainted you.";
			if maleHound is True:
				if cunts of player > 0:
					say "[line break]";
					say "your newly formed sex throbs, then rapidly ceases to be as the Hellhound's 'Gift' Removes the female organs the nanites attempted to inflict upon you.";
				now cunts of player is 0;
				now cocks of player is 1;
				now the cock length of the player is 6;
				now the cock width of the player is 4;
				now the cunt length of the player is 0;
				now the cunt width of the player is 0;
				now the breasts of the player is 2;
				now the breast size of the player is 0;			
			else:
				if cocks of player > 0:
					say "[line break]";
					say "your newly formed shaft throbs, then rapidly ceases to be as the Hellhound's 'Gift' Restores you to cursed hellhound state.";
				now cocks of player is 0;
				now cunts of player is 1;
				now the cunt length of the player is 6;
				now the cunt width of the player is 4;
				now the breasts of the player is 8;
				now the breast size of the player is 4;
		now the libido of player is 100;


Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Hellhound";
	now heat cycle entry is 7;
	now heat duration entry is 7;
	now trigger text entry is "[if cocks of player is 0] You feel pressure build between you legs then wet gush... you immediately loose control of your bladder as well, a fetid mix of piss and cum running down your legs, as you permanently enter a Hellhound's eternal heat.[else]Your shaft throbs, tip poking free of your sheath, foul yellow cream oozing from the tip as your balls seem to endlessly churn, in an infernal rutt your member ooozes cum constantly, driving you mad with the need to bury it in some one or something.[end if]"; 
	now description text entry is "[if cocks of player is 0]your sex is dirty and oozing, peeling, dried up seed coating the outer lips and matting up the coarse dirty fur that sprouts around it.[else] the Fur of your sheath if musky and dirty, no matter how much you try to clean it. a permanent sign of your infernal taint.[end if]";
	now inheat entry is "[hellhoundheat]";

When play ends:
	if hellHoundLevel > 0:
		if hp of the player is greater than 0:
			if maleHound is true:
				if humanity of the player is less than 1:
					say "As your mind fades more and more of your infernal taint comes to the fore, hands becoming paws, face stretching out into a muzzle, coarse dirty fur spreading all over your body.  eventually you're so far gone that you start to couple with common animals without hesitation, and it's when you are tied in a feral mutt you discovered wandering the streets that a green flickering glow from behind you.[line break]The rough grip on your collar startles you enough to let out a surprised yelp, but the huge clawed red hand rubs your ears 'Easy boy, it's ok, it's just time to go home that is all, you've had enough fun in the mortal realm'  You let out a disappointed whine, bones melting and reflowing, your body altering to suit your mindless nature.  Now you are nothing more than a mindless Hell-hound, incapable of thought or speech, unlike the beast that initially corrupted you. 'Come boy, there's a gate for you to help guard, and bitches to breed. If you're good, I may let you out to play with the mortals again someday.'[line break]";[Rutting beast, loyal demon, or resisting mortal.]
				else if humanity of player is less than 33:
					say "Suddenly the air in front of you shimmers, giving off a sickly yellow light, a single point seems to hang there for a few moments before it beings to, well the only word you can use to describe what happens is the air seems to ‘tear’.  Furnace like heat hitting you in the face from the black light-less void, the edges of the ever growing hole rimmed in luminescent yellow, every now and again drop a seems to fall to the ground from the growing portal, hissing and leaving a scorch-mark.[line break]'Time to go home BITCH' you hear from behind you, before being shoved into the blackened void of the hell-gate. As you start to plummet you let out a startled scream, the darkness so complete you can not even see yourself, the impossible heat stealing the air from your lungs, after a few moments you sink into an unconsiousness as black as your surroundings. [line break]";
					say "[line break]Groggily you feel yourself come to... a soft metallic chink heard as you shift. Opening your eyes you find heavy iron manacles wrapped around your wrists, a similar weight on your ankles tell you those are also restrained, and around you stand hundreds of infernal hounds.  The demonic dogs pant quietly, some licking their chops, some letting out soft eager growls and all of them show some signs of arousal.  As they begin to close in, you let out a shiver  at the perverse hunger in all of the bitches eyes, you know they will keep you rutting from not untill eternity, only alloud to rest while collapsed on their backs, your member twitching and pulsing within.[line break]Hellish … or heavenly? well I suppose that’s up to you.";
				else: [Male Tainted Human]
					say "Your Demonic 'luck' holds, and as the whole city dissolves in chaos, you manage to escape, weeks later you stumble into an uninfected location, Find a job, and try to return to the life you once had ... but the longer you go without .. indulging your selef the harder and tighter your hell-hound shaft becomes. It's probably only a matter of time before you end up doing your demonic masters bidding... or in escaping perhaps you already are.";
			else:
				if humanity of the player is less than 1:	[Female  animal]
					say "As your mind fades more and more of your infernal taint comes to the fore, hands becoming paws, face stretching out into a muzzle, coarse dirty fur spreading all over your body.  eventually you're so far gone that you start to couple with common animals without hesitation, and it's when you are tied in a feral mutt you discovered wandering the streets that a green flickering glow from behind you.[line break]The rough grip on your collar startles you enough to let out a surprised yelp, but the huge clawed red hand rubs your ears 'Easy girl, it's ok, it's just time to go home that is all, you've had enough fun in the mortal realm'  You let out a disappointed whine, bones melting and reflowing, your body altering to suit your mindless nature.  Now you are nothing more than a mindless Hell-hound, incapable of thought or speech, unlike the beast that initially corrupted you. 'Come girl, there's a gate for you to help guard, and and plenty of males to make sure you remain heavy with pups. If you're good, I may let you out to play with the mortals again someday.'";
				else if humanity of player is less than 33:	[Female bipedal demon Dog]
					say "Suddenly the air in front of you shimmers, giving off a sickly yellow light, a single point seems to hang there for a few moments before it beings to, well the only word you can use to describe what happens is the air seems to ‘tear’.  Furnace like heat hitting you in the face from the black light-less void, the edges of the ever growing hole rimmed in luminescent yellow, every now and again drop a seems to fall to the ground from the growing portal, hissing and leaving a scorch-mark.[line break]'Time to go home BITCH' you hear from behind you, before being shoved into the blackened void of the hell-gate. As you start to plummet you let out a startled scream, the darkness so complete you can not even see yourself, the impossible heat stealing the air from your lungs, after a few moments you sink into an unconsiousness as black as your surroundings.";
					say "[line break]Groggily you feel yourself come to... a soft metallic chink heard as you shift. Opening your eyes you find heavy iron manacles wrapped around your wrists, a similar weight on your ankles tell you those are also restrained, and around you stand hundreds of infernal hounds.  The demonic dogs pant quietly, some licking their chops, some letting out soft eager growls and all of them show some signs of arousal.  As they begin to close in, you let out a shiver and run a paw over your belly, soon it will be swoolen and heavy with their demonic spawn, soon you will be a bitch whelping litter after litter.[line break]Hellish … or heavenly? well I suppose that’s up to you.";
				else:	[Female Tainted Human]
					say "Your Demonic 'luck' holds, and as the whole city dissolves in chaos, you manage to escape, weeks later you stumble into an uninfected location, Find a job, and try to return to the life you once had ... but the longer you go without .. indulging your self the more you hell-hound  sex throbs and leaks. It's probably only a matter of time before you end up doing your demonic masters bidding... or in escaping perhaps you already are.";

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

Book 4 - Monsters

Church of the Maternal Beast for FS ends here.
